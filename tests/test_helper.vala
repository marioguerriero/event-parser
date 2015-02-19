const string show_format = "%d-%m-%Y %X";


bool compare_events (Event a, Event b) {
	if (
		a.name == b.name && 
		a.dt_begin.format(show_format) == b.dt_begin.format(show_format) && 
		a.dt_end.format(show_format) == b.dt_end.format(show_format) && 
		a.location == b.location && 
		a.all_day == b.all_day
	) {
		return true;
	}
	return false;
}

public struct test_event { string source; Event target; }

void analyze_test_events(test_event[] test_events, DateTime dt_simulated) {
	print ("\n\n--- Simulated Time: %s\n\n", dt_simulated.format(show_format));
	
	int N_error = 0, N_success = 0;
	
	foreach (test_event entry in test_events) {
		var cmp_event = new Event.with_source (entry.source, dt_simulated);
		if (compare_events (cmp_event, entry.target)) {
			N_success += 1;
			/* print (@"Success - $(entry.source)\n");
			print (@" Name: $(cmp_event.name)\n");
			print (@" Begin: $(cmp_event.dt_begin.format("%d-%m-%Y %X"))\n");
			print (@" End: $(cmp_event.dt_end.format("%d-%m-%Y %X"))\n");
			print (@" Location: $(cmp_event.location)\n");
			print (@" All Day: $(cmp_event.all_day)\n\n"); */
		} else {
			N_error += 1;
			print (@"Error - $(entry.source)\n");
			print (@" Name: $(cmp_event.name) | $(entry.target.name)\n");
			print (@" Begin: $( cmp_event.dt_begin.format(show_format)) | $(entry.target.dt_begin.format(show_format))\n");
			print (@" End: $(cmp_event.dt_end.format(show_format)) | $(entry.target.dt_end.format(show_format))\n");
			print (@" Location: $(cmp_event.location) | $(entry.target.location)\n");
			print (@" All Day: $(cmp_event.all_day) | $(entry.target.all_day)\n\n");
		}
	}
	
	print("\n--- Result ---\n");
	print(@" # Success: $N_success | # Error: $N_error \n");
}

void print_all_working_test_events(test_event[] test_events, DateTime dt_simulated) {
	foreach (test_event entry in test_events) {
		var cmp_event = new Event.with_source (entry.source, dt_simulated);
		if (compare_events (cmp_event, entry.target)) {
			print (@"- $(entry.source)\n");
		}
	}
}