const string show_format = "%d-%m-%Y %X";


void println (string str) {
	stdout.printf ("%s\n", str);
}

bool compare_events (Event a, Event b) {
	/* println("Compare");
	println(a.title);
	println(b.title);
	println(@" $(a.title == b.title)");
	println(@" $(a.location == b.location)");
	println(@" $(a.all_day == b.all_day)"); */
	
	if (
		a.title == b.title && 
		a.from.format(show_format) == b.from.format(show_format) && 
		a.to.format(show_format) == b.to.format(show_format) && 
		a.location == b.location && 
		a.all_day == b.all_day
	) {
		return true;
	}
	return false;
}

public struct test_event { string source; Event target; }

void analyze_test_events(test_event[] test_events, DateTime dt_simulated) {
	println(@"\n\n--- Simulated Time: $(dt_simulated.format(show_format))\n");
	
	var parser = new ParserEn(dt_simulated);
	
	int N_error = 0, N_success = 0;
	
	foreach (test_event entry in test_events) {
		Event cmp_event = parser.parse_source(entry.source);
		if (compare_events (cmp_event, entry.target)) {
			N_success += 1;
			println(@"Success - $(entry.source)\n");
			/* println(@" Title: $(cmp_event.title)");
			println(@" Begin: $(cmp_event.from.format("%d-%m-%Y %X"))");
			println(@" End: $(cmp_event.to.format("%d-%m-%Y %X"))");
			println(@" Location: $(cmp_event.location)");
			println(@" All Day: $(cmp_event.all_day)\n"); */
		} else {
			N_error += 1;
			println(@"Error - $(entry.source)");
			println(@" Title: $(cmp_event.title) | $(entry.target.title)");
			println(@" Begin: $( cmp_event.from.format(show_format)) | $(entry.target.from.format(show_format))");
			println(@" End: $(cmp_event.to.format(show_format)) | $(entry.target.to.format(show_format))");
			println(@" Location: $(cmp_event.location) | $(entry.target.location)");
			println(@" All Day: $(cmp_event.all_day) | $(entry.target.all_day)\n");
		}
	}
	
	println("\n--- Result ---");
	println(@" # Success: $N_success | # Error: $N_error");
}

void print_all_working_test_events (test_event[] test_events, DateTime dt_simulated) {
	
	var parser = new ParserEn(dt_simulated);
	println("Working:");
	foreach (test_event entry in test_events) {
		Event cmp_event = parser.parse_source(entry.source);
		if (compare_events(cmp_event, entry.target))
			println(@"- $(entry.source)");
	}
}

void print_all_not_working_test_events (test_event[] test_events, DateTime dt_simulated) {
	
	var parser = new ParserEn(dt_simulated);
	println("Not Working:");
	foreach (test_event entry in test_events) {
		Event cmp_event = parser.parse_source(entry.source);
		if (!compare_events(cmp_event, entry.target))
			println(@"- $(entry.source)");
	}
}



void main () {
	var simulated_dt = new DateTime.utc (2015, 2, 17, 13, 25, 0);
	
	// test_de();
	test_event[] test_events = test_en();
	// analyze_test_events(test_events, simulated_dt);
	print_all_working_test_events(test_events, simulated_dt);
	print_all_not_working_test_events(test_events, simulated_dt);
}