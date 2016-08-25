; ModuleID = './timemodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyStructSequence_Desc = type { i8*, i8*, %struct.PyStructSequence_Field*, i32 }
%struct.PyStructSequence_Field = type { i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._Py_clock_info_t = type { i8*, i32, i32, double }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.fd_set = type { [16 x i64] }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }
%struct.tms = type { i64, i64, i64, i64 }

@timemodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1812 x i8], [1812 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([19 x %struct.PyMethodDef], [19 x %struct.PyMethodDef]* @time_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@initialized = internal global i32 0, align 4
@StructTimeType = internal global %struct._typeobject zeroinitializer, align 8
@struct_time_type_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([417 x i8], [417 x i8]* @.str.69, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([12 x %struct.PyStructSequence_Field], [12 x %struct.PyStructSequence_Field]* @struct_time_type_fields, i32 0, i32 0), i32 9 }, align 8
@.str = private unnamed_addr constant [17 x i8] c"_STRUCT_TM_ITEMS\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"struct_time\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@module_doc = internal global [1812 x i8] c"This module provides various functions to manipulate time values.\0A\0AThere are two standard representations of time.  One is the number\0Aof seconds since the Epoch, in UTC (a.k.a. GMT).  It may be an integer\0Aor a floating point number (to represent fractions of seconds).\0AThe Epoch is system-defined; on Unix, it is generally January 1st, 1970.\0AThe actual value can be retrieved by calling gmtime(0).\0A\0AThe other representation is a tuple of 9 integers giving local time.\0AThe tuple items are:\0A  year (including century, e.g. 1998)\0A  month (1-12)\0A  day (1-31)\0A  hours (0-23)\0A  minutes (0-59)\0A  seconds (0-59)\0A  weekday (0-6, Monday is 0)\0A  Julian day (day in the year, 1-366)\0A  DST (Daylight Savings Time) flag (-1, 0 or 1)\0AIf the DST flag is 0, the time is given in the regular time zone;\0Aif it is 1, the time is given in the DST time zone;\0Aif it is -1, mktime() should guess based on the date and time.\0A\0AVariables:\0A\0Atimezone -- difference in seconds between UTC and local standard time\0Aaltzone -- difference in  seconds between UTC and local DST time\0Adaylight -- whether local time should reflect DST\0Atzname -- tuple of (standard time zone name, DST time zone name)\0A\0AFunctions:\0A\0Atime() -- return current time in seconds since the Epoch as a float\0Aclock() -- return CPU time since process start as a float\0Asleep() -- delay for a number of seconds given as a float\0Agmtime() -- convert seconds since Epoch to UTC tuple\0Alocaltime() -- convert seconds since Epoch to local time tuple\0Aasctime() -- convert time tuple to string\0Actime() -- convert time in seconds to string\0Amktime() -- convert local time tuple to seconds since Epoch\0Astrftime() -- convert time tuple to string according to format specification\0Astrptime() -- parse string to time tuple according to format specification\0Atzset() -- change the local timezone\00", align 16
@time_methods = internal global [19 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_time, i32 4, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @time_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_clock, i32 4, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @clock_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_clock_gettime, i32 1, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @clock_gettime_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_clock_settime, i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @clock_settime_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_clock_getres, i32 1, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @clock_getres_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_sleep, i32 1, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @sleep_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_gmtime, i32 1, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @gmtime_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_localtime, i32 1, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @localtime_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_asctime, i32 1, i8* getelementptr inbounds ([180 x i8], [180 x i8]* @asctime_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_ctime, i32 1, i8* getelementptr inbounds ([231 x i8], [231 x i8]* @ctime_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_mktime, i32 8, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @mktime_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_strftime, i32 1, i8* getelementptr inbounds ([970 x i8], [970 x i8]* @strftime_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_strptime, i32 1, i8* getelementptr inbounds ([908 x i8], [908 x i8]* @strptime_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_tzset, i32 4, i8* getelementptr inbounds ([589 x i8], [589 x i8]* @tzset_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_monotonic, i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @monotonic_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_process_time, i32 4, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @process_time_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_perf_counter, i32 4, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @perf_counter_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @time_get_clock_info, i32 1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @get_clock_info_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@time_doc = internal global [157 x i8] c"time() -> floating point number\0A\0AReturn the current time in seconds since the Epoch.\0AFractions of a second may be present if the system clock provides them.\00", align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@clock_doc = internal global [185 x i8] c"clock() -> floating point number\0A\0AReturn the CPU time or real time since the start of the process or since\0Athe first call to clock().  This has as much precision as the system\0Arecords.\00", align 16
@.str.4 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@clock_gettime_doc = internal global [95 x i8] c"clock_gettime(clk_id) -> floating point number\0A\0AReturn the time of the specified clock clk_id.\00", align 16
@.str.5 = private unnamed_addr constant [14 x i8] c"clock_settime\00", align 1
@clock_settime_doc = internal global [73 x i8] c"clock_settime(clk_id, time)\0A\0ASet the time of the specified clock clk_id.\00", align 16
@.str.6 = private unnamed_addr constant [13 x i8] c"clock_getres\00", align 1
@clock_getres_doc = internal global [112 x i8] c"clock_getres(clk_id) -> floating point number\0A\0AReturn the resolution (precision) of the specified clock clk_id.\00", align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@sleep_doc = internal global [133 x i8] c"sleep(seconds)\0A\0ADelay execution for a given number of seconds.  The argument may be\0Aa floating point number for subsecond precision.\00", align 16
@.str.8 = private unnamed_addr constant [7 x i8] c"gmtime\00", align 1
@gmtime_doc = internal global [362 x i8] c"gmtime([seconds]) -> (tm_year, tm_mon, tm_mday, tm_hour, tm_min,\0A                       tm_sec, tm_wday, tm_yday, tm_isdst)\0A\0AConvert seconds since the Epoch to a time tuple expressing UTC (a.k.a.\0AGMT).  When 'seconds' is not passed in, convert the current time instead.\0A\0AIf the platform supports the tm_gmtoff and tm_zone, they are available as\0Aattributes only.\00", align 16
@.str.9 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@localtime_doc = internal global [262 x i8] c"localtime([seconds]) -> (tm_year,tm_mon,tm_mday,tm_hour,tm_min,\0A                          tm_sec,tm_wday,tm_yday,tm_isdst)\0A\0AConvert seconds since the Epoch to a time tuple expressing local time.\0AWhen 'seconds' is not passed in, convert the current time instead.\00", align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"asctime\00", align 1
@asctime_doc = internal global [180 x i8] c"asctime([tuple]) -> string\0A\0AConvert a time tuple to a string, e.g. 'Sat Jun 06 16:26:11 1998'.\0AWhen the time tuple is not present, current time as returned by localtime()\0Ais used.\00", align 16
@.str.11 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@ctime_doc = internal global [231 x i8] c"ctime(seconds) -> string\0A\0AConvert a time in seconds since the Epoch to a string in local time.\0AThis is equivalent to asctime(localtime(seconds)). When the time tuple is\0Anot present, current time as returned by localtime() is used.\00", align 16
@.str.12 = private unnamed_addr constant [7 x i8] c"mktime\00", align 1
@mktime_doc = internal global [297 x i8] c"mktime(tuple) -> floating point number\0A\0AConvert a time tuple in local time to seconds since the Epoch.\0ANote that mktime(gmtime(0)) will not generally return zero for most\0Atime zones; instead the returned value will either be equal to that\0Aof the timezone or altzone attributes on the time module.\00", align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"strftime\00", align 1
@strftime_doc = internal global [970 x i8] c"strftime(format[, tuple]) -> string\0A\0AConvert a time tuple to a string according to a format specification.\0ASee the library reference manual for formatting codes. When the time tuple\0Ais not present, current time as returned by localtime() is used.\0A\0ACommonly used format codes:\0A\0A%Y  Year with century as a decimal number.\0A%m  Month as a decimal number [01,12].\0A%d  Day of the month as a decimal number [01,31].\0A%H  Hour (24-hour clock) as a decimal number [00,23].\0A%M  Minute as a decimal number [00,59].\0A%S  Second as a decimal number [00,61].\0A%z  Time zone offset from UTC.\0A%a  Locale's abbreviated weekday name.\0A%A  Locale's full weekday name.\0A%b  Locale's abbreviated month name.\0A%B  Locale's full month name.\0A%c  Locale's appropriate date and time representation.\0A%I  Hour (12-hour clock) as a decimal number [01,12].\0A%p  Locale's equivalent of either AM or PM.\0A\0AOther codes may be available on your platform.  See documentation for\0Athe C library strftime function.\0A\00", align 16
@.str.14 = private unnamed_addr constant [9 x i8] c"strptime\00", align 1
@strptime_doc = internal global [908 x i8] c"strptime(string, format) -> struct_time\0A\0AParse a string to a time tuple according to a format specification.\0ASee the library reference manual for formatting codes (same as\0Astrftime()).\0A\0ACommonly used format codes:\0A\0A%Y  Year with century as a decimal number.\0A%m  Month as a decimal number [01,12].\0A%d  Day of the month as a decimal number [01,31].\0A%H  Hour (24-hour clock) as a decimal number [00,23].\0A%M  Minute as a decimal number [00,59].\0A%S  Second as a decimal number [00,61].\0A%z  Time zone offset from UTC.\0A%a  Locale's abbreviated weekday name.\0A%A  Locale's full weekday name.\0A%b  Locale's abbreviated month name.\0A%B  Locale's full month name.\0A%c  Locale's appropriate date and time representation.\0A%I  Hour (12-hour clock) as a decimal number [01,12].\0A%p  Locale's equivalent of either AM or PM.\0A\0AOther codes may be available on your platform.  See documentation for\0Athe C library strftime function.\0A\00", align 16
@.str.15 = private unnamed_addr constant [6 x i8] c"tzset\00", align 1
@tzset_doc = internal global [589 x i8] c"tzset()\0A\0AInitialize, or reinitialize, the local timezone to the value stored in\0Aos.environ['TZ']. The TZ environment variable should be specified in\0Astandard Unix timezone format as documented in the tzset man page\0A(eg. 'US/Eastern', 'Europe/Amsterdam'). Unknown timezones will silently\0Afall back to UTC. If the TZ environment variable is not set, the local\0Atimezone is set to the systems best guess of wallclock time.\0AChanging the TZ environment variable without calling tzset *may* change\0Athe local timezone used by methods such as localtime, but this behaviour\0Ashould not be relied on.\00", align 16
@.str.16 = private unnamed_addr constant [10 x i8] c"monotonic\00", align 1
@monotonic_doc = internal global [59 x i8] c"monotonic() -> float\0A\0AMonotonic clock, cannot go backward.\00", align 16
@.str.17 = private unnamed_addr constant [13 x i8] c"process_time\00", align 1
@process_time_doc = internal global [96 x i8] c"process_time() -> float\0A\0AProcess time for profiling: sum of the kernel and user-space CPU time.\00", align 16
@.str.18 = private unnamed_addr constant [13 x i8] c"perf_counter\00", align 1
@perf_counter_doc = internal global [63 x i8] c"perf_counter() -> float\0A\0APerformance counter for benchmarking.\00", align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"get_clock_info\00", align 1
@get_clock_info_doc = internal global [75 x i8] c"get_clock_info(name: str) -> dict\0A\0AGet information of the specified clock.\00", align 16
@.str.20 = private unnamed_addr constant [30 x i8] c"clock_gettime(CLOCK_REALTIME)\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.21 = private unnamed_addr constant [76 x i8] c"the processor time used is not available or its value cannot be represented\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"clock()\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"i:clock_gettime\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.24 = private unnamed_addr constant [17 x i8] c"iO:clock_settime\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.25 = private unnamed_addr constant [15 x i8] c"i:clock_getres\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"d:sleep\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.27 = private unnamed_addr constant [34 x i8] c"sleep length must be non-negative\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"|O:gmtime\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@.str.29 = private unnamed_addr constant [16 x i8] c"surrogateescape\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"|O:localtime\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.31 = private unnamed_addr constant [39 x i8] c"Tuple or struct_time argument required\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"iiiiiiiii\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"month out of range\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"day of month out of range\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"hour out of range\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"minute out of range\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"seconds out of range\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"day of week out of range\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"day of year out of range\00", align 1
@_asctime.wday_name = internal global [7 x [4 x i8]] [[4 x i8] c"Sun\00", [4 x i8] c"Mon\00", [4 x i8] c"Tue\00", [4 x i8] c"Wed\00", [4 x i8] c"Thu\00", [4 x i8] c"Fri\00", [4 x i8] c"Sat\00"], align 16
@_asctime.mon_name = internal global [12 x [4 x i8]] [[4 x i8] c"Jan\00", [4 x i8] c"Feb\00", [4 x i8] c"Mar\00", [4 x i8] c"Apr\00", [4 x i8] c"May\00", [4 x i8] c"Jun\00", [4 x i8] c"Jul\00", [4 x i8] c"Aug\00", [4 x i8] c"Sep\00", [4 x i8] c"Oct\00", [4 x i8] c"Nov\00", [4 x i8] c"Dec\00"], align 16
@.str.40 = private unnamed_addr constant [27 x i8] c"%s %s%3d %.2d:%.2d:%.2d %d\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"|O:ctime\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.42 = private unnamed_addr constant [29 x i8] c"mktime argument out of range\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"U|O:strftime\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"_strptime\00", align 1
@time_strptime.PyId__strptime_time = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), %struct._object* null }, align 8
@.str.45 = private unnamed_addr constant [15 x i8] c"_strptime_time\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"clock_gettime(CLOCK_MONOTONIC)\00", align 1
@py_process_time.ticks_per_second = internal global i64 -1, align 8
@.str.48 = private unnamed_addr constant [40 x i8] c"clock_gettime(CLOCK_PROCESS_CPUTIME_ID)\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"getrusage(RUSAGE_SELF)\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"times()\00", align 1
@perf_counter.use_monotonic = internal global i32 1, align 4
@.str.51 = private unnamed_addr constant [17 x i8] c"s:get_clock_info\00", align 1
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"unknown clock\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"adjustable\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"timezone\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"altzone\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"daylight\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"tzname\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"(zz)\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"CLOCK_REALTIME\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"CLOCK_MONOTONIC\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"CLOCK_MONOTONIC_RAW\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"CLOCK_PROCESS_CPUTIME_ID\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"CLOCK_THREAD_CPUTIME_ID\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"time.struct_time\00", align 1
@.str.69 = private unnamed_addr constant [417 x i8] c"The time value as returned by gmtime(), localtime(), and strptime(), and\0A accepted by asctime(), mktime() and strftime().  May be considered as a\0A sequence of 9 integers.\0A\0A Note that several fields' values are not the same as those defined by\0A the C language standard for struct tm.  For example, the value of the\0A field tm_year is the actual year, not year - 1900.  See individual\0A fields' descriptions for details.\00", align 1
@struct_time_type_fields = internal global [12 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.83, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.87, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.89, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.70 = private unnamed_addr constant [8 x i8] c"tm_year\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"year, for example, 1993\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"tm_mon\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"month of year, range [1, 12]\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"tm_mday\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"day of month, range [1, 31]\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"tm_hour\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"hours, range [0, 23]\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"tm_min\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"minutes, range [0, 59]\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"tm_sec\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"seconds, range [0, 61])\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"tm_wday\00", align 1
@.str.83 = private unnamed_addr constant [39 x i8] c"day of week, range [0, 6], Monday is 0\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"tm_yday\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"day of year, range [1, 366]\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"tm_isdst\00", align 1
@.str.87 = private unnamed_addr constant [59 x i8] c"1 if summer time is in effect, 0 if not, and -1 if unknown\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"tm_zone\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"abbreviation of timezone name\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"tm_gmtoff\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"offset from UTC in seconds\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_time() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @timemodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  call void @PyInit_timezone(%struct._object* %1)
  %2 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.6, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %call2 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StructTimeType, %struct.PyStructSequence_Desc* @struct_time_type_desc)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructTimeType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructTimeType, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call7 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i64 11)
  %5 = load %struct._object*, %struct._object** %m, align 8
  %call8 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructTimeType, i32 0, i32 0, i32 0))
  store i32 1, i32* @initialized, align 4
  %6 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @PyInit_timezone(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %t = alloca i64, align 8
  %p = alloca %struct.tm*, align 8
  %janzone = alloca i64, align 8
  %julyzone = alloca i64, align 8
  %janname = alloca [10 x i8], align 1
  %julyname = alloca [10 x i8], align 1
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %call = call i64 @time(i64* null) #4
  %div = sdiv i64 %call, 31557600
  %mul = mul i64 %div, 31557600
  store i64 %mul, i64* %t, align 8
  %call1 = call %struct.tm* @localtime(i64* %t) #4
  store %struct.tm* %call1, %struct.tm** %p, align 8
  %0 = load %struct.tm*, %struct.tm** %p, align 8
  %tm_gmtoff = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 9
  %1 = load i64, i64* %tm_gmtoff, align 8
  %sub = sub i64 0, %1
  store i64 %sub, i64* %janzone, align 8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %janname, i32 0, i32 0
  %2 = load %struct.tm*, %struct.tm** %p, align 8
  %tm_zone = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 10
  %3 = load i8*, i8** %tm_zone, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.tm*, %struct.tm** %p, align 8
  %tm_zone2 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 10
  %5 = load i8*, i8** %tm_zone2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), %cond.false ]
  %call3 = call i8* @strncpy(i8* %arraydecay, i8* %cond, i64 9) #4
  %arrayidx = getelementptr [10 x i8], [10 x i8]* %janname, i32 0, i64 9
  store i8 0, i8* %arrayidx, align 1
  %6 = load i64, i64* %t, align 8
  %add = add i64 %6, 15778800
  store i64 %add, i64* %t, align 8
  %call4 = call %struct.tm* @localtime(i64* %t) #4
  store %struct.tm* %call4, %struct.tm** %p, align 8
  %7 = load %struct.tm*, %struct.tm** %p, align 8
  %tm_gmtoff5 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 9
  %8 = load i64, i64* %tm_gmtoff5, align 8
  %sub6 = sub i64 0, %8
  store i64 %sub6, i64* %julyzone, align 8
  %arraydecay7 = getelementptr inbounds [10 x i8], [10 x i8]* %julyname, i32 0, i32 0
  %9 = load %struct.tm*, %struct.tm** %p, align 8
  %tm_zone8 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 10
  %10 = load i8*, i8** %tm_zone8, align 8
  %tobool9 = icmp ne i8* %10, null
  br i1 %tobool9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.end
  %11 = load %struct.tm*, %struct.tm** %p, align 8
  %tm_zone11 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 10
  %12 = load i8*, i8** %tm_zone11, align 8
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.10
  %cond14 = phi i8* [ %12, %cond.true.10 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), %cond.false.12 ]
  %call15 = call i8* @strncpy(i8* %arraydecay7, i8* %cond14, i64 9) #4
  %arrayidx16 = getelementptr [10 x i8], [10 x i8]* %julyname, i32 0, i64 9
  store i8 0, i8* %arrayidx16, align 1
  %13 = load i64, i64* %janzone, align 8
  %14 = load i64, i64* %julyzone, align 8
  %cmp = icmp slt i64 %13, %14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.13
  %15 = load %struct._object*, %struct._object** %m.addr, align 8
  %16 = load i64, i64* %julyzone, align 8
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i64 %16)
  %17 = load %struct._object*, %struct._object** %m.addr, align 8
  %18 = load i64, i64* %janzone, align 8
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i64 %18)
  %19 = load %struct._object*, %struct._object** %m.addr, align 8
  %20 = load i64, i64* %janzone, align 8
  %21 = load i64, i64* %julyzone, align 8
  %cmp19 = icmp ne i64 %20, %21
  %conv = zext i1 %cmp19 to i32
  %conv20 = sext i32 %conv to i64
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i64 %conv20)
  %22 = load %struct._object*, %struct._object** %m.addr, align 8
  %arraydecay22 = getelementptr inbounds [10 x i8], [10 x i8]* %julyname, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [10 x i8], [10 x i8]* %janname, i32 0, i32 0
  %call24 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* %arraydecay22, i8* %arraydecay23)
  %call25 = call i32 @PyModule_AddObject(%struct._object* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), %struct._object* %call24)
  br label %if.end

