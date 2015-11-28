public interface EventParser : GLib.Object {
	public abstract ParsedEvent parse_source (string source);
	public abstract string get_language ();
}