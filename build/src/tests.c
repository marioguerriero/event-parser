/* tests.c generated by valac 0.28.1, the Vala compiler
 * generated from tests.vala, do not modify */


#include <glib.h>
#include <glib-object.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>


#define TYPE_EVENT (event_get_type ())
#define EVENT(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_EVENT, Event))
#define EVENT_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), TYPE_EVENT, EventClass))
#define IS_EVENT(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_EVENT))
#define IS_EVENT_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), TYPE_EVENT))
#define EVENT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_EVENT, EventClass))

typedef struct _Event Event;
typedef struct _EventClass EventClass;
typedef struct _EventPrivate EventPrivate;
#define _g_free0(var) (var = (g_free (var), NULL))

#define TYPE_TEST_EVENT (test_event_get_type ())
typedef struct _test_event test_event;
#define _g_object_unref0(var) ((var == NULL) ? NULL : (var = (g_object_unref (var), NULL)))

#define TYPE_PARSER_EN (parser_en_get_type ())
#define PARSER_EN(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_PARSER_EN, ParserEn))
#define PARSER_EN_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), TYPE_PARSER_EN, ParserEnClass))
#define IS_PARSER_EN(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_PARSER_EN))
#define IS_PARSER_EN_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), TYPE_PARSER_EN))
#define PARSER_EN_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_PARSER_EN, ParserEnClass))

typedef struct _ParserEn ParserEn;
typedef struct _ParserEnClass ParserEnClass;
#define _g_string_free0(var) ((var == NULL) ? NULL : (var = (g_string_free (var, TRUE), NULL)))
#define _g_date_time_unref0(var) ((var == NULL) ? NULL : (var = (g_date_time_unref (var), NULL)))

struct _Event {
	GObject parent_instance;
	EventPrivate * priv;
	gchar* title;
	gchar* location;
	gchar* participants;
	GDateTime* from;
	GDateTime* to;
	gboolean all_day;
};

struct _EventClass {
	GObjectClass parent_class;
};

struct _test_event {
	gchar* source;
	Event* target;
};



#define show_format "%d-%m-%Y %X"
void println (const gchar* str);
GType event_get_type (void) G_GNUC_CONST;
gboolean compare_events (Event* a, Event* b);
GType test_event_get_type (void) G_GNUC_CONST;
test_event* test_event_dup (const test_event* self);
void test_event_free (test_event* self);
void test_event_copy (const test_event* self, test_event* dest);
void test_event_destroy (test_event* self);
void analyze_test_events (test_event* test_events, int test_events_length1, GDateTime* dt_simulated);
GType parser_en_get_type (void) G_GNUC_CONST;
ParserEn* parser_en_new (GDateTime* _simulated_dt);
ParserEn* parser_en_construct (GType object_type, GDateTime* _simulated_dt);
Event* parser_en_parse_source (ParserEn* self, const gchar* _source);
void print_all_working_test_events (test_event* test_events, int test_events_length1, GDateTime* dt_simulated);
void print_all_not_working_test_events (test_event* test_events, int test_events_length1, GDateTime* dt_simulated);
void _vala_main (gchar** args, int args_length1);


void println (const gchar* str) {
	FILE* _tmp0_ = NULL;
	const gchar* _tmp1_ = NULL;
	g_return_if_fail (str != NULL);
	_tmp0_ = stdout;
	_tmp1_ = str;
	fprintf (_tmp0_, "%s\n", _tmp1_);
}


