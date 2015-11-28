/**
 * 
 */
public class EventParserHandler : GLib.Object {

	public const string FALLBACK_LANG = "en";

	private Gee.HashMap<string, EventParser> handlers;

	public EventParserHandler(string? lang = null) {
		handlers = new Gee.HashMap<string, EventParser> ();

		if (lang == null)
			lang = get_locale ();

		// Grant at least the fallback parser
		register_handler (FALLBACK_LANG, new ParserEn ());
		
		// Register other default parsers
		var parser = new ParserDe ();
		register_handler (parser.get_language (), parser); // de

	}

	public void register_handler (string lang, EventParser parser) {
		handlers.set (lang, parser);
	}
	
	public EventParser get_parser (string lang) {
		if (!handlers.has_key (lang))
			return handlers.get (FALLBACK_LANG);
		return handlers.get (lang);
	}

	public unowned string? get_locale () {
		return Environment.get_variable ("LANGUAGE").split(":")[0];
	}
}