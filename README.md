# Event Parser

A natural language parser for calendar events, written in Vala. 

The parser is made to solve this issue on bountysource: https://www.bountysource.com/issues/5376499-use-natural-language-input-when-creating-events-200.

Some examples for natural language input:
- Badminton tomorrow at 12pm
- Grocery shopping Thursday at 11:30pm
- Family vacation from 8/9 - 8/18
- Soccer practice next week at 6am at JFK High School
- Bob’s 25th Anniversary on May, 14th 2020

The purser outputs the title, the start and end date, the location and if the event lasts all day. Here are all currently correct working test events:
- Badminton
- Badminton Class tomorrow the whole day in the gym
- Badminton at 18pm
- Badminton tomorrow at 12
- Grocery shopping Thursday at 11:30pm
- Clothes shopping Wednesday at 5:35pm at Nordstroms
- Clothes shopping at Nordstroms in a month at 17:45
- Clothes shopping at Nordstroms next Thursday at 5p
- Hiking in Scotland thursday to saturday
- Hiking in Scotland this weekend
- Family vacation from 8/9 - 8/18
- Family vacation from 8/1 - 8 at Sandy Lane
- Family vacation from 8/9 - 18 at Sandy Lane
- Family vacation from August 9th - 18th in Mexico
- Family vacation from August 9th - 18 in Mexico
- Family vacation from August 9 - 18 at The Marriot Hotel
- Soccer practice Tuesday at noon
- Soccer practice next week at 6am at JFK High School
- Soccer practice next month at 7am at JFK High School
- Soccer practice at JFK High School Wednesday at 6:15
- Sams birthday on 5/16
- Sams Birthday Party on 2nd January
- Vacation in 4 weeks
- Christmas on December 25th
- Lunch with becca at cafe thu 1-2
- Bob’s 25th anniversay on May, 14th 2020

## Usage
```vala
var handler = new EventParserHandler ();
EventParser parser = handler.get_parser (handle.get_locale ()); // To get the parser for the user's locale
ParsedEvent

mario ev = parser.parse_source (ev_str); 
```

## More languages
A partial german translation of the parser and the tests are included.

## Credits
This code was originally written by [pantor](https://github.com/pantor) and then extend by [Mario Guerriero](https://github.com/marioguerriero).
It is open source software licensed with GPLv3 license.