/* EventParserHandler.c generated by valac 0.28.1, the Vala compiler
 * generated from EventParserHandler.vala, do not modify */

/* -*- Mode: vala; indent-tabs-mode: nil; tab-width: 4 -*-*/

#include <glib.h>
#include <glib-object.h>
#include <gee.h>
#include <stdlib.h>
#include <string.h>


#define MAYA_SERVICES_TYPE_EVENT_PARSER_HANDLER (maya_services_event_parser_handler_get_type ())
#define MAYA_SERVICES_EVENT_PARSER_HANDLER(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), MAYA_SERVICES_TYPE_EVENT_PARSER_HANDLER, MayaServicesEventParserHandler))
#define MAYA_SERVICES_EVENT_PARSER_HANDLER_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), MAYA_SERVICES_TYPE_EVENT_PARSER_HANDLER, MayaServicesEventParserHandlerClass))
#define MAYA_SERVICES_IS_EVENT_PARSER_HANDLER(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), MAYA_SERVICES_TYPE_EVENT_PARSER_HANDLER))
#define MAYA_SERVICES_IS_EVENT_PARSER_HANDLER_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), MAYA_SERVICES_TYPE_EVENT_PARSER_HANDLER))
#define MAYA_SERVICES_EVENT_PARSER_HANDLER_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), MAYA_SERVICES_TYPE_EVENT_PARSER_HANDLER, MayaServicesEventParserHandlerClass))

typedef struct _MayaServicesEventParserHandler MayaServicesEventParserHandler;
typedef struct _MayaServicesEventParserHandlerClass MayaServicesEventParserHandlerClass;
typedef struct _MayaServicesEventParserHandlerPrivate MayaServicesEventParserHandlerPrivate;

#define MAYA_SERVICES_TYPE_EVENT_PARSER (maya_services_event_parser_get_type ())
#define MAYA_SERVICES_EVENT_PARSER(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), MAYA_SERVICES_TYPE_EVENT_PARSER, MayaServicesEventParser))
#define MAYA_SERVICES_IS_EVENT_PARSER(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), MAYA_SERVICES_TYPE_EVENT_PARSER))
#define MAYA_SERVICES_EVENT_PARSER_GET_INTERFACE(obj) (G_TYPE_INSTANCE_GET_INTERFACE ((obj), MAYA_SERVICES_TYPE_EVENT_PARSER, MayaServicesEventParserIface))

typedef struct _MayaServicesEventParser MayaServicesEventParser;
typedef struct _MayaServicesEventParserIface MayaServicesEventParserIface;

#define MAYA_SERVICES_TYPE_PARSED_EVENT (maya_services_parsed_event_get_type ())
#define MAYA_SERVICES_PARSED_EVENT(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), MAYA_SERVICES_TYPE_PARSED_EVENT, MayaServicesParsedEvent))
#define MAYA_SERVICES_PARSED_EVENT_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), MAYA_SERVICES_TYPE_PARSED_EVENT, MayaServicesParsedEventClass))
#define MAYA_SERVICES_IS_PARSED_EVENT(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), MAYA_SERVICES_TYPE_PARSED_EVENT))
#define MAYA_SERVICES_IS_PARSED_EVENT_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), MAYA_SERVICES_TYPE_PARSED_EVENT))
#define MAYA_SERVICES_PARSED_EVENT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), MAYA_SERVICES_TYPE_PARSED_EVENT, MayaServicesParsedEventClass))

typedef struct _MayaServicesParsedEvent MayaServicesParsedEvent;
typedef struct _MayaServicesParsedEventClass MayaServicesParsedEventClass;
#define _g_object_unref0(var) ((var == NULL) ? NULL : (var = (g_object_unref (var), NULL)))

#define MAYA_SERVICES_TYPE_PARSER_EN (maya_services_parser_en_get_type ())
#define MAYA_SERVICES_PARSER_EN(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), MAYA_SERVICES_TYPE_PARSER_EN, MayaServicesParserEn))
#define MAYA_SERVICES_PARSER_EN_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), MAYA_SERVICES_TYPE_PARSER_EN, MayaServicesParserEnClass))
#define MAYA_SERVICES_IS_PARSER_EN(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), MAYA_SERVICES_TYPE_PARSER_EN))
#define MAYA_SERVICES_IS_PARSER_EN_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), MAYA_SERVICES_TYPE_PARSER_EN))
#define MAYA_SERVICES_PARSER_EN_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), MAYA_SERVICES_TYPE_PARSER_EN, MayaServicesParserEnClass))

