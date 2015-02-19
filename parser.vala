const string[] months = {"januar", "februar", "märz", "april", "mai", "juni", "juli", "august", "september", "oktober", "november", "dezember"};
const string[] weekdays = {"montag", "dienstag", "mittwoch", "donnerstag", "freitag", "samstag", "sonntag"};

const int hours_per_day = 24;
const int minutes_per_hour = 60;


int get_number_of_month (string month) {
	for (int i = 0; i < 12; i++) {
		if (month == months[i])
			return i + 1;
	}
	return -1;
}



public class Event : GLib.Object {
	public string name;
	public string location;
	public DateTime dt_begin;
	public DateTime dt_end;
	public bool all_day;

	public Event (string _name, DateTime _dt_begin, DateTime _dt_end, string _location = "", bool _all_day = false) {
		this.name = _name;
		this.location = _location;
		this.dt_begin = _dt_begin;
		this.dt_end = _dt_end;
		this.all_day = _all_day;
	}
	
	public Event.with_source (string source, DateTime? _dt_simulated = null) {
		var dt_simulated = _dt_simulated;
		if (dt_simulated == null)
			dt_simulated = new DateTime.now_local ();
		parse_source (source, dt_simulated);
	}
	
	
	struct String_result { bool matched; int pos; int length; string p1; string p2; string p3; string p4; }
	
	private String_result complete_string (string pattern, string global_str) {
		Regex regex;
		MatchInfo match_info;
		try {
			regex = new Regex (pattern, RegexCompileFlags.EXTENDED);
			var is_matched = regex.match (global_str, 0, out match_info);
			if (!is_matched)
				return String_result() { matched = false };
		} catch { }
		
		var matched_string = match_info.fetch (0);
		var pos = global_str.index_of( matched_string );
		var length = matched_string.length; 
		
		string p1 = "";
		string p2 = "";
		string p3 = "";
		string p4 = "";

		while (match_info.matches () ) {
			p1 = match_info.fetch_named ("p1");
			p2 = match_info.fetch_named ("p2");
			p3 = match_info.fetch_named ("p3");
			p4 = match_info.fetch_named ("p4");
			match_info.next ();
		}
			
		return String_result() { matched = true, p1 = p1, p2 = p2, p3 = p3, p4 = p4, pos = pos, length = length };
	}
	
	
    private delegate void transcribe_analysis (String_result string_result);

