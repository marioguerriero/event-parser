/* ParsedEvent.c generated by valac 0.28.1, the Vala compiler
 * generated from ParsedEvent.vala, do not modify */

/* -*- Mode: vala; indent-tabs-mode: nil; tab-width: 4 -*-*/

#include <glib.h>
#include <glib-object.h>
#include <stdlib.h>
#include <string.h>
#include <float.h>
#include <math.h>


#define TYPE_PARSED_EVENT (parsed_event_get_type ())
#define PARSED_EVENT(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_PARSED_EVENT, ParsedEvent))
#define PARSED_EVENT_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), TYPE_PARSED_EVENT, ParsedEventClass))
#define IS_PARSED_EVENT(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_PARSED_EVENT))
#define IS_PARSED_EVENT_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), TYPE_PARSED_EVENT))
#define PARSED_EVENT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_PARSED_EVENT, ParsedEventClass))

typedef struct _ParsedEvent ParsedEvent;
typedef struct _ParsedEventClass ParsedEventClass;
typedef struct _ParsedEventPrivate ParsedEventPrivate;
#define _g_free0(var) (var = (g_free (var), NULL))
#define _g_date_time_unref0(var) ((var == NULL) ? NULL : (var = (g_date_time_unref (var), NULL)))

struct _ParsedEvent {
	GObject parent_instance;
	ParsedEventPrivate * priv;
	gchar* title;
	gchar* location;
	gchar* participants;
	GDateTime* from;
	GDateTime* to;
	gboolean all_day;
};

struct _ParsedEventClass {
	GObjectClass parent_class;
};


static gpointer parsed_event_parent_class = NULL;

GType parsed_event_get_type (void) G_GNUC_CONST;
enum  {
	PARSED_EVENT_DUMMY_PROPERTY
};
ParsedEvent* parsed_event_new (const gchar* _title, GDateTime* _from, GDateTime* _to, const gchar* _location, gboolean _all_day, const gchar* _participants);
ParsedEvent* parsed_event_construct (GType object_type, const gchar* _title, GDateTime* _from, GDateTime* _to, const gchar* _location, gboolean _all_day, const gchar* _participants);
void parsed_event_set_length_to_minutes (ParsedEvent* self, gint minutes);
void parsed_event_set_length_to_hours (ParsedEvent* self, gint hours);
void parsed_event_set_length_to_days (ParsedEvent* self, gint days);
void parsed_event_set_length_to_weeks (ParsedEvent* self, gint weeks);
void parsed_event_from_set_second (ParsedEvent* self, gint second);
void parsed_event_to_set_second (ParsedEvent* self, gint second);
void parsed_event_from_set_minute (ParsedEvent* self, gint minute);
void parsed_event_to_set_minute (ParsedEvent* self, gint minute);
static gint parsed_event_hour_from_half (ParsedEvent* self, gint hour, const gchar* half);
void parsed_event_from_set_hour (ParsedEvent* self, gint hour, const gchar* half);
void parsed_event_to_set_hour (ParsedEvent* self, gint hour, const gchar* half);
void parsed_event_from_set_day (ParsedEvent* self, gint day);
void parsed_event_to_set_day (ParsedEvent* self, gint day);
void parsed_event_from_set_month (ParsedEvent* self, gint month);
void parsed_event_to_set_month (ParsedEvent* self, gint month);
void parsed_event_from_set_year (ParsedEvent* self, gint year);
void parsed_event_to_set_year (ParsedEvent* self, gint year);
void parsed_event_set_all_day (ParsedEvent* self);
void parsed_event_unset_all_day (ParsedEvent* self);
void parsed_event_set_one_entire_day (ParsedEvent* self);
void parsed_event_if_elapsed_delay_to_next_day (ParsedEvent* self, GDateTime* simulated_dt);
void parsed_event_if_elapsed_delay_to_next_week (ParsedEvent* self, GDateTime* simulated_dt);
void parsed_event_if_elapsed_delay_to_next_month (ParsedEvent* self, GDateTime* simulated_dt);
void parsed_event_if_elapsed_delay_to_next_year (ParsedEvent* self, GDateTime* simulated_dt);
static void parsed_event_finalize (GObject* obj);