gboolean compare_events (Event* a, Event* b) {
	gboolean result = FALSE;
	gboolean _tmp0_ = FALSE;
	gboolean _tmp1_ = FALSE;
	gboolean _tmp2_ = FALSE;
	gboolean _tmp3_ = FALSE;
	Event* _tmp4_ = NULL;
	const gchar* _tmp5_ = NULL;
	Event* _tmp6_ = NULL;
	const gchar* _tmp7_ = NULL;
	g_return_val_if_fail (a != NULL, FALSE);
	g_return_val_if_fail (b != NULL, FALSE);
	_tmp4_ = a;
	_tmp5_ = _tmp4_->title;
	_tmp6_ = b;
	_tmp7_ = _tmp6_->title;
	if (g_strcmp0 (_tmp5_, _tmp7_) == 0) {
		Event* _tmp8_ = NULL;
		GDateTime* _tmp9_ = NULL;
		gchar* _tmp10_ = NULL;
		gchar* _tmp11_ = NULL;
		Event* _tmp12_ = NULL;
		GDateTime* _tmp13_ = NULL;
		gchar* _tmp14_ = NULL;
		gchar* _tmp15_ = NULL;
		_tmp8_ = a;
		_tmp9_ = _tmp8_->from;
		_tmp10_ = g_date_time_format (_tmp9_, show_format);
		_tmp11_ = _tmp10_;
		_tmp12_ = b;
		_tmp13_ = _tmp12_->from;
		_tmp14_ = g_date_time_format (_tmp13_, show_format);
		_tmp15_ = _tmp14_;
		_tmp3_ = g_strcmp0 (_tmp11_, _tmp15_) == 0;
		_g_free0 (_tmp15_);
		_g_free0 (_tmp11_);
	} else {
		_tmp3_ = FALSE;
	}
	if (_tmp3_) {
		Event* _tmp16_ = NULL;
		GDateTime* _tmp17_ = NULL;
		gchar* _tmp18_ = NULL;
		gchar* _tmp19_ = NULL;
		Event* _tmp20_ = NULL;
		GDateTime* _tmp21_ = NULL;
		gchar* _tmp22_ = NULL;
		gchar* _tmp23_ = NULL;
		_tmp16_ = a;
		_tmp17_ = _tmp16_->to;
		_tmp18_ = g_date_time_format (_tmp17_, show_format);
		_tmp19_ = _tmp18_;
		_tmp20_ = b;
		_tmp21_ = _tmp20_->to;
		_tmp22_ = g_date_time_format (_tmp21_, show_format);
		_tmp23_ = _tmp22_;
		_tmp2_ = g_strcmp0 (_tmp19_, _tmp23_) == 0;
		_g_free0 (_tmp23_);
		_g_free0 (_tmp19_);
	} else {
		_tmp2_ = FALSE;
	}
	if (_tmp2_) {
		Event* _tmp24_ = NULL;
		const gchar* _tmp25_ = NULL;
		Event* _tmp26_ = NULL;
		const gchar* _tmp27_ = NULL;
		_tmp24_ = a;
		_tmp25_ = _tmp24_->location;
		_tmp26_ = b;
		_tmp27_ = _tmp26_->location;
		_tmp1_ = g_strcmp0 (_tmp25_, _tmp27_) == 0;
	} else {
		_tmp1_ = FALSE;
	}
	if (_tmp1_) {
		Event* _tmp28_ = NULL;
		gboolean _tmp29_ = FALSE;
		Event* _tmp30_ = NULL;
		gboolean _tmp31_ = FALSE;
		_tmp28_ = a;
		_tmp29_ = _tmp28_->all_day;
		_tmp30_ = b;
		_tmp31_ = _tmp30_->all_day;
		_tmp0_ = _tmp29_ == _tmp31_;
	} else {
		_tmp0_ = FALSE;
	}
	if (_tmp0_) {
		result = TRUE;
		return result;
	}
	result = FALSE;
	return result;
}


static gpointer _g_object_ref0 (gpointer self) {
	return self ? g_object_ref (self) : NULL;
}


void test_event_copy (const test_event* self, test_event* dest) {
	const gchar* _tmp0_ = NULL;
	gchar* _tmp1_ = NULL;
	Event* _tmp2_ = NULL;
	Event* _tmp3_ = NULL;
	_tmp0_ = (*self).source;
	_tmp1_ = g_strdup (_tmp0_);
	_g_free0 ((*dest).source);
	(*dest).source = _tmp1_;
	_tmp2_ = (*self).target;
	_tmp3_ = _g_object_ref0 (_tmp2_);
	_g_object_unref0 ((*dest).target);
	(*dest).target = _tmp3_;
}


void test_event_destroy (test_event* self) {
	_g_free0 ((*self).source);
	_g_object_unref0 ((*self).target);
}


