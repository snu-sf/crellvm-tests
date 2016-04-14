; ModuleID = 'programs_new/Python-new/timemodule.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !1253
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1253
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !612, metadata !1254), !dbg !1255
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @timemodule, i32 1013), !dbg !1256
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1257, !tbaa !1258
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !1262, !tbaa !1258
  %cmp = icmp eq %struct._object* %1, null, !dbg !1264
  br i1 %cmp, label %if.then, label %if.end, !dbg !1265

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1266
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1266

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !1267, !tbaa !1258
  call void @PyInit_timezone(%struct._object* %2), !dbg !1268
  %3 = load i32, i32* @initialized, align 4, !dbg !1269, !tbaa !1271
  %tobool = icmp ne i32 %3, 0, !dbg !1269
  br i1 %tobool, label %if.end.6, label %if.then.1, !dbg !1273

if.then.1:                                        ; preds = %if.end
  %call2 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StructTimeType, %struct.PyStructSequence_Desc* @struct_time_type_desc), !dbg !1274
  %cmp3 = icmp slt i32 %call2, 0, !dbg !1277
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1278

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !1279
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1279

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6, !dbg !1280

if.end.6:                                         ; preds = %if.end.5, %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructTimeType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1281, !tbaa !1282
  %inc = add i64 %4, 1, !dbg !1281
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructTimeType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1281, !tbaa !1282
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !1285, !tbaa !1258
  %call7 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i64 11), !dbg !1286
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !1287, !tbaa !1258
  %call8 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructTimeType, i32 0, i32 0, i32 0)), !dbg !1288
  store i32 1, i32* @initialized, align 4, !dbg !1289, !tbaa !1271
  %7 = load %struct._object*, %struct._object** %m, align 8, !dbg !1290, !tbaa !1258
  store %struct._object* %7, %struct._object** %retval, !dbg !1291
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1291

cleanup:                                          ; preds = %if.end.6, %if.then.4, %if.then
  %8 = bitcast %struct._object** %m to i8*, !dbg !1292
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1292
  %9 = load %struct._object*, %struct._object** %retval, !dbg !1292
  ret %struct._object* %9, !dbg !1292
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

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
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !1094, metadata !1254), !dbg !1293
  %0 = bitcast i64* %t to i8*, !dbg !1294
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1294
  call void @llvm.dbg.declare(metadata i64* %t, metadata !1095, metadata !1254), !dbg !1295
  %1 = bitcast %struct.tm** %p to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1296
  call void @llvm.dbg.declare(metadata %struct.tm** %p, metadata !1097, metadata !1254), !dbg !1297
  %2 = bitcast i64* %janzone to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1298
  call void @llvm.dbg.declare(metadata i64* %janzone, metadata !1098, metadata !1254), !dbg !1299
  %3 = bitcast i64* %julyzone to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1298
  call void @llvm.dbg.declare(metadata i64* %julyzone, metadata !1099, metadata !1254), !dbg !1300
  %4 = bitcast [10 x i8]* %janname to i8*, !dbg !1301
  call void @llvm.lifetime.start(i64 10, i8* %4) #1, !dbg !1301
  call void @llvm.dbg.declare(metadata [10 x i8]* %janname, metadata !1100, metadata !1254), !dbg !1302
  %5 = bitcast [10 x i8]* %julyname to i8*, !dbg !1301
  call void @llvm.lifetime.start(i64 10, i8* %5) #1, !dbg !1301
  call void @llvm.dbg.declare(metadata [10 x i8]* %julyname, metadata !1104, metadata !1254), !dbg !1303
  %call = call i64 @time(i64* null) #1, !dbg !1304
  %div = sdiv i64 %call, 31557600, !dbg !1305
  %mul = mul i64 %div, 31557600, !dbg !1306
  store i64 %mul, i64* %t, align 8, !dbg !1307, !tbaa !1308
  %call1 = call %struct.tm* @localtime(i64* %t) #1, !dbg !1309
  store %struct.tm* %call1, %struct.tm** %p, align 8, !dbg !1310, !tbaa !1258
  %6 = load %struct.tm*, %struct.tm** %p, align 8, !dbg !1311, !tbaa !1258
  %tm_gmtoff = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 9, !dbg !1312
  %7 = load i64, i64* %tm_gmtoff, align 8, !dbg !1312, !tbaa !1313
  %sub = sub i64 0, %7, !dbg !1315
  store i64 %sub, i64* %janzone, align 8, !dbg !1316, !tbaa !1308
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %janname, i32 0, i32 0, !dbg !1317
  %8 = load %struct.tm*, %struct.tm** %p, align 8, !dbg !1318, !tbaa !1258
  %tm_zone = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 10, !dbg !1319
  %9 = load i8*, i8** %tm_zone, align 8, !dbg !1319, !tbaa !1320
  %tobool = icmp ne i8* %9, null, !dbg !1318
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1318

cond.true:                                        ; preds = %entry
  %10 = load %struct.tm*, %struct.tm** %p, align 8, !dbg !1321, !tbaa !1258
  %tm_zone2 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 10, !dbg !1323
  %11 = load i8*, i8** %tm_zone2, align 8, !dbg !1323, !tbaa !1320
  br label %cond.end, !dbg !1318

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1324

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), %cond.false ], !dbg !1318
  %call3 = call i8* @strncpy(i8* %arraydecay, i8* %cond, i64 9) #1, !dbg !1326
  %arrayidx = getelementptr [10 x i8], [10 x i8]* %janname, i32 0, i64 9, !dbg !1329
  store i8 0, i8* %arrayidx, align 1, !dbg !1330, !tbaa !1331
  %12 = load i64, i64* %t, align 8, !dbg !1332, !tbaa !1308
  %add = add i64 %12, 15778800, !dbg !1332
  store i64 %add, i64* %t, align 8, !dbg !1332, !tbaa !1308
  %call4 = call %struct.tm* @localtime(i64* %t) #1, !dbg !1333
  store %struct.tm* %call4, %struct.tm** %p, align 8, !dbg !1334, !tbaa !1258
  %13 = load %struct.tm*, %struct.tm** %p, align 8, !dbg !1335, !tbaa !1258
  %tm_gmtoff5 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 9, !dbg !1336
  %14 = load i64, i64* %tm_gmtoff5, align 8, !dbg !1336, !tbaa !1313
  %sub6 = sub i64 0, %14, !dbg !1337
  store i64 %sub6, i64* %julyzone, align 8, !dbg !1338, !tbaa !1308
  %arraydecay7 = getelementptr inbounds [10 x i8], [10 x i8]* %julyname, i32 0, i32 0, !dbg !1339
  %15 = load %struct.tm*, %struct.tm** %p, align 8, !dbg !1340, !tbaa !1258
  %tm_zone8 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 10, !dbg !1341
  %16 = load i8*, i8** %tm_zone8, align 8, !dbg !1341, !tbaa !1320
  %tobool9 = icmp ne i8* %16, null, !dbg !1340
  br i1 %tobool9, label %cond.true.10, label %cond.false.12, !dbg !1340

cond.true.10:                                     ; preds = %cond.end
  %17 = load %struct.tm*, %struct.tm** %p, align 8, !dbg !1342, !tbaa !1258
  %tm_zone11 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 10, !dbg !1343
  %18 = load i8*, i8** %tm_zone11, align 8, !dbg !1343, !tbaa !1320
  br label %cond.end.13, !dbg !1340

cond.false.12:                                    ; preds = %cond.end
  br label %cond.end.13, !dbg !1344

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.10
  %cond14 = phi i8* [ %18, %cond.true.10 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), %cond.false.12 ], !dbg !1340
  %call15 = call i8* @strncpy(i8* %arraydecay7, i8* %cond14, i64 9) #1, !dbg !1345
  %arrayidx16 = getelementptr [10 x i8], [10 x i8]* %julyname, i32 0, i64 9, !dbg !1346
  store i8 0, i8* %arrayidx16, align 1, !dbg !1347, !tbaa !1331
  %19 = load i64, i64* %janzone, align 8, !dbg !1348, !tbaa !1308
  %20 = load i64, i64* %julyzone, align 8, !dbg !1350, !tbaa !1308
  %cmp = icmp slt i64 %19, %20, !dbg !1351
  br i1 %cmp, label %if.then, label %if.else, !dbg !1352

if.then:                                          ; preds = %cond.end.13
  %21 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1353, !tbaa !1258
  %22 = load i64, i64* %julyzone, align 8, !dbg !1355, !tbaa !1308
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i64 %22), !dbg !1356
  %23 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1357, !tbaa !1258
  %24 = load i64, i64* %janzone, align 8, !dbg !1358, !tbaa !1308
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i64 %24), !dbg !1359
  %25 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1360, !tbaa !1258
  %26 = load i64, i64* %janzone, align 8, !dbg !1361, !tbaa !1308
  %27 = load i64, i64* %julyzone, align 8, !dbg !1362, !tbaa !1308
  %cmp19 = icmp ne i64 %26, %27, !dbg !1363
  %conv = zext i1 %cmp19 to i32, !dbg !1363
  %conv20 = sext i32 %conv to i64, !dbg !1361
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i64 %conv20), !dbg !1364
  %28 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1365, !tbaa !1258
  %arraydecay22 = getelementptr inbounds [10 x i8], [10 x i8]* %julyname, i32 0, i32 0, !dbg !1366
  %arraydecay23 = getelementptr inbounds [10 x i8], [10 x i8]* %janname, i32 0, i32 0, !dbg !1367
  %call24 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* %arraydecay22, i8* %arraydecay23), !dbg !1368
  %call25 = call i32 @PyModule_AddObject(%struct._object* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), %struct._object* %call24), !dbg !1369
  br label %if.end, !dbg !1370

if.else:                                          ; preds = %cond.end.13
  %29 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1371, !tbaa !1258
  %30 = load i64, i64* %janzone, align 8, !dbg !1373, !tbaa !1308
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i64 %30), !dbg !1374
  %31 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1375, !tbaa !1258
  %32 = load i64, i64* %julyzone, align 8, !dbg !1376, !tbaa !1308
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i64 %32), !dbg !1377
  %33 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1378, !tbaa !1258
  %34 = load i64, i64* %janzone, align 8, !dbg !1379, !tbaa !1308
  %35 = load i64, i64* %julyzone, align 8, !dbg !1380, !tbaa !1308
  %cmp28 = icmp ne i64 %34, %35, !dbg !1381
  %conv29 = zext i1 %cmp28 to i32, !dbg !1381
  %conv30 = sext i32 %conv29 to i64, !dbg !1379
  %call31 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i64 %conv30), !dbg !1382
  %36 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1383, !tbaa !1258
  %arraydecay32 = getelementptr inbounds [10 x i8], [10 x i8]* %janname, i32 0, i32 0, !dbg !1384
  %arraydecay33 = getelementptr inbounds [10 x i8], [10 x i8]* %julyname, i32 0, i32 0, !dbg !1385
  %call34 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* %arraydecay32, i8* %arraydecay33), !dbg !1386
  %call35 = call i32 @PyModule_AddObject(%struct._object* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), %struct._object* %call34), !dbg !1387
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = bitcast [10 x i8]* %julyname to i8*, !dbg !1388
  call void @llvm.lifetime.end(i64 10, i8* %37) #1, !dbg !1388
  %38 = bitcast [10 x i8]* %janname to i8*, !dbg !1388
  call void @llvm.lifetime.end(i64 10, i8* %38) #1, !dbg !1388
  %39 = bitcast i64* %julyzone to i8*, !dbg !1388
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !1388
  %40 = bitcast i64* %janzone to i8*, !dbg !1388
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !1388
  %41 = bitcast %struct.tm** %p to i8*, !dbg !1388
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !1388
  %42 = bitcast i64* %t to i8*, !dbg !1388
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !1388
  %43 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1389, !tbaa !1258
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i64 0), !dbg !1390
  %44 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1391, !tbaa !1258
  %call37 = call i32 @PyModule_AddIntConstant(%struct._object* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i64 1), !dbg !1392
  %45 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1393, !tbaa !1258
  %call38 = call i32 @PyModule_AddIntConstant(%struct._object* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0), i64 4), !dbg !1394
  %46 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1395, !tbaa !1258
  %call39 = call i32 @PyModule_AddIntConstant(%struct._object* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), i64 2), !dbg !1396
  %47 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1397, !tbaa !1258
  %call40 = call i32 @PyModule_AddIntConstant(%struct._object* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i32 0, i32 0), i64 3), !dbg !1398
  ret void, !dbg !1399
}

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_time(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !615, metadata !1254), !dbg !1400
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !616, metadata !1254), !dbg !1401
  %call = call %struct._object* @floattime(%struct._Py_clock_info_t* null), !dbg !1402
  ret %struct._object* %call, !dbg !1403
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_clock(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !652, metadata !1254), !dbg !1404
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !653, metadata !1254), !dbg !1405
  %call = call %struct._object* @pyclock(%struct._Py_clock_info_t* null), !dbg !1406
  ret %struct._object* %call, !dbg !1407
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !663, metadata !1254), !dbg !1408
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !664, metadata !1254), !dbg !1409
  %0 = bitcast i32* %ret to i8*, !dbg !1410
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1410
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !665, metadata !1254), !dbg !1411
  %1 = bitcast i32* %clk_id to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1412
  call void @llvm.dbg.declare(metadata i32* %clk_id, metadata !666, metadata !1254), !dbg !1413
  %2 = bitcast %struct.timespec* %tp to i8*, !dbg !1414
  call void @llvm.lifetime.start(i64 16, i8* %2) #1, !dbg !1414
  call void @llvm.dbg.declare(metadata %struct.timespec* %tp, metadata !667, metadata !1254), !dbg !1415
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1416, !tbaa !1258
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32* %clk_id), !dbg !1418
  %tobool = icmp ne i32 %call, 0, !dbg !1418
  br i1 %tobool, label %if.end, label %if.then, !dbg !1419

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1420
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1420

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %clk_id, align 4, !dbg !1421, !tbaa !1271
  %call1 = call i32 @clock_gettime(i32 %4, %struct.timespec* %tp) #1, !dbg !1422
  store i32 %call1, i32* %ret, align 4, !dbg !1423, !tbaa !1271
  %5 = load i32, i32* %ret, align 4, !dbg !1424, !tbaa !1271
  %cmp = icmp ne i32 %5, 0, !dbg !1426
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !1427

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1428, !tbaa !1258
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6), !dbg !1430
  store %struct._object* null, %struct._object** %retval, !dbg !1431
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1431

if.end.4:                                         ; preds = %if.end
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0, !dbg !1432
  %7 = load i64, i64* %tv_sec, align 8, !dbg !1432, !tbaa !1433
  %conv = sitofp i64 %7 to double, !dbg !1435
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1, !dbg !1436
  %8 = load i64, i64* %tv_nsec, align 8, !dbg !1436, !tbaa !1437
  %conv5 = sitofp i64 %8 to double, !dbg !1438
  %mul = fmul double %conv5, 1.000000e-09, !dbg !1439
  %add = fadd double %conv, %mul, !dbg !1440
  %call6 = call %struct._object* @PyFloat_FromDouble(double %add), !dbg !1441
  store %struct._object* %call6, %struct._object** %retval, !dbg !1442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1442

cleanup:                                          ; preds = %if.end.4, %if.then.2, %if.then
  %9 = bitcast %struct.timespec* %tp to i8*, !dbg !1443
  call void @llvm.lifetime.end(i64 16, i8* %9) #1, !dbg !1443
  %10 = bitcast i32* %clk_id to i8*, !dbg !1443
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !1443
  %11 = bitcast i32* %ret to i8*, !dbg !1443
  call void @llvm.lifetime.end(i64 4, i8* %11) #1, !dbg !1443
  %12 = load %struct._object*, %struct._object** %retval, !dbg !1443
  ret %struct._object* %12, !dbg !1443
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !670, metadata !1254), !dbg !1444
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !671, metadata !1254), !dbg !1445
  %0 = bitcast i32* %clk_id to i8*, !dbg !1446
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1446
  call void @llvm.dbg.declare(metadata i32* %clk_id, metadata !672, metadata !1254), !dbg !1447
  %1 = bitcast %struct._object** %obj to i8*, !dbg !1448
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1448
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !673, metadata !1254), !dbg !1449
  %2 = bitcast i64* %tv_sec to i8*, !dbg !1450
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1450
  call void @llvm.dbg.declare(metadata i64* %tv_sec, metadata !674, metadata !1254), !dbg !1451
  %3 = bitcast i64* %tv_nsec to i8*, !dbg !1452
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1452
  call void @llvm.dbg.declare(metadata i64* %tv_nsec, metadata !675, metadata !1254), !dbg !1453
  %4 = bitcast %struct.timespec* %tp to i8*, !dbg !1454
  call void @llvm.lifetime.start(i64 16, i8* %4) #1, !dbg !1454
  call void @llvm.dbg.declare(metadata %struct.timespec* %tp, metadata !676, metadata !1254), !dbg !1455
  %5 = bitcast i32* %ret to i8*, !dbg !1456
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !1456
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !677, metadata !1254), !dbg !1457
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1458, !tbaa !1258
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i32* %clk_id, %struct._object** %obj), !dbg !1460
  %tobool = icmp ne i32 %call, 0, !dbg !1460
  br i1 %tobool, label %if.end, label %if.then, !dbg !1461

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1462
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1462

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1463, !tbaa !1258
  %call1 = call i32 @_PyTime_ObjectToTimespec(%struct._object* %7, i64* %tv_sec, i64* %tv_nsec, i32 0), !dbg !1465
  %cmp = icmp eq i32 %call1, -1, !dbg !1466
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1467

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1468
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1468

if.end.3:                                         ; preds = %if.end
  %8 = load i64, i64* %tv_sec, align 8, !dbg !1469, !tbaa !1308
  %tv_sec4 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0, !dbg !1470
  store i64 %8, i64* %tv_sec4, align 8, !dbg !1471, !tbaa !1433
  %9 = load i64, i64* %tv_nsec, align 8, !dbg !1472, !tbaa !1308
  %tv_nsec5 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1, !dbg !1473
  store i64 %9, i64* %tv_nsec5, align 8, !dbg !1474, !tbaa !1437
  %10 = load i32, i32* %clk_id, align 4, !dbg !1475, !tbaa !1271
  %call6 = call i32 @clock_settime(i32 %10, %struct.timespec* %tp) #1, !dbg !1476
  store i32 %call6, i32* %ret, align 4, !dbg !1477, !tbaa !1271
  %11 = load i32, i32* %ret, align 4, !dbg !1478, !tbaa !1271
  %cmp7 = icmp ne i32 %11, 0, !dbg !1480
  br i1 %cmp7, label %if.then.8, label %if.end.10, !dbg !1481

if.then.8:                                        ; preds = %if.end.3
  %12 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1482, !tbaa !1258
  %call9 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %12), !dbg !1484
  store %struct._object* null, %struct._object** %retval, !dbg !1485
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1485

if.end.10:                                        ; preds = %if.end.3
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1486, !tbaa !1282
  %inc = add i64 %13, 1, !dbg !1486
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1486, !tbaa !1282
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1487
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1487

cleanup:                                          ; preds = %if.end.10, %if.then.8, %if.then.2, %if.then
  %14 = bitcast i32* %ret to i8*, !dbg !1488
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !1488
  %15 = bitcast %struct.timespec* %tp to i8*, !dbg !1488
  call void @llvm.lifetime.end(i64 16, i8* %15) #1, !dbg !1488
  %16 = bitcast i64* %tv_nsec to i8*, !dbg !1488
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !1488
  %17 = bitcast i64* %tv_sec to i8*, !dbg !1488
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1488
  %18 = bitcast %struct._object** %obj to i8*, !dbg !1488
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !1488
  %19 = bitcast i32* %clk_id to i8*, !dbg !1488
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !1488
  %20 = load %struct._object*, %struct._object** %retval, !dbg !1488
  ret %struct._object* %20, !dbg !1488
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !680, metadata !1254), !dbg !1489
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !681, metadata !1254), !dbg !1490
  %0 = bitcast i32* %ret to i8*, !dbg !1491
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1491
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !682, metadata !1254), !dbg !1492
  %1 = bitcast i32* %clk_id to i8*, !dbg !1493
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1493
  call void @llvm.dbg.declare(metadata i32* %clk_id, metadata !683, metadata !1254), !dbg !1494
  %2 = bitcast %struct.timespec* %tp to i8*, !dbg !1495
  call void @llvm.lifetime.start(i64 16, i8* %2) #1, !dbg !1495
  call void @llvm.dbg.declare(metadata %struct.timespec* %tp, metadata !684, metadata !1254), !dbg !1496
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1497, !tbaa !1258
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i32* %clk_id), !dbg !1499
  %tobool = icmp ne i32 %call, 0, !dbg !1499
  br i1 %tobool, label %if.end, label %if.then, !dbg !1500

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1501
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1501

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %clk_id, align 4, !dbg !1502, !tbaa !1271
  %call1 = call i32 @clock_getres(i32 %4, %struct.timespec* %tp) #1, !dbg !1503
  store i32 %call1, i32* %ret, align 4, !dbg !1504, !tbaa !1271
  %5 = load i32, i32* %ret, align 4, !dbg !1505, !tbaa !1271
  %cmp = icmp ne i32 %5, 0, !dbg !1507
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !1508

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1509, !tbaa !1258
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6), !dbg !1511
  store %struct._object* null, %struct._object** %retval, !dbg !1512
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1512

if.end.4:                                         ; preds = %if.end
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0, !dbg !1513
  %7 = load i64, i64* %tv_sec, align 8, !dbg !1513, !tbaa !1433
  %conv = sitofp i64 %7 to double, !dbg !1514
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1, !dbg !1515
  %8 = load i64, i64* %tv_nsec, align 8, !dbg !1515, !tbaa !1437
  %conv5 = sitofp i64 %8 to double, !dbg !1516
  %mul = fmul double %conv5, 1.000000e-09, !dbg !1517
  %add = fadd double %conv, %mul, !dbg !1518
  %call6 = call %struct._object* @PyFloat_FromDouble(double %add), !dbg !1519
  store %struct._object* %call6, %struct._object** %retval, !dbg !1520
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1520

cleanup:                                          ; preds = %if.end.4, %if.then.2, %if.then
  %9 = bitcast %struct.timespec* %tp to i8*, !dbg !1521
  call void @llvm.lifetime.end(i64 16, i8* %9) #1, !dbg !1521
  %10 = bitcast i32* %clk_id to i8*, !dbg !1521
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !1521
  %11 = bitcast i32* %ret to i8*, !dbg !1521
  call void @llvm.lifetime.end(i64 4, i8* %11) #1, !dbg !1521
  %12 = load %struct._object*, %struct._object** %retval, !dbg !1521
  ret %struct._object* %12, !dbg !1521
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_sleep(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %secs = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !687, metadata !1254), !dbg !1522
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !688, metadata !1254), !dbg !1523
  %0 = bitcast double* %secs to i8*, !dbg !1524
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1524
  call void @llvm.dbg.declare(metadata double* %secs, metadata !689, metadata !1254), !dbg !1525
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1526, !tbaa !1258
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), double* %secs), !dbg !1528
  %tobool = icmp ne i32 %call, 0, !dbg !1528
  br i1 %tobool, label %if.end, label %if.then, !dbg !1529

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1530
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1530

if.end:                                           ; preds = %entry
  %2 = load double, double* %secs, align 8, !dbg !1531, !tbaa !1533
  %cmp = fcmp olt double %2, 0.000000e+00, !dbg !1535
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !1536

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1537, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0)), !dbg !1539
  store %struct._object* null, %struct._object** %retval, !dbg !1540
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1540

if.end.2:                                         ; preds = %if.end
  %4 = load double, double* %secs, align 8, !dbg !1541, !tbaa !1533
  %call3 = call i32 @floatsleep(double %4), !dbg !1543
  %cmp4 = icmp ne i32 %call3, 0, !dbg !1544
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1545

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval, !dbg !1546
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1546

if.end.6:                                         ; preds = %if.end.2
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1547, !tbaa !1282
  %inc = add i64 %5, 1, !dbg !1547
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1547, !tbaa !1282
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1548
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1548

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %6 = bitcast double* %secs to i8*, !dbg !1549
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1549
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1549
  ret %struct._object* %7, !dbg !1549
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !760, metadata !1254), !dbg !1550
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !761, metadata !1254), !dbg !1551
  %0 = bitcast i64* %when to i8*, !dbg !1552
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1552
  call void @llvm.dbg.declare(metadata i64* %when, metadata !762, metadata !1254), !dbg !1553
  %1 = bitcast %struct.tm* %buf to i8*, !dbg !1554
  call void @llvm.lifetime.start(i64 56, i8* %1) #1, !dbg !1554
  call void @llvm.dbg.declare(metadata %struct.tm* %buf, metadata !763, metadata !1254), !dbg !1555
  %2 = bitcast %struct.tm** %local to i8*, !dbg !1554
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1554
  call void @llvm.dbg.declare(metadata %struct.tm** %local, metadata !777, metadata !1254), !dbg !1556
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1557, !tbaa !1258
  %call = call i32 @parse_time_t_args(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i64* %when), !dbg !1559
  %tobool = icmp ne i32 %call, 0, !dbg !1559
  br i1 %tobool, label %if.end, label %if.then, !dbg !1560

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1561
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1561

if.end:                                           ; preds = %entry
  %call1 = call i32* @__errno_location() #2, !dbg !1562
  store i32 0, i32* %call1, align 4, !dbg !1563, !tbaa !1271
  %call2 = call %struct.tm* @gmtime(i64* %when) #1, !dbg !1564
  store %struct.tm* %call2, %struct.tm** %local, align 8, !dbg !1565, !tbaa !1258
  %4 = load %struct.tm*, %struct.tm** %local, align 8, !dbg !1566, !tbaa !1258
  %cmp = icmp eq %struct.tm* %4, null, !dbg !1568
  br i1 %cmp, label %if.then.3, label %if.end.10, !dbg !1569

if.then.3:                                        ; preds = %if.end
  %call4 = call i32* @__errno_location() #2, !dbg !1570
  %5 = load i32, i32* %call4, align 4, !dbg !1573, !tbaa !1271
  %cmp5 = icmp eq i32 %5, 0, !dbg !1574
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !1575

if.then.6:                                        ; preds = %if.then.3
  %call7 = call i32* @__errno_location() #2, !dbg !1576
  store i32 22, i32* %call7, align 4, !dbg !1577, !tbaa !1271
  br label %if.end.8, !dbg !1578

if.end.8:                                         ; preds = %if.then.6, %if.then.3
  %6 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1579, !tbaa !1258
  %call9 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6), !dbg !1580
  store %struct._object* %call9, %struct._object** %retval, !dbg !1581
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1581

if.end.10:                                        ; preds = %if.end
  %7 = load %struct.tm*, %struct.tm** %local, align 8, !dbg !1582, !tbaa !1258
  %8 = bitcast %struct.tm* %buf to i8*, !dbg !1583
  %9 = bitcast %struct.tm* %7 to i8*, !dbg !1583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 56, i32 8, i1 false), !dbg !1583, !tbaa.struct !1584
  %call11 = call %struct._object* @tmtotuple(%struct.tm* %buf), !dbg !1585
  store %struct._object* %call11, %struct._object** %retval, !dbg !1586
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1586

cleanup:                                          ; preds = %if.end.10, %if.end.8, %if.then
  %10 = bitcast %struct.tm** %local to i8*, !dbg !1587
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1587
  %11 = bitcast %struct.tm* %buf to i8*, !dbg !1587
  call void @llvm.lifetime.end(i64 56, i8* %11) #1, !dbg !1587
  %12 = bitcast i64* %when to i8*, !dbg !1587
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !1587
  %13 = load %struct._object*, %struct._object** %retval, !dbg !1587
  ret %struct._object* %13, !dbg !1587
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_localtime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %when = alloca i64, align 8
  %buf = alloca %struct.tm, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !803, metadata !1254), !dbg !1588
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !804, metadata !1254), !dbg !1589
  %0 = bitcast i64* %when to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1590
  call void @llvm.dbg.declare(metadata i64* %when, metadata !805, metadata !1254), !dbg !1591
  %1 = bitcast %struct.tm* %buf to i8*, !dbg !1592
  call void @llvm.lifetime.start(i64 56, i8* %1) #1, !dbg !1592
  call void @llvm.dbg.declare(metadata %struct.tm* %buf, metadata !806, metadata !1254), !dbg !1593
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1594, !tbaa !1258
  %call = call i32 @parse_time_t_args(%struct._object* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i64* %when), !dbg !1596
  %tobool = icmp ne i32 %call, 0, !dbg !1596
  br i1 %tobool, label %if.end, label %if.then, !dbg !1597

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1598
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1598

if.end:                                           ; preds = %entry
  %call1 = call i32 @pylocaltime(i64* %when, %struct.tm* %buf), !dbg !1599
  %cmp = icmp eq i32 %call1, -1, !dbg !1601
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1602

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1603
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1603

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @tmtotuple(%struct.tm* %buf), !dbg !1604
  store %struct._object* %call4, %struct._object** %retval, !dbg !1605
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1605

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %3 = bitcast %struct.tm* %buf to i8*, !dbg !1606
  call void @llvm.lifetime.end(i64 56, i8* %3) #1, !dbg !1606
  %4 = bitcast i64* %when to i8*, !dbg !1606
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !1606
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1606
  ret %struct._object* %5, !dbg !1606
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_asctime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tup = alloca %struct._object*, align 8
  %buf = alloca %struct.tm, align 8
  %cleanup.dest.slot = alloca i32
  %tt = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !816, metadata !1254), !dbg !1607
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !817, metadata !1254), !dbg !1608
  %0 = bitcast %struct._object** %tup to i8*, !dbg !1609
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1609
  call void @llvm.dbg.declare(metadata %struct._object** %tup, metadata !818, metadata !1254), !dbg !1610
  store %struct._object* null, %struct._object** %tup, align 8, !dbg !1610, !tbaa !1258
  %1 = bitcast %struct.tm* %buf to i8*, !dbg !1611
  call void @llvm.lifetime.start(i64 56, i8* %1) #1, !dbg !1611
  call void @llvm.dbg.declare(metadata %struct.tm* %buf, metadata !819, metadata !1254), !dbg !1612
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1613, !tbaa !1258
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i64 0, i64 1, %struct._object** %tup), !dbg !1615
  %tobool = icmp ne i32 %call, 0, !dbg !1615
  br i1 %tobool, label %if.end, label %if.then, !dbg !1616

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1617
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15, !dbg !1617

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1618, !tbaa !1258
  %cmp = icmp eq %struct._object* %3, null, !dbg !1619
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1620

if.then.1:                                        ; preds = %if.end
  %4 = bitcast i64* %tt to i8*, !dbg !1621
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1621
  call void @llvm.dbg.declare(metadata i64* %tt, metadata !820, metadata !1254), !dbg !1622
  %call2 = call i64 @time(i64* null) #1, !dbg !1623
  store i64 %call2, i64* %tt, align 8, !dbg !1622, !tbaa !1308
  %call3 = call i32 @pylocaltime(i64* %tt, %struct.tm* %buf), !dbg !1624
  %cmp4 = icmp eq i32 %call3, -1, !dbg !1626
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1627

if.then.5:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !1628
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1628

if.end.6:                                         ; preds = %if.then.1
  store i32 0, i32* %cleanup.dest.slot, !dbg !1629
  br label %cleanup, !dbg !1629

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %5 = bitcast i64* %tt to i8*, !dbg !1630
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1630
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.13, !dbg !1632

if.else:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1633, !tbaa !1258
  %call7 = call i32 @gettmarg(%struct._object* %6, %struct.tm* %buf), !dbg !1635
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1635
  br i1 %tobool8, label %lor.lhs.false, label %if.then.11, !dbg !1636

lor.lhs.false:                                    ; preds = %if.else
  %call9 = call i32 @checktm(%struct.tm* %buf), !dbg !1637
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1637
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !1639

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !1640
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15, !dbg !1640

if.end.12:                                        ; preds = %lor.lhs.false
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %cleanup.cont
  %call14 = call %struct._object* @_asctime(%struct.tm* %buf), !dbg !1641
  store %struct._object* %call14, %struct._object** %retval, !dbg !1642
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15, !dbg !1642

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.15

cleanup.15:                                       ; preds = %NewDefault, %if.end.13, %if.then.11, %if.then
  %7 = bitcast %struct.tm* %buf to i8*, !dbg !1643
  call void @llvm.lifetime.end(i64 56, i8* %7) #1, !dbg !1643
  %8 = bitcast %struct._object** %tup to i8*, !dbg !1643
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1643
  %9 = load %struct._object*, %struct._object** %retval, !dbg !1643
  ret %struct._object* %9, !dbg !1643
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_ctime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tt = alloca i64, align 8
  %buf = alloca %struct.tm, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !843, metadata !1254), !dbg !1644
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !844, metadata !1254), !dbg !1645
  %0 = bitcast i64* %tt to i8*, !dbg !1646
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1646
  call void @llvm.dbg.declare(metadata i64* %tt, metadata !845, metadata !1254), !dbg !1647
  %1 = bitcast %struct.tm* %buf to i8*, !dbg !1648
  call void @llvm.lifetime.start(i64 56, i8* %1) #1, !dbg !1648
  call void @llvm.dbg.declare(metadata %struct.tm* %buf, metadata !846, metadata !1254), !dbg !1649
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1650, !tbaa !1258
  %call = call i32 @parse_time_t_args(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i64* %tt), !dbg !1652
  %tobool = icmp ne i32 %call, 0, !dbg !1652
  br i1 %tobool, label %if.end, label %if.then, !dbg !1653

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1654
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1654

if.end:                                           ; preds = %entry
  %call1 = call i32 @pylocaltime(i64* %tt, %struct.tm* %buf), !dbg !1655
  %cmp = icmp eq i32 %call1, -1, !dbg !1657
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1658

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1659
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1659

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_asctime(%struct.tm* %buf), !dbg !1660
  store %struct._object* %call4, %struct._object** %retval, !dbg !1661
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1661

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %3 = bitcast %struct.tm* %buf to i8*, !dbg !1662
  call void @llvm.lifetime.end(i64 56, i8* %3) #1, !dbg !1662
  %4 = bitcast i64* %tt to i8*, !dbg !1662
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !1662
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1662
  ret %struct._object* %5, !dbg !1662
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_mktime(%struct._object* %self, %struct._object* %tup) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %tup.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.tm, align 8
  %tt = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !849, metadata !1254), !dbg !1663
  store %struct._object* %tup, %struct._object** %tup.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %tup.addr, metadata !850, metadata !1254), !dbg !1664
  %0 = bitcast %struct.tm* %buf to i8*, !dbg !1665
  call void @llvm.lifetime.start(i64 56, i8* %0) #1, !dbg !1665
  call void @llvm.dbg.declare(metadata %struct.tm* %buf, metadata !851, metadata !1254), !dbg !1666
  %1 = bitcast i64* %tt to i8*, !dbg !1667
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %tt, metadata !852, metadata !1254), !dbg !1668
  %2 = load %struct._object*, %struct._object** %tup.addr, align 8, !dbg !1669, !tbaa !1258
  %call = call i32 @gettmarg(%struct._object* %2, %struct.tm* %buf), !dbg !1671
  %tobool = icmp ne i32 %call, 0, !dbg !1671
  br i1 %tobool, label %if.end, label %if.then, !dbg !1672

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1673
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1673

if.end:                                           ; preds = %entry
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 6, !dbg !1674
  store i32 -1, i32* %tm_wday, align 4, !dbg !1675, !tbaa !1676
  %call1 = call i64 @mktime(%struct.tm* %buf) #1, !dbg !1677
  store i64 %call1, i64* %tt, align 8, !dbg !1678, !tbaa !1308
  %3 = load i64, i64* %tt, align 8, !dbg !1679, !tbaa !1308
  %cmp = icmp eq i64 %3, -1, !dbg !1681
  br i1 %cmp, label %land.lhs.true, label %if.end.5, !dbg !1682

land.lhs.true:                                    ; preds = %if.end
  %tm_wday2 = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 6, !dbg !1683
  %4 = load i32, i32* %tm_wday2, align 4, !dbg !1683, !tbaa !1676
  %cmp3 = icmp eq i32 %4, -1, !dbg !1685
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1686

if.then.4:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1687, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0)), !dbg !1689
  store %struct._object* null, %struct._object** %retval, !dbg !1690
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1690

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i64, i64* %tt, align 8, !dbg !1691, !tbaa !1308
  %conv = sitofp i64 %6 to double, !dbg !1692
  %call6 = call %struct._object* @PyFloat_FromDouble(double %conv), !dbg !1693
  store %struct._object* %call6, %struct._object** %retval, !dbg !1694
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1694

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %7 = bitcast i64* %tt to i8*, !dbg !1695
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !1695
  %8 = bitcast %struct.tm* %buf to i8*, !dbg !1695
  call void @llvm.lifetime.end(i64 56, i8* %8) #1, !dbg !1695
  %9 = load %struct._object*, %struct._object** %retval, !dbg !1695
  ret %struct._object* %9, !dbg !1695
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
  %cleanup.dest.slot = alloca i32
  %tt = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !855, metadata !1254), !dbg !1696
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !856, metadata !1254), !dbg !1697
  %0 = bitcast %struct._object** %tup to i8*, !dbg !1698
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1698
  call void @llvm.dbg.declare(metadata %struct._object** %tup, metadata !857, metadata !1254), !dbg !1699
  store %struct._object* null, %struct._object** %tup, align 8, !dbg !1699, !tbaa !1258
  %1 = bitcast %struct.tm* %buf to i8*, !dbg !1700
  call void @llvm.lifetime.start(i64 56, i8* %1) #1, !dbg !1700
  call void @llvm.dbg.declare(metadata %struct.tm* %buf, metadata !858, metadata !1254), !dbg !1701
  %2 = bitcast i32** %fmt to i8*, !dbg !1702
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1702
  call void @llvm.dbg.declare(metadata i32** %fmt, metadata !859, metadata !1254), !dbg !1703
  %3 = bitcast i32** %format to i8*, !dbg !1704
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1704
  call void @llvm.dbg.declare(metadata i32** %format, metadata !862, metadata !1254), !dbg !1705
  %4 = bitcast %struct._object** %format_arg to i8*, !dbg !1706
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1706
  call void @llvm.dbg.declare(metadata %struct._object** %format_arg, metadata !863, metadata !1254), !dbg !1707
  %5 = bitcast i64* %fmtlen to i8*, !dbg !1708
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1708
  call void @llvm.dbg.declare(metadata i64* %fmtlen, metadata !864, metadata !1254), !dbg !1709
  %6 = bitcast i64* %buflen to i8*, !dbg !1708
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1708
  call void @llvm.dbg.declare(metadata i64* %buflen, metadata !865, metadata !1254), !dbg !1710
  %7 = bitcast i32** %outbuf to i8*, !dbg !1711
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1711
  call void @llvm.dbg.declare(metadata i32** %outbuf, metadata !866, metadata !1254), !dbg !1712
  store i32* null, i32** %outbuf, align 8, !dbg !1712, !tbaa !1258
  %8 = bitcast i64* %i to i8*, !dbg !1713
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !1713
  call void @llvm.dbg.declare(metadata i64* %i, metadata !867, metadata !1254), !dbg !1714
  %9 = bitcast %struct._object** %ret to i8*, !dbg !1715
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1715
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !868, metadata !1254), !dbg !1716
  store %struct._object* null, %struct._object** %ret, align 8, !dbg !1716, !tbaa !1258
  %10 = bitcast %struct.tm* %buf to i8*, !dbg !1717
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 56, i32 1, i1 false), !dbg !1718
  %11 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1719, !tbaa !1258
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), %struct._object** %format_arg, %struct._object** %tup), !dbg !1721
  %tobool = icmp ne i32 %call, 0, !dbg !1721
  br i1 %tobool, label %if.end, label %if.then, !dbg !1722

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1723
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !1723

if.end:                                           ; preds = %entry
  %12 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1724, !tbaa !1258
  %cmp = icmp eq %struct._object* %12, null, !dbg !1725
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1726

if.then.1:                                        ; preds = %if.end
  %13 = bitcast i64* %tt to i8*, !dbg !1727
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !1727
  call void @llvm.dbg.declare(metadata i64* %tt, metadata !869, metadata !1254), !dbg !1728
  %call2 = call i64 @time(i64* null) #1, !dbg !1729
  store i64 %call2, i64* %tt, align 8, !dbg !1728, !tbaa !1308
  %call3 = call i32 @pylocaltime(i64* %tt, %struct.tm* %buf), !dbg !1730
  %cmp4 = icmp eq i32 %call3, -1, !dbg !1732
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1733

if.then.5:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !1734
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1734

if.end.6:                                         ; preds = %if.then.1
  store i32 0, i32* %cleanup.dest.slot, !dbg !1735
  br label %cleanup, !dbg !1735

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %14 = bitcast i64* %tt to i8*, !dbg !1736
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1736
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.13, !dbg !1738

if.else:                                          ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1739, !tbaa !1258
  %call7 = call i32 @gettmarg(%struct._object* %15, %struct.tm* %buf), !dbg !1741
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1741
  br i1 %tobool8, label %lor.lhs.false, label %if.then.11, !dbg !1742

lor.lhs.false:                                    ; preds = %if.else
  %call9 = call i32 @checktm(%struct.tm* %buf), !dbg !1743
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1743
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !1745

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !1746
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !1746

if.end.12:                                        ; preds = %lor.lhs.false
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %cleanup.cont
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 8, !dbg !1747
  %16 = load i32, i32* %tm_isdst, align 4, !dbg !1747, !tbaa !1749
  %cmp14 = icmp slt i32 %16, -1, !dbg !1750
  br i1 %cmp14, label %if.then.15, label %if.else.17, !dbg !1751

if.then.15:                                       ; preds = %if.end.13
  %tm_isdst16 = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 8, !dbg !1752
  store i32 -1, i32* %tm_isdst16, align 4, !dbg !1753, !tbaa !1749
  br label %if.end.23, !dbg !1754

if.else.17:                                       ; preds = %if.end.13
  %tm_isdst18 = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 8, !dbg !1755
  %17 = load i32, i32* %tm_isdst18, align 4, !dbg !1755, !tbaa !1749
  %cmp19 = icmp sgt i32 %17, 1, !dbg !1757
  br i1 %cmp19, label %if.then.20, label %if.end.22, !dbg !1758

if.then.20:                                       ; preds = %if.else.17
  %tm_isdst21 = getelementptr inbounds %struct.tm, %struct.tm* %buf, i32 0, i32 8, !dbg !1759
  store i32 1, i32* %tm_isdst21, align 4, !dbg !1760, !tbaa !1749
  br label %if.end.22, !dbg !1761

if.end.22:                                        ; preds = %if.then.20, %if.else.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.15
  %18 = load %struct._object*, %struct._object** %format_arg, align 8, !dbg !1762, !tbaa !1258
  %call24 = call i32* @PyUnicode_AsWideCharString(%struct._object* %18, i64* null), !dbg !1763
  store i32* %call24, i32** %format, align 8, !dbg !1764, !tbaa !1258
  %19 = load i32*, i32** %format, align 8, !dbg !1765, !tbaa !1258
  %cmp25 = icmp eq i32* %19, null, !dbg !1767
  br i1 %cmp25, label %if.then.26, label %if.end.27, !dbg !1768

if.then.26:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval, !dbg !1769
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !1769

if.end.27:                                        ; preds = %if.end.23
  %20 = load i32*, i32** %format, align 8, !dbg !1770, !tbaa !1258
  store i32* %20, i32** %fmt, align 8, !dbg !1771, !tbaa !1258
  %21 = load i32*, i32** %fmt, align 8, !dbg !1772, !tbaa !1258
  %call28 = call i64 @wcslen(i32* %21) #7, !dbg !1773
  store i64 %call28, i64* %fmtlen, align 8, !dbg !1774, !tbaa !1308
  store i64 1024, i64* %i, align 8, !dbg !1775, !tbaa !1308
  br label %for.cond, !dbg !1777

for.cond:                                         ; preds = %for.inc, %if.end.27
  %22 = load i64, i64* %i, align 8, !dbg !1778, !tbaa !1308
  %mul = mul i64 %22, 4, !dbg !1781
  %call29 = call i8* @PyMem_Malloc(i64 %mul), !dbg !1782
  %23 = bitcast i8* %call29 to i32*, !dbg !1783
  store i32* %23, i32** %outbuf, align 8, !dbg !1784, !tbaa !1258
  %24 = load i32*, i32** %outbuf, align 8, !dbg !1785, !tbaa !1258
  %cmp30 = icmp eq i32* %24, null, !dbg !1787
  br i1 %cmp30, label %if.then.31, label %if.end.33, !dbg !1788

if.then.31:                                       ; preds = %for.cond
  %call32 = call %struct._object* @PyErr_NoMemory(), !dbg !1789
  br label %for.end, !dbg !1791

if.end.33:                                        ; preds = %for.cond
  %25 = load i32*, i32** %outbuf, align 8, !dbg !1792, !tbaa !1258
  %26 = load i64, i64* %i, align 8, !dbg !1793, !tbaa !1308
  %27 = load i32*, i32** %fmt, align 8, !dbg !1794, !tbaa !1258
  %call34 = call i64 @wcsftime(i32* %25, i64 %26, i32* %27, %struct.tm* %buf) #1, !dbg !1795
  store i64 %call34, i64* %buflen, align 8, !dbg !1796, !tbaa !1308
  %28 = load i64, i64* %buflen, align 8, !dbg !1797, !tbaa !1308
  %cmp35 = icmp ugt i64 %28, 0, !dbg !1799
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false.36, !dbg !1800

lor.lhs.false.36:                                 ; preds = %if.end.33
  %29 = load i64, i64* %i, align 8, !dbg !1801, !tbaa !1308
  %30 = load i64, i64* %fmtlen, align 8, !dbg !1803, !tbaa !1308
  %mul37 = mul i64 256, %30, !dbg !1804
  %cmp38 = icmp uge i64 %29, %mul37, !dbg !1805
  br i1 %cmp38, label %if.then.39, label %if.end.41, !dbg !1806

if.then.39:                                       ; preds = %lor.lhs.false.36, %if.end.33
  %31 = load i32*, i32** %outbuf, align 8, !dbg !1807, !tbaa !1258
  %32 = load i64, i64* %buflen, align 8, !dbg !1809, !tbaa !1308
  %call40 = call %struct._object* @PyUnicode_FromWideChar(i32* %31, i64 %32), !dbg !1810
  store %struct._object* %call40, %struct._object** %ret, align 8, !dbg !1811, !tbaa !1258
  %33 = load i32*, i32** %outbuf, align 8, !dbg !1812, !tbaa !1258
  %34 = bitcast i32* %33 to i8*, !dbg !1812
  call void @PyMem_Free(i8* %34), !dbg !1813
  br label %for.end, !dbg !1814

if.end.41:                                        ; preds = %lor.lhs.false.36
  %35 = load i32*, i32** %outbuf, align 8, !dbg !1815, !tbaa !1258
  %36 = bitcast i32* %35 to i8*, !dbg !1815
  call void @PyMem_Free(i8* %36), !dbg !1816
  br label %for.inc, !dbg !1817

for.inc:                                          ; preds = %if.end.41
  %37 = load i64, i64* %i, align 8, !dbg !1818, !tbaa !1308
  %38 = load i64, i64* %i, align 8, !dbg !1819, !tbaa !1308
  %add = add i64 %38, %37, !dbg !1819
  store i64 %add, i64* %i, align 8, !dbg !1819, !tbaa !1308
  br label %for.cond, !dbg !1820

for.end:                                          ; preds = %if.then.39, %if.then.31
  %39 = load i32*, i32** %format, align 8, !dbg !1821, !tbaa !1258
  %40 = bitcast i32* %39 to i8*, !dbg !1821
  call void @PyMem_Free(i8* %40), !dbg !1822
  %41 = load %struct._object*, %struct._object** %ret, align 8, !dbg !1823, !tbaa !1258
  store %struct._object* %41, %struct._object** %retval, !dbg !1824
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !1824

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.42

cleanup.42:                                       ; preds = %NewDefault, %for.end, %if.then.26, %if.then.11, %if.then
  %42 = bitcast %struct._object** %ret to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !1825
  %43 = bitcast i64* %i to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !1825
  %44 = bitcast i32** %outbuf to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !1825
  %45 = bitcast i64* %buflen to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !1825
  %46 = bitcast i64* %fmtlen to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !1825
  %47 = bitcast %struct._object** %format_arg to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !1825
  %48 = bitcast i32** %format to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !1825
  %49 = bitcast i32** %fmt to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !1825
  %50 = bitcast %struct.tm* %buf to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 56, i8* %50) #1, !dbg !1825
  %51 = bitcast %struct._object** %tup to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !1825
  %52 = load %struct._object*, %struct._object** %retval, !dbg !1825
  ret %struct._object* %52, !dbg !1825
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_strptime(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %strptime_module = alloca %struct._object*, align 8
  %strptime_result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !874, metadata !1254), !dbg !1826
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !875, metadata !1254), !dbg !1827
  %0 = bitcast %struct._object** %strptime_module to i8*, !dbg !1828
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1828
  call void @llvm.dbg.declare(metadata %struct._object** %strptime_module, metadata !876, metadata !1254), !dbg !1829
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)), !dbg !1830
  store %struct._object* %call, %struct._object** %strptime_module, align 8, !dbg !1829, !tbaa !1258
  %1 = bitcast %struct._object** %strptime_result to i8*, !dbg !1831
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1831
  call void @llvm.dbg.declare(metadata %struct._object** %strptime_result, metadata !877, metadata !1254), !dbg !1832
  %2 = load %struct._object*, %struct._object** %strptime_module, align 8, !dbg !1833, !tbaa !1258
  %tobool = icmp ne %struct._object* %2, null, !dbg !1833
  br i1 %tobool, label %if.end, label %if.then, !dbg !1835

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1836
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1836

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %strptime_module, align 8, !dbg !1837, !tbaa !1258
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1838, !tbaa !1258
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %3, %struct._Py_Identifier* @time_strptime.PyId__strptime_time, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), %struct._object* %4), !dbg !1839
  store %struct._object* %call1, %struct._object** %strptime_result, align 8, !dbg !1840, !tbaa !1258
  br label %do.body, !dbg !1841

do.body:                                          ; preds = %if.end
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1842
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1842
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !878, metadata !1254), !dbg !1844
  %6 = load %struct._object*, %struct._object** %strptime_module, align 8, !dbg !1845, !tbaa !1258
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1844, !tbaa !1258
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1846, !tbaa !1258
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1848
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1849, !tbaa !1282
  %dec = add i64 %8, -1, !dbg !1849
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1849, !tbaa !1282
  %cmp = icmp ne i64 %dec, 0, !dbg !1850
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !1851

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !1852

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1854, !tbaa !1258
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1856
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1856, !tbaa !1857
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1858
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1858, !tbaa !1859
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1862, !tbaa !1258
  call void %11(%struct._object* %12), !dbg !1863
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1864
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !1864
  br label %do.cond, !dbg !1866

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !1867

do.end:                                           ; preds = %do.cond
  %14 = load %struct._object*, %struct._object** %strptime_result, align 8, !dbg !1869, !tbaa !1258
  store %struct._object* %14, %struct._object** %retval, !dbg !1870
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1870

cleanup:                                          ; preds = %do.end, %if.then
  %15 = bitcast %struct._object** %strptime_result to i8*, !dbg !1871
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1871
  %16 = bitcast %struct._object** %strptime_module to i8*, !dbg !1871
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !1871
  %17 = load %struct._object*, %struct._object** %retval, !dbg !1871
  ret %struct._object* %17, !dbg !1871
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_tzset(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !882, metadata !1254), !dbg !1872
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !883, metadata !1254), !dbg !1873
  %0 = bitcast %struct._object** %m to i8*, !dbg !1874
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1874
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !884, metadata !1254), !dbg !1875
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)), !dbg !1876
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1877, !tbaa !1258
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !1878, !tbaa !1258
  %cmp = icmp eq %struct._object* %1, null, !dbg !1880
  br i1 %cmp, label %if.then, label %if.end, !dbg !1881

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1882
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1882

if.end:                                           ; preds = %entry
  call void @tzset() #1, !dbg !1884
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !1885, !tbaa !1258
  call void @PyInit_timezone(%struct._object* %2), !dbg !1886
  br label %do.body, !dbg !1887

do.body:                                          ; preds = %if.end
  %3 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1888
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1888
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !885, metadata !1254), !dbg !1890
  %4 = load %struct._object*, %struct._object** %m, align 8, !dbg !1891, !tbaa !1258
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8, !dbg !1890, !tbaa !1258
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1892, !tbaa !1258
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !1894
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1895, !tbaa !1282
  %dec = add i64 %6, -1, !dbg !1895
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1895, !tbaa !1282
  %cmp1 = icmp ne i64 %dec, 0, !dbg !1896
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1897

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !1898

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1900, !tbaa !1258
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1902
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1902, !tbaa !1857
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4, !dbg !1903
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1903, !tbaa !1859
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1904, !tbaa !1258
  call void %9(%struct._object* %10), !dbg !1905
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1906
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1906
  br label %do.cond, !dbg !1908

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !1909

do.end:                                           ; preds = %do.cond
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !1911
  %tobool = icmp ne %struct._object* %call4, null, !dbg !1911
  br i1 %tobool, label %if.then.5, label %if.end.6, !dbg !1913

if.then.5:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !1914
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1914

if.end.6:                                         ; preds = %do.end
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1915, !tbaa !1282
  %inc = add i64 %12, 1, !dbg !1915
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1915, !tbaa !1282
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1916
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1916

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %13 = bitcast %struct._object** %m to i8*, !dbg !1917
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !1917
  %14 = load %struct._object*, %struct._object** %retval, !dbg !1917
  ret %struct._object* %14, !dbg !1917
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_monotonic(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !889, metadata !1254), !dbg !1918
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !890, metadata !1254), !dbg !1919
  %call = call %struct._object* @pymonotonic(%struct._Py_clock_info_t* null), !dbg !1920
  ret %struct._object* %call, !dbg !1921
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_process_time(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !903, metadata !1254), !dbg !1922
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !904, metadata !1254), !dbg !1923
  %call = call %struct._object* @py_process_time(%struct._Py_clock_info_t* null), !dbg !1924
  ret %struct._object* %call, !dbg !1925
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @time_perf_counter(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1007, metadata !1254), !dbg !1926
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !1008, metadata !1254), !dbg !1927
  %call = call %struct._object* @perf_counter(%struct._Py_clock_info_t* null), !dbg !1928
  ret %struct._object* %call, !dbg !1929
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
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %__s1_len44 = alloca i64, align 8
  %__s2_len46 = alloca i64, align 8
  %tmp47 = alloca i32, align 4
  %__s153 = alloca i8*, align 8
  %__result55 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  %__s1_len104 = alloca i64, align 8
  %__s2_len106 = alloca i64, align 8
  %tmp107 = alloca i32, align 4
  %__s1113 = alloca i8*, align 8
  %__result115 = alloca i32, align 4
  %tmp153 = alloca i32, align 4
  %__s1_len164 = alloca i64, align 8
  %__s2_len166 = alloca i64, align 8
  %tmp167 = alloca i32, align 4
  %__s1173 = alloca i8*, align 8
  %__result175 = alloca i32, align 4
  %tmp213 = alloca i32, align 4
  %__s1_len224 = alloca i64, align 8
  %__s2_len226 = alloca i64, align 8
  %tmp227 = alloca i32, align 4
  %__s1233 = alloca i8*, align 8
  %__result235 = alloca i32, align 4
  %tmp273 = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp321 = alloca %struct._object*, align 8
  %_py_tmp350 = alloca %struct._object*, align 8
  %_py_decref_tmp356 = alloca %struct._object*, align 8
  %_py_tmp385 = alloca %struct._object*, align 8
  %_py_decref_tmp391 = alloca %struct._object*, align 8
  %_py_tmp419 = alloca %struct._object*, align 8
  %_py_decref_tmp425 = alloca %struct._object*, align 8
  %_py_decref_tmp443 = alloca %struct._object*, align 8
  %_py_decref_tmp457 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp476 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1015, metadata !1254), !dbg !1930
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1016, metadata !1254), !dbg !1931
  %0 = bitcast i8** %name to i8*, !dbg !1932
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1932
  call void @llvm.dbg.declare(metadata i8** %name, metadata !1017, metadata !1254), !dbg !1933
  %1 = bitcast %struct._Py_clock_info_t* %info to i8*, !dbg !1934
  call void @llvm.lifetime.start(i64 24, i8* %1) #1, !dbg !1934
  call void @llvm.dbg.declare(metadata %struct._Py_clock_info_t* %info, metadata !1018, metadata !1254), !dbg !1935
  %2 = bitcast %struct._object** %obj to i8*, !dbg !1936
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !1019, metadata !1254), !dbg !1937
  store %struct._object* null, %struct._object** %obj, align 8, !dbg !1937, !tbaa !1258
  %3 = bitcast %struct._object** %dict to i8*, !dbg !1936
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !1020, metadata !1254), !dbg !1938
  %4 = bitcast %struct._object** %ns to i8*, !dbg !1936
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._object** %ns, metadata !1021, metadata !1254), !dbg !1939
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1940, !tbaa !1258
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8** %name), !dbg !1942
  %tobool = icmp ne i32 %call, 0, !dbg !1942
  br i1 %tobool, label %if.end, label %if.then, !dbg !1943

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1944
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1944

if.end:                                           ; preds = %entry
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 0, !dbg !1945
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i32 0, i32 0), i8** %implementation, align 8, !dbg !1946, !tbaa !1947
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 1, !dbg !1949
  store i32 0, i32* %monotonic, align 4, !dbg !1950, !tbaa !1951
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 2, !dbg !1952
  store i32 0, i32* %adjustable, align 4, !dbg !1953, !tbaa !1954
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 3, !dbg !1955
  store double 1.000000e+00, double* %resolution, align 8, !dbg !1956, !tbaa !1957
  %6 = bitcast i64* %__s1_len to i8*, !dbg !1958
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1958
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !1022, metadata !1254), !dbg !1959
  %7 = bitcast i64* %__s2_len to i8*, !dbg !1958
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1958
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !1025, metadata !1254), !dbg !1960
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.2 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !1961

land.lhs.true:                                    ; preds = %if.end
  store i64 4, i64* %__s2_len, align 8, !dbg !1962, !tbaa !1308
  %8 = load i64, i64* %__s2_len, align 8, !dbg !1964, !tbaa !1308
  %cmp = icmp ult i64 %8, 4, !dbg !1965
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1966

cond.true:                                        ; preds = %land.lhs.true
  %9 = bitcast i8** %__s1 to i8*, !dbg !1967
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1967
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !1026, metadata !1254), !dbg !1969
  %10 = load i8*, i8** %name, align 8, !dbg !1970, !tbaa !1258
  store i8* %10, i8** %__s1, align 8, !dbg !1969, !tbaa !1258
  %11 = bitcast i32* %__result to i8*, !dbg !1971
  call void @llvm.lifetime.start(i64 4, i8* %11) #1, !dbg !1971
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !1028, metadata !1254), !dbg !1972
  %12 = load i8*, i8** %__s1, align 8, !dbg !1973, !tbaa !1258
  %arrayidx = getelementptr i8, i8* %12, i64 0, !dbg !1973
  %13 = load i8, i8* %arrayidx, align 1, !dbg !1973, !tbaa !1331
  %conv = zext i8 %13 to i32, !dbg !1973
  %14 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), align 1, !dbg !1974, !tbaa !1331
  %conv3 = zext i8 %14 to i32, !dbg !1974
  %sub = sub i32 %conv, %conv3, !dbg !1975
  store i32 %sub, i32* %__result, align 4, !dbg !1972, !tbaa !1271
  %15 = load i64, i64* %__s2_len, align 8, !dbg !1976, !tbaa !1308
  %cmp4 = icmp ugt i64 %15, 0, !dbg !1978
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.36, !dbg !1979

land.lhs.true.6:                                  ; preds = %cond.true
  %16 = load i32, i32* %__result, align 4, !dbg !1980, !tbaa !1271
  %cmp7 = icmp eq i32 %16, 0, !dbg !1982
  br i1 %cmp7, label %if.then.9, label %if.end.36, !dbg !1983

if.then.9:                                        ; preds = %land.lhs.true.6
  %17 = load i8*, i8** %__s1, align 8, !dbg !1984, !tbaa !1258
  %arrayidx10 = getelementptr i8, i8* %17, i64 1, !dbg !1984
  %18 = load i8, i8* %arrayidx10, align 1, !dbg !1984, !tbaa !1331
  %conv11 = zext i8 %18 to i32, !dbg !1984
  %19 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i64 1), align 1, !dbg !1987, !tbaa !1331
  %conv12 = zext i8 %19 to i32, !dbg !1987
  %sub13 = sub i32 %conv11, %conv12, !dbg !1988
  store i32 %sub13, i32* %__result, align 4, !dbg !1989, !tbaa !1271
  %20 = load i64, i64* %__s2_len, align 8, !dbg !1990, !tbaa !1308
  %cmp14 = icmp ugt i64 %20, 1, !dbg !1992
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.35, !dbg !1993

land.lhs.true.16:                                 ; preds = %if.then.9
  %21 = load i32, i32* %__result, align 4, !dbg !1994, !tbaa !1271
  %cmp17 = icmp eq i32 %21, 0, !dbg !1996
  br i1 %cmp17, label %if.then.19, label %if.end.35, !dbg !1997

if.then.19:                                       ; preds = %land.lhs.true.16
  %22 = load i8*, i8** %__s1, align 8, !dbg !1998, !tbaa !1258
  %arrayidx20 = getelementptr i8, i8* %22, i64 2, !dbg !1998
  %23 = load i8, i8* %arrayidx20, align 1, !dbg !1998, !tbaa !1331
  %conv21 = zext i8 %23 to i32, !dbg !1998
  %24 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i64 2), align 1, !dbg !2001, !tbaa !1331
  %conv22 = zext i8 %24 to i32, !dbg !2001
  %sub23 = sub i32 %conv21, %conv22, !dbg !2002
  store i32 %sub23, i32* %__result, align 4, !dbg !2003, !tbaa !1271
  %25 = load i64, i64* %__s2_len, align 8, !dbg !2004, !tbaa !1308
  %cmp24 = icmp ugt i64 %25, 2, !dbg !2006
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.34, !dbg !2007

land.lhs.true.26:                                 ; preds = %if.then.19
  %26 = load i32, i32* %__result, align 4, !dbg !2008, !tbaa !1271
  %cmp27 = icmp eq i32 %26, 0, !dbg !2010
  br i1 %cmp27, label %if.then.29, label %if.end.34, !dbg !2011

if.then.29:                                       ; preds = %land.lhs.true.26
  %27 = load i8*, i8** %__s1, align 8, !dbg !2012, !tbaa !1258
  %arrayidx30 = getelementptr i8, i8* %27, i64 3, !dbg !2012
  %28 = load i8, i8* %arrayidx30, align 1, !dbg !2012, !tbaa !1331
  %conv31 = zext i8 %28 to i32, !dbg !2012
  %29 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i64 3), align 1, !dbg !2014, !tbaa !1331
  %conv32 = zext i8 %29 to i32, !dbg !2014
  %sub33 = sub i32 %conv31, %conv32, !dbg !2015
  store i32 %sub33, i32* %__result, align 4, !dbg !2016, !tbaa !1271
  br label %if.end.34, !dbg !2017

if.end.34:                                        ; preds = %if.then.29, %land.lhs.true.26, %if.then.19
  br label %if.end.35, !dbg !2018

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.16, %if.then.9
  br label %if.end.36, !dbg !2022

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true.6, %cond.true
  %30 = load i32, i32* %__result, align 4, !dbg !2026, !tbaa !1271
  store i32 %30, i32* %tmp37, !dbg !2030, !tbaa !1271
  %31 = bitcast i32* %__result to i8*, !dbg !2031
  call void @llvm.lifetime.end(i64 4, i8* %31) #1, !dbg !2031
  %32 = bitcast i8** %__s1 to i8*, !dbg !2031
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !2031
  %33 = load i32, i32* %tmp37, !dbg !2032, !tbaa !1271
  br label %cond.end, !dbg !1966

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %34 = load i8*, i8** %name, align 8, !dbg !2033, !tbaa !1258
  %call38 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #1, !dbg !2036
  br label %cond.end, !dbg !1966

cond.end:                                         ; preds = %cond.false, %if.end.36
  %cond = phi i32 [ %33, %if.end.36 ], [ %call38, %cond.false ], !dbg !1966
  store i32 %cond, i32* %tmp, !dbg !2037, !tbaa !1271
  %35 = bitcast i64* %__s2_len to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !2040
  %36 = bitcast i64* %__s1_len to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !2040
  %37 = load i32, i32* %tmp, !dbg !2041, !tbaa !1271
  %cmp39 = icmp eq i32 %37, 0, !dbg !2042
  br i1 %cmp39, label %if.then.41, label %if.else, !dbg !2043

if.then.41:                                       ; preds = %cond.end
  %call42 = call %struct._object* @floattime(%struct._Py_clock_info_t* %info), !dbg !2044
  store %struct._object* %call42, %struct._object** %obj, align 8, !dbg !2045, !tbaa !1258
  br label %if.end.287, !dbg !2046

if.else:                                          ; preds = %cond.end
  %38 = bitcast i64* %__s1_len44 to i8*, !dbg !2047
  call void @llvm.lifetime.start(i64 8, i8* %38) #1, !dbg !2047
  call void @llvm.dbg.declare(metadata i64* %__s1_len44, metadata !1029, metadata !1254), !dbg !2048
  %39 = bitcast i64* %__s2_len46 to i8*, !dbg !2047
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !2047
  call void @llvm.dbg.declare(metadata i64* %__s2_len46, metadata !1032, metadata !1254), !dbg !2049
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.3 to i64)), i64 1), label %land.lhs.true.48, label %cond.false.94, !dbg !2050

land.lhs.true.48:                                 ; preds = %if.else
  store i64 5, i64* %__s2_len46, align 8, !dbg !2051, !tbaa !1308
  %40 = load i64, i64* %__s2_len46, align 8, !dbg !2053, !tbaa !1308
  %cmp49 = icmp ult i64 %40, 4, !dbg !2054
  br i1 %cmp49, label %cond.true.51, label %cond.false.94, !dbg !2055

cond.true.51:                                     ; preds = %land.lhs.true.48
  %41 = bitcast i8** %__s153 to i8*, !dbg !2056
  call void @llvm.lifetime.start(i64 8, i8* %41) #1, !dbg !2056
  call void @llvm.dbg.declare(metadata i8** %__s153, metadata !1033, metadata !1254), !dbg !2058
  %42 = load i8*, i8** %name, align 8, !dbg !2059, !tbaa !1258
  store i8* %42, i8** %__s153, align 8, !dbg !2058, !tbaa !1258
  %43 = bitcast i32* %__result55 to i8*, !dbg !2060
  call void @llvm.lifetime.start(i64 4, i8* %43) #1, !dbg !2060
  call void @llvm.dbg.declare(metadata i32* %__result55, metadata !1035, metadata !1254), !dbg !2061
  %44 = load i8*, i8** %__s153, align 8, !dbg !2062, !tbaa !1258
  %arrayidx56 = getelementptr i8, i8* %44, i64 0, !dbg !2062
  %45 = load i8, i8* %arrayidx56, align 1, !dbg !2062, !tbaa !1331
  %conv57 = zext i8 %45 to i32, !dbg !2062
  %46 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), align 1, !dbg !2063, !tbaa !1331
  %conv58 = zext i8 %46 to i32, !dbg !2063
  %sub59 = sub i32 %conv57, %conv58, !dbg !2064
  store i32 %sub59, i32* %__result55, align 4, !dbg !2061, !tbaa !1271
  %47 = load i64, i64* %__s2_len46, align 8, !dbg !2065, !tbaa !1308
  %cmp60 = icmp ugt i64 %47, 0, !dbg !2067
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.92, !dbg !2068

land.lhs.true.62:                                 ; preds = %cond.true.51
  %48 = load i32, i32* %__result55, align 4, !dbg !2069, !tbaa !1271
  %cmp63 = icmp eq i32 %48, 0, !dbg !2071
  br i1 %cmp63, label %if.then.65, label %if.end.92, !dbg !2072

if.then.65:                                       ; preds = %land.lhs.true.62
  %49 = load i8*, i8** %__s153, align 8, !dbg !2073, !tbaa !1258
  %arrayidx66 = getelementptr i8, i8* %49, i64 1, !dbg !2073
  %50 = load i8, i8* %arrayidx66, align 1, !dbg !2073, !tbaa !1331
  %conv67 = zext i8 %50 to i32, !dbg !2073
  %51 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i64 1), align 1, !dbg !2076, !tbaa !1331
  %conv68 = zext i8 %51 to i32, !dbg !2076
  %sub69 = sub i32 %conv67, %conv68, !dbg !2077
  store i32 %sub69, i32* %__result55, align 4, !dbg !2078, !tbaa !1271
  %52 = load i64, i64* %__s2_len46, align 8, !dbg !2079, !tbaa !1308
  %cmp70 = icmp ugt i64 %52, 1, !dbg !2081
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.91, !dbg !2082

land.lhs.true.72:                                 ; preds = %if.then.65
  %53 = load i32, i32* %__result55, align 4, !dbg !2083, !tbaa !1271
  %cmp73 = icmp eq i32 %53, 0, !dbg !2085
  br i1 %cmp73, label %if.then.75, label %if.end.91, !dbg !2086

if.then.75:                                       ; preds = %land.lhs.true.72
  %54 = load i8*, i8** %__s153, align 8, !dbg !2087, !tbaa !1258
  %arrayidx76 = getelementptr i8, i8* %54, i64 2, !dbg !2087
  %55 = load i8, i8* %arrayidx76, align 1, !dbg !2087, !tbaa !1331
  %conv77 = zext i8 %55 to i32, !dbg !2087
  %56 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i64 2), align 1, !dbg !2090, !tbaa !1331
  %conv78 = zext i8 %56 to i32, !dbg !2090
  %sub79 = sub i32 %conv77, %conv78, !dbg !2091
  store i32 %sub79, i32* %__result55, align 4, !dbg !2092, !tbaa !1271
  %57 = load i64, i64* %__s2_len46, align 8, !dbg !2093, !tbaa !1308
  %cmp80 = icmp ugt i64 %57, 2, !dbg !2095
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.90, !dbg !2096

land.lhs.true.82:                                 ; preds = %if.then.75
  %58 = load i32, i32* %__result55, align 4, !dbg !2097, !tbaa !1271
  %cmp83 = icmp eq i32 %58, 0, !dbg !2099
  br i1 %cmp83, label %if.then.85, label %if.end.90, !dbg !2100

if.then.85:                                       ; preds = %land.lhs.true.82
  %59 = load i8*, i8** %__s153, align 8, !dbg !2101, !tbaa !1258
  %arrayidx86 = getelementptr i8, i8* %59, i64 3, !dbg !2101
  %60 = load i8, i8* %arrayidx86, align 1, !dbg !2101, !tbaa !1331
  %conv87 = zext i8 %60 to i32, !dbg !2101
  %61 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i64 3), align 1, !dbg !2103, !tbaa !1331
  %conv88 = zext i8 %61 to i32, !dbg !2103
  %sub89 = sub i32 %conv87, %conv88, !dbg !2104
  store i32 %sub89, i32* %__result55, align 4, !dbg !2105, !tbaa !1271
  br label %if.end.90, !dbg !2106

if.end.90:                                        ; preds = %if.then.85, %land.lhs.true.82, %if.then.75
  br label %if.end.91, !dbg !2107

if.end.91:                                        ; preds = %if.end.90, %land.lhs.true.72, %if.then.65
  br label %if.end.92, !dbg !2111

if.end.92:                                        ; preds = %if.end.91, %land.lhs.true.62, %cond.true.51
  %62 = load i32, i32* %__result55, align 4, !dbg !2115, !tbaa !1271
  store i32 %62, i32* %tmp93, !dbg !2119, !tbaa !1271
  %63 = bitcast i32* %__result55 to i8*, !dbg !2120
  call void @llvm.lifetime.end(i64 4, i8* %63) #1, !dbg !2120
  %64 = bitcast i8** %__s153 to i8*, !dbg !2120
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !2120
  %65 = load i32, i32* %tmp93, !dbg !2121, !tbaa !1271
  br label %cond.end.96, !dbg !2055

cond.false.94:                                    ; preds = %land.lhs.true.48, %if.else
  %66 = load i8*, i8** %name, align 8, !dbg !2122, !tbaa !1258
  %call95 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #1, !dbg !2125
  br label %cond.end.96, !dbg !2055

cond.end.96:                                      ; preds = %cond.false.94, %if.end.92
  %cond97 = phi i32 [ %65, %if.end.92 ], [ %call95, %cond.false.94 ], !dbg !2055
  store i32 %cond97, i32* %tmp47, !dbg !2126, !tbaa !1271
  %67 = bitcast i64* %__s2_len46 to i8*, !dbg !2129
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !2129
  %68 = bitcast i64* %__s1_len44 to i8*, !dbg !2129
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !2129
  %69 = load i32, i32* %tmp47, !dbg !2130, !tbaa !1271
  %cmp98 = icmp eq i32 %69, 0, !dbg !2131
  br i1 %cmp98, label %if.then.100, label %if.else.102, !dbg !2132

if.then.100:                                      ; preds = %cond.end.96
  %call101 = call %struct._object* @pyclock(%struct._Py_clock_info_t* %info), !dbg !2133
  store %struct._object* %call101, %struct._object** %obj, align 8, !dbg !2134, !tbaa !1258
  br label %if.end.286, !dbg !2135

if.else.102:                                      ; preds = %cond.end.96
  %70 = bitcast i64* %__s1_len104 to i8*, !dbg !2136
  call void @llvm.lifetime.start(i64 8, i8* %70) #1, !dbg !2136
  call void @llvm.dbg.declare(metadata i64* %__s1_len104, metadata !1036, metadata !1254), !dbg !2137
  %71 = bitcast i64* %__s2_len106 to i8*, !dbg !2136
  call void @llvm.lifetime.start(i64 8, i8* %71) #1, !dbg !2136
  call void @llvm.dbg.declare(metadata i64* %__s2_len106, metadata !1039, metadata !1254), !dbg !2138
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.16 to i64)), i64 1), label %land.lhs.true.108, label %cond.false.154, !dbg !2139

land.lhs.true.108:                                ; preds = %if.else.102
  store i64 9, i64* %__s2_len106, align 8, !dbg !2140, !tbaa !1308
  %72 = load i64, i64* %__s2_len106, align 8, !dbg !2142, !tbaa !1308
  %cmp109 = icmp ult i64 %72, 4, !dbg !2143
  br i1 %cmp109, label %cond.true.111, label %cond.false.154, !dbg !2144

cond.true.111:                                    ; preds = %land.lhs.true.108
  %73 = bitcast i8** %__s1113 to i8*, !dbg !2145
  call void @llvm.lifetime.start(i64 8, i8* %73) #1, !dbg !2145
  call void @llvm.dbg.declare(metadata i8** %__s1113, metadata !1040, metadata !1254), !dbg !2147
  %74 = load i8*, i8** %name, align 8, !dbg !2148, !tbaa !1258
  store i8* %74, i8** %__s1113, align 8, !dbg !2147, !tbaa !1258
  %75 = bitcast i32* %__result115 to i8*, !dbg !2149
  call void @llvm.lifetime.start(i64 4, i8* %75) #1, !dbg !2149
  call void @llvm.dbg.declare(metadata i32* %__result115, metadata !1042, metadata !1254), !dbg !2150
  %76 = load i8*, i8** %__s1113, align 8, !dbg !2151, !tbaa !1258
  %arrayidx116 = getelementptr i8, i8* %76, i64 0, !dbg !2151
  %77 = load i8, i8* %arrayidx116, align 1, !dbg !2151, !tbaa !1331
  %conv117 = zext i8 %77 to i32, !dbg !2151
  %78 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), align 1, !dbg !2152, !tbaa !1331
  %conv118 = zext i8 %78 to i32, !dbg !2152
  %sub119 = sub i32 %conv117, %conv118, !dbg !2153
  store i32 %sub119, i32* %__result115, align 4, !dbg !2150, !tbaa !1271
  %79 = load i64, i64* %__s2_len106, align 8, !dbg !2154, !tbaa !1308
  %cmp120 = icmp ugt i64 %79, 0, !dbg !2156
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.152, !dbg !2157

land.lhs.true.122:                                ; preds = %cond.true.111
  %80 = load i32, i32* %__result115, align 4, !dbg !2158, !tbaa !1271
  %cmp123 = icmp eq i32 %80, 0, !dbg !2160
  br i1 %cmp123, label %if.then.125, label %if.end.152, !dbg !2161

if.then.125:                                      ; preds = %land.lhs.true.122
  %81 = load i8*, i8** %__s1113, align 8, !dbg !2162, !tbaa !1258
  %arrayidx126 = getelementptr i8, i8* %81, i64 1, !dbg !2162
  %82 = load i8, i8* %arrayidx126, align 1, !dbg !2162, !tbaa !1331
  %conv127 = zext i8 %82 to i32, !dbg !2162
  %83 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i64 1), align 1, !dbg !2165, !tbaa !1331
  %conv128 = zext i8 %83 to i32, !dbg !2165
  %sub129 = sub i32 %conv127, %conv128, !dbg !2166
  store i32 %sub129, i32* %__result115, align 4, !dbg !2167, !tbaa !1271
  %84 = load i64, i64* %__s2_len106, align 8, !dbg !2168, !tbaa !1308
  %cmp130 = icmp ugt i64 %84, 1, !dbg !2170
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.151, !dbg !2171

land.lhs.true.132:                                ; preds = %if.then.125
  %85 = load i32, i32* %__result115, align 4, !dbg !2172, !tbaa !1271
  %cmp133 = icmp eq i32 %85, 0, !dbg !2174
  br i1 %cmp133, label %if.then.135, label %if.end.151, !dbg !2175

if.then.135:                                      ; preds = %land.lhs.true.132
  %86 = load i8*, i8** %__s1113, align 8, !dbg !2176, !tbaa !1258
  %arrayidx136 = getelementptr i8, i8* %86, i64 2, !dbg !2176
  %87 = load i8, i8* %arrayidx136, align 1, !dbg !2176, !tbaa !1331
  %conv137 = zext i8 %87 to i32, !dbg !2176
  %88 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i64 2), align 1, !dbg !2179, !tbaa !1331
  %conv138 = zext i8 %88 to i32, !dbg !2179
  %sub139 = sub i32 %conv137, %conv138, !dbg !2180
  store i32 %sub139, i32* %__result115, align 4, !dbg !2181, !tbaa !1271
  %89 = load i64, i64* %__s2_len106, align 8, !dbg !2182, !tbaa !1308
  %cmp140 = icmp ugt i64 %89, 2, !dbg !2184
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.150, !dbg !2185

land.lhs.true.142:                                ; preds = %if.then.135
  %90 = load i32, i32* %__result115, align 4, !dbg !2186, !tbaa !1271
  %cmp143 = icmp eq i32 %90, 0, !dbg !2188
  br i1 %cmp143, label %if.then.145, label %if.end.150, !dbg !2189

if.then.145:                                      ; preds = %land.lhs.true.142
  %91 = load i8*, i8** %__s1113, align 8, !dbg !2190, !tbaa !1258
  %arrayidx146 = getelementptr i8, i8* %91, i64 3, !dbg !2190
  %92 = load i8, i8* %arrayidx146, align 1, !dbg !2190, !tbaa !1331
  %conv147 = zext i8 %92 to i32, !dbg !2190
  %93 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i64 3), align 1, !dbg !2192, !tbaa !1331
  %conv148 = zext i8 %93 to i32, !dbg !2192
  %sub149 = sub i32 %conv147, %conv148, !dbg !2193
  store i32 %sub149, i32* %__result115, align 4, !dbg !2194, !tbaa !1271
  br label %if.end.150, !dbg !2195

if.end.150:                                       ; preds = %if.then.145, %land.lhs.true.142, %if.then.135
  br label %if.end.151, !dbg !2196

if.end.151:                                       ; preds = %if.end.150, %land.lhs.true.132, %if.then.125
  br label %if.end.152, !dbg !2200

if.end.152:                                       ; preds = %if.end.151, %land.lhs.true.122, %cond.true.111
  %94 = load i32, i32* %__result115, align 4, !dbg !2204, !tbaa !1271
  store i32 %94, i32* %tmp153, !dbg !2208, !tbaa !1271
  %95 = bitcast i32* %__result115 to i8*, !dbg !2209
  call void @llvm.lifetime.end(i64 4, i8* %95) #1, !dbg !2209
  %96 = bitcast i8** %__s1113 to i8*, !dbg !2209
  call void @llvm.lifetime.end(i64 8, i8* %96) #1, !dbg !2209
  %97 = load i32, i32* %tmp153, !dbg !2210, !tbaa !1271
  br label %cond.end.156, !dbg !2144

cond.false.154:                                   ; preds = %land.lhs.true.108, %if.else.102
  %98 = load i8*, i8** %name, align 8, !dbg !2211, !tbaa !1258
  %call155 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #1, !dbg !2214
  br label %cond.end.156, !dbg !2144

cond.end.156:                                     ; preds = %cond.false.154, %if.end.152
  %cond157 = phi i32 [ %97, %if.end.152 ], [ %call155, %cond.false.154 ], !dbg !2144
  store i32 %cond157, i32* %tmp107, !dbg !2215, !tbaa !1271
  %99 = bitcast i64* %__s2_len106 to i8*, !dbg !2218
  call void @llvm.lifetime.end(i64 8, i8* %99) #1, !dbg !2218
  %100 = bitcast i64* %__s1_len104 to i8*, !dbg !2218
  call void @llvm.lifetime.end(i64 8, i8* %100) #1, !dbg !2218
  %101 = load i32, i32* %tmp107, !dbg !2219, !tbaa !1271
  %cmp158 = icmp eq i32 %101, 0, !dbg !2220
  br i1 %cmp158, label %if.then.160, label %if.else.162, !dbg !2221

if.then.160:                                      ; preds = %cond.end.156
  %call161 = call %struct._object* @pymonotonic(%struct._Py_clock_info_t* %info), !dbg !2222
  store %struct._object* %call161, %struct._object** %obj, align 8, !dbg !2223, !tbaa !1258
  br label %if.end.285, !dbg !2224

if.else.162:                                      ; preds = %cond.end.156
  %102 = bitcast i64* %__s1_len164 to i8*, !dbg !2225
  call void @llvm.lifetime.start(i64 8, i8* %102) #1, !dbg !2225
  call void @llvm.dbg.declare(metadata i64* %__s1_len164, metadata !1043, metadata !1254), !dbg !2226
  %103 = bitcast i64* %__s2_len166 to i8*, !dbg !2225
  call void @llvm.lifetime.start(i64 8, i8* %103) #1, !dbg !2225
  call void @llvm.dbg.declare(metadata i64* %__s2_len166, metadata !1046, metadata !1254), !dbg !2227
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([13 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.168, label %cond.false.214, !dbg !2228

land.lhs.true.168:                                ; preds = %if.else.162
  store i64 12, i64* %__s2_len166, align 8, !dbg !2229, !tbaa !1308
  %104 = load i64, i64* %__s2_len166, align 8, !dbg !2231, !tbaa !1308
  %cmp169 = icmp ult i64 %104, 4, !dbg !2232
  br i1 %cmp169, label %cond.true.171, label %cond.false.214, !dbg !2233

cond.true.171:                                    ; preds = %land.lhs.true.168
  %105 = bitcast i8** %__s1173 to i8*, !dbg !2234
  call void @llvm.lifetime.start(i64 8, i8* %105) #1, !dbg !2234
  call void @llvm.dbg.declare(metadata i8** %__s1173, metadata !1047, metadata !1254), !dbg !2236
  %106 = load i8*, i8** %name, align 8, !dbg !2237, !tbaa !1258
  store i8* %106, i8** %__s1173, align 8, !dbg !2236, !tbaa !1258
  %107 = bitcast i32* %__result175 to i8*, !dbg !2238
  call void @llvm.lifetime.start(i64 4, i8* %107) #1, !dbg !2238
  call void @llvm.dbg.declare(metadata i32* %__result175, metadata !1049, metadata !1254), !dbg !2239
  %108 = load i8*, i8** %__s1173, align 8, !dbg !2240, !tbaa !1258
  %arrayidx176 = getelementptr i8, i8* %108, i64 0, !dbg !2240
  %109 = load i8, i8* %arrayidx176, align 1, !dbg !2240, !tbaa !1331
  %conv177 = zext i8 %109 to i32, !dbg !2240
  %110 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), align 1, !dbg !2241, !tbaa !1331
  %conv178 = zext i8 %110 to i32, !dbg !2241
  %sub179 = sub i32 %conv177, %conv178, !dbg !2242
  store i32 %sub179, i32* %__result175, align 4, !dbg !2239, !tbaa !1271
  %111 = load i64, i64* %__s2_len166, align 8, !dbg !2243, !tbaa !1308
  %cmp180 = icmp ugt i64 %111, 0, !dbg !2245
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.212, !dbg !2246

land.lhs.true.182:                                ; preds = %cond.true.171
  %112 = load i32, i32* %__result175, align 4, !dbg !2247, !tbaa !1271
  %cmp183 = icmp eq i32 %112, 0, !dbg !2249
  br i1 %cmp183, label %if.then.185, label %if.end.212, !dbg !2250

if.then.185:                                      ; preds = %land.lhs.true.182
  %113 = load i8*, i8** %__s1173, align 8, !dbg !2251, !tbaa !1258
  %arrayidx186 = getelementptr i8, i8* %113, i64 1, !dbg !2251
  %114 = load i8, i8* %arrayidx186, align 1, !dbg !2251, !tbaa !1331
  %conv187 = zext i8 %114 to i32, !dbg !2251
  %115 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i64 1), align 1, !dbg !2254, !tbaa !1331
  %conv188 = zext i8 %115 to i32, !dbg !2254
  %sub189 = sub i32 %conv187, %conv188, !dbg !2255
  store i32 %sub189, i32* %__result175, align 4, !dbg !2256, !tbaa !1271
  %116 = load i64, i64* %__s2_len166, align 8, !dbg !2257, !tbaa !1308
  %cmp190 = icmp ugt i64 %116, 1, !dbg !2259
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.211, !dbg !2260

land.lhs.true.192:                                ; preds = %if.then.185
  %117 = load i32, i32* %__result175, align 4, !dbg !2261, !tbaa !1271
  %cmp193 = icmp eq i32 %117, 0, !dbg !2263
  br i1 %cmp193, label %if.then.195, label %if.end.211, !dbg !2264

if.then.195:                                      ; preds = %land.lhs.true.192
  %118 = load i8*, i8** %__s1173, align 8, !dbg !2265, !tbaa !1258
  %arrayidx196 = getelementptr i8, i8* %118, i64 2, !dbg !2265
  %119 = load i8, i8* %arrayidx196, align 1, !dbg !2265, !tbaa !1331
  %conv197 = zext i8 %119 to i32, !dbg !2265
  %120 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i64 2), align 1, !dbg !2268, !tbaa !1331
  %conv198 = zext i8 %120 to i32, !dbg !2268
  %sub199 = sub i32 %conv197, %conv198, !dbg !2269
  store i32 %sub199, i32* %__result175, align 4, !dbg !2270, !tbaa !1271
  %121 = load i64, i64* %__s2_len166, align 8, !dbg !2271, !tbaa !1308
  %cmp200 = icmp ugt i64 %121, 2, !dbg !2273
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.210, !dbg !2274

land.lhs.true.202:                                ; preds = %if.then.195
  %122 = load i32, i32* %__result175, align 4, !dbg !2275, !tbaa !1271
  %cmp203 = icmp eq i32 %122, 0, !dbg !2277
  br i1 %cmp203, label %if.then.205, label %if.end.210, !dbg !2278

if.then.205:                                      ; preds = %land.lhs.true.202
  %123 = load i8*, i8** %__s1173, align 8, !dbg !2279, !tbaa !1258
  %arrayidx206 = getelementptr i8, i8* %123, i64 3, !dbg !2279
  %124 = load i8, i8* %arrayidx206, align 1, !dbg !2279, !tbaa !1331
  %conv207 = zext i8 %124 to i32, !dbg !2279
  %125 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i64 3), align 1, !dbg !2281, !tbaa !1331
  %conv208 = zext i8 %125 to i32, !dbg !2281
  %sub209 = sub i32 %conv207, %conv208, !dbg !2282
  store i32 %sub209, i32* %__result175, align 4, !dbg !2283, !tbaa !1271
  br label %if.end.210, !dbg !2284

if.end.210:                                       ; preds = %if.then.205, %land.lhs.true.202, %if.then.195
  br label %if.end.211, !dbg !2285

if.end.211:                                       ; preds = %if.end.210, %land.lhs.true.192, %if.then.185
  br label %if.end.212, !dbg !2289

if.end.212:                                       ; preds = %if.end.211, %land.lhs.true.182, %cond.true.171
  %126 = load i32, i32* %__result175, align 4, !dbg !2293, !tbaa !1271
  store i32 %126, i32* %tmp213, !dbg !2297, !tbaa !1271
  %127 = bitcast i32* %__result175 to i8*, !dbg !2298
  call void @llvm.lifetime.end(i64 4, i8* %127) #1, !dbg !2298
  %128 = bitcast i8** %__s1173 to i8*, !dbg !2298
  call void @llvm.lifetime.end(i64 8, i8* %128) #1, !dbg !2298
  %129 = load i32, i32* %tmp213, !dbg !2299, !tbaa !1271
  br label %cond.end.216, !dbg !2233

cond.false.214:                                   ; preds = %land.lhs.true.168, %if.else.162
  %130 = load i8*, i8** %name, align 8, !dbg !2300, !tbaa !1258
  %call215 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #1, !dbg !2303
  br label %cond.end.216, !dbg !2233

cond.end.216:                                     ; preds = %cond.false.214, %if.end.212
  %cond217 = phi i32 [ %129, %if.end.212 ], [ %call215, %cond.false.214 ], !dbg !2233
  store i32 %cond217, i32* %tmp167, !dbg !2304, !tbaa !1271
  %131 = bitcast i64* %__s2_len166 to i8*, !dbg !2307
  call void @llvm.lifetime.end(i64 8, i8* %131) #1, !dbg !2307
  %132 = bitcast i64* %__s1_len164 to i8*, !dbg !2307
  call void @llvm.lifetime.end(i64 8, i8* %132) #1, !dbg !2307
  %133 = load i32, i32* %tmp167, !dbg !2308, !tbaa !1271
  %cmp218 = icmp eq i32 %133, 0, !dbg !2309
  br i1 %cmp218, label %if.then.220, label %if.else.222, !dbg !2310

if.then.220:                                      ; preds = %cond.end.216
  %call221 = call %struct._object* @perf_counter(%struct._Py_clock_info_t* %info), !dbg !2311
  store %struct._object* %call221, %struct._object** %obj, align 8, !dbg !2312, !tbaa !1258
  br label %if.end.284, !dbg !2313

if.else.222:                                      ; preds = %cond.end.216
  %134 = bitcast i64* %__s1_len224 to i8*, !dbg !2314
  call void @llvm.lifetime.start(i64 8, i8* %134) #1, !dbg !2314
  call void @llvm.dbg.declare(metadata i64* %__s1_len224, metadata !1050, metadata !1254), !dbg !2315
  %135 = bitcast i64* %__s2_len226 to i8*, !dbg !2314
  call void @llvm.lifetime.start(i64 8, i8* %135) #1, !dbg !2314
  call void @llvm.dbg.declare(metadata i64* %__s2_len226, metadata !1053, metadata !1254), !dbg !2316
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([13 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.228, label %cond.false.274, !dbg !2317

land.lhs.true.228:                                ; preds = %if.else.222
  store i64 12, i64* %__s2_len226, align 8, !dbg !2318, !tbaa !1308
  %136 = load i64, i64* %__s2_len226, align 8, !dbg !2320, !tbaa !1308
  %cmp229 = icmp ult i64 %136, 4, !dbg !2321
  br i1 %cmp229, label %cond.true.231, label %cond.false.274, !dbg !2322

cond.true.231:                                    ; preds = %land.lhs.true.228
  %137 = bitcast i8** %__s1233 to i8*, !dbg !2323
  call void @llvm.lifetime.start(i64 8, i8* %137) #1, !dbg !2323
  call void @llvm.dbg.declare(metadata i8** %__s1233, metadata !1054, metadata !1254), !dbg !2325
  %138 = load i8*, i8** %name, align 8, !dbg !2326, !tbaa !1258
  store i8* %138, i8** %__s1233, align 8, !dbg !2325, !tbaa !1258
  %139 = bitcast i32* %__result235 to i8*, !dbg !2327
  call void @llvm.lifetime.start(i64 4, i8* %139) #1, !dbg !2327
  call void @llvm.dbg.declare(metadata i32* %__result235, metadata !1056, metadata !1254), !dbg !2328
  %140 = load i8*, i8** %__s1233, align 8, !dbg !2329, !tbaa !1258
  %arrayidx236 = getelementptr i8, i8* %140, i64 0, !dbg !2329
  %141 = load i8, i8* %arrayidx236, align 1, !dbg !2329, !tbaa !1331
  %conv237 = zext i8 %141 to i32, !dbg !2329
  %142 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), align 1, !dbg !2330, !tbaa !1331
  %conv238 = zext i8 %142 to i32, !dbg !2330
  %sub239 = sub i32 %conv237, %conv238, !dbg !2331
  store i32 %sub239, i32* %__result235, align 4, !dbg !2328, !tbaa !1271
  %143 = load i64, i64* %__s2_len226, align 8, !dbg !2332, !tbaa !1308
  %cmp240 = icmp ugt i64 %143, 0, !dbg !2334
  br i1 %cmp240, label %land.lhs.true.242, label %if.end.272, !dbg !2335

land.lhs.true.242:                                ; preds = %cond.true.231
  %144 = load i32, i32* %__result235, align 4, !dbg !2336, !tbaa !1271
  %cmp243 = icmp eq i32 %144, 0, !dbg !2338
  br i1 %cmp243, label %if.then.245, label %if.end.272, !dbg !2339

if.then.245:                                      ; preds = %land.lhs.true.242
  %145 = load i8*, i8** %__s1233, align 8, !dbg !2340, !tbaa !1258
  %arrayidx246 = getelementptr i8, i8* %145, i64 1, !dbg !2340
  %146 = load i8, i8* %arrayidx246, align 1, !dbg !2340, !tbaa !1331
  %conv247 = zext i8 %146 to i32, !dbg !2340
  %147 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i64 1), align 1, !dbg !2343, !tbaa !1331
  %conv248 = zext i8 %147 to i32, !dbg !2343
  %sub249 = sub i32 %conv247, %conv248, !dbg !2344
  store i32 %sub249, i32* %__result235, align 4, !dbg !2345, !tbaa !1271
  %148 = load i64, i64* %__s2_len226, align 8, !dbg !2346, !tbaa !1308
  %cmp250 = icmp ugt i64 %148, 1, !dbg !2348
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.271, !dbg !2349

land.lhs.true.252:                                ; preds = %if.then.245
  %149 = load i32, i32* %__result235, align 4, !dbg !2350, !tbaa !1271
  %cmp253 = icmp eq i32 %149, 0, !dbg !2352
  br i1 %cmp253, label %if.then.255, label %if.end.271, !dbg !2353

if.then.255:                                      ; preds = %land.lhs.true.252
  %150 = load i8*, i8** %__s1233, align 8, !dbg !2354, !tbaa !1258
  %arrayidx256 = getelementptr i8, i8* %150, i64 2, !dbg !2354
  %151 = load i8, i8* %arrayidx256, align 1, !dbg !2354, !tbaa !1331
  %conv257 = zext i8 %151 to i32, !dbg !2354
  %152 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i64 2), align 1, !dbg !2357, !tbaa !1331
  %conv258 = zext i8 %152 to i32, !dbg !2357
  %sub259 = sub i32 %conv257, %conv258, !dbg !2358
  store i32 %sub259, i32* %__result235, align 4, !dbg !2359, !tbaa !1271
  %153 = load i64, i64* %__s2_len226, align 8, !dbg !2360, !tbaa !1308
  %cmp260 = icmp ugt i64 %153, 2, !dbg !2362
  br i1 %cmp260, label %land.lhs.true.262, label %if.end.270, !dbg !2363

land.lhs.true.262:                                ; preds = %if.then.255
  %154 = load i32, i32* %__result235, align 4, !dbg !2364, !tbaa !1271
  %cmp263 = icmp eq i32 %154, 0, !dbg !2366
  br i1 %cmp263, label %if.then.265, label %if.end.270, !dbg !2367

if.then.265:                                      ; preds = %land.lhs.true.262
  %155 = load i8*, i8** %__s1233, align 8, !dbg !2368, !tbaa !1258
  %arrayidx266 = getelementptr i8, i8* %155, i64 3, !dbg !2368
  %156 = load i8, i8* %arrayidx266, align 1, !dbg !2368, !tbaa !1331
  %conv267 = zext i8 %156 to i32, !dbg !2368
  %157 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i64 3), align 1, !dbg !2370, !tbaa !1331
  %conv268 = zext i8 %157 to i32, !dbg !2370
  %sub269 = sub i32 %conv267, %conv268, !dbg !2371
  store i32 %sub269, i32* %__result235, align 4, !dbg !2372, !tbaa !1271
  br label %if.end.270, !dbg !2373

if.end.270:                                       ; preds = %if.then.265, %land.lhs.true.262, %if.then.255
  br label %if.end.271, !dbg !2374

if.end.271:                                       ; preds = %if.end.270, %land.lhs.true.252, %if.then.245
  br label %if.end.272, !dbg !2378

if.end.272:                                       ; preds = %if.end.271, %land.lhs.true.242, %cond.true.231
  %158 = load i32, i32* %__result235, align 4, !dbg !2382, !tbaa !1271
  store i32 %158, i32* %tmp273, !dbg !2386, !tbaa !1271
  %159 = bitcast i32* %__result235 to i8*, !dbg !2387
  call void @llvm.lifetime.end(i64 4, i8* %159) #1, !dbg !2387
  %160 = bitcast i8** %__s1233 to i8*, !dbg !2387
  call void @llvm.lifetime.end(i64 8, i8* %160) #1, !dbg !2387
  %161 = load i32, i32* %tmp273, !dbg !2388, !tbaa !1271
  br label %cond.end.276, !dbg !2322

cond.false.274:                                   ; preds = %land.lhs.true.228, %if.else.222
  %162 = load i8*, i8** %name, align 8, !dbg !2389, !tbaa !1258
  %call275 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)) #1, !dbg !2392
  br label %cond.end.276, !dbg !2322

cond.end.276:                                     ; preds = %cond.false.274, %if.end.272
  %cond277 = phi i32 [ %161, %if.end.272 ], [ %call275, %cond.false.274 ], !dbg !2322
  store i32 %cond277, i32* %tmp227, !dbg !2393, !tbaa !1271
  %163 = bitcast i64* %__s2_len226 to i8*, !dbg !2396
  call void @llvm.lifetime.end(i64 8, i8* %163) #1, !dbg !2396
  %164 = bitcast i64* %__s1_len224 to i8*, !dbg !2396
  call void @llvm.lifetime.end(i64 8, i8* %164) #1, !dbg !2396
  %165 = load i32, i32* %tmp227, !dbg !2397, !tbaa !1271
  %cmp278 = icmp eq i32 %165, 0, !dbg !2398
  br i1 %cmp278, label %if.then.280, label %if.else.282, !dbg !2399

if.then.280:                                      ; preds = %cond.end.276
  %call281 = call %struct._object* @py_process_time(%struct._Py_clock_info_t* %info), !dbg !2400
  store %struct._object* %call281, %struct._object** %obj, align 8, !dbg !2401, !tbaa !1258
  br label %if.end.283, !dbg !2402

if.else.282:                                      ; preds = %cond.end.276
  %166 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2403, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0)), !dbg !2405
  store %struct._object* null, %struct._object** %retval, !dbg !2406
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2406

if.end.283:                                       ; preds = %if.then.280
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.then.220
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.then.160
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.then.100
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %if.then.41
  %167 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2407, !tbaa !1258
  %cmp288 = icmp eq %struct._object* %167, null, !dbg !2409
  br i1 %cmp288, label %if.then.290, label %if.end.291, !dbg !2410

if.then.290:                                      ; preds = %if.end.287
  store %struct._object* null, %struct._object** %retval, !dbg !2411
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2411

if.end.291:                                       ; preds = %if.end.287
  br label %do.body, !dbg !2412

do.body:                                          ; preds = %if.end.291
  %168 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2413
  call void @llvm.lifetime.start(i64 8, i8* %168) #1, !dbg !2413
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1057, metadata !1254), !dbg !2415
  %169 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2416, !tbaa !1258
  store %struct._object* %169, %struct._object** %_py_decref_tmp, align 8, !dbg !2415, !tbaa !1258
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2417, !tbaa !1258
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 0, !dbg !2419
  %171 = load i64, i64* %ob_refcnt, align 8, !dbg !2420, !tbaa !1282
  %dec = add i64 %171, -1, !dbg !2420
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2420, !tbaa !1282
  %cmp293 = icmp ne i64 %dec, 0, !dbg !2421
  br i1 %cmp293, label %if.then.295, label %if.else.296, !dbg !2422

if.then.295:                                      ; preds = %do.body
  br label %if.end.297, !dbg !2423

if.else.296:                                      ; preds = %do.body
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2425, !tbaa !1258
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 1, !dbg !2427
  %173 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2427, !tbaa !1857
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %173, i32 0, i32 4, !dbg !2428
  %174 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2428, !tbaa !1859
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2429, !tbaa !1258
  call void %174(%struct._object* %175), !dbg !2430
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.296, %if.then.295
  %176 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2431
  call void @llvm.lifetime.end(i64 8, i8* %176) #1, !dbg !2431
  br label %do.cond, !dbg !2433

do.cond:                                          ; preds = %if.end.297
  br label %do.end, !dbg !2434

do.end:                                           ; preds = %do.cond
  %call298 = call %struct._object* @PyDict_New(), !dbg !2436
  store %struct._object* %call298, %struct._object** %dict, align 8, !dbg !2437, !tbaa !1258
  %177 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2438, !tbaa !1258
  %cmp299 = icmp eq %struct._object* %177, null, !dbg !2440
  br i1 %cmp299, label %if.then.301, label %if.end.302, !dbg !2441

if.then.301:                                      ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2442

if.end.302:                                       ; preds = %do.end
  %implementation303 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 0, !dbg !2443
  %178 = load i8*, i8** %implementation303, align 8, !dbg !2443, !tbaa !1947
  %call304 = call %struct._object* @PyUnicode_FromString(i8* %178), !dbg !2444
  store %struct._object* %call304, %struct._object** %obj, align 8, !dbg !2445, !tbaa !1258
  %179 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2446, !tbaa !1258
  %cmp305 = icmp eq %struct._object* %179, null, !dbg !2448
  br i1 %cmp305, label %if.then.307, label %if.end.308, !dbg !2449

if.then.307:                                      ; preds = %if.end.302
  br label %error, !dbg !2450

if.end.308:                                       ; preds = %if.end.302
  %180 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2451, !tbaa !1258
  %181 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2453, !tbaa !1258
  %call309 = call i32 @PyDict_SetItemString(%struct._object* %180, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), %struct._object* %181), !dbg !2454
  %cmp310 = icmp eq i32 %call309, -1, !dbg !2455
  br i1 %cmp310, label %if.then.312, label %if.end.313, !dbg !2456

if.then.312:                                      ; preds = %if.end.308
  br label %error, !dbg !2457

if.end.313:                                       ; preds = %if.end.308
  br label %do.body.314, !dbg !2458

do.body.314:                                      ; preds = %if.end.313
  %182 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2459
  call void @llvm.lifetime.start(i64 8, i8* %182) #1, !dbg !2459
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !1059, metadata !1254), !dbg !2461
  %183 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2462, !tbaa !1258
  store %struct._object* %183, %struct._object** %_py_tmp, align 8, !dbg !2461, !tbaa !1258
  %184 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2463, !tbaa !1258
  %cmp316 = icmp ne %struct._object* %184, null, !dbg !2464
  br i1 %cmp316, label %if.then.318, label %if.end.333, !dbg !2465

if.then.318:                                      ; preds = %do.body.314
  store %struct._object* null, %struct._object** %obj, align 8, !dbg !2466, !tbaa !1258
  br label %do.body.319, !dbg !2468

do.body.319:                                      ; preds = %if.then.318
  %185 = bitcast %struct._object** %_py_decref_tmp321 to i8*, !dbg !2469
  call void @llvm.lifetime.start(i64 8, i8* %185) #1, !dbg !2469
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp321, metadata !1061, metadata !1254), !dbg !2471
  %186 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2472, !tbaa !1258
  store %struct._object* %186, %struct._object** %_py_decref_tmp321, align 8, !dbg !2471, !tbaa !1258
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp321, align 8, !dbg !2473, !tbaa !1258
  %ob_refcnt322 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0, !dbg !2475
  %188 = load i64, i64* %ob_refcnt322, align 8, !dbg !2476, !tbaa !1282
  %dec323 = add i64 %188, -1, !dbg !2476
  store i64 %dec323, i64* %ob_refcnt322, align 8, !dbg !2476, !tbaa !1282
  %cmp324 = icmp ne i64 %dec323, 0, !dbg !2477
  br i1 %cmp324, label %if.then.326, label %if.else.327, !dbg !2478

if.then.326:                                      ; preds = %do.body.319
  br label %if.end.330, !dbg !2479

if.else.327:                                      ; preds = %do.body.319
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp321, align 8, !dbg !2481, !tbaa !1258
  %ob_type328 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1, !dbg !2483
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type328, align 8, !dbg !2483, !tbaa !1857
  %tp_dealloc329 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4, !dbg !2484
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc329, align 8, !dbg !2484, !tbaa !1859
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp321, align 8, !dbg !2485, !tbaa !1258
  call void %191(%struct._object* %192), !dbg !2486
  br label %if.end.330

if.end.330:                                       ; preds = %if.else.327, %if.then.326
  %193 = bitcast %struct._object** %_py_decref_tmp321 to i8*, !dbg !2487
  call void @llvm.lifetime.end(i64 8, i8* %193) #1, !dbg !2487
  br label %do.cond.331, !dbg !2489

do.cond.331:                                      ; preds = %if.end.330
  br label %do.end.332, !dbg !2490

do.end.332:                                       ; preds = %do.cond.331
  br label %if.end.333, !dbg !2492

if.end.333:                                       ; preds = %do.end.332, %do.body.314
  %194 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2494
  call void @llvm.lifetime.end(i64 8, i8* %194) #1, !dbg !2494
  br label %do.cond.334, !dbg !2497

do.cond.334:                                      ; preds = %if.end.333
  br label %do.end.335, !dbg !2498

do.end.335:                                       ; preds = %do.cond.334
  %monotonic336 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 1, !dbg !2500
  %195 = load i32, i32* %monotonic336, align 4, !dbg !2500, !tbaa !1951
  %conv337 = sext i32 %195 to i64, !dbg !2501
  %call338 = call %struct._object* @PyBool_FromLong(i64 %conv337), !dbg !2502
  store %struct._object* %call338, %struct._object** %obj, align 8, !dbg !2503, !tbaa !1258
  %196 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2504, !tbaa !1258
  %cmp339 = icmp eq %struct._object* %196, null, !dbg !2506
  br i1 %cmp339, label %if.then.341, label %if.end.342, !dbg !2507

if.then.341:                                      ; preds = %do.end.335
  br label %error, !dbg !2508

if.end.342:                                       ; preds = %do.end.335
  %197 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2509, !tbaa !1258
  %198 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2511, !tbaa !1258
  %call343 = call i32 @PyDict_SetItemString(%struct._object* %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._object* %198), !dbg !2512
  %cmp344 = icmp eq i32 %call343, -1, !dbg !2513
  br i1 %cmp344, label %if.then.346, label %if.end.347, !dbg !2514

if.then.346:                                      ; preds = %if.end.342
  br label %error, !dbg !2515

if.end.347:                                       ; preds = %if.end.342
  br label %do.body.348, !dbg !2516

do.body.348:                                      ; preds = %if.end.347
  %199 = bitcast %struct._object** %_py_tmp350 to i8*, !dbg !2517
  call void @llvm.lifetime.start(i64 8, i8* %199) #1, !dbg !2517
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp350, metadata !1065, metadata !1254), !dbg !2519
  %200 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2520, !tbaa !1258
  store %struct._object* %200, %struct._object** %_py_tmp350, align 8, !dbg !2519, !tbaa !1258
  %201 = load %struct._object*, %struct._object** %_py_tmp350, align 8, !dbg !2521, !tbaa !1258
  %cmp351 = icmp ne %struct._object* %201, null, !dbg !2522
  br i1 %cmp351, label %if.then.353, label %if.end.368, !dbg !2523

if.then.353:                                      ; preds = %do.body.348
  store %struct._object* null, %struct._object** %obj, align 8, !dbg !2524, !tbaa !1258
  br label %do.body.354, !dbg !2526

do.body.354:                                      ; preds = %if.then.353
  %202 = bitcast %struct._object** %_py_decref_tmp356 to i8*, !dbg !2527
  call void @llvm.lifetime.start(i64 8, i8* %202) #1, !dbg !2527
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp356, metadata !1067, metadata !1254), !dbg !2529
  %203 = load %struct._object*, %struct._object** %_py_tmp350, align 8, !dbg !2530, !tbaa !1258
  store %struct._object* %203, %struct._object** %_py_decref_tmp356, align 8, !dbg !2529, !tbaa !1258
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp356, align 8, !dbg !2531, !tbaa !1258
  %ob_refcnt357 = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 0, !dbg !2533
  %205 = load i64, i64* %ob_refcnt357, align 8, !dbg !2534, !tbaa !1282
  %dec358 = add i64 %205, -1, !dbg !2534
  store i64 %dec358, i64* %ob_refcnt357, align 8, !dbg !2534, !tbaa !1282
  %cmp359 = icmp ne i64 %dec358, 0, !dbg !2535
  br i1 %cmp359, label %if.then.361, label %if.else.362, !dbg !2536

if.then.361:                                      ; preds = %do.body.354
  br label %if.end.365, !dbg !2537

if.else.362:                                      ; preds = %do.body.354
  %206 = load %struct._object*, %struct._object** %_py_decref_tmp356, align 8, !dbg !2539, !tbaa !1258
  %ob_type363 = getelementptr inbounds %struct._object, %struct._object* %206, i32 0, i32 1, !dbg !2541
  %207 = load %struct._typeobject*, %struct._typeobject** %ob_type363, align 8, !dbg !2541, !tbaa !1857
  %tp_dealloc364 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %207, i32 0, i32 4, !dbg !2542
  %208 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc364, align 8, !dbg !2542, !tbaa !1859
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp356, align 8, !dbg !2543, !tbaa !1258
  call void %208(%struct._object* %209), !dbg !2544
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.362, %if.then.361
  %210 = bitcast %struct._object** %_py_decref_tmp356 to i8*, !dbg !2545
  call void @llvm.lifetime.end(i64 8, i8* %210) #1, !dbg !2545
  br label %do.cond.366, !dbg !2547

do.cond.366:                                      ; preds = %if.end.365
  br label %do.end.367, !dbg !2548

do.end.367:                                       ; preds = %do.cond.366
  br label %if.end.368, !dbg !2550

if.end.368:                                       ; preds = %do.end.367, %do.body.348
  %211 = bitcast %struct._object** %_py_tmp350 to i8*, !dbg !2552
  call void @llvm.lifetime.end(i64 8, i8* %211) #1, !dbg !2552
  br label %do.cond.369, !dbg !2553

do.cond.369:                                      ; preds = %if.end.368
  br label %do.end.370, !dbg !2554

do.end.370:                                       ; preds = %do.cond.369
  %adjustable371 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 2, !dbg !2556
  %212 = load i32, i32* %adjustable371, align 4, !dbg !2556, !tbaa !1954
  %conv372 = sext i32 %212 to i64, !dbg !2557
  %call373 = call %struct._object* @PyBool_FromLong(i64 %conv372), !dbg !2558
  store %struct._object* %call373, %struct._object** %obj, align 8, !dbg !2559, !tbaa !1258
  %213 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2560, !tbaa !1258
  %cmp374 = icmp eq %struct._object* %213, null, !dbg !2562
  br i1 %cmp374, label %if.then.376, label %if.end.377, !dbg !2563

if.then.376:                                      ; preds = %do.end.370
  br label %error, !dbg !2564

if.end.377:                                       ; preds = %do.end.370
  %214 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2565, !tbaa !1258
  %215 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2567, !tbaa !1258
  %call378 = call i32 @PyDict_SetItemString(%struct._object* %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), %struct._object* %215), !dbg !2568
  %cmp379 = icmp eq i32 %call378, -1, !dbg !2569
  br i1 %cmp379, label %if.then.381, label %if.end.382, !dbg !2570

if.then.381:                                      ; preds = %if.end.377
  br label %error, !dbg !2571

if.end.382:                                       ; preds = %if.end.377
  br label %do.body.383, !dbg !2572

do.body.383:                                      ; preds = %if.end.382
  %216 = bitcast %struct._object** %_py_tmp385 to i8*, !dbg !2573
  call void @llvm.lifetime.start(i64 8, i8* %216) #1, !dbg !2573
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp385, metadata !1071, metadata !1254), !dbg !2575
  %217 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2576, !tbaa !1258
  store %struct._object* %217, %struct._object** %_py_tmp385, align 8, !dbg !2575, !tbaa !1258
  %218 = load %struct._object*, %struct._object** %_py_tmp385, align 8, !dbg !2577, !tbaa !1258
  %cmp386 = icmp ne %struct._object* %218, null, !dbg !2578
  br i1 %cmp386, label %if.then.388, label %if.end.403, !dbg !2579

if.then.388:                                      ; preds = %do.body.383
  store %struct._object* null, %struct._object** %obj, align 8, !dbg !2580, !tbaa !1258
  br label %do.body.389, !dbg !2582

do.body.389:                                      ; preds = %if.then.388
  %219 = bitcast %struct._object** %_py_decref_tmp391 to i8*, !dbg !2583
  call void @llvm.lifetime.start(i64 8, i8* %219) #1, !dbg !2583
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp391, metadata !1073, metadata !1254), !dbg !2585
  %220 = load %struct._object*, %struct._object** %_py_tmp385, align 8, !dbg !2586, !tbaa !1258
  store %struct._object* %220, %struct._object** %_py_decref_tmp391, align 8, !dbg !2585, !tbaa !1258
  %221 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8, !dbg !2587, !tbaa !1258
  %ob_refcnt392 = getelementptr inbounds %struct._object, %struct._object* %221, i32 0, i32 0, !dbg !2589
  %222 = load i64, i64* %ob_refcnt392, align 8, !dbg !2590, !tbaa !1282
  %dec393 = add i64 %222, -1, !dbg !2590
  store i64 %dec393, i64* %ob_refcnt392, align 8, !dbg !2590, !tbaa !1282
  %cmp394 = icmp ne i64 %dec393, 0, !dbg !2591
  br i1 %cmp394, label %if.then.396, label %if.else.397, !dbg !2592

if.then.396:                                      ; preds = %do.body.389
  br label %if.end.400, !dbg !2593

if.else.397:                                      ; preds = %do.body.389
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8, !dbg !2595, !tbaa !1258
  %ob_type398 = getelementptr inbounds %struct._object, %struct._object* %223, i32 0, i32 1, !dbg !2597
  %224 = load %struct._typeobject*, %struct._typeobject** %ob_type398, align 8, !dbg !2597, !tbaa !1857
  %tp_dealloc399 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %224, i32 0, i32 4, !dbg !2598
  %225 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc399, align 8, !dbg !2598, !tbaa !1859
  %226 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8, !dbg !2599, !tbaa !1258
  call void %225(%struct._object* %226), !dbg !2600
  br label %if.end.400

if.end.400:                                       ; preds = %if.else.397, %if.then.396
  %227 = bitcast %struct._object** %_py_decref_tmp391 to i8*, !dbg !2601
  call void @llvm.lifetime.end(i64 8, i8* %227) #1, !dbg !2601
  br label %do.cond.401, !dbg !2603

do.cond.401:                                      ; preds = %if.end.400
  br label %do.end.402, !dbg !2604

do.end.402:                                       ; preds = %do.cond.401
  br label %if.end.403, !dbg !2606

if.end.403:                                       ; preds = %do.end.402, %do.body.383
  %228 = bitcast %struct._object** %_py_tmp385 to i8*, !dbg !2608
  call void @llvm.lifetime.end(i64 8, i8* %228) #1, !dbg !2608
  br label %do.cond.404, !dbg !2609

do.cond.404:                                      ; preds = %if.end.403
  br label %do.end.405, !dbg !2610

do.end.405:                                       ; preds = %do.cond.404
  %resolution406 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %info, i32 0, i32 3, !dbg !2612
  %229 = load double, double* %resolution406, align 8, !dbg !2612, !tbaa !1957
  %call407 = call %struct._object* @PyFloat_FromDouble(double %229), !dbg !2613
  store %struct._object* %call407, %struct._object** %obj, align 8, !dbg !2614, !tbaa !1258
  %230 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2615, !tbaa !1258
  %cmp408 = icmp eq %struct._object* %230, null, !dbg !2617
  br i1 %cmp408, label %if.then.410, label %if.end.411, !dbg !2618

if.then.410:                                      ; preds = %do.end.405
  br label %error, !dbg !2619

if.end.411:                                       ; preds = %do.end.405
  %231 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2620, !tbaa !1258
  %232 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2622, !tbaa !1258
  %call412 = call i32 @PyDict_SetItemString(%struct._object* %231, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), %struct._object* %232), !dbg !2623
  %cmp413 = icmp eq i32 %call412, -1, !dbg !2624
  br i1 %cmp413, label %if.then.415, label %if.end.416, !dbg !2625

if.then.415:                                      ; preds = %if.end.411
  br label %error, !dbg !2626

if.end.416:                                       ; preds = %if.end.411
  br label %do.body.417, !dbg !2627

do.body.417:                                      ; preds = %if.end.416
  %233 = bitcast %struct._object** %_py_tmp419 to i8*, !dbg !2628
  call void @llvm.lifetime.start(i64 8, i8* %233) #1, !dbg !2628
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp419, metadata !1077, metadata !1254), !dbg !2630
  %234 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2631, !tbaa !1258
  store %struct._object* %234, %struct._object** %_py_tmp419, align 8, !dbg !2630, !tbaa !1258
  %235 = load %struct._object*, %struct._object** %_py_tmp419, align 8, !dbg !2632, !tbaa !1258
  %cmp420 = icmp ne %struct._object* %235, null, !dbg !2633
  br i1 %cmp420, label %if.then.422, label %if.end.437, !dbg !2634

if.then.422:                                      ; preds = %do.body.417
  store %struct._object* null, %struct._object** %obj, align 8, !dbg !2635, !tbaa !1258
  br label %do.body.423, !dbg !2637

do.body.423:                                      ; preds = %if.then.422
  %236 = bitcast %struct._object** %_py_decref_tmp425 to i8*, !dbg !2638
  call void @llvm.lifetime.start(i64 8, i8* %236) #1, !dbg !2638
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp425, metadata !1079, metadata !1254), !dbg !2640
  %237 = load %struct._object*, %struct._object** %_py_tmp419, align 8, !dbg !2641, !tbaa !1258
  store %struct._object* %237, %struct._object** %_py_decref_tmp425, align 8, !dbg !2640, !tbaa !1258
  %238 = load %struct._object*, %struct._object** %_py_decref_tmp425, align 8, !dbg !2642, !tbaa !1258
  %ob_refcnt426 = getelementptr inbounds %struct._object, %struct._object* %238, i32 0, i32 0, !dbg !2644
  %239 = load i64, i64* %ob_refcnt426, align 8, !dbg !2645, !tbaa !1282
  %dec427 = add i64 %239, -1, !dbg !2645
  store i64 %dec427, i64* %ob_refcnt426, align 8, !dbg !2645, !tbaa !1282
  %cmp428 = icmp ne i64 %dec427, 0, !dbg !2646
  br i1 %cmp428, label %if.then.430, label %if.else.431, !dbg !2647

if.then.430:                                      ; preds = %do.body.423
  br label %if.end.434, !dbg !2648

if.else.431:                                      ; preds = %do.body.423
  %240 = load %struct._object*, %struct._object** %_py_decref_tmp425, align 8, !dbg !2650, !tbaa !1258
  %ob_type432 = getelementptr inbounds %struct._object, %struct._object* %240, i32 0, i32 1, !dbg !2652
  %241 = load %struct._typeobject*, %struct._typeobject** %ob_type432, align 8, !dbg !2652, !tbaa !1857
  %tp_dealloc433 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %241, i32 0, i32 4, !dbg !2653
  %242 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc433, align 8, !dbg !2653, !tbaa !1859
  %243 = load %struct._object*, %struct._object** %_py_decref_tmp425, align 8, !dbg !2654, !tbaa !1258
  call void %242(%struct._object* %243), !dbg !2655
  br label %if.end.434

if.end.434:                                       ; preds = %if.else.431, %if.then.430
  %244 = bitcast %struct._object** %_py_decref_tmp425 to i8*, !dbg !2656
  call void @llvm.lifetime.end(i64 8, i8* %244) #1, !dbg !2656
  br label %do.cond.435, !dbg !2658

do.cond.435:                                      ; preds = %if.end.434
  br label %do.end.436, !dbg !2659

do.end.436:                                       ; preds = %do.cond.435
  br label %if.end.437, !dbg !2661

if.end.437:                                       ; preds = %do.end.436, %do.body.417
  %245 = bitcast %struct._object** %_py_tmp419 to i8*, !dbg !2663
  call void @llvm.lifetime.end(i64 8, i8* %245) #1, !dbg !2663
  br label %do.cond.438, !dbg !2664

do.cond.438:                                      ; preds = %if.end.437
  br label %do.end.439, !dbg !2665

do.end.439:                                       ; preds = %do.cond.438
  %246 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2667, !tbaa !1258
  %call440 = call %struct._object* @_PyNamespace_New(%struct._object* %246), !dbg !2668
  store %struct._object* %call440, %struct._object** %ns, align 8, !dbg !2669, !tbaa !1258
  br label %do.body.441, !dbg !2670

do.body.441:                                      ; preds = %do.end.439
  %247 = bitcast %struct._object** %_py_decref_tmp443 to i8*, !dbg !2671
  call void @llvm.lifetime.start(i64 8, i8* %247) #1, !dbg !2671
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp443, metadata !1083, metadata !1254), !dbg !2673
  %248 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2674, !tbaa !1258
  store %struct._object* %248, %struct._object** %_py_decref_tmp443, align 8, !dbg !2673, !tbaa !1258
  %249 = load %struct._object*, %struct._object** %_py_decref_tmp443, align 8, !dbg !2675, !tbaa !1258
  %ob_refcnt444 = getelementptr inbounds %struct._object, %struct._object* %249, i32 0, i32 0, !dbg !2677
  %250 = load i64, i64* %ob_refcnt444, align 8, !dbg !2678, !tbaa !1282
  %dec445 = add i64 %250, -1, !dbg !2678
  store i64 %dec445, i64* %ob_refcnt444, align 8, !dbg !2678, !tbaa !1282
  %cmp446 = icmp ne i64 %dec445, 0, !dbg !2679
  br i1 %cmp446, label %if.then.448, label %if.else.449, !dbg !2680

if.then.448:                                      ; preds = %do.body.441
  br label %if.end.452, !dbg !2681

if.else.449:                                      ; preds = %do.body.441
  %251 = load %struct._object*, %struct._object** %_py_decref_tmp443, align 8, !dbg !2683, !tbaa !1258
  %ob_type450 = getelementptr inbounds %struct._object, %struct._object* %251, i32 0, i32 1, !dbg !2685
  %252 = load %struct._typeobject*, %struct._typeobject** %ob_type450, align 8, !dbg !2685, !tbaa !1857
  %tp_dealloc451 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %252, i32 0, i32 4, !dbg !2686
  %253 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc451, align 8, !dbg !2686, !tbaa !1859
  %254 = load %struct._object*, %struct._object** %_py_decref_tmp443, align 8, !dbg !2687, !tbaa !1258
  call void %253(%struct._object* %254), !dbg !2688
  br label %if.end.452

if.end.452:                                       ; preds = %if.else.449, %if.then.448
  %255 = bitcast %struct._object** %_py_decref_tmp443 to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 8, i8* %255) #1, !dbg !2689
  br label %do.cond.453, !dbg !2690

do.cond.453:                                      ; preds = %if.end.452
  br label %do.end.454, !dbg !2691

do.end.454:                                       ; preds = %do.cond.453
  %256 = load %struct._object*, %struct._object** %ns, align 8, !dbg !2693, !tbaa !1258
  store %struct._object* %256, %struct._object** %retval, !dbg !2694
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2694

error:                                            ; preds = %if.then.415, %if.then.410, %if.then.381, %if.then.376, %if.then.346, %if.then.341, %if.then.312, %if.then.307
  br label %do.body.455, !dbg !2695

do.body.455:                                      ; preds = %error
  %257 = bitcast %struct._object** %_py_decref_tmp457 to i8*, !dbg !2696
  call void @llvm.lifetime.start(i64 8, i8* %257) #1, !dbg !2696
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp457, metadata !1085, metadata !1254), !dbg !2698
  %258 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2699, !tbaa !1258
  store %struct._object* %258, %struct._object** %_py_decref_tmp457, align 8, !dbg !2698, !tbaa !1258
  %259 = load %struct._object*, %struct._object** %_py_decref_tmp457, align 8, !dbg !2700, !tbaa !1258
  %ob_refcnt458 = getelementptr inbounds %struct._object, %struct._object* %259, i32 0, i32 0, !dbg !2702
  %260 = load i64, i64* %ob_refcnt458, align 8, !dbg !2703, !tbaa !1282
  %dec459 = add i64 %260, -1, !dbg !2703
  store i64 %dec459, i64* %ob_refcnt458, align 8, !dbg !2703, !tbaa !1282
  %cmp460 = icmp ne i64 %dec459, 0, !dbg !2704
  br i1 %cmp460, label %if.then.462, label %if.else.463, !dbg !2705

if.then.462:                                      ; preds = %do.body.455
  br label %if.end.466, !dbg !2706

if.else.463:                                      ; preds = %do.body.455
  %261 = load %struct._object*, %struct._object** %_py_decref_tmp457, align 8, !dbg !2708, !tbaa !1258
  %ob_type464 = getelementptr inbounds %struct._object, %struct._object* %261, i32 0, i32 1, !dbg !2710
  %262 = load %struct._typeobject*, %struct._typeobject** %ob_type464, align 8, !dbg !2710, !tbaa !1857
  %tp_dealloc465 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %262, i32 0, i32 4, !dbg !2711
  %263 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc465, align 8, !dbg !2711, !tbaa !1859
  %264 = load %struct._object*, %struct._object** %_py_decref_tmp457, align 8, !dbg !2712, !tbaa !1258
  call void %263(%struct._object* %264), !dbg !2713
  br label %if.end.466

if.end.466:                                       ; preds = %if.else.463, %if.then.462
  %265 = bitcast %struct._object** %_py_decref_tmp457 to i8*, !dbg !2714
  call void @llvm.lifetime.end(i64 8, i8* %265) #1, !dbg !2714
  br label %do.cond.467, !dbg !2715

do.cond.467:                                      ; preds = %if.end.466
  br label %do.end.468, !dbg !2716

do.end.468:                                       ; preds = %do.cond.467
  br label %do.body.469, !dbg !2718

do.body.469:                                      ; preds = %do.end.468
  %266 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2719
  call void @llvm.lifetime.start(i64 8, i8* %266) #1, !dbg !2719
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1087, metadata !1254), !dbg !2721
  %267 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2722, !tbaa !1258
  store %struct._object* %267, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2721, !tbaa !1258
  %268 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2723, !tbaa !1258
  %cmp471 = icmp ne %struct._object* %268, null, !dbg !2724
  br i1 %cmp471, label %if.then.473, label %if.end.488, !dbg !2725

if.then.473:                                      ; preds = %do.body.469
  br label %do.body.474, !dbg !2726

do.body.474:                                      ; preds = %if.then.473
  %269 = bitcast %struct._object** %_py_decref_tmp476 to i8*, !dbg !2728
  call void @llvm.lifetime.start(i64 8, i8* %269) #1, !dbg !2728
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp476, metadata !1089, metadata !1254), !dbg !2730
  %270 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2731, !tbaa !1258
  store %struct._object* %270, %struct._object** %_py_decref_tmp476, align 8, !dbg !2730, !tbaa !1258
  %271 = load %struct._object*, %struct._object** %_py_decref_tmp476, align 8, !dbg !2732, !tbaa !1258
  %ob_refcnt477 = getelementptr inbounds %struct._object, %struct._object* %271, i32 0, i32 0, !dbg !2734
  %272 = load i64, i64* %ob_refcnt477, align 8, !dbg !2735, !tbaa !1282
  %dec478 = add i64 %272, -1, !dbg !2735
  store i64 %dec478, i64* %ob_refcnt477, align 8, !dbg !2735, !tbaa !1282
  %cmp479 = icmp ne i64 %dec478, 0, !dbg !2736
  br i1 %cmp479, label %if.then.481, label %if.else.482, !dbg !2737

if.then.481:                                      ; preds = %do.body.474
  br label %if.end.485, !dbg !2738

if.else.482:                                      ; preds = %do.body.474
  %273 = load %struct._object*, %struct._object** %_py_decref_tmp476, align 8, !dbg !2740, !tbaa !1258
  %ob_type483 = getelementptr inbounds %struct._object, %struct._object* %273, i32 0, i32 1, !dbg !2742
  %274 = load %struct._typeobject*, %struct._typeobject** %ob_type483, align 8, !dbg !2742, !tbaa !1857
  %tp_dealloc484 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %274, i32 0, i32 4, !dbg !2743
  %275 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc484, align 8, !dbg !2743, !tbaa !1859
  %276 = load %struct._object*, %struct._object** %_py_decref_tmp476, align 8, !dbg !2744, !tbaa !1258
  call void %275(%struct._object* %276), !dbg !2745
  br label %if.end.485

if.end.485:                                       ; preds = %if.else.482, %if.then.481
  %277 = bitcast %struct._object** %_py_decref_tmp476 to i8*, !dbg !2746
  call void @llvm.lifetime.end(i64 8, i8* %277) #1, !dbg !2746
  br label %do.cond.486, !dbg !2748

do.cond.486:                                      ; preds = %if.end.485
  br label %do.end.487, !dbg !2749

do.end.487:                                       ; preds = %do.cond.486
  br label %if.end.488, !dbg !2751

if.end.488:                                       ; preds = %do.end.487, %do.body.469
  %278 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2753
  call void @llvm.lifetime.end(i64 8, i8* %278) #1, !dbg !2753
  br label %do.cond.489, !dbg !2754

do.cond.489:                                      ; preds = %if.end.488
  br label %do.end.490, !dbg !2755

do.end.490:                                       ; preds = %do.cond.489
  store %struct._object* null, %struct._object** %retval, !dbg !2757
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2757

cleanup:                                          ; preds = %do.end.490, %do.end.454, %if.then.301, %if.then.290, %if.else.282, %if.then
  %279 = bitcast %struct._object** %ns to i8*, !dbg !2758
  call void @llvm.lifetime.end(i64 8, i8* %279) #1, !dbg !2758
  %280 = bitcast %struct._object** %dict to i8*, !dbg !2758
  call void @llvm.lifetime.end(i64 8, i8* %280) #1, !dbg !2758
  %281 = bitcast %struct._object** %obj to i8*, !dbg !2758
  call void @llvm.lifetime.end(i64 8, i8* %281) #1, !dbg !2758
  %282 = bitcast %struct._Py_clock_info_t* %info to i8*, !dbg !2758
  call void @llvm.lifetime.end(i64 24, i8* %282) #1, !dbg !2758
  %283 = bitcast i8** %name to i8*, !dbg !2758
  call void @llvm.lifetime.end(i64 8, i8* %283) #1, !dbg !2758
  %284 = load %struct._object*, %struct._object** %retval, !dbg !2758
  ret %struct._object* %284, !dbg !2758
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
  %cleanup.dest.slot = alloca i32
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._Py_clock_info_t** %info.addr, metadata !629, metadata !1254), !dbg !2759
  %0 = bitcast %struct.timeval* %t to i8*, !dbg !2760
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !2760
  call void @llvm.dbg.declare(metadata %struct.timeval* %t, metadata !630, metadata !1254), !dbg !2761
  %1 = bitcast %struct.timespec* %tp to i8*, !dbg !2762
  call void @llvm.lifetime.start(i64 16, i8* %1) #1, !dbg !2762
  call void @llvm.dbg.declare(metadata %struct.timespec* %tp, metadata !638, metadata !1254), !dbg !2763
  %2 = bitcast i32* %ret to i8*, !dbg !2764
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2764
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !644, metadata !1254), !dbg !2765
  %call = call i32 @clock_gettime(i32 0, %struct.timespec* %tp) #1, !dbg !2766
  store i32 %call, i32* %ret, align 4, !dbg !2767, !tbaa !1271
  %3 = load i32, i32* %ret, align 4, !dbg !2768, !tbaa !1271
  %cmp = icmp eq i32 %3, 0, !dbg !2769
  br i1 %cmp, label %if.then, label %if.end.15, !dbg !2770

if.then:                                          ; preds = %entry
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2771, !tbaa !1258
  %tobool = icmp ne %struct._Py_clock_info_t* %4, null, !dbg !2771
  br i1 %tobool, label %if.then.1, label %if.end.7, !dbg !2772

if.then.1:                                        ; preds = %if.then
  %5 = bitcast %struct.timespec* %res to i8*, !dbg !2773
  call void @llvm.lifetime.start(i64 16, i8* %5) #1, !dbg !2773
  call void @llvm.dbg.declare(metadata %struct.timespec* %res, metadata !645, metadata !1254), !dbg !2774
  %6 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2775, !tbaa !1258
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %6, i32 0, i32 0, !dbg !2776
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i8** %implementation, align 8, !dbg !2777, !tbaa !1947
  %7 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2778, !tbaa !1258
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %7, i32 0, i32 1, !dbg !2779
  store i32 0, i32* %monotonic, align 4, !dbg !2780, !tbaa !1951
  %8 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2781, !tbaa !1258
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %8, i32 0, i32 2, !dbg !2782
  store i32 1, i32* %adjustable, align 4, !dbg !2783, !tbaa !1954
  %call2 = call i32 @clock_getres(i32 0, %struct.timespec* %res) #1, !dbg !2784
  %cmp3 = icmp eq i32 %call2, 0, !dbg !2786
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !2787

if.then.4:                                        ; preds = %if.then.1
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 0, !dbg !2788
  %9 = load i64, i64* %tv_sec, align 8, !dbg !2788, !tbaa !1433
  %conv = sitofp i64 %9 to double, !dbg !2789
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 1, !dbg !2790
  %10 = load i64, i64* %tv_nsec, align 8, !dbg !2790, !tbaa !1437
  %conv5 = sitofp i64 %10 to double, !dbg !2791
  %mul = fmul double %conv5, 1.000000e-09, !dbg !2792
  %add = fadd double %conv, %mul, !dbg !2793
  %11 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2794, !tbaa !1258
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %11, i32 0, i32 3, !dbg !2795
  store double %add, double* %resolution, align 8, !dbg !2796, !tbaa !1957
  br label %if.end, !dbg !2794

if.else:                                          ; preds = %if.then.1
  %12 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2797, !tbaa !1258
  %resolution6 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %12, i32 0, i32 3, !dbg !2798
  store double 1.000000e-09, double* %resolution6, align 8, !dbg !2799, !tbaa !1957
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct.timespec* %res to i8*, !dbg !2800
  call void @llvm.lifetime.end(i64 16, i8* %13) #1, !dbg !2800
  br label %if.end.7, !dbg !2801

if.end.7:                                         ; preds = %if.end, %if.then
  %tv_sec8 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0, !dbg !2802
  %14 = load i64, i64* %tv_sec8, align 8, !dbg !2802, !tbaa !1433
  %conv9 = sitofp i64 %14 to double, !dbg !2803
  %tv_nsec10 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1, !dbg !2804
  %15 = load i64, i64* %tv_nsec10, align 8, !dbg !2804, !tbaa !1437
  %conv11 = sitofp i64 %15 to double, !dbg !2805
  %mul12 = fmul double %conv11, 1.000000e-09, !dbg !2806
  %add13 = fadd double %conv9, %mul12, !dbg !2807
  %call14 = call %struct._object* @PyFloat_FromDouble(double %add13), !dbg !2808
  store %struct._object* %call14, %struct._object** %retval, !dbg !2809
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2809

if.end.15:                                        ; preds = %entry
  %16 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2810, !tbaa !1258
  call void @_PyTime_gettimeofday_info(%struct.timeval* %t, %struct._Py_clock_info_t* %16), !dbg !2811
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 0, !dbg !2812
  %17 = load i64, i64* %tv_sec16, align 8, !dbg !2812, !tbaa !2813
  %conv17 = sitofp i64 %17 to double, !dbg !2815
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 1, !dbg !2816
  %18 = load i64, i64* %tv_usec, align 8, !dbg !2816, !tbaa !2817
  %conv18 = sitofp i64 %18 to double, !dbg !2818
  %mul19 = fmul double %conv18, 1.000000e-06, !dbg !2819
  %add20 = fadd double %conv17, %mul19, !dbg !2820
  %call21 = call %struct._object* @PyFloat_FromDouble(double %add20), !dbg !2821
  store %struct._object* %call21, %struct._object** %retval, !dbg !2822
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2822

cleanup:                                          ; preds = %if.end.15, %if.end.7
  %19 = bitcast i32* %ret to i8*, !dbg !2823
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !2823
  %20 = bitcast %struct.timespec* %tp to i8*, !dbg !2823
  call void @llvm.lifetime.end(i64 16, i8* %20) #1, !dbg !2823
  %21 = bitcast %struct.timeval* %t to i8*, !dbg !2823
  call void @llvm.lifetime.end(i64 16, i8* %21) #1, !dbg !2823
  %22 = load %struct._object*, %struct._object** %retval, !dbg !2823
  ret %struct._object* %22, !dbg !2823
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) #4

; Function Attrs: nounwind
declare i32 @clock_getres(i32, %struct.timespec*) #4

declare %struct._object* @PyFloat_FromDouble(double) #3

declare void @_PyTime_gettimeofday_info(%struct.timeval*, %struct._Py_clock_info_t*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyclock(%struct._Py_clock_info_t* %info) #0 {
entry:
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._Py_clock_info_t** %info.addr, metadata !656, metadata !1254), !dbg !2824
  %0 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2825, !tbaa !1258
  %call = call %struct._object* @floatclock(%struct._Py_clock_info_t* %0), !dbg !2826
  ret %struct._object* %call, !dbg !2827
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @floatclock(%struct._Py_clock_info_t* %info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._Py_clock_info_t** %info.addr, metadata !659, metadata !1254), !dbg !2828
  %0 = bitcast i64* %value to i8*, !dbg !2829
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2829
  call void @llvm.dbg.declare(metadata i64* %value, metadata !660, metadata !1254), !dbg !2830
  %call = call i64 @clock() #1, !dbg !2831
  store i64 %call, i64* %value, align 8, !dbg !2832, !tbaa !1308
  %1 = load i64, i64* %value, align 8, !dbg !2833, !tbaa !1308
  %cmp = icmp eq i64 %1, -1, !dbg !2835
  br i1 %cmp, label %if.then, label %if.end, !dbg !2836

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2837, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.21, i32 0, i32 0)), !dbg !2839
  store %struct._object* null, %struct._object** %retval, !dbg !2840
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2840

if.end:                                           ; preds = %entry
  %3 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2841, !tbaa !1258
  %tobool = icmp ne %struct._Py_clock_info_t* %3, null, !dbg !2841
  br i1 %tobool, label %if.then.1, label %if.end.2, !dbg !2843

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2844, !tbaa !1258
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %4, i32 0, i32 0, !dbg !2846
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8** %implementation, align 8, !dbg !2847, !tbaa !1947
  %5 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2848, !tbaa !1258
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %5, i32 0, i32 3, !dbg !2849
  store double 1.000000e-06, double* %resolution, align 8, !dbg !2850, !tbaa !1957
  %6 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2851, !tbaa !1258
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %6, i32 0, i32 1, !dbg !2852
  store i32 1, i32* %monotonic, align 4, !dbg !2853, !tbaa !1951
  %7 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !2854, !tbaa !1258
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %7, i32 0, i32 2, !dbg !2855
  store i32 0, i32* %adjustable, align 4, !dbg !2856, !tbaa !1954
  br label %if.end.2, !dbg !2857

if.end.2:                                         ; preds = %if.then.1, %if.end
  %8 = load i64, i64* %value, align 8, !dbg !2858, !tbaa !1308
  %conv = sitofp i64 %8 to double, !dbg !2859
  %div = fdiv double %conv, 1.000000e+06, !dbg !2860
  %call3 = call %struct._object* @PyFloat_FromDouble(double %div), !dbg !2861
  store %struct._object* %call3, %struct._object** %retval, !dbg !2862
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2862

cleanup:                                          ; preds = %if.end.2, %if.then
  %9 = bitcast i64* %value to i8*, !dbg !2863
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !2863
  %10 = load %struct._object*, %struct._object** %retval, !dbg !2863
  ret %struct._object* %10, !dbg !2863
}

; Function Attrs: nounwind
declare i64 @clock() #4

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

declare i32 @_PyTime_ObjectToTimespec(%struct._object*, i64*, i64*, i32) #3

; Function Attrs: nounwind
declare i32 @clock_settime(i32, %struct.timespec*) #4

; Function Attrs: nounwind uwtable
define internal i32 @floatsleep(double %secs) #0 {
entry:
  %retval = alloca i32, align 4
  %secs.addr = alloca double, align 8
  %t = alloca %struct.timeval, align 8
  %frac = alloca double, align 8
  %err = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %cleanup.dest.slot = alloca i32
  store double %secs, double* %secs.addr, align 8, !tbaa !1533
  call void @llvm.dbg.declare(metadata double* %secs.addr, metadata !694, metadata !1254), !dbg !2864
  %0 = bitcast %struct.timeval* %t to i8*, !dbg !2865
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !2865
  call void @llvm.dbg.declare(metadata %struct.timeval* %t, metadata !695, metadata !1254), !dbg !2866
  %1 = bitcast double* %frac to i8*, !dbg !2867
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2867
  call void @llvm.dbg.declare(metadata double* %frac, metadata !696, metadata !1254), !dbg !2868
  %2 = bitcast i32* %err to i8*, !dbg !2869
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2869
  call void @llvm.dbg.declare(metadata i32* %err, metadata !697, metadata !1254), !dbg !2870
  %3 = load double, double* %secs.addr, align 8, !dbg !2871, !tbaa !1533
  %call = call double @fmod(double %3, double 1.000000e+00) #1, !dbg !2872
  store double %call, double* %frac, align 8, !dbg !2873, !tbaa !1533
  %4 = load double, double* %secs.addr, align 8, !dbg !2874, !tbaa !1533
  %call1 = call double @floor(double %4) #2, !dbg !2875
  store double %call1, double* %secs.addr, align 8, !dbg !2876, !tbaa !1533
  %5 = load double, double* %secs.addr, align 8, !dbg !2877, !tbaa !1533
  %conv = fptosi double %5 to i64, !dbg !2878
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 0, !dbg !2879
  store i64 %conv, i64* %tv_sec, align 8, !dbg !2880, !tbaa !2813
  %6 = load double, double* %frac, align 8, !dbg !2881, !tbaa !1533
  %mul = fmul double %6, 1.000000e+06, !dbg !2882
  %conv2 = fptosi double %mul to i64, !dbg !2883
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 1, !dbg !2884
  store i64 %conv2, i64* %tv_usec, align 8, !dbg !2885, !tbaa !2817
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !2886
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2886
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !698, metadata !1254), !dbg !2887
  %call3 = call %struct._ts* @PyEval_SaveThread(), !dbg !2888
  store %struct._ts* %call3, %struct._ts** %_save, align 8, !dbg !2889, !tbaa !1258
  %call4 = call i32 @select(i32 0, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %t), !dbg !2890
  store i32 %call4, i32* %err, align 4, !dbg !2891, !tbaa !1271
  %8 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2892, !tbaa !1258
  call void @PyEval_RestoreThread(%struct._ts* %8), !dbg !2893
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !2894
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !2894
  %10 = load i32, i32* %err, align 4, !dbg !2895, !tbaa !1271
  %cmp = icmp ne i32 %10, 0, !dbg !2897
  br i1 %cmp, label %if.then, label %if.end.14, !dbg !2898

if.then:                                          ; preds = %entry
  %call6 = call i32* @__errno_location() #2, !dbg !2899
  %11 = load i32, i32* %call6, align 4, !dbg !2902, !tbaa !1271
  %cmp7 = icmp eq i32 %11, 4, !dbg !2903
  br i1 %cmp7, label %if.then.9, label %if.else, !dbg !2904

if.then.9:                                        ; preds = %if.then
  %call10 = call i32 @PyErr_CheckSignals(), !dbg !2905
  %tobool = icmp ne i32 %call10, 0, !dbg !2905
  br i1 %tobool, label %if.then.11, label %if.end, !dbg !2908

if.then.11:                                       ; preds = %if.then.9
  store i32 -1, i32* %retval, !dbg !2909
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2909

if.end:                                           ; preds = %if.then.9
  br label %if.end.13, !dbg !2910

if.else:                                          ; preds = %if.then
  %12 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2911, !tbaa !1258
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %12), !dbg !2913
  store i32 -1, i32* %retval, !dbg !2914
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2914

if.end.13:                                        ; preds = %if.end
  br label %if.end.14, !dbg !2915

if.end.14:                                        ; preds = %if.end.13, %entry
  store i32 0, i32* %retval, !dbg !2916
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2916

cleanup:                                          ; preds = %if.end.14, %if.else, %if.then.11
  %13 = bitcast i32* %err to i8*, !dbg !2917
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !2917
  %14 = bitcast double* %frac to i8*, !dbg !2917
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !2917
  %15 = bitcast %struct.timeval* %t to i8*, !dbg !2917
  call void @llvm.lifetime.end(i64 16, i8* %15) #1, !dbg !2917
  %16 = load i32, i32* %retval, !dbg !2917
  ret i32 %16, !dbg !2917
}

; Function Attrs: nounwind
declare double @fmod(double, double) #4

; Function Attrs: nounwind readnone
declare double @floor(double) #5

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @PyErr_CheckSignals() #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_time_t_args(%struct._object* %args, i8* %format, i64* %pwhen) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %pwhen.addr = alloca i64*, align 8
  %ot = alloca %struct._object*, align 8
  %whent = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !783, metadata !1254), !dbg !2918
  store i8* %format, i8** %format.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !784, metadata !1254), !dbg !2919
  store i64* %pwhen, i64** %pwhen.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata i64** %pwhen.addr, metadata !785, metadata !1254), !dbg !2920
  %0 = bitcast %struct._object** %ot to i8*, !dbg !2921
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2921
  call void @llvm.dbg.declare(metadata %struct._object** %ot, metadata !786, metadata !1254), !dbg !2922
  store %struct._object* null, %struct._object** %ot, align 8, !dbg !2922, !tbaa !1258
  %1 = bitcast i64* %whent to i8*, !dbg !2923
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2923
  call void @llvm.dbg.declare(metadata i64* %whent, metadata !787, metadata !1254), !dbg !2924
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2925, !tbaa !1258
  %3 = load i8*, i8** %format.addr, align 8, !dbg !2927, !tbaa !1258
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* %3, %struct._object** %ot), !dbg !2928
  %tobool = icmp ne i32 %call, 0, !dbg !2928
  br i1 %tobool, label %if.end, label %if.then, !dbg !2929

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !2930
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2930

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %ot, align 8, !dbg !2931, !tbaa !1258
  %cmp = icmp eq %struct._object* %4, null, !dbg !2933
  br i1 %cmp, label %if.then.2, label %lor.lhs.false, !dbg !2934

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %ot, align 8, !dbg !2935, !tbaa !1258
  %cmp1 = icmp eq %struct._object* %5, @_Py_NoneStruct, !dbg !2937
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !2938

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %call3 = call i64 @time(i64* null) #1, !dbg !2939
  store i64 %call3, i64* %whent, align 8, !dbg !2941, !tbaa !1308
  br label %if.end.8, !dbg !2942

if.else:                                          ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %ot, align 8, !dbg !2943, !tbaa !1258
  %call4 = call i32 @_PyTime_ObjectToTime_t(%struct._object* %6, i64* %whent, i32 0), !dbg !2946
  %cmp5 = icmp eq i32 %call4, -1, !dbg !2947
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2948

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %retval, !dbg !2949
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2949

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  %7 = load i64, i64* %whent, align 8, !dbg !2950, !tbaa !1308
  %8 = load i64*, i64** %pwhen.addr, align 8, !dbg !2951, !tbaa !1258
  store i64 %7, i64* %8, align 8, !dbg !2952, !tbaa !1308
  store i32 1, i32* %retval, !dbg !2953
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2953

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then
  %9 = bitcast i64* %whent to i8*, !dbg !2954
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !2954
  %10 = bitcast %struct._object** %ot to i8*, !dbg !2954
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !2954
  %11 = load i32, i32* %retval, !dbg !2954
  ret i32 %11, !dbg !2954
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @tmtotuple(%struct.tm* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.tm*, align 8
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tm* %p, %struct.tm** %p.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct.tm** %p.addr, metadata !792, metadata !1254), !dbg !2955
  %0 = bitcast %struct._object** %v to i8*, !dbg !2956
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2956
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !793, metadata !1254), !dbg !2957
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @StructTimeType), !dbg !2958
  store %struct._object* %call, %struct._object** %v, align 8, !dbg !2957, !tbaa !1258
  %1 = load %struct._object*, %struct._object** %v, align 8, !dbg !2959, !tbaa !1258
  %cmp = icmp eq %struct._object* %1, null, !dbg !2961
  br i1 %cmp, label %if.then, label %if.end, !dbg !2962

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2963
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2963

if.end:                                           ; preds = %entry
  %2 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !2964, !tbaa !1258
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 5, !dbg !2965
  %3 = load i32, i32* %tm_year, align 4, !dbg !2965, !tbaa !2966
  %conv = sext i32 %3 to i64, !dbg !2967
  %add = add i64 %conv, 1900, !dbg !2968
  %call1 = call %struct._object* @PyLong_FromLong(i64 %add), !dbg !2969
  %4 = load %struct._object*, %struct._object** %v, align 8, !dbg !2970, !tbaa !1258
  %5 = bitcast %struct._object* %4 to %struct.PyTupleObject*, !dbg !2971
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %5, i32 0, i32 1, !dbg !2972
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2973
  store %struct._object* %call1, %struct._object** %arrayidx, align 8, !dbg !2974, !tbaa !1258
  %6 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !2975, !tbaa !1258
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4, !dbg !2976
  %7 = load i32, i32* %tm_mon, align 4, !dbg !2976, !tbaa !2977
  %conv2 = sext i32 %7 to i64, !dbg !2978
  %add3 = add i64 %conv2, 1, !dbg !2979
  %call4 = call %struct._object* @PyLong_FromLong(i64 %add3), !dbg !2980
  %8 = load %struct._object*, %struct._object** %v, align 8, !dbg !2981, !tbaa !1258
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*, !dbg !2982
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1, !dbg !2983
  %arrayidx6 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item5, i32 0, i64 1, !dbg !2984
  store %struct._object* %call4, %struct._object** %arrayidx6, align 8, !dbg !2985, !tbaa !1258
  %10 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !2986, !tbaa !1258
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3, !dbg !2987
  %11 = load i32, i32* %tm_mday, align 4, !dbg !2987, !tbaa !2988
  %conv7 = sext i32 %11 to i64, !dbg !2989
  %call8 = call %struct._object* @PyLong_FromLong(i64 %conv7), !dbg !2990
  %12 = load %struct._object*, %struct._object** %v, align 8, !dbg !2991, !tbaa !1258
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*, !dbg !2992
  %ob_item9 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1, !dbg !2993
  %arrayidx10 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item9, i32 0, i64 2, !dbg !2994
  store %struct._object* %call8, %struct._object** %arrayidx10, align 8, !dbg !2995, !tbaa !1258
  %14 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !2996, !tbaa !1258
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 2, !dbg !2997
  %15 = load i32, i32* %tm_hour, align 4, !dbg !2997, !tbaa !2998
  %conv11 = sext i32 %15 to i64, !dbg !2999
  %call12 = call %struct._object* @PyLong_FromLong(i64 %conv11), !dbg !3000
  %16 = load %struct._object*, %struct._object** %v, align 8, !dbg !3001, !tbaa !1258
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*, !dbg !3002
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1, !dbg !3003
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 3, !dbg !3004
  store %struct._object* %call12, %struct._object** %arrayidx14, align 8, !dbg !3005, !tbaa !1258
  %18 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3006, !tbaa !1258
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 1, !dbg !3007
  %19 = load i32, i32* %tm_min, align 4, !dbg !3007, !tbaa !3008
  %conv15 = sext i32 %19 to i64, !dbg !3009
  %call16 = call %struct._object* @PyLong_FromLong(i64 %conv15), !dbg !3010
  %20 = load %struct._object*, %struct._object** %v, align 8, !dbg !3011, !tbaa !1258
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*, !dbg !3012
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1, !dbg !3013
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 4, !dbg !3014
  store %struct._object* %call16, %struct._object** %arrayidx18, align 8, !dbg !3015, !tbaa !1258
  %22 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3016, !tbaa !1258
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 0, !dbg !3017
  %23 = load i32, i32* %tm_sec, align 4, !dbg !3017, !tbaa !3018
  %conv19 = sext i32 %23 to i64, !dbg !3019
  %call20 = call %struct._object* @PyLong_FromLong(i64 %conv19), !dbg !3020
  %24 = load %struct._object*, %struct._object** %v, align 8, !dbg !3021, !tbaa !1258
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*, !dbg !3022
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1, !dbg !3023
  %arrayidx22 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item21, i32 0, i64 5, !dbg !3024
  store %struct._object* %call20, %struct._object** %arrayidx22, align 8, !dbg !3025, !tbaa !1258
  %26 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3026, !tbaa !1258
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 6, !dbg !3027
  %27 = load i32, i32* %tm_wday, align 4, !dbg !3027, !tbaa !1676
  %add23 = add i32 %27, 6, !dbg !3028
  %conv24 = sext i32 %add23 to i64, !dbg !3029
  %rem = srem i64 %conv24, 7, !dbg !3030
  %call25 = call %struct._object* @PyLong_FromLong(i64 %rem), !dbg !3031
  %28 = load %struct._object*, %struct._object** %v, align 8, !dbg !3032, !tbaa !1258
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*, !dbg !3033
  %ob_item26 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1, !dbg !3034
  %arrayidx27 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item26, i32 0, i64 6, !dbg !3035
  store %struct._object* %call25, %struct._object** %arrayidx27, align 8, !dbg !3036, !tbaa !1258
  %30 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3037, !tbaa !1258
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 7, !dbg !3038
  %31 = load i32, i32* %tm_yday, align 4, !dbg !3038, !tbaa !3039
  %conv28 = sext i32 %31 to i64, !dbg !3040
  %add29 = add i64 %conv28, 1, !dbg !3041
  %call30 = call %struct._object* @PyLong_FromLong(i64 %add29), !dbg !3042
  %32 = load %struct._object*, %struct._object** %v, align 8, !dbg !3043, !tbaa !1258
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*, !dbg !3044
  %ob_item31 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1, !dbg !3045
  %arrayidx32 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item31, i32 0, i64 7, !dbg !3046
  store %struct._object* %call30, %struct._object** %arrayidx32, align 8, !dbg !3047, !tbaa !1258
  %34 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3048, !tbaa !1258
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 8, !dbg !3049
  %35 = load i32, i32* %tm_isdst, align 4, !dbg !3049, !tbaa !1749
  %conv33 = sext i32 %35 to i64, !dbg !3050
  %call34 = call %struct._object* @PyLong_FromLong(i64 %conv33), !dbg !3051
  %36 = load %struct._object*, %struct._object** %v, align 8, !dbg !3052, !tbaa !1258
  %37 = bitcast %struct._object* %36 to %struct.PyTupleObject*, !dbg !3053
  %ob_item35 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %37, i32 0, i32 1, !dbg !3054
  %arrayidx36 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item35, i32 0, i64 8, !dbg !3055
  store %struct._object* %call34, %struct._object** %arrayidx36, align 8, !dbg !3056, !tbaa !1258
  %38 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3057, !tbaa !1258
  %tm_zone = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 10, !dbg !3058
  %39 = load i8*, i8** %tm_zone, align 8, !dbg !3058, !tbaa !1320
  %call37 = call %struct._object* @PyUnicode_DecodeLocale(i8* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)), !dbg !3059
  %40 = load %struct._object*, %struct._object** %v, align 8, !dbg !3060, !tbaa !1258
  %41 = bitcast %struct._object* %40 to %struct.PyTupleObject*, !dbg !3061
  %ob_item38 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %41, i32 0, i32 1, !dbg !3062
  %arrayidx39 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item38, i32 0, i64 9, !dbg !3063
  store %struct._object* %call37, %struct._object** %arrayidx39, align 8, !dbg !3064, !tbaa !1258
  %42 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3065, !tbaa !1258
  %tm_gmtoff = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 9, !dbg !3066
  %43 = load i64, i64* %tm_gmtoff, align 8, !dbg !3066, !tbaa !1313
  %call40 = call %struct._object* @PyLong_FromLong(i64 %43), !dbg !3067
  %44 = load %struct._object*, %struct._object** %v, align 8, !dbg !3068, !tbaa !1258
  %45 = bitcast %struct._object* %44 to %struct.PyTupleObject*, !dbg !3069
  %ob_item41 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %45, i32 0, i32 1, !dbg !3070
  %arrayidx42 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item41, i32 0, i64 10, !dbg !3071
  store %struct._object* %call40, %struct._object** %arrayidx42, align 8, !dbg !3072, !tbaa !1258
  %call43 = call %struct._object* @PyErr_Occurred(), !dbg !3073
  %tobool = icmp ne %struct._object* %call43, null, !dbg !3073
  br i1 %tobool, label %if.then.44, label %if.end.56, !dbg !3074

if.then.44:                                       ; preds = %if.end
  br label %do.body, !dbg !3075

do.body:                                          ; preds = %if.then.44
  %46 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3076
  call void @llvm.lifetime.start(i64 8, i8* %46) #1, !dbg !3076
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !794, metadata !1254), !dbg !3078
  %47 = load %struct._object*, %struct._object** %v, align 8, !dbg !3079, !tbaa !1258
  store %struct._object* %47, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3078, !tbaa !1258
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3080, !tbaa !1258
  %cmp45 = icmp ne %struct._object* %48, null, !dbg !3081
  br i1 %cmp45, label %if.then.47, label %if.end.53, !dbg !3082

if.then.47:                                       ; preds = %do.body
  br label %do.body.48, !dbg !3083

do.body.48:                                       ; preds = %if.then.47
  %49 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3085
  call void @llvm.lifetime.start(i64 8, i8* %49) #1, !dbg !3085
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !798, metadata !1254), !dbg !3087
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3088, !tbaa !1258
  store %struct._object* %50, %struct._object** %_py_decref_tmp, align 8, !dbg !3087, !tbaa !1258
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3089, !tbaa !1258
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !3091
  %52 = load i64, i64* %ob_refcnt, align 8, !dbg !3092, !tbaa !1282
  %dec = add i64 %52, -1, !dbg !3092
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3092, !tbaa !1282
  %cmp49 = icmp ne i64 %dec, 0, !dbg !3093
  br i1 %cmp49, label %if.then.51, label %if.else, !dbg !3094

if.then.51:                                       ; preds = %do.body.48
  br label %if.end.52, !dbg !3095

if.else:                                          ; preds = %do.body.48
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3097, !tbaa !1258
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !3099
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3099, !tbaa !1857
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !3100
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3100, !tbaa !1859
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3101, !tbaa !1258
  call void %55(%struct._object* %56), !dbg !3102
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.51
  %57 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3103
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !3103
  br label %do.cond, !dbg !3105

do.cond:                                          ; preds = %if.end.52
  br label %do.end, !dbg !3106

do.end:                                           ; preds = %do.cond
  br label %if.end.53, !dbg !3108

if.end.53:                                        ; preds = %do.end, %do.body
  %58 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3110
  call void @llvm.lifetime.end(i64 8, i8* %58) #1, !dbg !3110
  br label %do.cond.54, !dbg !3113

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !3114

do.end.55:                                        ; preds = %do.cond.54
  store %struct._object* null, %struct._object** %retval, !dbg !3116
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3116

if.end.56:                                        ; preds = %if.end
  %59 = load %struct._object*, %struct._object** %v, align 8, !dbg !3117, !tbaa !1258
  store %struct._object* %59, %struct._object** %retval, !dbg !3118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3118

cleanup:                                          ; preds = %if.end.56, %do.end.55, %if.then
  %60 = bitcast %struct._object** %v to i8*, !dbg !3119
  call void @llvm.lifetime.end(i64 8, i8* %60) #1, !dbg !3119
  %61 = load %struct._object*, %struct._object** %retval, !dbg !3119
  ret %struct._object* %61, !dbg !3119
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare i32 @_PyTime_ObjectToTime_t(%struct._object*, i64*, i32) #3

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define internal i32 @pylocaltime(i64* %timep, %struct.tm* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %timep.addr = alloca i64*, align 8
  %result.addr = alloca %struct.tm*, align 8
  %local = alloca %struct.tm*, align 8
  %cleanup.dest.slot = alloca i32
  store i64* %timep, i64** %timep.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata i64** %timep.addr, metadata !811, metadata !1254), !dbg !3120
  store %struct.tm* %result, %struct.tm** %result.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct.tm** %result.addr, metadata !812, metadata !1254), !dbg !3121
  %0 = bitcast %struct.tm** %local to i8*, !dbg !3122
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3122
  call void @llvm.dbg.declare(metadata %struct.tm** %local, metadata !813, metadata !1254), !dbg !3123
  %1 = load i64*, i64** %timep.addr, align 8, !dbg !3124, !tbaa !1258
  %call = call %struct.tm* @localtime(i64* %1) #1, !dbg !3125
  store %struct.tm* %call, %struct.tm** %local, align 8, !dbg !3126, !tbaa !1258
  %2 = load %struct.tm*, %struct.tm** %local, align 8, !dbg !3127, !tbaa !1258
  %cmp = icmp eq %struct.tm* %2, null, !dbg !3129
  br i1 %cmp, label %if.then, label %if.end.6, !dbg !3130

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #2, !dbg !3131
  %3 = load i32, i32* %call1, align 4, !dbg !3134, !tbaa !1271
  %cmp2 = icmp eq i32 %3, 0, !dbg !3135
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !3136

if.then.3:                                        ; preds = %if.then
  %call4 = call i32* @__errno_location() #2, !dbg !3137
  store i32 22, i32* %call4, align 4, !dbg !3138, !tbaa !1271
  br label %if.end, !dbg !3139

if.end:                                           ; preds = %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3140, !tbaa !1258
  %call5 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4), !dbg !3141
  store i32 -1, i32* %retval, !dbg !3142
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3142

if.end.6:                                         ; preds = %entry
  %5 = load %struct.tm*, %struct.tm** %result.addr, align 8, !dbg !3143, !tbaa !1258
  %6 = load %struct.tm*, %struct.tm** %local, align 8, !dbg !3144, !tbaa !1258
  %7 = bitcast %struct.tm* %5 to i8*, !dbg !3145
  %8 = bitcast %struct.tm* %6 to i8*, !dbg !3145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 56, i32 8, i1 false), !dbg !3145, !tbaa.struct !1584
  store i32 0, i32* %retval, !dbg !3146
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3146

cleanup:                                          ; preds = %if.end.6, %if.end
  %9 = bitcast %struct.tm** %local to i8*, !dbg !3147
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !3147
  %10 = load i32, i32* %retval, !dbg !3147
  ret i32 %10, !dbg !3147
}

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #4

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @gettmarg(%struct._object* %args, %struct.tm* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %p.addr = alloca %struct.tm*, align 8
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %item = alloca %struct._object*, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !827, metadata !1254), !dbg !3148
  store %struct.tm* %p, %struct.tm** %p.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct.tm** %p.addr, metadata !828, metadata !1254), !dbg !3149
  %0 = bitcast i32* %y to i8*, !dbg !3150
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !3150
  call void @llvm.dbg.declare(metadata i32* %y, metadata !829, metadata !1254), !dbg !3151
  %1 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3152, !tbaa !1258
  %2 = bitcast %struct.tm* %1 to i8*, !dbg !3153
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 56, i32 1, i1 false), !dbg !3154
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3155, !tbaa !1258
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !3157
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3157, !tbaa !1857
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !3158
  %5 = load i64, i64* %tp_flags, align 8, !dbg !3158, !tbaa !3159
  %and = and i64 %5, 67108864, !dbg !3160
  %cmp = icmp ne i64 %and, 0, !dbg !3161
  br i1 %cmp, label %if.end, label %if.then, !dbg !3162

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3163, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0)), !dbg !3165
  store i32 0, i32* %retval, !dbg !3166
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26, !dbg !3166

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3167, !tbaa !1258
  %8 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3169, !tbaa !1258
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4, !dbg !3170
  %9 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3171, !tbaa !1258
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 3, !dbg !3172
  %10 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3173, !tbaa !1258
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2, !dbg !3174
  %11 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3175, !tbaa !1258
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1, !dbg !3176
  %12 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3177, !tbaa !1258
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0, !dbg !3178
  %13 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3179, !tbaa !1258
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 6, !dbg !3180
  %14 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3181, !tbaa !1258
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 7, !dbg !3182
  %15 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3183, !tbaa !1258
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 8, !dbg !3184
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32* %y, i32* %tm_mon, i32* %tm_mday, i32* %tm_hour, i32* %tm_min, i32* %tm_sec, i32* %tm_wday, i32* %tm_yday, i32* %tm_isdst), !dbg !3185
  %tobool = icmp ne i32 %call, 0, !dbg !3185
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !3186

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !3187
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26, !dbg !3187

if.end.2:                                         ; preds = %if.end
  %16 = load i32, i32* %y, align 4, !dbg !3188, !tbaa !1271
  %sub = sub i32 %16, 1900, !dbg !3189
  %17 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3190, !tbaa !1258
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 5, !dbg !3191
  store i32 %sub, i32* %tm_year, align 4, !dbg !3192, !tbaa !2966
  %18 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3193, !tbaa !1258
  %tm_mon3 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 4, !dbg !3194
  %19 = load i32, i32* %tm_mon3, align 4, !dbg !3195, !tbaa !2977
  %dec = add i32 %19, -1, !dbg !3195
  store i32 %dec, i32* %tm_mon3, align 4, !dbg !3195, !tbaa !2977
  %20 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3196, !tbaa !1258
  %tm_wday4 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 6, !dbg !3197
  %21 = load i32, i32* %tm_wday4, align 4, !dbg !3197, !tbaa !1676
  %add = add i32 %21, 1, !dbg !3198
  %rem = srem i32 %add, 7, !dbg !3199
  %22 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3200, !tbaa !1258
  %tm_wday5 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 6, !dbg !3201
  store i32 %rem, i32* %tm_wday5, align 4, !dbg !3202, !tbaa !1676
  %23 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3203, !tbaa !1258
  %tm_yday6 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 7, !dbg !3204
  %24 = load i32, i32* %tm_yday6, align 4, !dbg !3205, !tbaa !3039
  %dec7 = add i32 %24, -1, !dbg !3205
  store i32 %dec7, i32* %tm_yday6, align 4, !dbg !3205, !tbaa !3039
  %25 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3206, !tbaa !1258
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !3207
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !3207, !tbaa !1857
  %cmp9 = icmp eq %struct._typeobject* %26, @StructTimeType, !dbg !3208
  br i1 %cmp9, label %if.then.10, label %if.end.25, !dbg !3209

if.then.10:                                       ; preds = %if.end.2
  %27 = bitcast %struct._object** %item to i8*, !dbg !3210
  call void @llvm.lifetime.start(i64 8, i8* %27) #1, !dbg !3210
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !830, metadata !1254), !dbg !3211
  %28 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3212, !tbaa !1258
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*, !dbg !3213
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1, !dbg !3214
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 9, !dbg !3215
  %30 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3215, !tbaa !1258
  store %struct._object* %30, %struct._object** %item, align 8, !dbg !3216, !tbaa !1258
  %31 = load %struct._object*, %struct._object** %item, align 8, !dbg !3217, !tbaa !1258
  %cmp11 = icmp eq %struct._object* %31, @_Py_NoneStruct, !dbg !3218
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !3217

cond.true:                                        ; preds = %if.then.10
  br label %cond.end, !dbg !3219

cond.false:                                       ; preds = %if.then.10
  %32 = load %struct._object*, %struct._object** %item, align 8, !dbg !3221, !tbaa !1258
  %call12 = call i8* @PyUnicode_AsUTF8(%struct._object* %32), !dbg !3223
  br label %cond.end, !dbg !3217

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call12, %cond.false ], !dbg !3217
  %33 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3224, !tbaa !1258
  %tm_zone = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 10, !dbg !3227
  store i8* %cond, i8** %tm_zone, align 8, !dbg !3228, !tbaa !1320
  %34 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3229, !tbaa !1258
  %35 = bitcast %struct._object* %34 to %struct.PyTupleObject*, !dbg !3230
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i32 0, i32 1, !dbg !3231
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 10, !dbg !3232
  %36 = load %struct._object*, %struct._object** %arrayidx14, align 8, !dbg !3232, !tbaa !1258
  store %struct._object* %36, %struct._object** %item, align 8, !dbg !3233, !tbaa !1258
  %37 = load %struct._object*, %struct._object** %item, align 8, !dbg !3234, !tbaa !1258
  %cmp15 = icmp eq %struct._object* %37, @_Py_NoneStruct, !dbg !3235
  br i1 %cmp15, label %cond.true.16, label %cond.false.17, !dbg !3234

cond.true.16:                                     ; preds = %cond.end
  br label %cond.end.19, !dbg !3236

cond.false.17:                                    ; preds = %cond.end
  %38 = load %struct._object*, %struct._object** %item, align 8, !dbg !3237, !tbaa !1258
  %call18 = call i64 @PyLong_AsLong(%struct._object* %38), !dbg !3238
  br label %cond.end.19, !dbg !3234

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i64 [ 0, %cond.true.16 ], [ %call18, %cond.false.17 ], !dbg !3234
  %39 = load %struct.tm*, %struct.tm** %p.addr, align 8, !dbg !3239, !tbaa !1258
  %tm_gmtoff = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 9, !dbg !3240
  store i64 %cond20, i64* %tm_gmtoff, align 8, !dbg !3241, !tbaa !1313
  %call21 = call %struct._object* @PyErr_Occurred(), !dbg !3242
  %tobool22 = icmp ne %struct._object* %call21, null, !dbg !3242
  br i1 %tobool22, label %if.then.23, label %if.end.24, !dbg !3244

if.then.23:                                       ; preds = %cond.end.19
  store i32 0, i32* %retval, !dbg !3245
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3245

if.end.24:                                        ; preds = %cond.end.19
  store i32 0, i32* %cleanup.dest.slot, !dbg !3246
  br label %cleanup, !dbg !3246

cleanup:                                          ; preds = %if.end.24, %if.then.23
  %40 = bitcast %struct._object** %item to i8*, !dbg !3247
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !3247
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.25, !dbg !3249

if.end.25:                                        ; preds = %cleanup.cont, %if.end.2
  store i32 1, i32* %retval, !dbg !3250
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26, !dbg !3250

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.26

cleanup.26:                                       ; preds = %NewDefault, %if.end.25, %if.then.1, %if.then
  %41 = bitcast i32* %y to i8*, !dbg !3251
  call void @llvm.lifetime.end(i64 4, i8* %41) #1, !dbg !3251
  %42 = load i32, i32* %retval, !dbg !3251
  ret i32 %42, !dbg !3251
}

; Function Attrs: nounwind uwtable
define internal i32 @checktm(%struct.tm* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca %struct.tm*, align 8
  store %struct.tm* %buf, %struct.tm** %buf.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct.tm** %buf.addr, metadata !837, metadata !1254), !dbg !3252
  %0 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3253, !tbaa !1258
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 4, !dbg !3255
  %1 = load i32, i32* %tm_mon, align 4, !dbg !3255, !tbaa !2977
  %cmp = icmp eq i32 %1, -1, !dbg !3256
  br i1 %cmp, label %if.then, label %if.else, !dbg !3257

if.then:                                          ; preds = %entry
  %2 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3258, !tbaa !1258
  %tm_mon1 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4, !dbg !3259
  store i32 0, i32* %tm_mon1, align 4, !dbg !3260, !tbaa !2977
  br label %if.end.7, !dbg !3258

if.else:                                          ; preds = %entry
  %3 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3261, !tbaa !1258
  %tm_mon2 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4, !dbg !3263
  %4 = load i32, i32* %tm_mon2, align 4, !dbg !3263, !tbaa !2977
  %cmp3 = icmp slt i32 %4, 0, !dbg !3264
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false, !dbg !3265

lor.lhs.false:                                    ; preds = %if.else
  %5 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3266, !tbaa !1258
  %tm_mon4 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4, !dbg !3268
  %6 = load i32, i32* %tm_mon4, align 4, !dbg !3268, !tbaa !2977
  %cmp5 = icmp sgt i32 %6, 11, !dbg !3269
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !3270

if.then.6:                                        ; preds = %lor.lhs.false, %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3271, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0)), !dbg !3273
  store i32 0, i32* %retval, !dbg !3274
  br label %return, !dbg !3274

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %8 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3275, !tbaa !1258
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3, !dbg !3277
  %9 = load i32, i32* %tm_mday, align 4, !dbg !3277, !tbaa !2988
  %cmp8 = icmp eq i32 %9, 0, !dbg !3278
  br i1 %cmp8, label %if.then.9, label %if.else.11, !dbg !3279

if.then.9:                                        ; preds = %if.end.7
  %10 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3280, !tbaa !1258
  %tm_mday10 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3, !dbg !3281
  store i32 1, i32* %tm_mday10, align 4, !dbg !3282, !tbaa !2988
  br label %if.end.19, !dbg !3280

if.else.11:                                       ; preds = %if.end.7
  %11 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3283, !tbaa !1258
  %tm_mday12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 3, !dbg !3285
  %12 = load i32, i32* %tm_mday12, align 4, !dbg !3285, !tbaa !2988
  %cmp13 = icmp slt i32 %12, 0, !dbg !3286
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.14, !dbg !3287

lor.lhs.false.14:                                 ; preds = %if.else.11
  %13 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3288, !tbaa !1258
  %tm_mday15 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3, !dbg !3290
  %14 = load i32, i32* %tm_mday15, align 4, !dbg !3290, !tbaa !2988
  %cmp16 = icmp sgt i32 %14, 31, !dbg !3291
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !3292

if.then.17:                                       ; preds = %lor.lhs.false.14, %if.else.11
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3293, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0)), !dbg !3295
  store i32 0, i32* %retval, !dbg !3296
  br label %return, !dbg !3296

if.end.18:                                        ; preds = %lor.lhs.false.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.9
  %16 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3297, !tbaa !1258
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 2, !dbg !3299
  %17 = load i32, i32* %tm_hour, align 4, !dbg !3299, !tbaa !2998
  %cmp20 = icmp slt i32 %17, 0, !dbg !3300
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false.21, !dbg !3301

lor.lhs.false.21:                                 ; preds = %if.end.19
  %18 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3302, !tbaa !1258
  %tm_hour22 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 2, !dbg !3304
  %19 = load i32, i32* %tm_hour22, align 4, !dbg !3304, !tbaa !2998
  %cmp23 = icmp sgt i32 %19, 23, !dbg !3305
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !3306

if.then.24:                                       ; preds = %lor.lhs.false.21, %if.end.19
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3307, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0)), !dbg !3309
  store i32 0, i32* %retval, !dbg !3310
  br label %return, !dbg !3310

if.end.25:                                        ; preds = %lor.lhs.false.21
  %21 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3311, !tbaa !1258
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 1, !dbg !3313
  %22 = load i32, i32* %tm_min, align 4, !dbg !3313, !tbaa !3008
  %cmp26 = icmp slt i32 %22, 0, !dbg !3314
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false.27, !dbg !3315

lor.lhs.false.27:                                 ; preds = %if.end.25
  %23 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3316, !tbaa !1258
  %tm_min28 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1, !dbg !3318
  %24 = load i32, i32* %tm_min28, align 4, !dbg !3318, !tbaa !3008
  %cmp29 = icmp sgt i32 %24, 59, !dbg !3319
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !3320

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.end.25
  %25 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3321, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0)), !dbg !3323
  store i32 0, i32* %retval, !dbg !3324
  br label %return, !dbg !3324

if.end.31:                                        ; preds = %lor.lhs.false.27
  %26 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3325, !tbaa !1258
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 0, !dbg !3327
  %27 = load i32, i32* %tm_sec, align 4, !dbg !3327, !tbaa !3018
  %cmp32 = icmp slt i32 %27, 0, !dbg !3328
  br i1 %cmp32, label %if.then.36, label %lor.lhs.false.33, !dbg !3329

lor.lhs.false.33:                                 ; preds = %if.end.31
  %28 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3330, !tbaa !1258
  %tm_sec34 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 0, !dbg !3332
  %29 = load i32, i32* %tm_sec34, align 4, !dbg !3332, !tbaa !3018
  %cmp35 = icmp sgt i32 %29, 61, !dbg !3333
  br i1 %cmp35, label %if.then.36, label %if.end.37, !dbg !3334

if.then.36:                                       ; preds = %lor.lhs.false.33, %if.end.31
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3335, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0)), !dbg !3337
  store i32 0, i32* %retval, !dbg !3338
  br label %return, !dbg !3338

if.end.37:                                        ; preds = %lor.lhs.false.33
  %31 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3339, !tbaa !1258
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 6, !dbg !3341
  %32 = load i32, i32* %tm_wday, align 4, !dbg !3341, !tbaa !1676
  %cmp38 = icmp slt i32 %32, 0, !dbg !3342
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !3343

if.then.39:                                       ; preds = %if.end.37
  %33 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3344, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0)), !dbg !3346
  store i32 0, i32* %retval, !dbg !3347
  br label %return, !dbg !3347

if.end.40:                                        ; preds = %if.end.37
  %34 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3348, !tbaa !1258
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 7, !dbg !3350
  %35 = load i32, i32* %tm_yday, align 4, !dbg !3350, !tbaa !3039
  %cmp41 = icmp eq i32 %35, -1, !dbg !3351
  br i1 %cmp41, label %if.then.42, label %if.else.44, !dbg !3352

if.then.42:                                       ; preds = %if.end.40
  %36 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3353, !tbaa !1258
  %tm_yday43 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 7, !dbg !3354
  store i32 0, i32* %tm_yday43, align 4, !dbg !3355, !tbaa !3039
  br label %if.end.52, !dbg !3353

if.else.44:                                       ; preds = %if.end.40
  %37 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3356, !tbaa !1258
  %tm_yday45 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 7, !dbg !3358
  %38 = load i32, i32* %tm_yday45, align 4, !dbg !3358, !tbaa !3039
  %cmp46 = icmp slt i32 %38, 0, !dbg !3359
  br i1 %cmp46, label %if.then.50, label %lor.lhs.false.47, !dbg !3360

lor.lhs.false.47:                                 ; preds = %if.else.44
  %39 = load %struct.tm*, %struct.tm** %buf.addr, align 8, !dbg !3361, !tbaa !1258
  %tm_yday48 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 7, !dbg !3363
  %40 = load i32, i32* %tm_yday48, align 4, !dbg !3363, !tbaa !3039
  %cmp49 = icmp sgt i32 %40, 365, !dbg !3364
  br i1 %cmp49, label %if.then.50, label %if.end.51, !dbg !3365

if.then.50:                                       ; preds = %lor.lhs.false.47, %if.else.44
  %41 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3366, !tbaa !1258
  call void @PyErr_SetString(%struct._object* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0)), !dbg !3368
  store i32 0, i32* %retval, !dbg !3369
  br label %return, !dbg !3369

if.end.51:                                        ; preds = %lor.lhs.false.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.42
  store i32 1, i32* %retval, !dbg !3370
  br label %return, !dbg !3370

return:                                           ; preds = %if.end.52, %if.then.50, %if.then.39, %if.then.36, %if.then.30, %if.then.24, %if.then.17, %if.then.6
  %42 = load i32, i32* %retval, !dbg !3371
  ret i32 %42, !dbg !3371
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_asctime(%struct.tm* %timeptr) #0 {
entry:
  %timeptr.addr = alloca %struct.tm*, align 8
  store %struct.tm* %timeptr, %struct.tm** %timeptr.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct.tm** %timeptr.addr, metadata !840, metadata !1254), !dbg !3372
  %0 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !3373, !tbaa !1258
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 6, !dbg !3374
  %1 = load i32, i32* %tm_wday, align 4, !dbg !3374, !tbaa !1676
  %idxprom = sext i32 %1 to i64, !dbg !3375
  %arrayidx = getelementptr [7 x [4 x i8]], [7 x [4 x i8]]* @_asctime.wday_name, i32 0, i64 %idxprom, !dbg !3375
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0, !dbg !3375
  %2 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !3376, !tbaa !1258
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4, !dbg !3377
  %3 = load i32, i32* %tm_mon, align 4, !dbg !3377, !tbaa !2977
  %idxprom1 = sext i32 %3 to i64, !dbg !3378
  %arrayidx2 = getelementptr [12 x [4 x i8]], [12 x [4 x i8]]* @_asctime.mon_name, i32 0, i64 %idxprom1, !dbg !3378
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx2, i32 0, i32 0, !dbg !3378
  %4 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !3379, !tbaa !1258
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3, !dbg !3380
  %5 = load i32, i32* %tm_mday, align 4, !dbg !3380, !tbaa !2988
  %6 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !3381, !tbaa !1258
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2, !dbg !3382
  %7 = load i32, i32* %tm_hour, align 4, !dbg !3382, !tbaa !2998
  %8 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !3383, !tbaa !1258
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1, !dbg !3384
  %9 = load i32, i32* %tm_min, align 4, !dbg !3384, !tbaa !3008
  %10 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !3385, !tbaa !1258
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0, !dbg !3386
  %11 = load i32, i32* %tm_sec, align 4, !dbg !3386, !tbaa !3018
  %12 = load %struct.tm*, %struct.tm** %timeptr.addr, align 8, !dbg !3387, !tbaa !1258
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 5, !dbg !3388
  %13 = load i32, i32* %tm_year, align 4, !dbg !3388, !tbaa !2966
  %add = add i32 1900, %13, !dbg !3389
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay, i8* %arraydecay3, i32 %5, i32 %7, i32 %9, i32 %11, i32 %add), !dbg !3390
  ret %struct._object* %call, !dbg !3391
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #4

declare i32* @PyUnicode_AsWideCharString(%struct._object*, i64*) #3

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #6

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind
declare i64 @wcsftime(i32*, i64, i32*, %struct.tm*) #4

declare %struct._object* @PyUnicode_FromWideChar(i32*, i64) #3

declare void @PyMem_Free(i8*) #3

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

; Function Attrs: nounwind
declare void @tzset() #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @pymonotonic(%struct._Py_clock_info_t* %info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %tp = alloca %struct.timespec, align 8
  %clk_id = alloca i32, align 4
  %function = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %res = alloca %struct.timespec, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._Py_clock_info_t** %info.addr, metadata !893, metadata !1254), !dbg !3392
  %0 = bitcast %struct.timespec* %tp to i8*, !dbg !3393
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !3393
  call void @llvm.dbg.declare(metadata %struct.timespec* %tp, metadata !894, metadata !1254), !dbg !3394
  %1 = bitcast i32* %clk_id to i8*, !dbg !3395
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3395
  call void @llvm.dbg.declare(metadata i32* %clk_id, metadata !895, metadata !1254), !dbg !3396
  store i32 1, i32* %clk_id, align 4, !dbg !3396, !tbaa !1271
  %2 = bitcast i8** %function to i8*, !dbg !3397
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3397
  call void @llvm.dbg.declare(metadata i8** %function, metadata !897, metadata !1254), !dbg !3398
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i8** %function, align 8, !dbg !3398, !tbaa !1258
  %call = call i32 @clock_gettime(i32 1, %struct.timespec* %tp) #1, !dbg !3399
  %cmp = icmp ne i32 %call, 0, !dbg !3401
  br i1 %cmp, label %if.then, label %if.end, !dbg !3402

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3403, !tbaa !1258
  %call1 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3), !dbg !3405
  store %struct._object* null, %struct._object** %retval, !dbg !3406
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3406

if.end:                                           ; preds = %entry
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3407, !tbaa !1258
  %tobool = icmp ne %struct._Py_clock_info_t* %4, null, !dbg !3407
  br i1 %tobool, label %if.then.2, label %if.end.9, !dbg !3408

if.then.2:                                        ; preds = %if.end
  %5 = bitcast %struct.timespec* %res to i8*, !dbg !3409
  call void @llvm.lifetime.start(i64 16, i8* %5) #1, !dbg !3409
  call void @llvm.dbg.declare(metadata %struct.timespec* %res, metadata !898, metadata !1254), !dbg !3410
  %6 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3411, !tbaa !1258
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %6, i32 0, i32 1, !dbg !3412
  store i32 1, i32* %monotonic, align 4, !dbg !3413, !tbaa !1951
  %7 = load i8*, i8** %function, align 8, !dbg !3414, !tbaa !1258
  %8 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3415, !tbaa !1258
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %8, i32 0, i32 0, !dbg !3416
  store i8* %7, i8** %implementation, align 8, !dbg !3417, !tbaa !1947
  %9 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3418, !tbaa !1258
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %9, i32 0, i32 2, !dbg !3419
  store i32 0, i32* %adjustable, align 4, !dbg !3420, !tbaa !1954
  %call3 = call i32 @clock_getres(i32 1, %struct.timespec* %res) #1, !dbg !3421
  %cmp4 = icmp eq i32 %call3, 0, !dbg !3423
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !3424

if.then.5:                                        ; preds = %if.then.2
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 0, !dbg !3425
  %10 = load i64, i64* %tv_sec, align 8, !dbg !3425, !tbaa !1433
  %conv = sitofp i64 %10 to double, !dbg !3426
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 1, !dbg !3427
  %11 = load i64, i64* %tv_nsec, align 8, !dbg !3427, !tbaa !1437
  %conv6 = sitofp i64 %11 to double, !dbg !3428
  %mul = fmul double %conv6, 1.000000e-09, !dbg !3429
  %add = fadd double %conv, %mul, !dbg !3430
  %12 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3431, !tbaa !1258
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %12, i32 0, i32 3, !dbg !3432
  store double %add, double* %resolution, align 8, !dbg !3433, !tbaa !1957
  br label %if.end.8, !dbg !3431

if.else:                                          ; preds = %if.then.2
  %13 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3434, !tbaa !1258
  %resolution7 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %13, i32 0, i32 3, !dbg !3435
  store double 1.000000e-09, double* %resolution7, align 8, !dbg !3436, !tbaa !1957
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  %14 = bitcast %struct.timespec* %res to i8*, !dbg !3437
  call void @llvm.lifetime.end(i64 16, i8* %14) #1, !dbg !3437
  br label %if.end.9, !dbg !3438

if.end.9:                                         ; preds = %if.end.8, %if.end
  %tv_sec10 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0, !dbg !3439
  %15 = load i64, i64* %tv_sec10, align 8, !dbg !3439, !tbaa !1433
  %conv11 = sitofp i64 %15 to double, !dbg !3440
  %tv_nsec12 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1, !dbg !3441
  %16 = load i64, i64* %tv_nsec12, align 8, !dbg !3441, !tbaa !1437
  %conv13 = sitofp i64 %16 to double, !dbg !3442
  %mul14 = fmul double %conv13, 1.000000e-09, !dbg !3443
  %add15 = fadd double %conv11, %mul14, !dbg !3444
  %call16 = call %struct._object* @PyFloat_FromDouble(double %add15), !dbg !3445
  store %struct._object* %call16, %struct._object** %retval, !dbg !3446
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3446

cleanup:                                          ; preds = %if.end.9, %if.then
  %17 = bitcast i8** %function to i8*, !dbg !3447
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !3447
  %18 = bitcast i32* %clk_id to i8*, !dbg !3447
  call void @llvm.lifetime.end(i64 4, i8* %18) #1, !dbg !3447
  %19 = bitcast %struct.timespec* %tp to i8*, !dbg !3447
  call void @llvm.lifetime.end(i64 16, i8* %19) #1, !dbg !3447
  %20 = load %struct._object*, %struct._object** %retval, !dbg !3447
  ret %struct._object* %20, !dbg !3447
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
  %cleanup.dest.slot = alloca i32
  %total = alloca double, align 8
  %total47 = alloca double, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._Py_clock_info_t** %info.addr, metadata !907, metadata !1254), !dbg !3448
  %0 = bitcast %struct.rusage* %ru to i8*, !dbg !3449
  call void @llvm.lifetime.start(i64 144, i8* %0) #1, !dbg !3449
  call void @llvm.dbg.declare(metadata %struct.rusage* %ru, metadata !908, metadata !1254), !dbg !3450
  %1 = bitcast %struct.tms* %t to i8*, !dbg !3451
  call void @llvm.lifetime.start(i64 32, i8* %1) #1, !dbg !3451
  call void @llvm.dbg.declare(metadata %struct.tms* %t, metadata !983, metadata !1254), !dbg !3452
  %2 = bitcast %struct.timespec* %tp to i8*, !dbg !3453
  call void @llvm.lifetime.start(i64 16, i8* %2) #1, !dbg !3453
  call void @llvm.dbg.declare(metadata %struct.timespec* %tp, metadata !991, metadata !1254), !dbg !3454
  %3 = bitcast i32* %clk_id to i8*, !dbg !3455
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !3455
  call void @llvm.dbg.declare(metadata i32* %clk_id, metadata !992, metadata !1254), !dbg !3456
  store i32 2, i32* %clk_id, align 4, !dbg !3456, !tbaa !1271
  %4 = bitcast i8** %function to i8*, !dbg !3457
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3457
  call void @llvm.dbg.declare(metadata i8** %function, metadata !993, metadata !1254), !dbg !3458
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i32 0, i32 0), i8** %function, align 8, !dbg !3458, !tbaa !1258
  %call = call i32 @clock_gettime(i32 2, %struct.timespec* %tp) #1, !dbg !3459
  %cmp = icmp eq i32 %call, 0, !dbg !3460
  br i1 %cmp, label %if.then, label %if.end.15, !dbg !3461

if.then:                                          ; preds = %entry
  %5 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3462, !tbaa !1258
  %tobool = icmp ne %struct._Py_clock_info_t* %5, null, !dbg !3462
  br i1 %tobool, label %if.then.1, label %if.end.7, !dbg !3463

if.then.1:                                        ; preds = %if.then
  %6 = bitcast %struct.timespec* %res to i8*, !dbg !3464
  call void @llvm.lifetime.start(i64 16, i8* %6) #1, !dbg !3464
  call void @llvm.dbg.declare(metadata %struct.timespec* %res, metadata !994, metadata !1254), !dbg !3465
  %7 = load i8*, i8** %function, align 8, !dbg !3466, !tbaa !1258
  %8 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3467, !tbaa !1258
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %8, i32 0, i32 0, !dbg !3468
  store i8* %7, i8** %implementation, align 8, !dbg !3469, !tbaa !1947
  %9 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3470, !tbaa !1258
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %9, i32 0, i32 1, !dbg !3471
  store i32 1, i32* %monotonic, align 4, !dbg !3472, !tbaa !1951
  %10 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3473, !tbaa !1258
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %10, i32 0, i32 2, !dbg !3474
  store i32 0, i32* %adjustable, align 4, !dbg !3475, !tbaa !1954
  %call2 = call i32 @clock_getres(i32 2, %struct.timespec* %res) #1, !dbg !3476
  %cmp3 = icmp eq i32 %call2, 0, !dbg !3478
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3479

if.then.4:                                        ; preds = %if.then.1
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 0, !dbg !3480
  %11 = load i64, i64* %tv_sec, align 8, !dbg !3480, !tbaa !1433
  %conv = sitofp i64 %11 to double, !dbg !3481
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %res, i32 0, i32 1, !dbg !3482
  %12 = load i64, i64* %tv_nsec, align 8, !dbg !3482, !tbaa !1437
  %conv5 = sitofp i64 %12 to double, !dbg !3483
  %mul = fmul double %conv5, 1.000000e-09, !dbg !3484
  %add = fadd double %conv, %mul, !dbg !3485
  %13 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3486, !tbaa !1258
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %13, i32 0, i32 3, !dbg !3487
  store double %add, double* %resolution, align 8, !dbg !3488, !tbaa !1957
  br label %if.end, !dbg !3486

if.else:                                          ; preds = %if.then.1
  %14 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3489, !tbaa !1258
  %resolution6 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %14, i32 0, i32 3, !dbg !3490
  store double 1.000000e-09, double* %resolution6, align 8, !dbg !3491, !tbaa !1957
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %15 = bitcast %struct.timespec* %res to i8*, !dbg !3492
  call void @llvm.lifetime.end(i64 16, i8* %15) #1, !dbg !3492
  br label %if.end.7, !dbg !3493

if.end.7:                                         ; preds = %if.end, %if.then
  %tv_sec8 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 0, !dbg !3494
  %16 = load i64, i64* %tv_sec8, align 8, !dbg !3494, !tbaa !1433
  %conv9 = sitofp i64 %16 to double, !dbg !3495
  %tv_nsec10 = getelementptr inbounds %struct.timespec, %struct.timespec* %tp, i32 0, i32 1, !dbg !3496
  %17 = load i64, i64* %tv_nsec10, align 8, !dbg !3496, !tbaa !1437
  %conv11 = sitofp i64 %17 to double, !dbg !3497
  %mul12 = fmul double %conv11, 1.000000e-09, !dbg !3498
  %add13 = fadd double %conv9, %mul12, !dbg !3499
  %call14 = call %struct._object* @PyFloat_FromDouble(double %add13), !dbg !3500
  store %struct._object* %call14, %struct._object** %retval, !dbg !3501
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79, !dbg !3501

if.end.15:                                        ; preds = %entry
  %call16 = call i32 @getrusage(i32 0, %struct.rusage* %ru) #1, !dbg !3502
  %cmp17 = icmp eq i32 %call16, 0, !dbg !3503
  br i1 %cmp17, label %if.then.19, label %if.end.42, !dbg !3504

if.then.19:                                       ; preds = %if.end.15
  %18 = bitcast double* %total to i8*, !dbg !3505
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !3505
  call void @llvm.dbg.declare(metadata double* %total, metadata !999, metadata !1254), !dbg !3506
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0, !dbg !3507
  %tv_sec20 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0, !dbg !3508
  %19 = load i64, i64* %tv_sec20, align 8, !dbg !3508, !tbaa !3509
  %conv21 = sitofp i64 %19 to double, !dbg !3511
  %ru_utime22 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0, !dbg !3512
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime22, i32 0, i32 1, !dbg !3513
  %20 = load i64, i64* %tv_usec, align 8, !dbg !3513, !tbaa !3514
  %conv23 = sitofp i64 %20 to double, !dbg !3515
  %mul24 = fmul double %conv23, 1.000000e-06, !dbg !3516
  %add25 = fadd double %conv21, %mul24, !dbg !3517
  store double %add25, double* %total, align 8, !dbg !3518, !tbaa !1533
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1, !dbg !3519
  %tv_sec26 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime, i32 0, i32 0, !dbg !3520
  %21 = load i64, i64* %tv_sec26, align 8, !dbg !3520, !tbaa !3521
  %conv27 = sitofp i64 %21 to double, !dbg !3522
  %ru_stime28 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1, !dbg !3523
  %tv_usec29 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime28, i32 0, i32 1, !dbg !3524
  %22 = load i64, i64* %tv_usec29, align 8, !dbg !3524, !tbaa !3525
  %conv30 = sitofp i64 %22 to double, !dbg !3526
  %mul31 = fmul double %conv30, 1.000000e-06, !dbg !3527
  %add32 = fadd double %conv27, %mul31, !dbg !3528
  %23 = load double, double* %total, align 8, !dbg !3529, !tbaa !1533
  %add33 = fadd double %23, %add32, !dbg !3529
  store double %add33, double* %total, align 8, !dbg !3529, !tbaa !1533
  %24 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3530, !tbaa !1258
  %tobool34 = icmp ne %struct._Py_clock_info_t* %24, null, !dbg !3530
  br i1 %tobool34, label %if.then.35, label %if.end.40, !dbg !3532

if.then.35:                                       ; preds = %if.then.19
  %25 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3533, !tbaa !1258
  %implementation36 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %25, i32 0, i32 0, !dbg !3535
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), i8** %implementation36, align 8, !dbg !3536, !tbaa !1947
  %26 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3537, !tbaa !1258
  %monotonic37 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %26, i32 0, i32 1, !dbg !3538
  store i32 1, i32* %monotonic37, align 4, !dbg !3539, !tbaa !1951
  %27 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3540, !tbaa !1258
  %adjustable38 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %27, i32 0, i32 2, !dbg !3541
  store i32 0, i32* %adjustable38, align 4, !dbg !3542, !tbaa !1954
  %28 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3543, !tbaa !1258
  %resolution39 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %28, i32 0, i32 3, !dbg !3544
  store double 1.000000e-06, double* %resolution39, align 8, !dbg !3545, !tbaa !1957
  br label %if.end.40, !dbg !3546

if.end.40:                                        ; preds = %if.then.35, %if.then.19
  %29 = load double, double* %total, align 8, !dbg !3547, !tbaa !1533
  %call41 = call %struct._object* @PyFloat_FromDouble(double %29), !dbg !3548
  store %struct._object* %call41, %struct._object** %retval, !dbg !3549
  store i32 1, i32* %cleanup.dest.slot
  %30 = bitcast double* %total to i8*, !dbg !3550
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !3550
  br label %cleanup.79

if.end.42:                                        ; preds = %if.end.15
  %call43 = call i64 @times(%struct.tms* %t) #1, !dbg !3551
  %cmp44 = icmp ne i64 %call43, -1, !dbg !3552
  br i1 %cmp44, label %if.then.46, label %if.end.77, !dbg !3553

if.then.46:                                       ; preds = %if.end.42
  %31 = bitcast double* %total47 to i8*, !dbg !3554
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !3554
  call void @llvm.dbg.declare(metadata double* %total47, metadata !1002, metadata !1254), !dbg !3555
  %32 = load i64, i64* @py_process_time.ticks_per_second, align 8, !dbg !3556, !tbaa !1308
  %cmp48 = icmp eq i64 %32, -1, !dbg !3558
  br i1 %cmp48, label %if.then.50, label %if.end.56, !dbg !3559

if.then.50:                                       ; preds = %if.then.46
  %call51 = call i64 @sysconf(i32 2) #1, !dbg !3560
  store i64 %call51, i64* @py_process_time.ticks_per_second, align 8, !dbg !3562, !tbaa !1308
  %33 = load i64, i64* @py_process_time.ticks_per_second, align 8, !dbg !3563, !tbaa !1308
  %cmp52 = icmp slt i64 %33, 1, !dbg !3565
  br i1 %cmp52, label %if.then.54, label %if.end.55, !dbg !3566

if.then.54:                                       ; preds = %if.then.50
  store i64 -1, i64* @py_process_time.ticks_per_second, align 8, !dbg !3567, !tbaa !1308
  br label %if.end.55, !dbg !3568

if.end.55:                                        ; preds = %if.then.54, %if.then.50
  br label %if.end.56, !dbg !3569

if.end.56:                                        ; preds = %if.end.55, %if.then.46
  %34 = load i64, i64* @py_process_time.ticks_per_second, align 8, !dbg !3570, !tbaa !1308
  %cmp57 = icmp ne i64 %34, -1, !dbg !3572
  br i1 %cmp57, label %if.then.59, label %if.end.76, !dbg !3573

if.then.59:                                       ; preds = %if.end.56
  %tms_utime = getelementptr inbounds %struct.tms, %struct.tms* %t, i32 0, i32 0, !dbg !3574
  %35 = load i64, i64* %tms_utime, align 8, !dbg !3574, !tbaa !3576
  %conv60 = sitofp i64 %35 to double, !dbg !3578
  %36 = load i64, i64* @py_process_time.ticks_per_second, align 8, !dbg !3579, !tbaa !1308
  %conv61 = sitofp i64 %36 to double, !dbg !3579
  %div = fdiv double %conv60, %conv61, !dbg !3580
  store double %div, double* %total47, align 8, !dbg !3581, !tbaa !1533
  %tms_stime = getelementptr inbounds %struct.tms, %struct.tms* %t, i32 0, i32 1, !dbg !3582
  %37 = load i64, i64* %tms_stime, align 8, !dbg !3582, !tbaa !3583
  %conv62 = sitofp i64 %37 to double, !dbg !3584
  %38 = load i64, i64* @py_process_time.ticks_per_second, align 8, !dbg !3585, !tbaa !1308
  %conv63 = sitofp i64 %38 to double, !dbg !3585
  %div64 = fdiv double %conv62, %conv63, !dbg !3586
  %39 = load double, double* %total47, align 8, !dbg !3587, !tbaa !1533
  %add65 = fadd double %39, %div64, !dbg !3587
  store double %add65, double* %total47, align 8, !dbg !3587, !tbaa !1533
  %40 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3588, !tbaa !1258
  %tobool66 = icmp ne %struct._Py_clock_info_t* %40, null, !dbg !3588
  br i1 %tobool66, label %if.then.67, label %if.end.74, !dbg !3590

if.then.67:                                       ; preds = %if.then.59
  %41 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3591, !tbaa !1258
  %implementation68 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %41, i32 0, i32 0, !dbg !3593
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8** %implementation68, align 8, !dbg !3594, !tbaa !1947
  %42 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3595, !tbaa !1258
  %monotonic69 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %42, i32 0, i32 1, !dbg !3596
  store i32 1, i32* %monotonic69, align 4, !dbg !3597, !tbaa !1951
  %43 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3598, !tbaa !1258
  %adjustable70 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %43, i32 0, i32 2, !dbg !3599
  store i32 0, i32* %adjustable70, align 4, !dbg !3600, !tbaa !1954
  %44 = load i64, i64* @py_process_time.ticks_per_second, align 8, !dbg !3601, !tbaa !1308
  %conv71 = sitofp i64 %44 to double, !dbg !3601
  %div72 = fdiv double 1.000000e+00, %conv71, !dbg !3602
  %45 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3603, !tbaa !1258
  %resolution73 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %45, i32 0, i32 3, !dbg !3604
  store double %div72, double* %resolution73, align 8, !dbg !3605, !tbaa !1957
  br label %if.end.74, !dbg !3606

if.end.74:                                        ; preds = %if.then.67, %if.then.59
  %46 = load double, double* %total47, align 8, !dbg !3607, !tbaa !1533
  %call75 = call %struct._object* @PyFloat_FromDouble(double %46), !dbg !3608
  store %struct._object* %call75, %struct._object** %retval, !dbg !3609
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3609

if.end.76:                                        ; preds = %if.end.56
  store i32 0, i32* %cleanup.dest.slot, !dbg !3610
  br label %cleanup, !dbg !3610

cleanup:                                          ; preds = %if.end.76, %if.end.74
  %47 = bitcast double* %total47 to i8*, !dbg !3611
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !3611
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.77, !dbg !3613

if.end.77:                                        ; preds = %cleanup.cont, %if.end.42
  %48 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3614, !tbaa !1258
  %call78 = call %struct._object* @floatclock(%struct._Py_clock_info_t* %48), !dbg !3615
  store %struct._object* %call78, %struct._object** %retval, !dbg !3616
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79, !dbg !3616

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.79

cleanup.79:                                       ; preds = %NewDefault, %if.end.77, %if.end.40, %if.end.7
  %49 = bitcast i8** %function to i8*, !dbg !3617
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !3617
  %50 = bitcast i32* %clk_id to i8*, !dbg !3617
  call void @llvm.lifetime.end(i64 4, i8* %50) #1, !dbg !3617
  %51 = bitcast %struct.timespec* %tp to i8*, !dbg !3617
  call void @llvm.lifetime.end(i64 16, i8* %51) #1, !dbg !3617
  %52 = bitcast %struct.tms* %t to i8*, !dbg !3617
  call void @llvm.lifetime.end(i64 32, i8* %52) #1, !dbg !3617
  %53 = bitcast %struct.rusage* %ru to i8*, !dbg !3617
  call void @llvm.lifetime.end(i64 144, i8* %53) #1, !dbg !3617
  %54 = load %struct._object*, %struct._object** %retval, !dbg !3617
  ret %struct._object* %54, !dbg !3617
}

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #4

; Function Attrs: nounwind
declare i64 @times(%struct.tms*) #4

; Function Attrs: nounwind
declare i64 @sysconf(i32) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @perf_counter(%struct._Py_clock_info_t* %info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8, !tbaa !1258
  call void @llvm.dbg.declare(metadata %struct._Py_clock_info_t** %info.addr, metadata !1011, metadata !1254), !dbg !3618
  %0 = bitcast %struct._object** %res to i8*, !dbg !3619
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3619
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !1012, metadata !1254), !dbg !3620
  %1 = load i32, i32* @perf_counter.use_monotonic, align 4, !dbg !3621, !tbaa !1271
  %tobool = icmp ne i32 %1, 0, !dbg !3621
  br i1 %tobool, label %if.then, label %if.end.2, !dbg !3623

if.then:                                          ; preds = %entry
  %2 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3624, !tbaa !1258
  %call = call %struct._object* @pymonotonic(%struct._Py_clock_info_t* %2), !dbg !3626
  store %struct._object* %call, %struct._object** %res, align 8, !dbg !3627, !tbaa !1258
  %3 = load %struct._object*, %struct._object** %res, align 8, !dbg !3628, !tbaa !1258
  %cmp = icmp ne %struct._object* %3, null, !dbg !3630
  br i1 %cmp, label %if.then.1, label %if.end, !dbg !3631

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %res, align 8, !dbg !3632, !tbaa !1258
  store %struct._object* %4, %struct._object** %retval, !dbg !3633
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3633

if.end:                                           ; preds = %if.then
  store i32 0, i32* @perf_counter.use_monotonic, align 4, !dbg !3634, !tbaa !1271
  call void @PyErr_Clear(), !dbg !3635
  br label %if.end.2, !dbg !3636

if.end.2:                                         ; preds = %if.end, %entry
  %5 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !3637, !tbaa !1258
  %call3 = call %struct._object* @floattime(%struct._Py_clock_info_t* %5), !dbg !3638
  store %struct._object* %call3, %struct._object** %retval, !dbg !3639
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3639

cleanup:                                          ; preds = %if.end.2, %if.then.1
  %6 = bitcast %struct._object** %res to i8*, !dbg !3640
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !3640
  %7 = load %struct._object*, %struct._object** %retval, !dbg !3640
  ret %struct._object* %7, !dbg !3640
}

declare void @PyErr_Clear() #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare %struct._object* @PyDict_New() #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyBool_FromLong(i64) #3

declare %struct._object* @_PyNamespace_New(%struct._object*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare %struct._object* @Py_BuildValue(i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1249, !1250, !1251}
!llvm.ident = !{!1252}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !232, subprograms: !606, globals: !1105)
!1 = !DIFile(filename: "timemodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !8, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./Include/pytime.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "_PyTime_ROUND_DOWN", value: 0)
!7 = !DIEnumerator(name: "_PyTime_ROUND_UP", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rusage_who", file: !9, line: 158, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "/usr/include/bits/resource.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "RUSAGE_SELF", value: 0)
!12 = !DIEnumerator(name: "RUSAGE_CHILDREN", value: -1)
!13 = !DIEnumerator(name: "RUSAGE_THREAD", value: 1)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 72, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!17 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!18 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!19 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!20 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!21 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!22 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!23 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!24 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!25 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!26 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!27 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!28 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!29 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!30 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!31 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!32 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!33 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!34 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!35 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!36 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!37 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!38 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!39 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!40 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!41 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!42 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!43 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!44 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!45 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!46 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!47 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!48 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!49 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!50 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!51 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!52 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!53 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!54 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!55 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!56 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!57 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!58 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!59 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!60 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!61 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!62 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!63 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!64 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!65 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!66 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!67 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!68 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!69 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!70 = !DIEnumerator(name: "_SC_PII", value: 53)
!71 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!72 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!73 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!74 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!75 = !DIEnumerator(name: "_SC_POLL", value: 58)
!76 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!77 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!78 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!79 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!80 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!81 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!82 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!83 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!84 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!85 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!86 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!87 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!88 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!89 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!90 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!91 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!92 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!93 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!94 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!95 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!96 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!97 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!98 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!99 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!100 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!101 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!102 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!103 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!104 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!105 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!106 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!107 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!108 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!109 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!110 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!111 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!112 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!113 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!114 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!115 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!116 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!117 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!118 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!119 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!120 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!121 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!122 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!123 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!124 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!125 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!126 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!127 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!128 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!129 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!130 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!131 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!132 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!133 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!134 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!135 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!136 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!137 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!138 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!139 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!140 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!141 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!142 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!143 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!144 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!145 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!146 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!147 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!148 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!149 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!150 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!151 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!152 = !DIEnumerator(name: "_SC_BASE", value: 134)
!153 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!154 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!155 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!156 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!157 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!158 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!159 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!160 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!161 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!162 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!163 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!164 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!165 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!166 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!167 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!168 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!169 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!170 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!171 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!172 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!173 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!174 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!175 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!176 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!177 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!178 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!179 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!180 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!181 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!182 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!183 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!184 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!185 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!186 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!187 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!188 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!189 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!190 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!191 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!192 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!193 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!194 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!195 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!196 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!197 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!198 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!199 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!200 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!201 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!202 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!203 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!204 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!205 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!206 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!207 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!208 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!209 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!210 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!211 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!212 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!213 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!214 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!215 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!216 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!217 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!218 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!219 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!220 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!221 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!222 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!223 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!224 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!225 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!226 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!227 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!228 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!229 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!230 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!231 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!232 = !{!233, !234, !572, !573, !576, !246, !578, !588, !596, !598, !323, !600, !602, !258, !605}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !236, line: 109, baseType: !237)
!236 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !236, line: 105, size: 128, align: 64, elements: !238)
!238 = !{!239, !247}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !237, file: !236, line: 107, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !241, line: 177, baseType: !242)
!241 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !243, line: 102, baseType: !244)
!243 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !245, line: 181, baseType: !246)
!245 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!246 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !237, file: !236, line: 108, baseType: !248, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !236, line: 334, size: 3200, align: 64, elements: !250)
!250 = !{!251, !257, !261, !262, !263, !268, !331, !336, !341, !342, !347, !399, !430, !442, !448, !449, !450, !452, !454, !485, !486, !487, !496, !497, !502, !503, !505, !507, !517, !520, !538, !539, !540, !542, !544, !545, !547, !552, !557, !562, !563, !564, !565, !566, !567, !568, !569, !571}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !249, file: !236, line: 335, baseType: !252, size: 192, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !236, line: 114, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 111, size: 192, align: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !253, file: !236, line: 112, baseType: !235, size: 128, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !253, file: !236, line: 113, baseType: !240, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !249, file: !236, line: 336, baseType: !258, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !249, file: !236, line: 337, baseType: !240, size: 64, align: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !249, file: !236, line: 337, baseType: !240, size: 64, align: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !249, file: !236, line: 341, baseType: !264, size: 64, align: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !236, line: 308, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !234}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !249, file: !236, line: 342, baseType: !269, size: 64, align: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !236, line: 314, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !234, !274, !273}
!273 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !243, line: 48, baseType: !276)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !277, line: 246, size: 1728, align: 64, elements: !278)
!277 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!278 = !{!279, !280, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !300, !301, !302, !303, !305, !307, !309, !313, !316, !318, !319, !320, !321, !322, !326, !327}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !276, file: !277, line: 247, baseType: !273, size: 32, align: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !276, file: !277, line: 252, baseType: !281, size: 64, align: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !276, file: !277, line: 253, baseType: !281, size: 64, align: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !276, file: !277, line: 254, baseType: !281, size: 64, align: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !276, file: !277, line: 255, baseType: !281, size: 64, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !276, file: !277, line: 256, baseType: !281, size: 64, align: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !276, file: !277, line: 257, baseType: !281, size: 64, align: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !276, file: !277, line: 258, baseType: !281, size: 64, align: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !276, file: !277, line: 259, baseType: !281, size: 64, align: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !276, file: !277, line: 261, baseType: !281, size: 64, align: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !276, file: !277, line: 262, baseType: !281, size: 64, align: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !276, file: !277, line: 263, baseType: !281, size: 64, align: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !276, file: !277, line: 265, baseType: !293, size: 64, align: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !277, line: 161, size: 192, align: 64, elements: !295)
!295 = !{!296, !297, !299}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !294, file: !277, line: 162, baseType: !293, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !294, file: !277, line: 163, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !294, file: !277, line: 167, baseType: !273, size: 32, align: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !276, file: !277, line: 267, baseType: !298, size: 64, align: 64, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !276, file: !277, line: 269, baseType: !273, size: 32, align: 32, offset: 896)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !276, file: !277, line: 273, baseType: !273, size: 32, align: 32, offset: 928)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !276, file: !277, line: 275, baseType: !304, size: 64, align: 64, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !245, line: 140, baseType: !246)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !276, file: !277, line: 279, baseType: !306, size: 16, align: 16, offset: 1024)
!306 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !276, file: !277, line: 280, baseType: !308, size: 8, align: 8, offset: 1040)
!308 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !276, file: !277, line: 281, baseType: !310, size: 8, align: 8, offset: 1048)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 8, align: 8, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 1)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !276, file: !277, line: 285, baseType: !314, size: 64, align: 64, offset: 1088)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !277, line: 155, baseType: null)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !276, file: !277, line: 294, baseType: !317, size: 64, align: 64, offset: 1152)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !245, line: 141, baseType: !246)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !276, file: !277, line: 303, baseType: !233, size: 64, align: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !276, file: !277, line: 304, baseType: !233, size: 64, align: 64, offset: 1280)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !276, file: !277, line: 305, baseType: !233, size: 64, align: 64, offset: 1344)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !276, file: !277, line: 306, baseType: !233, size: 64, align: 64, offset: 1408)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !276, file: !277, line: 307, baseType: !323, size: 64, align: 64, offset: 1472)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !324, line: 62, baseType: !325)
!324 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!325 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !276, file: !277, line: 309, baseType: !273, size: 32, align: 32, offset: 1536)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !276, file: !277, line: 311, baseType: !328, size: 160, align: 8, offset: 1568)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 160, align: 8, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 20)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !249, file: !236, line: 343, baseType: !332, size: 64, align: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !236, line: 316, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!234, !234, !281}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !249, file: !236, line: 344, baseType: !337, size: 64, align: 64, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !236, line: 318, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!273, !234, !281, !234}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !249, file: !236, line: 345, baseType: !233, size: 64, align: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !249, file: !236, line: 346, baseType: !343, size: 64, align: 64, offset: 704)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !236, line: 320, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!234, !234}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !249, file: !236, line: 350, baseType: !348, size: 64, align: 64, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !236, line: 278, baseType: !350)
!350 = !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 236, size: 2176, align: 64, elements: !351)
!351 = !{!352, !357, !358, !359, !360, !361, !366, !368, !369, !370, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !350, file: !236, line: 241, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !236, line: 166, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!234, !234, !234}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !350, file: !236, line: 242, baseType: !353, size: 64, align: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !350, file: !236, line: 243, baseType: !353, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !350, file: !236, line: 244, baseType: !353, size: 64, align: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !350, file: !236, line: 245, baseType: !353, size: 64, align: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !350, file: !236, line: 246, baseType: !362, size: 64, align: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !236, line: 167, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!234, !234, !234, !234}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !350, file: !236, line: 247, baseType: !367, size: 64, align: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !236, line: 165, baseType: !344)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !350, file: !236, line: 248, baseType: !367, size: 64, align: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !350, file: !236, line: 249, baseType: !367, size: 64, align: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !350, file: !236, line: 250, baseType: !371, size: 64, align: 64, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !236, line: 168, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!273, !234}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !350, file: !236, line: 251, baseType: !367, size: 64, align: 64, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !350, file: !236, line: 252, baseType: !353, size: 64, align: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !350, file: !236, line: 253, baseType: !353, size: 64, align: 64, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !350, file: !236, line: 254, baseType: !353, size: 64, align: 64, offset: 832)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !350, file: !236, line: 255, baseType: !353, size: 64, align: 64, offset: 896)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !350, file: !236, line: 256, baseType: !353, size: 64, align: 64, offset: 960)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !350, file: !236, line: 257, baseType: !367, size: 64, align: 64, offset: 1024)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !350, file: !236, line: 258, baseType: !233, size: 64, align: 64, offset: 1088)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !350, file: !236, line: 259, baseType: !367, size: 64, align: 64, offset: 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !350, file: !236, line: 261, baseType: !353, size: 64, align: 64, offset: 1216)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !350, file: !236, line: 262, baseType: !353, size: 64, align: 64, offset: 1280)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !350, file: !236, line: 263, baseType: !353, size: 64, align: 64, offset: 1344)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !350, file: !236, line: 264, baseType: !353, size: 64, align: 64, offset: 1408)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !350, file: !236, line: 265, baseType: !362, size: 64, align: 64, offset: 1472)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !350, file: !236, line: 266, baseType: !353, size: 64, align: 64, offset: 1536)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !350, file: !236, line: 267, baseType: !353, size: 64, align: 64, offset: 1600)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !350, file: !236, line: 268, baseType: !353, size: 64, align: 64, offset: 1664)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !350, file: !236, line: 269, baseType: !353, size: 64, align: 64, offset: 1728)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !350, file: !236, line: 270, baseType: !353, size: 64, align: 64, offset: 1792)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !350, file: !236, line: 272, baseType: !353, size: 64, align: 64, offset: 1856)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !350, file: !236, line: 273, baseType: !353, size: 64, align: 64, offset: 1920)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !350, file: !236, line: 274, baseType: !353, size: 64, align: 64, offset: 1984)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !350, file: !236, line: 275, baseType: !353, size: 64, align: 64, offset: 2048)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !350, file: !236, line: 277, baseType: !367, size: 64, align: 64, offset: 2112)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !249, file: !236, line: 351, baseType: !400, size: 64, align: 64, offset: 832)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !236, line: 292, baseType: !402)
!402 = !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 280, size: 640, align: 64, elements: !403)
!403 = !{!404, !409, !410, !415, !416, !417, !422, !423, !428, !429}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !402, file: !236, line: 281, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !236, line: 169, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!240, !234}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !402, file: !236, line: 282, baseType: !353, size: 64, align: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !402, file: !236, line: 283, baseType: !411, size: 64, align: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !236, line: 170, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!234, !234, !240}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !402, file: !236, line: 284, baseType: !411, size: 64, align: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !402, file: !236, line: 285, baseType: !233, size: 64, align: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !402, file: !236, line: 286, baseType: !418, size: 64, align: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !236, line: 172, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!273, !234, !240, !234}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !402, file: !236, line: 287, baseType: !233, size: 64, align: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !402, file: !236, line: 288, baseType: !424, size: 64, align: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !236, line: 231, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!273, !234, !234}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !402, file: !236, line: 290, baseType: !353, size: 64, align: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !402, file: !236, line: 291, baseType: !411, size: 64, align: 64, offset: 576)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !249, file: !236, line: 352, baseType: !431, size: 64, align: 64, offset: 896)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !236, line: 298, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 294, size: 192, align: 64, elements: !434)
!434 = !{!435, !436, !437}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !433, file: !236, line: 295, baseType: !405, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !433, file: !236, line: 296, baseType: !353, size: 64, align: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !433, file: !236, line: 297, baseType: !438, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !236, line: 174, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!273, !234, !234, !234}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !249, file: !236, line: 356, baseType: !443, size: 64, align: 64, offset: 960)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !236, line: 321, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !234}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !241, line: 186, baseType: !240)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !249, file: !236, line: 357, baseType: !362, size: 64, align: 64, offset: 1024)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !249, file: !236, line: 358, baseType: !343, size: 64, align: 64, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !249, file: !236, line: 359, baseType: !451, size: 64, align: 64, offset: 1152)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !236, line: 317, baseType: !354)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !249, file: !236, line: 360, baseType: !453, size: 64, align: 64, offset: 1216)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !236, line: 319, baseType: !439)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !249, file: !236, line: 363, baseType: !455, size: 64, align: 64, offset: 1280)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !236, line: 304, baseType: !457)
!457 = !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 301, size: 128, align: 64, elements: !458)
!458 = !{!459, !480}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !457, file: !236, line: 302, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !236, line: 193, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!273, !234, !464, !273}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !236, line: 191, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !236, line: 178, size: 640, align: 64, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !477, !478, !479}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !466, file: !236, line: 179, baseType: !233, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !466, file: !236, line: 180, baseType: !234, size: 64, align: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !466, file: !236, line: 181, baseType: !240, size: 64, align: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !466, file: !236, line: 182, baseType: !240, size: 64, align: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !466, file: !236, line: 184, baseType: !273, size: 32, align: 32, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !466, file: !236, line: 185, baseType: !273, size: 32, align: 32, offset: 288)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !466, file: !236, line: 186, baseType: !281, size: 64, align: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !466, file: !236, line: 187, baseType: !476, size: 64, align: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !466, file: !236, line: 188, baseType: !476, size: 64, align: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !466, file: !236, line: 189, baseType: !476, size: 64, align: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !466, file: !236, line: 190, baseType: !233, size: 64, align: 64, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !457, file: !236, line: 303, baseType: !481, size: 64, align: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !236, line: 194, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !234, !464}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !249, file: !236, line: 366, baseType: !325, size: 64, align: 64, offset: 1344)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !249, file: !236, line: 368, baseType: !258, size: 64, align: 64, offset: 1408)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !249, file: !236, line: 372, baseType: !488, size: 64, align: 64, offset: 1472)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !236, line: 233, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!273, !234, !492, !233}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !236, line: 232, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!273, !234, !233}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !249, file: !236, line: 375, baseType: !371, size: 64, align: 64, offset: 1536)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !249, file: !236, line: 379, baseType: !498, size: 64, align: 64, offset: 1600)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !236, line: 322, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!234, !234, !234, !273}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !249, file: !236, line: 382, baseType: !240, size: 64, align: 64, offset: 1664)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !249, file: !236, line: 385, baseType: !504, size: 64, align: 64, offset: 1728)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !236, line: 323, baseType: !344)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !249, file: !236, line: 386, baseType: !506, size: 64, align: 64, offset: 1792)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !236, line: 324, baseType: !344)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !249, file: !236, line: 389, baseType: !508, size: 64, align: 64, offset: 1856)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !510, line: 40, size: 256, align: 64, elements: !511)
!510 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!511 = !{!512, !513, !515, !516}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !509, file: !510, line: 41, baseType: !258, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !509, file: !510, line: 42, baseType: !514, size: 64, align: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !510, line: 18, baseType: !354)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !509, file: !510, line: 43, baseType: !273, size: 32, align: 32, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !509, file: !510, line: 45, baseType: !258, size: 64, align: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !249, file: !236, line: 390, baseType: !518, size: 64, align: 64, offset: 1920)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !236, line: 390, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !249, file: !236, line: 391, baseType: !521, size: 64, align: 64, offset: 1984)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !523, line: 11, size: 320, align: 64, elements: !524)
!523 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!524 = !{!525, !526, !531, !536, !537}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !522, file: !523, line: 12, baseType: !281, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !522, file: !523, line: 13, baseType: !527, size: 64, align: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !523, line: 8, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!234, !234, !233}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !522, file: !523, line: 14, baseType: !532, size: 64, align: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !523, line: 9, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!273, !234, !234, !233}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !522, file: !523, line: 15, baseType: !281, size: 64, align: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !522, file: !523, line: 16, baseType: !233, size: 64, align: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !249, file: !236, line: 392, baseType: !248, size: 64, align: 64, offset: 2048)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !249, file: !236, line: 393, baseType: !234, size: 64, align: 64, offset: 2112)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !249, file: !236, line: 394, baseType: !541, size: 64, align: 64, offset: 2176)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !236, line: 325, baseType: !363)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !249, file: !236, line: 395, baseType: !543, size: 64, align: 64, offset: 2240)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !236, line: 326, baseType: !439)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !249, file: !236, line: 396, baseType: !240, size: 64, align: 64, offset: 2304)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !249, file: !236, line: 397, baseType: !546, size: 64, align: 64, offset: 2368)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !236, line: 327, baseType: !439)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !249, file: !236, line: 398, baseType: !548, size: 64, align: 64, offset: 2432)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !236, line: 329, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!234, !248, !240}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !249, file: !236, line: 399, baseType: !553, size: 64, align: 64, offset: 2496)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !236, line: 328, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!234, !248, !234, !234}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !249, file: !236, line: 400, baseType: !558, size: 64, align: 64, offset: 2560)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !236, line: 307, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !233}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !249, file: !236, line: 401, baseType: !371, size: 64, align: 64, offset: 2624)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !249, file: !236, line: 402, baseType: !234, size: 64, align: 64, offset: 2688)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !249, file: !236, line: 403, baseType: !234, size: 64, align: 64, offset: 2752)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !249, file: !236, line: 404, baseType: !234, size: 64, align: 64, offset: 2816)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !249, file: !236, line: 405, baseType: !234, size: 64, align: 64, offset: 2880)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !249, file: !236, line: 406, baseType: !234, size: 64, align: 64, offset: 2944)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !249, file: !236, line: 407, baseType: !264, size: 64, align: 64, offset: 3008)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !249, file: !236, line: 410, baseType: !570, size: 32, align: 32, offset: 3072)
!570 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !249, file: !236, line: 412, baseType: !264, size: 64, align: 64, offset: 3136)
!572 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !574, line: 59, baseType: !575)
!574 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !245, line: 144, baseType: !246)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !574, line: 91, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !245, line: 156, baseType: !273)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !580, line: 75, baseType: !581)
!580 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!581 = !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 64, size: 1024, align: 64, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !581, file: !580, line: 69, baseType: !584, size: 1024, align: 64)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 1024, align: 64, elements: !586)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !580, line: 54, baseType: !246)
!586 = !{!587}
!587 = !DISubrange(count: 16)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !590, line: 33, baseType: !591)
!590 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!591 = !DICompositeType(tag: DW_TAG_structure_type, file: !590, line: 25, size: 256, align: 64, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !591, file: !590, line: 26, baseType: !252, size: 192, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !591, file: !590, line: 27, baseType: !595, size: 64, align: 64, offset: 192)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 64, align: 64, elements: !311)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !574, line: 75, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !245, line: 148, baseType: !246)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !324, line: 90, baseType: !273)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, align: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64, align: 64)
!606 = !{!607, !613, !617, !650, !654, !657, !661, !668, !678, !685, !690, !758, !779, !788, !801, !807, !814, !823, !833, !838, !841, !847, !853, !872, !880, !887, !891, !901, !905, !1005, !1009, !1013, !1092}
!607 = !DISubprogram(name: "PyInit_time", scope: !608, file: !608, line: 1499, type: !609, isLocal: false, isDefinition: true, scopeLine: 1500, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_time, variables: !611)
!608 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/timemodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!609 = !DISubroutineType(types: !610)
!610 = !{!234}
!611 = !{!612}
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !607, file: !608, line: 1501, type: !234)
!613 = !DISubprogram(name: "time_time", scope: !608, file: !608, line: 53, type: !355, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_time, variables: !614)
!614 = !{!615, !616}
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !613, file: !608, line: 53, type: !234)
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !613, file: !608, line: 53, type: !234)
!617 = !DISubprogram(name: "floattime", scope: !608, file: !608, line: 1535, type: !618, isLocal: true, isDefinition: true, scopeLine: 1536, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Py_clock_info_t*)* @floattime, variables: !628)
!618 = !DISubroutineType(types: !619)
!619 = !{!234, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_clock_info_t", file: !4, line: 31, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 26, size: 192, align: 64, elements: !623)
!623 = !{!624, !625, !626, !627}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !622, file: !4, line: 27, baseType: !258, size: 64, align: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "monotonic", scope: !622, file: !4, line: 28, baseType: !273, size: 32, align: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "adjustable", scope: !622, file: !4, line: 29, baseType: !273, size: 32, align: 32, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !622, file: !4, line: 30, baseType: !572, size: 64, align: 64, offset: 128)
!628 = !{!629, !630, !638, !644, !645}
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !617, file: !608, line: 1535, type: !620)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !617, file: !608, line: 1537, type: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyTime_timeval", file: !4, line: 17, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !633, line: 30, size: 128, align: 64, elements: !634)
!633 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !632, file: !633, line: 32, baseType: !597, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !632, file: !633, line: 33, baseType: !637, size: 64, align: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !245, line: 150, baseType: !246)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !617, file: !608, line: 1539, type: !639)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !574, line: 120, size: 128, align: 64, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !639, file: !574, line: 122, baseType: !597, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !639, file: !574, line: 123, baseType: !643, size: 64, align: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !245, line: 184, baseType: !246)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !617, file: !608, line: 1540, type: !273)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !646, file: !608, line: 1548, type: !639)
!646 = distinct !DILexicalBlock(scope: !647, file: !608, line: 1547, column: 19)
!647 = distinct !DILexicalBlock(scope: !648, file: !608, line: 1547, column: 13)
!648 = distinct !DILexicalBlock(scope: !649, file: !608, line: 1546, column: 19)
!649 = distinct !DILexicalBlock(scope: !617, file: !608, line: 1546, column: 9)
!650 = !DISubprogram(name: "time_clock", scope: !608, file: !608, line: 146, type: !355, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_clock, variables: !651)
!651 = !{!652, !653}
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !650, file: !608, line: 146, type: !234)
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !650, file: !608, line: 146, type: !234)
!654 = !DISubprogram(name: "pyclock", scope: !608, file: !608, line: 135, type: !618, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Py_clock_info_t*)* @pyclock, variables: !655)
!655 = !{!656}
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !654, file: !608, line: 135, type: !620)
!657 = !DISubprogram(name: "floatclock", scope: !608, file: !608, line: 75, type: !618, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Py_clock_info_t*)* @floatclock, variables: !658)
!658 = !{!659, !660}
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !657, file: !608, line: 75, type: !620)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !657, file: !608, line: 77, type: !573)
!661 = !DISubprogram(name: "time_clock_gettime", scope: !608, file: !608, line: 161, type: !355, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_clock_gettime, variables: !662)
!662 = !{!663, !664, !665, !666, !667}
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !661, file: !608, line: 161, type: !234)
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !661, file: !608, line: 161, type: !234)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !661, file: !608, line: 163, type: !273)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "clk_id", scope: !661, file: !608, line: 164, type: !273)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !661, file: !608, line: 165, type: !639)
!668 = !DISubprogram(name: "time_clock_settime", scope: !608, file: !608, line: 184, type: !355, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_clock_settime, variables: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !668, file: !608, line: 184, type: !234)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !668, file: !608, line: 184, type: !234)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "clk_id", scope: !668, file: !608, line: 186, type: !273)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !668, file: !608, line: 187, type: !234)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tv_sec", scope: !668, file: !608, line: 188, type: !596)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tv_nsec", scope: !668, file: !608, line: 189, type: !246)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !668, file: !608, line: 190, type: !639)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !668, file: !608, line: 191, type: !273)
!678 = !DISubprogram(name: "time_clock_getres", scope: !608, file: !608, line: 215, type: !355, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_clock_getres, variables: !679)
!679 = !{!680, !681, !682, !683, !684}
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !678, file: !608, line: 215, type: !234)
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !678, file: !608, line: 215, type: !234)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !678, file: !608, line: 217, type: !273)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "clk_id", scope: !678, file: !608, line: 218, type: !273)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !678, file: !608, line: 219, type: !639)
!685 = !DISubprogram(name: "time_sleep", scope: !608, file: !608, line: 240, type: !355, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_sleep, variables: !686)
!686 = !{!687, !688, !689}
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !685, file: !608, line: 240, type: !234)
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !685, file: !608, line: 240, type: !234)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "secs", scope: !685, file: !608, line: 242, type: !572)
!690 = !DISubprogram(name: "floatsleep", scope: !608, file: !608, line: 1570, type: !691, isLocal: true, isDefinition: true, scopeLine: 1571, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @floatsleep, variables: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{!273, !572}
!693 = !{!694, !695, !696, !697, !698}
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "secs", arg: 1, scope: !690, file: !608, line: 1570, type: !572)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !690, file: !608, line: 1574, type: !632)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frac", scope: !690, file: !608, line: 1575, type: !572)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !690, file: !608, line: 1576, type: !273)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !699, file: !608, line: 1582, type: !700)
!699 = distinct !DILexicalBlock(scope: !690, file: !608, line: 1582, column: 5)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64, align: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !702, line: 139, baseType: !703)
!702 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !702, line: 69, size: 1536, align: 64, elements: !704)
!704 = !{!705, !707, !708, !728, !731, !732, !733, !734, !735, !736, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !703, file: !702, line: 72, baseType: !706, size: 64, align: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !702, line: 73, baseType: !706, size: 64, align: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !703, file: !702, line: 74, baseType: !709, size: 64, align: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !702, line: 44, baseType: !711)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !702, line: 19, size: 832, align: 64, elements: !712)
!712 = !{!713, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !702, line: 21, baseType: !714, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !711, file: !702, line: 22, baseType: !706, size: 64, align: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !711, file: !702, line: 24, baseType: !234, size: 64, align: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !711, file: !702, line: 25, baseType: !234, size: 64, align: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !711, file: !702, line: 26, baseType: !234, size: 64, align: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !711, file: !702, line: 27, baseType: !234, size: 64, align: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !711, file: !702, line: 28, baseType: !234, size: 64, align: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !711, file: !702, line: 30, baseType: !234, size: 64, align: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !711, file: !702, line: 31, baseType: !234, size: 64, align: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !711, file: !702, line: 32, baseType: !234, size: 64, align: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !711, file: !702, line: 33, baseType: !273, size: 32, align: 32, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !711, file: !702, line: 34, baseType: !273, size: 32, align: 32, offset: 672)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !711, file: !702, line: 37, baseType: !273, size: 32, align: 32, offset: 704)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !711, file: !702, line: 43, baseType: !234, size: 64, align: 64, offset: 768)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !703, file: !702, line: 76, baseType: !729, size: 64, align: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !702, line: 50, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !703, file: !702, line: 77, baseType: !273, size: 32, align: 32, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !703, file: !702, line: 78, baseType: !260, size: 8, align: 8, offset: 288)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !703, file: !702, line: 80, baseType: !260, size: 8, align: 8, offset: 296)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !703, file: !702, line: 85, baseType: !273, size: 32, align: 32, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !703, file: !702, line: 86, baseType: !273, size: 32, align: 32, offset: 352)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !703, file: !702, line: 88, baseType: !737, size: 64, align: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !702, line: 54, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!273, !234, !729, !273, !234}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !703, file: !702, line: 89, baseType: !737, size: 64, align: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !703, file: !702, line: 90, baseType: !234, size: 64, align: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !703, file: !702, line: 91, baseType: !234, size: 64, align: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !703, file: !702, line: 93, baseType: !234, size: 64, align: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !703, file: !702, line: 94, baseType: !234, size: 64, align: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !703, file: !702, line: 95, baseType: !234, size: 64, align: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !703, file: !702, line: 97, baseType: !234, size: 64, align: 64, offset: 832)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !703, file: !702, line: 98, baseType: !234, size: 64, align: 64, offset: 896)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !703, file: !702, line: 99, baseType: !234, size: 64, align: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !703, file: !702, line: 101, baseType: !234, size: 64, align: 64, offset: 1024)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !703, file: !702, line: 103, baseType: !273, size: 32, align: 32, offset: 1088)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !703, file: !702, line: 105, baseType: !234, size: 64, align: 64, offset: 1152)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !703, file: !702, line: 106, baseType: !246, size: 64, align: 64, offset: 1216)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !703, file: !702, line: 108, baseType: !273, size: 32, align: 32, offset: 1280)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !703, file: !702, line: 109, baseType: !234, size: 64, align: 64, offset: 1344)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !703, file: !702, line: 134, baseType: !559, size: 64, align: 64, offset: 1408)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !703, file: !702, line: 135, baseType: !233, size: 64, align: 64, offset: 1472)
!758 = !DISubprogram(name: "time_gmtime", scope: !608, file: !608, line: 352, type: !355, isLocal: true, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_gmtime, variables: !759)
!759 = !{!760, !761, !762, !763, !777}
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !758, file: !608, line: 352, type: !234)
!761 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !758, file: !608, line: 352, type: !234)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "when", scope: !758, file: !608, line: 354, type: !596)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !758, file: !608, line: 355, type: !764)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !574, line: 133, size: 448, align: 64, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !764, file: !574, line: 135, baseType: !273, size: 32, align: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !764, file: !574, line: 136, baseType: !273, size: 32, align: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !764, file: !574, line: 137, baseType: !273, size: 32, align: 32, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !764, file: !574, line: 138, baseType: !273, size: 32, align: 32, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !764, file: !574, line: 139, baseType: !273, size: 32, align: 32, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !764, file: !574, line: 140, baseType: !273, size: 32, align: 32, offset: 160)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !764, file: !574, line: 141, baseType: !273, size: 32, align: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !764, file: !574, line: 142, baseType: !273, size: 32, align: 32, offset: 224)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !764, file: !574, line: 143, baseType: !273, size: 32, align: 32, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !764, file: !574, line: 146, baseType: !246, size: 64, align: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !764, file: !574, line: 147, baseType: !258, size: 64, align: 64, offset: 384)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local", scope: !758, file: !608, line: 355, type: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64, align: 64)
!779 = !DISubprogram(name: "parse_time_t_args", scope: !608, file: !608, line: 333, type: !780, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, i64*)* @parse_time_t_args, variables: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!273, !234, !281, !605}
!782 = !{!783, !784, !785, !786, !787}
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !779, file: !608, line: 333, type: !234)
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !779, file: !608, line: 333, type: !281)
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pwhen", arg: 3, scope: !779, file: !608, line: 333, type: !605)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ot", scope: !779, file: !608, line: 335, type: !234)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "whent", scope: !779, file: !608, line: 336, type: !596)
!788 = !DISubprogram(name: "tmtotuple", scope: !608, file: !608, line: 297, type: !789, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tm*)* @tmtotuple, variables: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!234, !778}
!791 = !{!792, !793, !794, !798}
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !788, file: !608, line: 297, type: !778)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !788, file: !608, line: 299, type: !234)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !795, file: !608, line: 321, type: !234)
!795 = distinct !DILexicalBlock(scope: !796, file: !608, line: 321, column: 12)
!796 = distinct !DILexicalBlock(scope: !797, file: !608, line: 320, column: 27)
!797 = distinct !DILexicalBlock(scope: !788, file: !608, line: 320, column: 9)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !799, file: !608, line: 321, type: !234)
!799 = distinct !DILexicalBlock(scope: !800, file: !608, line: 321, column: 97)
!800 = distinct !DILexicalBlock(scope: !795, file: !608, line: 321, column: 63)
!801 = !DISubprogram(name: "time_localtime", scope: !608, file: !608, line: 404, type: !355, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_localtime, variables: !802)
!802 = !{!803, !804, !805, !806}
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !801, file: !608, line: 404, type: !234)
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !801, file: !608, line: 404, type: !234)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "when", scope: !801, file: !608, line: 406, type: !596)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !801, file: !608, line: 407, type: !764)
!807 = !DISubprogram(name: "pylocaltime", scope: !608, file: !608, line: 384, type: !808, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, %struct.tm*)* @pylocaltime, variables: !810)
!808 = !DISubroutineType(types: !809)
!809 = !{!273, !605, !778}
!810 = !{!811, !812, !813}
!811 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timep", arg: 1, scope: !807, file: !608, line: 384, type: !605)
!812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 2, scope: !807, file: !608, line: 384, type: !778)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local", scope: !807, file: !608, line: 386, type: !778)
!814 = !DISubprogram(name: "time_asctime", scope: !608, file: !608, line: 775, type: !355, isLocal: true, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_asctime, variables: !815)
!815 = !{!816, !817, !818, !819, !820}
!816 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !814, file: !608, line: 775, type: !234)
!817 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !814, file: !608, line: 775, type: !234)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !814, file: !608, line: 777, type: !234)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !814, file: !608, line: 778, type: !764)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tt", scope: !821, file: !608, line: 783, type: !596)
!821 = distinct !DILexicalBlock(scope: !822, file: !608, line: 782, column: 28)
!822 = distinct !DILexicalBlock(scope: !814, file: !608, line: 782, column: 9)
!823 = !DISubprogram(name: "gettmarg", scope: !608, file: !608, line: 427, type: !824, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct.tm*)* @gettmarg, variables: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!273, !234, !778}
!826 = !{!827, !828, !829, !830}
!827 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !823, file: !608, line: 427, type: !234)
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !823, file: !608, line: 427, type: !778)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !823, file: !608, line: 429, type: !273)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !831, file: !608, line: 450, type: !234)
!831 = distinct !DILexicalBlock(scope: !832, file: !608, line: 449, column: 60)
!832 = distinct !DILexicalBlock(scope: !823, file: !608, line: 449, column: 9)
!833 = !DISubprogram(name: "checktm", scope: !608, file: !608, line: 467, type: !834, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tm*)* @checktm, variables: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!273, !778}
!836 = !{!837}
!837 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !833, file: !608, line: 467, type: !778)
!838 = !DISubprogram(name: "_asctime", scope: !608, file: !608, line: 754, type: !789, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tm*)* @_asctime, variables: !839)
!839 = !{!840}
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timeptr", arg: 1, scope: !838, file: !608, line: 754, type: !778)
!841 = !DISubprogram(name: "time_ctime", scope: !608, file: !608, line: 800, type: !355, isLocal: true, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_ctime, variables: !842)
!842 = !{!843, !844, !845, !846}
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !841, file: !608, line: 800, type: !234)
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !841, file: !608, line: 800, type: !234)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tt", scope: !841, file: !608, line: 802, type: !596)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !841, file: !608, line: 803, type: !764)
!847 = !DISubprogram(name: "time_mktime", scope: !608, file: !608, line: 820, type: !355, isLocal: true, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_mktime, variables: !848)
!848 = !{!849, !850, !851, !852}
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !847, file: !608, line: 820, type: !234)
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tup", arg: 2, scope: !847, file: !608, line: 820, type: !234)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !847, file: !608, line: 822, type: !764)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tt", scope: !847, file: !608, line: 823, type: !596)
!853 = !DISubprogram(name: "time_strftime", scope: !608, file: !608, line: 569, type: !355, isLocal: true, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_strftime, variables: !854)
!854 = !{!855, !856, !857, !858, !859, !862, !863, !864, !865, !866, !867, !868, !869}
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !853, file: !608, line: 569, type: !234)
!856 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !853, file: !608, line: 569, type: !234)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !853, file: !608, line: 571, type: !234)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !853, file: !608, line: 572, type: !764)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !853, file: !608, line: 573, type: !860)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !853, file: !608, line: 575, type: !598)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_arg", scope: !853, file: !608, line: 579, type: !234)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmtlen", scope: !853, file: !608, line: 580, type: !323)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !853, file: !608, line: 580, type: !323)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outbuf", scope: !853, file: !608, line: 581, type: !598)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !853, file: !608, line: 582, type: !323)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !853, file: !608, line: 583, type: !234)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tt", scope: !870, file: !608, line: 594, type: !596)
!870 = distinct !DILexicalBlock(scope: !871, file: !608, line: 593, column: 28)
!871 = distinct !DILexicalBlock(scope: !853, file: !608, line: 593, column: 9)
!872 = !DISubprogram(name: "time_strptime", scope: !608, file: !608, line: 730, type: !355, isLocal: true, isDefinition: true, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_strptime, variables: !873)
!873 = !{!874, !875, !876, !877, !878}
!874 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !872, file: !608, line: 730, type: !234)
!875 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !872, file: !608, line: 730, type: !234)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "strptime_module", scope: !872, file: !608, line: 732, type: !234)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "strptime_result", scope: !872, file: !608, line: 733, type: !234)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !879, file: !608, line: 740, type: !234)
!879 = distinct !DILexicalBlock(scope: !872, file: !608, line: 740, column: 8)
!880 = !DISubprogram(name: "time_tzset", scope: !608, file: !608, line: 871, type: !355, isLocal: true, isDefinition: true, scopeLine: 872, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_tzset, variables: !881)
!881 = !{!882, !883, !884, !885}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !880, file: !608, line: 871, type: !234)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !880, file: !608, line: 871, type: !234)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !880, file: !608, line: 873, type: !234)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !886, file: !608, line: 884, type: !234)
!886 = distinct !DILexicalBlock(scope: !880, file: !608, line: 884, column: 8)
!887 = !DISubprogram(name: "time_monotonic", scope: !608, file: !608, line: 1025, type: !355, isLocal: true, isDefinition: true, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_monotonic, variables: !888)
!888 = !{!889, !890}
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !887, file: !608, line: 1025, type: !234)
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !887, file: !608, line: 1025, type: !234)
!891 = !DISubprogram(name: "pymonotonic", scope: !608, file: !608, line: 914, type: !618, isLocal: true, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Py_clock_info_t*)* @pymonotonic, variables: !892)
!892 = !{!893, !894, !895, !897, !898}
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !891, file: !608, line: 914, type: !620)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !891, file: !608, line: 996, type: !639)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "clk_id", scope: !891, file: !608, line: 1001, type: !896)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "function", scope: !891, file: !608, line: 1002, type: !258)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !899, file: !608, line: 1011, type: !639)
!899 = distinct !DILexicalBlock(scope: !900, file: !608, line: 1010, column: 15)
!900 = distinct !DILexicalBlock(scope: !891, file: !608, line: 1010, column: 9)
!901 = !DISubprogram(name: "time_process_time", scope: !608, file: !608, line: 1195, type: !355, isLocal: true, isDefinition: true, scopeLine: 1196, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_process_time, variables: !902)
!902 = !{!903, !904}
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !901, file: !608, line: 1195, type: !234)
!904 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !901, file: !608, line: 1195, type: !234)
!905 = !DISubprogram(name: "py_process_time", scope: !608, file: !608, line: 1082, type: !618, isLocal: true, isDefinition: true, scopeLine: 1083, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Py_clock_info_t*)* @py_process_time, variables: !906)
!906 = !{!907, !908, !983, !991, !992, !993, !994, !999, !1002}
!907 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !905, file: !608, line: 1082, type: !620)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ru", scope: !905, file: !608, line: 1112, type: !909)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !9, line: 187, size: 1152, align: 64, elements: !910)
!910 = !{!911, !912, !913, !918, !923, !928, !933, !938, !943, !948, !953, !958, !963, !968, !973, !978}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !909, file: !9, line: 190, baseType: !632, size: 128, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !909, file: !9, line: 192, baseType: !632, size: 128, align: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 194, baseType: !914, size: 64, align: 64, offset: 256)
!914 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 194, size: 64, align: 64, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !914, file: !9, line: 196, baseType: !246, size: 64, align: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_maxrss_word", scope: !914, file: !9, line: 197, baseType: !643, size: 64, align: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 202, baseType: !919, size: 64, align: 64, offset: 320)
!919 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 202, size: 64, align: 64, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !919, file: !9, line: 204, baseType: !246, size: 64, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_ixrss_word", scope: !919, file: !9, line: 205, baseType: !643, size: 64, align: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 208, baseType: !924, size: 64, align: 64, offset: 384)
!924 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 208, size: 64, align: 64, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !924, file: !9, line: 210, baseType: !246, size: 64, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_idrss_word", scope: !924, file: !9, line: 211, baseType: !643, size: 64, align: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 214, baseType: !929, size: 64, align: 64, offset: 448)
!929 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 214, size: 64, align: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !929, file: !9, line: 216, baseType: !246, size: 64, align: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_isrss_word", scope: !929, file: !9, line: 217, baseType: !643, size: 64, align: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 221, baseType: !934, size: 64, align: 64, offset: 512)
!934 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 221, size: 64, align: 64, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !934, file: !9, line: 223, baseType: !246, size: 64, align: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_minflt_word", scope: !934, file: !9, line: 224, baseType: !643, size: 64, align: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 227, baseType: !939, size: 64, align: 64, offset: 576)
!939 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 227, size: 64, align: 64, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !939, file: !9, line: 229, baseType: !246, size: 64, align: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_majflt_word", scope: !939, file: !9, line: 230, baseType: !643, size: 64, align: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 233, baseType: !944, size: 64, align: 64, offset: 640)
!944 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 233, size: 64, align: 64, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !944, file: !9, line: 235, baseType: !246, size: 64, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nswap_word", scope: !944, file: !9, line: 236, baseType: !643, size: 64, align: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 240, baseType: !949, size: 64, align: 64, offset: 704)
!949 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 240, size: 64, align: 64, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !949, file: !9, line: 242, baseType: !246, size: 64, align: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_inblock_word", scope: !949, file: !9, line: 243, baseType: !643, size: 64, align: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 246, baseType: !954, size: 64, align: 64, offset: 768)
!954 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 246, size: 64, align: 64, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !954, file: !9, line: 248, baseType: !246, size: 64, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_oublock_word", scope: !954, file: !9, line: 249, baseType: !643, size: 64, align: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 252, baseType: !959, size: 64, align: 64, offset: 832)
!959 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 252, size: 64, align: 64, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !959, file: !9, line: 254, baseType: !246, size: 64, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgsnd_word", scope: !959, file: !9, line: 255, baseType: !643, size: 64, align: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 258, baseType: !964, size: 64, align: 64, offset: 896)
!964 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 258, size: 64, align: 64, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !964, file: !9, line: 260, baseType: !246, size: 64, align: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgrcv_word", scope: !964, file: !9, line: 261, baseType: !643, size: 64, align: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 264, baseType: !969, size: 64, align: 64, offset: 960)
!969 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 264, size: 64, align: 64, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !969, file: !9, line: 266, baseType: !246, size: 64, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nsignals_word", scope: !969, file: !9, line: 267, baseType: !643, size: 64, align: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 272, baseType: !974, size: 64, align: 64, offset: 1024)
!974 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 272, size: 64, align: 64, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !974, file: !9, line: 274, baseType: !246, size: 64, align: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nvcsw_word", scope: !974, file: !9, line: 275, baseType: !643, size: 64, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !9, line: 279, baseType: !979, size: 64, align: 64, offset: 1088)
!979 = !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !9, line: 279, size: 64, align: 64, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !979, file: !9, line: 281, baseType: !246, size: 64, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nivcsw_word", scope: !979, file: !9, line: 282, baseType: !643, size: 64, align: 64)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !905, file: !608, line: 1115, type: !984)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "tms", file: !985, line: 34, size: 256, align: 64, elements: !986)
!985 = !DIFile(filename: "/usr/include/sys/times.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!986 = !{!987, !988, !989, !990}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "tms_utime", scope: !984, file: !985, line: 36, baseType: !573, size: 64, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "tms_stime", scope: !984, file: !985, line: 37, baseType: !573, size: 64, align: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cutime", scope: !984, file: !985, line: 39, baseType: !573, size: 64, align: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cstime", scope: !984, file: !985, line: 40, baseType: !573, size: 64, align: 64, offset: 192)
!991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !905, file: !608, line: 1121, type: !639)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "clk_id", scope: !905, file: !608, line: 1126, type: !896)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "function", scope: !905, file: !608, line: 1127, type: !258)
!994 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !995, file: !608, line: 1132, type: !639)
!995 = distinct !DILexicalBlock(scope: !996, file: !608, line: 1131, column: 19)
!996 = distinct !DILexicalBlock(scope: !997, file: !608, line: 1131, column: 13)
!997 = distinct !DILexicalBlock(scope: !998, file: !608, line: 1130, column: 42)
!998 = distinct !DILexicalBlock(scope: !905, file: !608, line: 1130, column: 9)
!999 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total", scope: !1000, file: !608, line: 1147, type: !572)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !608, line: 1146, column: 43)
!1001 = distinct !DILexicalBlock(scope: !905, file: !608, line: 1146, column: 9)
!1002 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total", scope: !1003, file: !608, line: 1162, type: !572)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !608, line: 1161, column: 35)
!1004 = distinct !DILexicalBlock(scope: !905, file: !608, line: 1161, column: 9)
!1005 = !DISubprogram(name: "time_perf_counter", scope: !608, file: !608, line: 1071, type: !355, isLocal: true, isDefinition: true, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_perf_counter, variables: !1006)
!1006 = !{!1007, !1008}
!1007 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1005, file: !608, line: 1071, type: !234)
!1008 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !1005, file: !608, line: 1071, type: !234)
!1009 = !DISubprogram(name: "perf_counter", scope: !608, file: !608, line: 1037, type: !618, isLocal: true, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Py_clock_info_t*)* @perf_counter, variables: !1010)
!1010 = !{!1011, !1012}
!1011 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !1009, file: !608, line: 1037, type: !620)
!1012 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1009, file: !608, line: 1040, type: !234)
!1013 = !DISubprogram(name: "time_get_clock_info", scope: !608, file: !608, line: 1207, type: !355, isLocal: true, isDefinition: true, scopeLine: 1208, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @time_get_clock_info, variables: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1025, !1026, !1028, !1029, !1032, !1033, !1035, !1036, !1039, !1040, !1042, !1043, !1046, !1047, !1049, !1050, !1053, !1054, !1056, !1057, !1059, !1061, !1065, !1067, !1071, !1073, !1077, !1079, !1083, !1085, !1087, !1089}
!1015 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1013, file: !608, line: 1207, type: !234)
!1016 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1013, file: !608, line: 1207, type: !234)
!1017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1013, file: !608, line: 1209, type: !281)
!1018 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !1013, file: !608, line: 1210, type: !621)
!1019 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !1013, file: !608, line: 1211, type: !234)
!1020 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !1013, file: !608, line: 1211, type: !234)
!1021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ns", scope: !1013, file: !608, line: 1211, type: !234)
!1022 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !1023, file: !608, line: 1228, type: !323)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !608, line: 1228, column: 24)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1228, column: 9)
!1025 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !1023, file: !608, line: 1228, type: !323)
!1026 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !1027, file: !608, line: 1228, type: !602)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !608, line: 1228, column: 1555)
!1028 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !1027, file: !608, line: 1228, type: !273)
!1029 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !1030, file: !608, line: 1231, type: !323)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !608, line: 1231, column: 29)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !608, line: 1231, column: 14)
!1032 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !1030, file: !608, line: 1231, type: !323)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !1034, file: !608, line: 1231, type: !602)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !608, line: 1231, column: 1575)
!1035 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !1034, file: !608, line: 1231, type: !273)
!1036 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !1037, file: !608, line: 1235, type: !323)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !608, line: 1235, column: 29)
!1038 = distinct !DILexicalBlock(scope: !1031, file: !608, line: 1235, column: 14)
!1039 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !1037, file: !608, line: 1235, type: !323)
!1040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !1041, file: !608, line: 1235, type: !602)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !608, line: 1235, column: 1635)
!1042 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !1041, file: !608, line: 1235, type: !273)
!1043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !1044, file: !608, line: 1238, type: !323)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !608, line: 1238, column: 29)
!1045 = distinct !DILexicalBlock(scope: !1038, file: !608, line: 1238, column: 14)
!1046 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !1044, file: !608, line: 1238, type: !323)
!1047 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !1048, file: !608, line: 1238, type: !602)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !608, line: 1238, column: 1680)
!1049 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !1048, file: !608, line: 1238, type: !273)
!1050 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !1051, file: !608, line: 1240, type: !323)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !608, line: 1240, column: 29)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !608, line: 1240, column: 14)
!1053 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !1051, file: !608, line: 1240, type: !323)
!1054 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !1055, file: !608, line: 1240, type: !602)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !608, line: 1240, column: 1680)
!1056 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !1055, file: !608, line: 1240, type: !273)
!1057 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1058, file: !608, line: 1248, type: !234)
!1058 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1248, column: 8)
!1059 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1060, file: !608, line: 1260, type: !234)
!1060 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1260, column: 8)
!1061 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1062, file: !608, line: 1260, type: !234)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !608, line: 1260, column: 101)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !608, line: 1260, column: 76)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !608, line: 1260, column: 53)
!1065 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1066, file: !608, line: 1268, type: !234)
!1066 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1268, column: 8)
!1067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1068, file: !608, line: 1268, type: !234)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !608, line: 1268, column: 101)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !608, line: 1268, column: 76)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !608, line: 1268, column: 53)
!1071 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1072, file: !608, line: 1276, type: !234)
!1072 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1276, column: 8)
!1073 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1074, file: !608, line: 1276, type: !234)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !608, line: 1276, column: 101)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !608, line: 1276, column: 76)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !608, line: 1276, column: 53)
!1077 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1078, file: !608, line: 1285, type: !234)
!1078 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1285, column: 8)
!1079 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1080, file: !608, line: 1285, type: !234)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !608, line: 1285, column: 101)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !608, line: 1285, column: 76)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !608, line: 1285, column: 53)
!1083 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1084, file: !608, line: 1288, type: !234)
!1084 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1288, column: 8)
!1085 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1086, file: !608, line: 1292, type: !234)
!1086 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1292, column: 8)
!1087 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1088, file: !608, line: 1293, type: !234)
!1088 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1293, column: 8)
!1089 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1090, file: !608, line: 1293, type: !234)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !608, line: 1293, column: 95)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !608, line: 1293, column: 61)
!1092 = !DISubprogram(name: "PyInit_timezone", scope: !608, file: !608, line: 1303, type: !266, isLocal: true, isDefinition: true, scopeLine: 1303, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyInit_timezone, variables: !1093)
!1093 = !{!1094, !1095, !1097, !1098, !1099, !1100, !1104}
!1094 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !1092, file: !608, line: 1303, type: !234)
!1095 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !1096, file: !608, line: 1337, type: !596)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !608, line: 1335, column: 5)
!1097 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1096, file: !608, line: 1338, type: !778)
!1098 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "janzone", scope: !1096, file: !608, line: 1339, type: !246)
!1099 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "julyzone", scope: !1096, file: !608, line: 1339, type: !246)
!1100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "janname", scope: !1096, file: !608, line: 1340, type: !1101)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 80, align: 8, elements: !1102)
!1102 = !{!1103}
!1103 = !DISubrange(count: 10)
!1104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "julyname", scope: !1096, file: !608, line: 1340, type: !1101)
!1105 = !{!1106, !1107, !1109, !1132, !1136, !1140, !1144, !1148, !1152, !1156, !1160, !1164, !1168, !1172, !1177, !1181, !1185, !1189, !1193, !1197, !1205, !1209, !1213, !1217, !1218, !1222, !1223, !1227, !1231, !1245}
!1106 = !DIGlobalVariable(name: "initialized", scope: !0, file: !608, line: 292, type: !273, isLocal: true, isDefinition: true, variable: i32* @initialized)
!1107 = !DIGlobalVariable(name: "StructTimeType", scope: !0, file: !608, line: 293, type: !1108, isLocal: true, isDefinition: true, variable: %struct._typeobject* @StructTimeType)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !236, line: 422, baseType: !249)
!1109 = !DIGlobalVariable(name: "timemodule", scope: !0, file: !608, line: 1486, type: !1110, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @timemodule)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !1111, line: 47, size: 832, align: 64, elements: !1112)
!1111 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!1112 = !{!1113, !1122, !1123, !1124, !1125, !1128, !1129, !1130, !1131}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !1110, file: !1111, line: 48, baseType: !1114, size: 320, align: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !1111, line: 38, baseType: !1115)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !1111, line: 33, size: 320, align: 64, elements: !1116)
!1116 = !{!1117, !1118, !1120, !1121}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !1115, file: !1111, line: 34, baseType: !235, size: 128, align: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !1115, file: !1111, line: 35, baseType: !1119, size: 64, align: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !1115, file: !1111, line: 36, baseType: !240, size: 64, align: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !1115, file: !1111, line: 37, baseType: !234, size: 64, align: 64, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !1110, file: !1111, line: 49, baseType: !258, size: 64, align: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !1110, file: !1111, line: 50, baseType: !258, size: 64, align: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !1110, file: !1111, line: 51, baseType: !240, size: 64, align: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !1110, file: !1111, line: 52, baseType: !1126, size: 64, align: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64, align: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !510, line: 47, baseType: !509)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !1110, file: !1111, line: 53, baseType: !371, size: 64, align: 64, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !1110, file: !1111, line: 54, baseType: !488, size: 64, align: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !1110, file: !1111, line: 55, baseType: !371, size: 64, align: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !1110, file: !1111, line: 56, baseType: !558, size: 64, align: 64, offset: 768)
!1132 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !608, line: 1439, type: !1133, isLocal: true, isDefinition: true, variable: [1812 x i8]* @module_doc)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 14496, align: 8, elements: !1134)
!1134 = !{!1135}
!1135 = !DISubrange(count: 1812)
!1136 = !DIGlobalVariable(name: "time_methods", scope: !0, file: !608, line: 1404, type: !1137, isLocal: true, isDefinition: true, variable: [19 x %struct.PyMethodDef]* @time_methods)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1127, size: 4864, align: 64, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 19)
!1140 = !DIGlobalVariable(name: "time_doc", scope: !0, file: !608, line: 58, type: !1141, isLocal: true, isDefinition: true, variable: [157 x i8]* @time_doc)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1256, align: 8, elements: !1142)
!1142 = !{!1143}
!1143 = !DISubrange(count: 157)
!1144 = !DIGlobalVariable(name: "clock_doc", scope: !0, file: !608, line: 151, type: !1145, isLocal: true, isDefinition: true, variable: [185 x i8]* @clock_doc)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1480, align: 8, elements: !1146)
!1146 = !{!1147}
!1147 = !DISubrange(count: 185)
!1148 = !DIGlobalVariable(name: "clock_gettime_doc", scope: !0, file: !608, line: 178, type: !1149, isLocal: true, isDefinition: true, variable: [95 x i8]* @clock_gettime_doc)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 760, align: 8, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 95)
!1152 = !DIGlobalVariable(name: "clock_settime_doc", scope: !0, file: !608, line: 209, type: !1153, isLocal: true, isDefinition: true, variable: [73 x i8]* @clock_settime_doc)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 584, align: 8, elements: !1154)
!1154 = !{!1155}
!1155 = !DISubrange(count: 73)
!1156 = !DIGlobalVariable(name: "clock_getres_doc", scope: !0, file: !608, line: 233, type: !1157, isLocal: true, isDefinition: true, variable: [112 x i8]* @clock_getres_doc)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 896, align: 8, elements: !1158)
!1158 = !{!1159}
!1159 = !DISubrange(count: 112)
!1160 = !DIGlobalVariable(name: "sleep_doc", scope: !0, file: !608, line: 256, type: !1161, isLocal: true, isDefinition: true, variable: [133 x i8]* @sleep_doc)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1064, align: 8, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 133)
!1164 = !DIGlobalVariable(name: "gmtime_doc", scope: !0, file: !608, line: 373, type: !1165, isLocal: true, isDefinition: true, variable: [362 x i8]* @gmtime_doc)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2896, align: 8, elements: !1166)
!1166 = !{!1167}
!1167 = !DISubrange(count: 362)
!1168 = !DIGlobalVariable(name: "localtime_doc", scope: !0, file: !608, line: 416, type: !1169, isLocal: true, isDefinition: true, variable: [262 x i8]* @localtime_doc)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2096, align: 8, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 262)
!1172 = !DIGlobalVariable(name: "wday_name", scope: !838, file: !608, line: 758, type: !1173, isLocal: true, isDefinition: true, variable: [7 x [4 x i8]]* @_asctime.wday_name)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 224, align: 8, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DISubrange(count: 7)
!1176 = !DISubrange(count: 4)
!1177 = !DIGlobalVariable(name: "mon_name", scope: !838, file: !608, line: 761, type: !1178, isLocal: true, isDefinition: true, variable: [12 x [4 x i8]]* @_asctime.mon_name)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, align: 8, elements: !1179)
!1179 = !{!1180, !1176}
!1180 = !DISubrange(count: 12)
!1181 = !DIGlobalVariable(name: "asctime_doc", scope: !0, file: !608, line: 792, type: !1182, isLocal: true, isDefinition: true, variable: [180 x i8]* @asctime_doc)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1440, align: 8, elements: !1183)
!1183 = !{!1184}
!1184 = !DISubrange(count: 180)
!1185 = !DIGlobalVariable(name: "ctime_doc", scope: !0, file: !608, line: 811, type: !1186, isLocal: true, isDefinition: true, variable: [231 x i8]* @ctime_doc)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1848, align: 8, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 231)
!1189 = !DIGlobalVariable(name: "mktime_doc", scope: !0, file: !608, line: 858, type: !1190, isLocal: true, isDefinition: true, variable: [297 x i8]* @mktime_doc)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2376, align: 8, elements: !1191)
!1191 = !{!1192}
!1192 = !DISubrange(count: 297)
!1193 = !DIGlobalVariable(name: "strftime_doc", scope: !0, file: !608, line: 720, type: !1194, isLocal: true, isDefinition: true, variable: [970 x i8]* @strftime_doc)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 7760, align: 8, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 970)
!1197 = !DIGlobalVariable(name: "PyId__strptime_time", scope: !872, file: !608, line: 734, type: !1198, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @time_strptime.PyId__strptime_time)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !236, line: 144, baseType: !1199)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !236, line: 140, size: 192, align: 64, elements: !1200)
!1200 = !{!1201, !1203, !1204}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1199, file: !236, line: 141, baseType: !1202, size: 64, align: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64, align: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1199, file: !236, line: 142, baseType: !258, size: 64, align: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1199, file: !236, line: 143, baseType: !234, size: 64, align: 64, offset: 128)
!1205 = !DIGlobalVariable(name: "strptime_doc", scope: !0, file: !608, line: 745, type: !1206, isLocal: true, isDefinition: true, variable: [908 x i8]* @strptime_doc)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 7264, align: 8, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 908)
!1209 = !DIGlobalVariable(name: "tzset_doc", scope: !0, file: !608, line: 892, type: !1210, isLocal: true, isDefinition: true, variable: [589 x i8]* @tzset_doc)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 4712, align: 8, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 589)
!1213 = !DIGlobalVariable(name: "monotonic_doc", scope: !0, file: !608, line: 1030, type: !1214, isLocal: true, isDefinition: true, variable: [59 x i8]* @monotonic_doc)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 472, align: 8, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 59)
!1217 = !DIGlobalVariable(name: "ticks_per_second", scope: !905, file: !608, line: 1116, type: !246, isLocal: true, isDefinition: true, variable: i64* @py_process_time.ticks_per_second)
!1218 = !DIGlobalVariable(name: "process_time_doc", scope: !0, file: !608, line: 1200, type: !1219, isLocal: true, isDefinition: true, variable: [96 x i8]* @process_time_doc)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 768, align: 8, elements: !1220)
!1220 = !{!1221}
!1221 = !DISubrange(count: 96)
!1222 = !DIGlobalVariable(name: "use_monotonic", scope: !1009, file: !608, line: 1046, type: !273, isLocal: true, isDefinition: true, variable: i32* @perf_counter.use_monotonic)
!1223 = !DIGlobalVariable(name: "perf_counter_doc", scope: !0, file: !608, line: 1076, type: !1224, isLocal: true, isDefinition: true, variable: [63 x i8]* @perf_counter_doc)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 504, align: 8, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 63)
!1227 = !DIGlobalVariable(name: "get_clock_info_doc", scope: !0, file: !608, line: 1297, type: !1228, isLocal: true, isDefinition: true, variable: [75 x i8]* @get_clock_info_doc)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 600, align: 8, elements: !1229)
!1229 = !{!1230}
!1230 = !DISubrange(count: 75)
!1231 = !DIGlobalVariable(name: "struct_time_type_desc", scope: !0, file: !608, line: 279, type: !1232, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @struct_time_type_desc)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !1233, line: 20, baseType: !1234)
!1233 = !DIFile(filename: "./Include/structseq.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !1233, line: 15, size: 256, align: 64, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1244}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1234, file: !1233, line: 16, baseType: !281, size: 64, align: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !1234, file: !1233, line: 17, baseType: !281, size: 64, align: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !1234, file: !1233, line: 18, baseType: !1239, size: 64, align: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64, align: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !1233, line: 10, size: 128, align: 64, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1240, file: !1233, line: 11, baseType: !281, size: 64, align: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !1240, file: !1233, line: 12, baseType: !281, size: 64, align: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !1234, file: !1233, line: 19, baseType: !273, size: 32, align: 32, offset: 192)
!1245 = !DIGlobalVariable(name: "struct_time_type_fields", scope: !0, file: !608, line: 262, type: !1246, isLocal: true, isDefinition: true, variable: [12 x %struct.PyStructSequence_Field]* @struct_time_type_fields)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1247, size: 1536, align: 64, elements: !1248)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !1233, line: 13, baseType: !1240)
!1248 = !{!1180}
!1249 = !{i32 2, !"Dwarf Version", i32 4}
!1250 = !{i32 2, !"Debug Info Version", i32 3}
!1251 = !{i32 1, !"PIC Level", i32 2}
!1252 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1253 = !DILocation(line: 1501, column: 5, scope: !607)
!1254 = !DIExpression()
!1255 = !DILocation(line: 1501, column: 15, scope: !607)
!1256 = !DILocation(line: 1502, column: 9, scope: !607)
!1257 = !DILocation(line: 1502, column: 7, scope: !607)
!1258 = !{!1259, !1259, i64 0}
!1259 = !{!"any pointer", !1260, i64 0}
!1260 = !{!"omnipotent char", !1261, i64 0}
!1261 = !{!"Simple C/C++ TBAA"}
!1262 = !DILocation(line: 1503, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !607, file: !608, line: 1503, column: 9)
!1264 = !DILocation(line: 1503, column: 11, scope: !1263)
!1265 = !DILocation(line: 1503, column: 9, scope: !607)
!1266 = !DILocation(line: 1504, column: 9, scope: !1263)
!1267 = !DILocation(line: 1507, column: 21, scope: !607)
!1268 = !DILocation(line: 1507, column: 5, scope: !607)
!1269 = !DILocation(line: 1509, column: 10, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !607, file: !608, line: 1509, column: 9)
!1271 = !{!1272, !1272, i64 0}
!1272 = !{!"int", !1260, i64 0}
!1273 = !DILocation(line: 1509, column: 9, scope: !607)
!1274 = !DILocation(line: 1510, column: 13, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !608, line: 1510, column: 13)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !608, line: 1509, column: 23)
!1277 = !DILocation(line: 1511, column: 64, scope: !1275)
!1278 = !DILocation(line: 1510, column: 13, scope: !1276)
!1279 = !DILocation(line: 1512, column: 13, scope: !1275)
!1280 = !DILocation(line: 1522, column: 5, scope: !1276)
!1281 = !DILocation(line: 1523, column: 49, scope: !607)
!1282 = !{!1283, !1284, i64 0}
!1283 = !{!"_object", !1284, i64 0, !1259, i64 8}
!1284 = !{!"long", !1260, i64 0}
!1285 = !DILocation(line: 1525, column: 29, scope: !607)
!1286 = !DILocation(line: 1525, column: 5, scope: !607)
!1287 = !DILocation(line: 1529, column: 24, scope: !607)
!1288 = !DILocation(line: 1529, column: 5, scope: !607)
!1289 = !DILocation(line: 1530, column: 17, scope: !607)
!1290 = !DILocation(line: 1531, column: 12, scope: !607)
!1291 = !DILocation(line: 1531, column: 5, scope: !607)
!1292 = !DILocation(line: 1532, column: 1, scope: !607)
!1293 = !DILocation(line: 1303, column: 27, scope: !1092)
!1294 = !DILocation(line: 1337, column: 9, scope: !1096)
!1295 = !DILocation(line: 1337, column: 16, scope: !1096)
!1296 = !DILocation(line: 1338, column: 9, scope: !1096)
!1297 = !DILocation(line: 1338, column: 20, scope: !1096)
!1298 = !DILocation(line: 1339, column: 9, scope: !1096)
!1299 = !DILocation(line: 1339, column: 14, scope: !1096)
!1300 = !DILocation(line: 1339, column: 23, scope: !1096)
!1301 = !DILocation(line: 1340, column: 9, scope: !1096)
!1302 = !DILocation(line: 1340, column: 14, scope: !1096)
!1303 = !DILocation(line: 1340, column: 27, scope: !1096)
!1304 = !DILocation(line: 1341, column: 14, scope: !1096)
!1305 = !DILocation(line: 1341, column: 32, scope: !1096)
!1306 = !DILocation(line: 1341, column: 69, scope: !1096)
!1307 = !DILocation(line: 1341, column: 11, scope: !1096)
!1308 = !{!1284, !1284, i64 0}
!1309 = !DILocation(line: 1342, column: 13, scope: !1096)
!1310 = !DILocation(line: 1342, column: 11, scope: !1096)
!1311 = !DILocation(line: 1343, column: 20, scope: !1096)
!1312 = !DILocation(line: 1343, column: 23, scope: !1096)
!1313 = !{!1314, !1284, i64 40}
!1314 = !{!"tm", !1272, i64 0, !1272, i64 4, !1272, i64 8, !1272, i64 12, !1272, i64 16, !1272, i64 20, !1272, i64 24, !1272, i64 28, !1272, i64 32, !1284, i64 40, !1259, i64 48}
!1315 = !DILocation(line: 1343, column: 19, scope: !1096)
!1316 = !DILocation(line: 1343, column: 17, scope: !1096)
!1317 = !DILocation(line: 1344, column: 28, scope: !1096)
!1318 = !DILocation(line: 1344, column: 37, scope: !1096)
!1319 = !DILocation(line: 1344, column: 40, scope: !1096)
!1320 = !{!1314, !1259, i64 48}
!1321 = !DILocation(line: 1344, column: 50, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1096, file: !608, discriminator: 1)
!1323 = !DILocation(line: 1344, column: 53, scope: !1096)
!1324 = !DILocation(line: 1344, column: 37, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1096, file: !608, discriminator: 2)
!1326 = !DILocation(line: 1344, column: 9, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !608, discriminator: 4)
!1328 = !DILexicalBlockFile(scope: !1096, file: !608, discriminator: 3)
!1329 = !DILocation(line: 1345, column: 9, scope: !1096)
!1330 = !DILocation(line: 1345, column: 20, scope: !1096)
!1331 = !{!1260, !1260, i64 0}
!1332 = !DILocation(line: 1346, column: 11, scope: !1096)
!1333 = !DILocation(line: 1347, column: 13, scope: !1096)
!1334 = !DILocation(line: 1347, column: 11, scope: !1096)
!1335 = !DILocation(line: 1348, column: 21, scope: !1096)
!1336 = !DILocation(line: 1348, column: 24, scope: !1096)
!1337 = !DILocation(line: 1348, column: 20, scope: !1096)
!1338 = !DILocation(line: 1348, column: 18, scope: !1096)
!1339 = !DILocation(line: 1349, column: 28, scope: !1096)
!1340 = !DILocation(line: 1349, column: 38, scope: !1096)
!1341 = !DILocation(line: 1349, column: 41, scope: !1096)
!1342 = !DILocation(line: 1349, column: 51, scope: !1322)
!1343 = !DILocation(line: 1349, column: 54, scope: !1096)
!1344 = !DILocation(line: 1349, column: 38, scope: !1325)
!1345 = !DILocation(line: 1349, column: 9, scope: !1327)
!1346 = !DILocation(line: 1350, column: 9, scope: !1096)
!1347 = !DILocation(line: 1350, column: 21, scope: !1096)
!1348 = !DILocation(line: 1352, column: 13, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1096, file: !608, line: 1352, column: 13)
!1350 = !DILocation(line: 1352, column: 23, scope: !1349)
!1351 = !DILocation(line: 1352, column: 21, scope: !1349)
!1352 = !DILocation(line: 1352, column: 13, scope: !1096)
!1353 = !DILocation(line: 1354, column: 37, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !608, line: 1352, column: 34)
!1355 = !DILocation(line: 1354, column: 52, scope: !1354)
!1356 = !DILocation(line: 1354, column: 13, scope: !1354)
!1357 = !DILocation(line: 1355, column: 37, scope: !1354)
!1358 = !DILocation(line: 1355, column: 51, scope: !1354)
!1359 = !DILocation(line: 1355, column: 13, scope: !1354)
!1360 = !DILocation(line: 1356, column: 37, scope: !1354)
!1361 = !DILocation(line: 1357, column: 37, scope: !1354)
!1362 = !DILocation(line: 1357, column: 48, scope: !1354)
!1363 = !DILocation(line: 1357, column: 45, scope: !1354)
!1364 = !DILocation(line: 1356, column: 13, scope: !1354)
!1365 = !DILocation(line: 1358, column: 32, scope: !1354)
!1366 = !DILocation(line: 1360, column: 46, scope: !1354)
!1367 = !DILocation(line: 1360, column: 56, scope: !1354)
!1368 = !DILocation(line: 1359, column: 32, scope: !1354)
!1369 = !DILocation(line: 1358, column: 13, scope: !1354)
!1370 = !DILocation(line: 1361, column: 9, scope: !1354)
!1371 = !DILocation(line: 1362, column: 37, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1349, file: !608, line: 1361, column: 16)
!1373 = !DILocation(line: 1362, column: 52, scope: !1372)
!1374 = !DILocation(line: 1362, column: 13, scope: !1372)
!1375 = !DILocation(line: 1363, column: 37, scope: !1372)
!1376 = !DILocation(line: 1363, column: 51, scope: !1372)
!1377 = !DILocation(line: 1363, column: 13, scope: !1372)
!1378 = !DILocation(line: 1364, column: 37, scope: !1372)
!1379 = !DILocation(line: 1365, column: 37, scope: !1372)
!1380 = !DILocation(line: 1365, column: 48, scope: !1372)
!1381 = !DILocation(line: 1365, column: 45, scope: !1372)
!1382 = !DILocation(line: 1364, column: 13, scope: !1372)
!1383 = !DILocation(line: 1366, column: 32, scope: !1372)
!1384 = !DILocation(line: 1368, column: 46, scope: !1372)
!1385 = !DILocation(line: 1368, column: 55, scope: !1372)
!1386 = !DILocation(line: 1367, column: 32, scope: !1372)
!1387 = !DILocation(line: 1366, column: 13, scope: !1372)
!1388 = !DILocation(line: 1370, column: 5, scope: !1092)
!1389 = !DILocation(line: 1384, column: 29, scope: !1092)
!1390 = !DILocation(line: 1384, column: 5, scope: !1092)
!1391 = !DILocation(line: 1386, column: 29, scope: !1092)
!1392 = !DILocation(line: 1386, column: 5, scope: !1092)
!1393 = !DILocation(line: 1389, column: 29, scope: !1092)
!1394 = !DILocation(line: 1389, column: 5, scope: !1092)
!1395 = !DILocation(line: 1395, column: 29, scope: !1092)
!1396 = !DILocation(line: 1395, column: 5, scope: !1092)
!1397 = !DILocation(line: 1398, column: 29, scope: !1092)
!1398 = !DILocation(line: 1398, column: 5, scope: !1092)
!1399 = !DILocation(line: 1401, column: 1, scope: !1092)
!1400 = !DILocation(line: 53, column: 21, scope: !613)
!1401 = !DILocation(line: 53, column: 37, scope: !613)
!1402 = !DILocation(line: 55, column: 12, scope: !613)
!1403 = !DILocation(line: 55, column: 5, scope: !613)
!1404 = !DILocation(line: 146, column: 22, scope: !650)
!1405 = !DILocation(line: 146, column: 38, scope: !650)
!1406 = !DILocation(line: 148, column: 12, scope: !650)
!1407 = !DILocation(line: 148, column: 5, scope: !650)
!1408 = !DILocation(line: 161, column: 30, scope: !661)
!1409 = !DILocation(line: 161, column: 46, scope: !661)
!1410 = !DILocation(line: 163, column: 5, scope: !661)
!1411 = !DILocation(line: 163, column: 9, scope: !661)
!1412 = !DILocation(line: 164, column: 5, scope: !661)
!1413 = !DILocation(line: 164, column: 9, scope: !661)
!1414 = !DILocation(line: 165, column: 5, scope: !661)
!1415 = !DILocation(line: 165, column: 21, scope: !661)
!1416 = !DILocation(line: 167, column: 27, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !661, file: !608, line: 167, column: 9)
!1418 = !DILocation(line: 167, column: 10, scope: !1417)
!1419 = !DILocation(line: 167, column: 9, scope: !661)
!1420 = !DILocation(line: 168, column: 9, scope: !1417)
!1421 = !DILocation(line: 170, column: 36, scope: !661)
!1422 = !DILocation(line: 170, column: 11, scope: !661)
!1423 = !DILocation(line: 170, column: 9, scope: !661)
!1424 = !DILocation(line: 171, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !661, file: !608, line: 171, column: 9)
!1426 = !DILocation(line: 171, column: 13, scope: !1425)
!1427 = !DILocation(line: 171, column: 9, scope: !661)
!1428 = !DILocation(line: 172, column: 28, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !608, line: 171, column: 19)
!1430 = !DILocation(line: 172, column: 9, scope: !1429)
!1431 = !DILocation(line: 173, column: 9, scope: !1429)
!1432 = !DILocation(line: 175, column: 34, scope: !661)
!1433 = !{!1434, !1284, i64 0}
!1434 = !{!"timespec", !1284, i64 0, !1284, i64 8}
!1435 = !DILocation(line: 175, column: 31, scope: !661)
!1436 = !DILocation(line: 175, column: 46, scope: !661)
!1437 = !{!1434, !1284, i64 8}
!1438 = !DILocation(line: 175, column: 43, scope: !661)
!1439 = !DILocation(line: 175, column: 54, scope: !661)
!1440 = !DILocation(line: 175, column: 41, scope: !661)
!1441 = !DILocation(line: 175, column: 12, scope: !661)
!1442 = !DILocation(line: 175, column: 5, scope: !661)
!1443 = !DILocation(line: 176, column: 1, scope: !661)
!1444 = !DILocation(line: 184, column: 30, scope: !668)
!1445 = !DILocation(line: 184, column: 46, scope: !668)
!1446 = !DILocation(line: 186, column: 5, scope: !668)
!1447 = !DILocation(line: 186, column: 9, scope: !668)
!1448 = !DILocation(line: 187, column: 5, scope: !668)
!1449 = !DILocation(line: 187, column: 15, scope: !668)
!1450 = !DILocation(line: 188, column: 5, scope: !668)
!1451 = !DILocation(line: 188, column: 12, scope: !668)
!1452 = !DILocation(line: 189, column: 5, scope: !668)
!1453 = !DILocation(line: 189, column: 10, scope: !668)
!1454 = !DILocation(line: 190, column: 5, scope: !668)
!1455 = !DILocation(line: 190, column: 21, scope: !668)
!1456 = !DILocation(line: 191, column: 5, scope: !668)
!1457 = !DILocation(line: 191, column: 9, scope: !668)
!1458 = !DILocation(line: 193, column: 27, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !668, file: !608, line: 193, column: 9)
!1460 = !DILocation(line: 193, column: 10, scope: !1459)
!1461 = !DILocation(line: 193, column: 9, scope: !668)
!1462 = !DILocation(line: 194, column: 9, scope: !1459)
!1463 = !DILocation(line: 196, column: 34, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !668, file: !608, line: 196, column: 9)
!1465 = !DILocation(line: 196, column: 9, scope: !1464)
!1466 = !DILocation(line: 196, column: 78, scope: !1464)
!1467 = !DILocation(line: 196, column: 9, scope: !668)
!1468 = !DILocation(line: 197, column: 9, scope: !1464)
!1469 = !DILocation(line: 198, column: 17, scope: !668)
!1470 = !DILocation(line: 198, column: 8, scope: !668)
!1471 = !DILocation(line: 198, column: 15, scope: !668)
!1472 = !DILocation(line: 199, column: 18, scope: !668)
!1473 = !DILocation(line: 199, column: 8, scope: !668)
!1474 = !DILocation(line: 199, column: 16, scope: !668)
!1475 = !DILocation(line: 201, column: 36, scope: !668)
!1476 = !DILocation(line: 201, column: 11, scope: !668)
!1477 = !DILocation(line: 201, column: 9, scope: !668)
!1478 = !DILocation(line: 202, column: 9, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !668, file: !608, line: 202, column: 9)
!1480 = !DILocation(line: 202, column: 13, scope: !1479)
!1481 = !DILocation(line: 202, column: 9, scope: !668)
!1482 = !DILocation(line: 203, column: 28, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !608, line: 202, column: 19)
!1484 = !DILocation(line: 203, column: 9, scope: !1483)
!1485 = !DILocation(line: 204, column: 9, scope: !1483)
!1486 = !DILocation(line: 206, column: 58, scope: !668)
!1487 = !DILocation(line: 206, column: 5, scope: !668)
!1488 = !DILocation(line: 207, column: 1, scope: !668)
!1489 = !DILocation(line: 215, column: 29, scope: !678)
!1490 = !DILocation(line: 215, column: 45, scope: !678)
!1491 = !DILocation(line: 217, column: 5, scope: !678)
!1492 = !DILocation(line: 217, column: 9, scope: !678)
!1493 = !DILocation(line: 218, column: 5, scope: !678)
!1494 = !DILocation(line: 218, column: 9, scope: !678)
!1495 = !DILocation(line: 219, column: 5, scope: !678)
!1496 = !DILocation(line: 219, column: 21, scope: !678)
!1497 = !DILocation(line: 221, column: 27, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !678, file: !608, line: 221, column: 9)
!1499 = !DILocation(line: 221, column: 10, scope: !1498)
!1500 = !DILocation(line: 221, column: 9, scope: !678)
!1501 = !DILocation(line: 222, column: 9, scope: !1498)
!1502 = !DILocation(line: 224, column: 35, scope: !678)
!1503 = !DILocation(line: 224, column: 11, scope: !678)
!1504 = !DILocation(line: 224, column: 9, scope: !678)
!1505 = !DILocation(line: 225, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !678, file: !608, line: 225, column: 9)
!1507 = !DILocation(line: 225, column: 13, scope: !1506)
!1508 = !DILocation(line: 225, column: 9, scope: !678)
!1509 = !DILocation(line: 226, column: 28, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !608, line: 225, column: 19)
!1511 = !DILocation(line: 226, column: 9, scope: !1510)
!1512 = !DILocation(line: 227, column: 9, scope: !1510)
!1513 = !DILocation(line: 230, column: 34, scope: !678)
!1514 = !DILocation(line: 230, column: 31, scope: !678)
!1515 = !DILocation(line: 230, column: 46, scope: !678)
!1516 = !DILocation(line: 230, column: 43, scope: !678)
!1517 = !DILocation(line: 230, column: 54, scope: !678)
!1518 = !DILocation(line: 230, column: 41, scope: !678)
!1519 = !DILocation(line: 230, column: 12, scope: !678)
!1520 = !DILocation(line: 230, column: 5, scope: !678)
!1521 = !DILocation(line: 231, column: 1, scope: !678)
!1522 = !DILocation(line: 240, column: 22, scope: !685)
!1523 = !DILocation(line: 240, column: 38, scope: !685)
!1524 = !DILocation(line: 242, column: 5, scope: !685)
!1525 = !DILocation(line: 242, column: 12, scope: !685)
!1526 = !DILocation(line: 243, column: 27, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !685, file: !608, line: 243, column: 9)
!1528 = !DILocation(line: 243, column: 10, scope: !1527)
!1529 = !DILocation(line: 243, column: 9, scope: !685)
!1530 = !DILocation(line: 244, column: 9, scope: !1527)
!1531 = !DILocation(line: 245, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !685, file: !608, line: 245, column: 9)
!1533 = !{!1534, !1534, i64 0}
!1534 = !{!"double", !1260, i64 0}
!1535 = !DILocation(line: 245, column: 14, scope: !1532)
!1536 = !DILocation(line: 245, column: 9, scope: !685)
!1537 = !DILocation(line: 246, column: 25, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1532, file: !608, line: 245, column: 19)
!1539 = !DILocation(line: 246, column: 9, scope: !1538)
!1540 = !DILocation(line: 248, column: 9, scope: !1538)
!1541 = !DILocation(line: 250, column: 20, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !685, file: !608, line: 250, column: 9)
!1543 = !DILocation(line: 250, column: 9, scope: !1542)
!1544 = !DILocation(line: 250, column: 26, scope: !1542)
!1545 = !DILocation(line: 250, column: 9, scope: !685)
!1546 = !DILocation(line: 251, column: 9, scope: !1542)
!1547 = !DILocation(line: 252, column: 51, scope: !685)
!1548 = !DILocation(line: 253, column: 5, scope: !685)
!1549 = !DILocation(line: 254, column: 1, scope: !685)
!1550 = !DILocation(line: 352, column: 23, scope: !758)
!1551 = !DILocation(line: 352, column: 39, scope: !758)
!1552 = !DILocation(line: 354, column: 5, scope: !758)
!1553 = !DILocation(line: 354, column: 12, scope: !758)
!1554 = !DILocation(line: 355, column: 5, scope: !758)
!1555 = !DILocation(line: 355, column: 15, scope: !758)
!1556 = !DILocation(line: 355, column: 21, scope: !758)
!1557 = !DILocation(line: 357, column: 28, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !758, file: !608, line: 357, column: 9)
!1559 = !DILocation(line: 357, column: 10, scope: !1558)
!1560 = !DILocation(line: 357, column: 9, scope: !758)
!1561 = !DILocation(line: 358, column: 9, scope: !1558)
!1562 = !DILocation(line: 360, column: 7, scope: !758)
!1563 = !DILocation(line: 360, column: 28, scope: !758)
!1564 = !DILocation(line: 361, column: 13, scope: !758)
!1565 = !DILocation(line: 361, column: 11, scope: !758)
!1566 = !DILocation(line: 362, column: 9, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !758, file: !608, line: 362, column: 9)
!1568 = !DILocation(line: 362, column: 15, scope: !1567)
!1569 = !DILocation(line: 362, column: 9, scope: !758)
!1570 = !DILocation(line: 364, column: 15, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !608, line: 364, column: 13)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !608, line: 362, column: 30)
!1573 = !DILocation(line: 364, column: 14, scope: !1571)
!1574 = !DILocation(line: 364, column: 36, scope: !1571)
!1575 = !DILocation(line: 364, column: 13, scope: !1572)
!1576 = !DILocation(line: 365, column: 15, scope: !1571)
!1577 = !DILocation(line: 365, column: 36, scope: !1571)
!1578 = !DILocation(line: 365, column: 13, scope: !1571)
!1579 = !DILocation(line: 367, column: 35, scope: !1572)
!1580 = !DILocation(line: 367, column: 16, scope: !1572)
!1581 = !DILocation(line: 367, column: 9, scope: !1572)
!1582 = !DILocation(line: 369, column: 12, scope: !758)
!1583 = !DILocation(line: 369, column: 11, scope: !758)
!1584 = !{i64 0, i64 4, !1271, i64 4, i64 4, !1271, i64 8, i64 4, !1271, i64 12, i64 4, !1271, i64 16, i64 4, !1271, i64 20, i64 4, !1271, i64 24, i64 4, !1271, i64 28, i64 4, !1271, i64 32, i64 4, !1271, i64 40, i64 8, !1308, i64 48, i64 8, !1258}
!1585 = !DILocation(line: 370, column: 12, scope: !758)
!1586 = !DILocation(line: 370, column: 5, scope: !758)
!1587 = !DILocation(line: 371, column: 1, scope: !758)
!1588 = !DILocation(line: 404, column: 26, scope: !801)
!1589 = !DILocation(line: 404, column: 42, scope: !801)
!1590 = !DILocation(line: 406, column: 5, scope: !801)
!1591 = !DILocation(line: 406, column: 12, scope: !801)
!1592 = !DILocation(line: 407, column: 5, scope: !801)
!1593 = !DILocation(line: 407, column: 15, scope: !801)
!1594 = !DILocation(line: 409, column: 28, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !801, file: !608, line: 409, column: 9)
!1596 = !DILocation(line: 409, column: 10, scope: !1595)
!1597 = !DILocation(line: 409, column: 9, scope: !801)
!1598 = !DILocation(line: 410, column: 9, scope: !1595)
!1599 = !DILocation(line: 411, column: 9, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !801, file: !608, line: 411, column: 9)
!1601 = !DILocation(line: 411, column: 34, scope: !1600)
!1602 = !DILocation(line: 411, column: 9, scope: !801)
!1603 = !DILocation(line: 412, column: 9, scope: !1600)
!1604 = !DILocation(line: 413, column: 12, scope: !801)
!1605 = !DILocation(line: 413, column: 5, scope: !801)
!1606 = !DILocation(line: 414, column: 1, scope: !801)
!1607 = !DILocation(line: 775, column: 24, scope: !814)
!1608 = !DILocation(line: 775, column: 40, scope: !814)
!1609 = !DILocation(line: 777, column: 5, scope: !814)
!1610 = !DILocation(line: 777, column: 15, scope: !814)
!1611 = !DILocation(line: 778, column: 5, scope: !814)
!1612 = !DILocation(line: 778, column: 15, scope: !814)
!1613 = !DILocation(line: 780, column: 28, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !814, file: !608, line: 780, column: 9)
!1615 = !DILocation(line: 780, column: 10, scope: !1614)
!1616 = !DILocation(line: 780, column: 9, scope: !814)
!1617 = !DILocation(line: 781, column: 9, scope: !1614)
!1618 = !DILocation(line: 782, column: 9, scope: !822)
!1619 = !DILocation(line: 782, column: 13, scope: !822)
!1620 = !DILocation(line: 782, column: 9, scope: !814)
!1621 = !DILocation(line: 783, column: 9, scope: !821)
!1622 = !DILocation(line: 783, column: 16, scope: !821)
!1623 = !DILocation(line: 783, column: 21, scope: !821)
!1624 = !DILocation(line: 784, column: 13, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !821, file: !608, line: 784, column: 13)
!1626 = !DILocation(line: 784, column: 36, scope: !1625)
!1627 = !DILocation(line: 784, column: 13, scope: !821)
!1628 = !DILocation(line: 785, column: 13, scope: !1625)
!1629 = !DILocation(line: 787, column: 5, scope: !822)
!1630 = !DILocation(line: 787, column: 5, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !822, file: !608, discriminator: 1)
!1632 = !DILocation(line: 787, column: 5, scope: !821)
!1633 = !DILocation(line: 787, column: 26, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !822, file: !608, line: 787, column: 16)
!1635 = !DILocation(line: 787, column: 17, scope: !1634)
!1636 = !DILocation(line: 787, column: 37, scope: !1634)
!1637 = !DILocation(line: 787, column: 41, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1634, file: !608, discriminator: 2)
!1639 = !DILocation(line: 787, column: 16, scope: !822)
!1640 = !DILocation(line: 788, column: 9, scope: !1634)
!1641 = !DILocation(line: 789, column: 12, scope: !814)
!1642 = !DILocation(line: 789, column: 5, scope: !814)
!1643 = !DILocation(line: 790, column: 1, scope: !814)
!1644 = !DILocation(line: 800, column: 22, scope: !841)
!1645 = !DILocation(line: 800, column: 38, scope: !841)
!1646 = !DILocation(line: 802, column: 5, scope: !841)
!1647 = !DILocation(line: 802, column: 12, scope: !841)
!1648 = !DILocation(line: 803, column: 5, scope: !841)
!1649 = !DILocation(line: 803, column: 15, scope: !841)
!1650 = !DILocation(line: 804, column: 28, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !841, file: !608, line: 804, column: 9)
!1652 = !DILocation(line: 804, column: 10, scope: !1651)
!1653 = !DILocation(line: 804, column: 9, scope: !841)
!1654 = !DILocation(line: 805, column: 9, scope: !1651)
!1655 = !DILocation(line: 806, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !841, file: !608, line: 806, column: 9)
!1657 = !DILocation(line: 806, column: 32, scope: !1656)
!1658 = !DILocation(line: 806, column: 9, scope: !841)
!1659 = !DILocation(line: 807, column: 9, scope: !1656)
!1660 = !DILocation(line: 808, column: 12, scope: !841)
!1661 = !DILocation(line: 808, column: 5, scope: !841)
!1662 = !DILocation(line: 809, column: 1, scope: !841)
!1663 = !DILocation(line: 820, column: 23, scope: !847)
!1664 = !DILocation(line: 820, column: 39, scope: !847)
!1665 = !DILocation(line: 822, column: 5, scope: !847)
!1666 = !DILocation(line: 822, column: 15, scope: !847)
!1667 = !DILocation(line: 823, column: 5, scope: !847)
!1668 = !DILocation(line: 823, column: 12, scope: !847)
!1669 = !DILocation(line: 824, column: 19, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !847, file: !608, line: 824, column: 9)
!1671 = !DILocation(line: 824, column: 10, scope: !1670)
!1672 = !DILocation(line: 824, column: 9, scope: !847)
!1673 = !DILocation(line: 825, column: 9, scope: !1670)
!1674 = !DILocation(line: 836, column: 9, scope: !847)
!1675 = !DILocation(line: 836, column: 17, scope: !847)
!1676 = !{!1314, !1272, i64 24}
!1677 = !DILocation(line: 838, column: 10, scope: !847)
!1678 = !DILocation(line: 838, column: 8, scope: !847)
!1679 = !DILocation(line: 841, column: 9, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !847, file: !608, line: 841, column: 9)
!1681 = !DILocation(line: 841, column: 12, scope: !1680)
!1682 = !DILocation(line: 845, column: 9, scope: !1680)
!1683 = !DILocation(line: 845, column: 16, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1680, file: !608, discriminator: 1)
!1685 = !DILocation(line: 845, column: 24, scope: !1680)
!1686 = !DILocation(line: 841, column: 9, scope: !847)
!1687 = !DILocation(line: 851, column: 25, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !608, line: 850, column: 5)
!1689 = !DILocation(line: 851, column: 9, scope: !1688)
!1690 = !DILocation(line: 853, column: 9, scope: !1688)
!1691 = !DILocation(line: 855, column: 39, scope: !847)
!1692 = !DILocation(line: 855, column: 31, scope: !847)
!1693 = !DILocation(line: 855, column: 12, scope: !847)
!1694 = !DILocation(line: 855, column: 5, scope: !847)
!1695 = !DILocation(line: 856, column: 1, scope: !847)
!1696 = !DILocation(line: 569, column: 25, scope: !853)
!1697 = !DILocation(line: 569, column: 41, scope: !853)
!1698 = !DILocation(line: 571, column: 5, scope: !853)
!1699 = !DILocation(line: 571, column: 15, scope: !853)
!1700 = !DILocation(line: 572, column: 5, scope: !853)
!1701 = !DILocation(line: 572, column: 15, scope: !853)
!1702 = !DILocation(line: 573, column: 5, scope: !853)
!1703 = !DILocation(line: 573, column: 20, scope: !853)
!1704 = !DILocation(line: 575, column: 5, scope: !853)
!1705 = !DILocation(line: 575, column: 14, scope: !853)
!1706 = !DILocation(line: 579, column: 5, scope: !853)
!1707 = !DILocation(line: 579, column: 15, scope: !853)
!1708 = !DILocation(line: 580, column: 5, scope: !853)
!1709 = !DILocation(line: 580, column: 12, scope: !853)
!1710 = !DILocation(line: 580, column: 20, scope: !853)
!1711 = !DILocation(line: 581, column: 5, scope: !853)
!1712 = !DILocation(line: 581, column: 14, scope: !853)
!1713 = !DILocation(line: 582, column: 5, scope: !853)
!1714 = !DILocation(line: 582, column: 12, scope: !853)
!1715 = !DILocation(line: 583, column: 5, scope: !853)
!1716 = !DILocation(line: 583, column: 15, scope: !853)
!1717 = !DILocation(line: 585, column: 12, scope: !853)
!1718 = !DILocation(line: 585, column: 5, scope: !853)
!1719 = !DILocation(line: 590, column: 27, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !853, file: !608, line: 590, column: 9)
!1721 = !DILocation(line: 590, column: 10, scope: !1720)
!1722 = !DILocation(line: 590, column: 9, scope: !853)
!1723 = !DILocation(line: 591, column: 9, scope: !1720)
!1724 = !DILocation(line: 593, column: 9, scope: !871)
!1725 = !DILocation(line: 593, column: 13, scope: !871)
!1726 = !DILocation(line: 593, column: 9, scope: !853)
!1727 = !DILocation(line: 594, column: 9, scope: !870)
!1728 = !DILocation(line: 594, column: 16, scope: !870)
!1729 = !DILocation(line: 594, column: 21, scope: !870)
!1730 = !DILocation(line: 595, column: 13, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !870, file: !608, line: 595, column: 13)
!1732 = !DILocation(line: 595, column: 36, scope: !1731)
!1733 = !DILocation(line: 595, column: 13, scope: !870)
!1734 = !DILocation(line: 596, column: 13, scope: !1731)
!1735 = !DILocation(line: 597, column: 5, scope: !871)
!1736 = !DILocation(line: 597, column: 5, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !871, file: !608, discriminator: 1)
!1738 = !DILocation(line: 597, column: 5, scope: !870)
!1739 = !DILocation(line: 598, column: 24, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !871, file: !608, line: 598, column: 14)
!1741 = !DILocation(line: 598, column: 15, scope: !1740)
!1742 = !DILocation(line: 598, column: 35, scope: !1740)
!1743 = !DILocation(line: 598, column: 39, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1740, file: !608, discriminator: 1)
!1745 = !DILocation(line: 598, column: 14, scope: !871)
!1746 = !DILocation(line: 599, column: 9, scope: !1740)
!1747 = !DILocation(line: 612, column: 13, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !853, file: !608, line: 612, column: 9)
!1749 = !{!1314, !1272, i64 32}
!1750 = !DILocation(line: 612, column: 22, scope: !1748)
!1751 = !DILocation(line: 612, column: 9, scope: !853)
!1752 = !DILocation(line: 613, column: 13, scope: !1748)
!1753 = !DILocation(line: 613, column: 22, scope: !1748)
!1754 = !DILocation(line: 613, column: 9, scope: !1748)
!1755 = !DILocation(line: 614, column: 18, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1748, file: !608, line: 614, column: 14)
!1757 = !DILocation(line: 614, column: 27, scope: !1756)
!1758 = !DILocation(line: 614, column: 14, scope: !1748)
!1759 = !DILocation(line: 615, column: 13, scope: !1756)
!1760 = !DILocation(line: 615, column: 22, scope: !1756)
!1761 = !DILocation(line: 615, column: 9, scope: !1756)
!1762 = !DILocation(line: 618, column: 41, scope: !853)
!1763 = !DILocation(line: 618, column: 14, scope: !853)
!1764 = !DILocation(line: 618, column: 12, scope: !853)
!1765 = !DILocation(line: 619, column: 9, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !853, file: !608, line: 619, column: 9)
!1767 = !DILocation(line: 619, column: 16, scope: !1766)
!1768 = !DILocation(line: 619, column: 9, scope: !853)
!1769 = !DILocation(line: 620, column: 9, scope: !1766)
!1770 = !DILocation(line: 621, column: 11, scope: !853)
!1771 = !DILocation(line: 621, column: 9, scope: !853)
!1772 = !DILocation(line: 668, column: 21, scope: !853)
!1773 = !DILocation(line: 668, column: 14, scope: !853)
!1774 = !DILocation(line: 668, column: 12, scope: !853)
!1775 = !DILocation(line: 673, column: 12, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !853, file: !608, line: 673, column: 5)
!1777 = !DILocation(line: 673, column: 10, scope: !1776)
!1778 = !DILocation(line: 677, column: 42, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !608, line: 673, column: 30)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !608, line: 673, column: 5)
!1781 = !DILocation(line: 677, column: 43, scope: !1779)
!1782 = !DILocation(line: 677, column: 29, scope: !1779)
!1783 = !DILocation(line: 677, column: 18, scope: !1779)
!1784 = !DILocation(line: 677, column: 16, scope: !1779)
!1785 = !DILocation(line: 678, column: 13, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1779, file: !608, line: 678, column: 13)
!1787 = !DILocation(line: 678, column: 20, scope: !1786)
!1788 = !DILocation(line: 678, column: 13, scope: !1779)
!1789 = !DILocation(line: 679, column: 13, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !608, line: 678, column: 35)
!1791 = !DILocation(line: 680, column: 13, scope: !1790)
!1792 = !DILocation(line: 682, column: 27, scope: !1779)
!1793 = !DILocation(line: 682, column: 35, scope: !1779)
!1794 = !DILocation(line: 682, column: 38, scope: !1779)
!1795 = !DILocation(line: 682, column: 18, scope: !1779)
!1796 = !DILocation(line: 682, column: 16, scope: !1779)
!1797 = !DILocation(line: 686, column: 13, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1779, file: !608, line: 686, column: 13)
!1799 = !DILocation(line: 686, column: 20, scope: !1798)
!1800 = !DILocation(line: 686, column: 24, scope: !1798)
!1801 = !DILocation(line: 686, column: 27, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1798, file: !608, discriminator: 1)
!1803 = !DILocation(line: 686, column: 38, scope: !1798)
!1804 = !DILocation(line: 686, column: 36, scope: !1798)
!1805 = !DILocation(line: 686, column: 29, scope: !1798)
!1806 = !DILocation(line: 686, column: 13, scope: !1779)
!1807 = !DILocation(line: 693, column: 42, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1798, file: !608, line: 686, column: 46)
!1809 = !DILocation(line: 693, column: 50, scope: !1808)
!1810 = !DILocation(line: 693, column: 19, scope: !1808)
!1811 = !DILocation(line: 693, column: 17, scope: !1808)
!1812 = !DILocation(line: 698, column: 24, scope: !1808)
!1813 = !DILocation(line: 698, column: 13, scope: !1808)
!1814 = !DILocation(line: 699, column: 13, scope: !1808)
!1815 = !DILocation(line: 701, column: 20, scope: !1779)
!1816 = !DILocation(line: 701, column: 9, scope: !1779)
!1817 = !DILocation(line: 709, column: 5, scope: !1779)
!1818 = !DILocation(line: 673, column: 27, scope: !1780)
!1819 = !DILocation(line: 673, column: 24, scope: !1780)
!1820 = !DILocation(line: 673, column: 5, scope: !1780)
!1821 = !DILocation(line: 711, column: 16, scope: !853)
!1822 = !DILocation(line: 711, column: 5, scope: !853)
!1823 = !DILocation(line: 715, column: 12, scope: !853)
!1824 = !DILocation(line: 715, column: 5, scope: !853)
!1825 = !DILocation(line: 716, column: 1, scope: !853)
!1826 = !DILocation(line: 730, column: 25, scope: !872)
!1827 = !DILocation(line: 730, column: 41, scope: !872)
!1828 = !DILocation(line: 732, column: 5, scope: !872)
!1829 = !DILocation(line: 732, column: 15, scope: !872)
!1830 = !DILocation(line: 732, column: 33, scope: !872)
!1831 = !DILocation(line: 733, column: 5, scope: !872)
!1832 = !DILocation(line: 733, column: 15, scope: !872)
!1833 = !DILocation(line: 736, column: 10, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !872, file: !608, line: 736, column: 9)
!1835 = !DILocation(line: 736, column: 9, scope: !872)
!1836 = !DILocation(line: 737, column: 9, scope: !1834)
!1837 = !DILocation(line: 738, column: 46, scope: !872)
!1838 = !DILocation(line: 739, column: 73, scope: !872)
!1839 = !DILocation(line: 738, column: 23, scope: !872)
!1840 = !DILocation(line: 738, column: 21, scope: !872)
!1841 = !DILocation(line: 740, column: 5, scope: !872)
!1842 = !DILocation(line: 740, column: 10, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !879, file: !608, discriminator: 1)
!1844 = !DILocation(line: 740, column: 20, scope: !879)
!1845 = !DILocation(line: 740, column: 50, scope: !879)
!1846 = !DILocation(line: 740, column: 76, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !879, file: !608, line: 740, column: 73)
!1848 = !DILocation(line: 740, column: 93, scope: !1847)
!1849 = !DILocation(line: 740, column: 73, scope: !1847)
!1850 = !DILocation(line: 740, column: 103, scope: !1847)
!1851 = !DILocation(line: 740, column: 73, scope: !879)
!1852 = !DILocation(line: 740, column: 73, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !879, file: !608, discriminator: 2)
!1854 = !DILocation(line: 740, column: 134, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1847, file: !608, discriminator: 3)
!1856 = !DILocation(line: 740, column: 152, scope: !1847)
!1857 = !{!1283, !1259, i64 8}
!1858 = !DILocation(line: 740, column: 162, scope: !1847)
!1859 = !{!1860, !1259, i64 48}
!1860 = !{!"_typeobject", !1861, i64 0, !1259, i64 24, !1284, i64 32, !1284, i64 40, !1259, i64 48, !1259, i64 56, !1259, i64 64, !1259, i64 72, !1259, i64 80, !1259, i64 88, !1259, i64 96, !1259, i64 104, !1259, i64 112, !1259, i64 120, !1259, i64 128, !1259, i64 136, !1259, i64 144, !1259, i64 152, !1259, i64 160, !1284, i64 168, !1259, i64 176, !1259, i64 184, !1259, i64 192, !1259, i64 200, !1284, i64 208, !1259, i64 216, !1259, i64 224, !1259, i64 232, !1259, i64 240, !1259, i64 248, !1259, i64 256, !1259, i64 264, !1259, i64 272, !1259, i64 280, !1284, i64 288, !1259, i64 296, !1259, i64 304, !1259, i64 312, !1259, i64 320, !1259, i64 328, !1259, i64 336, !1259, i64 344, !1259, i64 352, !1259, i64 360, !1259, i64 368, !1259, i64 376, !1272, i64 384, !1259, i64 392}
!1861 = !{!"", !1283, i64 0, !1284, i64 16}
!1862 = !DILocation(line: 740, column: 187, scope: !1847)
!1863 = !DILocation(line: 740, column: 118, scope: !1847)
!1864 = !DILocation(line: 740, column: 206, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !872, file: !608, discriminator: 4)
!1866 = !DILocation(line: 740, column: 206, scope: !879)
!1867 = !DILocation(line: 740, column: 206, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !879, file: !608, discriminator: 5)
!1869 = !DILocation(line: 741, column: 12, scope: !872)
!1870 = !DILocation(line: 741, column: 5, scope: !872)
!1871 = !DILocation(line: 742, column: 1, scope: !872)
!1872 = !DILocation(line: 871, column: 22, scope: !880)
!1873 = !DILocation(line: 871, column: 38, scope: !880)
!1874 = !DILocation(line: 873, column: 5, scope: !880)
!1875 = !DILocation(line: 873, column: 15, scope: !880)
!1876 = !DILocation(line: 875, column: 9, scope: !880)
!1877 = !DILocation(line: 875, column: 7, scope: !880)
!1878 = !DILocation(line: 876, column: 9, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !880, file: !608, line: 876, column: 9)
!1880 = !DILocation(line: 876, column: 11, scope: !1879)
!1881 = !DILocation(line: 876, column: 9, scope: !880)
!1882 = !DILocation(line: 877, column: 9, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !608, line: 876, column: 26)
!1884 = !DILocation(line: 880, column: 5, scope: !880)
!1885 = !DILocation(line: 883, column: 21, scope: !880)
!1886 = !DILocation(line: 883, column: 5, scope: !880)
!1887 = !DILocation(line: 884, column: 5, scope: !880)
!1888 = !DILocation(line: 884, column: 10, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !886, file: !608, discriminator: 1)
!1890 = !DILocation(line: 884, column: 20, scope: !886)
!1891 = !DILocation(line: 884, column: 50, scope: !886)
!1892 = !DILocation(line: 884, column: 62, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !886, file: !608, line: 884, column: 59)
!1894 = !DILocation(line: 884, column: 79, scope: !1893)
!1895 = !DILocation(line: 884, column: 59, scope: !1893)
!1896 = !DILocation(line: 884, column: 89, scope: !1893)
!1897 = !DILocation(line: 884, column: 59, scope: !886)
!1898 = !DILocation(line: 884, column: 59, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !886, file: !608, discriminator: 2)
!1900 = !DILocation(line: 884, column: 120, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1893, file: !608, discriminator: 3)
!1902 = !DILocation(line: 884, column: 138, scope: !1893)
!1903 = !DILocation(line: 884, column: 148, scope: !1893)
!1904 = !DILocation(line: 884, column: 173, scope: !1893)
!1905 = !DILocation(line: 884, column: 104, scope: !1893)
!1906 = !DILocation(line: 884, column: 192, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !880, file: !608, discriminator: 4)
!1908 = !DILocation(line: 884, column: 192, scope: !886)
!1909 = !DILocation(line: 884, column: 192, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !886, file: !608, discriminator: 5)
!1911 = !DILocation(line: 885, column: 9, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !880, file: !608, line: 885, column: 9)
!1913 = !DILocation(line: 885, column: 9, scope: !880)
!1914 = !DILocation(line: 886, column: 9, scope: !1912)
!1915 = !DILocation(line: 888, column: 51, scope: !880)
!1916 = !DILocation(line: 889, column: 5, scope: !880)
!1917 = !DILocation(line: 890, column: 1, scope: !880)
!1918 = !DILocation(line: 1025, column: 26, scope: !887)
!1919 = !DILocation(line: 1025, column: 42, scope: !887)
!1920 = !DILocation(line: 1027, column: 12, scope: !887)
!1921 = !DILocation(line: 1027, column: 5, scope: !887)
!1922 = !DILocation(line: 1195, column: 29, scope: !901)
!1923 = !DILocation(line: 1195, column: 45, scope: !901)
!1924 = !DILocation(line: 1197, column: 12, scope: !901)
!1925 = !DILocation(line: 1197, column: 5, scope: !901)
!1926 = !DILocation(line: 1071, column: 29, scope: !1005)
!1927 = !DILocation(line: 1071, column: 45, scope: !1005)
!1928 = !DILocation(line: 1073, column: 12, scope: !1005)
!1929 = !DILocation(line: 1073, column: 5, scope: !1005)
!1930 = !DILocation(line: 1207, column: 31, scope: !1013)
!1931 = !DILocation(line: 1207, column: 47, scope: !1013)
!1932 = !DILocation(line: 1209, column: 5, scope: !1013)
!1933 = !DILocation(line: 1209, column: 11, scope: !1013)
!1934 = !DILocation(line: 1210, column: 5, scope: !1013)
!1935 = !DILocation(line: 1210, column: 22, scope: !1013)
!1936 = !DILocation(line: 1211, column: 5, scope: !1013)
!1937 = !DILocation(line: 1211, column: 15, scope: !1013)
!1938 = !DILocation(line: 1211, column: 34, scope: !1013)
!1939 = !DILocation(line: 1211, column: 41, scope: !1013)
!1940 = !DILocation(line: 1213, column: 27, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1213, column: 9)
!1942 = !DILocation(line: 1213, column: 10, scope: !1941)
!1943 = !DILocation(line: 1213, column: 9, scope: !1013)
!1944 = !DILocation(line: 1214, column: 9, scope: !1941)
!1945 = !DILocation(line: 1222, column: 10, scope: !1013)
!1946 = !DILocation(line: 1222, column: 25, scope: !1013)
!1947 = !{!1948, !1259, i64 0}
!1948 = !{!"", !1259, i64 0, !1272, i64 8, !1272, i64 12, !1534, i64 16}
!1949 = !DILocation(line: 1223, column: 10, scope: !1013)
!1950 = !DILocation(line: 1223, column: 20, scope: !1013)
!1951 = !{!1948, !1272, i64 8}
!1952 = !DILocation(line: 1224, column: 10, scope: !1013)
!1953 = !DILocation(line: 1224, column: 21, scope: !1013)
!1954 = !{!1948, !1272, i64 12}
!1955 = !DILocation(line: 1225, column: 10, scope: !1013)
!1956 = !DILocation(line: 1225, column: 21, scope: !1013)
!1957 = !{!1948, !1534, i64 16}
!1958 = !DILocation(line: 1228, column: 26, scope: !1023)
!1959 = !DILocation(line: 1228, column: 33, scope: !1023)
!1960 = !DILocation(line: 1228, column: 43, scope: !1023)
!1961 = !DILocation(line: 1228, column: 1350, scope: !1023)
!1962 = !DILocation(line: 1228, column: 1363, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1023, file: !608, discriminator: 1)
!1964 = !DILocation(line: 1228, column: 1382, scope: !1023)
!1965 = !DILocation(line: 1228, column: 1391, scope: !1023)
!1966 = !DILocation(line: 1228, column: 1240, scope: !1023)
!1967 = !DILocation(line: 1228, column: 1557, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1027, file: !608, discriminator: 3)
!1969 = !DILocation(line: 1228, column: 1578, scope: !1027)
!1970 = !DILocation(line: 1228, column: 1625, scope: !1027)
!1971 = !DILocation(line: 1228, column: 1632, scope: !1027)
!1972 = !DILocation(line: 1228, column: 1645, scope: !1027)
!1973 = !DILocation(line: 1228, column: 1656, scope: !1027)
!1974 = !DILocation(line: 1228, column: 1666, scope: !1027)
!1975 = !DILocation(line: 1228, column: 1664, scope: !1027)
!1976 = !DILocation(line: 1228, column: 1724, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1027, file: !608, line: 1228, column: 1724)
!1978 = !DILocation(line: 1228, column: 1733, scope: !1977)
!1979 = !DILocation(line: 1228, column: 1737, scope: !1977)
!1980 = !DILocation(line: 1228, column: 1740, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1977, file: !608, discriminator: 5)
!1982 = !DILocation(line: 1228, column: 1749, scope: !1977)
!1983 = !DILocation(line: 1228, column: 1724, scope: !1027)
!1984 = !DILocation(line: 1228, column: 1769, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1986, file: !608, discriminator: 7)
!1986 = distinct !DILexicalBlock(scope: !1977, file: !608, line: 1228, column: 1755)
!1987 = !DILocation(line: 1228, column: 1779, scope: !1986)
!1988 = !DILocation(line: 1228, column: 1777, scope: !1986)
!1989 = !DILocation(line: 1228, column: 1766, scope: !1986)
!1990 = !DILocation(line: 1228, column: 1838, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1986, file: !608, line: 1228, column: 1838)
!1992 = !DILocation(line: 1228, column: 1847, scope: !1991)
!1993 = !DILocation(line: 1228, column: 1851, scope: !1991)
!1994 = !DILocation(line: 1228, column: 1854, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1991, file: !608, discriminator: 9)
!1996 = !DILocation(line: 1228, column: 1863, scope: !1991)
!1997 = !DILocation(line: 1228, column: 1838, scope: !1986)
!1998 = !DILocation(line: 1228, column: 1883, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !2000, file: !608, discriminator: 11)
!2000 = distinct !DILexicalBlock(scope: !1991, file: !608, line: 1228, column: 1869)
!2001 = !DILocation(line: 1228, column: 1893, scope: !2000)
!2002 = !DILocation(line: 1228, column: 1891, scope: !2000)
!2003 = !DILocation(line: 1228, column: 1880, scope: !2000)
!2004 = !DILocation(line: 1228, column: 1952, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2000, file: !608, line: 1228, column: 1952)
!2006 = !DILocation(line: 1228, column: 1961, scope: !2005)
!2007 = !DILocation(line: 1228, column: 1965, scope: !2005)
!2008 = !DILocation(line: 1228, column: 1968, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2005, file: !608, discriminator: 13)
!2010 = !DILocation(line: 1228, column: 1977, scope: !2005)
!2011 = !DILocation(line: 1228, column: 1952, scope: !2000)
!2012 = !DILocation(line: 1228, column: 1995, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2005, file: !608, discriminator: 15)
!2014 = !DILocation(line: 1228, column: 2005, scope: !2005)
!2015 = !DILocation(line: 1228, column: 2003, scope: !2005)
!2016 = !DILocation(line: 1228, column: 1992, scope: !2005)
!2017 = !DILocation(line: 1228, column: 1983, scope: !2005)
!2018 = !DILocation(line: 1228, column: 2060, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2020, file: !608, discriminator: 17)
!2020 = !DILexicalBlockFile(scope: !2021, file: !608, discriminator: 16)
!2021 = !DILexicalBlockFile(scope: !2000, file: !608, discriminator: 14)
!2022 = !DILocation(line: 1228, column: 2062, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2024, file: !608, discriminator: 18)
!2024 = !DILexicalBlockFile(scope: !2025, file: !608, discriminator: 12)
!2025 = !DILexicalBlockFile(scope: !1986, file: !608, discriminator: 10)
!2026 = !DILocation(line: 1228, column: 2064, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !608, discriminator: 19)
!2028 = !DILexicalBlockFile(scope: !2029, file: !608, discriminator: 8)
!2029 = !DILexicalBlockFile(scope: !1027, file: !608, discriminator: 6)
!2030 = !DILocation(line: 1228, column: 1752, scope: !1977)
!2031 = !DILocation(line: 1228, column: 2074, scope: !1023)
!2032 = !DILocation(line: 1228, column: 2074, scope: !1027)
!2033 = !DILocation(line: 1228, column: 2099, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2035, file: !608, discriminator: 4)
!2035 = !DILexicalBlockFile(scope: !1023, file: !608, discriminator: 2)
!2036 = !DILocation(line: 1228, column: 2081, scope: !1023)
!2037 = !DILocation(line: 1228, column: 26, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2039, file: !608, discriminator: 21)
!2039 = !DILexicalBlockFile(scope: !1023, file: !608, discriminator: 20)
!2040 = !DILocation(line: 1228, column: 2117, scope: !1024)
!2041 = !DILocation(line: 1228, column: 2117, scope: !1023)
!2042 = !DILocation(line: 1228, column: 2120, scope: !1024)
!2043 = !DILocation(line: 1228, column: 9, scope: !1013)
!2044 = !DILocation(line: 1229, column: 15, scope: !1024)
!2045 = !DILocation(line: 1229, column: 13, scope: !1024)
!2046 = !DILocation(line: 1229, column: 9, scope: !1024)
!2047 = !DILocation(line: 1231, column: 31, scope: !1030)
!2048 = !DILocation(line: 1231, column: 38, scope: !1030)
!2049 = !DILocation(line: 1231, column: 48, scope: !1030)
!2050 = !DILocation(line: 1231, column: 1368, scope: !1030)
!2051 = !DILocation(line: 1231, column: 1381, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !1030, file: !608, discriminator: 1)
!2053 = !DILocation(line: 1231, column: 1401, scope: !1030)
!2054 = !DILocation(line: 1231, column: 1410, scope: !1030)
!2055 = !DILocation(line: 1231, column: 1255, scope: !1030)
!2056 = !DILocation(line: 1231, column: 1577, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !1034, file: !608, discriminator: 3)
!2058 = !DILocation(line: 1231, column: 1598, scope: !1034)
!2059 = !DILocation(line: 1231, column: 1645, scope: !1034)
!2060 = !DILocation(line: 1231, column: 1652, scope: !1034)
!2061 = !DILocation(line: 1231, column: 1665, scope: !1034)
!2062 = !DILocation(line: 1231, column: 1676, scope: !1034)
!2063 = !DILocation(line: 1231, column: 1686, scope: !1034)
!2064 = !DILocation(line: 1231, column: 1684, scope: !1034)
!2065 = !DILocation(line: 1231, column: 1745, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1034, file: !608, line: 1231, column: 1745)
!2067 = !DILocation(line: 1231, column: 1754, scope: !2066)
!2068 = !DILocation(line: 1231, column: 1758, scope: !2066)
!2069 = !DILocation(line: 1231, column: 1761, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2066, file: !608, discriminator: 5)
!2071 = !DILocation(line: 1231, column: 1770, scope: !2066)
!2072 = !DILocation(line: 1231, column: 1745, scope: !1034)
!2073 = !DILocation(line: 1231, column: 1790, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2075, file: !608, discriminator: 7)
!2075 = distinct !DILexicalBlock(scope: !2066, file: !608, line: 1231, column: 1776)
!2076 = !DILocation(line: 1231, column: 1800, scope: !2075)
!2077 = !DILocation(line: 1231, column: 1798, scope: !2075)
!2078 = !DILocation(line: 1231, column: 1787, scope: !2075)
!2079 = !DILocation(line: 1231, column: 1860, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2075, file: !608, line: 1231, column: 1860)
!2081 = !DILocation(line: 1231, column: 1869, scope: !2080)
!2082 = !DILocation(line: 1231, column: 1873, scope: !2080)
!2083 = !DILocation(line: 1231, column: 1876, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2080, file: !608, discriminator: 9)
!2085 = !DILocation(line: 1231, column: 1885, scope: !2080)
!2086 = !DILocation(line: 1231, column: 1860, scope: !2075)
!2087 = !DILocation(line: 1231, column: 1905, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2089, file: !608, discriminator: 11)
!2089 = distinct !DILexicalBlock(scope: !2080, file: !608, line: 1231, column: 1891)
!2090 = !DILocation(line: 1231, column: 1915, scope: !2089)
!2091 = !DILocation(line: 1231, column: 1913, scope: !2089)
!2092 = !DILocation(line: 1231, column: 1902, scope: !2089)
!2093 = !DILocation(line: 1231, column: 1975, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !608, line: 1231, column: 1975)
!2095 = !DILocation(line: 1231, column: 1984, scope: !2094)
!2096 = !DILocation(line: 1231, column: 1988, scope: !2094)
!2097 = !DILocation(line: 1231, column: 1991, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2094, file: !608, discriminator: 13)
!2099 = !DILocation(line: 1231, column: 2000, scope: !2094)
!2100 = !DILocation(line: 1231, column: 1975, scope: !2089)
!2101 = !DILocation(line: 1231, column: 2018, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2094, file: !608, discriminator: 15)
!2103 = !DILocation(line: 1231, column: 2028, scope: !2094)
!2104 = !DILocation(line: 1231, column: 2026, scope: !2094)
!2105 = !DILocation(line: 1231, column: 2015, scope: !2094)
!2106 = !DILocation(line: 1231, column: 2006, scope: !2094)
!2107 = !DILocation(line: 1231, column: 2084, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2109, file: !608, discriminator: 17)
!2109 = !DILexicalBlockFile(scope: !2110, file: !608, discriminator: 16)
!2110 = !DILexicalBlockFile(scope: !2089, file: !608, discriminator: 14)
!2111 = !DILocation(line: 1231, column: 2086, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2113, file: !608, discriminator: 18)
!2113 = !DILexicalBlockFile(scope: !2114, file: !608, discriminator: 12)
!2114 = !DILexicalBlockFile(scope: !2075, file: !608, discriminator: 10)
!2115 = !DILocation(line: 1231, column: 2088, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2117, file: !608, discriminator: 19)
!2117 = !DILexicalBlockFile(scope: !2118, file: !608, discriminator: 8)
!2118 = !DILexicalBlockFile(scope: !1034, file: !608, discriminator: 6)
!2119 = !DILocation(line: 1231, column: 1773, scope: !2066)
!2120 = !DILocation(line: 1231, column: 2098, scope: !1030)
!2121 = !DILocation(line: 1231, column: 2098, scope: !1034)
!2122 = !DILocation(line: 1231, column: 2123, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2124, file: !608, discriminator: 4)
!2124 = !DILexicalBlockFile(scope: !1030, file: !608, discriminator: 2)
!2125 = !DILocation(line: 1231, column: 2105, scope: !1030)
!2126 = !DILocation(line: 1231, column: 31, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2128, file: !608, discriminator: 21)
!2128 = !DILexicalBlockFile(scope: !1030, file: !608, discriminator: 20)
!2129 = !DILocation(line: 1231, column: 2142, scope: !1031)
!2130 = !DILocation(line: 1231, column: 2142, scope: !1030)
!2131 = !DILocation(line: 1231, column: 2145, scope: !1031)
!2132 = !DILocation(line: 1231, column: 14, scope: !1024)
!2133 = !DILocation(line: 1232, column: 15, scope: !1031)
!2134 = !DILocation(line: 1232, column: 13, scope: !1031)
!2135 = !DILocation(line: 1232, column: 9, scope: !1031)
!2136 = !DILocation(line: 1235, column: 31, scope: !1037)
!2137 = !DILocation(line: 1235, column: 38, scope: !1037)
!2138 = !DILocation(line: 1235, column: 48, scope: !1037)
!2139 = !DILocation(line: 1235, column: 1420, scope: !1037)
!2140 = !DILocation(line: 1235, column: 1433, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !1037, file: !608, discriminator: 1)
!2142 = !DILocation(line: 1235, column: 1457, scope: !1037)
!2143 = !DILocation(line: 1235, column: 1466, scope: !1037)
!2144 = !DILocation(line: 1235, column: 1295, scope: !1037)
!2145 = !DILocation(line: 1235, column: 1637, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !1041, file: !608, discriminator: 3)
!2147 = !DILocation(line: 1235, column: 1658, scope: !1041)
!2148 = !DILocation(line: 1235, column: 1705, scope: !1041)
!2149 = !DILocation(line: 1235, column: 1712, scope: !1041)
!2150 = !DILocation(line: 1235, column: 1725, scope: !1041)
!2151 = !DILocation(line: 1235, column: 1736, scope: !1041)
!2152 = !DILocation(line: 1235, column: 1746, scope: !1041)
!2153 = !DILocation(line: 1235, column: 1744, scope: !1041)
!2154 = !DILocation(line: 1235, column: 1809, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !1041, file: !608, line: 1235, column: 1809)
!2156 = !DILocation(line: 1235, column: 1818, scope: !2155)
!2157 = !DILocation(line: 1235, column: 1822, scope: !2155)
!2158 = !DILocation(line: 1235, column: 1825, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2155, file: !608, discriminator: 5)
!2160 = !DILocation(line: 1235, column: 1834, scope: !2155)
!2161 = !DILocation(line: 1235, column: 1809, scope: !1041)
!2162 = !DILocation(line: 1235, column: 1854, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2164, file: !608, discriminator: 7)
!2164 = distinct !DILexicalBlock(scope: !2155, file: !608, line: 1235, column: 1840)
!2165 = !DILocation(line: 1235, column: 1864, scope: !2164)
!2166 = !DILocation(line: 1235, column: 1862, scope: !2164)
!2167 = !DILocation(line: 1235, column: 1851, scope: !2164)
!2168 = !DILocation(line: 1235, column: 1928, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !608, line: 1235, column: 1928)
!2170 = !DILocation(line: 1235, column: 1937, scope: !2169)
!2171 = !DILocation(line: 1235, column: 1941, scope: !2169)
!2172 = !DILocation(line: 1235, column: 1944, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2169, file: !608, discriminator: 9)
!2174 = !DILocation(line: 1235, column: 1953, scope: !2169)
!2175 = !DILocation(line: 1235, column: 1928, scope: !2164)
!2176 = !DILocation(line: 1235, column: 1973, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2178, file: !608, discriminator: 11)
!2178 = distinct !DILexicalBlock(scope: !2169, file: !608, line: 1235, column: 1959)
!2179 = !DILocation(line: 1235, column: 1983, scope: !2178)
!2180 = !DILocation(line: 1235, column: 1981, scope: !2178)
!2181 = !DILocation(line: 1235, column: 1970, scope: !2178)
!2182 = !DILocation(line: 1235, column: 2047, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !608, line: 1235, column: 2047)
!2184 = !DILocation(line: 1235, column: 2056, scope: !2183)
!2185 = !DILocation(line: 1235, column: 2060, scope: !2183)
!2186 = !DILocation(line: 1235, column: 2063, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2183, file: !608, discriminator: 13)
!2188 = !DILocation(line: 1235, column: 2072, scope: !2183)
!2189 = !DILocation(line: 1235, column: 2047, scope: !2178)
!2190 = !DILocation(line: 1235, column: 2090, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2183, file: !608, discriminator: 15)
!2192 = !DILocation(line: 1235, column: 2100, scope: !2183)
!2193 = !DILocation(line: 1235, column: 2098, scope: !2183)
!2194 = !DILocation(line: 1235, column: 2087, scope: !2183)
!2195 = !DILocation(line: 1235, column: 2078, scope: !2183)
!2196 = !DILocation(line: 1235, column: 2160, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !608, discriminator: 17)
!2198 = !DILexicalBlockFile(scope: !2199, file: !608, discriminator: 16)
!2199 = !DILexicalBlockFile(scope: !2178, file: !608, discriminator: 14)
!2200 = !DILocation(line: 1235, column: 2162, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2202, file: !608, discriminator: 18)
!2202 = !DILexicalBlockFile(scope: !2203, file: !608, discriminator: 12)
!2203 = !DILexicalBlockFile(scope: !2164, file: !608, discriminator: 10)
!2204 = !DILocation(line: 1235, column: 2164, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2206, file: !608, discriminator: 19)
!2206 = !DILexicalBlockFile(scope: !2207, file: !608, discriminator: 8)
!2207 = !DILexicalBlockFile(scope: !1041, file: !608, discriminator: 6)
!2208 = !DILocation(line: 1235, column: 1837, scope: !2155)
!2209 = !DILocation(line: 1235, column: 2174, scope: !1037)
!2210 = !DILocation(line: 1235, column: 2174, scope: !1041)
!2211 = !DILocation(line: 1235, column: 2199, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2213, file: !608, discriminator: 4)
!2213 = !DILexicalBlockFile(scope: !1037, file: !608, discriminator: 2)
!2214 = !DILocation(line: 1235, column: 2181, scope: !1037)
!2215 = !DILocation(line: 1235, column: 31, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !608, discriminator: 21)
!2217 = !DILexicalBlockFile(scope: !1037, file: !608, discriminator: 20)
!2218 = !DILocation(line: 1235, column: 2222, scope: !1038)
!2219 = !DILocation(line: 1235, column: 2222, scope: !1037)
!2220 = !DILocation(line: 1235, column: 2225, scope: !1038)
!2221 = !DILocation(line: 1235, column: 14, scope: !1031)
!2222 = !DILocation(line: 1236, column: 15, scope: !1038)
!2223 = !DILocation(line: 1236, column: 13, scope: !1038)
!2224 = !DILocation(line: 1236, column: 9, scope: !1038)
!2225 = !DILocation(line: 1238, column: 31, scope: !1044)
!2226 = !DILocation(line: 1238, column: 38, scope: !1044)
!2227 = !DILocation(line: 1238, column: 48, scope: !1044)
!2228 = !DILocation(line: 1238, column: 1459, scope: !1044)
!2229 = !DILocation(line: 1238, column: 1472, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !1044, file: !608, discriminator: 1)
!2231 = !DILocation(line: 1238, column: 1499, scope: !1044)
!2232 = !DILocation(line: 1238, column: 1508, scope: !1044)
!2233 = !DILocation(line: 1238, column: 1325, scope: !1044)
!2234 = !DILocation(line: 1238, column: 1682, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !1048, file: !608, discriminator: 3)
!2236 = !DILocation(line: 1238, column: 1703, scope: !1048)
!2237 = !DILocation(line: 1238, column: 1750, scope: !1048)
!2238 = !DILocation(line: 1238, column: 1757, scope: !1048)
!2239 = !DILocation(line: 1238, column: 1770, scope: !1048)
!2240 = !DILocation(line: 1238, column: 1781, scope: !1048)
!2241 = !DILocation(line: 1238, column: 1791, scope: !1048)
!2242 = !DILocation(line: 1238, column: 1789, scope: !1048)
!2243 = !DILocation(line: 1238, column: 1857, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !1048, file: !608, line: 1238, column: 1857)
!2245 = !DILocation(line: 1238, column: 1866, scope: !2244)
!2246 = !DILocation(line: 1238, column: 1870, scope: !2244)
!2247 = !DILocation(line: 1238, column: 1873, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2244, file: !608, discriminator: 5)
!2249 = !DILocation(line: 1238, column: 1882, scope: !2244)
!2250 = !DILocation(line: 1238, column: 1857, scope: !1048)
!2251 = !DILocation(line: 1238, column: 1902, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2253, file: !608, discriminator: 7)
!2253 = distinct !DILexicalBlock(scope: !2244, file: !608, line: 1238, column: 1888)
!2254 = !DILocation(line: 1238, column: 1912, scope: !2253)
!2255 = !DILocation(line: 1238, column: 1910, scope: !2253)
!2256 = !DILocation(line: 1238, column: 1899, scope: !2253)
!2257 = !DILocation(line: 1238, column: 1979, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2253, file: !608, line: 1238, column: 1979)
!2259 = !DILocation(line: 1238, column: 1988, scope: !2258)
!2260 = !DILocation(line: 1238, column: 1992, scope: !2258)
!2261 = !DILocation(line: 1238, column: 1995, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2258, file: !608, discriminator: 9)
!2263 = !DILocation(line: 1238, column: 2004, scope: !2258)
!2264 = !DILocation(line: 1238, column: 1979, scope: !2253)
!2265 = !DILocation(line: 1238, column: 2024, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2267, file: !608, discriminator: 11)
!2267 = distinct !DILexicalBlock(scope: !2258, file: !608, line: 1238, column: 2010)
!2268 = !DILocation(line: 1238, column: 2034, scope: !2267)
!2269 = !DILocation(line: 1238, column: 2032, scope: !2267)
!2270 = !DILocation(line: 1238, column: 2021, scope: !2267)
!2271 = !DILocation(line: 1238, column: 2101, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !608, line: 1238, column: 2101)
!2273 = !DILocation(line: 1238, column: 2110, scope: !2272)
!2274 = !DILocation(line: 1238, column: 2114, scope: !2272)
!2275 = !DILocation(line: 1238, column: 2117, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2272, file: !608, discriminator: 13)
!2277 = !DILocation(line: 1238, column: 2126, scope: !2272)
!2278 = !DILocation(line: 1238, column: 2101, scope: !2267)
!2279 = !DILocation(line: 1238, column: 2144, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2272, file: !608, discriminator: 15)
!2281 = !DILocation(line: 1238, column: 2154, scope: !2272)
!2282 = !DILocation(line: 1238, column: 2152, scope: !2272)
!2283 = !DILocation(line: 1238, column: 2141, scope: !2272)
!2284 = !DILocation(line: 1238, column: 2132, scope: !2272)
!2285 = !DILocation(line: 1238, column: 2217, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2287, file: !608, discriminator: 17)
!2287 = !DILexicalBlockFile(scope: !2288, file: !608, discriminator: 16)
!2288 = !DILexicalBlockFile(scope: !2267, file: !608, discriminator: 14)
!2289 = !DILocation(line: 1238, column: 2219, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2291, file: !608, discriminator: 18)
!2291 = !DILexicalBlockFile(scope: !2292, file: !608, discriminator: 12)
!2292 = !DILexicalBlockFile(scope: !2253, file: !608, discriminator: 10)
!2293 = !DILocation(line: 1238, column: 2221, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2295, file: !608, discriminator: 19)
!2295 = !DILexicalBlockFile(scope: !2296, file: !608, discriminator: 8)
!2296 = !DILexicalBlockFile(scope: !1048, file: !608, discriminator: 6)
!2297 = !DILocation(line: 1238, column: 1885, scope: !2244)
!2298 = !DILocation(line: 1238, column: 2231, scope: !1044)
!2299 = !DILocation(line: 1238, column: 2231, scope: !1048)
!2300 = !DILocation(line: 1238, column: 2256, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2302, file: !608, discriminator: 4)
!2302 = !DILexicalBlockFile(scope: !1044, file: !608, discriminator: 2)
!2303 = !DILocation(line: 1238, column: 2238, scope: !1044)
!2304 = !DILocation(line: 1238, column: 31, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2306, file: !608, discriminator: 21)
!2306 = !DILexicalBlockFile(scope: !1044, file: !608, discriminator: 20)
!2307 = !DILocation(line: 1238, column: 2282, scope: !1045)
!2308 = !DILocation(line: 1238, column: 2282, scope: !1044)
!2309 = !DILocation(line: 1238, column: 2285, scope: !1045)
!2310 = !DILocation(line: 1238, column: 14, scope: !1038)
!2311 = !DILocation(line: 1239, column: 15, scope: !1045)
!2312 = !DILocation(line: 1239, column: 13, scope: !1045)
!2313 = !DILocation(line: 1239, column: 9, scope: !1045)
!2314 = !DILocation(line: 1240, column: 31, scope: !1051)
!2315 = !DILocation(line: 1240, column: 38, scope: !1051)
!2316 = !DILocation(line: 1240, column: 48, scope: !1051)
!2317 = !DILocation(line: 1240, column: 1459, scope: !1051)
!2318 = !DILocation(line: 1240, column: 1472, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !1051, file: !608, discriminator: 1)
!2320 = !DILocation(line: 1240, column: 1499, scope: !1051)
!2321 = !DILocation(line: 1240, column: 1508, scope: !1051)
!2322 = !DILocation(line: 1240, column: 1325, scope: !1051)
!2323 = !DILocation(line: 1240, column: 1682, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !1055, file: !608, discriminator: 3)
!2325 = !DILocation(line: 1240, column: 1703, scope: !1055)
!2326 = !DILocation(line: 1240, column: 1750, scope: !1055)
!2327 = !DILocation(line: 1240, column: 1757, scope: !1055)
!2328 = !DILocation(line: 1240, column: 1770, scope: !1055)
!2329 = !DILocation(line: 1240, column: 1781, scope: !1055)
!2330 = !DILocation(line: 1240, column: 1791, scope: !1055)
!2331 = !DILocation(line: 1240, column: 1789, scope: !1055)
!2332 = !DILocation(line: 1240, column: 1857, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1055, file: !608, line: 1240, column: 1857)
!2334 = !DILocation(line: 1240, column: 1866, scope: !2333)
!2335 = !DILocation(line: 1240, column: 1870, scope: !2333)
!2336 = !DILocation(line: 1240, column: 1873, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2333, file: !608, discriminator: 5)
!2338 = !DILocation(line: 1240, column: 1882, scope: !2333)
!2339 = !DILocation(line: 1240, column: 1857, scope: !1055)
!2340 = !DILocation(line: 1240, column: 1902, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2342, file: !608, discriminator: 7)
!2342 = distinct !DILexicalBlock(scope: !2333, file: !608, line: 1240, column: 1888)
!2343 = !DILocation(line: 1240, column: 1912, scope: !2342)
!2344 = !DILocation(line: 1240, column: 1910, scope: !2342)
!2345 = !DILocation(line: 1240, column: 1899, scope: !2342)
!2346 = !DILocation(line: 1240, column: 1979, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !608, line: 1240, column: 1979)
!2348 = !DILocation(line: 1240, column: 1988, scope: !2347)
!2349 = !DILocation(line: 1240, column: 1992, scope: !2347)
!2350 = !DILocation(line: 1240, column: 1995, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2347, file: !608, discriminator: 9)
!2352 = !DILocation(line: 1240, column: 2004, scope: !2347)
!2353 = !DILocation(line: 1240, column: 1979, scope: !2342)
!2354 = !DILocation(line: 1240, column: 2024, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2356, file: !608, discriminator: 11)
!2356 = distinct !DILexicalBlock(scope: !2347, file: !608, line: 1240, column: 2010)
!2357 = !DILocation(line: 1240, column: 2034, scope: !2356)
!2358 = !DILocation(line: 1240, column: 2032, scope: !2356)
!2359 = !DILocation(line: 1240, column: 2021, scope: !2356)
!2360 = !DILocation(line: 1240, column: 2101, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2356, file: !608, line: 1240, column: 2101)
!2362 = !DILocation(line: 1240, column: 2110, scope: !2361)
!2363 = !DILocation(line: 1240, column: 2114, scope: !2361)
!2364 = !DILocation(line: 1240, column: 2117, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2361, file: !608, discriminator: 13)
!2366 = !DILocation(line: 1240, column: 2126, scope: !2361)
!2367 = !DILocation(line: 1240, column: 2101, scope: !2356)
!2368 = !DILocation(line: 1240, column: 2144, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2361, file: !608, discriminator: 15)
!2370 = !DILocation(line: 1240, column: 2154, scope: !2361)
!2371 = !DILocation(line: 1240, column: 2152, scope: !2361)
!2372 = !DILocation(line: 1240, column: 2141, scope: !2361)
!2373 = !DILocation(line: 1240, column: 2132, scope: !2361)
!2374 = !DILocation(line: 1240, column: 2217, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2376, file: !608, discriminator: 17)
!2376 = !DILexicalBlockFile(scope: !2377, file: !608, discriminator: 16)
!2377 = !DILexicalBlockFile(scope: !2356, file: !608, discriminator: 14)
!2378 = !DILocation(line: 1240, column: 2219, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2380, file: !608, discriminator: 18)
!2380 = !DILexicalBlockFile(scope: !2381, file: !608, discriminator: 12)
!2381 = !DILexicalBlockFile(scope: !2342, file: !608, discriminator: 10)
!2382 = !DILocation(line: 1240, column: 2221, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2384, file: !608, discriminator: 19)
!2384 = !DILexicalBlockFile(scope: !2385, file: !608, discriminator: 8)
!2385 = !DILexicalBlockFile(scope: !1055, file: !608, discriminator: 6)
!2386 = !DILocation(line: 1240, column: 1885, scope: !2333)
!2387 = !DILocation(line: 1240, column: 2231, scope: !1051)
!2388 = !DILocation(line: 1240, column: 2231, scope: !1055)
!2389 = !DILocation(line: 1240, column: 2256, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2391, file: !608, discriminator: 4)
!2391 = !DILexicalBlockFile(scope: !1051, file: !608, discriminator: 2)
!2392 = !DILocation(line: 1240, column: 2238, scope: !1051)
!2393 = !DILocation(line: 1240, column: 31, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2395, file: !608, discriminator: 21)
!2395 = !DILexicalBlockFile(scope: !1051, file: !608, discriminator: 20)
!2396 = !DILocation(line: 1240, column: 2282, scope: !1052)
!2397 = !DILocation(line: 1240, column: 2282, scope: !1051)
!2398 = !DILocation(line: 1240, column: 2285, scope: !1052)
!2399 = !DILocation(line: 1240, column: 14, scope: !1045)
!2400 = !DILocation(line: 1241, column: 15, scope: !1052)
!2401 = !DILocation(line: 1241, column: 13, scope: !1052)
!2402 = !DILocation(line: 1241, column: 9, scope: !1052)
!2403 = !DILocation(line: 1243, column: 25, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !1052, file: !608, line: 1242, column: 10)
!2405 = !DILocation(line: 1243, column: 9, scope: !2404)
!2406 = !DILocation(line: 1244, column: 9, scope: !2404)
!2407 = !DILocation(line: 1246, column: 9, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1246, column: 9)
!2409 = !DILocation(line: 1246, column: 13, scope: !2408)
!2410 = !DILocation(line: 1246, column: 9, scope: !1013)
!2411 = !DILocation(line: 1247, column: 9, scope: !2408)
!2412 = !DILocation(line: 1248, column: 5, scope: !1013)
!2413 = !DILocation(line: 1248, column: 10, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !1058, file: !608, discriminator: 1)
!2415 = !DILocation(line: 1248, column: 20, scope: !1058)
!2416 = !DILocation(line: 1248, column: 50, scope: !1058)
!2417 = !DILocation(line: 1248, column: 64, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !1058, file: !608, line: 1248, column: 61)
!2419 = !DILocation(line: 1248, column: 81, scope: !2418)
!2420 = !DILocation(line: 1248, column: 61, scope: !2418)
!2421 = !DILocation(line: 1248, column: 91, scope: !2418)
!2422 = !DILocation(line: 1248, column: 61, scope: !1058)
!2423 = !DILocation(line: 1248, column: 61, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !1058, file: !608, discriminator: 2)
!2425 = !DILocation(line: 1248, column: 122, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2418, file: !608, discriminator: 3)
!2427 = !DILocation(line: 1248, column: 140, scope: !2418)
!2428 = !DILocation(line: 1248, column: 150, scope: !2418)
!2429 = !DILocation(line: 1248, column: 175, scope: !2418)
!2430 = !DILocation(line: 1248, column: 106, scope: !2418)
!2431 = !DILocation(line: 1248, column: 194, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !1013, file: !608, discriminator: 4)
!2433 = !DILocation(line: 1248, column: 194, scope: !1058)
!2434 = !DILocation(line: 1248, column: 194, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !1058, file: !608, discriminator: 5)
!2436 = !DILocation(line: 1250, column: 12, scope: !1013)
!2437 = !DILocation(line: 1250, column: 10, scope: !1013)
!2438 = !DILocation(line: 1251, column: 9, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1251, column: 9)
!2440 = !DILocation(line: 1251, column: 14, scope: !2439)
!2441 = !DILocation(line: 1251, column: 9, scope: !1013)
!2442 = !DILocation(line: 1252, column: 9, scope: !2439)
!2443 = !DILocation(line: 1255, column: 37, scope: !1013)
!2444 = !DILocation(line: 1255, column: 11, scope: !1013)
!2445 = !DILocation(line: 1255, column: 9, scope: !1013)
!2446 = !DILocation(line: 1256, column: 9, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1256, column: 9)
!2448 = !DILocation(line: 1256, column: 13, scope: !2447)
!2449 = !DILocation(line: 1256, column: 9, scope: !1013)
!2450 = !DILocation(line: 1257, column: 9, scope: !2447)
!2451 = !DILocation(line: 1258, column: 30, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1258, column: 9)
!2453 = !DILocation(line: 1258, column: 54, scope: !2452)
!2454 = !DILocation(line: 1258, column: 9, scope: !2452)
!2455 = !DILocation(line: 1258, column: 59, scope: !2452)
!2456 = !DILocation(line: 1258, column: 9, scope: !1013)
!2457 = !DILocation(line: 1259, column: 9, scope: !2452)
!2458 = !DILocation(line: 1260, column: 5, scope: !1013)
!2459 = !DILocation(line: 1260, column: 10, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !1060, file: !608, discriminator: 1)
!2461 = !DILocation(line: 1260, column: 20, scope: !1060)
!2462 = !DILocation(line: 1260, column: 43, scope: !1060)
!2463 = !DILocation(line: 1260, column: 53, scope: !1064)
!2464 = !DILocation(line: 1260, column: 61, scope: !1064)
!2465 = !DILocation(line: 1260, column: 53, scope: !1060)
!2466 = !DILocation(line: 1260, column: 84, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !1063, file: !608, discriminator: 2)
!2468 = !DILocation(line: 1260, column: 98, scope: !1063)
!2469 = !DILocation(line: 1260, column: 103, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !1062, file: !608, discriminator: 4)
!2471 = !DILocation(line: 1260, column: 113, scope: !1062)
!2472 = !DILocation(line: 1260, column: 143, scope: !1062)
!2473 = !DILocation(line: 1260, column: 161, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !1062, file: !608, line: 1260, column: 158)
!2475 = !DILocation(line: 1260, column: 178, scope: !2474)
!2476 = !DILocation(line: 1260, column: 158, scope: !2474)
!2477 = !DILocation(line: 1260, column: 188, scope: !2474)
!2478 = !DILocation(line: 1260, column: 158, scope: !1062)
!2479 = !DILocation(line: 1260, column: 158, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !1062, file: !608, discriminator: 5)
!2481 = !DILocation(line: 1260, column: 219, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2474, file: !608, discriminator: 6)
!2483 = !DILocation(line: 1260, column: 237, scope: !2474)
!2484 = !DILocation(line: 1260, column: 247, scope: !2474)
!2485 = !DILocation(line: 1260, column: 272, scope: !2474)
!2486 = !DILocation(line: 1260, column: 203, scope: !2474)
!2487 = !DILocation(line: 1260, column: 291, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !1063, file: !608, discriminator: 7)
!2489 = !DILocation(line: 1260, column: 291, scope: !1062)
!2490 = !DILocation(line: 1260, column: 291, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !1062, file: !608, discriminator: 8)
!2492 = !DILocation(line: 1260, column: 304, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !1063, file: !608, discriminator: 9)
!2494 = !DILocation(line: 1260, column: 306, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2496, file: !608, discriminator: 10)
!2496 = !DILexicalBlockFile(scope: !1013, file: !608, discriminator: 3)
!2497 = !DILocation(line: 1260, column: 306, scope: !1060)
!2498 = !DILocation(line: 1260, column: 306, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !1060, file: !608, discriminator: 11)
!2500 = !DILocation(line: 1263, column: 32, scope: !1013)
!2501 = !DILocation(line: 1263, column: 27, scope: !1013)
!2502 = !DILocation(line: 1263, column: 11, scope: !1013)
!2503 = !DILocation(line: 1263, column: 9, scope: !1013)
!2504 = !DILocation(line: 1264, column: 9, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1264, column: 9)
!2506 = !DILocation(line: 1264, column: 13, scope: !2505)
!2507 = !DILocation(line: 1264, column: 9, scope: !1013)
!2508 = !DILocation(line: 1265, column: 9, scope: !2505)
!2509 = !DILocation(line: 1266, column: 30, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1266, column: 9)
!2511 = !DILocation(line: 1266, column: 49, scope: !2510)
!2512 = !DILocation(line: 1266, column: 9, scope: !2510)
!2513 = !DILocation(line: 1266, column: 54, scope: !2510)
!2514 = !DILocation(line: 1266, column: 9, scope: !1013)
!2515 = !DILocation(line: 1267, column: 9, scope: !2510)
!2516 = !DILocation(line: 1268, column: 5, scope: !1013)
!2517 = !DILocation(line: 1268, column: 10, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !1066, file: !608, discriminator: 1)
!2519 = !DILocation(line: 1268, column: 20, scope: !1066)
!2520 = !DILocation(line: 1268, column: 43, scope: !1066)
!2521 = !DILocation(line: 1268, column: 53, scope: !1070)
!2522 = !DILocation(line: 1268, column: 61, scope: !1070)
!2523 = !DILocation(line: 1268, column: 53, scope: !1066)
!2524 = !DILocation(line: 1268, column: 84, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !1069, file: !608, discriminator: 2)
!2526 = !DILocation(line: 1268, column: 98, scope: !1069)
!2527 = !DILocation(line: 1268, column: 103, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !1068, file: !608, discriminator: 4)
!2529 = !DILocation(line: 1268, column: 113, scope: !1068)
!2530 = !DILocation(line: 1268, column: 143, scope: !1068)
!2531 = !DILocation(line: 1268, column: 161, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !1068, file: !608, line: 1268, column: 158)
!2533 = !DILocation(line: 1268, column: 178, scope: !2532)
!2534 = !DILocation(line: 1268, column: 158, scope: !2532)
!2535 = !DILocation(line: 1268, column: 188, scope: !2532)
!2536 = !DILocation(line: 1268, column: 158, scope: !1068)
!2537 = !DILocation(line: 1268, column: 158, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !1068, file: !608, discriminator: 5)
!2539 = !DILocation(line: 1268, column: 219, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2532, file: !608, discriminator: 6)
!2541 = !DILocation(line: 1268, column: 237, scope: !2532)
!2542 = !DILocation(line: 1268, column: 247, scope: !2532)
!2543 = !DILocation(line: 1268, column: 272, scope: !2532)
!2544 = !DILocation(line: 1268, column: 203, scope: !2532)
!2545 = !DILocation(line: 1268, column: 291, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !1069, file: !608, discriminator: 7)
!2547 = !DILocation(line: 1268, column: 291, scope: !1068)
!2548 = !DILocation(line: 1268, column: 291, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !1068, file: !608, discriminator: 8)
!2550 = !DILocation(line: 1268, column: 304, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !1069, file: !608, discriminator: 9)
!2552 = !DILocation(line: 1268, column: 306, scope: !2495)
!2553 = !DILocation(line: 1268, column: 306, scope: !1066)
!2554 = !DILocation(line: 1268, column: 306, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !1066, file: !608, discriminator: 11)
!2556 = !DILocation(line: 1271, column: 32, scope: !1013)
!2557 = !DILocation(line: 1271, column: 27, scope: !1013)
!2558 = !DILocation(line: 1271, column: 11, scope: !1013)
!2559 = !DILocation(line: 1271, column: 9, scope: !1013)
!2560 = !DILocation(line: 1272, column: 9, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1272, column: 9)
!2562 = !DILocation(line: 1272, column: 13, scope: !2561)
!2563 = !DILocation(line: 1272, column: 9, scope: !1013)
!2564 = !DILocation(line: 1273, column: 9, scope: !2561)
!2565 = !DILocation(line: 1274, column: 30, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1274, column: 9)
!2567 = !DILocation(line: 1274, column: 50, scope: !2566)
!2568 = !DILocation(line: 1274, column: 9, scope: !2566)
!2569 = !DILocation(line: 1274, column: 55, scope: !2566)
!2570 = !DILocation(line: 1274, column: 9, scope: !1013)
!2571 = !DILocation(line: 1275, column: 9, scope: !2566)
!2572 = !DILocation(line: 1276, column: 5, scope: !1013)
!2573 = !DILocation(line: 1276, column: 10, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !1072, file: !608, discriminator: 1)
!2575 = !DILocation(line: 1276, column: 20, scope: !1072)
!2576 = !DILocation(line: 1276, column: 43, scope: !1072)
!2577 = !DILocation(line: 1276, column: 53, scope: !1076)
!2578 = !DILocation(line: 1276, column: 61, scope: !1076)
!2579 = !DILocation(line: 1276, column: 53, scope: !1072)
!2580 = !DILocation(line: 1276, column: 84, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !1075, file: !608, discriminator: 2)
!2582 = !DILocation(line: 1276, column: 98, scope: !1075)
!2583 = !DILocation(line: 1276, column: 103, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !1074, file: !608, discriminator: 4)
!2585 = !DILocation(line: 1276, column: 113, scope: !1074)
!2586 = !DILocation(line: 1276, column: 143, scope: !1074)
!2587 = !DILocation(line: 1276, column: 161, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !1074, file: !608, line: 1276, column: 158)
!2589 = !DILocation(line: 1276, column: 178, scope: !2588)
!2590 = !DILocation(line: 1276, column: 158, scope: !2588)
!2591 = !DILocation(line: 1276, column: 188, scope: !2588)
!2592 = !DILocation(line: 1276, column: 158, scope: !1074)
!2593 = !DILocation(line: 1276, column: 158, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !1074, file: !608, discriminator: 5)
!2595 = !DILocation(line: 1276, column: 219, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2588, file: !608, discriminator: 6)
!2597 = !DILocation(line: 1276, column: 237, scope: !2588)
!2598 = !DILocation(line: 1276, column: 247, scope: !2588)
!2599 = !DILocation(line: 1276, column: 272, scope: !2588)
!2600 = !DILocation(line: 1276, column: 203, scope: !2588)
!2601 = !DILocation(line: 1276, column: 291, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !1075, file: !608, discriminator: 7)
!2603 = !DILocation(line: 1276, column: 291, scope: !1074)
!2604 = !DILocation(line: 1276, column: 291, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !1074, file: !608, discriminator: 8)
!2606 = !DILocation(line: 1276, column: 304, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !1075, file: !608, discriminator: 9)
!2608 = !DILocation(line: 1276, column: 306, scope: !2495)
!2609 = !DILocation(line: 1276, column: 306, scope: !1072)
!2610 = !DILocation(line: 1276, column: 306, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !1072, file: !608, discriminator: 11)
!2612 = !DILocation(line: 1280, column: 35, scope: !1013)
!2613 = !DILocation(line: 1280, column: 11, scope: !1013)
!2614 = !DILocation(line: 1280, column: 9, scope: !1013)
!2615 = !DILocation(line: 1281, column: 9, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1281, column: 9)
!2617 = !DILocation(line: 1281, column: 13, scope: !2616)
!2618 = !DILocation(line: 1281, column: 9, scope: !1013)
!2619 = !DILocation(line: 1282, column: 9, scope: !2616)
!2620 = !DILocation(line: 1283, column: 30, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !1013, file: !608, line: 1283, column: 9)
!2622 = !DILocation(line: 1283, column: 50, scope: !2621)
!2623 = !DILocation(line: 1283, column: 9, scope: !2621)
!2624 = !DILocation(line: 1283, column: 55, scope: !2621)
!2625 = !DILocation(line: 1283, column: 9, scope: !1013)
!2626 = !DILocation(line: 1284, column: 9, scope: !2621)
!2627 = !DILocation(line: 1285, column: 5, scope: !1013)
!2628 = !DILocation(line: 1285, column: 10, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !1078, file: !608, discriminator: 1)
!2630 = !DILocation(line: 1285, column: 20, scope: !1078)
!2631 = !DILocation(line: 1285, column: 43, scope: !1078)
!2632 = !DILocation(line: 1285, column: 53, scope: !1082)
!2633 = !DILocation(line: 1285, column: 61, scope: !1082)
!2634 = !DILocation(line: 1285, column: 53, scope: !1078)
!2635 = !DILocation(line: 1285, column: 84, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !1081, file: !608, discriminator: 2)
!2637 = !DILocation(line: 1285, column: 98, scope: !1081)
!2638 = !DILocation(line: 1285, column: 103, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !1080, file: !608, discriminator: 4)
!2640 = !DILocation(line: 1285, column: 113, scope: !1080)
!2641 = !DILocation(line: 1285, column: 143, scope: !1080)
!2642 = !DILocation(line: 1285, column: 161, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !1080, file: !608, line: 1285, column: 158)
!2644 = !DILocation(line: 1285, column: 178, scope: !2643)
!2645 = !DILocation(line: 1285, column: 158, scope: !2643)
!2646 = !DILocation(line: 1285, column: 188, scope: !2643)
!2647 = !DILocation(line: 1285, column: 158, scope: !1080)
!2648 = !DILocation(line: 1285, column: 158, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !1080, file: !608, discriminator: 5)
!2650 = !DILocation(line: 1285, column: 219, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2643, file: !608, discriminator: 6)
!2652 = !DILocation(line: 1285, column: 237, scope: !2643)
!2653 = !DILocation(line: 1285, column: 247, scope: !2643)
!2654 = !DILocation(line: 1285, column: 272, scope: !2643)
!2655 = !DILocation(line: 1285, column: 203, scope: !2643)
!2656 = !DILocation(line: 1285, column: 291, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !1081, file: !608, discriminator: 7)
!2658 = !DILocation(line: 1285, column: 291, scope: !1080)
!2659 = !DILocation(line: 1285, column: 291, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !1080, file: !608, discriminator: 8)
!2661 = !DILocation(line: 1285, column: 304, scope: !2662)
!2662 = !DILexicalBlockFile(scope: !1081, file: !608, discriminator: 9)
!2663 = !DILocation(line: 1285, column: 306, scope: !2495)
!2664 = !DILocation(line: 1285, column: 306, scope: !1078)
!2665 = !DILocation(line: 1285, column: 306, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !1078, file: !608, discriminator: 11)
!2667 = !DILocation(line: 1287, column: 27, scope: !1013)
!2668 = !DILocation(line: 1287, column: 10, scope: !1013)
!2669 = !DILocation(line: 1287, column: 8, scope: !1013)
!2670 = !DILocation(line: 1288, column: 5, scope: !1013)
!2671 = !DILocation(line: 1288, column: 10, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !1084, file: !608, discriminator: 1)
!2673 = !DILocation(line: 1288, column: 20, scope: !1084)
!2674 = !DILocation(line: 1288, column: 50, scope: !1084)
!2675 = !DILocation(line: 1288, column: 65, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !1084, file: !608, line: 1288, column: 62)
!2677 = !DILocation(line: 1288, column: 82, scope: !2676)
!2678 = !DILocation(line: 1288, column: 62, scope: !2676)
!2679 = !DILocation(line: 1288, column: 92, scope: !2676)
!2680 = !DILocation(line: 1288, column: 62, scope: !1084)
!2681 = !DILocation(line: 1288, column: 62, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !1084, file: !608, discriminator: 2)
!2683 = !DILocation(line: 1288, column: 123, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !2676, file: !608, discriminator: 3)
!2685 = !DILocation(line: 1288, column: 141, scope: !2676)
!2686 = !DILocation(line: 1288, column: 151, scope: !2676)
!2687 = !DILocation(line: 1288, column: 176, scope: !2676)
!2688 = !DILocation(line: 1288, column: 107, scope: !2676)
!2689 = !DILocation(line: 1288, column: 195, scope: !2432)
!2690 = !DILocation(line: 1288, column: 195, scope: !1084)
!2691 = !DILocation(line: 1288, column: 195, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !1084, file: !608, discriminator: 5)
!2693 = !DILocation(line: 1289, column: 12, scope: !1013)
!2694 = !DILocation(line: 1289, column: 5, scope: !1013)
!2695 = !DILocation(line: 1292, column: 5, scope: !1013)
!2696 = !DILocation(line: 1292, column: 10, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !1086, file: !608, discriminator: 1)
!2698 = !DILocation(line: 1292, column: 20, scope: !1086)
!2699 = !DILocation(line: 1292, column: 50, scope: !1086)
!2700 = !DILocation(line: 1292, column: 65, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !1086, file: !608, line: 1292, column: 62)
!2702 = !DILocation(line: 1292, column: 82, scope: !2701)
!2703 = !DILocation(line: 1292, column: 62, scope: !2701)
!2704 = !DILocation(line: 1292, column: 92, scope: !2701)
!2705 = !DILocation(line: 1292, column: 62, scope: !1086)
!2706 = !DILocation(line: 1292, column: 62, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !1086, file: !608, discriminator: 2)
!2708 = !DILocation(line: 1292, column: 123, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2701, file: !608, discriminator: 3)
!2710 = !DILocation(line: 1292, column: 141, scope: !2701)
!2711 = !DILocation(line: 1292, column: 151, scope: !2701)
!2712 = !DILocation(line: 1292, column: 176, scope: !2701)
!2713 = !DILocation(line: 1292, column: 107, scope: !2701)
!2714 = !DILocation(line: 1292, column: 195, scope: !2432)
!2715 = !DILocation(line: 1292, column: 195, scope: !1086)
!2716 = !DILocation(line: 1292, column: 195, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !1086, file: !608, discriminator: 5)
!2718 = !DILocation(line: 1293, column: 5, scope: !1013)
!2719 = !DILocation(line: 1293, column: 10, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !1088, file: !608, discriminator: 1)
!2721 = !DILocation(line: 1293, column: 20, scope: !1088)
!2722 = !DILocation(line: 1293, column: 51, scope: !1088)
!2723 = !DILocation(line: 1293, column: 61, scope: !1091)
!2724 = !DILocation(line: 1293, column: 77, scope: !1091)
!2725 = !DILocation(line: 1293, column: 61, scope: !1088)
!2726 = !DILocation(line: 1293, column: 92, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !1091, file: !608, discriminator: 2)
!2728 = !DILocation(line: 1293, column: 97, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !1090, file: !608, discriminator: 4)
!2730 = !DILocation(line: 1293, column: 107, scope: !1090)
!2731 = !DILocation(line: 1293, column: 137, scope: !1090)
!2732 = !DILocation(line: 1293, column: 163, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !1090, file: !608, line: 1293, column: 160)
!2734 = !DILocation(line: 1293, column: 180, scope: !2733)
!2735 = !DILocation(line: 1293, column: 160, scope: !2733)
!2736 = !DILocation(line: 1293, column: 190, scope: !2733)
!2737 = !DILocation(line: 1293, column: 160, scope: !1090)
!2738 = !DILocation(line: 1293, column: 160, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !1090, file: !608, discriminator: 5)
!2740 = !DILocation(line: 1293, column: 221, scope: !2741)
!2741 = !DILexicalBlockFile(scope: !2733, file: !608, discriminator: 6)
!2742 = !DILocation(line: 1293, column: 239, scope: !2733)
!2743 = !DILocation(line: 1293, column: 249, scope: !2733)
!2744 = !DILocation(line: 1293, column: 274, scope: !2733)
!2745 = !DILocation(line: 1293, column: 205, scope: !2733)
!2746 = !DILocation(line: 1293, column: 293, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !1091, file: !608, discriminator: 7)
!2748 = !DILocation(line: 1293, column: 293, scope: !1090)
!2749 = !DILocation(line: 1293, column: 293, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !1090, file: !608, discriminator: 8)
!2751 = !DILocation(line: 1293, column: 293, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !1090, file: !608, discriminator: 9)
!2753 = !DILocation(line: 1293, column: 306, scope: !2495)
!2754 = !DILocation(line: 1293, column: 306, scope: !1088)
!2755 = !DILocation(line: 1293, column: 306, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !1088, file: !608, discriminator: 11)
!2757 = !DILocation(line: 1294, column: 5, scope: !1013)
!2758 = !DILocation(line: 1295, column: 1, scope: !1013)
!2759 = !DILocation(line: 1535, column: 29, scope: !617)
!2760 = !DILocation(line: 1537, column: 5, scope: !617)
!2761 = !DILocation(line: 1537, column: 21, scope: !617)
!2762 = !DILocation(line: 1539, column: 5, scope: !617)
!2763 = !DILocation(line: 1539, column: 21, scope: !617)
!2764 = !DILocation(line: 1540, column: 5, scope: !617)
!2765 = !DILocation(line: 1540, column: 9, scope: !617)
!2766 = !DILocation(line: 1545, column: 11, scope: !617)
!2767 = !DILocation(line: 1545, column: 9, scope: !617)
!2768 = !DILocation(line: 1546, column: 9, scope: !649)
!2769 = !DILocation(line: 1546, column: 13, scope: !649)
!2770 = !DILocation(line: 1546, column: 9, scope: !617)
!2771 = !DILocation(line: 1547, column: 13, scope: !647)
!2772 = !DILocation(line: 1547, column: 13, scope: !648)
!2773 = !DILocation(line: 1548, column: 13, scope: !646)
!2774 = !DILocation(line: 1548, column: 29, scope: !646)
!2775 = !DILocation(line: 1549, column: 13, scope: !646)
!2776 = !DILocation(line: 1549, column: 19, scope: !646)
!2777 = !DILocation(line: 1549, column: 34, scope: !646)
!2778 = !DILocation(line: 1550, column: 13, scope: !646)
!2779 = !DILocation(line: 1550, column: 19, scope: !646)
!2780 = !DILocation(line: 1550, column: 29, scope: !646)
!2781 = !DILocation(line: 1551, column: 13, scope: !646)
!2782 = !DILocation(line: 1551, column: 19, scope: !646)
!2783 = !DILocation(line: 1551, column: 30, scope: !646)
!2784 = !DILocation(line: 1552, column: 17, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !646, file: !608, line: 1552, column: 17)
!2786 = !DILocation(line: 1552, column: 39, scope: !2785)
!2787 = !DILocation(line: 1552, column: 17, scope: !646)
!2788 = !DILocation(line: 1553, column: 40, scope: !2785)
!2789 = !DILocation(line: 1553, column: 36, scope: !2785)
!2790 = !DILocation(line: 1553, column: 53, scope: !2785)
!2791 = !DILocation(line: 1553, column: 49, scope: !2785)
!2792 = !DILocation(line: 1553, column: 61, scope: !2785)
!2793 = !DILocation(line: 1553, column: 47, scope: !2785)
!2794 = !DILocation(line: 1553, column: 17, scope: !2785)
!2795 = !DILocation(line: 1553, column: 23, scope: !2785)
!2796 = !DILocation(line: 1553, column: 34, scope: !2785)
!2797 = !DILocation(line: 1555, column: 17, scope: !2785)
!2798 = !DILocation(line: 1555, column: 23, scope: !2785)
!2799 = !DILocation(line: 1555, column: 34, scope: !2785)
!2800 = !DILocation(line: 1556, column: 9, scope: !647)
!2801 = !DILocation(line: 1556, column: 9, scope: !646)
!2802 = !DILocation(line: 1557, column: 38, scope: !648)
!2803 = !DILocation(line: 1557, column: 35, scope: !648)
!2804 = !DILocation(line: 1557, column: 50, scope: !648)
!2805 = !DILocation(line: 1557, column: 47, scope: !648)
!2806 = !DILocation(line: 1557, column: 58, scope: !648)
!2807 = !DILocation(line: 1557, column: 45, scope: !648)
!2808 = !DILocation(line: 1557, column: 16, scope: !648)
!2809 = !DILocation(line: 1557, column: 9, scope: !648)
!2810 = !DILocation(line: 1560, column: 35, scope: !617)
!2811 = !DILocation(line: 1560, column: 5, scope: !617)
!2812 = !DILocation(line: 1561, column: 41, scope: !617)
!2813 = !{!2814, !1284, i64 0}
!2814 = !{!"timeval", !1284, i64 0, !1284, i64 8}
!2815 = !DILocation(line: 1561, column: 31, scope: !617)
!2816 = !DILocation(line: 1561, column: 52, scope: !617)
!2817 = !{!2814, !1284, i64 8}
!2818 = !DILocation(line: 1561, column: 50, scope: !617)
!2819 = !DILocation(line: 1561, column: 60, scope: !617)
!2820 = !DILocation(line: 1561, column: 48, scope: !617)
!2821 = !DILocation(line: 1561, column: 12, scope: !617)
!2822 = !DILocation(line: 1561, column: 5, scope: !617)
!2823 = !DILocation(line: 1562, column: 1, scope: !617)
!2824 = !DILocation(line: 135, column: 27, scope: !654)
!2825 = !DILocation(line: 142, column: 23, scope: !654)
!2826 = !DILocation(line: 142, column: 12, scope: !654)
!2827 = !DILocation(line: 142, column: 5, scope: !654)
!2828 = !DILocation(line: 75, column: 30, scope: !657)
!2829 = !DILocation(line: 77, column: 5, scope: !657)
!2830 = !DILocation(line: 77, column: 13, scope: !657)
!2831 = !DILocation(line: 78, column: 13, scope: !657)
!2832 = !DILocation(line: 78, column: 11, scope: !657)
!2833 = !DILocation(line: 79, column: 9, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !657, file: !608, line: 79, column: 9)
!2835 = !DILocation(line: 79, column: 15, scope: !2834)
!2836 = !DILocation(line: 79, column: 9, scope: !657)
!2837 = !DILocation(line: 80, column: 25, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !608, line: 79, column: 31)
!2839 = !DILocation(line: 80, column: 9, scope: !2838)
!2840 = !DILocation(line: 83, column: 9, scope: !2838)
!2841 = !DILocation(line: 85, column: 9, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !657, file: !608, line: 85, column: 9)
!2843 = !DILocation(line: 85, column: 9, scope: !657)
!2844 = !DILocation(line: 86, column: 9, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2842, file: !608, line: 85, column: 15)
!2846 = !DILocation(line: 86, column: 15, scope: !2845)
!2847 = !DILocation(line: 86, column: 30, scope: !2845)
!2848 = !DILocation(line: 87, column: 9, scope: !2845)
!2849 = !DILocation(line: 87, column: 15, scope: !2845)
!2850 = !DILocation(line: 87, column: 26, scope: !2845)
!2851 = !DILocation(line: 88, column: 9, scope: !2845)
!2852 = !DILocation(line: 88, column: 15, scope: !2845)
!2853 = !DILocation(line: 88, column: 25, scope: !2845)
!2854 = !DILocation(line: 89, column: 9, scope: !2845)
!2855 = !DILocation(line: 89, column: 15, scope: !2845)
!2856 = !DILocation(line: 89, column: 26, scope: !2845)
!2857 = !DILocation(line: 90, column: 5, scope: !2845)
!2858 = !DILocation(line: 91, column: 39, scope: !657)
!2859 = !DILocation(line: 91, column: 31, scope: !657)
!2860 = !DILocation(line: 91, column: 45, scope: !657)
!2861 = !DILocation(line: 91, column: 12, scope: !657)
!2862 = !DILocation(line: 91, column: 5, scope: !657)
!2863 = !DILocation(line: 92, column: 1, scope: !657)
!2864 = !DILocation(line: 1570, column: 19, scope: !690)
!2865 = !DILocation(line: 1574, column: 5, scope: !690)
!2866 = !DILocation(line: 1574, column: 20, scope: !690)
!2867 = !DILocation(line: 1575, column: 5, scope: !690)
!2868 = !DILocation(line: 1575, column: 12, scope: !690)
!2869 = !DILocation(line: 1576, column: 5, scope: !690)
!2870 = !DILocation(line: 1576, column: 9, scope: !690)
!2871 = !DILocation(line: 1578, column: 17, scope: !690)
!2872 = !DILocation(line: 1578, column: 12, scope: !690)
!2873 = !DILocation(line: 1578, column: 10, scope: !690)
!2874 = !DILocation(line: 1579, column: 18, scope: !690)
!2875 = !DILocation(line: 1579, column: 12, scope: !690)
!2876 = !DILocation(line: 1579, column: 10, scope: !690)
!2877 = !DILocation(line: 1580, column: 22, scope: !690)
!2878 = !DILocation(line: 1580, column: 16, scope: !690)
!2879 = !DILocation(line: 1580, column: 7, scope: !690)
!2880 = !DILocation(line: 1580, column: 14, scope: !690)
!2881 = !DILocation(line: 1581, column: 24, scope: !690)
!2882 = !DILocation(line: 1581, column: 28, scope: !690)
!2883 = !DILocation(line: 1581, column: 17, scope: !690)
!2884 = !DILocation(line: 1581, column: 7, scope: !690)
!2885 = !DILocation(line: 1581, column: 15, scope: !690)
!2886 = !DILocation(line: 1582, column: 7, scope: !699)
!2887 = !DILocation(line: 1582, column: 22, scope: !699)
!2888 = !DILocation(line: 1582, column: 37, scope: !699)
!2889 = !DILocation(line: 1582, column: 35, scope: !699)
!2890 = !DILocation(line: 1583, column: 11, scope: !699)
!2891 = !DILocation(line: 1583, column: 9, scope: !699)
!2892 = !DILocation(line: 1584, column: 26, scope: !699)
!2893 = !DILocation(line: 1584, column: 5, scope: !699)
!2894 = !DILocation(line: 1584, column: 34, scope: !690)
!2895 = !DILocation(line: 1585, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !690, file: !608, line: 1585, column: 9)
!2897 = !DILocation(line: 1585, column: 13, scope: !2896)
!2898 = !DILocation(line: 1585, column: 9, scope: !690)
!2899 = !DILocation(line: 1587, column: 15, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !608, line: 1587, column: 13)
!2901 = distinct !DILexicalBlock(scope: !2896, file: !608, line: 1585, column: 19)
!2902 = !DILocation(line: 1587, column: 14, scope: !2900)
!2903 = !DILocation(line: 1587, column: 36, scope: !2900)
!2904 = !DILocation(line: 1587, column: 13, scope: !2901)
!2905 = !DILocation(line: 1588, column: 17, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !608, line: 1588, column: 17)
!2907 = distinct !DILexicalBlock(scope: !2900, file: !608, line: 1587, column: 42)
!2908 = !DILocation(line: 1588, column: 17, scope: !2907)
!2909 = !DILocation(line: 1589, column: 17, scope: !2906)
!2910 = !DILocation(line: 1590, column: 9, scope: !2907)
!2911 = !DILocation(line: 1594, column: 32, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2900, file: !608, line: 1593, column: 9)
!2913 = !DILocation(line: 1594, column: 13, scope: !2912)
!2914 = !DILocation(line: 1595, column: 13, scope: !2912)
!2915 = !DILocation(line: 1597, column: 5, scope: !2901)
!2916 = !DILocation(line: 1641, column: 5, scope: !690)
!2917 = !DILocation(line: 1642, column: 1, scope: !690)
!2918 = !DILocation(line: 333, column: 29, scope: !779)
!2919 = !DILocation(line: 333, column: 41, scope: !779)
!2920 = !DILocation(line: 333, column: 57, scope: !779)
!2921 = !DILocation(line: 335, column: 5, scope: !779)
!2922 = !DILocation(line: 335, column: 15, scope: !779)
!2923 = !DILocation(line: 336, column: 5, scope: !779)
!2924 = !DILocation(line: 336, column: 12, scope: !779)
!2925 = !DILocation(line: 338, column: 27, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !779, file: !608, line: 338, column: 9)
!2927 = !DILocation(line: 338, column: 33, scope: !2926)
!2928 = !DILocation(line: 338, column: 10, scope: !2926)
!2929 = !DILocation(line: 338, column: 9, scope: !779)
!2930 = !DILocation(line: 339, column: 9, scope: !2926)
!2931 = !DILocation(line: 340, column: 9, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !779, file: !608, line: 340, column: 9)
!2933 = !DILocation(line: 340, column: 12, scope: !2932)
!2934 = !DILocation(line: 340, column: 26, scope: !2932)
!2935 = !DILocation(line: 340, column: 29, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2932, file: !608, discriminator: 1)
!2937 = !DILocation(line: 340, column: 32, scope: !2932)
!2938 = !DILocation(line: 340, column: 9, scope: !779)
!2939 = !DILocation(line: 341, column: 17, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2932, file: !608, line: 340, column: 54)
!2941 = !DILocation(line: 341, column: 15, scope: !2940)
!2942 = !DILocation(line: 342, column: 5, scope: !2940)
!2943 = !DILocation(line: 344, column: 36, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !608, line: 344, column: 13)
!2945 = distinct !DILexicalBlock(scope: !2932, file: !608, line: 343, column: 10)
!2946 = !DILocation(line: 344, column: 13, scope: !2944)
!2947 = !DILocation(line: 344, column: 68, scope: !2944)
!2948 = !DILocation(line: 344, column: 13, scope: !2945)
!2949 = !DILocation(line: 345, column: 13, scope: !2944)
!2950 = !DILocation(line: 347, column: 14, scope: !779)
!2951 = !DILocation(line: 347, column: 6, scope: !779)
!2952 = !DILocation(line: 347, column: 12, scope: !779)
!2953 = !DILocation(line: 348, column: 5, scope: !779)
!2954 = !DILocation(line: 349, column: 1, scope: !779)
!2955 = !DILocation(line: 297, column: 22, scope: !788)
!2956 = !DILocation(line: 299, column: 5, scope: !788)
!2957 = !DILocation(line: 299, column: 15, scope: !788)
!2958 = !DILocation(line: 299, column: 19, scope: !788)
!2959 = !DILocation(line: 300, column: 9, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !788, file: !608, line: 300, column: 9)
!2961 = !DILocation(line: 300, column: 11, scope: !2960)
!2962 = !DILocation(line: 300, column: 9, scope: !788)
!2963 = !DILocation(line: 301, column: 9, scope: !2960)
!2964 = !DILocation(line: 305, column: 66, scope: !788)
!2965 = !DILocation(line: 305, column: 69, scope: !788)
!2966 = !{!1314, !1272, i64 20}
!2967 = !DILocation(line: 305, column: 59, scope: !788)
!2968 = !DILocation(line: 305, column: 77, scope: !788)
!2969 = !DILocation(line: 305, column: 43, scope: !788)
!2970 = !DILocation(line: 305, column: 25, scope: !788)
!2971 = !DILocation(line: 305, column: 7, scope: !788)
!2972 = !DILocation(line: 305, column: 30, scope: !788)
!2973 = !DILocation(line: 305, column: 6, scope: !788)
!2974 = !DILocation(line: 305, column: 41, scope: !788)
!2975 = !DILocation(line: 306, column: 66, scope: !788)
!2976 = !DILocation(line: 306, column: 69, scope: !788)
!2977 = !{!1314, !1272, i64 16}
!2978 = !DILocation(line: 306, column: 59, scope: !788)
!2979 = !DILocation(line: 306, column: 76, scope: !788)
!2980 = !DILocation(line: 306, column: 43, scope: !788)
!2981 = !DILocation(line: 306, column: 25, scope: !788)
!2982 = !DILocation(line: 306, column: 7, scope: !788)
!2983 = !DILocation(line: 306, column: 30, scope: !788)
!2984 = !DILocation(line: 306, column: 6, scope: !788)
!2985 = !DILocation(line: 306, column: 41, scope: !788)
!2986 = !DILocation(line: 307, column: 66, scope: !788)
!2987 = !DILocation(line: 307, column: 69, scope: !788)
!2988 = !{!1314, !1272, i64 12}
!2989 = !DILocation(line: 307, column: 59, scope: !788)
!2990 = !DILocation(line: 307, column: 43, scope: !788)
!2991 = !DILocation(line: 307, column: 25, scope: !788)
!2992 = !DILocation(line: 307, column: 7, scope: !788)
!2993 = !DILocation(line: 307, column: 30, scope: !788)
!2994 = !DILocation(line: 307, column: 6, scope: !788)
!2995 = !DILocation(line: 307, column: 41, scope: !788)
!2996 = !DILocation(line: 308, column: 66, scope: !788)
!2997 = !DILocation(line: 308, column: 69, scope: !788)
!2998 = !{!1314, !1272, i64 8}
!2999 = !DILocation(line: 308, column: 59, scope: !788)
!3000 = !DILocation(line: 308, column: 43, scope: !788)
!3001 = !DILocation(line: 308, column: 25, scope: !788)
!3002 = !DILocation(line: 308, column: 7, scope: !788)
!3003 = !DILocation(line: 308, column: 30, scope: !788)
!3004 = !DILocation(line: 308, column: 6, scope: !788)
!3005 = !DILocation(line: 308, column: 41, scope: !788)
!3006 = !DILocation(line: 309, column: 66, scope: !788)
!3007 = !DILocation(line: 309, column: 69, scope: !788)
!3008 = !{!1314, !1272, i64 4}
!3009 = !DILocation(line: 309, column: 59, scope: !788)
!3010 = !DILocation(line: 309, column: 43, scope: !788)
!3011 = !DILocation(line: 309, column: 25, scope: !788)
!3012 = !DILocation(line: 309, column: 7, scope: !788)
!3013 = !DILocation(line: 309, column: 30, scope: !788)
!3014 = !DILocation(line: 309, column: 6, scope: !788)
!3015 = !DILocation(line: 309, column: 41, scope: !788)
!3016 = !DILocation(line: 310, column: 66, scope: !788)
!3017 = !DILocation(line: 310, column: 69, scope: !788)
!3018 = !{!1314, !1272, i64 0}
!3019 = !DILocation(line: 310, column: 59, scope: !788)
!3020 = !DILocation(line: 310, column: 43, scope: !788)
!3021 = !DILocation(line: 310, column: 25, scope: !788)
!3022 = !DILocation(line: 310, column: 7, scope: !788)
!3023 = !DILocation(line: 310, column: 30, scope: !788)
!3024 = !DILocation(line: 310, column: 6, scope: !788)
!3025 = !DILocation(line: 310, column: 41, scope: !788)
!3026 = !DILocation(line: 311, column: 67, scope: !788)
!3027 = !DILocation(line: 311, column: 70, scope: !788)
!3028 = !DILocation(line: 311, column: 78, scope: !788)
!3029 = !DILocation(line: 311, column: 59, scope: !788)
!3030 = !DILocation(line: 311, column: 83, scope: !788)
!3031 = !DILocation(line: 311, column: 43, scope: !788)
!3032 = !DILocation(line: 311, column: 25, scope: !788)
!3033 = !DILocation(line: 311, column: 7, scope: !788)
!3034 = !DILocation(line: 311, column: 30, scope: !788)
!3035 = !DILocation(line: 311, column: 6, scope: !788)
!3036 = !DILocation(line: 311, column: 41, scope: !788)
!3037 = !DILocation(line: 312, column: 66, scope: !788)
!3038 = !DILocation(line: 312, column: 69, scope: !788)
!3039 = !{!1314, !1272, i64 28}
!3040 = !DILocation(line: 312, column: 59, scope: !788)
!3041 = !DILocation(line: 312, column: 77, scope: !788)
!3042 = !DILocation(line: 312, column: 43, scope: !788)
!3043 = !DILocation(line: 312, column: 25, scope: !788)
!3044 = !DILocation(line: 312, column: 7, scope: !788)
!3045 = !DILocation(line: 312, column: 30, scope: !788)
!3046 = !DILocation(line: 312, column: 6, scope: !788)
!3047 = !DILocation(line: 312, column: 41, scope: !788)
!3048 = !DILocation(line: 313, column: 66, scope: !788)
!3049 = !DILocation(line: 313, column: 69, scope: !788)
!3050 = !DILocation(line: 313, column: 59, scope: !788)
!3051 = !DILocation(line: 313, column: 43, scope: !788)
!3052 = !DILocation(line: 313, column: 25, scope: !788)
!3053 = !DILocation(line: 313, column: 7, scope: !788)
!3054 = !DILocation(line: 313, column: 30, scope: !788)
!3055 = !DILocation(line: 313, column: 6, scope: !788)
!3056 = !DILocation(line: 313, column: 41, scope: !788)
!3057 = !DILocation(line: 315, column: 66, scope: !788)
!3058 = !DILocation(line: 315, column: 69, scope: !788)
!3059 = !DILocation(line: 315, column: 43, scope: !788)
!3060 = !DILocation(line: 315, column: 25, scope: !788)
!3061 = !DILocation(line: 315, column: 7, scope: !788)
!3062 = !DILocation(line: 315, column: 30, scope: !788)
!3063 = !DILocation(line: 315, column: 6, scope: !788)
!3064 = !DILocation(line: 315, column: 41, scope: !788)
!3065 = !DILocation(line: 317, column: 67, scope: !788)
!3066 = !DILocation(line: 317, column: 70, scope: !788)
!3067 = !DILocation(line: 317, column: 44, scope: !788)
!3068 = !DILocation(line: 317, column: 25, scope: !788)
!3069 = !DILocation(line: 317, column: 7, scope: !788)
!3070 = !DILocation(line: 317, column: 30, scope: !788)
!3071 = !DILocation(line: 317, column: 6, scope: !788)
!3072 = !DILocation(line: 317, column: 42, scope: !788)
!3073 = !DILocation(line: 320, column: 9, scope: !797)
!3074 = !DILocation(line: 320, column: 9, scope: !788)
!3075 = !DILocation(line: 321, column: 9, scope: !796)
!3076 = !DILocation(line: 321, column: 14, scope: !3077)
!3077 = !DILexicalBlockFile(scope: !795, file: !608, discriminator: 1)
!3078 = !DILocation(line: 321, column: 24, scope: !795)
!3079 = !DILocation(line: 321, column: 55, scope: !795)
!3080 = !DILocation(line: 321, column: 63, scope: !800)
!3081 = !DILocation(line: 321, column: 79, scope: !800)
!3082 = !DILocation(line: 321, column: 63, scope: !795)
!3083 = !DILocation(line: 321, column: 94, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !800, file: !608, discriminator: 2)
!3085 = !DILocation(line: 321, column: 99, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !799, file: !608, discriminator: 4)
!3087 = !DILocation(line: 321, column: 109, scope: !799)
!3088 = !DILocation(line: 321, column: 139, scope: !799)
!3089 = !DILocation(line: 321, column: 165, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !799, file: !608, line: 321, column: 162)
!3091 = !DILocation(line: 321, column: 182, scope: !3090)
!3092 = !DILocation(line: 321, column: 162, scope: !3090)
!3093 = !DILocation(line: 321, column: 192, scope: !3090)
!3094 = !DILocation(line: 321, column: 162, scope: !799)
!3095 = !DILocation(line: 321, column: 162, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !799, file: !608, discriminator: 5)
!3097 = !DILocation(line: 321, column: 223, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3090, file: !608, discriminator: 6)
!3099 = !DILocation(line: 321, column: 241, scope: !3090)
!3100 = !DILocation(line: 321, column: 251, scope: !3090)
!3101 = !DILocation(line: 321, column: 276, scope: !3090)
!3102 = !DILocation(line: 321, column: 207, scope: !3090)
!3103 = !DILocation(line: 321, column: 295, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !800, file: !608, discriminator: 7)
!3105 = !DILocation(line: 321, column: 295, scope: !799)
!3106 = !DILocation(line: 321, column: 295, scope: !3107)
!3107 = !DILexicalBlockFile(scope: !799, file: !608, discriminator: 8)
!3108 = !DILocation(line: 321, column: 295, scope: !3109)
!3109 = !DILexicalBlockFile(scope: !799, file: !608, discriminator: 9)
!3110 = !DILocation(line: 321, column: 308, scope: !3111)
!3111 = !DILexicalBlockFile(scope: !3112, file: !608, discriminator: 10)
!3112 = !DILexicalBlockFile(scope: !796, file: !608, discriminator: 3)
!3113 = !DILocation(line: 321, column: 308, scope: !795)
!3114 = !DILocation(line: 321, column: 308, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !795, file: !608, discriminator: 11)
!3116 = !DILocation(line: 322, column: 9, scope: !796)
!3117 = !DILocation(line: 325, column: 12, scope: !788)
!3118 = !DILocation(line: 325, column: 5, scope: !788)
!3119 = !DILocation(line: 326, column: 1, scope: !788)
!3120 = !DILocation(line: 384, column: 21, scope: !807)
!3121 = !DILocation(line: 384, column: 39, scope: !807)
!3122 = !DILocation(line: 386, column: 5, scope: !807)
!3123 = !DILocation(line: 386, column: 16, scope: !807)
!3124 = !DILocation(line: 389, column: 23, scope: !807)
!3125 = !DILocation(line: 389, column: 13, scope: !807)
!3126 = !DILocation(line: 389, column: 11, scope: !807)
!3127 = !DILocation(line: 390, column: 9, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !807, file: !608, line: 390, column: 9)
!3129 = !DILocation(line: 390, column: 15, scope: !3128)
!3130 = !DILocation(line: 390, column: 9, scope: !807)
!3131 = !DILocation(line: 393, column: 15, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !608, line: 393, column: 13)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !608, line: 390, column: 30)
!3134 = !DILocation(line: 393, column: 14, scope: !3132)
!3135 = !DILocation(line: 393, column: 36, scope: !3132)
!3136 = !DILocation(line: 393, column: 13, scope: !3133)
!3137 = !DILocation(line: 394, column: 15, scope: !3132)
!3138 = !DILocation(line: 394, column: 36, scope: !3132)
!3139 = !DILocation(line: 394, column: 13, scope: !3132)
!3140 = !DILocation(line: 396, column: 28, scope: !3133)
!3141 = !DILocation(line: 396, column: 9, scope: !3133)
!3142 = !DILocation(line: 397, column: 9, scope: !3133)
!3143 = !DILocation(line: 399, column: 6, scope: !807)
!3144 = !DILocation(line: 399, column: 16, scope: !807)
!3145 = !DILocation(line: 399, column: 15, scope: !807)
!3146 = !DILocation(line: 400, column: 5, scope: !807)
!3147 = !DILocation(line: 401, column: 1, scope: !807)
!3148 = !DILocation(line: 427, column: 20, scope: !823)
!3149 = !DILocation(line: 427, column: 37, scope: !823)
!3150 = !DILocation(line: 429, column: 5, scope: !823)
!3151 = !DILocation(line: 429, column: 9, scope: !823)
!3152 = !DILocation(line: 431, column: 21, scope: !823)
!3153 = !DILocation(line: 431, column: 12, scope: !823)
!3154 = !DILocation(line: 431, column: 5, scope: !823)
!3155 = !DILocation(line: 433, column: 27, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !823, file: !608, line: 433, column: 9)
!3157 = !DILocation(line: 433, column: 35, scope: !3156)
!3158 = !DILocation(line: 433, column: 46, scope: !3156)
!3159 = !{!1860, !1284, i64 168}
!3160 = !DILocation(line: 433, column: 55, scope: !3156)
!3161 = !DILocation(line: 433, column: 72, scope: !3156)
!3162 = !DILocation(line: 433, column: 9, scope: !823)
!3163 = !DILocation(line: 434, column: 25, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3156, file: !608, line: 433, column: 79)
!3165 = !DILocation(line: 434, column: 9, scope: !3164)
!3166 = !DILocation(line: 436, column: 9, scope: !3164)
!3167 = !DILocation(line: 439, column: 27, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !823, file: !608, line: 439, column: 9)
!3169 = !DILocation(line: 440, column: 32, scope: !3168)
!3170 = !DILocation(line: 440, column: 35, scope: !3168)
!3171 = !DILocation(line: 440, column: 44, scope: !3168)
!3172 = !DILocation(line: 440, column: 47, scope: !3168)
!3173 = !DILocation(line: 441, column: 28, scope: !3168)
!3174 = !DILocation(line: 441, column: 31, scope: !3168)
!3175 = !DILocation(line: 441, column: 41, scope: !3168)
!3176 = !DILocation(line: 441, column: 44, scope: !3168)
!3177 = !DILocation(line: 441, column: 53, scope: !3168)
!3178 = !DILocation(line: 441, column: 56, scope: !3168)
!3179 = !DILocation(line: 442, column: 28, scope: !3168)
!3180 = !DILocation(line: 442, column: 31, scope: !3168)
!3181 = !DILocation(line: 442, column: 41, scope: !3168)
!3182 = !DILocation(line: 442, column: 44, scope: !3168)
!3183 = !DILocation(line: 442, column: 54, scope: !3168)
!3184 = !DILocation(line: 442, column: 57, scope: !3168)
!3185 = !DILocation(line: 439, column: 10, scope: !3168)
!3186 = !DILocation(line: 439, column: 9, scope: !823)
!3187 = !DILocation(line: 443, column: 9, scope: !3168)
!3188 = !DILocation(line: 444, column: 18, scope: !823)
!3189 = !DILocation(line: 444, column: 20, scope: !823)
!3190 = !DILocation(line: 444, column: 5, scope: !823)
!3191 = !DILocation(line: 444, column: 8, scope: !823)
!3192 = !DILocation(line: 444, column: 16, scope: !823)
!3193 = !DILocation(line: 445, column: 5, scope: !823)
!3194 = !DILocation(line: 445, column: 8, scope: !823)
!3195 = !DILocation(line: 445, column: 14, scope: !823)
!3196 = !DILocation(line: 446, column: 19, scope: !823)
!3197 = !DILocation(line: 446, column: 22, scope: !823)
!3198 = !DILocation(line: 446, column: 30, scope: !823)
!3199 = !DILocation(line: 446, column: 35, scope: !823)
!3200 = !DILocation(line: 446, column: 5, scope: !823)
!3201 = !DILocation(line: 446, column: 8, scope: !823)
!3202 = !DILocation(line: 446, column: 16, scope: !823)
!3203 = !DILocation(line: 447, column: 5, scope: !823)
!3204 = !DILocation(line: 447, column: 8, scope: !823)
!3205 = !DILocation(line: 447, column: 15, scope: !823)
!3206 = !DILocation(line: 449, column: 23, scope: !832)
!3207 = !DILocation(line: 449, column: 31, scope: !832)
!3208 = !DILocation(line: 449, column: 40, scope: !832)
!3209 = !DILocation(line: 449, column: 9, scope: !823)
!3210 = !DILocation(line: 450, column: 9, scope: !831)
!3211 = !DILocation(line: 450, column: 19, scope: !831)
!3212 = !DILocation(line: 451, column: 36, scope: !831)
!3213 = !DILocation(line: 451, column: 18, scope: !831)
!3214 = !DILocation(line: 451, column: 44, scope: !831)
!3215 = !DILocation(line: 451, column: 17, scope: !831)
!3216 = !DILocation(line: 451, column: 14, scope: !831)
!3217 = !DILocation(line: 452, column: 22, scope: !831)
!3218 = !DILocation(line: 452, column: 27, scope: !831)
!3219 = !DILocation(line: 452, column: 22, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !831, file: !608, discriminator: 1)
!3221 = !DILocation(line: 452, column: 80, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !831, file: !608, discriminator: 2)
!3223 = !DILocation(line: 452, column: 63, scope: !831)
!3224 = !DILocation(line: 452, column: 9, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3226, file: !608, discriminator: 4)
!3226 = !DILexicalBlockFile(scope: !831, file: !608, discriminator: 3)
!3227 = !DILocation(line: 452, column: 12, scope: !831)
!3228 = !DILocation(line: 452, column: 20, scope: !831)
!3229 = !DILocation(line: 453, column: 36, scope: !831)
!3230 = !DILocation(line: 453, column: 18, scope: !831)
!3231 = !DILocation(line: 453, column: 44, scope: !831)
!3232 = !DILocation(line: 453, column: 17, scope: !831)
!3233 = !DILocation(line: 453, column: 14, scope: !831)
!3234 = !DILocation(line: 454, column: 24, scope: !831)
!3235 = !DILocation(line: 454, column: 29, scope: !831)
!3236 = !DILocation(line: 454, column: 24, scope: !3220)
!3237 = !DILocation(line: 454, column: 70, scope: !3222)
!3238 = !DILocation(line: 454, column: 56, scope: !831)
!3239 = !DILocation(line: 454, column: 9, scope: !3225)
!3240 = !DILocation(line: 454, column: 12, scope: !831)
!3241 = !DILocation(line: 454, column: 22, scope: !831)
!3242 = !DILocation(line: 455, column: 13, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !831, file: !608, line: 455, column: 13)
!3244 = !DILocation(line: 455, column: 13, scope: !831)
!3245 = !DILocation(line: 456, column: 13, scope: !3243)
!3246 = !DILocation(line: 457, column: 5, scope: !832)
!3247 = !DILocation(line: 457, column: 5, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !832, file: !608, discriminator: 1)
!3249 = !DILocation(line: 457, column: 5, scope: !831)
!3250 = !DILocation(line: 459, column: 5, scope: !823)
!3251 = !DILocation(line: 460, column: 1, scope: !823)
!3252 = !DILocation(line: 467, column: 20, scope: !833)
!3253 = !DILocation(line: 493, column: 9, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !833, file: !608, line: 493, column: 9)
!3255 = !DILocation(line: 493, column: 14, scope: !3254)
!3256 = !DILocation(line: 493, column: 21, scope: !3254)
!3257 = !DILocation(line: 493, column: 9, scope: !833)
!3258 = !DILocation(line: 494, column: 9, scope: !3254)
!3259 = !DILocation(line: 494, column: 14, scope: !3254)
!3260 = !DILocation(line: 494, column: 21, scope: !3254)
!3261 = !DILocation(line: 495, column: 14, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3254, file: !608, line: 495, column: 14)
!3263 = !DILocation(line: 495, column: 19, scope: !3262)
!3264 = !DILocation(line: 495, column: 26, scope: !3262)
!3265 = !DILocation(line: 495, column: 30, scope: !3262)
!3266 = !DILocation(line: 495, column: 33, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !3262, file: !608, discriminator: 1)
!3268 = !DILocation(line: 495, column: 38, scope: !3262)
!3269 = !DILocation(line: 495, column: 45, scope: !3262)
!3270 = !DILocation(line: 495, column: 14, scope: !3254)
!3271 = !DILocation(line: 496, column: 25, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3262, file: !608, line: 495, column: 51)
!3273 = !DILocation(line: 496, column: 9, scope: !3272)
!3274 = !DILocation(line: 497, column: 9, scope: !3272)
!3275 = !DILocation(line: 499, column: 9, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !833, file: !608, line: 499, column: 9)
!3277 = !DILocation(line: 499, column: 14, scope: !3276)
!3278 = !DILocation(line: 499, column: 22, scope: !3276)
!3279 = !DILocation(line: 499, column: 9, scope: !833)
!3280 = !DILocation(line: 500, column: 9, scope: !3276)
!3281 = !DILocation(line: 500, column: 14, scope: !3276)
!3282 = !DILocation(line: 500, column: 22, scope: !3276)
!3283 = !DILocation(line: 501, column: 14, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3276, file: !608, line: 501, column: 14)
!3285 = !DILocation(line: 501, column: 19, scope: !3284)
!3286 = !DILocation(line: 501, column: 27, scope: !3284)
!3287 = !DILocation(line: 501, column: 31, scope: !3284)
!3288 = !DILocation(line: 501, column: 34, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !3284, file: !608, discriminator: 1)
!3290 = !DILocation(line: 501, column: 39, scope: !3284)
!3291 = !DILocation(line: 501, column: 47, scope: !3284)
!3292 = !DILocation(line: 501, column: 14, scope: !3276)
!3293 = !DILocation(line: 502, column: 25, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3284, file: !608, line: 501, column: 53)
!3295 = !DILocation(line: 502, column: 9, scope: !3294)
!3296 = !DILocation(line: 503, column: 9, scope: !3294)
!3297 = !DILocation(line: 505, column: 9, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !833, file: !608, line: 505, column: 9)
!3299 = !DILocation(line: 505, column: 14, scope: !3298)
!3300 = !DILocation(line: 505, column: 22, scope: !3298)
!3301 = !DILocation(line: 505, column: 26, scope: !3298)
!3302 = !DILocation(line: 505, column: 29, scope: !3303)
!3303 = !DILexicalBlockFile(scope: !3298, file: !608, discriminator: 1)
!3304 = !DILocation(line: 505, column: 34, scope: !3298)
!3305 = !DILocation(line: 505, column: 42, scope: !3298)
!3306 = !DILocation(line: 505, column: 9, scope: !833)
!3307 = !DILocation(line: 506, column: 25, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3298, file: !608, line: 505, column: 48)
!3309 = !DILocation(line: 506, column: 9, scope: !3308)
!3310 = !DILocation(line: 507, column: 9, scope: !3308)
!3311 = !DILocation(line: 509, column: 9, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !833, file: !608, line: 509, column: 9)
!3313 = !DILocation(line: 509, column: 14, scope: !3312)
!3314 = !DILocation(line: 509, column: 21, scope: !3312)
!3315 = !DILocation(line: 509, column: 25, scope: !3312)
!3316 = !DILocation(line: 509, column: 28, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !3312, file: !608, discriminator: 1)
!3318 = !DILocation(line: 509, column: 33, scope: !3312)
!3319 = !DILocation(line: 509, column: 40, scope: !3312)
!3320 = !DILocation(line: 509, column: 9, scope: !833)
!3321 = !DILocation(line: 510, column: 25, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3312, file: !608, line: 509, column: 46)
!3323 = !DILocation(line: 510, column: 9, scope: !3322)
!3324 = !DILocation(line: 511, column: 9, scope: !3322)
!3325 = !DILocation(line: 513, column: 9, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !833, file: !608, line: 513, column: 9)
!3327 = !DILocation(line: 513, column: 14, scope: !3326)
!3328 = !DILocation(line: 513, column: 21, scope: !3326)
!3329 = !DILocation(line: 513, column: 25, scope: !3326)
!3330 = !DILocation(line: 513, column: 28, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !3326, file: !608, discriminator: 1)
!3332 = !DILocation(line: 513, column: 33, scope: !3326)
!3333 = !DILocation(line: 513, column: 40, scope: !3326)
!3334 = !DILocation(line: 513, column: 9, scope: !833)
!3335 = !DILocation(line: 514, column: 25, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3326, file: !608, line: 513, column: 46)
!3337 = !DILocation(line: 514, column: 9, scope: !3336)
!3338 = !DILocation(line: 515, column: 9, scope: !3336)
!3339 = !DILocation(line: 519, column: 9, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !833, file: !608, line: 519, column: 9)
!3341 = !DILocation(line: 519, column: 14, scope: !3340)
!3342 = !DILocation(line: 519, column: 22, scope: !3340)
!3343 = !DILocation(line: 519, column: 9, scope: !833)
!3344 = !DILocation(line: 520, column: 25, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3340, file: !608, line: 519, column: 27)
!3346 = !DILocation(line: 520, column: 9, scope: !3345)
!3347 = !DILocation(line: 521, column: 9, scope: !3345)
!3348 = !DILocation(line: 523, column: 9, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !833, file: !608, line: 523, column: 9)
!3350 = !DILocation(line: 523, column: 14, scope: !3349)
!3351 = !DILocation(line: 523, column: 22, scope: !3349)
!3352 = !DILocation(line: 523, column: 9, scope: !833)
!3353 = !DILocation(line: 524, column: 9, scope: !3349)
!3354 = !DILocation(line: 524, column: 14, scope: !3349)
!3355 = !DILocation(line: 524, column: 22, scope: !3349)
!3356 = !DILocation(line: 525, column: 14, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3349, file: !608, line: 525, column: 14)
!3358 = !DILocation(line: 525, column: 19, scope: !3357)
!3359 = !DILocation(line: 525, column: 27, scope: !3357)
!3360 = !DILocation(line: 525, column: 31, scope: !3357)
!3361 = !DILocation(line: 525, column: 34, scope: !3362)
!3362 = !DILexicalBlockFile(scope: !3357, file: !608, discriminator: 1)
!3363 = !DILocation(line: 525, column: 39, scope: !3357)
!3364 = !DILocation(line: 525, column: 47, scope: !3357)
!3365 = !DILocation(line: 525, column: 14, scope: !3349)
!3366 = !DILocation(line: 526, column: 25, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3357, file: !608, line: 525, column: 54)
!3368 = !DILocation(line: 526, column: 9, scope: !3367)
!3369 = !DILocation(line: 527, column: 9, scope: !3367)
!3370 = !DILocation(line: 529, column: 5, scope: !833)
!3371 = !DILocation(line: 530, column: 1, scope: !833)
!3372 = !DILocation(line: 754, column: 21, scope: !838)
!3373 = !DILocation(line: 767, column: 19, scope: !838)
!3374 = !DILocation(line: 767, column: 28, scope: !838)
!3375 = !DILocation(line: 767, column: 9, scope: !838)
!3376 = !DILocation(line: 768, column: 18, scope: !838)
!3377 = !DILocation(line: 768, column: 27, scope: !838)
!3378 = !DILocation(line: 768, column: 9, scope: !838)
!3379 = !DILocation(line: 769, column: 9, scope: !838)
!3380 = !DILocation(line: 769, column: 18, scope: !838)
!3381 = !DILocation(line: 769, column: 27, scope: !838)
!3382 = !DILocation(line: 769, column: 36, scope: !838)
!3383 = !DILocation(line: 770, column: 9, scope: !838)
!3384 = !DILocation(line: 770, column: 18, scope: !838)
!3385 = !DILocation(line: 770, column: 26, scope: !838)
!3386 = !DILocation(line: 770, column: 35, scope: !838)
!3387 = !DILocation(line: 771, column: 16, scope: !838)
!3388 = !DILocation(line: 771, column: 25, scope: !838)
!3389 = !DILocation(line: 771, column: 14, scope: !838)
!3390 = !DILocation(line: 765, column: 12, scope: !838)
!3391 = !DILocation(line: 765, column: 5, scope: !838)
!3392 = !DILocation(line: 914, column: 31, scope: !891)
!3393 = !DILocation(line: 996, column: 5, scope: !891)
!3394 = !DILocation(line: 996, column: 21, scope: !891)
!3395 = !DILocation(line: 1001, column: 5, scope: !891)
!3396 = !DILocation(line: 1001, column: 21, scope: !891)
!3397 = !DILocation(line: 1002, column: 5, scope: !891)
!3398 = !DILocation(line: 1002, column: 17, scope: !891)
!3399 = !DILocation(line: 1005, column: 9, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !891, file: !608, line: 1005, column: 9)
!3401 = !DILocation(line: 1005, column: 36, scope: !3400)
!3402 = !DILocation(line: 1005, column: 9, scope: !891)
!3403 = !DILocation(line: 1006, column: 28, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !608, line: 1005, column: 42)
!3405 = !DILocation(line: 1006, column: 9, scope: !3404)
!3406 = !DILocation(line: 1007, column: 9, scope: !3404)
!3407 = !DILocation(line: 1010, column: 9, scope: !900)
!3408 = !DILocation(line: 1010, column: 9, scope: !891)
!3409 = !DILocation(line: 1011, column: 9, scope: !899)
!3410 = !DILocation(line: 1011, column: 25, scope: !899)
!3411 = !DILocation(line: 1012, column: 9, scope: !899)
!3412 = !DILocation(line: 1012, column: 15, scope: !899)
!3413 = !DILocation(line: 1012, column: 25, scope: !899)
!3414 = !DILocation(line: 1013, column: 32, scope: !899)
!3415 = !DILocation(line: 1013, column: 9, scope: !899)
!3416 = !DILocation(line: 1013, column: 15, scope: !899)
!3417 = !DILocation(line: 1013, column: 30, scope: !899)
!3418 = !DILocation(line: 1014, column: 9, scope: !899)
!3419 = !DILocation(line: 1014, column: 15, scope: !899)
!3420 = !DILocation(line: 1014, column: 26, scope: !899)
!3421 = !DILocation(line: 1015, column: 13, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !899, file: !608, line: 1015, column: 13)
!3423 = !DILocation(line: 1015, column: 40, scope: !3422)
!3424 = !DILocation(line: 1015, column: 13, scope: !899)
!3425 = !DILocation(line: 1016, column: 36, scope: !3422)
!3426 = !DILocation(line: 1016, column: 32, scope: !3422)
!3427 = !DILocation(line: 1016, column: 49, scope: !3422)
!3428 = !DILocation(line: 1016, column: 45, scope: !3422)
!3429 = !DILocation(line: 1016, column: 57, scope: !3422)
!3430 = !DILocation(line: 1016, column: 43, scope: !3422)
!3431 = !DILocation(line: 1016, column: 13, scope: !3422)
!3432 = !DILocation(line: 1016, column: 19, scope: !3422)
!3433 = !DILocation(line: 1016, column: 30, scope: !3422)
!3434 = !DILocation(line: 1018, column: 13, scope: !3422)
!3435 = !DILocation(line: 1018, column: 19, scope: !3422)
!3436 = !DILocation(line: 1018, column: 30, scope: !3422)
!3437 = !DILocation(line: 1019, column: 5, scope: !900)
!3438 = !DILocation(line: 1019, column: 5, scope: !899)
!3439 = !DILocation(line: 1020, column: 34, scope: !891)
!3440 = !DILocation(line: 1020, column: 31, scope: !891)
!3441 = !DILocation(line: 1020, column: 46, scope: !891)
!3442 = !DILocation(line: 1020, column: 43, scope: !891)
!3443 = !DILocation(line: 1020, column: 54, scope: !891)
!3444 = !DILocation(line: 1020, column: 41, scope: !891)
!3445 = !DILocation(line: 1020, column: 12, scope: !891)
!3446 = !DILocation(line: 1020, column: 5, scope: !891)
!3447 = !DILocation(line: 1022, column: 1, scope: !891)
!3448 = !DILocation(line: 1082, column: 35, scope: !905)
!3449 = !DILocation(line: 1112, column: 5, scope: !905)
!3450 = !DILocation(line: 1112, column: 19, scope: !905)
!3451 = !DILocation(line: 1115, column: 5, scope: !905)
!3452 = !DILocation(line: 1115, column: 16, scope: !905)
!3453 = !DILocation(line: 1121, column: 5, scope: !905)
!3454 = !DILocation(line: 1121, column: 21, scope: !905)
!3455 = !DILocation(line: 1126, column: 5, scope: !905)
!3456 = !DILocation(line: 1126, column: 21, scope: !905)
!3457 = !DILocation(line: 1127, column: 5, scope: !905)
!3458 = !DILocation(line: 1127, column: 17, scope: !905)
!3459 = !DILocation(line: 1130, column: 9, scope: !998)
!3460 = !DILocation(line: 1130, column: 36, scope: !998)
!3461 = !DILocation(line: 1130, column: 9, scope: !905)
!3462 = !DILocation(line: 1131, column: 13, scope: !996)
!3463 = !DILocation(line: 1131, column: 13, scope: !997)
!3464 = !DILocation(line: 1132, column: 13, scope: !995)
!3465 = !DILocation(line: 1132, column: 29, scope: !995)
!3466 = !DILocation(line: 1133, column: 36, scope: !995)
!3467 = !DILocation(line: 1133, column: 13, scope: !995)
!3468 = !DILocation(line: 1133, column: 19, scope: !995)
!3469 = !DILocation(line: 1133, column: 34, scope: !995)
!3470 = !DILocation(line: 1134, column: 13, scope: !995)
!3471 = !DILocation(line: 1134, column: 19, scope: !995)
!3472 = !DILocation(line: 1134, column: 29, scope: !995)
!3473 = !DILocation(line: 1135, column: 13, scope: !995)
!3474 = !DILocation(line: 1135, column: 19, scope: !995)
!3475 = !DILocation(line: 1135, column: 30, scope: !995)
!3476 = !DILocation(line: 1136, column: 17, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !995, file: !608, line: 1136, column: 17)
!3478 = !DILocation(line: 1136, column: 44, scope: !3477)
!3479 = !DILocation(line: 1136, column: 17, scope: !995)
!3480 = !DILocation(line: 1137, column: 40, scope: !3477)
!3481 = !DILocation(line: 1137, column: 36, scope: !3477)
!3482 = !DILocation(line: 1137, column: 53, scope: !3477)
!3483 = !DILocation(line: 1137, column: 49, scope: !3477)
!3484 = !DILocation(line: 1137, column: 61, scope: !3477)
!3485 = !DILocation(line: 1137, column: 47, scope: !3477)
!3486 = !DILocation(line: 1137, column: 17, scope: !3477)
!3487 = !DILocation(line: 1137, column: 23, scope: !3477)
!3488 = !DILocation(line: 1137, column: 34, scope: !3477)
!3489 = !DILocation(line: 1139, column: 17, scope: !3477)
!3490 = !DILocation(line: 1139, column: 23, scope: !3477)
!3491 = !DILocation(line: 1139, column: 34, scope: !3477)
!3492 = !DILocation(line: 1140, column: 9, scope: !996)
!3493 = !DILocation(line: 1140, column: 9, scope: !995)
!3494 = !DILocation(line: 1141, column: 38, scope: !997)
!3495 = !DILocation(line: 1141, column: 35, scope: !997)
!3496 = !DILocation(line: 1141, column: 50, scope: !997)
!3497 = !DILocation(line: 1141, column: 47, scope: !997)
!3498 = !DILocation(line: 1141, column: 58, scope: !997)
!3499 = !DILocation(line: 1141, column: 45, scope: !997)
!3500 = !DILocation(line: 1141, column: 16, scope: !997)
!3501 = !DILocation(line: 1141, column: 9, scope: !997)
!3502 = !DILocation(line: 1146, column: 9, scope: !1001)
!3503 = !DILocation(line: 1146, column: 37, scope: !1001)
!3504 = !DILocation(line: 1146, column: 9, scope: !905)
!3505 = !DILocation(line: 1147, column: 9, scope: !1000)
!3506 = !DILocation(line: 1147, column: 16, scope: !1000)
!3507 = !DILocation(line: 1148, column: 20, scope: !1000)
!3508 = !DILocation(line: 1148, column: 29, scope: !1000)
!3509 = !{!3510, !1284, i64 0}
!3510 = !{!"rusage", !2814, i64 0, !2814, i64 16, !1260, i64 32, !1260, i64 40, !1260, i64 48, !1260, i64 56, !1260, i64 64, !1260, i64 72, !1260, i64 80, !1260, i64 88, !1260, i64 96, !1260, i64 104, !1260, i64 112, !1260, i64 120, !1260, i64 128, !1260, i64 136}
!3511 = !DILocation(line: 1148, column: 17, scope: !1000)
!3512 = !DILocation(line: 1148, column: 41, scope: !1000)
!3513 = !DILocation(line: 1148, column: 50, scope: !1000)
!3514 = !{!3510, !1284, i64 8}
!3515 = !DILocation(line: 1148, column: 38, scope: !1000)
!3516 = !DILocation(line: 1148, column: 58, scope: !1000)
!3517 = !DILocation(line: 1148, column: 36, scope: !1000)
!3518 = !DILocation(line: 1148, column: 15, scope: !1000)
!3519 = !DILocation(line: 1149, column: 21, scope: !1000)
!3520 = !DILocation(line: 1149, column: 30, scope: !1000)
!3521 = !{!3510, !1284, i64 16}
!3522 = !DILocation(line: 1149, column: 18, scope: !1000)
!3523 = !DILocation(line: 1149, column: 42, scope: !1000)
!3524 = !DILocation(line: 1149, column: 51, scope: !1000)
!3525 = !{!3510, !1284, i64 24}
!3526 = !DILocation(line: 1149, column: 39, scope: !1000)
!3527 = !DILocation(line: 1149, column: 59, scope: !1000)
!3528 = !DILocation(line: 1149, column: 37, scope: !1000)
!3529 = !DILocation(line: 1149, column: 15, scope: !1000)
!3530 = !DILocation(line: 1150, column: 13, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !1000, file: !608, line: 1150, column: 13)
!3532 = !DILocation(line: 1150, column: 13, scope: !1000)
!3533 = !DILocation(line: 1151, column: 13, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3531, file: !608, line: 1150, column: 19)
!3535 = !DILocation(line: 1151, column: 19, scope: !3534)
!3536 = !DILocation(line: 1151, column: 34, scope: !3534)
!3537 = !DILocation(line: 1152, column: 13, scope: !3534)
!3538 = !DILocation(line: 1152, column: 19, scope: !3534)
!3539 = !DILocation(line: 1152, column: 29, scope: !3534)
!3540 = !DILocation(line: 1153, column: 13, scope: !3534)
!3541 = !DILocation(line: 1153, column: 19, scope: !3534)
!3542 = !DILocation(line: 1153, column: 30, scope: !3534)
!3543 = !DILocation(line: 1154, column: 13, scope: !3534)
!3544 = !DILocation(line: 1154, column: 19, scope: !3534)
!3545 = !DILocation(line: 1154, column: 30, scope: !3534)
!3546 = !DILocation(line: 1155, column: 9, scope: !3534)
!3547 = !DILocation(line: 1156, column: 35, scope: !1000)
!3548 = !DILocation(line: 1156, column: 16, scope: !1000)
!3549 = !DILocation(line: 1156, column: 9, scope: !1000)
!3550 = !DILocation(line: 1157, column: 5, scope: !1001)
!3551 = !DILocation(line: 1161, column: 9, scope: !1004)
!3552 = !DILocation(line: 1161, column: 19, scope: !1004)
!3553 = !DILocation(line: 1161, column: 9, scope: !905)
!3554 = !DILocation(line: 1162, column: 9, scope: !1003)
!3555 = !DILocation(line: 1162, column: 16, scope: !1003)
!3556 = !DILocation(line: 1164, column: 13, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !1003, file: !608, line: 1164, column: 13)
!3558 = !DILocation(line: 1164, column: 30, scope: !3557)
!3559 = !DILocation(line: 1164, column: 13, scope: !1003)
!3560 = !DILocation(line: 1166, column: 32, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3557, file: !608, line: 1164, column: 37)
!3562 = !DILocation(line: 1166, column: 30, scope: !3561)
!3563 = !DILocation(line: 1167, column: 17, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3561, file: !608, line: 1167, column: 17)
!3565 = !DILocation(line: 1167, column: 34, scope: !3564)
!3566 = !DILocation(line: 1167, column: 17, scope: !3561)
!3567 = !DILocation(line: 1168, column: 34, scope: !3564)
!3568 = !DILocation(line: 1168, column: 17, scope: !3564)
!3569 = !DILocation(line: 1174, column: 9, scope: !3561)
!3570 = !DILocation(line: 1176, column: 13, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !1003, file: !608, line: 1176, column: 13)
!3572 = !DILocation(line: 1176, column: 30, scope: !3571)
!3573 = !DILocation(line: 1176, column: 13, scope: !1003)
!3574 = !DILocation(line: 1177, column: 31, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3571, file: !608, line: 1176, column: 37)
!3576 = !{!3577, !1284, i64 0}
!3577 = !{!"tms", !1284, i64 0, !1284, i64 8, !1284, i64 16, !1284, i64 24}
!3578 = !DILocation(line: 1177, column: 21, scope: !3575)
!3579 = !DILocation(line: 1177, column: 43, scope: !3575)
!3580 = !DILocation(line: 1177, column: 41, scope: !3575)
!3581 = !DILocation(line: 1177, column: 19, scope: !3575)
!3582 = !DILocation(line: 1178, column: 32, scope: !3575)
!3583 = !{!3577, !1284, i64 8}
!3584 = !DILocation(line: 1178, column: 22, scope: !3575)
!3585 = !DILocation(line: 1178, column: 44, scope: !3575)
!3586 = !DILocation(line: 1178, column: 42, scope: !3575)
!3587 = !DILocation(line: 1178, column: 19, scope: !3575)
!3588 = !DILocation(line: 1179, column: 17, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3575, file: !608, line: 1179, column: 17)
!3590 = !DILocation(line: 1179, column: 17, scope: !3575)
!3591 = !DILocation(line: 1180, column: 17, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !608, line: 1179, column: 23)
!3593 = !DILocation(line: 1180, column: 23, scope: !3592)
!3594 = !DILocation(line: 1180, column: 38, scope: !3592)
!3595 = !DILocation(line: 1181, column: 17, scope: !3592)
!3596 = !DILocation(line: 1181, column: 23, scope: !3592)
!3597 = !DILocation(line: 1181, column: 33, scope: !3592)
!3598 = !DILocation(line: 1182, column: 17, scope: !3592)
!3599 = !DILocation(line: 1182, column: 23, scope: !3592)
!3600 = !DILocation(line: 1182, column: 34, scope: !3592)
!3601 = !DILocation(line: 1183, column: 42, scope: !3592)
!3602 = !DILocation(line: 1183, column: 40, scope: !3592)
!3603 = !DILocation(line: 1183, column: 17, scope: !3592)
!3604 = !DILocation(line: 1183, column: 23, scope: !3592)
!3605 = !DILocation(line: 1183, column: 34, scope: !3592)
!3606 = !DILocation(line: 1184, column: 13, scope: !3592)
!3607 = !DILocation(line: 1185, column: 39, scope: !3575)
!3608 = !DILocation(line: 1185, column: 20, scope: !3575)
!3609 = !DILocation(line: 1185, column: 13, scope: !3575)
!3610 = !DILocation(line: 1187, column: 5, scope: !1004)
!3611 = !DILocation(line: 1187, column: 5, scope: !3612)
!3612 = !DILexicalBlockFile(scope: !1004, file: !608, discriminator: 1)
!3613 = !DILocation(line: 1187, column: 5, scope: !1003)
!3614 = !DILocation(line: 1190, column: 23, scope: !905)
!3615 = !DILocation(line: 1190, column: 12, scope: !905)
!3616 = !DILocation(line: 1190, column: 5, scope: !905)
!3617 = !DILocation(line: 1192, column: 1, scope: !905)
!3618 = !DILocation(line: 1037, column: 32, scope: !1009)
!3619 = !DILocation(line: 1040, column: 5, scope: !1009)
!3620 = !DILocation(line: 1040, column: 15, scope: !1009)
!3621 = !DILocation(line: 1058, column: 9, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !1009, file: !608, line: 1058, column: 9)
!3623 = !DILocation(line: 1058, column: 9, scope: !1009)
!3624 = !DILocation(line: 1059, column: 27, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3622, file: !608, line: 1058, column: 24)
!3626 = !DILocation(line: 1059, column: 15, scope: !3625)
!3627 = !DILocation(line: 1059, column: 13, scope: !3625)
!3628 = !DILocation(line: 1060, column: 13, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !608, line: 1060, column: 13)
!3630 = !DILocation(line: 1060, column: 17, scope: !3629)
!3631 = !DILocation(line: 1060, column: 13, scope: !3625)
!3632 = !DILocation(line: 1061, column: 20, scope: !3629)
!3633 = !DILocation(line: 1061, column: 13, scope: !3629)
!3634 = !DILocation(line: 1062, column: 23, scope: !3625)
!3635 = !DILocation(line: 1063, column: 9, scope: !3625)
!3636 = !DILocation(line: 1064, column: 5, scope: !3625)
!3637 = !DILocation(line: 1067, column: 22, scope: !1009)
!3638 = !DILocation(line: 1067, column: 12, scope: !1009)
!3639 = !DILocation(line: 1067, column: 5, scope: !1009)
!3640 = !DILocation(line: 1068, column: 1, scope: !1009)