static gpointer _g_date_time_ref0 (gpointer self) {
	return self ? g_date_time_ref (self) : NULL;
}


ParsedEvent* parsed_event_construct (GType object_type, const gchar* _title, GDateTime* _from, GDateTime* _to, const gchar* _location, gboolean _all_day, const gchar* _participants) {
	ParsedEvent * self = NULL;
	const gchar* _tmp0_ = NULL;
	gchar* _tmp1_ = NULL;
	const gchar* _tmp2_ = NULL;
	gchar* _tmp3_ = NULL;
	const gchar* _tmp4_ = NULL;
	gchar* _tmp5_ = NULL;
	GDateTime* _tmp6_ = NULL;
	GDateTime* _tmp7_ = NULL;
	GDateTime* _tmp8_ = NULL;
	GDateTime* _tmp9_ = NULL;
	gboolean _tmp10_ = FALSE;
	g_return_val_if_fail (_title != NULL, NULL);
	g_return_val_if_fail (_location != NULL, NULL);
	g_return_val_if_fail (_participants != NULL, NULL);
	self = (ParsedEvent*) g_object_new (object_type, NULL);
	_tmp0_ = _title;
	_tmp1_ = g_strdup (_tmp0_);
	_g_free0 (self->title);
	self->title = _tmp1_;
	_tmp2_ = _location;
	_tmp3_ = g_strdup (_tmp2_);
	_g_free0 (self->location);
	self->location = _tmp3_;
	_tmp4_ = _participants;
	_tmp5_ = g_strdup (_tmp4_);
	_g_free0 (self->participants);
	self->participants = _tmp5_;
	_tmp6_ = _from;
	_tmp7_ = _g_date_time_ref0 (_tmp6_);
	_g_date_time_unref0 (self->from);
	self->from = _tmp7_;
	_tmp8_ = _to;
	_tmp9_ = _g_date_time_ref0 (_tmp8_);
	_g_date_time_unref0 (self->to);
	self->to = _tmp9_;
	_tmp10_ = _all_day;
	self->all_day = _tmp10_;
	return self;
}


ParsedEvent* parsed_event_new (const gchar* _title, GDateTime* _from, GDateTime* _to, const gchar* _location, gboolean _all_day, const gchar* _participants) {
	return parsed_event_construct (TYPE_PARSED_EVENT, _title, _from, _to, _location, _all_day, _participants);
}


void parsed_event_set_length_to_minutes (ParsedEvent* self, gint minutes) {
	GDateTime* _tmp0_ = NULL;
	gint _tmp1_ = 0;
	GDateTime* _tmp2_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->from;
	_tmp1_ = minutes;
	_tmp2_ = g_date_time_add_minutes (_tmp0_, _tmp1_);
	_g_date_time_unref0 (self->to);
	self->to = _tmp2_;
}


void parsed_event_set_length_to_hours (ParsedEvent* self, gint hours) {
	GDateTime* _tmp0_ = NULL;
	gint _tmp1_ = 0;
	GDateTime* _tmp2_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->from;
	_tmp1_ = hours;
	_tmp2_ = g_date_time_add_hours (_tmp0_, _tmp1_);
	_g_date_time_unref0 (self->to);
	self->to = _tmp2_;
}


void parsed_event_set_length_to_days (ParsedEvent* self, gint days) {
	GDateTime* _tmp0_ = NULL;
	gint _tmp1_ = 0;
	GDateTime* _tmp2_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->from;
	_tmp1_ = days;
	_tmp2_ = g_date_time_add_days (_tmp0_, _tmp1_);
	_g_date_time_unref0 (self->to);
	self->to = _tmp2_;
}


void parsed_event_set_length_to_weeks (ParsedEvent* self, gint weeks) {
	GDateTime* _tmp0_ = NULL;
	gint _tmp1_ = 0;
	GDateTime* _tmp2_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->from;
	_tmp1_ = weeks;
	_tmp2_ = g_date_time_add_days (_tmp0_, 7 * _tmp1_);
	_g_date_time_unref0 (self->to);
	self->to = _tmp2_;
}