if.else:                                          ; preds = %cond.end.13
  %23 = load %struct._object*, %struct._object** %m.addr, align 8
  %24 = load i64, i64* %janzone, align 8
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i64 %24)
  %25 = load %struct._object*, %struct._object** %m.addr, align 8
  %26 = load i64, i64* %julyzone, align 8
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i64 %26)
  %27 = load %struct._object*, %struct._object** %m.addr, align 8
  %28 = load i64, i64* %janzone, align 8
  %29 = load i64, i64* %julyzone, align 8
  %cmp28 = icmp ne i64 %28, %29
  %conv29 = zext i1 %cmp28 to i32
  %conv30 = sext i32 %conv29 to i64
  %call31 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i64 %conv30)
  %30 = load %struct._object*, %struct._object** %m.addr, align 8
  %arraydecay32 = getelementptr inbounds [10 x i8], [10 x i8]* %janname, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [10 x i8], [10 x i8]* %julyname, i32 0, i32 0
  %call34 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* %arraydecay32, i8* %arraydecay33)
  %call35 = call i32 @PyModule_AddObject(%struct._object* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), %struct._object* %call34)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load %struct._object*, %struct._object** %m.addr, align 8
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i64 0)
  %32 = load %struct._object*, %struct._object** %m.addr, align 8
  %call37 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i64 1)
  %33 = load %struct._object*, %struct._object** %m.addr, align 8
  %call38 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0), i64 4)
  %34 = load %struct._object*, %struct._object** %m.addr, align 8
  %call39 = call i32 @PyModule_AddIntConstant(%struct._object* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), i64 2)
  %35 = load %struct._object*, %struct._object** %m.addr, align 8
  %call40 = call i32 @PyModule_AddIntConstant(%struct._object* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i32 0, i32 0), i64 3)
  ret void
}

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_time(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct._object* @floattime(%struct._Py_clock_info_t* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_clock(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct._object* @pyclock(%struct._Py_clock_info_t* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_clock_gettime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %clk_id = alloca i32, align 4
  %tp = alloca %struct.timespec, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32* %clk_id)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %clk_id, align 4
  %call1 = call i32 @clock_gettime(i32 %1, %struct.timespec* %tp) #4
  store i32 %call1, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0
  %4 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %4 to double
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1
  %5 = load i64, i64* %tv_nsec, align 8
  %conv5 = sitofp i64 %5 to double
  %mul = fmul double %conv5, 1.000000e-09
  %add = fadd double %conv, %mul
  %call6 = call %struct._object* @PyFloat_FromDouble(double %add)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_clock_settime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %clk_id = alloca i32, align 4
  %obj = alloca %struct._object*, align 8
  %tv_sec = alloca i64, align 8
  %tv_nsec = alloca i64, align 8
  %tp = alloca %struct.timespec, align 8
  %ret = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i32* %clk_id, %struct._object** %obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %call1 = call i32 @_PyTime_ObjectToTimespec(%struct._object* %1, i64* %tv_sec, i64* %tv_nsec, i32 0)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i64, i64* %tv_sec, align 8
  %tv_sec4 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0
  store i64 %2, i64* %tv_sec4, align 8
  %3 = load i64, i64* %tv_nsec, align 8
  %tv_nsec5 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1
  store i64 %3, i64* %tv_nsec5, align 8
  %4 = load i32, i32* %clk_id, align 4
  %call6 = call i32 @clock_settime(i32 %4, %struct.timespec* %tp) #4
  store i32 %call6, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp7 = icmp ne i32 %5, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call9 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_clock_getres(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %clk_id = alloca i32, align 4
  %tp = alloca %struct.timespec, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i32* %clk_id)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %clk_id, align 4
  %call1 = call i32 @clock_getres(i32 %1, %struct.timespec* %tp) #4
  store i32 %call1, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0
  %4 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %4 to double
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1
  %5 = load i64, i64* %tv_nsec, align 8
  %conv5 = sitofp i64 %5 to double
  %mul = fmul double %conv5, 1.000000e-09
  %add = fadd double %conv, %mul
  %call6 = call %struct._object* @PyFloat_FromDouble(double %add)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_sleep(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %secs = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), double* %secs)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %secs, align 8
  %cmp = fcmp olt double %1, 0.000000e+00
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load double, double* %secs, align 8
  %call3 = call i32 @floatsleep(double %3)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_gmtime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %when = alloca i64, align 8
  %buf = alloca %struct.tm, align 8
  %local = alloca %struct.tm*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @parse_time_t_args(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i64* %when)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32* @__errno_location() #6
  store i32 0, i32* %call1, align 4
  %call2 = call %struct.tm* @gmtime(i64* %when) #4
  store %struct.tm* %call2, %struct.tm** %local, align 8
  %1 = load %struct.tm*, %struct.tm** %local, align 8
  %cmp = icmp eq %struct.tm* %1, null
  br i1 %cmp, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %call4 = call i32* @__errno_location() #6
  %2 = load i32, i32* %call4, align 4
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.3
  %call7 = call i32* @__errno_location() #6
  store i32 22, i32* %call7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.3
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call9 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %4 = load %struct.tm*, %struct.tm** %local, align 8
  %5 = bitcast %struct.tm* %buf to i8*
  %6 = bitcast %struct.tm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 56, i32 8, i1 false)
  %call11 = call %struct._object* @tmtotuple(%struct.tm* %buf)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end.8, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_localtime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %when = alloca i64, align 8
  %buf = alloca %struct.tm, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @parse_time_t_args(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i64* %when)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @pylocaltime(i64* %when, %struct.tm* %buf)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @tmtotuple(%struct.tm* %buf)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %1 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_asctime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tup = alloca %struct._object*, align 8
  %buf = alloca %struct.tm, align 8
  %tt = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %tup, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i64 0, i64 1, %struct._object** %tup)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %tup, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %call2 = call i64 @time(i64* null) #4
  store i64 %call2, i64* %tt, align 8
  %call3 = call i32 @pylocaltime(i64* %tt, %struct.tm* %buf)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.1
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %tup, align 8
  %call7 = call i32 @gettmarg(%struct._object* %2, %struct.tm* %buf)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.else
  %call9 = call i32 @checktm(%struct.tm* %buf)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.6
  %call14 = call %struct._object* @_asctime(%struct.tm* %buf)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_ctime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tt = alloca i64, align 8
  %buf = alloca %struct.tm, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @parse_time_t_args(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i64* %tt)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @pylocaltime(i64* %tt, %struct.tm* %buf)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_asctime(%struct.tm* %buf)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %1 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_mktime(%struct._object* %self, %struct._object* %tup) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %tup.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.tm, align 8
  %tt = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %tup, %struct._object** %tup.addr, align 8
  %0 = load %struct._object*, %struct._object** %tup.addr, align 8
  %call = call i32 @gettmarg(%struct._object* %0, %struct.tm* %buf)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 6
  store i32 -1, i32* %tm_wday, align 4
  %call1 = call i64 @mktime(%struct.tm* %buf) #4
  store i64 %call1, i64* %tt, align 8
  %1 = load i64, i64* %tt, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %tm_wday2 = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 6
  %2 = load i32, i32* %tm_wday2, align 4
  %cmp3 = icmp eq i32 %2, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %4 = load i64, i64* %tt, align 8
  %conv = sitofp i64 %4 to double
  %call6 = call %struct._object* @PyFloat_FromDouble(double %conv)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_strftime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tup = alloca %struct._object*, align 8
  %buf = alloca %struct.tm, align 8
  %fmt = alloca i32*, align 8
  %format = alloca i32*, align 8
  %format_arg = alloca %struct._object*, align 8
  %fmtlen = alloca i64, align 8
  %buflen = alloca i64, align 8
  %outbuf = alloca i32*, align 8
  %i = alloca i64, align 8
  %ret = alloca %struct._object*, align 8
  %tt = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %tup, align 8
  store i32* null, i32** %outbuf, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  %0 = bitcast %struct.tm* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 1, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), %struct._object** %format_arg, %struct._object** %tup)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tup, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %call2 = call i64 @time(i64* null) #4
  store i64 %call2, i64* %tt, align 8
  %call3 = call i32 @pylocaltime(i64* %tt, %struct.tm* %buf)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.1
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %tup, align 8
  %call7 = call i32 @gettmarg(%struct._object* %3, %struct.tm* %buf)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.else
  %call9 = call i32 @checktm(%struct.tm* %buf)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.6
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 8
  %4 = load i32, i32* %tm_isdst, align 4
  %cmp14 = icmp slt i32 %4, -1
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.13
  %tm_isdst16 = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 8
  store i32 -1, i32* %tm_isdst16, align 4
  br label %if.end.23

