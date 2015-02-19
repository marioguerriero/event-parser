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

	// analyze_test_events(test_events, dt_simulated);
	print_all_working_test_events(test_events, dt_simulated);
}