test_event* test_event_dup (const test_event* self) {
	test_event* dup;
	dup = g_new0 (test_event, 1);
	test_event_copy (self, dup);
	return dup;
}


void test_event_free (test_event* self) {
	test_event_destroy (self);
	g_free (self);
}


GType test_event_get_type (void) {
	static volatile gsize test_event_type_id__volatile = 0;
	if (g_once_init_enter (&test_event_type_id__volatile)) {
		GType test_event_type_id;
		test_event_type_id = g_boxed_type_register_static ("test_event", (GBoxedCopyFunc) test_event_dup, (GBoxedFreeFunc) test_event_free);
		g_once_init_leave (&test_event_type_id__volatile, test_event_type_id);
	}
	return test_event_type_id__volatile;
}


static const gchar* string_to_string (const gchar* self) {
	const gchar* result = NULL;
	g_return_val_if_fail (self != NULL, NULL);
	result = self;
	return result;
}


static gchar* bool_to_string (gboolean self) {
	gchar* result = NULL;
	if (self) {
		gchar* _tmp0_ = NULL;
		_tmp0_ = g_strdup ("true");
		result = _tmp0_;
		return result;
	} else {
		gchar* _tmp1_ = NULL;
		_tmp1_ = g_strdup ("false");
		result = _tmp1_;
		return result;
	}
}


