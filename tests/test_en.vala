// Event (Name, DateTime Begin, DateTime End, Location = "", All_Day = false)

test_event[] test_en () {	
	test_event[] test_events = {
		test_event() {
			source = "Badminton",
			target = new Event("Badminton", new DateTime.utc(2015, 2, 17, 14, 0, 0), new DateTime.utc(2015, 2, 17, 15, 0, 0))
		},
		test_event() { 
			source = "Badminton Class tomorrow the whole day in the gym", 
			target = new Event("Badminton Class", new DateTime.utc(2015, 2, 18, 0, 0, 0), new DateTime.utc(2015, 2, 18, 0, 0, 0), "gym", true)
		},
		test_event() { 
			source = "Badminton at 18pm", 
			target = new Event("Badminton", new DateTime.utc(2015, 2, 17, 18, 0, 0), new DateTime.utc(2015, 2, 17, 19, 0, 0))
		},
		test_event() { 
			source = "Badminton tomorrow at 12", 
			target = new Event("Badminton", new DateTime.utc(2015, 2, 18, 12, 0, 0), new DateTime.utc(2015, 2, 18, 13, 0, 0))
		},
		test_event() { 
			source = "Grocery shopping Thursday at 11:30pm", 
			target = new Event("Grocery shopping", new DateTime.utc(2015, 2, 19, 23, 30, 0), new DateTime.utc(2015, 2, 20, 0, 30, 0))
		},
		test_event() { 
			source = "Grocery shopping at Waldbaums from 4pm to 5pm", 
			target = new Event("Grocery shopping", new DateTime.utc(2015, 2, 17, 16, 0, 0), new DateTime.utc(2015, 2, 17, 17, 0, 0), "Waldbaums")
		},
		test_event() { 
			source = "Clothes shopping Wednesday at 5:35pm at Nordstroms", 
			target = new Event("Clothes shopping", new DateTime.utc(2015, 2, 18, 17, 35, 0), new DateTime.utc(2015, 2, 18, 18, 35, 0), "Nordstroms")
		},
		test_event() { 
			source = "Clothes shopping at Nordstroms in a month at 17:45", 
			target = new Event("Clothes shopping", new DateTime.utc(2015, 3, 17, 17, 45, 0), new DateTime.utc(2015, 3, 17, 18, 45, 0), "Nordstroms")
		},
		test_event() { 
			source = "Clothes shopping at Nordstroms next Thursday at 5p", 
			target = new Event("Clothes shopping", new DateTime.utc(2015, 2, 19, 17, 0, 0), new DateTime.utc(2015, 2, 19, 18, 0, 0), "Nordstroms")
		},
		test_event() { 
			source = "Hiking in Scotland thursday to saturday", 
			target = new Event("Hiking", new DateTime.utc(2015, 2, 19, 0, 0, 0), new DateTime.utc(2015, 2, 21, 0, 0, 0), "Scotland", true)
		},
		test_event() { 
			source = "Hiking in Scotland this weekend", 
			target = new Event("Hiking", new DateTime.utc(2015, 2, 21, 0, 0, 0), new DateTime.utc(2015, 2, 22, 0, 0, 0), "Scotland", true)
		},
		test_event() { 
			source = "Family vacation from 8/9 - 8/18", 
			target = new Event("Family vacation", new DateTime.utc(2015, 8, 9, 0, 0, 0), new DateTime.utc(2015, 8, 18, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Lunch with John in Cupertino on Thursday @12", 
			target = new Event("Lunch with John", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Family vacation from 8/1 - 8 at Sandy Lane", 
			target = new Event("Family vacation", new DateTime.utc(2015, 8, 1, 0, 0, 0), new DateTime.utc(2015, 8, 8, 0, 0, 0), "Sandy Lane", true)
		},
		test_event() { 
			source = "Family vacation from 8/9 - 18 at Sandy Lane", 
			target = new Event("Family vacation", new DateTime.utc(2015, 8, 9, 0, 0, 0), new DateTime.utc(2015, 8, 18, 0, 0, 0), "Sandy Lane", true)
		},
		test_event() { 
			source = "Family vacation from August 9th - 18th in Mexico", 
			target = new Event("Family vacation", new DateTime.utc(2015, 8, 9, 0, 0, 0), new DateTime.utc(2015, 8, 18, 0, 0, 0), "Mexico", true)
		},
		test_event() { 
			source = "Family vacation from August 9th - 18 in Mexico", 
			target = new Event("Family vacation", new DateTime.utc(2015, 8, 9, 0, 0, 0), new DateTime.utc(2015, 8, 18, 0, 0, 0), "Mexico", true)
		},
		test_event() { 
			source = "Family vacation from August 9 - 18 at The Marriot Hotel", 
			target = new Event("Family vacation", new DateTime.utc(2015, 8, 9, 0, 0, 0), new DateTime.utc(2015, 8, 18, 0, 0, 0), "Marriot Hotel", true)
		},
		test_event() { 
			source = "Soccer practice Tuesday at noon", 
			target = new Event("Soccer practice", new DateTime.utc(2015, 2, 17, 12, 0, 0), new DateTime.utc(2015, 2, 17, 13, 0, 0))
		},
		test_event() { 
			source = "Soccer practice next week at 6am at JFK High School", 
			target = new Event("Soccer practice", new DateTime.utc(2015, 2, 24, 6, 0, 0), new DateTime.utc(2015, 2, 24, 7, 0, 0), "JFK High School")
		},
		test_event() { 
			source = "Soccer practice next month at 7am at JFK High School", 
			target = new Event("Soccer practice", new DateTime.utc(2015, 3, 17, 7, 0, 0), new DateTime.utc(2015, 3, 17, 8, 0, 0), "JFK High School")
		},
		test_event() { 
			source = "Soccer practice at JFK High School Wednesday at 6:15", 
			target = new Event("Soccer practice", new DateTime.utc(2015, 2, 18, 18, 15, 0), new DateTime.utc(2015, 2, 18, 19, 15, 0), "JFK High School")
		},
		test_event() { 
			source = "Sams birthday on 5/16", 
			target = new Event("Sams birthday", new DateTime.utc(2015, 5, 16, 0, 0, 0), new DateTime.utc(2015, 5, 16, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Sams Birthday Party on 2nd January", 
			target = new Event("Sams Birthday Party", new DateTime.utc(2016, 1, 2, 0, 0, 0), new DateTime.utc(2016, 1, 2, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Lunch with John in Cupertino on Friday from 11-1:30pm", 
			target = new Event("Lunch with John", new DateTime.utc(2015, 2, 20, 11, 0, 0), new DateTime.utc(2015, 2, 20, 13, 30, 0), "Cupertino")
		},
		test_event() { 
			source = "Lunch with John in Cupertino on Thursday from 11-1:30 pm", 
			target = new Event("Lunch with John", new DateTime.utc(2015, 2, 20, 11, 0, 0), new DateTime.utc(2015, 2, 20, 13, 30, 0), "Cupertino")
		},
		test_event() { 
			source = "1p to 2p on May 5th, committee meeting", 
			target = new Event("committee meeting", new DateTime.utc(2015, 5, 5, 13, 0, 0), new DateTime.utc(2015, 5, 5, 14, 0, 0))
		},
		test_event() { 
			source = "1p to 2p on 31th of april, committee meeting", 
			target = new Event("committee meeting", new DateTime.utc(2015, 5, 31, 13, 0, 0), new DateTime.utc(2015, 4, 31, 14, 0, 0))
		},
		test_event() { 
			source = "1p to 2p on 15th of may, 2014 committee meeting", 
			target = new Event("committee meeting", new DateTime.utc(2014, 5, 15, 13, 0, 0), new DateTime.utc(2014, 5, 15, 14, 0, 0))
		},
		test_event() { 
			source = "1p to 2p on May 5th, committee meeting at 559 Madison Ave.", 
			target = new Event("committee meeting", new DateTime.utc(2015, 5, 5, 13, 0, 0), new DateTime.utc(2015, 5, 5, 14, 0, 0), "559 Madison Ave")
		},
		test_event() { 
			source = "23rd of May at 2017, Dinner with Andre", 
			target = new Event("Dinner with Andre", new DateTime.utc(2017, 5, 23, 0, 0, 0), new DateTime.utc(2017, 5, 23, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "May 23rd at 8:00p, Dinner with Andre at Toku", 
			target = new Event("Dinner with Andre", new DateTime.utc(2017, 5, 23, 0, 0, 0), new DateTime.utc(2017, 5, 23, 0, 0, 0), "Toku", true)
		},
		test_event() { 
			source = "Vacation in 4 weeks", 
			target = new Event("Vacation", new DateTime.utc(2015, 3, 17, 0, 0, 0), new DateTime.utc(2015, 3, 17, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Christmas on December 25th", 
			target = new Event("Christmas", new DateTime.utc(2015, 12, 25, 0, 0, 0), new DateTime.utc(2015, 12, 25, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Lunch with becca at cafe thu 1-2", 
			target = new Event("Lunch with becca", new DateTime.utc(2015, 2, 19, 13, 0, 0), new DateTime.utc(2015, 2, 19, 14, 0, 0), "cafe")
		},
		
		/* test_event() { 
			source = "February 24 at 3pm - 4:40pm March 3,  Retreat at Hilton Hotel", 
			target = new Event("February 24 at 3pm - 4:40pm March 3,  Retreat at Hilton Hotel", new DateTime.utc(2015, 3, 139, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Homework 5 due next monday at 3 o'clock at 3 Towne Hall", 
			target = new Event("Homework 5 due next monday at 3 o'clock at 3 Towne Hall", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Homework 5 due next sunday at 3 Towne Hall at 3pm", 
			target = new Event("Homework 5 due next sunday at 3 Towne Hall at 3pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Homework 5 due next monday at 3 Towne Hall at 3", 
			target = new Event("Homework 5 due next monday at 3 Towne Hall at 3", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "The retreat is from Jan 12 - 29. at The Beach House", 
			target = new Event("The retreat is from Jan 12 - 29. at The Beach House", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Bake a cake tomorrow.", 
			target = new Event("Bake a cake tomorrow.", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Use Horizon today!", 
			target = new Event("Use Horizon today!", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Use Horizon! today", 
			target = new Event("Use Horizon! today", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "At arena 2:00pm Football Game", 
			target = new Event("At arena 2:00pm Football Game", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Staff meeting on Monday at 9 am in conference room", 
			target = new Event("Staff meeting on Monday at 9 am in conference room", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Project meeting with Jason 4 pm tomorrow at coffee shop", 
			target = new Event("Project meeting with Jason 4 pm tomorrow at coffee shop", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Let's have lunch at Joe's on the 3rd.", 
			target = new Event("Let's have lunch at Joe's on the 3rd.", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Boys ski trip at Victor's from the 3rd to the 6th", 
			target = new Event("Boys ski trip at Victor's from the 3rd to the 6th", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "The exam is in 3 weeks from tomorrow.", 
			target = new Event("The exam is in 3 weeks from tomorrow.", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "The exam is three weeks from tomorrow.", 
			target = new Event("The exam is three weeks from tomorrow.", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "The exam is @ 2pm and lasts for five hours", 
			target = new Event("The exam is @ 2pm and lasts for five hours", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "The koala will be set free on the fourth of july @noon", 
			target = new Event("The koala will be set free on the fourth of july @noon", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "My mom's birthday is on the 27th", 
			target = new Event("My mom's birthday is on the 27th", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "The biology exam is @ 2pm and goes until 4pm", 
			target = new Event("The biology exam is @ 2pm and goes until 4pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "on the 5th to the ninth, we shall eat lobster.", 
			target = new Event("on the 5th to the ninth, we shall eat lobster.", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meeting on the 5th at City Center", 
			target = new Event("Meeting on the 5th at City Center", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "on the 5th to the 9th, we shall eat lobster.", 
			target = new Event("on the 5th to the 9th, we shall eat lobster.", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "The conference is from Feb 12 at 3pm to the 15th.", 
			target = new Event("The conference is from Feb 12 at 3pm to the 15th.", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Birthday party from midnight to noon on March fourth", 
			target = new Event("Birthday party from midnight to noon on March fourth", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Birthday party from midnight to noon on the fourth of March", 
			target = new Event("Birthday party from midnight to noon on the fourth of March", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "High school admission results in 1 week", 
			target = new Event("High school admission results in 1 week", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Lunch with John at 123 Main Street on Tuesday", 
			target = new Event("Lunch with John at 123 Main Street on Tuesday", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Dinner at 6", 
			target = new Event("Dinner at 6", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Pick up Joe tomorrow at LAX at 8pm", 
			target = new Event("Pick up Joe tomorrow at LAX at 8pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Pick up Joe the day after tomorrow at LAX at 8pm", 
			target = new Event("Pick up Joe the day after tomorrow at LAX at 8pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Cycling class @6 for 1.5h", 
			target = new Event("Cycling class @6 for 1.5h", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Next Tuesday Jogging in the Park @8a for 90 min", 
			target = new Event("Next Tuesday Jogging in the Park @8a for 90 min", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Trip to Turkey first of july through 5th of aug", 
			target = new Event("Trip to Turkey first of july through 5th of aug", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Trip to Turkey July 1 through 5th of aug", 
			target = new Event("Trip to Turkey July 1 through 5th of aug", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Party Tuesday at Rob's House, 7-11p", 
			target = new Event("Party Tuesday at Rob's House, 7-11p", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Lunch with Matthew at 123 Main St. at 1:30 Monday", 
			target = new Event("Lunch with Matthew at 123 Main St. at 1:30 Monday", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Sam's birthday every year on 5/16", 
			target = new Event("Sam's birthday every year on 5/16", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Lunch every Tuesday until 2/5", 
			target = new Event("Lunch every Tuesday until 2/5", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Final project due August 15", 
			target = new Event("Final project due August 15", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Finish important task by Thursday!!", 
			target = new Event("Finish important task by Thursday!!", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Paper due next Wednesday", 
			target = new Event("Paper due next Wednesday", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Exam on February 27th at 5pm", 
			target = new Event("Exam on February 27th at 5pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meeting at Noon next Thursday", 
			target = new Event("Meeting at Noon next Thursday", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Picnic in Central Park next week on Monday at 11am", 
			target = new Event("Picnic in Central Park next week on Monday at 11am", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Buy milk tomorrow 5 to 6", 
			target = new Event("Buy milk tomorrow 5 to 6", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meet with Cody at Apple Store, Viterbo tomorrow from 5 to 6", 
			target = new Event("Meet with Cody at Apple Store, Viterbo tomorrow from 5 to 6", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meet with Cody tomorrow at Apple Store, Viterbo from 5 to 6", 
			target = new Event("Meet with Cody tomorrow at Apple Store, Viterbo from 5 to 6", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meet with Cody tomorrow 5 to 6 at Apple Store, Viterbo", 
			target = new Event("Meet with Cody tomorrow 5 to 6 at Apple Store, Viterbo", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Dinner with Rhiannon tomorrow 7pm at New Gen Sushi", 
			target = new Event("Dinner with Rhiannon tomorrow 7pm at New Gen Sushi", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Brendan's 6th birthday party January 22 at 11:00 at our house.", 
			target = new Event("Brendan's 6th birthday party January 22 at 11:00 at our house.", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meeting from 5 - 6", 
			target = new Event("Meeting from 5 - 6", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meeting at 5 - 6 at Warren Weaver Hall, Rm 1306", 
			target = new Event("Meeting at 5 - 6 at Warren Weaver Hall, Rm 1306", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meeting at 5 - 6 at Warren Weaver Hall", 
			target = new Event("Meeting at 5 - 6 at Warren Weaver Hall", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meeting at 5-630p", 
			target = new Event("Meeting at 5-630p", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Meeting at 5-630", 
			target = new Event("Meeting at 5-630", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Fondue at Fondue Palace at seven thirty pm", 
			target = new Event("Fondue at Fondue Palace at seven thirty pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Fondue at seven o'clock at Fondue Palace", 
			target = new Event("Fondue at seven o'clock at Fondue Palace", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Fondue at Fondue Palace at seven thirty", 
			target = new Event("Fondue at Fondue Palace at seven thirty", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Fondue at seven at Fondue Palace", 
			target = new Event("Fondue at seven at Fondue Palace", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Fondue at 7 at Fondue Palace", 
			target = new Event("Fondue at 7 at Fondue Palace", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Dinner with Rocko at Main Street from 6 to 7", 
			target = new Event("Dinner with Rocko at Main Street from 6 to 7", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Dinner at 45 Hilldale Lane, Port Washington, NY, United States from 6 to 8", 
			target = new Event("Dinner", new DateTime.utc(2015, 2, 17, 18, 0, 0), new DateTime.utc(2015, 2, 17, 20, 0, 0), "45 Hilldale Lane, Port Washington, NY, United States")
		},
		test_event() { 
			source = "Lunch with Preshit tomorrow at 8 PM until 11:20", 
			target = new Event("Lunch with Preshit", new DateTime.utc(2015, 2, 18, 20, 0, 0), new DateTime.utc(2015, 2, 18, 21, 20, 0))
		},
		test_event() { 
			source = "Lunch with Preshit tomorrow at 8 until 11:20", 
			target = new Event("Lunch with Preshit", new DateTime.utc(2015, 2, 18, 8, 0, 0), new DateTime.utc(2015, 2, 18, 11, 20, 0))
		},
		test_event() { 
			source = "Lunch with Preshit tomorrow at about 8 till 11:20", 
			target = new Event("Lunch with Preshit", new DateTime.utc(2015, 2, 18, 8, 0, 0), new DateTime.utc(2015, 2, 18, 11, 20, 0))
		},
		test_event() {
			source = "Ski Corbet's Couloir tomorrow morning at 8", 
			target = new Event("Ski Corbet's Couloir", new DateTime.utc(2015, 2, 18, 8, 0, 0), new DateTime.utc(2015, 2, 18, 9, 0, 0), "Cupertino")
		},
		test_event() {
			source = "Graduate Computer Graphics at NYU, West 4th St., New York, from 5 - 7", 
			target = new Event("Graduate Computer Graphics", new DateTime.utc(2015, 2, 17, 17, 0, 0), new DateTime.utc(2015, 2, 17, 19, 0, 0), "at NYU, West 4th St., New York")
		},
		test_event() {
			source = "Graduate Computer Graphics at NYU, 16 East 4th Street, New York, from 5 - 7", 
			target = new Event("Graduate Computer Graphics at NYU, 16 East 4th Street, New York, from 5 - 7", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() {
			source = "At Laguna Beach, CA, United States, surfing lessons every tuesday at 0800AM", 
			target = new Event("At Laguna Beach, CA, United States, surfing lessons every tuesday at 0800AM", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Star gazing with Jen at the Custer Observatory, Southold, NY on Saturday from 10-11pm", 
			target = new Event("Star gazing with Jen at the Custer Observatory, Southold, NY on Saturday from 10-11pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "WWDC 2013 at Moscone West, San Fransisco, CA June 11th to 15th", 
			target = new Event("WWDC 2013 at Moscone West, San Fransisco, CA June 11th to 15th", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Badminton dec 1 at 3pm - 11", 
			target = new Event("dec 1 at 3pm - 11", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "I work from 1am - 6pm", 
			target = new Event("I work from 1am - 6pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "dec 1st at 9am through dec fifth 8pm", 
			target = new Event("dec 1st at 9am through dec fifth 8pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "lunch with John at Taco Tuesdays Friday 12 pm", 
			target = new Event("lunch with John", new DateTime.utc(2015, 2, 20, 24, 0, 0), new DateTime.utc(2015, 2, 21, 1, 0, 0), "Taco Tuesdays")
		},
		test_event() { 
			source = "Volleyball at 5pm", 
			target = new Event("Volleyball at 5pm", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Bank holiday 8/14/2012 no school", 
			target = new Event("Bank holiday 8/14/2016 no school", new DateTime.utc(2016, 8, 14, 0, 0, 0), new DateTime.utc(2016, 8, 14, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Staff meeting next Monday at 13:00", 
			target = new Event("Staff meeting", new DateTime.utc(2015, 2, 23, 13, 0, 0), new DateTime.utc(2015, 2, 23, 14, 0, 0))
		},
		test_event() { 
			source = "National Conference 9/23 - 9/26 in Atlanta", 
			target = new Event("National Conference 9/23 - 9/26", new DateTime.utc(2015, 9, 23, 0, 0, 0), new DateTime.utc(2015, 9, 26, 0, 0, 0), "Atlanta", true)
		},
		test_event() { 
			source = "Meeting", 
			target = new Event("Meeting at work every Monday at 2pm", new DateTime.utc(2015, 2, 23, 14, 0, 0), new DateTime.utc(2015, 2, 23, 15, 0, 0), "work")
		},
		test_event() { 
			source = "Mom's birthday June 19", 
			target = new Event("Mom's birthday", new DateTime.utc(2015, 5, 19, 0, 0, 0), new DateTime.utc(2015, 5, 19, 0, 0, 0), "", true)
		},
		test_event() { 
			source = "Wedding anniversary July 3 yearly", 
			target = new Event("Wedding anniversary July 3 yearly", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Baseball Game every Thursday for 10 weeks", 
			target = new Event("Baseball Game every Thursday for 10 weeks", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Language Class every Wednesday 7-8pm for 5 months", 
			target = new Event("Language Class every Wednesday 7-8pm for 5 months", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0))
		},
		test_event() { 
			source = "Appointment at Somewhere on June 3rd 10am-10:25am", 
			target = new Event("Appointment at Somewhere on June 3rd 10am-10:25am", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Somewhere")
		},
		test_event() { 
			source = "Lunch tomorrow 15:00 in room 2", 
			target = new Event("Lunch tomorrow 15:00 in room 2", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "room 2")
		},
		test_event() { 
			source = "Lunch with English Project Team at Fountain Dining Hall 12:15pm Thursday", 
			target = new Event("Lunch with English Project Team at Fountain Dining Hall 12:15pm Thursday", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "Test event on 3/13 at 245 until 4 at 666 Main Street", 
			target = new Event("Test event on 3/13 at 245 until 4", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "666 Main Street")
		},
		test_event() { 
			source = "Conference call Mondays at 9am from 3/26 thru 4/16", 
			target = new Event("Conference call Mondays at 9am from 3/26 thru 4/16", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0))
		},
		test_event() { 
			source = "Workout at Power 10 Thursdays at 11:30", 
			target = new Event("Workout", new DateTime.utc(2015, 2, 19, 11, 30, 0), new DateTime.utc(2015, 2, 19, 12, 30, 0), "Power 10")
		},
		test_event() { 
			source = "Call John Bates to apologize tomorrow at 9", 
			target = new Event("Call John Bates to apologize tomorrow at 9", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0))
		},
		test_event() { 
			source = "Call John Bates with apology tomorrow at 9", 
			target = new Event("Call John Bates with apology tomorrow at 9", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0))
		},
		test_event() { 
			source = "lunch with Kohli tomorrow at 4 to 8 am", 
			target = new Event("lunch with Kohli", new DateTime.utc(2015, 2, 18, 4, 0, 0), new DateTime.utc(2015, 2, 18, 8, 0, 0))
		},
		test_event() { 
			source = "Tennis with David and Shaun saturdays at 9:50", 
			target = new Event("Tennis with David and Shaun", new DateTime.utc(2015, 2, 21, 9, 50, 0), new DateTime.utc(2015, 2, 21, 10, 50, 0))
		},
		test_event() { 
			source = "Tennis with David saturdays at 10:30", 
			target = new Event("Tennis with David", new DateTime.utc(2015, 2, 21, 10, 30, 0), new DateTime.utc(2015, 2, 21, 11, 30, 0))
		},
		test_event() { 
			source = "Finish working on the platter in an hour at home", 
			target = new Event("Finish working on the platter in an hour", new DateTime.utc(2015, 2, 17, 14, 25, 0), new DateTime.utc(2015, 2, 17, 15, 25, 0), "home")
		},
		test_event() { 
			source = "Meeting with Johnny, Marco, and Alexandri to talk about the research 5pm tomorrow", 
			target = new Event("Meeting with Johnny, Marco, and Alexandri to talk about the research", new DateTime.utc(2015, 2, 18, 17, 0, 0), new DateTime.utc(2015, 2, 18, 18, 0, 0))
		},
		test_event() { 
			source = "Dinner with Ben Kerwing 2 weeks from wednesday at Lupa from 7 to 9", 
			target = new Event("Dinner with Ben Kerwing 2 weeks from wednesday at Lupa from 7 to 9", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Lupa")
		},
		test_event() { 
			source = "Dinner with Ben Kerwing two weeks from wednesday at Lupa from 7 to 9", 
			target = new Event("Dinner with Ben Kerwing two weeks from wednesday at Lupa from 7 to 9", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Lupa")
		},
		test_event() { 
			source = "dinner with Erin tomorrow evening", 
			target = new Event("dinner with Erin", new DateTime.utc(2015, 2, 18, 18, 0, 0), new DateTime.utc(2015, 2, 18, 19, 0, 0))
		},
		test_event() { 
			source = "Meeting this evening", 
			target = new Event("Meeting", new DateTime.utc(2015, 2, 17, 18, 0, 0), new DateTime.utc(2015, 2, 17, 19, 0, 0))
		},
		test_event() { 
			source = "at Los Angeles, CA, United States, from 5-6 test with paul", 
			target = new Event("at Los Angeles, CA, United States, from 5-6 test with paul", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "at Los Angeles, CA, United States, from 5 to 6 test with paul", 
			target = new Event("at Los Angeles, CA, United States, from 5 to 6 test with paul", new DateTime.utc(2015, 2, 19, 12, 0, 0), new DateTime.utc(2015, 2, 19, 13, 0, 0), "Cupertino")
		},
		test_event() { 
			source = "at Savatore's Pizzeria, Shore Road, Port Washington, NYC Dinner", 
			target = new Event("NYC Dinner", new DateTime.utc(2015, 2, 17, 19, 0, 0), new DateTime.utc(2015, 2, 17, 21, 0, 0), "Savatore's Pizzeria, Shore Road, Port Washington")
		},
		test_event() { 
			source = "Brunch for Amanda's birthday in Williamsburg April 28th at 12:00p", 
			target = new Event("Brunch for Amanda's birthdayp", new DateTime.utc(2015, 4, 28, 24, 0, 0), new DateTime.utc(2015, 4, 29, 1, 0, 0), "Williamsburg")
		}, */
		test_event() { 
			source = "Bob's 25th anniversay on May, 14th 2020", 
			target = new Event("Bob's 25th anniversay", new DateTime.utc(2020, 5, 14, 0, 0, 0), new DateTime.utc(2015, 5, 14, 0, 0, 0), "", true)
		}
	};
	
	return test_events;
}