void parsed_event_from_set_second (ParsedEvent* self, gint second) {
	GDateTime* _tmp0_ = NULL;
	gint _tmp1_ = 0;
	GDateTime* _tmp2_ = NULL;
	gint _tmp3_ = 0;
	GDateTime* _tmp4_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->from;
	_tmp1_ = second;
	_tmp2_ = self->from;
	_tmp3_ = g_date_time_get_second (_tmp2_);
	_tmp4_ = g_date_time_add_seconds (_tmp0_, (gdouble) (_tmp1_ - _tmp3_));
	_g_date_time_unref0 (self->from);
	self->from = _tmp4_;
}


void parsed_event_to_set_second (ParsedEvent* self, gint second) {
	GDateTime* _tmp0_ = NULL;
	gint _tmp1_ = 0;
	GDateTime* _tmp2_ = NULL;
	gint _tmp3_ = 0;
	GDateTime* _tmp4_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->to;
	_tmp1_ = second;
	_tmp2_ = self->to;
	_tmp3_ = g_date_time_get_second (_tmp2_);
	_tmp4_ = g_date_time_add_seconds (_tmp0_, (gdouble) (_tmp1_ - _tmp3_));
	_g_date_time_unref0 (self->to);
	self->to = _tmp4_;
}


void parsed_event_from_set_minute (ParsedEvent* self, gint minute) {
	GDateTime* _tmp0_ = NULL;
	gint _tmp1_ = 0;
	GDateTime* _tmp2_ = NULL;
	gint _tmp3_ = 0;
	GDateTime* _tmp4_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->from;
	_tmp1_ = minute;
	_tmp2_ = self->from;
	_tmp3_ = g_date_time_get_minute (_tmp2_);
	_tmp4_ = g_date_time_add_minutes (_tmp0_, _tmp1_ - _tmp3_);
	_g_date_time_unref0 (self->from);
	self->from = _tmp4_;
}


void parsed_event_to_set_minute (ParsedEvent* self, gint minute) {
	GDateTime* _tmp0_ = NULL;
	gint _tmp1_ = 0;
	GDateTime* _tmp2_ = NULL;
	gint _tmp3_ = 0;
	GDateTime* _tmp4_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->to;
	_tmp1_ = minute;
	_tmp2_ = self->to;
	_tmp3_ = g_date_time_get_minute (_tmp2_);
	_tmp4_ = g_date_time_add_minutes (_tmp0_, _tmp1_ - _tmp3_);
	_g_date_time_unref0 (self->to);
	self->to = _tmp4_;
}


static gint parsed_event_hour_from_half (ParsedEvent* self, gint hour, const gchar* half) {
	gint result = 0;
	gint _tmp0_ = 0;
	const gchar* _tmp2_ = NULL;
	const gchar* _tmp4_ = NULL;
	const gchar* _tmp6_ = NULL;
	gint _tmp9_ = 0;
	g_return_val_if_fail (self != NULL, 0);
	g_return_val_if_fail (half != NULL, 0);
	_tmp0_ = hour;
	if (_tmp0_ > 12) {
		gint _tmp1_ = 0;
		_tmp1_ = hour;
		result = _tmp1_;
		return result;
	}
	_tmp2_ = half;
	if (g_strcmp0 (_tmp2_, "pm") == 0) {
		gint _tmp3_ = 0;
		_tmp3_ = hour;
		result = _tmp3_ + 12;
		return result;
	}
	_tmp4_ = half;
	if (g_strcmp0 (_tmp4_, "p") == 0) {
		gint _tmp5_ = 0;
		_tmp5_ = hour;
		result = _tmp5_ + 12;
		return result;
	}
	_tmp6_ = half;
	if (g_strcmp0 (_tmp6_, "") == 0) {
		gint _tmp7_ = 0;
		_tmp7_ = hour;
		if (_tmp7_ < 8) {
			gint _tmp8_ = 0;
			_tmp8_ = hour;
			hour = _tmp8_ + 12;
		}
	}
	_tmp9_ = hour;
	result = _tmp9_;
	return result;
}