void analyze_test_events (test_event* test_events, int test_events_length1, GDateTime* dt_simulated) {
	GDateTime* _tmp0_ = NULL;
	gchar* _tmp1_ = NULL;
	gchar* _tmp2_ = NULL;
	const gchar* _tmp3_ = NULL;
	gchar* _tmp4_ = NULL;
	gchar* _tmp5_ = NULL;
	ParserEn* parser = NULL;
	GDateTime* _tmp6_ = NULL;
	ParserEn* _tmp7_ = NULL;
	gint N_error = 0;
	gint N_success = 0;
	test_event* _tmp8_ = NULL;
	gint _tmp8__length1 = 0;
	gint _tmp85_ = 0;
	gchar* _tmp86_ = NULL;
	gchar* _tmp87_ = NULL;
	gint _tmp88_ = 0;
	gchar* _tmp89_ = NULL;
	gchar* _tmp90_ = NULL;
	gchar* _tmp91_ = NULL;
	gchar* _tmp92_ = NULL;
	g_return_if_fail (dt_simulated != NULL);
	_tmp0_ = dt_simulated;
	_tmp1_ = g_date_time_format (_tmp0_, show_format);
	_tmp2_ = _tmp1_;
	_tmp3_ = string_to_string (_tmp2_);
	_tmp4_ = g_strconcat ("\n\n--- Simulated Time: ", _tmp3_, "\n", NULL);
	_tmp5_ = _tmp4_;
	println (_tmp5_);
	_g_free0 (_tmp5_);
	_g_free0 (_tmp2_);
	_tmp6_ = dt_simulated;
	_tmp7_ = parser_en_new (_tmp6_);
	parser = _tmp7_;
	N_error = 0;
	N_success = 0;
	_tmp8_ = test_events;
	_tmp8__length1 = test_events_length1;
	{
		test_event* entry_collection = NULL;
		gint entry_collection_length1 = 0;
		gint _entry_collection_size_ = 0;
		gint entry_it = 0;
		entry_collection = _tmp8_;
		entry_collection_length1 = _tmp8__length1;
		for (entry_it = 0; entry_it < _tmp8__length1; entry_it = entry_it + 1) {
			test_event _tmp9_ = {0};
			test_event entry = {0};
			test_event_copy (&entry_collection[entry_it], &_tmp9_);
			entry = _tmp9_;
			{
				Event* cmp_event = NULL;
				ParserEn* _tmp10_ = NULL;
				test_event _tmp11_ = {0};
				const gchar* _tmp12_ = NULL;
				Event* _tmp13_ = NULL;
				Event* _tmp14_ = NULL;
				test_event _tmp15_ = {0};
				Event* _tmp16_ = NULL;
				gboolean _tmp17_ = FALSE;
				_tmp10_ = parser;
				_tmp11_ = entry;
				_tmp12_ = _tmp11_.source;
				_tmp13_ = parser_en_parse_source (_tmp10_, _tmp12_);
				cmp_event = _tmp13_;
				_tmp14_ = cmp_event;
				_tmp15_ = entry;
				_tmp16_ = _tmp15_.target;
				_tmp17_ = compare_events (_tmp14_, _tmp16_);
				if (_tmp17_) {
					gint _tmp18_ = 0;
					test_event _tmp19_ = {0};
					const gchar* _tmp20_ = NULL;
					const gchar* _tmp21_ = NULL;
					gchar* _tmp22_ = NULL;
					gchar* _tmp23_ = NULL;
					_tmp18_ = N_success;
					N_success = _tmp18_ + 1;
					_tmp19_ = entry;
					_tmp20_ = _tmp19_.source;
					_tmp21_ = string_to_string (_tmp20_);
					_tmp22_ = g_strconcat ("Success - ", _tmp21_, "\n", NULL);
					_tmp23_ = _tmp22_;
					println (_tmp23_);
					_g_free0 (_tmp23_);
				} else {
					gint _tmp24_ = 0;
					test_event _tmp25_ = {0};
					const gchar* _tmp26_ = NULL;
					const gchar* _tmp27_ = NULL;
					gchar* _tmp28_ = NULL;
					gchar* _tmp29_ = NULL;
					Event* _tmp30_ = NULL;
					const gchar* _tmp31_ = NULL;
					const gchar* _tmp32_ = NULL;
					test_event _tmp33_ = {0};
					Event* _tmp34_ = NULL;
					const gchar* _tmp35_ = NULL;
					const gchar* _tmp36_ = NULL;
					gchar* _tmp37_ = NULL;
					gchar* _tmp38_ = NULL;
					Event* _tmp39_ = NULL;
					GDateTime* _tmp40_ = NULL;
					gchar* _tmp41_ = NULL;
					gchar* _tmp42_ = NULL;
					const gchar* _tmp43_ = NULL;
					test_event _tmp44_ = {0};
					Event* _tmp45_ = NULL;
					GDateTime* _tmp46_ = NULL;
					gchar* _tmp47_ = NULL;
					gchar* _tmp48_ = NULL;
					const gchar* _tmp49_ = NULL;
					gchar* _tmp50_ = NULL;
					gchar* _tmp51_ = NULL;
					Event* _tmp52_ = NULL;
					GDateTime* _tmp53_ = NULL;
					gchar* _tmp54_ = NULL;
					gchar* _tmp55_ = NULL;
					const gchar* _tmp56_ = NULL;
					test_event _tmp57_ = {0};
					Event* _tmp58_ = NULL;
					GDateTime* _tmp59_ = NULL;
					gchar* _tmp60_ = NULL;
					gchar* _tmp61_ = NULL;
					const gchar* _tmp62_ = NULL;
					gchar* _tmp63_ = NULL;
					gchar* _tmp64_ = NULL;
					Event* _tmp65_ = NULL;
					const gchar* _tmp66_ = NULL;
					const gchar* _tmp67_ = NULL;
					test_event _tmp68_ = {0};
					Event* _tmp69_ = NULL;
					const gchar* _tmp70_ = NULL;
					const gchar* _tmp71_ = NULL;
					gchar* _tmp72_ = NULL;
					gchar* _tmp73_ = NULL;
					Event* _tmp74_ = NULL;
					gboolean _tmp75_ = FALSE;
					gchar* _tmp76_ = NULL;
					gchar* _tmp77_ = NULL;
					test_event _tmp78_ = {0};
					Event* _tmp79_ = NULL;
					gboolean _tmp80_ = FALSE;
					gchar* _tmp81_ = NULL;
					gchar* _tmp82_ = NULL;
					gchar* _tmp83_ = NULL;
					gchar* _tmp84_ = NULL;
					_tmp24_ = N_error;
					N_error = _tmp24_ + 1;
					_tmp25_ = entry;
					_tmp26_ = _tmp25_.source;
					_tmp27_ = string_to_string (_tmp26_);
					_tmp28_ = g_strconcat ("Error - ", _tmp27_, NULL);
					_tmp29_ = _tmp28_;
					println (_tmp29_);
					_g_free0 (_tmp29_);
					_tmp30_ = cmp_event;
					_tmp31_ = _tmp30_->title;
					_tmp32_ = string_to_string (_tmp31_);
					_tmp33_ = entry;
					_tmp34_ = _tmp33_.target;
					_tmp35_ = _tmp34_->title;
					_tmp36_ = string_to_string (_tmp35_);
					_tmp37_ = g_strconcat (" Title: ", _tmp32_, " | ", _tmp36_, NULL);
					_tmp38_ = _tmp37_;
					println (_tmp38_);
					_g_free0 (_tmp38_);
					_tmp39_ = cmp_event;
					_tmp40_ = _tmp39_->from;
					_tmp41_ = g_date_time_format (_tmp40_, show_format);
					_tmp42_ = _tmp41_;
					_tmp43_ = string_to_string (_tmp42_);
					_tmp44_ = entry;
					_tmp45_ = _tmp44_.target;
					_tmp46_ = _tmp45_->from;
					_tmp47_ = g_date_time_format (_tmp46_, show_format);
					_tmp48_ = _tmp47_;
					_tmp49_ = string_to_string (_tmp48_);
					_tmp50_ = g_strconcat (" Begin: ", _tmp43_, " | ", _tmp49_, NULL);
					_tmp51_ = _tmp50_;
					println (_tmp51_);
					_g_free0 (_tmp51_);
					_g_free0 (_tmp48_);
					_g_free0 (_tmp42_);
					_tmp52_ = cmp_event;
					_tmp53_ = _tmp52_->to;
					_tmp54_ = g_date_time_format (_tmp53_, show_format);
					_tmp55_ = _tmp54_;
					_tmp56_ = string_to_string (_tmp55_);
					_tmp57_ = entry;
					_tmp58_ = _tmp57_.target;
					_tmp59_ = _tmp58_->to;
					_tmp60_ = g_date_time_format (_tmp59_, show_format);
					_tmp61_ = _tmp60_;
					_tmp62_ = string_to_string (_tmp61_);
					_tmp63_ = g_strconcat (" End: ", _tmp56_, " | ", _tmp62_, NULL);
					_tmp64_ = _tmp63_;
					println (_tmp64_);
					_g_free0 (_tmp64_);
					_g_free0 (_tmp61_);
					_g_free0 (_tmp55_);
					_tmp65_ = cmp_event;
					_tmp66_ = _tmp65_->location;
					_tmp67_ = string_to_string (_tmp66_);
					_tmp68_ = entry;
					_tmp69_ = _tmp68_.target;
					_tmp70_ = _tmp69_->location;
					_tmp71_ = string_to_string (_tmp70_);
					_tmp72_ = g_strconcat (" Location: ", _tmp67_, " | ", _tmp71_, NULL);
					_tmp73_ = _tmp72_;
					println (_tmp73_);
					_g_free0 (_tmp73_);
					_tmp74_ = cmp_event;
					_tmp75_ = _tmp74_->all_day;
					_tmp76_ = bool_to_string (_tmp75_);
					_tmp77_ = _tmp76_;
					_tmp78_ = entry;
					_tmp79_ = _tmp78_.target;
					_tmp80_ = _tmp79_->all_day;
					_tmp81_ = bool_to_string (_tmp80_);
					_tmp82_ = _tmp81_;
					_tmp83_ = g_strconcat (" All Day: ", _tmp77_, " | ", _tmp82_, "\n", NULL);
					_tmp84_ = _tmp83_;
					println (_tmp84_);
					_g_free0 (_tmp84_);
					_g_free0 (_tmp82_);
					_g_free0 (_tmp77_);
				}
				_g_object_unref0 (cmp_event);
				test_event_destroy (&entry);
			}
		}
	}
	println ("\n--- Result ---");
	_tmp85_ = N_success;
	_tmp86_ = g_strdup_printf ("%i", _tmp85_);
	_tmp87_ = _tmp86_;
	_tmp88_ = N_error;
	_tmp89_ = g_strdup_printf ("%i", _tmp88_);
	_tmp90_ = _tmp89_;
	_tmp91_ = g_strconcat (" # Success: ", _tmp87_, " | # Error: ", _tmp90_, NULL);
	_tmp92_ = _tmp91_;
	println (_tmp92_);
	_g_free0 (_tmp92_);
	_g_free0 (_tmp90_);
	_g_free0 (_tmp87_);
	_g_object_unref0 (parser);
}