typedef struct _MayaServicesParserEn MayaServicesParserEn;
typedef struct _MayaServicesParserEnClass MayaServicesParserEnClass;
#define _g_date_time_unref0(var) ((var == NULL) ? NULL : (var = (g_date_time_unref (var), NULL)))

#define MAYA_SERVICES_TYPE_PARSER_DE (maya_services_parser_de_get_type ())
#define MAYA_SERVICES_PARSER_DE(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), MAYA_SERVICES_TYPE_PARSER_DE, MayaServicesParserDe))
#define MAYA_SERVICES_PARSER_DE_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), MAYA_SERVICES_TYPE_PARSER_DE, MayaServicesParserDeClass))
#define MAYA_SERVICES_IS_PARSER_DE(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), MAYA_SERVICES_TYPE_PARSER_DE))
#define MAYA_SERVICES_IS_PARSER_DE_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), MAYA_SERVICES_TYPE_PARSER_DE))
#define MAYA_SERVICES_PARSER_DE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), MAYA_SERVICES_TYPE_PARSER_DE, MayaServicesParserDeClass))

typedef struct _MayaServicesParserDe MayaServicesParserDe;
typedef struct _MayaServicesParserDeClass MayaServicesParserDeClass;
#define _g_free0(var) (var = (g_free (var), NULL))

struct _MayaServicesEventParserHandler {
	GObject parent_instance;
	MayaServicesEventParserHandlerPrivate * priv;
};

struct _MayaServicesEventParserHandlerClass {
	GObjectClass parent_class;
};

struct _MayaServicesEventParserIface {
	GTypeInterface parent_iface;
	MayaServicesParsedEvent* (*parse_source) (MayaServicesEventParser* self, const gchar* source);
	gchar* (*get_language) (MayaServicesEventParser* self);
};

struct _MayaServicesEventParserHandlerPrivate {
	GeeHashMap* handlers;
};


static gpointer maya_services_event_parser_handler_parent_class = NULL;

GType maya_services_event_parser_handler_get_type (void) G_GNUC_CONST;
GType maya_services_parsed_event_get_type (void) G_GNUC_CONST;
GType maya_services_event_parser_get_type (void) G_GNUC_CONST;
#define MAYA_SERVICES_EVENT_PARSER_HANDLER_GET_PRIVATE(o) (G_TYPE_INSTANCE_GET_PRIVATE ((o), MAYA_SERVICES_TYPE_EVENT_PARSER_HANDLER, MayaServicesEventParserHandlerPrivate))
enum  {
	MAYA_SERVICES_EVENT_PARSER_HANDLER_DUMMY_PROPERTY
};
#define MAYA_SERVICES_EVENT_PARSER_HANDLER_FALLBACK_LANG "en"
MayaServicesEventParserHandler* maya_services_event_parser_handler_new (const gchar* lang);
MayaServicesEventParserHandler* maya_services_event_parser_handler_construct (GType object_type, const gchar* lang);
const gchar* maya_services_event_parser_handler_get_locale (MayaServicesEventParserHandler* self);
void maya_services_event_parser_handler_register_handler (MayaServicesEventParserHandler* self, const gchar* lang, MayaServicesEventParser* parser);
MayaServicesParserEn* maya_services_parser_en_new (GDateTime* _simulated_dt);
MayaServicesParserEn* maya_services_parser_en_construct (GType object_type, GDateTime* _simulated_dt);
GType maya_services_parser_en_get_type (void) G_GNUC_CONST;
GType maya_services_parser_de_get_type (void) G_GNUC_CONST;
MayaServicesParserDe* maya_services_parser_de_new (GDateTime* _simulated_dt);
MayaServicesParserDe* maya_services_parser_de_construct (GType object_type, GDateTime* _simulated_dt);
gchar* maya_services_event_parser_get_language (MayaServicesEventParser* self);
MayaServicesEventParser* maya_services_event_parser_handler_get_parser (MayaServicesEventParserHandler* self, const gchar* lang);
static void maya_services_event_parser_handler_finalize (GObject* obj);
static void _vala_array_destroy (gpointer array, gint array_length, GDestroyNotify destroy_func);
static void _vala_array_free (gpointer array, gint array_length, GDestroyNotify destroy_func);
static gint _vala_array_length (gpointer array);