if.else.17:                                       ; preds = %if.end.13
  %tm_isdst18 = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 8
  %5 = load i32, i32* %tm_isdst18, align 4
  %cmp19 = icmp sgt i32 %5, 1
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.else.17
  %tm_isdst21 = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 8
  store i32 1, i32* %tm_isdst21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.else.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.15
  %6 = load %struct._object*, %struct._object** %format_arg, align 8
  %call24 = call i32* @PyUnicode_AsWideCharString(%struct._object* %6, i64* null)
  store i32* %call24, i32** %format, align 8
  %7 = load i32*, i32** %format, align 8
  %cmp25 = icmp eq i32* %7, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %8 = load i32*, i32** %format, align 8
  store i32* %8, i32** %fmt, align 8
  %9 = load i32*, i32** %fmt, align 8
  %call28 = call i64 @wcslen(i32* %9) #7
  store i64 %call28, i64* %fmtlen, align 8
  store i64 1024, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %10 = load i64, i64* %i, align 8
  %mul = mul i64 %10, 4
  %call29 = call i8* @PyMem_Malloc(i64 %mul)
  %11 = bitcast i8* %call29 to i32*
  store i32* %11, i32** %outbuf, align 8
  %12 = load i32*, i32** %outbuf, align 8
  %cmp30 = icmp eq i32* %12, null
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %for.cond
  %call32 = call %struct._object* @PyErr_NoMemory()
  br label %for.end