	private void analyze_pattern (string pattern, ref string source_low, ref string source_up, transcribe_analysis d) {
		try {
			String_result string_result = this.complete_string("\\b" + pattern + "\\b", source_low);
			if (string_result.matched) {
				source_low = source_low.splice(string_result.pos, string_result.pos + string_result.length);
				source_up = source_up.splice(string_result.pos, string_result.pos + string_result.length);
			
				d(string_result);
			}
		} catch {
			
		}
	}
	
	
	public void parse_source (string source, DateTime dt_simulated) {
		var source_low = source.down();
		var source_up = source;
		
		this.location = "";
		this.dt_begin = dt_simulated.add_minutes ( 60 - dt_simulated.get_minute() ).add_seconds ( - dt_simulated.get_second() );
		this.dt_end = this.dt_begin.add_hours (1);
		this.all_day = false;
		
		
		
		// --- Date ---
		
		analyze_pattern("gestern", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_days(-1).add_hours(- this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin;
			this.all_day = true;
		});
		
		analyze_pattern("morgen", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_days(1).add_hours(- this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin;
			this.all_day = true;
		});
		
		analyze_pattern("übermorgen", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_days(2).add_hours(- this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin;
			this.all_day = true;
		});
		
		analyze_pattern("vor \\s+ (?<p1>\\d+) \\s+ tagen", ref source_low, ref source_up, (string_result) => {
			int days = int.parse(string_result.p1);
			this.dt_begin = this.dt_begin.add_days(-days).add_hours(- this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin;
			this.all_day = true;
		});
		
		analyze_pattern("in \\s+ (?<p1>\\d+) \\s+ tagen", ref source_low, ref source_up, (string_result) => {
			int days = int.parse(string_result.p1);
			this.dt_begin = this.dt_begin.add_days(days).add_hours(- this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin;
			this.all_day = true;
		});
		
		analyze_pattern("am \\s+ (?<p1>\\d+) . (?<p2>\\d+) ( . (?<p3>\\d+))?", ref source_low, ref source_up, (string_result) => {
			int day = int.parse(string_result.p1);
			int month = int.parse(string_result.p2);
			
			this.dt_begin = this.dt_begin.add_days(day - this.dt_begin.get_day_of_month() ).add_hours(- this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin;
			this.dt_begin = this.dt_begin.add_months(month - this.dt_begin.get_month() );
			this.dt_end = this.dt_begin.add_months(month - this.dt_begin.get_month() );
			if ( string_result.p3 != null ) {
				int year = int.parse(string_result.p3);
				this.dt_begin = this.dt_begin.add_years(year - this.dt_begin.get_year());
			}
			
			this.all_day = true;
		});
		
		analyze_pattern("vom \\s+ (?<p1>\\d+). \\s+ bis \\s+ (?<p2>\\d+). \\s+", ref source_low, ref source_up, (string_result) => {
			int day_1 = int.parse(string_result.p1);
			int day_2 = int.parse(string_result.p2);
			
			this.dt_begin = this.dt_begin.add_days(day_1 - this.dt_begin.get_day_of_month() ).add_hours(- this.dt_begin.get_hour() );
			this.dt_end = this.dt_end.add_days(day_2 - this.dt_end.get_day_of_month() ).add_hours(- this.dt_end.get_hour() );
			
			this.all_day = true;
		});
		
		analyze_pattern("am \\s+ (?<p1>\\d+)(.)? (\\s+ (?<p2>januar|februar|märz|april|mai|juni|juli|august|september|oktober|november|dezember))?", ref source_low, ref source_up, (string_result) => {
			int day = int.parse(string_result.p1);
			int month = get_number_of_month(string_result.p2);
			
			this.dt_begin = this.dt_begin.add_days(day - this.dt_begin.get_day_of_month() );
			this.dt_end = this.dt_begin.add_days(day - this.dt_begin.get_day_of_month() );
			this.dt_begin = this.dt_begin.add_months(month - this.dt_begin.get_month() );
			this.dt_end = this.dt_begin.add_months(month - this.dt_begin.get_month() );
			
			if (this.dt_begin.compare(dt_simulated) < 0) { // Add Year
				this.dt_begin = this.dt_begin.add_years(1);
				this.dt_end = this.dt_end.add_years(1);
			}
			
			this.all_day = true;
		});
		
		analyze_pattern("heiligabend", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_months(12 - this.dt_begin.get_month() ).add_days(24 - this.dt_begin.get_day_of_month() ).add_hours(- this.dt_begin.get_hour() );
			this.dt_end = this.dt_end.add_months(12 - this.dt_end.get_month() ).add_days(24 - this.dt_end.get_day_of_month() ).add_hours(- this.dt_end.get_hour() );
			
			this.all_day = true;
		});
		
		
		
		// --- Time ---
		
		analyze_pattern("früh", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_hours(9 - this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin.add_hours(1);
			this.all_day = false;
		});
		
		analyze_pattern("vormittags", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_hours(11 - this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin.add_hours(1);
			this.all_day = false;
		});
		
		analyze_pattern("mittags", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_hours(12 - this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin.add_hours(1);
			this.all_day = false;
		});

		analyze_pattern("nachmittags", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_hours(15 - this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin.add_hours(1);
			this.all_day = false;
		});
		
		analyze_pattern("abends", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_hours(18 - this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin.add_hours(1);
			this.all_day = false;
		});
		
		analyze_pattern("spät", ref source_low, ref source_up, (string_result) => {
			this.dt_begin = this.dt_begin.add_hours(19 - this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin.add_hours(3);
			this.all_day = false;
		});
		
		analyze_pattern("(um|ab) \\s+ (?<p1>\\d+)(:(?<p2>\\d+))? (\\s+ (uhr|h))?", ref source_low, ref source_up, (string_result) => {
			int hour = int.parse(string_result.p1);
			this.dt_begin = this.dt_begin.add_hours(hour - this.dt_begin.get_hour() );
			
			if ( string_result.p2 != null ) {
				int minute_1 = int.parse(string_result.p2);
				this.dt_begin = this.dt_begin.add_minutes(minute_1 - this.dt_begin.get_minute());
			}
			
			this.dt_end = this.dt_begin.add_hours(1);
			this.all_day = false;
		});	
		
		analyze_pattern("von \\s+ (?<p1>\\d+)(:(?<p3>\\d+))? \\s+ bis \\s+ (?<p2>\\d+)(:(?<p4>\\d+))? (\\s+ uhr)?", ref source_low, ref source_up, (string_result) => {
			int hour_1 = int.parse(string_result.p1);
			int hour_2 = int.parse(string_result.p2);
			
			this.dt_begin = this.dt_begin.add_hours(hour_1 - this.dt_begin.get_hour() );
			this.dt_end = this.dt_begin.add_hours(hour_2 - this.dt_begin.get_hour());
			
			if ( string_result.p3 != null) {
				int minute_1 = int.parse(string_result.p3);
				this.dt_begin = this.dt_begin.add_minutes(minute_1 - this.dt_begin.get_minute());
			}
			if ( string_result.p4 != null) {
				int minute_2 = int.parse(string_result.p4);
				this.dt_end = this.dt_end.add_minutes(minute_2 - this.dt_end.get_minute());
			}
			this.all_day = false;
		});
		
		analyze_pattern("(?<p1>\\d+)(:(?<p2>\\d+))? \\s+ (uhr|h)", ref source_low, ref source_up, (string_result) => {
			int hour = int.parse(string_result.p1);
			this.dt_begin = this.dt_begin.add_hours(hour - this.dt_begin.get_hour() );
			
			if ( string_result.p2 != null ) {
				int minute_1 = int.parse(string_result.p2);
				this.dt_begin = this.dt_begin.add_minutes(minute_1 - this.dt_begin.get_minute());
			}
			
			this.dt_end = this.dt_begin.add_hours(1);
			this.all_day = false;
		});
		
	
	
		// --- Repitition ---
		
		analyze_pattern("(jeder|jede|jedes) \\s+ (?<p1>\\w+)", ref source_low, ref source_up, (string_result) => {
			string rep = string_result.p1;
		});
		
		analyze_pattern("vom 1.2 bis zum 31.3", ref source_low, ref source_up, (string_result) => {
			string rep = string_result.p1;
		});
		
		
		
		// --- Location ----
		
		analyze_pattern("(im|in) (\\s+ (der|dem))? \\s+ (?<p1>\\w+)", ref source_low, ref source_up, (string_result) => {
			this.location = string_result.p1;
		});
		
	

		// --- Name ---
		
		this.name = source_up.strip();
	}
}




// --- Testing ---

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

void analyze_event_test(test_event[] test_events, DateTime dt_simulated) {
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




void main () {	
	var dt_simulated = new DateTime.utc (2015, 2, 17, 13, 25, 0);
	
	test_event[] test_events = {
		test_event() {
			source = "Badminton",
			target = new Event("Badminton", new DateTime.utc(2015, 2, 17, 14, 0, 0), new DateTime.utc(2015, 2, 17, 15, 0, 0))
		},
		test_event() { 
			source = "Badminton morgen in der Sporthalle", 
			target = new Event("Badminton", new DateTime.utc(2015, 2, 18, 0, 0, 0), new DateTime.utc(2015, 2, 18, 0, 0, 0), "Sporthalle", true)
		},
		test_event() { 
			source = "Badminton um 18 Uhr", 
			target = new Event("Badminton", new DateTime.utc(2015, 2, 17, 18, 0, 0), new DateTime.utc(2015, 2, 17, 19, 0, 0))
		},
		test_event() { 
			source = "Badminton morgen um 12", 
			target = new Event("Badminton", new DateTime.utc(2015, 2, 18, 12, 0, 0), new DateTime.utc(2015, 2, 18, 13, 0, 0))
		},
		test_event() { 
			source = "Badminton um 12 morgen", 
			target = new Event("Badminton", new DateTime.utc(2015, 2, 18, 12, 0, 0), new DateTime.utc(2015, 2, 18, 13, 0, 0))
		},
		test_event() { 
			source = "Badminton übermorgen um 7:30", 
			target = new Event("Badminton", new DateTime.utc(2015, 2, 19, 7, 30, 0), new DateTime.utc(2015, 2, 19, 8, 30, 0))
		},
		test_event() { 
			source = "Badminton gestern um 22 Uhr", 
			target = new Event("Badminton", new DateTime.utc(2015, 2, 16, 22, 0, 0), new DateTime.utc(2015, 2, 16, 23, 0, 0))
		},
		test_event() { 
			source = "Morgen früh Badminton Training", 
			target = new Event("Badminton Training", new DateTime.utc(2015, 2, 18, 9, 0, 0), new DateTime.utc(2015, 2, 18, 10, 0, 0))
		},
		test_event() { 
			source = "Badminton Wettbewerb um 12 Uhr am 20. April", 
			target = new Event("Badminton Wettbewerb", new DateTime.utc(2015, 4, 20, 12, 0, 0), new DateTime.utc(2015, 4, 20, 13, 0, 0))
		},
		test_event() { 
			source = "Badminton Wettbewerb von 12 bis 15 Uhr am 23. Januar", 
			target = new Event("Badminton Wettbewerb", new DateTime.utc(2016, 1, 23, 12, 0, 0), new DateTime.utc(2016, 1, 23, 15, 0, 0))
		},
		test_event() { 
			source = "Von 12:00 bis 15:30 Uhr am 20. April Badminton Wettbewerb", 
			target = new Event("Badminton Wettbewerb", new DateTime.utc(2015, 4, 20, 12, 0, 0), new DateTime.utc(2015, 4, 20, 15, 30, 0))
		},
		test_event() { 
			source = "Klavierunterricht um 12:30 in 4 Tagen", 
			target = new Event("Klavierunterricht", new DateTime.utc(2015, 2, 21, 12, 30, 0), new DateTime.utc(2015, 2, 21, 13, 30, 0))
		},
		test_event() { 
			source = "  Klavier Konzert am 5.6.2016 nachmittags ", 
			target = new Event("Klavier Konzert", new DateTime.utc(2016, 6, 5, 15, 0, 0), new DateTime.utc(2016, 6, 5, 16, 0, 0))
		},
		test_event() { 
			source = "Geschenke auspacken Heiligabend 19 Uhr", 
			target = new Event("Geschenke auspacken", new DateTime.utc(2015, 12, 24, 19, 0, 0), new DateTime.utc(2015, 12, 24, 20, 0, 0))
		},
		test_event() { 
			source = "Mac-Stammtisch übernächsten Mittwoch ab 18:30 h im Plan B", 
			target = new Event("Mac-Stammtisch", new DateTime.utc(2015, 6, 5, 18, 30, 0), new DateTime.utc(2015, 6, 5, 19, 30, 0))
		},
		test_event() { 
			source = "Mittagessen morgen in Mensa", 
			target = new Event("Mittagessen", new DateTime.utc(2015, 2, 18, 0, 0, 0), new DateTime.utc(2015, 2, 18, 0, 0, 0), "Mensa", true)
		},
		test_event() { 
			source = "Geburtstag von Max jedes Jahr am 17.4", 
			target = new Event("Geburtstag von Max", new DateTime.utc(2015, 4, 17, 0, 0, 0), new DateTime.utc(2015, 4, 17, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Lauftraining jeden Mi und Fr um 18 Uhr vom 1.2 bis zum 31.3", 
			target = new Event("Lauftraining", new DateTime.utc(2016, 6, 5, 15, 0, 0), new DateTime.utc(2016, 6, 5, 16, 0, 0))
		},
		test_event() { 
			source = "Urlaub vom 5. bis 20. Juli", 
			target = new Event("Urlaub", new DateTime.utc(2015, 7, 5, 0, 0, 0), new DateTime.utc(2015, 7, 20, 0, 0, 0), "", true)
		}
	};

	analyze_event_test(test_events, dt_simulated);
}