MayaServicesEventParserHandler* maya_services_event_parser_handler_construct (GType object_type, const gchar* lang) {
	MayaServicesEventParserHandler * self = NULL;
	GeeHashMap* _tmp0_ = NULL;
	const gchar* _tmp1_ = NULL;
	GDateTime* _tmp3_ = NULL;
	GDateTime* _tmp4_ = NULL;
	MayaServicesParserEn* _tmp5_ = NULL;
	MayaServicesParserEn* _tmp6_ = NULL;
	MayaServicesParserDe* parser = NULL;
	GDateTime* _tmp7_ = NULL;
	GDateTime* _tmp8_ = NULL;
	MayaServicesParserDe* _tmp9_ = NULL;
	MayaServicesParserDe* _tmp10_ = NULL;
	gchar* _tmp11_ = NULL;
	gchar* _tmp12_ = NULL;
	self = (MayaServicesEventParserHandler*) g_object_new (object_type, NULL);
	_tmp0_ = gee_hash_map_new (G_TYPE_STRING, (GBoxedCopyFunc) g_strdup, g_free, MAYA_SERVICES_TYPE_EVENT_PARSER, (GBoxedCopyFunc) g_object_ref, g_object_unref, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	_g_object_unref0 (self->priv->handlers);
	self->priv->handlers = _tmp0_;
	_tmp1_ = lang;
	if (_tmp1_ == NULL) {
		const gchar* _tmp2_ = NULL;
		_tmp2_ = maya_services_event_parser_handler_get_locale (self);
		lang = _tmp2_;
	}
	_tmp3_ = g_date_time_new_now_local ();
	_tmp4_ = _tmp3_;
	_tmp5_ = maya_services_parser_en_new (_tmp4_);
	_tmp6_ = _tmp5_;
	maya_services_event_parser_handler_register_handler (self, MAYA_SERVICES_EVENT_PARSER_HANDLER_FALLBACK_LANG, (MayaServicesEventParser*) _tmp6_);
	_g_object_unref0 (_tmp6_);
	_g_date_time_unref0 (_tmp4_);
	_tmp7_ = g_date_time_new_now_local ();
	_tmp8_ = _tmp7_;
	_tmp9_ = maya_services_parser_de_new (_tmp8_);
	_tmp10_ = _tmp9_;
	_g_date_time_unref0 (_tmp8_);
	parser = _tmp10_;
	_tmp11_ = maya_services_event_parser_get_language ((MayaServicesEventParser*) parser);
	_tmp12_ = _tmp11_;
	maya_services_event_parser_handler_register_handler (self, _tmp12_, (MayaServicesEventParser*) parser);
	_g_free0 (_tmp12_);
	_g_object_unref0 (parser);
	return self;
}


MayaServicesEventParserHandler* maya_services_event_parser_handler_new (const gchar* lang) {
	return maya_services_event_parser_handler_construct (MAYA_SERVICES_TYPE_EVENT_PARSER_HANDLER, lang);
}


void maya_services_event_parser_handler_register_handler (MayaServicesEventParserHandler* self, const gchar* lang, MayaServicesEventParser* parser) {
	GeeHashMap* _tmp0_ = NULL;
	const gchar* _tmp1_ = NULL;
	MayaServicesEventParser* _tmp2_ = NULL;
	g_return_if_fail (self != NULL);
	g_return_if_fail (lang != NULL);
	g_return_if_fail (parser != NULL);
	_tmp0_ = self->priv->handlers;
	_tmp1_ = lang;
	_tmp2_ = parser;
	gee_abstract_map_set ((GeeAbstractMap*) _tmp0_, _tmp1_, _tmp2_);
}


MayaServicesEventParser* maya_services_event_parser_handler_get_parser (MayaServicesEventParserHandler* self, const gchar* lang) {
	MayaServicesEventParser* result = NULL;
	GeeHashMap* _tmp0_ = NULL;
	const gchar* _tmp1_ = NULL;
	gboolean _tmp2_ = FALSE;
	GeeHashMap* _tmp5_ = NULL;
	const gchar* _tmp6_ = NULL;
	gpointer _tmp7_ = NULL;
	g_return_val_if_fail (self != NULL, NULL);
	g_return_val_if_fail (lang != NULL, NULL);
	_tmp0_ = self->priv->handlers;
	_tmp1_ = lang;
	_tmp2_ = gee_abstract_map_has_key ((GeeAbstractMap*) _tmp0_, _tmp1_);
	if (!_tmp2_) {
		GeeHashMap* _tmp3_ = NULL;
		gpointer _tmp4_ = NULL;
		_tmp3_ = self->priv->handlers;
		_tmp4_ = gee_abstract_map_get ((GeeAbstractMap*) _tmp3_, MAYA_SERVICES_EVENT_PARSER_HANDLER_FALLBACK_LANG);
		result = (MayaServicesEventParser*) _tmp4_;
		return result;
	}
	_tmp5_ = self->priv->handlers;
	_tmp6_ = lang;
	_tmp7_ = gee_abstract_map_get ((GeeAbstractMap*) _tmp5_, _tmp6_);
	result = (MayaServicesEventParser*) _tmp7_;
	return result;
}


const gchar* maya_services_event_parser_handler_get_locale (MayaServicesEventParserHandler* self) {
	const gchar* result = NULL;
	const gchar* _tmp0_ = NULL;
	gchar** _tmp1_ = NULL;
	gchar** _tmp2_ = NULL;
	gchar** _tmp3_ = NULL;
	gint _tmp3__length1 = 0;
	const gchar* _tmp4_ = NULL;
	const gchar* _tmp5_ = NULL;
	g_return_val_if_fail (self != NULL, NULL);
	_tmp0_ = g_getenv ("LANGUAGE");
	_tmp2_ = _tmp1_ = g_strsplit (_tmp0_, ":", 0);
	_tmp3_ = _tmp2_;
	_tmp3__length1 = _vala_array_length (_tmp1_);
	_tmp4_ = _tmp3_[0];
	_tmp5_ = _tmp4_;
	_tmp3_ = (_vala_array_free (_tmp3_, _tmp3__length1, (GDestroyNotify) g_free), NULL);
	result = _tmp5_;
	return result;
}


static void maya_services_event_parser_handler_class_init (MayaServicesEventParserHandlerClass * klass) {
	maya_services_event_parser_handler_parent_class = g_type_class_peek_parent (klass);
	g_type_class_add_private (klass, sizeof (MayaServicesEventParserHandlerPrivate));
	G_OBJECT_CLASS (klass)->finalize = maya_services_event_parser_handler_finalize;
}


static void maya_services_event_parser_handler_instance_init (MayaServicesEventParserHandler * self) {
	self->priv = MAYA_SERVICES_EVENT_PARSER_HANDLER_GET_PRIVATE (self);
}


static void maya_services_event_parser_handler_finalize (GObject* obj) {
	MayaServicesEventParserHandler * self;
	self = G_TYPE_CHECK_INSTANCE_CAST (obj, MAYA_SERVICES_TYPE_EVENT_PARSER_HANDLER, MayaServicesEventParserHandler);
	_g_object_unref0 (self->priv->handlers);
	G_OBJECT_CLASS (maya_services_event_parser_handler_parent_class)->finalize (obj);
}


GType maya_services_event_parser_handler_get_type (void) {
	static volatile gsize maya_services_event_parser_handler_type_id__volatile = 0;
	if (g_once_init_enter (&maya_services_event_parser_handler_type_id__volatile)) {
		static const GTypeInfo g_define_type_info = { sizeof (MayaServicesEventParserHandlerClass), (GBaseInitFunc) NULL, (GBaseFinalizeFunc) NULL, (GClassInitFunc) maya_services_event_parser_handler_class_init, (GClassFinalizeFunc) NULL, NULL, sizeof (MayaServicesEventParserHandler), 0, (GInstanceInitFunc) maya_services_event_parser_handler_instance_init, NULL };
		GType maya_services_event_parser_handler_type_id;
		maya_services_event_parser_handler_type_id = g_type_register_static (G_TYPE_OBJECT, "MayaServicesEventParserHandler", &g_define_type_info, 0);
		g_once_init_leave (&maya_services_event_parser_handler_type_id__volatile, maya_services_event_parser_handler_type_id);
	}
	return maya_services_event_parser_handler_type_id__volatile;
}


static void _vala_array_destroy (gpointer array, gint array_length, GDestroyNotify destroy_func) {
	if ((array != NULL) && (destroy_func != NULL)) {
		int i;
		for (i = 0; i < array_length; i = i + 1) {
			if (((gpointer*) array)[i] != NULL) {
				destroy_func (((gpointer*) array)[i]);
			}
		}
	}
}


static void _vala_array_free (gpointer array, gint array_length, GDestroyNotify destroy_func) {
	_vala_array_destroy (array, array_length, destroy_func);
	g_free (array);
}


static gint _vala_array_length (gpointer array) {
	int length;
	length = 0;
	if (array) {
		while (((gpointer*) array)[length]) {
			length++;
		}
	}
	return length;
}