void parsed_event_from_set_hour (ParsedEvent* self, gint hour, const gchar* half) {
	gint _tmp0_ = 0;
	const gchar* _tmp1_ = NULL;
	gint _tmp2_ = 0;
	GDateTime* _tmp3_ = NULL;
	gint _tmp4_ = 0;
	GDateTime* _tmp5_ = NULL;
	gint _tmp6_ = 0;
	GDateTime* _tmp7_ = NULL;
	g_return_if_fail (self != NULL);
	g_return_if_fail (half != NULL);
	_tmp0_ = hour;
	_tmp1_ = half;
	_tmp2_ = parsed_event_hour_from_half (self, _tmp0_, _tmp1_);
	hour = _tmp2_;
	_tmp3_ = self->from;
	_tmp4_ = hour;
	_tmp5_ = self->from;
	_tmp6_ = g_date_time_get_hour (_tmp5_);
	_tmp7_ = g_date_time_add_hours (_tmp3_, _tmp4_ - _tmp6_);
	_g_date_time_unref0 (self->from);
	self->from = _tmp7_;
}


void parsed_event_to_set_hour (ParsedEvent* self, gint hour, const gchar* half) {
	gint _tmp0_ = 0;
	const gchar* _tmp1_ = NULL;
	gint _tmp2_ = 0;
	GDateTime* _tmp3_ = NULL;
	gint _tmp4_ = 0;
	GDateTime* _tmp5_ = NULL;
	gint _tmp6_ = 0;
	GDateTime* _tmp7_ = NULL;
	g_return_if_fail (self != NULL);
	g_return_if_fail (half != NULL);
	_tmp0_ = hour;
	_tmp1_ = half;
	_tmp2_ = parsed_event_hour_from_half (self, _tmp0_, _tmp1_);
	hour = _tmp2_;
	_tmp3_ = self->to;
	_tmp4_ = hour;
	_tmp5_ = self->to;
	_tmp6_ = g_date_time_get_hour (_tmp5_);
	_tmp7_ = g_date_time_add_hours (_tmp3_, _tmp4_ - _tmp6_);
	_g_date_time_unref0 (self->to);
	self->to = _tmp7_;
}


void parsed_event_from_set_day (ParsedEvent* self, gint day) {
	gint _tmp0_ = 0;
	g_return_if_fail (self != NULL);
	_tmp0_ = day;
	if (_tmp0_ > 0) {
		GDateTime* _tmp1_ = NULL;
		gint _tmp2_ = 0;
		GDateTime* _tmp3_ = NULL;
		gint _tmp4_ = 0;
		GDateTime* _tmp5_ = NULL;
		_tmp1_ = self->from;
		_tmp2_ = day;
		_tmp3_ = self->from;
		_tmp4_ = g_date_time_get_day_of_month (_tmp3_);
		_tmp5_ = g_date_time_add_days (_tmp1_, _tmp2_ - _tmp4_);
		_g_date_time_unref0 (self->from);
		self->from = _tmp5_;
	}
}


void parsed_event_to_set_day (ParsedEvent* self, gint day) {
	gint _tmp0_ = 0;
	g_return_if_fail (self != NULL);
	_tmp0_ = day;
	if (_tmp0_ > 0) {
		GDateTime* _tmp1_ = NULL;
		gint _tmp2_ = 0;
		GDateTime* _tmp3_ = NULL;
		gint _tmp4_ = 0;
		GDateTime* _tmp5_ = NULL;
		_tmp1_ = self->to;
		_tmp2_ = day;
		_tmp3_ = self->to;
		_tmp4_ = g_date_time_get_day_of_month (_tmp3_);
		_tmp5_ = g_date_time_add_days (_tmp1_, _tmp2_ - _tmp4_);
		_g_date_time_unref0 (self->to);
		self->to = _tmp5_;
	}
}


void parsed_event_from_set_month (ParsedEvent* self, gint month) {
	gint _tmp0_ = 0;
	g_return_if_fail (self != NULL);
	_tmp0_ = month;
	if (_tmp0_ > 0) {
		GDateTime* _tmp1_ = NULL;
		gint _tmp2_ = 0;
		GDateTime* _tmp3_ = NULL;
		gint _tmp4_ = 0;
		GDateTime* _tmp5_ = NULL;
		_tmp1_ = self->from;
		_tmp2_ = month;
		_tmp3_ = self->from;
		_tmp4_ = g_date_time_get_month (_tmp3_);
		_tmp5_ = g_date_time_add_months (_tmp1_, _tmp2_ - _tmp4_);
		_g_date_time_unref0 (self->from);
		self->from = _tmp5_;
	}
}