void print_all_working_test_events (test_event* test_events, int test_events_length1, GDateTime* dt_simulated) {
	ParserEn* parser = NULL;
	GDateTime* _tmp0_ = NULL;
	ParserEn* _tmp1_ = NULL;
	test_event* _tmp2_ = NULL;
	gint _tmp2__length1 = 0;
	g_return_if_fail (dt_simulated != NULL);
	_tmp0_ = dt_simulated;
	_tmp1_ = parser_en_new (_tmp0_);
	parser = _tmp1_;
	println ("Working:");
	_tmp2_ = test_events;
	_tmp2__length1 = test_events_length1;
	{
		test_event* entry_collection = NULL;
		gint entry_collection_length1 = 0;
		gint _entry_collection_size_ = 0;
		gint entry_it = 0;
		entry_collection = _tmp2_;
		entry_collection_length1 = _tmp2__length1;
		for (entry_it = 0; entry_it < _tmp2__length1; entry_it = entry_it + 1) {
			test_event _tmp3_ = {0};
			test_event entry = {0};
			test_event_copy (&entry_collection[entry_it], &_tmp3_);
			entry = _tmp3_;
			{
				Event* cmp_event = NULL;
				ParserEn* _tmp4_ = NULL;
				test_event _tmp5_ = {0};
				const gchar* _tmp6_ = NULL;
				Event* _tmp7_ = NULL;
				Event* _tmp8_ = NULL;
				test_event _tmp9_ = {0};
				Event* _tmp10_ = NULL;
				gboolean _tmp11_ = FALSE;
				_tmp4_ = parser;
				_tmp5_ = entry;
				_tmp6_ = _tmp5_.source;
				_tmp7_ = parser_en_parse_source (_tmp4_, _tmp6_);
				cmp_event = _tmp7_;
				_tmp8_ = cmp_event;
				_tmp9_ = entry;
				_tmp10_ = _tmp9_.target;
				_tmp11_ = compare_events (_tmp8_, _tmp10_);
				if (_tmp11_) {
					test_event _tmp12_ = {0};
					const gchar* _tmp13_ = NULL;
					const gchar* _tmp14_ = NULL;
					gchar* _tmp15_ = NULL;
					gchar* _tmp16_ = NULL;
					_tmp12_ = entry;
					_tmp13_ = _tmp12_.source;
					_tmp14_ = string_to_string (_tmp13_);
					_tmp15_ = g_strconcat ("- ", _tmp14_, NULL);
					_tmp16_ = _tmp15_;
					println (_tmp16_);
					_g_free0 (_tmp16_);
				}
				_g_object_unref0 (cmp_event);
				test_event_destroy (&entry);
			}
		}
	}
	_g_object_unref0 (parser);
}