if.end.33:                                        ; preds = %for.cond
  %13 = load i32*, i32** %outbuf, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load i32*, i32** %fmt, align 8
  %call34 = call i64 @wcsftime(i32* %13, i64 %14, i32* %15, %struct.tm* %buf) #4
  store i64 %call34, i64* %buflen, align 8
  %16 = load i64, i64* %buflen, align 8
  %cmp35 = icmp ugt i64 %16, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.33
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %fmtlen, align 8
  %mul37 = mul i64 256, %18
  %cmp38 = icmp uge i64 %17, %mul37
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %lor.lhs.false.36, %if.end.33
  %19 = load i32*, i32** %outbuf, align 8
  %20 = load i64, i64* %buflen, align 8
  %call40 = call %struct._object* @PyUnicode_FromWideChar(i32* %19, i64 %20)
  store %struct._object* %call40, %struct._object** %ret, align 8
  %21 = load i32*, i32** %outbuf, align 8
  %22 = bitcast i32* %21 to i8*
  call void @PyMem_Free(i8* %22)
  br label %for.end

if.end.41:                                        ; preds = %lor.lhs.false.36
  %23 = load i32*, i32** %outbuf, align 8
  %24 = bitcast i32* %23 to i8*
  call void @PyMem_Free(i8* %24)
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %i, align 8
  %add = add i64 %26, %25
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.39, %if.then.31
  %27 = load i32*, i32** %format, align 8
  %28 = bitcast i32* %27 to i8*
  call void @PyMem_Free(i8* %28)
  %29 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.26, %if.then.11, %if.then.5, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_strptime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %strptime_module = alloca %struct._object*, align 8
  %strptime_result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %strptime_module, align 8
  %0 = load %struct._object*, %struct._object** %strptime_module, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %strptime_module, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @time_strptime.PyId__strptime_time, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), %struct._object* %2)
  store %struct._object* %call1, %struct._object** %strptime_result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %strptime_module, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %strptime_result, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_tzset(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @tzset() #4
  %1 = load %struct._object*, %struct._object** %m, align 8
  call void @PyInit_timezone(%struct._object* %1)
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_monotonic(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct._object* @pymonotonic(%struct._Py_clock_info_t* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_process_time(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct._object* @py_process_time(%struct._Py_clock_info_t* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_perf_counter(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct._object* @perf_counter(%struct._Py_clock_info_t* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_get_clock_info(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %info = alloca %struct._Py_clock_info_t, align 8
  %obj = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %ns = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_tmp108 = alloca %struct._object*, align 8
  %_py_decref_tmp113 = alloca %struct._object*, align 8
  %_py_tmp138 = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  %_py_decref_tmp158 = alloca %struct._object*, align 8
  %_py_decref_tmp170 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp186 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %obj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i32 0, i32 0), i8** %implementation, align 8
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 1
  store i32 0, i32* %monotonic, align 4
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 2
  store i32 0, i32* %adjustable, align 4
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 3
  store double 1.000000e+00, double* %resolution, align 8
  %1 = load i8*, i8** %name, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @floattime(%struct._Py_clock_info_t* %info)
  store %struct._object* %call3, %struct._object** %obj, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %2 = load i8*, i8** %name, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %call7 = call %struct._object* @pyclock(%struct._Py_clock_info_t* %info)
  store %struct._object* %call7, %struct._object** %obj, align 8
  br label %if.end.27

if.else.8:                                        ; preds = %if.else
  %3 = load i8*, i8** %name, align 8
  %call9 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else.8
  %call12 = call %struct._object* @pymonotonic(%struct._Py_clock_info_t* %info)
  store %struct._object* %call12, %struct._object** %obj, align 8
  br label %if.end.26

if.else.13:                                       ; preds = %if.else.8
  %4 = load i8*, i8** %name, align 8
  %call14 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else.13
  %call17 = call %struct._object* @perf_counter(%struct._Py_clock_info_t* %info)
  store %struct._object* %call17, %struct._object** %obj, align 8
  br label %if.end.25

if.else.18:                                       ; preds = %if.else.13
  %5 = load i8*, i8** %name, align 8
  %call19 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.18
  %call22 = call %struct._object* @py_process_time(%struct._Py_clock_info_t* %info)
  store %struct._object* %call22, %struct._object** %obj, align 8
  br label %if.end.24

if.else.23:                                       ; preds = %if.else.18
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.11
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.6
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.2
  %7 = load %struct._object*, %struct._object** %obj, align 8
  %cmp29 = icmp eq %struct._object* %7, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.28
  br label %do.body

do.body:                                          ; preds = %if.end.31
  %8 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp32 = icmp ne i64 %dec, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body
  br label %if.end.35

if.else.34:                                       ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end

do.end:                                           ; preds = %if.end.35
  %call36 = call %struct._object* @PyDict_New()
  store %struct._object* %call36, %struct._object** %dict, align 8
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %cmp37 = icmp eq %struct._object* %15, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %do.end
  %implementation40 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 0
  %16 = load i8*, i8** %implementation40, align 8
  %call41 = call %struct._object* @PyUnicode_FromString(i8* %16)
  store %struct._object* %call41, %struct._object** %obj, align 8
  %17 = load %struct._object*, %struct._object** %obj, align 8
  %cmp42 = icmp eq %struct._object* %17, null
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  br label %error

if.end.44:                                        ; preds = %if.end.39
  %18 = load %struct._object*, %struct._object** %dict, align 8
  %19 = load %struct._object*, %struct._object** %obj, align 8
  %call45 = call i32 @PyDict_SetItemString(%struct._object* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), %struct._object* %19)
  %cmp46 = icmp eq i32 %call45, -1
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  br label %error

if.end.48:                                        ; preds = %if.end.44
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  %20 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %20, %struct._object** %_py_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp50 = icmp ne %struct._object* %21, null
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %do.body.49
  store %struct._object* null, %struct._object** %obj, align 8
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %22 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp53, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %24, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %27(%struct._object* %28)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.body.49
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  %monotonic65 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 1
  %29 = load i32, i32* %monotonic65, align 4
  %conv = sext i32 %29 to i64
  %call66 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call66, %struct._object** %obj, align 8
  %30 = load %struct._object*, %struct._object** %obj, align 8
  %cmp67 = icmp eq %struct._object* %30, null
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %do.end.64
  br label %error

if.end.70:                                        ; preds = %do.end.64
  %31 = load %struct._object*, %struct._object** %dict, align 8
  %32 = load %struct._object*, %struct._object** %obj, align 8
  %call71 = call i32 @PyDict_SetItemString(%struct._object* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._object* %32)
  %cmp72 = icmp eq i32 %call71, -1
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.70
  br label %error

if.end.75:                                        ; preds = %if.end.70
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.75
  %33 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %33, %struct._object** %_py_tmp77, align 8
  %34 = load %struct._object*, %struct._object** %_py_tmp77, align 8
  %cmp78 = icmp ne %struct._object* %34, null
  br i1 %cmp78, label %if.then.80, label %if.end.93

if.then.80:                                       ; preds = %do.body.76
  store %struct._object* null, %struct._object** %obj, align 8
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %35 = load %struct._object*, %struct._object** %_py_tmp77, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp82, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %37, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.81
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %40(%struct._object* %41)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %if.end.93

if.end.93:                                        ; preds = %do.end.92, %do.body.76
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %adjustable95 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 2
  %42 = load i32, i32* %adjustable95, align 4
  %conv96 = sext i32 %42 to i64
  %call97 = call %struct._object* @PyBool_FromLong(i64 %conv96)
  store %struct._object* %call97, %struct._object** %obj, align 8
  %43 = load %struct._object*, %struct._object** %obj, align 8
  %cmp98 = icmp eq %struct._object* %43, null
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %do.end.94
  br label %error

if.end.101:                                       ; preds = %do.end.94
  %44 = load %struct._object*, %struct._object** %dict, align 8
  %45 = load %struct._object*, %struct._object** %obj, align 8
  %call102 = call i32 @PyDict_SetItemString(%struct._object* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), %struct._object* %45)
  %cmp103 = icmp eq i32 %call102, -1
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.101
  br label %error

if.end.106:                                       ; preds = %if.end.101
  br label %do.body.107

do.body.107:                                      ; preds = %if.end.106
  %46 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %46, %struct._object** %_py_tmp108, align 8
  %47 = load %struct._object*, %struct._object** %_py_tmp108, align 8
  %cmp109 = icmp ne %struct._object* %47, null
  br i1 %cmp109, label %if.then.111, label %if.end.124

if.then.111:                                      ; preds = %do.body.107
  store %struct._object* null, %struct._object** %obj, align 8
  br label %do.body.112

do.body.112:                                      ; preds = %if.then.111
  %48 = load %struct._object*, %struct._object** %_py_tmp108, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp113, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt114, align 8
  %dec115 = add i64 %50, -1
  store i64 %dec115, i64* %ob_refcnt114, align 8
  %cmp116 = icmp ne i64 %dec115, 0
  br i1 %cmp116, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %do.body.112
  br label %if.end.122

if.else.119:                                      ; preds = %do.body.112
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  call void %53(%struct._object* %54)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  br label %if.end.124

if.end.124:                                       ; preds = %do.end.123, %do.body.107
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  %resolution126 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 3
  %55 = load double, double* %resolution126, align 8
  %call127 = call %struct._object* @PyFloat_FromDouble(double %55)
  store %struct._object* %call127, %struct._object** %obj, align 8
  %56 = load %struct._object*, %struct._object** %obj, align 8
  %cmp128 = icmp eq %struct._object* %56, null
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %do.end.125
  br label %error

if.end.131:                                       ; preds = %do.end.125
  %57 = load %struct._object*, %struct._object** %dict, align 8
  %58 = load %struct._object*, %struct._object** %obj, align 8
  %call132 = call i32 @PyDict_SetItemString(%struct._object* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), %struct._object* %58)
  %cmp133 = icmp eq i32 %call132, -1
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.131
  br label %error

if.end.136:                                       ; preds = %if.end.131
  br label %do.body.137

do.body.137:                                      ; preds = %if.end.136
  %59 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %59, %struct._object** %_py_tmp138, align 8
  %60 = load %struct._object*, %struct._object** %_py_tmp138, align 8
  %cmp139 = icmp ne %struct._object* %60, null
  br i1 %cmp139, label %if.then.141, label %if.end.154

if.then.141:                                      ; preds = %do.body.137
  store %struct._object* null, %struct._object** %obj, align 8
  br label %do.body.142

do.body.142:                                      ; preds = %if.then.141
  %61 = load %struct._object*, %struct._object** %_py_tmp138, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp143, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt144, align 8
  %dec145 = add i64 %63, -1
  store i64 %dec145, i64* %ob_refcnt144, align 8
  %cmp146 = icmp ne i64 %dec145, 0
  br i1 %cmp146, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %do.body.142
  br label %if.end.152

if.else.149:                                      ; preds = %do.body.142
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8
  %tp_dealloc151 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc151, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  call void %66(%struct._object* %67)
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.148
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %do.end.153, %do.body.137
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  %68 = load %struct._object*, %struct._object** %dict, align 8
  %call156 = call %struct._object* @_PyNamespace_New(%struct._object* %68)
  store %struct._object* %call156, %struct._object** %ns, align 8
  br label %do.body.157

do.body.157:                                      ; preds = %do.end.155
  %69 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp158, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_refcnt159 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt159, align 8
  %dec160 = add i64 %71, -1
  store i64 %dec160, i64* %ob_refcnt159, align 8
  %cmp161 = icmp ne i64 %dec160, 0
  br i1 %cmp161, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %do.body.157
  br label %if.end.167

if.else.164:                                      ; preds = %do.body.157
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_type165 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type165, align 8
  %tp_dealloc166 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc166, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  call void %74(%struct._object* %75)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.164, %if.then.163
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  %76 = load %struct._object*, %struct._object** %ns, align 8
  store %struct._object* %76, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.135, %if.then.130, %if.then.105, %if.then.100, %if.then.74, %if.then.69, %if.then.47, %if.then.43
  br label %do.body.169

do.body.169:                                      ; preds = %error
  %77 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp170, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  %ob_refcnt171 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt171, align 8
  %dec172 = add i64 %79, -1
  store i64 %dec172, i64* %ob_refcnt171, align 8
  %cmp173 = icmp ne i64 %dec172, 0
  br i1 %cmp173, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %do.body.169
  br label %if.end.179

if.else.176:                                      ; preds = %do.body.169
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  %ob_type177 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type177, align 8
  %tp_dealloc178 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc178, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  call void %82(%struct._object* %83)
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %if.then.175
  br label %do.end.180

do.end.180:                                       ; preds = %if.end.179
  br label %do.body.181

do.body.181:                                      ; preds = %do.end.180
  %84 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %84, %struct._object** %_py_xdecref_tmp, align 8
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp182 = icmp ne %struct._object* %85, null
  br i1 %cmp182, label %if.then.184, label %if.end.197

if.then.184:                                      ; preds = %do.body.181
  br label %do.body.185

do.body.185:                                      ; preds = %if.then.184
  %86 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %86, %struct._object** %_py_decref_tmp186, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp186, align 8
  %ob_refcnt187 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0
  %88 = load i64, i64* %ob_refcnt187, align 8
  %dec188 = add i64 %88, -1
  store i64 %dec188, i64* %ob_refcnt187, align 8
  %cmp189 = icmp ne i64 %dec188, 0
  br i1 %cmp189, label %if.then.191, label %if.else.192

if.then.191:                                      ; preds = %do.body.185
  br label %if.end.195

if.else.192:                                      ; preds = %do.body.185
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp186, align 8
  %ob_type193 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type193, align 8
  %tp_dealloc194 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc194, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp186, align 8
  call void %91(%struct._object* %92)
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.192, %if.then.191
  br label %do.end.196

do.end.196:                                       ; preds = %if.end.195
  br label %if.end.197

if.end.197:                                       ; preds = %do.end.196, %do.body.181
  br label %do.end.198

do.end.198:                                       ; preds = %if.end.197
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.198, %do.end.168, %if.then.38, %if.then.30, %if.else.23, %if.then
  %93 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %93
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @floattime(%struct._Py_clock_info_t* %info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %t = alloca %struct.timeval, align 8
  %tp = alloca %struct.timespec, align 8
  %ret = alloca i32, align 4
  %res = alloca %struct.timespec, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8
  %call = call i32 @clock_gettime(i32 0, %struct.timespec* %tp) #4
  store i32 %call, i32* %ret, align 4
  %0 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %tobool = icmp ne %struct._Py_clock_info_t* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %if.then
  %2 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i8** %implementation, align 8
  %3 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %3, i32 0, i32 1
  store i32 0, i32* %monotonic, align 4
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %4, i32 0, i32 2
  store i32 1, i32* %adjustable, align 4
  %call2 = call i32 @clock_getres(i32 0, %struct.timespec* %res) #4
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.1
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 0
  %5 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %5 to double
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 1
  %6 = load i64, i64* %tv_nsec, align 8
  %conv5 = sitofp i64 %6 to double
  %mul = fmul double %conv5, 1.000000e-09
  %add = fadd double %conv, %mul
  %7 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %7, i32 0, i32 3
  store double %add, double* %resolution, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.1
  %8 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution6 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %8, i32 0, i32 3
  store double 1.000000e-09, double* %resolution6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %tv_sec8 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0
  %9 = load i64, i64* %tv_sec8, align 8
  %conv9 = sitofp i64 %9 to double
  %tv_nsec10 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1
  %10 = load i64, i64* %tv_nsec10, align 8
  %conv11 = sitofp i64 %10 to double
  %mul12 = fmul double %conv11, 1.000000e-09
  %add13 = fadd double %conv9, %mul12
  %call14 = call %struct._object* @PyFloat_FromDouble(double %add13)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %entry
  %11 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  call void @_PyTime_gettimeofday_info(%struct.timeval* %t, %struct._Py_clock_info_t* %11)
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 0
  %12 = load i64, i64* %tv_sec16, align 8
  %conv17 = sitofp i64 %12 to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 1
  %13 = load i64, i64* %tv_usec, align 8
  %conv18 = sitofp i64 %13 to double
  %mul19 = fmul double %conv18, 1.000000e-06
  %add20 = fadd double %conv17, %mul19
  %call21 = call %struct._object* @PyFloat_FromDouble(double %add20)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.end.7
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) #2

; Function Attrs: nounwind
declare i32 @clock_getres(i32, %struct.timespec*) #2

declare %struct._object* @PyFloat_FromDouble(double) #1

declare void @_PyTime_gettimeofday_info(%struct.timeval*, %struct._Py_clock_info_t*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyclock(%struct._Py_clock_info_t* %info) #0 {
entry:
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8
  %0 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %call = call %struct._object* @floatclock(%struct._Py_clock_info_t* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @floatclock(%struct._Py_clock_info_t* %info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %value = alloca i64, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8
  %call = call i64 @clock() #4
  store i64 %call, i64* %value, align 8
  %0 = load i64, i64* %value, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.21, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %tobool = icmp ne %struct._Py_clock_info_t* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8** %implementation, align 8
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %4, i32 0, i32 3
  store double 1.000000e-06, double* %resolution, align 8
  %5 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %5, i32 0, i32 1
  store i32 1, i32* %monotonic, align 4
  %6 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %6, i32 0, i32 2
  store i32 0, i32* %adjustable, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %7 = load i64, i64* %value, align 8
  %conv = sitofp i64 %7 to double
  %div = fdiv double %conv, 1.000000e+06
  %call3 = call %struct._object* @PyFloat_FromDouble(double %div)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind
declare i64 @clock() #2

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare i32 @_PyTime_ObjectToTimespec(%struct._object*, i64*, i64*, i32) #1

; Function Attrs: nounwind
declare i32 @clock_settime(i32, %struct.timespec*) #2

; Function Attrs: nounwind uwtable
define internal i32 @floatsleep(double %secs) #0 {
entry:
  %retval = alloca i32, align 4
  %secs.addr = alloca double, align 8
  %t = alloca %struct.timeval, align 8
  %frac = alloca double, align 8
  %err = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store double %secs, double* %secs.addr, align 8
  %0 = load double, double* %secs.addr, align 8
  %call = call double @fmod(double %0, double 1.000000e+00) #4
  store double %call, double* %frac, align 8
  %1 = load double, double* %secs.addr, align 8
  %call1 = call double @floor(double %1) #6
  store double %call1, double* %secs.addr, align 8
  %2 = load double, double* %secs.addr, align 8
  %conv = fptosi double %2 to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %3 = load double, double* %frac, align 8
  %mul = fmul double %3, 1.000000e+06
  %conv2 = fptosi double %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 1
  store i64 %conv2, i64* %tv_usec, align 8
  %call3 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call3, %struct._ts** %_save, align 8
  %call4 = call i32 @select(i32 0, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %t)
  store i32 %call4, i32* %err, align 4
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  %5 = load i32, i32* %err, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %call6 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call6, align 4
  %cmp7 = icmp eq i32 %6, 4
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %call10 = call i32 @PyErr_CheckSignals()
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.9
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %7 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %7)
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.else, %if.then.11
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @PyErr_CheckSignals() #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_time_t_args(%struct._object* %args, i8* %format, i64* %pwhen) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %pwhen.addr = alloca i64*, align 8
  %ot = alloca %struct._object*, align 8
  %whent = alloca i64, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i64* %pwhen, i64** %pwhen.addr, align 8
  store %struct._object* null, %struct._object** %ot, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* %1, %struct._object** %ot)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ot, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %ot, align 8
  %cmp1 = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %call3 = call i64 @time(i64* null) #4
  store i64 %call3, i64* %whent, align 8
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %ot, align 8
  %call4 = call i32 @_PyTime_ObjectToTime_t(%struct._object* %4, i64* %whent, i32 0)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  %5 = load i64, i64* %whent, align 8
  %6 = load i64*, i64** %pwhen.addr, align 8
  store i64 %5, i64* %6, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @tmtotuple(%struct.tm* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.tm*, align 8
  %v = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tm* %p, %struct.tm** %p.addr, align 8
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @StructTimeType)
  store %struct._object* %call, %struct._object** %v, align 8
  %0 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %2 = load i32, i32* %tm_year, align 4
  %conv = sext i32 %2 to i64
  %add = add i64 %conv, 1900
  %call1 = call %struct._object* @PyLong_FromLong(i64 %add)
  %3 = load %struct._object*, %struct._object** %v, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %call1, %struct._object** %arrayidx, align 8
  %5 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %6 = load i32, i32* %tm_mon, align 4
  %conv2 = sext i32 %6 to i64
  %add3 = add i64 %conv2, 1
  %call4 = call %struct._object* @PyLong_FromLong(i64 %add3)
  %7 = load %struct._object*, %struct._object** %v, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1
  %arrayidx6 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item5, i32 0, i64 1
  store %struct._object* %call4, %struct._object** %arrayidx6, align 8
  %9 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 3
  %10 = load i32, i32* %tm_mday, align 4
  %conv7 = sext i32 %10 to i64
  %call8 = call %struct._object* @PyLong_FromLong(i64 %conv7)
  %11 = load %struct._object*, %struct._object** %v, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item9 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx10 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item9, i32 0, i64 2
  store %struct._object* %call8, %struct._object** %arrayidx10, align 8
  %13 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %14 = load i32, i32* %tm_hour, align 4
  %conv11 = sext i32 %14 to i64
  %call12 = call %struct._object* @PyLong_FromLong(i64 %conv11)
  %15 = load %struct._object*, %struct._object** %v, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 3
  store %struct._object* %call12, %struct._object** %arrayidx14, align 8
  %17 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 1
  %18 = load i32, i32* %tm_min, align 4
  %conv15 = sext i32 %18 to i64
  %call16 = call %struct._object* @PyLong_FromLong(i64 %conv15)
  %19 = load %struct._object*, %struct._object** %v, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 4
  store %struct._object* %call16, %struct._object** %arrayidx18, align 8
  %21 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 0
  %22 = load i32, i32* %tm_sec, align 4
  %conv19 = sext i32 %22 to i64
  %call20 = call %struct._object* @PyLong_FromLong(i64 %conv19)
  %23 = load %struct._object*, %struct._object** %v, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx22 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item21, i32 0, i64 5
  store %struct._object* %call20, %struct._object** %arrayidx22, align 8
  %25 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 6
  %26 = load i32, i32* %tm_wday, align 4
  %add23 = add i32 %26, 6
  %conv24 = sext i32 %add23 to i64
  %rem = srem i64 %conv24, 7
  %call25 = call %struct._object* @PyLong_FromLong(i64 %rem)
  %27 = load %struct._object*, %struct._object** %v, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item26 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx27 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item26, i32 0, i64 6
  store %struct._object* %call25, %struct._object** %arrayidx27, align 8
  %29 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 7
  %30 = load i32, i32* %tm_yday, align 4
  %conv28 = sext i32 %30 to i64
  %add29 = add i64 %conv28, 1
  %call30 = call %struct._object* @PyLong_FromLong(i64 %add29)
  %31 = load %struct._object*, %struct._object** %v, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item31 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx32 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item31, i32 0, i64 7
  store %struct._object* %call30, %struct._object** %arrayidx32, align 8
  %33 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 8
  %34 = load i32, i32* %tm_isdst, align 4
  %conv33 = sext i32 %34 to i64
  %call34 = call %struct._object* @PyLong_FromLong(i64 %conv33)
  %35 = load %struct._object*, %struct._object** %v, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*
  %ob_item35 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1
  %arrayidx36 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item35, i32 0, i64 8
  store %struct._object* %call34, %struct._object** %arrayidx36, align 8
  %37 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_zone = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 10
  %38 = load i8*, i8** %tm_zone, align 8
  %call37 = call %struct._object* @PyUnicode_DecodeLocale(i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0))
  %39 = load %struct._object*, %struct._object** %v, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item38 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx39 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item38, i32 0, i64 9
  store %struct._object* %call37, %struct._object** %arrayidx39, align 8
  %41 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_gmtoff = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 9
  %42 = load i64, i64* %tm_gmtoff, align 8
  %call40 = call %struct._object* @PyLong_FromLong(i64 %42)
  %43 = load %struct._object*, %struct._object** %v, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*
  %ob_item41 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1
  %arrayidx42 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item41, i32 0, i64 10
  store %struct._object* %call40, %struct._object** %arrayidx42, align 8
  %call43 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call43, null
  br i1 %tobool, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.44
  %45 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %45, %struct._object** %_py_xdecref_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp45 = icmp ne %struct._object* %46, null
  br i1 %cmp45, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %do.body
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %49, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp49 = icmp ne i64 %dec, 0
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %do.body.48
  br label %if.end.52

if.else:                                          ; preds = %do.body.48
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %52(%struct._object* %53)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.51
  br label %do.end

do.end:                                           ; preds = %if.end.52
  br label %if.end.53

if.end.53:                                        ; preds = %do.end, %do.body
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %if.end
  %54 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %54, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.55, %do.end.54, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare i32 @_PyTime_ObjectToTime_t(%struct._object*, i64*, i32) #1

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal i32 @pylocaltime(i64* %timep, %struct.tm* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %timep.addr = alloca i64*, align 8
  %result.addr = alloca %struct.tm*, align 8
  %local = alloca %struct.tm*, align 8
  store i64* %timep, i64** %timep.addr, align 8
  store %struct.tm* %result, %struct.tm** %result.addr, align 8
  %0 = load i64*, i64** %timep.addr, align 8
  %call = call %struct.tm* @localtime(i64* %0) #4
  store %struct.tm* %call, %struct.tm** %local, align 8
  %1 = load %struct.tm*, %struct.tm** %local, align 8
  %cmp = icmp eq %struct.tm* %1, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #6
  %2 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call4 = call i32* @__errno_location() #6
  store i32 22, i32* %call4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call5 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %entry
  %4 = load %struct.tm*, %struct.tm** %result.addr, align 8
  %5 = load %struct.tm*, %struct.tm** %local, align 8
  %6 = bitcast %struct.tm* %4 to i8*
  %7 = bitcast %struct.tm* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 56, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.end
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @gettmarg(%struct._object* %args, %struct.tm* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %p.addr = alloca %struct.tm*, align 8
  %y = alloca i32, align 4
  %item = alloca %struct._object*, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct.tm* %p, %struct.tm** %p.addr, align 8
  %0 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %1 = bitcast %struct.tm* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 56, i32 1, i1 false)
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %7 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 4
  %8 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %9 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  %10 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  %11 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %12 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 6
  %13 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 7
  %14 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32* %y, i32* %tm_mon, i32* %tm_mday, i32* %tm_hour, i32* %tm_min, i32* %tm_sec, i32* %tm_wday, i32* %tm_yday, i32* %tm_isdst)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %15 = load i32, i32* %y, align 4
  %sub = sub i32 %15, 1900
  %16 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5
  store i32 %sub, i32* %tm_year, align 4
  %17 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_mon3 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 4
  %18 = load i32, i32* %tm_mon3, align 4
  %dec = add i32 %18, -1
  store i32 %dec, i32* %tm_mon3, align 4
  %19 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_wday4 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 6
  %20 = load i32, i32* %tm_wday4, align 4
  %add = add i32 %20, 1
  %rem = srem i32 %add, 7
  %21 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_wday5 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 6
  store i32 %rem, i32* %tm_wday5, align 4
  %22 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_yday6 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 7
  %23 = load i32, i32* %tm_yday6, align 4
  %dec7 = add i32 %23, -1
  store i32 %dec7, i32* %tm_yday6, align 4
  %24 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %cmp9 = icmp eq %struct._typeobject* %25, @StructTimeType
  br i1 %cmp9, label %if.then.10, label %if.end.25

if.then.10:                                       ; preds = %if.end.2
  %26 = load %struct._object*, %struct._object** %args.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 9
  %28 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %28, %struct._object** %item, align 8
  %29 = load %struct._object*, %struct._object** %item, align 8
  %cmp11 = icmp eq %struct._object* %29, @_Py_NoneStruct
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %30 = load %struct._object*, %struct._object** %item, align 8
  %call12 = call i8* @PyUnicode_AsUTF8(%struct._object* %30)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call12, %cond.false ]
  %31 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_zone = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 10
  store i8* %cond, i8** %tm_zone, align 8
  %32 = load %struct._object*, %struct._object** %args.addr, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 10
  %34 = load %struct._object*, %struct._object** %arrayidx14, align 8
  store %struct._object* %34, %struct._object** %item, align 8
  %35 = load %struct._object*, %struct._object** %item, align 8
  %cmp15 = icmp eq %struct._object* %35, @_Py_NoneStruct
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.end
  %36 = load %struct._object*, %struct._object** %item, align 8
  %call18 = call i64 @PyLong_AsLong(%struct._object* %36)
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i64 [ 0, %cond.true.16 ], [ %call18, %cond.false.17 ]
  %37 = load %struct.tm*, %struct.tm** %p.addr, align 8
  %tm_gmtoff = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 9
  store i64 %cond20, i64* %tm_gmtoff, align 8
  %call21 = call %struct._object* @PyErr_Occurred()
  %tobool22 = icmp ne %struct._object* %call21, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %cond.end.19
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %cond.end.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.23, %if.then.1, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @checktm(%struct.tm* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca %struct.tm*, align 8
  store %struct.tm* %buf, %struct.tm** %buf.addr, align 8
  %0 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 4
  %1 = load i32, i32* %tm_mon, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_mon1 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  store i32 0, i32* %tm_mon1, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_mon2 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %4 = load i32, i32* %tm_mon2, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %5 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_mon4 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %6 = load i32, i32* %tm_mon4, align 4
  %cmp5 = icmp sgt i32 %6, 11
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %8 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %9 = load i32, i32* %tm_mday, align 4
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.end.7
  %10 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_mday10 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3
  store i32 1, i32* %tm_mday10, align 4
  br label %if.end.19

if.else.11:                                       ; preds = %if.end.7
  %11 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_mday12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 3
  %12 = load i32, i32* %tm_mday12, align 4
  %cmp13 = icmp slt i32 %12, 0
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.else.11
  %13 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_mday15 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %14 = load i32, i32* %tm_mday15, align 4
  %cmp16 = icmp sgt i32 %14, 31
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.14, %if.else.11
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.9
  %16 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 2
  %17 = load i32, i32* %tm_hour, align 4
  %cmp20 = icmp slt i32 %17, 0
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end.19
  %18 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_hour22 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 2
  %19 = load i32, i32* %tm_hour22, align 4
  %cmp23 = icmp sgt i32 %19, 23
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.21, %if.end.19
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.21
  %21 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 1
  %22 = load i32, i32* %tm_min, align 4
  %cmp26 = icmp slt i32 %22, 0
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.25
  %23 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_min28 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  %24 = load i32, i32* %tm_min28, align 4
  %cmp29 = icmp sgt i32 %24, 59
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.end.25
  %25 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false.27
  %26 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 0
  %27 = load i32, i32* %tm_sec, align 4
  %cmp32 = icmp slt i32 %27, 0
  br i1 %cmp32, label %if.then.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.31
  %28 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_sec34 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 0
  %29 = load i32, i32* %tm_sec34, align 4
  %cmp35 = icmp sgt i32 %29, 61
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.33, %if.end.31
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false.33
  %31 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 6
  %32 = load i32, i32* %tm_wday, align 4
  %cmp38 = icmp slt i32 %32, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  %33 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.37
  %34 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 7
  %35 = load i32, i32* %tm_yday, align 4
  %cmp41 = icmp eq i32 %35, -1
  br i1 %cmp41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.end.40
  %36 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_yday43 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 7
  store i32 0, i32* %tm_yday43, align 4
  br label %if.end.52

if.else.44:                                       ; preds = %if.end.40
  %37 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_yday45 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 7
  %38 = load i32, i32* %tm_yday45, align 4
  %cmp46 = icmp slt i32 %38, 0
  br i1 %cmp46, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.else.44
  %39 = load %struct.tm*, %struct.tm** %buf.addr, align 8
  %tm_yday48 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 7
  %40 = load i32, i32* %tm_yday48, align 4
  %cmp49 = icmp sgt i32 %40, 365
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.47, %if.else.44
  %41 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %lor.lhs.false.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.42
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.50, %if.then.39, %if.then.36, %if.then.30, %if.then.24, %if.then.17, %if.then.6
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_asctime(%struct.tm* %timeptr) #0 {
entry:
  %timeptr.addr = alloca %struct.tm*, align 8
  store %struct.tm* %timeptr, %struct.tm** %timeptr.addr, align 8
  %0 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 6
  %1 = load i32, i32* %tm_wday, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [7 x [4 x i8]], [7 x [4 x i8]]* @_asctime.wday_name, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0
  %2 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  %3 = load i32, i32* %tm_mon, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr [12 x [4 x i8]], [12 x [4 x i8]]* @_asctime.mon_name, i32 0, i64 %idxprom1
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx2, i32 0, i32 0
  %4 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %5 = load i32, i32* %tm_mday, align 4
  %6 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %7 = load i32, i32* %tm_hour, align 4
  %8 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %9 = load i32, i32* %tm_min, align 4
  %10 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %11 = load i32, i32* %tm_sec, align 4
  %12 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 5
  %13 = load i32, i32* %tm_year, align 4
  %add = add i32 1900, %13
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay, i8* %arraydecay3, i32 %5, i32 %7, i32 %9, i32 %11, i32 %add)
  ret %struct._object* %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #2

declare i32* @PyUnicode_AsWideCharString(%struct._object*, i64*) #1

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #5

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare i64 @wcsftime(i32*, i64, i32*, %struct.tm*) #2

declare %struct._object* @PyUnicode_FromWideChar(i32*, i64) #1

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

; Function Attrs: nounwind
declare void @tzset() #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @pymonotonic(%struct._Py_clock_info_t* %info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %tp = alloca %struct.timespec, align 8
  %clk_id = alloca i32, align 4
  %function = alloca i8*, align 8
  %res = alloca %struct.timespec, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8
  store i32 1, i32* %clk_id, align 4
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i8** %function, align 8
  %call = call i32 @clock_gettime(i32 1, %struct.timespec* %tp) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call1 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %0)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %tobool = icmp ne %struct._Py_clock_info_t* %1, null
  br i1 %tobool, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %2, i32 0, i32 1
  store i32 1, i32* %monotonic, align 4
  %3 = load i8*, i8** %function, align 8
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %4, i32 0, i32 0
  store i8* %3, i8** %implementation, align 8
  %5 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %5, i32 0, i32 2
  store i32 0, i32* %adjustable, align 4
  %call3 = call i32 @clock_getres(i32 1, %struct.timespec* %res) #4
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 0
  %6 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %6 to double
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 1
  %7 = load i64, i64* %tv_nsec, align 8
  %conv6 = sitofp i64 %7 to double
  %mul = fmul double %conv6, 1.000000e-09
  %add = fadd double %conv, %mul
  %8 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %8, i32 0, i32 3
  store double %add, double* %resolution, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.then.2
  %9 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution7 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %9, i32 0, i32 3
  store double 1.000000e-09, double* %resolution7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %tv_sec10 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0
  %10 = load i64, i64* %tv_sec10, align 8
  %conv11 = sitofp i64 %10 to double
  %tv_nsec12 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1
  %11 = load i64, i64* %tv_nsec12, align 8
  %conv13 = sitofp i64 %11 to double
  %mul14 = fmul double %conv13, 1.000000e-09
  %add15 = fadd double %conv11, %mul14
  %call16 = call %struct._object* @PyFloat_FromDouble(double %add15)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_process_time(%struct._Py_clock_info_t* %info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %ru = alloca %struct.rusage, align 8
  %t = alloca %struct.tms, align 8
  %tp = alloca %struct.timespec, align 8
  %clk_id = alloca i32, align 4
  %function = alloca i8*, align 8
  %res = alloca %struct.timespec, align 8
  %total = alloca double, align 8
  %total47 = alloca double, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8
  store i32 2, i32* %clk_id, align 4
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i32 0, i32 0), i8** %function, align 8
  %call = call i32 @clock_gettime(i32 2, %struct.timespec* %tp) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %0 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %tobool = icmp ne %struct._Py_clock_info_t* %0, null
  br i1 %tobool, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %if.then
  %1 = load i8*, i8** %function, align 8
  %2 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %2, i32 0, i32 0
  store i8* %1, i8** %implementation, align 8
  %3 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %3, i32 0, i32 1
  store i32 1, i32* %monotonic, align 4
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %4, i32 0, i32 2
  store i32 0, i32* %adjustable, align 4
  %call2 = call i32 @clock_getres(i32 2, %struct.timespec* %res) #4
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.1
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 0
  %5 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %5 to double
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 1
  %6 = load i64, i64* %tv_nsec, align 8
  %conv5 = sitofp i64 %6 to double
  %mul = fmul double %conv5, 1.000000e-09
  %add = fadd double %conv, %mul
  %7 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %7, i32 0, i32 3
  store double %add, double* %resolution, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.1
  %8 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution6 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %8, i32 0, i32 3
  store double 1.000000e-09, double* %resolution6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %tv_sec8 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0
  %9 = load i64, i64* %tv_sec8, align 8
  %conv9 = sitofp i64 %9 to double
  %tv_nsec10 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1
  %10 = load i64, i64* %tv_nsec10, align 8
  %conv11 = sitofp i64 %10 to double
  %mul12 = fmul double %conv11, 1.000000e-09
  %add13 = fadd double %conv9, %mul12
  %call14 = call %struct._object* @PyFloat_FromDouble(double %add13)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %entry
  %call16 = call i32 @getrusage(i32 0, %struct.rusage* %ru) #4
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.42

if.then.19:                                       ; preds = %if.end.15
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0
  %tv_sec20 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0
  %11 = load i64, i64* %tv_sec20, align 8
  %conv21 = sitofp i64 %11 to double
  %ru_utime22 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime22, i32 0, i32 1
  %12 = load i64, i64* %tv_usec, align 8
  %conv23 = sitofp i64 %12 to double
  %mul24 = fmul double %conv23, 1.000000e-06
  %add25 = fadd double %conv21, %mul24
  store double %add25, double* %total, align 8
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1
  %tv_sec26 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime, i32 0, i32 0
  %13 = load i64, i64* %tv_sec26, align 8
  %conv27 = sitofp i64 %13 to double
  %ru_stime28 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1
  %tv_usec29 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime28, i32 0, i32 1
  %14 = load i64, i64* %tv_usec29, align 8
  %conv30 = sitofp i64 %14 to double
  %mul31 = fmul double %conv30, 1.000000e-06
  %add32 = fadd double %conv27, %mul31
  %15 = load double, double* %total, align 8
  %add33 = fadd double %15, %add32
  store double %add33, double* %total, align 8
  %16 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %tobool34 = icmp ne %struct._Py_clock_info_t* %16, null
  br i1 %tobool34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.then.19
  %17 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %implementation36 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), i8** %implementation36, align 8
  %18 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %monotonic37 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %18, i32 0, i32 1
  store i32 1, i32* %monotonic37, align 4
  %19 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %adjustable38 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %19, i32 0, i32 2
  store i32 0, i32* %adjustable38, align 4
  %20 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution39 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %20, i32 0, i32 3
  store double 1.000000e-06, double* %resolution39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %if.then.19
  %21 = load double, double* %total, align 8
  %call41 = call %struct._object* @PyFloat_FromDouble(double %21)
  store %struct._object* %call41, %struct._object** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.15
  %call43 = call i64 @times(%struct.tms* %t) #4
  %cmp44 = icmp ne i64 %call43, -1
  br i1 %cmp44, label %if.then.46, label %if.end.77

if.then.46:                                       ; preds = %if.end.42
  %22 = load i64, i64* @py_process_time.ticks_per_second, align 8
  %cmp48 = icmp eq i64 %22, -1
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.then.46
  %call51 = call i64 @sysconf(i32 2) #4
  store i64 %call51, i64* @py_process_time.ticks_per_second, align 8
  %23 = load i64, i64* @py_process_time.ticks_per_second, align 8
  %cmp52 = icmp slt i64 %23, 1
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.50
  store i64 -1, i64* @py_process_time.ticks_per_second, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.46
  %24 = load i64, i64* @py_process_time.ticks_per_second, align 8
  %cmp57 = icmp ne i64 %24, -1
  br i1 %cmp57, label %if.then.59, label %if.end.76

if.then.59:                                       ; preds = %if.end.56
  %tms_utime = getelementptr inbounds %struct.tms, %struct.tms* %t, i32 0, i32 0
  %25 = load i64, i64* %tms_utime, align 8
  %conv60 = sitofp i64 %25 to double
  %26 = load i64, i64* @py_process_time.ticks_per_second, align 8
  %conv61 = sitofp i64 %26 to double
  %div = fdiv double %conv60, %conv61
  store double %div, double* %total47, align 8
  %tms_stime = getelementptr inbounds %struct.tms, %struct.tms* %t, i32 0, i32 1
  %27 = load i64, i64* %tms_stime, align 8
  %conv62 = sitofp i64 %27 to double
  %28 = load i64, i64* @py_process_time.ticks_per_second, align 8
  %conv63 = sitofp i64 %28 to double
  %div64 = fdiv double %conv62, %conv63
  %29 = load double, double* %total47, align 8
  %add65 = fadd double %29, %div64
  store double %add65, double* %total47, align 8
  %30 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %tobool66 = icmp ne %struct._Py_clock_info_t* %30, null
  br i1 %tobool66, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %if.then.59
  %31 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %implementation68 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8** %implementation68, align 8
  %32 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %monotonic69 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %32, i32 0, i32 1
  store i32 1, i32* %monotonic69, align 4
  %33 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %adjustable70 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %33, i32 0, i32 2
  store i32 0, i32* %adjustable70, align 4
  %34 = load i64, i64* @py_process_time.ticks_per_second, align 8
  %conv71 = sitofp i64 %34 to double
  %div72 = fdiv double 1.000000e+00, %conv71
  %35 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution73 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %35, i32 0, i32 3
  store double %div72, double* %resolution73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.67, %if.then.59
  %36 = load double, double* %total47, align 8
  %call75 = call %struct._object* @PyFloat_FromDouble(double %36)
  store %struct._object* %call75, %struct._object** %retval
  br label %return

if.end.76:                                        ; preds = %if.end.56
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.42
  %37 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %call78 = call %struct._object* @floatclock(%struct._Py_clock_info_t* %37)
  store %struct._object* %call78, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.end.74, %if.end.40, %if.end.7
  %38 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %38
}

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #2

; Function Attrs: nounwind
declare i64 @times(%struct.tms*) #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @perf_counter(%struct._Py_clock_info_t* %info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %res = alloca %struct._object*, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8
  %0 = load i32, i32* @perf_counter.use_monotonic, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %1 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %call = call %struct._object* @pymonotonic(%struct._Py_clock_info_t* %1)
  store %struct._object* %call, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, i32* @perf_counter.use_monotonic, align 4
  call void @PyErr_Clear()
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %call3 = call %struct._object* @floattime(%struct._Py_clock_info_t* %4)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare void @PyErr_Clear() #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare %struct._object* @PyDict_New() #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare %struct._object* @_PyNamespace_New(%struct._object*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare %struct._object* @Py_BuildValue(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