void parsed_event_to_set_month (ParsedEvent* self, gint month) {
	gint _tmp0_ = 0;
	g_return_if_fail (self != NULL);
	_tmp0_ = month;
	if (_tmp0_ > 0) {
		GDateTime* _tmp1_ = NULL;
		gint _tmp2_ = 0;
		GDateTime* _tmp3_ = NULL;
		gint _tmp4_ = 0;
		GDateTime* _tmp5_ = NULL;
		_tmp1_ = self->to;
		_tmp2_ = month;
		_tmp3_ = self->to;
		_tmp4_ = g_date_time_get_month (_tmp3_);
		_tmp5_ = g_date_time_add_months (_tmp1_, _tmp2_ - _tmp4_);
		_g_date_time_unref0 (self->to);
		self->to = _tmp5_;
	}
}


void parsed_event_from_set_year (ParsedEvent* self, gint year) {
	gint _tmp0_ = 0;
	g_return_if_fail (self != NULL);
	_tmp0_ = year;
	if (_tmp0_ > 0) {
		GDateTime* _tmp1_ = NULL;
		gint _tmp2_ = 0;
		GDateTime* _tmp3_ = NULL;
		gint _tmp4_ = 0;
		GDateTime* _tmp5_ = NULL;
		_tmp1_ = self->from;
		_tmp2_ = year;
		_tmp3_ = self->from;
		_tmp4_ = g_date_time_get_year (_tmp3_);
		_tmp5_ = g_date_time_add_years (_tmp1_, _tmp2_ - _tmp4_);
		_g_date_time_unref0 (self->from);
		self->from = _tmp5_;
	}
}


void parsed_event_to_set_year (ParsedEvent* self, gint year) {
	gint _tmp0_ = 0;
	g_return_if_fail (self != NULL);
	_tmp0_ = year;
	if (_tmp0_ > 0) {
		GDateTime* _tmp1_ = NULL;
		gint _tmp2_ = 0;
		GDateTime* _tmp3_ = NULL;
		gint _tmp4_ = 0;
		GDateTime* _tmp5_ = NULL;
		_tmp1_ = self->to;
		_tmp2_ = year;
		_tmp3_ = self->to;
		_tmp4_ = g_date_time_get_year (_tmp3_);
		_tmp5_ = g_date_time_add_years (_tmp1_, _tmp2_ - _tmp4_);
		_g_date_time_unref0 (self->to);
		self->to = _tmp5_;
	}
}


void parsed_event_set_all_day (ParsedEvent* self) {
	GDateTime* _tmp0_ = NULL;
	GDateTime* _tmp1_ = NULL;
	gint _tmp2_ = 0;
	GDateTime* _tmp3_ = NULL;
	GDateTime* _tmp4_ = NULL;
	GDateTime* _tmp5_ = NULL;
	gint _tmp6_ = 0;
	GDateTime* _tmp7_ = NULL;
	GDateTime* _tmp8_ = NULL;
	GDateTime* _tmp9_ = NULL;
	gint _tmp10_ = 0;
	GDateTime* _tmp11_ = NULL;
	GDateTime* _tmp12_ = NULL;
	GDateTime* _tmp13_ = NULL;
	gint _tmp14_ = 0;
	GDateTime* _tmp15_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->from;
	_tmp1_ = self->from;
	_tmp2_ = g_date_time_get_hour (_tmp1_);
	_tmp3_ = g_date_time_add_hours (_tmp0_, -_tmp2_);
	_tmp4_ = _tmp3_;
	_tmp5_ = self->from;
	_tmp6_ = g_date_time_get_minute (_tmp5_);
	_tmp7_ = g_date_time_add_minutes (_tmp4_, -_tmp6_);
	_g_date_time_unref0 (self->from);
	self->from = _tmp7_;
	_g_date_time_unref0 (_tmp4_);
	_tmp8_ = self->to;
	_tmp9_ = self->to;
	_tmp10_ = g_date_time_get_hour (_tmp9_);
	_tmp11_ = g_date_time_add_hours (_tmp8_, -_tmp10_);
	_tmp12_ = _tmp11_;
	_tmp13_ = self->to;
	_tmp14_ = g_date_time_get_minute (_tmp13_);
	_tmp15_ = g_date_time_add_minutes (_tmp12_, -_tmp14_);
	_g_date_time_unref0 (self->to);
	self->to = _tmp15_;
	_g_date_time_unref0 (_tmp12_);
	self->all_day = TRUE;
}