void print_all_not_working_test_events (test_event* test_events, int test_events_length1, GDateTime* dt_simulated) {
	ParserEn* parser = NULL;
	GDateTime* _tmp0_ = NULL;
	ParserEn* _tmp1_ = NULL;
	test_event* _tmp2_ = NULL;
	gint _tmp2__length1 = 0;
	g_return_if_fail (dt_simulated != NULL);
	_tmp0_ = dt_simulated;
	_tmp1_ = parser_en_new (_tmp0_);
	parser = _tmp1_;
	println ("Not Working:");
	_tmp2_ = test_events;
	_tmp2__length1 = test_events_length1;
	{
		test_event* entry_collection = NULL;
		gint entry_collection_length1 = 0;
		gint _entry_collection_size_ = 0;
		gint entry_it = 0;
		entry_collection = _tmp2_;
		entry_collection_length1 = _tmp2__length1;
		for (entry_it = 0; entry_it < _tmp2__length1; entry_it = entry_it + 1) {
			test_event _tmp3_ = {0};
			test_event entry = {0};
			test_event_copy (&entry_collection[entry_it], &_tmp3_);
			entry = _tmp3_;
			{
				Event* cmp_event = NULL;
				ParserEn* _tmp4_ = NULL;
				test_event _tmp5_ = {0};
				const gchar* _tmp6_ = NULL;
				Event* _tmp7_ = NULL;
				Event* _tmp8_ = NULL;
				test_event _tmp9_ = {0};
				Event* _tmp10_ = NULL;
				gboolean _tmp11_ = FALSE;
				_tmp4_ = parser;
				_tmp5_ = entry;
				_tmp6_ = _tmp5_.source;
				_tmp7_ = parser_en_parse_source (_tmp4_, _tmp6_);
				cmp_event = _tmp7_;
				_tmp8_ = cmp_event;
				_tmp9_ = entry;
				_tmp10_ = _tmp9_.target;
				_tmp11_ = compare_events (_tmp8_, _tmp10_);
				if (!_tmp11_) {
					test_event _tmp12_ = {0};
					const gchar* _tmp13_ = NULL;
					const gchar* _tmp14_ = NULL;
					gchar* _tmp15_ = NULL;
					gchar* _tmp16_ = NULL;
					_tmp12_ = entry;
					_tmp13_ = _tmp12_.source;
					_tmp14_ = string_to_string (_tmp13_);
					_tmp15_ = g_strconcat ("- ", _tmp14_, NULL);
					_tmp16_ = _tmp15_;
					println (_tmp16_);
					_g_free0 (_tmp16_);
				}
				_g_object_unref0 (cmp_event);
				test_event_destroy (&entry);
			}
		}
	}
	_g_object_unref0 (parser);
}


