// -*- Mode: vala; indent-tabs-mode: nil; tab-width: 4 -*-
/***
  BEGIN LICENSE

  Copyright (C) 2015 Mario Guerriero <marioguerriero33@gmail.com>
                     pantor
  This program is free software: you can redistribute it and/or modify it
  under the terms of the GNU Lesser General Public License version 3, as published
  by the Free Software Foundation.

  This program is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranties of
  MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR
  PURPOSE.  See the GNU General Public License for more details.

  You should have received a copy of the GNU General Public License along
  with this program.  If not, see <http://www.gnu.org/licenses/>

  END LICENSE
***/

// ParsedEvent (Name, DateTime Begin, DateTime End, Location = "", All_Day = false)

test_event[] test_de () {	
	test_event[] test_events = {
		test_event() {
			source = "Badminton",
			target = new ParsedEvent("Badminton", new DateTime.utc(2015, 2, 17, 14, 0, 0), new DateTime.utc(2015, 2, 17, 15, 0, 0))
		},
		test_event() { 
			source = "Sporttag morgen den ganzen Tag in der Sporthalle", 
			target = new ParsedEvent("Sporttag", new DateTime.utc(2015, 2, 18, 0, 0, 0), new DateTime.utc(2015, 2, 18, 0, 0, 0), "Sporthalle", true)
		},
		test_event() { 
			source = "Badminton um 18 Uhr", 
			target = new ParsedEvent("Badminton", new DateTime.utc(2015, 2, 17, 18, 0, 0), new DateTime.utc(2015, 2, 17, 19, 0, 0))
		},
		test_event() { 
			source = "Badminton morgen um 12", 
			target = new ParsedEvent("Badminton", new DateTime.utc(2015, 2, 18, 12, 0, 0), new DateTime.utc(2015, 2, 18, 13, 0, 0))
		},
		test_event() { 
			source = "Badminton um 12 morgen", 
			target = new ParsedEvent("Badminton", new DateTime.utc(2015, 2, 18, 12, 0, 0), new DateTime.utc(2015, 2, 18, 13, 0, 0))
		},
		test_event() { 
			source = "Badminton übermorgen um 7:30", 
			target = new ParsedEvent("Badminton", new DateTime.utc(2015, 2, 19, 7, 30, 0), new DateTime.utc(2015, 2, 19, 8, 30, 0))
		},
		test_event() { 
			source = "Badminton gestern um 22 Uhr", 
			target = new ParsedEvent("Badminton", new DateTime.utc(2015, 2, 16, 22, 0, 0), new DateTime.utc(2015, 2, 16, 23, 0, 0))
		},
		test_event() { 
			source = "Morgen früh Badminton Training", 
			target = new ParsedEvent("Badminton Training", new DateTime.utc(2015, 2, 18, 9, 0, 0), new DateTime.utc(2015, 2, 18, 10, 0, 0))
		},
		test_event() { 
			source = "Badminton Wettbewerb um 12 Uhr am 20. April", 
			target = new ParsedEvent("Badminton Wettbewerb", new DateTime.utc(2015, 4, 20, 12, 0, 0), new DateTime.utc(2015, 4, 20, 13, 0, 0))
		},
		test_event() { 
			source = "Badminton Wettbewerb von 12 bis 15 Uhr am 23. Januar", 
			target = new ParsedEvent("Badminton Wettbewerb", new DateTime.utc(2016, 1, 23, 12, 0, 0), new DateTime.utc(2016, 1, 23, 15, 0, 0))
		},
		test_event() { 
			source = "Von 12:00 bis 15:30 Uhr am 20. April Badminton Wettbewerb", 
			target = new ParsedEvent("Badminton Wettbewerb", new DateTime.utc(2015, 4, 20, 12, 0, 0), new DateTime.utc(2015, 4, 20, 15, 30, 0))
		},
		test_event() { 
			source = "Klavierunterricht um 12:30 in 4 Tagen", 
			target = new ParsedEvent("Klavierunterricht", new DateTime.utc(2015, 2, 21, 12, 30, 0), new DateTime.utc(2015, 2, 21, 13, 30, 0))
		},
		test_event() { 
			source = "  Klavier Konzert am 5.6.2016 nachmittags ", 
			target = new ParsedEvent("Klavier Konzert", new DateTime.utc(2016, 6, 5, 15, 0, 0), new DateTime.utc(2016, 6, 5, 16, 0, 0))
		},
		test_event() { 
			source = "Geschenke auspacken Heiligabend 19 Uhr", 
			target = new ParsedEvent("Geschenke auspacken", new DateTime.utc(2015, 12, 24, 19, 0, 0), new DateTime.utc(2015, 12, 24, 20, 0, 0))
		},
		test_event() { 
			source = "Mac-Stammtisch übernächsten Mittwoch ab 18:30 h im Plan B", 
			target = new ParsedEvent("Mac-Stammtisch", new DateTime.utc(2015, 2, 25, 18, 30, 0), new DateTime.utc(2015, 2, 25, 19, 30, 0), "Plan B")
		},
		test_event() { 
			source = "Mittagessen morgen in Mensa", 
			target = new ParsedEvent("Mittagessen", new DateTime.utc(2015, 2, 18, 0, 0, 0), new DateTime.utc(2015, 2, 18, 0, 0, 0), "Mensa", true)
		},
		test_event() { 
			source = "Geburtstag von Max am 17.4", 
			target = new ParsedEvent("Geburtstag von Max", new DateTime.utc(2015, 4, 17, 0, 0, 0), new DateTime.utc(2015, 4, 17, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Lauftraining um 18 Uhr nächsten Sonntag", 
			target = new ParsedEvent("Lauftraining", new DateTime.utc(2015, 2, 22, 18, 0, 0), new DateTime.utc(2015, 2, 22, 19, 0, 0))
		},
		test_event() { 
			source = "Marathon übernächsten Sonntag für 4h vormittags", 
			target = new ParsedEvent("Marathon", new DateTime.utc(2015, 3, 1, 11, 0, 0), new DateTime.utc(2015, 3, 1, 15, 0, 0))
		},
		test_event() { 
			source = "Urlaub vom 5. bis 20. Juli", 
			target = new ParsedEvent("Urlaub", new DateTime.utc(2015, 7, 5, 0, 0, 0), new DateTime.utc(2015, 7, 20, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Ab morgen für 3 Wochen Urlaub", 
			target = new ParsedEvent("Urlaub", new DateTime.utc(2015, 2, 18, 0, 0, 0), new DateTime.utc(2015, 3, 11, 0, 0, 0), "", true)
		},
		test_event() {
			source = "Morgen mittag für 30 Minuten in Berlin Schuhe kaufen",
			target = new ParsedEvent("Schuhe kaufen", new DateTime.utc(2015, 2, 18, 12, 0, 0), new DateTime.utc(2015, 2, 18, 12, 30, 0), "Berlin")
		}
	};
	
	return test_events;
}