void parsed_event_unset_all_day (ParsedEvent* self) {
	g_return_if_fail (self != NULL);
	parsed_event_set_length_to_hours (self, 1);
	self->all_day = FALSE;
}


void parsed_event_set_one_entire_day (ParsedEvent* self) {
	GDateTime* _tmp0_ = NULL;
	GDateTime* _tmp1_ = NULL;
	gint _tmp2_ = 0;
	GDateTime* _tmp3_ = NULL;
	GDateTime* _tmp4_ = NULL;
	GDateTime* _tmp5_ = NULL;
	gint _tmp6_ = 0;
	GDateTime* _tmp7_ = NULL;
	GDateTime* _tmp8_ = NULL;
	GDateTime* _tmp9_ = NULL;
	g_return_if_fail (self != NULL);
	_tmp0_ = self->from;
	_tmp1_ = self->from;
	_tmp2_ = g_date_time_get_hour (_tmp1_);
	_tmp3_ = g_date_time_add_hours (_tmp0_, -_tmp2_);
	_tmp4_ = _tmp3_;
	_tmp5_ = self->from;
	_tmp6_ = g_date_time_get_minute (_tmp5_);
	_tmp7_ = g_date_time_add_minutes (_tmp4_, -_tmp6_);
	_g_date_time_unref0 (self->from);
	self->from = _tmp7_;
	_g_date_time_unref0 (_tmp4_);
	_tmp8_ = self->from;
	_tmp9_ = _g_date_time_ref0 (_tmp8_);
	_g_date_time_unref0 (self->to);
	self->to = _tmp9_;
	self->all_day = TRUE;
}


void parsed_event_if_elapsed_delay_to_next_day (ParsedEvent* self, GDateTime* simulated_dt) {
	GDateTime* _tmp0_ = NULL;
	GDateTime* _tmp1_ = NULL;
	gint _tmp2_ = 0;
	g_return_if_fail (self != NULL);
	g_return_if_fail (simulated_dt != NULL);
	_tmp0_ = self->from;
	_tmp1_ = simulated_dt;
	_tmp2_ = g_date_time_compare (_tmp0_, _tmp1_);
	if (_tmp2_ < 0) {
		GDateTime* _tmp3_ = NULL;
		GDateTime* _tmp4_ = NULL;
		GDateTime* _tmp5_ = NULL;
		GDateTime* _tmp6_ = NULL;
		_tmp3_ = self->from;
		_tmp4_ = g_date_time_add_days (_tmp3_, 1);
		_g_date_time_unref0 (self->from);
		self->from = _tmp4_;
		_tmp5_ = self->to;
		_tmp6_ = g_date_time_add_days (_tmp5_, 1);
		_g_date_time_unref0 (self->to);
		self->to = _tmp6_;
	}
}


void parsed_event_if_elapsed_delay_to_next_week (ParsedEvent* self, GDateTime* simulated_dt) {
	GDateTime* _tmp0_ = NULL;
	GDateTime* _tmp1_ = NULL;
	gint _tmp2_ = 0;
	g_return_if_fail (self != NULL);
	g_return_if_fail (simulated_dt != NULL);
	_tmp0_ = self->from;
	_tmp1_ = simulated_dt;
	_tmp2_ = g_date_time_compare (_tmp0_, _tmp1_);
	if (_tmp2_ < 0) {
		GDateTime* _tmp3_ = NULL;
		GDateTime* _tmp4_ = NULL;
		GDateTime* _tmp5_ = NULL;
		GDateTime* _tmp6_ = NULL;
		_tmp3_ = self->from;
		_tmp4_ = g_date_time_add_days (_tmp3_, 7);
		_g_date_time_unref0 (self->from);
		self->from = _tmp4_;
		_tmp5_ = self->to;
		_tmp6_ = g_date_time_add_days (_tmp5_, 7);
		_g_date_time_unref0 (self->to);
		self->to = _tmp6_;
	}
}