static gchar* g_file_stream_read_line (FILE* self) {
	gchar* result = NULL;
	gint c = 0;
	GString* ret = NULL;
	GString* _tmp7_ = NULL;
	g_return_val_if_fail (self != NULL, NULL);
	ret = NULL;
	while (TRUE) {
		gint _tmp0_ = 0;
		gint _tmp1_ = 0;
		GString* _tmp2_ = NULL;
		gint _tmp4_ = 0;
		GString* _tmp5_ = NULL;
		gint _tmp6_ = 0;
		_tmp0_ = fgetc (self);
		c = _tmp0_;
		_tmp1_ = c;
		if (!(_tmp1_ != EOF)) {
			break;
		}
		_tmp2_ = ret;
		if (_tmp2_ == NULL) {
			GString* _tmp3_ = NULL;
			_tmp3_ = g_string_new ("");
			_g_string_free0 (ret);
			ret = _tmp3_;
		}
		_tmp4_ = c;
		if (_tmp4_ == ((gint) '\n')) {
			break;
		}
		_tmp5_ = ret;
		_tmp6_ = c;
		g_string_append_c ((GString*) _tmp5_, (gchar) _tmp6_);
	}
	_tmp7_ = ret;
	if (_tmp7_ == NULL) {
		result = NULL;
		_g_string_free0 (ret);
		return result;
	} else {
		GString* _tmp8_ = NULL;
		const gchar* _tmp9_ = NULL;
		gchar* _tmp10_ = NULL;
		_tmp8_ = ret;
		_tmp9_ = ((GString*) _tmp8_)->str;
		_tmp10_ = g_strdup (_tmp9_);
		result = _tmp10_;
		_g_string_free0 (ret);
		return result;
	}
	_g_string_free0 (ret);
}


static gchar* g_date_time_to_string (GDateTime* self) {
	gchar* result = NULL;
	gchar* _tmp0_ = NULL;
	g_return_val_if_fail (self != NULL, NULL);
	_tmp0_ = g_date_time_format (self, "%FT%H:%M:%S%z");
	result = _tmp0_;
	return result;
}


