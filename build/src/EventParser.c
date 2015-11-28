/* EventParser.c generated by valac 0.28.1, the Vala compiler
 * generated from EventParser.vala, do not modify */


#include <glib.h>
#include <glib-object.h>
#include <stdlib.h>
#include <string.h>


#define TYPE_EVENT_PARSER (event_parser_get_type ())
#define EVENT_PARSER(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_EVENT_PARSER, EventParser))
#define IS_EVENT_PARSER(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_EVENT_PARSER))
#define EVENT_PARSER_GET_INTERFACE(obj) (G_TYPE_INSTANCE_GET_INTERFACE ((obj), TYPE_EVENT_PARSER, EventParserIface))

typedef struct _EventParser EventParser;
typedef struct _EventParserIface EventParserIface;

#define TYPE_PARSED_EVENT (parsed_event_get_type ())
#define PARSED_EVENT(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_PARSED_EVENT, ParsedEvent))
#define PARSED_EVENT_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), TYPE_PARSED_EVENT, ParsedEventClass))
#define IS_PARSED_EVENT(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_PARSED_EVENT))
#define IS_PARSED_EVENT_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), TYPE_PARSED_EVENT))
#define PARSED_EVENT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_PARSED_EVENT, ParsedEventClass))

typedef struct _ParsedEvent ParsedEvent;
typedef struct _ParsedEventClass ParsedEventClass;

struct _EventParserIface {
	GTypeInterface parent_iface;
	ParsedEvent* (*parse_source) (EventParser* self, const gchar* source);
	gchar* (*get_language) (EventParser* self);
};



GType parsed_event_get_type (void) G_GNUC_CONST;
GType event_parser_get_type (void) G_GNUC_CONST;
ParsedEvent* event_parser_parse_source (EventParser* self, const gchar* source);
gchar* event_parser_get_language (EventParser* self);


ParsedEvent* event_parser_parse_source (EventParser* self, const gchar* source) {
	g_return_val_if_fail (self != NULL, NULL);
	return EVENT_PARSER_GET_INTERFACE (self)->parse_source (self, source);
}


gchar* event_parser_get_language (EventParser* self) {
	g_return_val_if_fail (self != NULL, NULL);
	return EVENT_PARSER_GET_INTERFACE (self)->get_language (self);
}


static void event_parser_base_init (EventParserIface * iface) {
	static gboolean initialized = FALSE;
	if (!initialized) {
		initialized = TRUE;
	}
}


GType event_parser_get_type (void) {
	static volatile gsize event_parser_type_id__volatile = 0;
	if (g_once_init_enter (&event_parser_type_id__volatile)) {
		static const GTypeInfo g_define_type_info = { sizeof (EventParserIface), (GBaseInitFunc) event_parser_base_init, (GBaseFinalizeFunc) NULL, (GClassInitFunc) NULL, (GClassFinalizeFunc) NULL, NULL, 0, 0, (GInstanceInitFunc) NULL, NULL };
		GType event_parser_type_id;
		event_parser_type_id = g_type_register_static (G_TYPE_INTERFACE, "EventParser", &g_define_type_info, 0);
		g_type_interface_add_prerequisite (event_parser_type_id, G_TYPE_OBJECT);
		g_once_init_leave (&event_parser_type_id__volatile, event_parser_type_id);
	}
	return event_parser_type_id__volatile;
}