void parsed_event_if_elapsed_delay_to_next_month (ParsedEvent* self, GDateTime* simulated_dt) {
	GDateTime* _tmp0_ = NULL;
	GDateTime* _tmp1_ = NULL;
	gint _tmp2_ = 0;
	g_return_if_fail (self != NULL);
	g_return_if_fail (simulated_dt != NULL);
	_tmp0_ = self->from;
	_tmp1_ = simulated_dt;
	_tmp2_ = g_date_time_compare (_tmp0_, _tmp1_);
	if (_tmp2_ < 0) {
		GDateTime* _tmp3_ = NULL;
		GDateTime* _tmp4_ = NULL;
		GDateTime* _tmp5_ = NULL;
		GDateTime* _tmp6_ = NULL;
		_tmp3_ = self->from;
		_tmp4_ = g_date_time_add_months (_tmp3_, 1);
		_g_date_time_unref0 (self->from);
		self->from = _tmp4_;
		_tmp5_ = self->to;
		_tmp6_ = g_date_time_add_months (_tmp5_, 1);
		_g_date_time_unref0 (self->to);
		self->to = _tmp6_;
	}
}


void parsed_event_if_elapsed_delay_to_next_year (ParsedEvent* self, GDateTime* simulated_dt) {
	GDateTime* _tmp0_ = NULL;
	GDateTime* _tmp1_ = NULL;
	gint _tmp2_ = 0;
	g_return_if_fail (self != NULL);
	g_return_if_fail (simulated_dt != NULL);
	_tmp0_ = self->from;
	_tmp1_ = simulated_dt;
	_tmp2_ = g_date_time_compare (_tmp0_, _tmp1_);
	if (_tmp2_ < 0) {
		GDateTime* _tmp3_ = NULL;
		GDateTime* _tmp4_ = NULL;
		GDateTime* _tmp5_ = NULL;
		GDateTime* _tmp6_ = NULL;
		_tmp3_ = self->from;
		_tmp4_ = g_date_time_add_years (_tmp3_, 1);
		_g_date_time_unref0 (self->from);
		self->from = _tmp4_;
		_tmp5_ = self->to;
		_tmp6_ = g_date_time_add_years (_tmp5_, 1);
		_g_date_time_unref0 (self->to);
		self->to = _tmp6_;
	}
}


static void parsed_event_class_init (ParsedEventClass * klass) {
	parsed_event_parent_class = g_type_class_peek_parent (klass);
	G_OBJECT_CLASS (klass)->finalize = parsed_event_finalize;
}


static void parsed_event_instance_init (ParsedEvent * self) {
}


static void parsed_event_finalize (GObject* obj) {
	ParsedEvent * self;
	self = G_TYPE_CHECK_INSTANCE_CAST (obj, TYPE_PARSED_EVENT, ParsedEvent);
	_g_free0 (self->title);
	_g_free0 (self->location);
	_g_free0 (self->participants);
	_g_date_time_unref0 (self->from);
	_g_date_time_unref0 (self->to);
	G_OBJECT_CLASS (parsed_event_parent_class)->finalize (obj);
}


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
GType parsed_event_get_type (void) {
	static volatile gsize parsed_event_type_id__volatile = 0;
	if (g_once_init_enter (&parsed_event_type_id__volatile)) {
		static const GTypeInfo g_define_type_info = { sizeof (ParsedEventClass), (GBaseInitFunc) NULL, (GBaseFinalizeFunc) NULL, (GClassInitFunc) parsed_event_class_init, (GClassFinalizeFunc) NULL, NULL, sizeof (ParsedEvent), 0, (GInstanceInitFunc) parsed_event_instance_init, NULL };
		GType parsed_event_type_id;
		parsed_event_type_id = g_type_register_static (G_TYPE_OBJECT, "ParsedEvent", &g_define_type_info, 0);
		g_once_init_leave (&parsed_event_type_id__volatile, parsed_event_type_id);
	}
	return parsed_event_type_id__volatile;
}