void _vala_main (gchar** args, int args_length1) {
	gchar* ev_str = NULL;
	FILE* _tmp0_ = NULL;
	gchar* _tmp1_ = NULL;
	const gchar* _tmp2_ = NULL;
	println ("Please enter an event:");
	_tmp0_ = stdin;
	_tmp1_ = g_file_stream_read_line (_tmp0_);
	ev_str = _tmp1_;
	_tmp2_ = ev_str;
	if (_tmp2_ != NULL) {
		ParserEn* parser = NULL;
		GDateTime* _tmp3_ = NULL;
		GDateTime* _tmp4_ = NULL;
		ParserEn* _tmp5_ = NULL;
		ParserEn* _tmp6_ = NULL;
		Event* ev = NULL;
		ParserEn* _tmp7_ = NULL;
		const gchar* _tmp8_ = NULL;
		Event* _tmp9_ = NULL;
		Event* _tmp10_ = NULL;
		const gchar* _tmp11_ = NULL;
		gchar* _tmp12_ = NULL;
		gchar* _tmp13_ = NULL;
		Event* _tmp14_ = NULL;
		const gchar* _tmp15_ = NULL;
		gchar* _tmp16_ = NULL;
		gchar* _tmp17_ = NULL;
		Event* _tmp18_ = NULL;
		const gchar* _tmp19_ = NULL;
		gchar* _tmp20_ = NULL;
		gchar* _tmp21_ = NULL;
		Event* _tmp22_ = NULL;
		GDateTime* _tmp23_ = NULL;
		gchar* _tmp24_ = NULL;
		gchar* _tmp25_ = NULL;
		gchar* _tmp26_ = NULL;
		gchar* _tmp27_ = NULL;
		Event* _tmp28_ = NULL;
		GDateTime* _tmp29_ = NULL;
		gchar* _tmp30_ = NULL;
		gchar* _tmp31_ = NULL;
		gchar* _tmp32_ = NULL;
		gchar* _tmp33_ = NULL;
		_tmp3_ = g_date_time_new_now_local ();
		_tmp4_ = _tmp3_;
		_tmp5_ = parser_en_new (_tmp4_);
		_tmp6_ = _tmp5_;
		_g_date_time_unref0 (_tmp4_);
		parser = _tmp6_;
		_tmp7_ = parser;
		_tmp8_ = ev_str;
		_tmp9_ = parser_en_parse_source (_tmp7_, _tmp8_);
		ev = _tmp9_;
		_tmp10_ = ev;
		_tmp11_ = _tmp10_->title;
		_tmp12_ = g_strconcat ("Title: ", _tmp11_, NULL);
		_tmp13_ = _tmp12_;
		println (_tmp13_);
		_g_free0 (_tmp13_);
		_tmp14_ = ev;
		_tmp15_ = _tmp14_->location;
		_tmp16_ = g_strconcat ("Location: ", _tmp15_, NULL);
		_tmp17_ = _tmp16_;
		println (_tmp17_);
		_g_free0 (_tmp17_);
		_tmp18_ = ev;
		_tmp19_ = _tmp18_->participants;
		_tmp20_ = g_strconcat ("Participant: ", _tmp19_, NULL);
		_tmp21_ = _tmp20_;
		println (_tmp21_);
		_g_free0 (_tmp21_);
		_tmp22_ = ev;
		_tmp23_ = _tmp22_->from;
		_tmp24_ = g_date_time_to_string (_tmp23_);
		_tmp25_ = _tmp24_;
		_tmp26_ = g_strconcat ("From: ", _tmp25_, NULL);
		_tmp27_ = _tmp26_;
		println (_tmp27_);
		_g_free0 (_tmp27_);
		_g_free0 (_tmp25_);
		_tmp28_ = ev;
		_tmp29_ = _tmp28_->to;
		_tmp30_ = g_date_time_to_string (_tmp29_);
		_tmp31_ = _tmp30_;
		_tmp32_ = g_strconcat ("To: ", _tmp31_, NULL);
		_tmp33_ = _tmp32_;
		println (_tmp33_);
		_g_free0 (_tmp33_);
		_g_free0 (_tmp31_);
		_g_object_unref0 (ev);
		_g_object_unref0 (parser);
	}
	_g_free0 (ev_str);
}


int main (int argc, char ** argv) {
#if !GLIB_CHECK_VERSION (2,35,0)
	g_type_init ();
#endif
	_vala_main (argv, argc);
	return 0;
}



