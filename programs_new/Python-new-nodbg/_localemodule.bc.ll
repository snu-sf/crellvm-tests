; ModuleID = './_localemodule.bc'
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
%struct.langinfo_constant = type { i8*, i32 }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@_localemodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @locale__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([12 x %struct.PyMethodDef], [12 x %struct.PyMethodDef]* @PyLocale_Methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LC_TIME\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LC_COLLATE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"LC_MONETARY\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"LC_NUMERIC\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CHAR_MAX\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"locale.Error\00", align 1
@Error = internal global %struct._object* null, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@langinfo_constants = internal global [57 x %struct.langinfo_constant] [%struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 131079 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 131080 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 131081 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 131082 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 131083 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 131084 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 131085 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i32 131072 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 131073 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 131074 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i32 131075 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i32 131076 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 131077 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 131078 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 131098 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 131099 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 131100 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 131101 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 131102 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 131103 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 131104 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i32 131105 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i32 131106 }, %struct.langinfo_constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 131107 }, %struct.langinfo_constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 131108 }, %struct.langinfo_constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 131109 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i32 131086 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i32 131087 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i32 131088 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i32 131089 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i32 131090 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i32 131091 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 131092 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i32 131093 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 131094 }, %struct.langinfo_constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i32 131095 }, %struct.langinfo_constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i32 131096 }, %struct.langinfo_constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i32 131097 }, %struct.langinfo_constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 65536 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i32 65537 }, %struct.langinfo_constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i32 262159 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i32 131112 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i32 131113 }, %struct.langinfo_constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0), i32 131114 }, %struct.langinfo_constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 131110 }, %struct.langinfo_constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i32 131111 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i32 14 }, %struct.langinfo_constant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i32 131115 }, %struct.langinfo_constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0), i32 131116 }, %struct.langinfo_constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i32 131118 }, %struct.langinfo_constant { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0), i32 131120 }, %struct.langinfo_constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i32 131121 }, %struct.langinfo_constant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), i32 131119 }, %struct.langinfo_constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i32 327680 }, %struct.langinfo_constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i32 327681 }, %struct.langinfo_constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i32 131180 }, %struct.langinfo_constant zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"_locale\00", align 1
@locale__doc__ = internal global [27 x i8] c"Support for POSIX locales.\00", align 16
@PyLocale_Methods = internal global [12 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyLocale_setlocale, i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @setlocale__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyLocale_localeconv to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @localeconv__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyLocale_strcoll, i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @strcoll__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyLocale_strxfrm, i32 1, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @strxfrm__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyLocale_nl_langinfo, i32 1, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @nl_langinfo__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyIntl_gettext, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @gettext__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyIntl_dgettext, i32 1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @dgettext__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyIntl_dcgettext, i32 1, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @dcgettext__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyIntl_textdomain, i32 1, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @textdomain__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyIntl_bindtextdomain, i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @bindtextdomain__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyIntl_bind_textdomain_codeset, i32 1, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @bind_textdomain_codeset__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [10 x i8] c"setlocale\00", align 1
@setlocale__doc__ = internal global [70 x i8] c"(integer,string=None) -> string. Activates/queries locale processing.\00", align 16
@.str.12 = private unnamed_addr constant [11 x i8] c"localeconv\00", align 1
@localeconv__doc__ = internal global [69 x i8] c"() -> dict. Returns numeric and monetary locale-specific parameters.\00", align 16
@.str.13 = private unnamed_addr constant [8 x i8] c"strcoll\00", align 1
@strcoll__doc__ = internal global [68 x i8] c"string,string -> int. Compares two strings according to the locale.\00", align 16
@.str.14 = private unnamed_addr constant [8 x i8] c"strxfrm\00", align 1
@strxfrm__doc__ = internal global [100 x i8] c"strxfrm(string) -> string.\0A\0AReturn a string that can be used as a key for locale-aware comparisons.\00", align 16
@.str.15 = private unnamed_addr constant [12 x i8] c"nl_langinfo\00", align 1
@nl_langinfo__doc__ = internal global [92 x i8] c"nl_langinfo(key) -> string\0AReturn the value for the locale information associated with key.\00", align 16
@.str.16 = private unnamed_addr constant [8 x i8] c"gettext\00", align 1
@gettext__doc__ = internal global [50 x i8] c"gettext(msg) -> string\0AReturn translation of msg.\00", align 16
@.str.17 = private unnamed_addr constant [9 x i8] c"dgettext\00", align 1
@dgettext__doc__ = internal global [69 x i8] c"dgettext(domain, msg) -> string\0AReturn translation of msg in domain.\00", align 16
@.str.18 = private unnamed_addr constant [10 x i8] c"dcgettext\00", align 1
@dcgettext__doc__ = internal global [93 x i8] c"dcgettext(domain, msg, category) -> string\0AReturn translation of msg in domain and category.\00", align 16
@.str.19 = private unnamed_addr constant [11 x i8] c"textdomain\00", align 1
@textdomain__doc__ = internal global [96 x i8] c"textdomain(domain) -> string\0ASet the C library's textdmain to domain, returning the new domain.\00", align 16
@.str.20 = private unnamed_addr constant [15 x i8] c"bindtextdomain\00", align 1
@bindtextdomain__doc__ = internal global [74 x i8] c"bindtextdomain(domain, dir) -> string\0ABind the C library's domain to dir.\00", align 16
@.str.21 = private unnamed_addr constant [24 x i8] c"bind_textdomain_codeset\00", align 1
@bind_textdomain_codeset__doc__ = internal global [91 x i8] c"bind_textdomain_codeset(domain, codeset) -> string\0ABind the C library's domain to codeset.\00", align 16
@.str.22 = private unnamed_addr constant [14 x i8] c"i|z:setlocale\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"unsupported locale setting\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"locale query failed\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"decimal_point\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"thousands_sep\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"grouping\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"int_curr_symbol\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"currency_symbol\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"mon_decimal_point\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"mon_thousands_sep\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"mon_grouping\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"positive_sign\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"negative_sign\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"int_frac_digits\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"frac_digits\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"p_cs_precedes\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"p_sep_by_space\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"n_cs_precedes\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"n_sep_by_space\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"p_sign_posn\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"n_sign_posn\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"UU:strcoll\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"U:strxfrm\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"i:nl_langinfo\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.47 = private unnamed_addr constant [30 x i8] c"unsupported langinfo constant\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"zs\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"zsi\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@.str.52 = private unnamed_addr constant [3 x i8] c"sO\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"domain must be a non-empty string\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.54 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"DAY_1\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"DAY_2\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"DAY_3\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"DAY_4\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"DAY_5\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"DAY_6\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"DAY_7\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"ABDAY_1\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"ABDAY_2\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"ABDAY_3\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"ABDAY_4\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"ABDAY_5\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"ABDAY_6\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"ABDAY_7\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"MON_1\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"MON_2\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"MON_3\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"MON_4\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"MON_5\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"MON_6\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"MON_7\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"MON_8\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"MON_9\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"MON_10\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"MON_11\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"MON_12\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"ABMON_1\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"ABMON_2\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"ABMON_3\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"ABMON_4\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"ABMON_5\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"ABMON_6\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"ABMON_7\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"ABMON_8\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"ABMON_9\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"ABMON_10\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"ABMON_11\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"ABMON_12\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"RADIXCHAR\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"THOUSEP\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"CRNCYSTR\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"D_T_FMT\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"D_FMT\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"T_FMT\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"AM_STR\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"PM_STR\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"CODESET\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"T_FMT_AMPM\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"ERA\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"ERA_D_FMT\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"ERA_D_T_FMT\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"ERA_T_FMT\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"ALT_DIGITS\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"YESEXPR\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"NOEXPR\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"_DATE_FMT\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__locale() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_xdecref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_xdecref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_xdecref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %_py_xdecref_tmp91 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_xdecref_tmp110 = alloca %struct._object*, align 8
  %_py_decref_tmp114 = alloca %struct._object*, align 8
  %_py_xdecref_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_localemodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %d, align 8
  %call2 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call2, %struct._object** %x, align 8
  %2 = load %struct._object*, %struct._object** %d, align 8
  %3 = load %struct._object*, %struct._object** %x, align 8
  %call3 = call i32 @PyDict_SetItemString(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._object* %3)
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp4 = icmp ne %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9

if.else:                                          ; preds = %do.body.6
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %call12 = call %struct._object* @PyLong_FromLong(i64 2)
  store %struct._object* %call12, %struct._object** %x, align 8
  %13 = load %struct._object*, %struct._object** %d, align 8
  %14 = load %struct._object*, %struct._object** %x, align 8
  %call13 = call i32 @PyDict_SetItemString(%struct._object* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct._object* %14)
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.11
  %15 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp15, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp15, align 8
  %cmp16 = icmp ne %struct._object* %16, null
  br i1 %cmp16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %do.body.14
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp15, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp19, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %19, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %22(%struct._object* %23)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %do.body.14
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %call31 = call %struct._object* @PyLong_FromLong(i64 3)
  store %struct._object* %call31, %struct._object** %x, align 8
  %24 = load %struct._object*, %struct._object** %d, align 8
  %25 = load %struct._object*, %struct._object** %x, align 8
  %call32 = call i32 @PyDict_SetItemString(%struct._object* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._object* %25)
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.30
  %26 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp34, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp34, align 8
  %cmp35 = icmp ne %struct._object* %27, null
  br i1 %cmp35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %do.body.33
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp34, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp38, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %30, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %33(%struct._object* %34)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %do.body.33
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %call50 = call %struct._object* @PyLong_FromLong(i64 4)
  store %struct._object* %call50, %struct._object** %x, align 8
  %35 = load %struct._object*, %struct._object** %d, align 8
  %36 = load %struct._object*, %struct._object** %x, align 8
  %call51 = call i32 @PyDict_SetItemString(%struct._object* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct._object* %36)
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.49
  %37 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp53, align 8
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8
  %cmp54 = icmp ne %struct._object* %38, null
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %do.body.52
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp57, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %41, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %44(%struct._object* %45)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.body.52
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  %call69 = call %struct._object* @PyLong_FromLong(i64 5)
  store %struct._object* %call69, %struct._object** %x, align 8
  %46 = load %struct._object*, %struct._object** %d, align 8
  %47 = load %struct._object*, %struct._object** %x, align 8
  %call70 = call i32 @PyDict_SetItemString(%struct._object* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct._object* %47)
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.68
  %48 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %48, %struct._object** %_py_xdecref_tmp72, align 8
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp72, align 8
  %cmp73 = icmp ne %struct._object* %49, null
  br i1 %cmp73, label %if.then.74, label %if.end.86

if.then.74:                                       ; preds = %do.body.71
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.74
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp72, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp76, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %52, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.75
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %55(%struct._object* %56)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %do.body.71
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  %call88 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call88, %struct._object** %x, align 8
  %57 = load %struct._object*, %struct._object** %d, align 8
  %58 = load %struct._object*, %struct._object** %x, align 8
  %call89 = call i32 @PyDict_SetItemString(%struct._object* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._object* %58)
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.87
  %59 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %59, %struct._object** %_py_xdecref_tmp91, align 8
  %60 = load %struct._object*, %struct._object** %_py_xdecref_tmp91, align 8
  %cmp92 = icmp ne %struct._object* %60, null
  br i1 %cmp92, label %if.then.93, label %if.end.105

if.then.93:                                       ; preds = %do.body.90
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp91, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp95, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %63, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.94
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.94
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %66(%struct._object* %67)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  br label %if.end.105

if.end.105:                                       ; preds = %do.end.104, %do.body.90
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  %call107 = call %struct._object* @PyLong_FromLong(i64 6)
  store %struct._object* %call107, %struct._object** %x, align 8
  %68 = load %struct._object*, %struct._object** %d, align 8
  %69 = load %struct._object*, %struct._object** %x, align 8
  %call108 = call i32 @PyDict_SetItemString(%struct._object* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct._object* %69)
  br label %do.body.109

do.body.109:                                      ; preds = %do.end.106
  %70 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %70, %struct._object** %_py_xdecref_tmp110, align 8
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp110, align 8
  %cmp111 = icmp ne %struct._object* %71, null
  br i1 %cmp111, label %if.then.112, label %if.end.124

if.then.112:                                      ; preds = %do.body.109
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp110, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp114, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt115, align 8
  %dec116 = add i64 %74, -1
  store i64 %dec116, i64* %ob_refcnt115, align 8
  %cmp117 = icmp ne i64 %dec116, 0
  br i1 %cmp117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %do.body.113
  br label %if.end.122

if.else.119:                                      ; preds = %do.body.113
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  call void %77(%struct._object* %78)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  br label %if.end.124

if.end.124:                                       ; preds = %do.end.123, %do.body.109
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  %call126 = call %struct._object* @PyLong_FromLong(i64 127)
  store %struct._object* %call126, %struct._object** %x, align 8
  %79 = load %struct._object*, %struct._object** %d, align 8
  %80 = load %struct._object*, %struct._object** %x, align 8
  %call127 = call i32 @PyDict_SetItemString(%struct._object* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct._object* %80)
  br label %do.body.128

do.body.128:                                      ; preds = %do.end.125
  %81 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %81, %struct._object** %_py_xdecref_tmp129, align 8
  %82 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8
  %cmp130 = icmp ne %struct._object* %82, null
  br i1 %cmp130, label %if.then.131, label %if.end.143

if.then.131:                                      ; preds = %do.body.128
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp133, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt134, align 8
  %dec135 = add i64 %85, -1
  store i64 %dec135, i64* %ob_refcnt134, align 8
  %cmp136 = icmp ne i64 %dec135, 0
  br i1 %cmp136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.132
  br label %if.end.141

if.else.138:                                      ; preds = %do.body.132
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  call void %88(%struct._object* %89)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %do.body.128
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  %call145 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call145, %struct._object** @Error, align 8
  %90 = load %struct._object*, %struct._object** %d, align 8
  %91 = load %struct._object*, %struct._object** @Error, align 8
  %call146 = call i32 @PyDict_SetItemString(%struct._object* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* %91)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.144
  %92 = load i32, i32* %i, align 4
  %idxprom = sext i32 %92 to i64
  %arrayidx = getelementptr [57 x %struct.langinfo_constant], [57 x %struct.langinfo_constant]* @langinfo_constants, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.langinfo_constant, %struct.langinfo_constant* %arrayidx, i32 0, i32 0
  %93 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %93, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = load %struct._object*, %struct._object** %m, align 8
  %95 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %95 to i64
  %arrayidx148 = getelementptr [57 x %struct.langinfo_constant], [57 x %struct.langinfo_constant]* @langinfo_constants, i32 0, i64 %idxprom147
  %name149 = getelementptr inbounds %struct.langinfo_constant, %struct.langinfo_constant* %arrayidx148, i32 0, i32 0
  %96 = load i8*, i8** %name149, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %97 to i64
  %arrayidx151 = getelementptr [57 x %struct.langinfo_constant], [57 x %struct.langinfo_constant]* @langinfo_constants, i32 0, i64 %idxprom150
  %value = getelementptr inbounds %struct.langinfo_constant, %struct.langinfo_constant* %arrayidx151, i32 0, i32 1
  %98 = load i32, i32* %value, align 4
  %conv = sext i32 %98 to i64
  %call152 = call i32 @PyModule_AddIntConstant(%struct._object* %94, i8* %96, i64 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %99 = load i32, i32* %i, align 4
  %inc = add i32 %99, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %100 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %100, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %101 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %101
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyLocale_setlocale(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %category = alloca i32, align 4
  %locale = alloca i8*, align 8
  %result = alloca i8*, align 8
  %result_object = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %locale, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i32* %category, i8** %locale)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %locale, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* %category, align 4
  %3 = load i8*, i8** %locale, align 8
  %call3 = call i8* @setlocale(i32 %2, i8* %3) #4
  store i8* %call3, i8** %result, align 8
  %4 = load i8*, i8** %result, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  %5 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  %6 = load i8*, i8** %result, align 8
  %call7 = call %struct._object* @PyUnicode_DecodeLocale(i8* %6, i8* null)
  store %struct._object* %call7, %struct._object** %result_object, align 8
  %7 = load %struct._object*, %struct._object** %result_object, align 8
  %tobool8 = icmp ne %struct._object* %7, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %category, align 4
  %call11 = call i8* @setlocale(i32 %8, i8* null) #4
  store i8* %call11, i8** %result, align 8
  %9 = load i8*, i8** %result, align 8
  %tobool12 = icmp ne i8* %9, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else
  %10 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  %11 = load i8*, i8** %result, align 8
  %call15 = call %struct._object* @PyUnicode_DecodeLocale(i8* %11, i8* null)
  store %struct._object* %call15, %struct._object** %result_object, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.14, %if.end.10
  %12 = load %struct._object*, %struct._object** %result_object, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.then.9, %if.then.5, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyLocale_localeconv(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %l = alloca %struct.lconv*, align 8
  %x = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  %_py_decref_tmp149 = alloca %struct._object*, align 8
  %_py_decref_tmp171 = alloca %struct._object*, align 8
  %_py_decref_tmp183 = alloca %struct._object*, align 8
  %_py_decref_tmp205 = alloca %struct._object*, align 8
  %_py_decref_tmp217 = alloca %struct._object*, align 8
  %_py_decref_tmp238 = alloca %struct._object*, align 8
  %_py_decref_tmp250 = alloca %struct._object*, align 8
  %_py_decref_tmp271 = alloca %struct._object*, align 8
  %_py_decref_tmp283 = alloca %struct._object*, align 8
  %_py_decref_tmp305 = alloca %struct._object*, align 8
  %_py_decref_tmp317 = alloca %struct._object*, align 8
  %_py_decref_tmp341 = alloca %struct._object*, align 8
  %_py_decref_tmp354 = alloca %struct._object*, align 8
  %_py_decref_tmp380 = alloca %struct._object*, align 8
  %_py_decref_tmp393 = alloca %struct._object*, align 8
  %_py_decref_tmp419 = alloca %struct._object*, align 8
  %_py_decref_tmp432 = alloca %struct._object*, align 8
  %_py_decref_tmp458 = alloca %struct._object*, align 8
  %_py_decref_tmp471 = alloca %struct._object*, align 8
  %_py_decref_tmp497 = alloca %struct._object*, align 8
  %_py_decref_tmp510 = alloca %struct._object*, align 8
  %_py_decref_tmp536 = alloca %struct._object*, align 8
  %_py_decref_tmp549 = alloca %struct._object*, align 8
  %_py_decref_tmp575 = alloca %struct._object*, align 8
  %_py_decref_tmp588 = alloca %struct._object*, align 8
  %_py_decref_tmp614 = alloca %struct._object*, align 8
  %_py_decref_tmp627 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp645 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.lconv* @localeconv() #4
  store %struct.lconv* %call1, %struct.lconv** %l, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.lconv*, %struct.lconv** %l, align 8
  %decimal_point = getelementptr inbounds %struct.lconv, %struct.lconv* %1, i32 0, i32 0
  %2 = load i8*, i8** %decimal_point, align 8
  %call2 = call %struct._object* @PyUnicode_DecodeLocale(i8* %2, i8* null)
  store %struct._object* %call2, %struct._object** %x, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  %3 = load %struct._object*, %struct._object** %x, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body.3
  br label %failed

if.end.5:                                         ; preds = %do.body.3
  %4 = load %struct._object*, %struct._object** %result, align 8
  %5 = load %struct._object*, %struct._object** %x, align 8
  %call6 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), %struct._object* %5)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.5
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %6 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body.9
  br label %if.end.12

if.else:                                          ; preds = %do.body.9
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %failed

if.end.13:                                        ; preds = %if.end.5
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.13
  %13 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp15, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %15, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %18(%struct._object* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %20 = load %struct.lconv*, %struct.lconv** %l, align 8
  %thousands_sep = getelementptr inbounds %struct.lconv, %struct.lconv* %20, i32 0, i32 1
  %21 = load i8*, i8** %thousands_sep, align 8
  %call28 = call %struct._object* @PyUnicode_DecodeLocale(i8* %21, i8* null)
  store %struct._object* %call28, %struct._object** %x, align 8
  br label %do.body.29

do.body.29:                                       ; preds = %do.body.27
  %22 = load %struct._object*, %struct._object** %x, align 8
  %cmp30 = icmp eq %struct._object* %22, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.body.29
  br label %failed

if.end.32:                                        ; preds = %do.body.29
  %23 = load %struct._object*, %struct._object** %result, align 8
  %24 = load %struct._object*, %struct._object** %x, align 8
  %call33 = call i32 @PyDict_SetItemString(%struct._object* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), %struct._object* %24)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %if.end.32
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %25 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp37, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %27, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %30(%struct._object* %31)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %failed

if.end.47:                                        ; preds = %if.end.32
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.47
  %32 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp49, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %34, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %37(%struct._object* %38)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %do.end.59

do.end.59:                                        ; preds = %do.end.58
  br label %do.end.60

do.end.60:                                        ; preds = %do.end.59
  %39 = load %struct.lconv*, %struct.lconv** %l, align 8
  %grouping = getelementptr inbounds %struct.lconv, %struct.lconv* %39, i32 0, i32 2
  %40 = load i8*, i8** %grouping, align 8
  %call61 = call %struct._object* @copy_grouping(i8* %40)
  store %struct._object* %call61, %struct._object** %x, align 8
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.60
  %41 = load %struct._object*, %struct._object** %x, align 8
  %cmp63 = icmp eq %struct._object* %41, null
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %do.body.62
  br label %failed

if.end.65:                                        ; preds = %do.body.62
  %42 = load %struct._object*, %struct._object** %result, align 8
  %43 = load %struct._object*, %struct._object** %x, align 8
  %call66 = call i32 @PyDict_SetItemString(%struct._object* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), %struct._object* %43)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then.68, label %if.end.80

if.then.68:                                       ; preds = %if.end.65
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  %44 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp70, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %46, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.69
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %49(%struct._object* %50)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %failed

if.end.80:                                        ; preds = %if.end.65
  br label %do.body.81

do.body.81:                                       ; preds = %if.end.80
  %51 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp82, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %53, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.81
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %56(%struct._object* %57)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.end.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %58 = load %struct.lconv*, %struct.lconv** %l, align 8
  %int_curr_symbol = getelementptr inbounds %struct.lconv, %struct.lconv* %58, i32 0, i32 3
  %59 = load i8*, i8** %int_curr_symbol, align 8
  %call94 = call %struct._object* @PyUnicode_DecodeLocale(i8* %59, i8* null)
  store %struct._object* %call94, %struct._object** %x, align 8
  br label %do.body.95

do.body.95:                                       ; preds = %do.body.93
  %60 = load %struct._object*, %struct._object** %x, align 8
  %cmp96 = icmp eq %struct._object* %60, null
  br i1 %cmp96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %do.body.95
  br label %failed

if.end.98:                                        ; preds = %do.body.95
  %61 = load %struct._object*, %struct._object** %result, align 8
  %62 = load %struct._object*, %struct._object** %x, align 8
  %call99 = call i32 @PyDict_SetItemString(%struct._object* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), %struct._object* %62)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then.101, label %if.end.113

if.then.101:                                      ; preds = %if.end.98
  br label %do.body.102

do.body.102:                                      ; preds = %if.then.101
  %63 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp103, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %65, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %68(%struct._object* %69)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %failed

if.end.113:                                       ; preds = %if.end.98
  br label %do.body.114

do.body.114:                                      ; preds = %if.end.113
  %70 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp115, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt116, align 8
  %dec117 = add i64 %72, -1
  store i64 %dec117, i64* %ob_refcnt116, align 8
  %cmp118 = icmp ne i64 %dec117, 0
  br i1 %cmp118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %do.body.114
  br label %if.end.123

if.else.120:                                      ; preds = %do.body.114
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %75(%struct._object* %76)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  br label %do.end.125

do.end.125:                                       ; preds = %do.end.124
  br label %do.end.126

do.end.126:                                       ; preds = %do.end.125
  br label %do.body.127

do.body.127:                                      ; preds = %do.end.126
  %77 = load %struct.lconv*, %struct.lconv** %l, align 8
  %currency_symbol = getelementptr inbounds %struct.lconv, %struct.lconv* %77, i32 0, i32 4
  %78 = load i8*, i8** %currency_symbol, align 8
  %call128 = call %struct._object* @PyUnicode_DecodeLocale(i8* %78, i8* null)
  store %struct._object* %call128, %struct._object** %x, align 8
  br label %do.body.129

do.body.129:                                      ; preds = %do.body.127
  %79 = load %struct._object*, %struct._object** %x, align 8
  %cmp130 = icmp eq %struct._object* %79, null
  br i1 %cmp130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %do.body.129
  br label %failed

if.end.132:                                       ; preds = %do.body.129
  %80 = load %struct._object*, %struct._object** %result, align 8
  %81 = load %struct._object*, %struct._object** %x, align 8
  %call133 = call i32 @PyDict_SetItemString(%struct._object* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), %struct._object* %81)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %if.end.132
  br label %do.body.136

do.body.136:                                      ; preds = %if.then.135
  %82 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp137, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %84, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.136
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.136
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %87(%struct._object* %88)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %failed

if.end.147:                                       ; preds = %if.end.132
  br label %do.body.148

do.body.148:                                      ; preds = %if.end.147
  %89 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp149, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt150, align 8
  %dec151 = add i64 %91, -1
  store i64 %dec151, i64* %ob_refcnt150, align 8
  %cmp152 = icmp ne i64 %dec151, 0
  br i1 %cmp152, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %do.body.148
  br label %if.end.157

if.else.154:                                      ; preds = %do.body.148
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_type155 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type155, align 8
  %tp_dealloc156 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc156, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  call void %94(%struct._object* %95)
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.154, %if.then.153
  br label %do.end.158

do.end.158:                                       ; preds = %if.end.157
  br label %do.end.159

do.end.159:                                       ; preds = %do.end.158
  br label %do.end.160

do.end.160:                                       ; preds = %do.end.159
  br label %do.body.161

do.body.161:                                      ; preds = %do.end.160
  %96 = load %struct.lconv*, %struct.lconv** %l, align 8
  %mon_decimal_point = getelementptr inbounds %struct.lconv, %struct.lconv* %96, i32 0, i32 5
  %97 = load i8*, i8** %mon_decimal_point, align 8
  %call162 = call %struct._object* @PyUnicode_DecodeLocale(i8* %97, i8* null)
  store %struct._object* %call162, %struct._object** %x, align 8
  br label %do.body.163

do.body.163:                                      ; preds = %do.body.161
  %98 = load %struct._object*, %struct._object** %x, align 8
  %cmp164 = icmp eq %struct._object* %98, null
  br i1 %cmp164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %do.body.163
  br label %failed

if.end.166:                                       ; preds = %do.body.163
  %99 = load %struct._object*, %struct._object** %result, align 8
  %100 = load %struct._object*, %struct._object** %x, align 8
  %call167 = call i32 @PyDict_SetItemString(%struct._object* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), %struct._object* %100)
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.then.169, label %if.end.181

if.then.169:                                      ; preds = %if.end.166
  br label %do.body.170

do.body.170:                                      ; preds = %if.then.169
  %101 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp171, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8
  %ob_refcnt172 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt172, align 8
  %dec173 = add i64 %103, -1
  store i64 %dec173, i64* %ob_refcnt172, align 8
  %cmp174 = icmp ne i64 %dec173, 0
  br i1 %cmp174, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %do.body.170
  br label %if.end.179

if.else.176:                                      ; preds = %do.body.170
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8
  %ob_type177 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type177, align 8
  %tp_dealloc178 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc178, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8
  call void %106(%struct._object* %107)
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %if.then.175
  br label %do.end.180

do.end.180:                                       ; preds = %if.end.179
  br label %failed

if.end.181:                                       ; preds = %if.end.166
  br label %do.body.182

do.body.182:                                      ; preds = %if.end.181
  %108 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %108, %struct._object** %_py_decref_tmp183, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  %ob_refcnt184 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt184, align 8
  %dec185 = add i64 %110, -1
  store i64 %dec185, i64* %ob_refcnt184, align 8
  %cmp186 = icmp ne i64 %dec185, 0
  br i1 %cmp186, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %do.body.182
  br label %if.end.191

if.else.188:                                      ; preds = %do.body.182
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  %ob_type189 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type189, align 8
  %tp_dealloc190 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc190, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  call void %113(%struct._object* %114)
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.188, %if.then.187
  br label %do.end.192

do.end.192:                                       ; preds = %if.end.191
  br label %do.end.193

do.end.193:                                       ; preds = %do.end.192
  br label %do.end.194

do.end.194:                                       ; preds = %do.end.193
  br label %do.body.195

do.body.195:                                      ; preds = %do.end.194
  %115 = load %struct.lconv*, %struct.lconv** %l, align 8
  %mon_thousands_sep = getelementptr inbounds %struct.lconv, %struct.lconv* %115, i32 0, i32 6
  %116 = load i8*, i8** %mon_thousands_sep, align 8
  %call196 = call %struct._object* @PyUnicode_DecodeLocale(i8* %116, i8* null)
  store %struct._object* %call196, %struct._object** %x, align 8
  br label %do.body.197

do.body.197:                                      ; preds = %do.body.195
  %117 = load %struct._object*, %struct._object** %x, align 8
  %cmp198 = icmp eq %struct._object* %117, null
  br i1 %cmp198, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %do.body.197
  br label %failed

if.end.200:                                       ; preds = %do.body.197
  %118 = load %struct._object*, %struct._object** %result, align 8
  %119 = load %struct._object*, %struct._object** %x, align 8
  %call201 = call i32 @PyDict_SetItemString(%struct._object* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), %struct._object* %119)
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %if.then.203, label %if.end.215

if.then.203:                                      ; preds = %if.end.200
  br label %do.body.204

do.body.204:                                      ; preds = %if.then.203
  %120 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %120, %struct._object** %_py_decref_tmp205, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp205, align 8
  %ob_refcnt206 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt206, align 8
  %dec207 = add i64 %122, -1
  store i64 %dec207, i64* %ob_refcnt206, align 8
  %cmp208 = icmp ne i64 %dec207, 0
  br i1 %cmp208, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %do.body.204
  br label %if.end.213

if.else.210:                                      ; preds = %do.body.204
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp205, align 8
  %ob_type211 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 1
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type211, align 8
  %tp_dealloc212 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i32 0, i32 4
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc212, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp205, align 8
  call void %125(%struct._object* %126)
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.210, %if.then.209
  br label %do.end.214

do.end.214:                                       ; preds = %if.end.213
  br label %failed

if.end.215:                                       ; preds = %if.end.200
  br label %do.body.216

do.body.216:                                      ; preds = %if.end.215
  %127 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %127, %struct._object** %_py_decref_tmp217, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8
  %ob_refcnt218 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 0
  %129 = load i64, i64* %ob_refcnt218, align 8
  %dec219 = add i64 %129, -1
  store i64 %dec219, i64* %ob_refcnt218, align 8
  %cmp220 = icmp ne i64 %dec219, 0
  br i1 %cmp220, label %if.then.221, label %if.else.222

if.then.221:                                      ; preds = %do.body.216
  br label %if.end.225

if.else.222:                                      ; preds = %do.body.216
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 1
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i32 0, i32 4
  %132 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8
  call void %132(%struct._object* %133)
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.222, %if.then.221
  br label %do.end.226

do.end.226:                                       ; preds = %if.end.225
  br label %do.end.227

do.end.227:                                       ; preds = %do.end.226
  br label %do.end.228

do.end.228:                                       ; preds = %do.end.227
  %134 = load %struct.lconv*, %struct.lconv** %l, align 8
  %mon_grouping = getelementptr inbounds %struct.lconv, %struct.lconv* %134, i32 0, i32 7
  %135 = load i8*, i8** %mon_grouping, align 8
  %call229 = call %struct._object* @copy_grouping(i8* %135)
  store %struct._object* %call229, %struct._object** %x, align 8
  br label %do.body.230

do.body.230:                                      ; preds = %do.end.228
  %136 = load %struct._object*, %struct._object** %x, align 8
  %cmp231 = icmp eq %struct._object* %136, null
  br i1 %cmp231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %do.body.230
  br label %failed

if.end.233:                                       ; preds = %do.body.230
  %137 = load %struct._object*, %struct._object** %result, align 8
  %138 = load %struct._object*, %struct._object** %x, align 8
  %call234 = call i32 @PyDict_SetItemString(%struct._object* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), %struct._object* %138)
  %cmp235 = icmp slt i32 %call234, 0
  br i1 %cmp235, label %if.then.236, label %if.end.248

if.then.236:                                      ; preds = %if.end.233
  br label %do.body.237

do.body.237:                                      ; preds = %if.then.236
  %139 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %139, %struct._object** %_py_decref_tmp238, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8
  %ob_refcnt239 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 0
  %141 = load i64, i64* %ob_refcnt239, align 8
  %dec240 = add i64 %141, -1
  store i64 %dec240, i64* %ob_refcnt239, align 8
  %cmp241 = icmp ne i64 %dec240, 0
  br i1 %cmp241, label %if.then.242, label %if.else.243

if.then.242:                                      ; preds = %do.body.237
  br label %if.end.246

if.else.243:                                      ; preds = %do.body.237
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8
  %ob_type244 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 1
  %143 = load %struct._typeobject*, %struct._typeobject** %ob_type244, align 8
  %tp_dealloc245 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 4
  %144 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc245, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8
  call void %144(%struct._object* %145)
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.243, %if.then.242
  br label %do.end.247

do.end.247:                                       ; preds = %if.end.246
  br label %failed

if.end.248:                                       ; preds = %if.end.233
  br label %do.body.249

do.body.249:                                      ; preds = %if.end.248
  %146 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %146, %struct._object** %_py_decref_tmp250, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp250, align 8
  %ob_refcnt251 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 0
  %148 = load i64, i64* %ob_refcnt251, align 8
  %dec252 = add i64 %148, -1
  store i64 %dec252, i64* %ob_refcnt251, align 8
  %cmp253 = icmp ne i64 %dec252, 0
  br i1 %cmp253, label %if.then.254, label %if.else.255

if.then.254:                                      ; preds = %do.body.249
  br label %if.end.258

if.else.255:                                      ; preds = %do.body.249
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp250, align 8
  %ob_type256 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 1
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type256, align 8
  %tp_dealloc257 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i32 0, i32 4
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc257, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp250, align 8
  call void %151(%struct._object* %152)
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.255, %if.then.254
  br label %do.end.259

do.end.259:                                       ; preds = %if.end.258
  br label %do.end.260

do.end.260:                                       ; preds = %do.end.259
  br label %do.body.261

do.body.261:                                      ; preds = %do.end.260
  %153 = load %struct.lconv*, %struct.lconv** %l, align 8
  %positive_sign = getelementptr inbounds %struct.lconv, %struct.lconv* %153, i32 0, i32 8
  %154 = load i8*, i8** %positive_sign, align 8
  %call262 = call %struct._object* @PyUnicode_DecodeLocale(i8* %154, i8* null)
  store %struct._object* %call262, %struct._object** %x, align 8
  br label %do.body.263

do.body.263:                                      ; preds = %do.body.261
  %155 = load %struct._object*, %struct._object** %x, align 8
  %cmp264 = icmp eq %struct._object* %155, null
  br i1 %cmp264, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %do.body.263
  br label %failed

if.end.266:                                       ; preds = %do.body.263
  %156 = load %struct._object*, %struct._object** %result, align 8
  %157 = load %struct._object*, %struct._object** %x, align 8
  %call267 = call i32 @PyDict_SetItemString(%struct._object* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), %struct._object* %157)
  %cmp268 = icmp slt i32 %call267, 0
  br i1 %cmp268, label %if.then.269, label %if.end.281

if.then.269:                                      ; preds = %if.end.266
  br label %do.body.270

do.body.270:                                      ; preds = %if.then.269
  %158 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %158, %struct._object** %_py_decref_tmp271, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp271, align 8
  %ob_refcnt272 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 0
  %160 = load i64, i64* %ob_refcnt272, align 8
  %dec273 = add i64 %160, -1
  store i64 %dec273, i64* %ob_refcnt272, align 8
  %cmp274 = icmp ne i64 %dec273, 0
  br i1 %cmp274, label %if.then.275, label %if.else.276

if.then.275:                                      ; preds = %do.body.270
  br label %if.end.279

if.else.276:                                      ; preds = %do.body.270
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp271, align 8
  %ob_type277 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 1
  %162 = load %struct._typeobject*, %struct._typeobject** %ob_type277, align 8
  %tp_dealloc278 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %162, i32 0, i32 4
  %163 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc278, align 8
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp271, align 8
  call void %163(%struct._object* %164)
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.276, %if.then.275
  br label %do.end.280

do.end.280:                                       ; preds = %if.end.279
  br label %failed

if.end.281:                                       ; preds = %if.end.266
  br label %do.body.282

do.body.282:                                      ; preds = %if.end.281
  %165 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %165, %struct._object** %_py_decref_tmp283, align 8
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp283, align 8
  %ob_refcnt284 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 0
  %167 = load i64, i64* %ob_refcnt284, align 8
  %dec285 = add i64 %167, -1
  store i64 %dec285, i64* %ob_refcnt284, align 8
  %cmp286 = icmp ne i64 %dec285, 0
  br i1 %cmp286, label %if.then.287, label %if.else.288

if.then.287:                                      ; preds = %do.body.282
  br label %if.end.291

if.else.288:                                      ; preds = %do.body.282
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp283, align 8
  %ob_type289 = getelementptr inbounds %struct._object, %struct._object* %168, i32 0, i32 1
  %169 = load %struct._typeobject*, %struct._typeobject** %ob_type289, align 8
  %tp_dealloc290 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %169, i32 0, i32 4
  %170 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc290, align 8
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp283, align 8
  call void %170(%struct._object* %171)
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.288, %if.then.287
  br label %do.end.292

do.end.292:                                       ; preds = %if.end.291
  br label %do.end.293

do.end.293:                                       ; preds = %do.end.292
  br label %do.end.294

do.end.294:                                       ; preds = %do.end.293
  br label %do.body.295

do.body.295:                                      ; preds = %do.end.294
  %172 = load %struct.lconv*, %struct.lconv** %l, align 8
  %negative_sign = getelementptr inbounds %struct.lconv, %struct.lconv* %172, i32 0, i32 9
  %173 = load i8*, i8** %negative_sign, align 8
  %call296 = call %struct._object* @PyUnicode_DecodeLocale(i8* %173, i8* null)
  store %struct._object* %call296, %struct._object** %x, align 8
  br label %do.body.297

do.body.297:                                      ; preds = %do.body.295
  %174 = load %struct._object*, %struct._object** %x, align 8
  %cmp298 = icmp eq %struct._object* %174, null
  br i1 %cmp298, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %do.body.297
  br label %failed

if.end.300:                                       ; preds = %do.body.297
  %175 = load %struct._object*, %struct._object** %result, align 8
  %176 = load %struct._object*, %struct._object** %x, align 8
  %call301 = call i32 @PyDict_SetItemString(%struct._object* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._object* %176)
  %cmp302 = icmp slt i32 %call301, 0
  br i1 %cmp302, label %if.then.303, label %if.end.315

if.then.303:                                      ; preds = %if.end.300
  br label %do.body.304

do.body.304:                                      ; preds = %if.then.303
  %177 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %177, %struct._object** %_py_decref_tmp305, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp305, align 8
  %ob_refcnt306 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 0
  %179 = load i64, i64* %ob_refcnt306, align 8
  %dec307 = add i64 %179, -1
  store i64 %dec307, i64* %ob_refcnt306, align 8
  %cmp308 = icmp ne i64 %dec307, 0
  br i1 %cmp308, label %if.then.309, label %if.else.310

if.then.309:                                      ; preds = %do.body.304
  br label %if.end.313

if.else.310:                                      ; preds = %do.body.304
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp305, align 8
  %ob_type311 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 1
  %181 = load %struct._typeobject*, %struct._typeobject** %ob_type311, align 8
  %tp_dealloc312 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %181, i32 0, i32 4
  %182 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc312, align 8
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp305, align 8
  call void %182(%struct._object* %183)
  br label %if.end.313

if.end.313:                                       ; preds = %if.else.310, %if.then.309
  br label %do.end.314

do.end.314:                                       ; preds = %if.end.313
  br label %failed

if.end.315:                                       ; preds = %if.end.300
  br label %do.body.316

do.body.316:                                      ; preds = %if.end.315
  %184 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %184, %struct._object** %_py_decref_tmp317, align 8
  %185 = load %struct._object*, %struct._object** %_py_decref_tmp317, align 8
  %ob_refcnt318 = getelementptr inbounds %struct._object, %struct._object* %185, i32 0, i32 0
  %186 = load i64, i64* %ob_refcnt318, align 8
  %dec319 = add i64 %186, -1
  store i64 %dec319, i64* %ob_refcnt318, align 8
  %cmp320 = icmp ne i64 %dec319, 0
  br i1 %cmp320, label %if.then.321, label %if.else.322

if.then.321:                                      ; preds = %do.body.316
  br label %if.end.325

if.else.322:                                      ; preds = %do.body.316
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp317, align 8
  %ob_type323 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 1
  %188 = load %struct._typeobject*, %struct._typeobject** %ob_type323, align 8
  %tp_dealloc324 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %188, i32 0, i32 4
  %189 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc324, align 8
  %190 = load %struct._object*, %struct._object** %_py_decref_tmp317, align 8
  call void %189(%struct._object* %190)
  br label %if.end.325

if.end.325:                                       ; preds = %if.else.322, %if.then.321
  br label %do.end.326

do.end.326:                                       ; preds = %if.end.325
  br label %do.end.327

do.end.327:                                       ; preds = %do.end.326
  br label %do.end.328

do.end.328:                                       ; preds = %do.end.327
  br label %do.body.329

do.body.329:                                      ; preds = %do.end.328
  %191 = load %struct.lconv*, %struct.lconv** %l, align 8
  %int_frac_digits = getelementptr inbounds %struct.lconv, %struct.lconv* %191, i32 0, i32 10
  %192 = load i8, i8* %int_frac_digits, align 1
  %conv = sext i8 %192 to i64
  %call330 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call330, %struct._object** %x, align 8
  br label %do.body.331

do.body.331:                                      ; preds = %do.body.329
  %193 = load %struct._object*, %struct._object** %x, align 8
  %cmp332 = icmp eq %struct._object* %193, null
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %do.body.331
  br label %failed

if.end.335:                                       ; preds = %do.body.331
  %194 = load %struct._object*, %struct._object** %result, align 8
  %195 = load %struct._object*, %struct._object** %x, align 8
  %call336 = call i32 @PyDict_SetItemString(%struct._object* %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), %struct._object* %195)
  %cmp337 = icmp slt i32 %call336, 0
  br i1 %cmp337, label %if.then.339, label %if.end.352

if.then.339:                                      ; preds = %if.end.335
  br label %do.body.340

do.body.340:                                      ; preds = %if.then.339
  %196 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %196, %struct._object** %_py_decref_tmp341, align 8
  %197 = load %struct._object*, %struct._object** %_py_decref_tmp341, align 8
  %ob_refcnt342 = getelementptr inbounds %struct._object, %struct._object* %197, i32 0, i32 0
  %198 = load i64, i64* %ob_refcnt342, align 8
  %dec343 = add i64 %198, -1
  store i64 %dec343, i64* %ob_refcnt342, align 8
  %cmp344 = icmp ne i64 %dec343, 0
  br i1 %cmp344, label %if.then.346, label %if.else.347

if.then.346:                                      ; preds = %do.body.340
  br label %if.end.350

if.else.347:                                      ; preds = %do.body.340
  %199 = load %struct._object*, %struct._object** %_py_decref_tmp341, align 8
  %ob_type348 = getelementptr inbounds %struct._object, %struct._object* %199, i32 0, i32 1
  %200 = load %struct._typeobject*, %struct._typeobject** %ob_type348, align 8
  %tp_dealloc349 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %200, i32 0, i32 4
  %201 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc349, align 8
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp341, align 8
  call void %201(%struct._object* %202)
  br label %if.end.350

if.end.350:                                       ; preds = %if.else.347, %if.then.346
  br label %do.end.351

do.end.351:                                       ; preds = %if.end.350
  br label %failed

if.end.352:                                       ; preds = %if.end.335
  br label %do.body.353

do.body.353:                                      ; preds = %if.end.352
  %203 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %203, %struct._object** %_py_decref_tmp354, align 8
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp354, align 8
  %ob_refcnt355 = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 0
  %205 = load i64, i64* %ob_refcnt355, align 8
  %dec356 = add i64 %205, -1
  store i64 %dec356, i64* %ob_refcnt355, align 8
  %cmp357 = icmp ne i64 %dec356, 0
  br i1 %cmp357, label %if.then.359, label %if.else.360

if.then.359:                                      ; preds = %do.body.353
  br label %if.end.363

if.else.360:                                      ; preds = %do.body.353
  %206 = load %struct._object*, %struct._object** %_py_decref_tmp354, align 8
  %ob_type361 = getelementptr inbounds %struct._object, %struct._object* %206, i32 0, i32 1
  %207 = load %struct._typeobject*, %struct._typeobject** %ob_type361, align 8
  %tp_dealloc362 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %207, i32 0, i32 4
  %208 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc362, align 8
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp354, align 8
  call void %208(%struct._object* %209)
  br label %if.end.363

if.end.363:                                       ; preds = %if.else.360, %if.then.359
  br label %do.end.364

do.end.364:                                       ; preds = %if.end.363
  br label %do.end.365

do.end.365:                                       ; preds = %do.end.364
  br label %do.end.366

do.end.366:                                       ; preds = %do.end.365
  br label %do.body.367

do.body.367:                                      ; preds = %do.end.366
  %210 = load %struct.lconv*, %struct.lconv** %l, align 8
  %frac_digits = getelementptr inbounds %struct.lconv, %struct.lconv* %210, i32 0, i32 11
  %211 = load i8, i8* %frac_digits, align 1
  %conv368 = sext i8 %211 to i64
  %call369 = call %struct._object* @PyLong_FromLong(i64 %conv368)
  store %struct._object* %call369, %struct._object** %x, align 8
  br label %do.body.370

do.body.370:                                      ; preds = %do.body.367
  %212 = load %struct._object*, %struct._object** %x, align 8
  %cmp371 = icmp eq %struct._object* %212, null
  br i1 %cmp371, label %if.then.373, label %if.end.374

if.then.373:                                      ; preds = %do.body.370
  br label %failed

if.end.374:                                       ; preds = %do.body.370
  %213 = load %struct._object*, %struct._object** %result, align 8
  %214 = load %struct._object*, %struct._object** %x, align 8
  %call375 = call i32 @PyDict_SetItemString(%struct._object* %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), %struct._object* %214)
  %cmp376 = icmp slt i32 %call375, 0
  br i1 %cmp376, label %if.then.378, label %if.end.391

if.then.378:                                      ; preds = %if.end.374
  br label %do.body.379

do.body.379:                                      ; preds = %if.then.378
  %215 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %215, %struct._object** %_py_decref_tmp380, align 8
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp380, align 8
  %ob_refcnt381 = getelementptr inbounds %struct._object, %struct._object* %216, i32 0, i32 0
  %217 = load i64, i64* %ob_refcnt381, align 8
  %dec382 = add i64 %217, -1
  store i64 %dec382, i64* %ob_refcnt381, align 8
  %cmp383 = icmp ne i64 %dec382, 0
  br i1 %cmp383, label %if.then.385, label %if.else.386

if.then.385:                                      ; preds = %do.body.379
  br label %if.end.389

if.else.386:                                      ; preds = %do.body.379
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp380, align 8
  %ob_type387 = getelementptr inbounds %struct._object, %struct._object* %218, i32 0, i32 1
  %219 = load %struct._typeobject*, %struct._typeobject** %ob_type387, align 8
  %tp_dealloc388 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %219, i32 0, i32 4
  %220 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc388, align 8
  %221 = load %struct._object*, %struct._object** %_py_decref_tmp380, align 8
  call void %220(%struct._object* %221)
  br label %if.end.389

if.end.389:                                       ; preds = %if.else.386, %if.then.385
  br label %do.end.390

do.end.390:                                       ; preds = %if.end.389
  br label %failed

if.end.391:                                       ; preds = %if.end.374
  br label %do.body.392

do.body.392:                                      ; preds = %if.end.391
  %222 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %222, %struct._object** %_py_decref_tmp393, align 8
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp393, align 8
  %ob_refcnt394 = getelementptr inbounds %struct._object, %struct._object* %223, i32 0, i32 0
  %224 = load i64, i64* %ob_refcnt394, align 8
  %dec395 = add i64 %224, -1
  store i64 %dec395, i64* %ob_refcnt394, align 8
  %cmp396 = icmp ne i64 %dec395, 0
  br i1 %cmp396, label %if.then.398, label %if.else.399

if.then.398:                                      ; preds = %do.body.392
  br label %if.end.402

if.else.399:                                      ; preds = %do.body.392
  %225 = load %struct._object*, %struct._object** %_py_decref_tmp393, align 8
  %ob_type400 = getelementptr inbounds %struct._object, %struct._object* %225, i32 0, i32 1
  %226 = load %struct._typeobject*, %struct._typeobject** %ob_type400, align 8
  %tp_dealloc401 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %226, i32 0, i32 4
  %227 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc401, align 8
  %228 = load %struct._object*, %struct._object** %_py_decref_tmp393, align 8
  call void %227(%struct._object* %228)
  br label %if.end.402

if.end.402:                                       ; preds = %if.else.399, %if.then.398
  br label %do.end.403

do.end.403:                                       ; preds = %if.end.402
  br label %do.end.404

do.end.404:                                       ; preds = %do.end.403
  br label %do.end.405

do.end.405:                                       ; preds = %do.end.404
  br label %do.body.406

do.body.406:                                      ; preds = %do.end.405
  %229 = load %struct.lconv*, %struct.lconv** %l, align 8
  %p_cs_precedes = getelementptr inbounds %struct.lconv, %struct.lconv* %229, i32 0, i32 12
  %230 = load i8, i8* %p_cs_precedes, align 1
  %conv407 = sext i8 %230 to i64
  %call408 = call %struct._object* @PyLong_FromLong(i64 %conv407)
  store %struct._object* %call408, %struct._object** %x, align 8
  br label %do.body.409

do.body.409:                                      ; preds = %do.body.406
  %231 = load %struct._object*, %struct._object** %x, align 8
  %cmp410 = icmp eq %struct._object* %231, null
  br i1 %cmp410, label %if.then.412, label %if.end.413

if.then.412:                                      ; preds = %do.body.409
  br label %failed

if.end.413:                                       ; preds = %do.body.409
  %232 = load %struct._object*, %struct._object** %result, align 8
  %233 = load %struct._object*, %struct._object** %x, align 8
  %call414 = call i32 @PyDict_SetItemString(%struct._object* %232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), %struct._object* %233)
  %cmp415 = icmp slt i32 %call414, 0
  br i1 %cmp415, label %if.then.417, label %if.end.430

if.then.417:                                      ; preds = %if.end.413
  br label %do.body.418

do.body.418:                                      ; preds = %if.then.417
  %234 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %234, %struct._object** %_py_decref_tmp419, align 8
  %235 = load %struct._object*, %struct._object** %_py_decref_tmp419, align 8
  %ob_refcnt420 = getelementptr inbounds %struct._object, %struct._object* %235, i32 0, i32 0
  %236 = load i64, i64* %ob_refcnt420, align 8
  %dec421 = add i64 %236, -1
  store i64 %dec421, i64* %ob_refcnt420, align 8
  %cmp422 = icmp ne i64 %dec421, 0
  br i1 %cmp422, label %if.then.424, label %if.else.425

if.then.424:                                      ; preds = %do.body.418
  br label %if.end.428

if.else.425:                                      ; preds = %do.body.418
  %237 = load %struct._object*, %struct._object** %_py_decref_tmp419, align 8
  %ob_type426 = getelementptr inbounds %struct._object, %struct._object* %237, i32 0, i32 1
  %238 = load %struct._typeobject*, %struct._typeobject** %ob_type426, align 8
  %tp_dealloc427 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %238, i32 0, i32 4
  %239 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc427, align 8
  %240 = load %struct._object*, %struct._object** %_py_decref_tmp419, align 8
  call void %239(%struct._object* %240)
  br label %if.end.428

if.end.428:                                       ; preds = %if.else.425, %if.then.424
  br label %do.end.429

do.end.429:                                       ; preds = %if.end.428
  br label %failed

if.end.430:                                       ; preds = %if.end.413
  br label %do.body.431

do.body.431:                                      ; preds = %if.end.430
  %241 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %241, %struct._object** %_py_decref_tmp432, align 8
  %242 = load %struct._object*, %struct._object** %_py_decref_tmp432, align 8
  %ob_refcnt433 = getelementptr inbounds %struct._object, %struct._object* %242, i32 0, i32 0
  %243 = load i64, i64* %ob_refcnt433, align 8
  %dec434 = add i64 %243, -1
  store i64 %dec434, i64* %ob_refcnt433, align 8
  %cmp435 = icmp ne i64 %dec434, 0
  br i1 %cmp435, label %if.then.437, label %if.else.438

if.then.437:                                      ; preds = %do.body.431
  br label %if.end.441

if.else.438:                                      ; preds = %do.body.431
  %244 = load %struct._object*, %struct._object** %_py_decref_tmp432, align 8
  %ob_type439 = getelementptr inbounds %struct._object, %struct._object* %244, i32 0, i32 1
  %245 = load %struct._typeobject*, %struct._typeobject** %ob_type439, align 8
  %tp_dealloc440 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %245, i32 0, i32 4
  %246 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc440, align 8
  %247 = load %struct._object*, %struct._object** %_py_decref_tmp432, align 8
  call void %246(%struct._object* %247)
  br label %if.end.441

if.end.441:                                       ; preds = %if.else.438, %if.then.437
  br label %do.end.442

do.end.442:                                       ; preds = %if.end.441
  br label %do.end.443

do.end.443:                                       ; preds = %do.end.442
  br label %do.end.444

do.end.444:                                       ; preds = %do.end.443
  br label %do.body.445

do.body.445:                                      ; preds = %do.end.444
  %248 = load %struct.lconv*, %struct.lconv** %l, align 8
  %p_sep_by_space = getelementptr inbounds %struct.lconv, %struct.lconv* %248, i32 0, i32 13
  %249 = load i8, i8* %p_sep_by_space, align 1
  %conv446 = sext i8 %249 to i64
  %call447 = call %struct._object* @PyLong_FromLong(i64 %conv446)
  store %struct._object* %call447, %struct._object** %x, align 8
  br label %do.body.448

do.body.448:                                      ; preds = %do.body.445
  %250 = load %struct._object*, %struct._object** %x, align 8
  %cmp449 = icmp eq %struct._object* %250, null
  br i1 %cmp449, label %if.then.451, label %if.end.452

if.then.451:                                      ; preds = %do.body.448
  br label %failed

if.end.452:                                       ; preds = %do.body.448
  %251 = load %struct._object*, %struct._object** %result, align 8
  %252 = load %struct._object*, %struct._object** %x, align 8
  %call453 = call i32 @PyDict_SetItemString(%struct._object* %251, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), %struct._object* %252)
  %cmp454 = icmp slt i32 %call453, 0
  br i1 %cmp454, label %if.then.456, label %if.end.469

if.then.456:                                      ; preds = %if.end.452
  br label %do.body.457

do.body.457:                                      ; preds = %if.then.456
  %253 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %253, %struct._object** %_py_decref_tmp458, align 8
  %254 = load %struct._object*, %struct._object** %_py_decref_tmp458, align 8
  %ob_refcnt459 = getelementptr inbounds %struct._object, %struct._object* %254, i32 0, i32 0
  %255 = load i64, i64* %ob_refcnt459, align 8
  %dec460 = add i64 %255, -1
  store i64 %dec460, i64* %ob_refcnt459, align 8
  %cmp461 = icmp ne i64 %dec460, 0
  br i1 %cmp461, label %if.then.463, label %if.else.464

if.then.463:                                      ; preds = %do.body.457
  br label %if.end.467

if.else.464:                                      ; preds = %do.body.457
  %256 = load %struct._object*, %struct._object** %_py_decref_tmp458, align 8
  %ob_type465 = getelementptr inbounds %struct._object, %struct._object* %256, i32 0, i32 1
  %257 = load %struct._typeobject*, %struct._typeobject** %ob_type465, align 8
  %tp_dealloc466 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %257, i32 0, i32 4
  %258 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc466, align 8
  %259 = load %struct._object*, %struct._object** %_py_decref_tmp458, align 8
  call void %258(%struct._object* %259)
  br label %if.end.467

if.end.467:                                       ; preds = %if.else.464, %if.then.463
  br label %do.end.468

do.end.468:                                       ; preds = %if.end.467
  br label %failed

if.end.469:                                       ; preds = %if.end.452
  br label %do.body.470

do.body.470:                                      ; preds = %if.end.469
  %260 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %260, %struct._object** %_py_decref_tmp471, align 8
  %261 = load %struct._object*, %struct._object** %_py_decref_tmp471, align 8
  %ob_refcnt472 = getelementptr inbounds %struct._object, %struct._object* %261, i32 0, i32 0
  %262 = load i64, i64* %ob_refcnt472, align 8
  %dec473 = add i64 %262, -1
  store i64 %dec473, i64* %ob_refcnt472, align 8
  %cmp474 = icmp ne i64 %dec473, 0
  br i1 %cmp474, label %if.then.476, label %if.else.477

if.then.476:                                      ; preds = %do.body.470
  br label %if.end.480

if.else.477:                                      ; preds = %do.body.470
  %263 = load %struct._object*, %struct._object** %_py_decref_tmp471, align 8
  %ob_type478 = getelementptr inbounds %struct._object, %struct._object* %263, i32 0, i32 1
  %264 = load %struct._typeobject*, %struct._typeobject** %ob_type478, align 8
  %tp_dealloc479 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %264, i32 0, i32 4
  %265 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc479, align 8
  %266 = load %struct._object*, %struct._object** %_py_decref_tmp471, align 8
  call void %265(%struct._object* %266)
  br label %if.end.480

if.end.480:                                       ; preds = %if.else.477, %if.then.476
  br label %do.end.481

do.end.481:                                       ; preds = %if.end.480
  br label %do.end.482

do.end.482:                                       ; preds = %do.end.481
  br label %do.end.483

do.end.483:                                       ; preds = %do.end.482
  br label %do.body.484

do.body.484:                                      ; preds = %do.end.483
  %267 = load %struct.lconv*, %struct.lconv** %l, align 8
  %n_cs_precedes = getelementptr inbounds %struct.lconv, %struct.lconv* %267, i32 0, i32 14
  %268 = load i8, i8* %n_cs_precedes, align 1
  %conv485 = sext i8 %268 to i64
  %call486 = call %struct._object* @PyLong_FromLong(i64 %conv485)
  store %struct._object* %call486, %struct._object** %x, align 8
  br label %do.body.487

do.body.487:                                      ; preds = %do.body.484
  %269 = load %struct._object*, %struct._object** %x, align 8
  %cmp488 = icmp eq %struct._object* %269, null
  br i1 %cmp488, label %if.then.490, label %if.end.491

if.then.490:                                      ; preds = %do.body.487
  br label %failed

if.end.491:                                       ; preds = %do.body.487
  %270 = load %struct._object*, %struct._object** %result, align 8
  %271 = load %struct._object*, %struct._object** %x, align 8
  %call492 = call i32 @PyDict_SetItemString(%struct._object* %270, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), %struct._object* %271)
  %cmp493 = icmp slt i32 %call492, 0
  br i1 %cmp493, label %if.then.495, label %if.end.508

if.then.495:                                      ; preds = %if.end.491
  br label %do.body.496

do.body.496:                                      ; preds = %if.then.495
  %272 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %272, %struct._object** %_py_decref_tmp497, align 8
  %273 = load %struct._object*, %struct._object** %_py_decref_tmp497, align 8
  %ob_refcnt498 = getelementptr inbounds %struct._object, %struct._object* %273, i32 0, i32 0
  %274 = load i64, i64* %ob_refcnt498, align 8
  %dec499 = add i64 %274, -1
  store i64 %dec499, i64* %ob_refcnt498, align 8
  %cmp500 = icmp ne i64 %dec499, 0
  br i1 %cmp500, label %if.then.502, label %if.else.503

if.then.502:                                      ; preds = %do.body.496
  br label %if.end.506

if.else.503:                                      ; preds = %do.body.496
  %275 = load %struct._object*, %struct._object** %_py_decref_tmp497, align 8
  %ob_type504 = getelementptr inbounds %struct._object, %struct._object* %275, i32 0, i32 1
  %276 = load %struct._typeobject*, %struct._typeobject** %ob_type504, align 8
  %tp_dealloc505 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %276, i32 0, i32 4
  %277 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc505, align 8
  %278 = load %struct._object*, %struct._object** %_py_decref_tmp497, align 8
  call void %277(%struct._object* %278)
  br label %if.end.506

if.end.506:                                       ; preds = %if.else.503, %if.then.502
  br label %do.end.507

do.end.507:                                       ; preds = %if.end.506
  br label %failed

if.end.508:                                       ; preds = %if.end.491
  br label %do.body.509

do.body.509:                                      ; preds = %if.end.508
  %279 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %279, %struct._object** %_py_decref_tmp510, align 8
  %280 = load %struct._object*, %struct._object** %_py_decref_tmp510, align 8
  %ob_refcnt511 = getelementptr inbounds %struct._object, %struct._object* %280, i32 0, i32 0
  %281 = load i64, i64* %ob_refcnt511, align 8
  %dec512 = add i64 %281, -1
  store i64 %dec512, i64* %ob_refcnt511, align 8
  %cmp513 = icmp ne i64 %dec512, 0
  br i1 %cmp513, label %if.then.515, label %if.else.516

if.then.515:                                      ; preds = %do.body.509
  br label %if.end.519

if.else.516:                                      ; preds = %do.body.509
  %282 = load %struct._object*, %struct._object** %_py_decref_tmp510, align 8
  %ob_type517 = getelementptr inbounds %struct._object, %struct._object* %282, i32 0, i32 1
  %283 = load %struct._typeobject*, %struct._typeobject** %ob_type517, align 8
  %tp_dealloc518 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %283, i32 0, i32 4
  %284 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc518, align 8
  %285 = load %struct._object*, %struct._object** %_py_decref_tmp510, align 8
  call void %284(%struct._object* %285)
  br label %if.end.519

if.end.519:                                       ; preds = %if.else.516, %if.then.515
  br label %do.end.520

do.end.520:                                       ; preds = %if.end.519
  br label %do.end.521

do.end.521:                                       ; preds = %do.end.520
  br label %do.end.522

do.end.522:                                       ; preds = %do.end.521
  br label %do.body.523

do.body.523:                                      ; preds = %do.end.522
  %286 = load %struct.lconv*, %struct.lconv** %l, align 8
  %n_sep_by_space = getelementptr inbounds %struct.lconv, %struct.lconv* %286, i32 0, i32 15
  %287 = load i8, i8* %n_sep_by_space, align 1
  %conv524 = sext i8 %287 to i64
  %call525 = call %struct._object* @PyLong_FromLong(i64 %conv524)
  store %struct._object* %call525, %struct._object** %x, align 8
  br label %do.body.526

do.body.526:                                      ; preds = %do.body.523
  %288 = load %struct._object*, %struct._object** %x, align 8
  %cmp527 = icmp eq %struct._object* %288, null
  br i1 %cmp527, label %if.then.529, label %if.end.530

if.then.529:                                      ; preds = %do.body.526
  br label %failed

if.end.530:                                       ; preds = %do.body.526
  %289 = load %struct._object*, %struct._object** %result, align 8
  %290 = load %struct._object*, %struct._object** %x, align 8
  %call531 = call i32 @PyDict_SetItemString(%struct._object* %289, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), %struct._object* %290)
  %cmp532 = icmp slt i32 %call531, 0
  br i1 %cmp532, label %if.then.534, label %if.end.547

if.then.534:                                      ; preds = %if.end.530
  br label %do.body.535

do.body.535:                                      ; preds = %if.then.534
  %291 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %291, %struct._object** %_py_decref_tmp536, align 8
  %292 = load %struct._object*, %struct._object** %_py_decref_tmp536, align 8
  %ob_refcnt537 = getelementptr inbounds %struct._object, %struct._object* %292, i32 0, i32 0
  %293 = load i64, i64* %ob_refcnt537, align 8
  %dec538 = add i64 %293, -1
  store i64 %dec538, i64* %ob_refcnt537, align 8
  %cmp539 = icmp ne i64 %dec538, 0
  br i1 %cmp539, label %if.then.541, label %if.else.542

if.then.541:                                      ; preds = %do.body.535
  br label %if.end.545

if.else.542:                                      ; preds = %do.body.535
  %294 = load %struct._object*, %struct._object** %_py_decref_tmp536, align 8
  %ob_type543 = getelementptr inbounds %struct._object, %struct._object* %294, i32 0, i32 1
  %295 = load %struct._typeobject*, %struct._typeobject** %ob_type543, align 8
  %tp_dealloc544 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %295, i32 0, i32 4
  %296 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc544, align 8
  %297 = load %struct._object*, %struct._object** %_py_decref_tmp536, align 8
  call void %296(%struct._object* %297)
  br label %if.end.545

if.end.545:                                       ; preds = %if.else.542, %if.then.541
  br label %do.end.546

do.end.546:                                       ; preds = %if.end.545
  br label %failed

if.end.547:                                       ; preds = %if.end.530
  br label %do.body.548

do.body.548:                                      ; preds = %if.end.547
  %298 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %298, %struct._object** %_py_decref_tmp549, align 8
  %299 = load %struct._object*, %struct._object** %_py_decref_tmp549, align 8
  %ob_refcnt550 = getelementptr inbounds %struct._object, %struct._object* %299, i32 0, i32 0
  %300 = load i64, i64* %ob_refcnt550, align 8
  %dec551 = add i64 %300, -1
  store i64 %dec551, i64* %ob_refcnt550, align 8
  %cmp552 = icmp ne i64 %dec551, 0
  br i1 %cmp552, label %if.then.554, label %if.else.555

if.then.554:                                      ; preds = %do.body.548
  br label %if.end.558

if.else.555:                                      ; preds = %do.body.548
  %301 = load %struct._object*, %struct._object** %_py_decref_tmp549, align 8
  %ob_type556 = getelementptr inbounds %struct._object, %struct._object* %301, i32 0, i32 1
  %302 = load %struct._typeobject*, %struct._typeobject** %ob_type556, align 8
  %tp_dealloc557 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %302, i32 0, i32 4
  %303 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc557, align 8
  %304 = load %struct._object*, %struct._object** %_py_decref_tmp549, align 8
  call void %303(%struct._object* %304)
  br label %if.end.558

if.end.558:                                       ; preds = %if.else.555, %if.then.554
  br label %do.end.559

do.end.559:                                       ; preds = %if.end.558
  br label %do.end.560

do.end.560:                                       ; preds = %do.end.559
  br label %do.end.561

do.end.561:                                       ; preds = %do.end.560
  br label %do.body.562

do.body.562:                                      ; preds = %do.end.561
  %305 = load %struct.lconv*, %struct.lconv** %l, align 8
  %p_sign_posn = getelementptr inbounds %struct.lconv, %struct.lconv* %305, i32 0, i32 16
  %306 = load i8, i8* %p_sign_posn, align 1
  %conv563 = sext i8 %306 to i64
  %call564 = call %struct._object* @PyLong_FromLong(i64 %conv563)
  store %struct._object* %call564, %struct._object** %x, align 8
  br label %do.body.565

do.body.565:                                      ; preds = %do.body.562
  %307 = load %struct._object*, %struct._object** %x, align 8
  %cmp566 = icmp eq %struct._object* %307, null
  br i1 %cmp566, label %if.then.568, label %if.end.569

if.then.568:                                      ; preds = %do.body.565
  br label %failed

if.end.569:                                       ; preds = %do.body.565
  %308 = load %struct._object*, %struct._object** %result, align 8
  %309 = load %struct._object*, %struct._object** %x, align 8
  %call570 = call i32 @PyDict_SetItemString(%struct._object* %308, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), %struct._object* %309)
  %cmp571 = icmp slt i32 %call570, 0
  br i1 %cmp571, label %if.then.573, label %if.end.586

if.then.573:                                      ; preds = %if.end.569
  br label %do.body.574

do.body.574:                                      ; preds = %if.then.573
  %310 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %310, %struct._object** %_py_decref_tmp575, align 8
  %311 = load %struct._object*, %struct._object** %_py_decref_tmp575, align 8
  %ob_refcnt576 = getelementptr inbounds %struct._object, %struct._object* %311, i32 0, i32 0
  %312 = load i64, i64* %ob_refcnt576, align 8
  %dec577 = add i64 %312, -1
  store i64 %dec577, i64* %ob_refcnt576, align 8
  %cmp578 = icmp ne i64 %dec577, 0
  br i1 %cmp578, label %if.then.580, label %if.else.581

if.then.580:                                      ; preds = %do.body.574
  br label %if.end.584

if.else.581:                                      ; preds = %do.body.574
  %313 = load %struct._object*, %struct._object** %_py_decref_tmp575, align 8
  %ob_type582 = getelementptr inbounds %struct._object, %struct._object* %313, i32 0, i32 1
  %314 = load %struct._typeobject*, %struct._typeobject** %ob_type582, align 8
  %tp_dealloc583 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %314, i32 0, i32 4
  %315 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc583, align 8
  %316 = load %struct._object*, %struct._object** %_py_decref_tmp575, align 8
  call void %315(%struct._object* %316)
  br label %if.end.584

if.end.584:                                       ; preds = %if.else.581, %if.then.580
  br label %do.end.585

do.end.585:                                       ; preds = %if.end.584
  br label %failed

if.end.586:                                       ; preds = %if.end.569
  br label %do.body.587

do.body.587:                                      ; preds = %if.end.586
  %317 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %317, %struct._object** %_py_decref_tmp588, align 8
  %318 = load %struct._object*, %struct._object** %_py_decref_tmp588, align 8
  %ob_refcnt589 = getelementptr inbounds %struct._object, %struct._object* %318, i32 0, i32 0
  %319 = load i64, i64* %ob_refcnt589, align 8
  %dec590 = add i64 %319, -1
  store i64 %dec590, i64* %ob_refcnt589, align 8
  %cmp591 = icmp ne i64 %dec590, 0
  br i1 %cmp591, label %if.then.593, label %if.else.594

if.then.593:                                      ; preds = %do.body.587
  br label %if.end.597

if.else.594:                                      ; preds = %do.body.587
  %320 = load %struct._object*, %struct._object** %_py_decref_tmp588, align 8
  %ob_type595 = getelementptr inbounds %struct._object, %struct._object* %320, i32 0, i32 1
  %321 = load %struct._typeobject*, %struct._typeobject** %ob_type595, align 8
  %tp_dealloc596 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %321, i32 0, i32 4
  %322 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc596, align 8
  %323 = load %struct._object*, %struct._object** %_py_decref_tmp588, align 8
  call void %322(%struct._object* %323)
  br label %if.end.597

if.end.597:                                       ; preds = %if.else.594, %if.then.593
  br label %do.end.598

do.end.598:                                       ; preds = %if.end.597
  br label %do.end.599

do.end.599:                                       ; preds = %do.end.598
  br label %do.end.600

do.end.600:                                       ; preds = %do.end.599
  br label %do.body.601

do.body.601:                                      ; preds = %do.end.600
  %324 = load %struct.lconv*, %struct.lconv** %l, align 8
  %n_sign_posn = getelementptr inbounds %struct.lconv, %struct.lconv* %324, i32 0, i32 17
  %325 = load i8, i8* %n_sign_posn, align 1
  %conv602 = sext i8 %325 to i64
  %call603 = call %struct._object* @PyLong_FromLong(i64 %conv602)
  store %struct._object* %call603, %struct._object** %x, align 8
  br label %do.body.604

do.body.604:                                      ; preds = %do.body.601
  %326 = load %struct._object*, %struct._object** %x, align 8
  %cmp605 = icmp eq %struct._object* %326, null
  br i1 %cmp605, label %if.then.607, label %if.end.608

if.then.607:                                      ; preds = %do.body.604
  br label %failed

if.end.608:                                       ; preds = %do.body.604
  %327 = load %struct._object*, %struct._object** %result, align 8
  %328 = load %struct._object*, %struct._object** %x, align 8
  %call609 = call i32 @PyDict_SetItemString(%struct._object* %327, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), %struct._object* %328)
  %cmp610 = icmp slt i32 %call609, 0
  br i1 %cmp610, label %if.then.612, label %if.end.625

if.then.612:                                      ; preds = %if.end.608
  br label %do.body.613

do.body.613:                                      ; preds = %if.then.612
  %329 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %329, %struct._object** %_py_decref_tmp614, align 8
  %330 = load %struct._object*, %struct._object** %_py_decref_tmp614, align 8
  %ob_refcnt615 = getelementptr inbounds %struct._object, %struct._object* %330, i32 0, i32 0
  %331 = load i64, i64* %ob_refcnt615, align 8
  %dec616 = add i64 %331, -1
  store i64 %dec616, i64* %ob_refcnt615, align 8
  %cmp617 = icmp ne i64 %dec616, 0
  br i1 %cmp617, label %if.then.619, label %if.else.620

if.then.619:                                      ; preds = %do.body.613
  br label %if.end.623

if.else.620:                                      ; preds = %do.body.613
  %332 = load %struct._object*, %struct._object** %_py_decref_tmp614, align 8
  %ob_type621 = getelementptr inbounds %struct._object, %struct._object* %332, i32 0, i32 1
  %333 = load %struct._typeobject*, %struct._typeobject** %ob_type621, align 8
  %tp_dealloc622 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %333, i32 0, i32 4
  %334 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc622, align 8
  %335 = load %struct._object*, %struct._object** %_py_decref_tmp614, align 8
  call void %334(%struct._object* %335)
  br label %if.end.623

if.end.623:                                       ; preds = %if.else.620, %if.then.619
  br label %do.end.624

do.end.624:                                       ; preds = %if.end.623
  br label %failed

if.end.625:                                       ; preds = %if.end.608
  br label %do.body.626

do.body.626:                                      ; preds = %if.end.625
  %336 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %336, %struct._object** %_py_decref_tmp627, align 8
  %337 = load %struct._object*, %struct._object** %_py_decref_tmp627, align 8
  %ob_refcnt628 = getelementptr inbounds %struct._object, %struct._object* %337, i32 0, i32 0
  %338 = load i64, i64* %ob_refcnt628, align 8
  %dec629 = add i64 %338, -1
  store i64 %dec629, i64* %ob_refcnt628, align 8
  %cmp630 = icmp ne i64 %dec629, 0
  br i1 %cmp630, label %if.then.632, label %if.else.633

if.then.632:                                      ; preds = %do.body.626
  br label %if.end.636

if.else.633:                                      ; preds = %do.body.626
  %339 = load %struct._object*, %struct._object** %_py_decref_tmp627, align 8
  %ob_type634 = getelementptr inbounds %struct._object, %struct._object* %339, i32 0, i32 1
  %340 = load %struct._typeobject*, %struct._typeobject** %ob_type634, align 8
  %tp_dealloc635 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %340, i32 0, i32 4
  %341 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc635, align 8
  %342 = load %struct._object*, %struct._object** %_py_decref_tmp627, align 8
  call void %341(%struct._object* %342)
  br label %if.end.636

if.end.636:                                       ; preds = %if.else.633, %if.then.632
  br label %do.end.637

do.end.637:                                       ; preds = %if.end.636
  br label %do.end.638

do.end.638:                                       ; preds = %do.end.637
  br label %do.end.639

do.end.639:                                       ; preds = %do.end.638
  %343 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %343, %struct._object** %retval
  br label %return

failed:                                           ; preds = %do.end.624, %if.then.607, %do.end.585, %if.then.568, %do.end.546, %if.then.529, %do.end.507, %if.then.490, %do.end.468, %if.then.451, %do.end.429, %if.then.412, %do.end.390, %if.then.373, %do.end.351, %if.then.334, %do.end.314, %if.then.299, %do.end.280, %if.then.265, %do.end.247, %if.then.232, %do.end.214, %if.then.199, %do.end.180, %if.then.165, %do.end.146, %if.then.131, %do.end.112, %if.then.97, %do.end.79, %if.then.64, %do.end.46, %if.then.31, %do.end, %if.then.4
  br label %do.body.640

do.body.640:                                      ; preds = %failed
  %344 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %344, %struct._object** %_py_xdecref_tmp, align 8
  %345 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp641 = icmp ne %struct._object* %345, null
  br i1 %cmp641, label %if.then.643, label %if.end.656

if.then.643:                                      ; preds = %do.body.640
  br label %do.body.644

do.body.644:                                      ; preds = %if.then.643
  %346 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %346, %struct._object** %_py_decref_tmp645, align 8
  %347 = load %struct._object*, %struct._object** %_py_decref_tmp645, align 8
  %ob_refcnt646 = getelementptr inbounds %struct._object, %struct._object* %347, i32 0, i32 0
  %348 = load i64, i64* %ob_refcnt646, align 8
  %dec647 = add i64 %348, -1
  store i64 %dec647, i64* %ob_refcnt646, align 8
  %cmp648 = icmp ne i64 %dec647, 0
  br i1 %cmp648, label %if.then.650, label %if.else.651

if.then.650:                                      ; preds = %do.body.644
  br label %if.end.654

if.else.651:                                      ; preds = %do.body.644
  %349 = load %struct._object*, %struct._object** %_py_decref_tmp645, align 8
  %ob_type652 = getelementptr inbounds %struct._object, %struct._object* %349, i32 0, i32 1
  %350 = load %struct._typeobject*, %struct._typeobject** %ob_type652, align 8
  %tp_dealloc653 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %350, i32 0, i32 4
  %351 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc653, align 8
  %352 = load %struct._object*, %struct._object** %_py_decref_tmp645, align 8
  call void %351(%struct._object* %352)
  br label %if.end.654

if.end.654:                                       ; preds = %if.else.651, %if.then.650
  br label %do.end.655

do.end.655:                                       ; preds = %if.end.654
  br label %if.end.656

if.end.656:                                       ; preds = %do.end.655, %do.body.640
  br label %do.end.657

do.end.657:                                       ; preds = %if.end.656
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.657, %do.end.639, %if.then
  %353 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %353
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyLocale_strcoll(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %os1 = alloca %struct._object*, align 8
  %os2 = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %ws1 = alloca i32*, align 8
  %ws2 = alloca i32*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store i32* null, i32** %ws1, align 8
  store i32* null, i32** %ws2, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), %struct._object** %os1, %struct._object** %os2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %os1, align 8
  %call1 = call i32* @PyUnicode_AsWideCharString(%struct._object* %1, i64* null)
  store i32* %call1, i32** %ws1, align 8
  %2 = load i32*, i32** %ws1, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %done

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %os2, align 8
  %call4 = call i32* @PyUnicode_AsWideCharString(%struct._object* %3, i64* null)
  store i32* %call4, i32** %ws2, align 8
  %4 = load i32*, i32** %ws2, align 8
  %cmp5 = icmp eq i32* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %done

if.end.7:                                         ; preds = %if.end.3
  %5 = load i32*, i32** %ws1, align 8
  %6 = load i32*, i32** %ws2, align 8
  %call8 = call i32 @wcscoll(i32* %5, i32* %6) #4
  %conv = sext i32 %call8 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call9, %struct._object** %result, align 8
  br label %done

done:                                             ; preds = %if.end.7, %if.then.6, %if.then.2
  %7 = load i32*, i32** %ws1, align 8
  %tobool10 = icmp ne i32* %7, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %done
  %8 = load i32*, i32** %ws1, align 8
  %9 = bitcast i32* %8 to i8*
  call void @PyMem_Free(i8* %9)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %done
  %10 = load i32*, i32** %ws2, align 8
  %tobool13 = icmp ne i32* %10, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %11 = load i32*, i32** %ws2, align 8
  %12 = bitcast i32* %11 to i8*
  call void @PyMem_Free(i8* %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyLocale_strxfrm(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %n1 = alloca i64, align 8
  %s = alloca i32*, align 8
  %buf = alloca i32*, align 8
  %n2 = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %new_buf = alloca i32*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32* null, i32** %s, align 8
  store i32* null, i32** %buf, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), %struct._object** %str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call i32* @PyUnicode_AsWideCharString(%struct._object* %1, i64* %n1)
  store i32* %call1, i32** %s, align 8
  %2 = load i32*, i32** %s, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %exit

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* %n1, align 8
  %add = add i64 %3, 1
  store i64 %add, i64* %n1, align 8
  %4 = load i64, i64* %n1, align 8
  %mul = mul i64 %4, 4
  %call4 = call i8* @PyMem_Malloc(i64 %mul)
  %5 = bitcast i8* %call4 to i32*
  store i32* %5, i32** %buf, align 8
  %6 = load i32*, i32** %buf, align 8
  %tobool5 = icmp ne i32* %6, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %call7 = call %struct._object* @PyErr_NoMemory()
  br label %exit

if.end.8:                                         ; preds = %if.end.3
  %7 = load i32*, i32** %buf, align 8
  %8 = load i32*, i32** %s, align 8
  %9 = load i64, i64* %n1, align 8
  %call9 = call i64 @wcsxfrm(i32* %7, i32* %8, i64 %9) #4
  store i64 %call9, i64* %n2, align 8
  %10 = load i64, i64* %n2, align 8
  %11 = load i64, i64* %n1, align 8
  %cmp10 = icmp uge i64 %10, %11
  br i1 %cmp10, label %if.then.11, label %if.end.21

if.then.11:                                       ; preds = %if.end.8
  %12 = load i32*, i32** %buf, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i64, i64* %n2, align 8
  %add12 = add i64 %14, 1
  %mul13 = mul i64 %add12, 4
  %call14 = call i8* @PyMem_Realloc(i8* %13, i64 %mul13)
  %15 = bitcast i8* %call14 to i32*
  store i32* %15, i32** %new_buf, align 8
  %16 = load i32*, i32** %new_buf, align 8
  %tobool15 = icmp ne i32* %16, null
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %if.then.11
  %call17 = call %struct._object* @PyErr_NoMemory()
  br label %exit

if.end.18:                                        ; preds = %if.then.11
  %17 = load i32*, i32** %new_buf, align 8
  store i32* %17, i32** %buf, align 8
  %18 = load i32*, i32** %buf, align 8
  %19 = load i32*, i32** %s, align 8
  %20 = load i64, i64* %n2, align 8
  %add19 = add i64 %20, 1
  %call20 = call i64 @wcsxfrm(i32* %18, i32* %19, i64 %add19) #4
  store i64 %call20, i64* %n2, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.18, %if.end.8
  %21 = load i32*, i32** %buf, align 8
  %22 = load i64, i64* %n2, align 8
  %call22 = call %struct._object* @PyUnicode_FromWideChar(i32* %21, i64 %22)
  store %struct._object* %call22, %struct._object** %result, align 8
  br label %exit

exit:                                             ; preds = %if.end.21, %if.then.16, %if.then.6, %if.then.2
  %23 = load i32*, i32** %buf, align 8
  %tobool23 = icmp ne i32* %23, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %exit
  %24 = load i32*, i32** %buf, align 8
  %25 = bitcast i32* %24 to i8*
  call void @PyMem_Free(i8* %25)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %exit
  %26 = load i32*, i32** %s, align 8
  %tobool26 = icmp ne i32* %26, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %27 = load i32*, i32** %s, align 8
  %28 = bitcast i32* %27 to i8*
  call void @PyMem_Free(i8* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %29 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyLocale_nl_langinfo(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %item = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i32* %item)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [57 x %struct.langinfo_constant], [57 x %struct.langinfo_constant]* @langinfo_constants, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.langinfo_constant, %struct.langinfo_constant* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr [57 x %struct.langinfo_constant], [57 x %struct.langinfo_constant]* @langinfo_constants, i32 0, i64 %idxprom2
  %value = getelementptr inbounds %struct.langinfo_constant, %struct.langinfo_constant* %arrayidx3, i32 0, i32 1
  %4 = load i32, i32* %value, align 4
  %5 = load i32, i32* %item, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %for.body
  %6 = load i32, i32* %item, align 4
  %call5 = call i8* @nl_langinfo(i32 %6) #4
  store i8* %call5, i8** %result, align 8
  %7 = load i8*, i8** %result, align 8
  %cmp6 = icmp ne i8* %7, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %8 = load i8*, i8** %result, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %result, align 8
  %9 = load i8*, i8** %result, align 8
  %call7 = call %struct._object* @PyUnicode_DecodeLocale(i8* %9, i8* null)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %cond.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyIntl_gettext(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %in = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8** %in)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %in, align 8
  %call1 = call i8* @gettext(i8* %1) #4
  %call2 = call %struct._object* @PyUnicode_DecodeLocale(i8* %call1, i8* null)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyIntl_dgettext(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %domain = alloca i8*, align 8
  %in = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8** %domain, i8** %in)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %domain, align 8
  %2 = load i8*, i8** %in, align 8
  %call1 = call i8* @dgettext(i8* %1, i8* %2) #4
  %call2 = call %struct._object* @PyUnicode_DecodeLocale(i8* %call1, i8* null)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyIntl_dcgettext(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %domain = alloca i8*, align 8
  %msgid = alloca i8*, align 8
  %category = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8** %domain, i8** %msgid, i32* %category)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %domain, align 8
  %2 = load i8*, i8** %msgid, align 8
  %3 = load i32, i32* %category, align 4
  %call1 = call i8* @dcgettext(i8* %1, i8* %2, i32 %3) #4
  %call2 = call %struct._object* @PyUnicode_DecodeLocale(i8* %call1, i8* null)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyIntl_textdomain(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %domain = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i8** %domain)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %domain, align 8
  %call1 = call i8* @textdomain(i8* %1) #4
  store i8* %call1, i8** %domain, align 8
  %2 = load i8*, i8** %domain, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i8*, i8** %domain, align 8
  %call6 = call %struct._object* @PyUnicode_DecodeLocale(i8* %4, i8* null)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyIntl_bindtextdomain(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %domain = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  %current_dirname = alloca i8*, align 8
  %dirname_obj = alloca %struct._object*, align 8
  %dirname_bytes = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %dirname_bytes, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8** %domain, %struct._object** %dirname_obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %domain, align 8
  %call1 = call i64 @strlen(i8* %1) #5
  %tobool2 = icmp ne i64 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %dirname_obj, align 8
  %cmp = icmp ne %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %dirname_obj, align 8
  %5 = bitcast %struct._object** %dirname_bytes to i8*
  %call6 = call i32 @PyUnicode_FSConverter(%struct._object* %4, i8* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  %6 = load %struct._object*, %struct._object** %dirname_bytes, align 8
  %call10 = call i8* @PyBytes_AsString(%struct._object* %6)
  store i8* %call10, i8** %dirname, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end.4
  store %struct._object* null, %struct._object** %dirname_bytes, align 8
  store i8* null, i8** %dirname, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end.9
  %7 = load i8*, i8** %domain, align 8
  %8 = load i8*, i8** %dirname, align 8
  %call12 = call i8* @bindtextdomain(i8* %7, i8* %8) #4
  store i8* %call12, i8** %current_dirname, align 8
  %9 = load i8*, i8** %current_dirname, align 8
  %cmp13 = icmp eq i8* %9, null
  br i1 %cmp13, label %if.then.14, label %if.end.25

if.then.14:                                       ; preds = %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %10 = load %struct._object*, %struct._object** %dirname_bytes, align 8
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp15 = icmp ne %struct._object* %11, null
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %do.body
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.21
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %do.body
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %19 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call24 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %19)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.11
  %20 = load i8*, i8** %current_dirname, align 8
  %call26 = call %struct._object* @PyUnicode_DecodeLocale(i8* %20, i8* null)
  store %struct._object* %call26, %struct._object** %result, align 8
  br label %do.body.27

do.body.27:                                       ; preds = %if.end.25
  %21 = load %struct._object*, %struct._object** %dirname_bytes, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp28, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  %cmp29 = icmp ne %struct._object* %22, null
  br i1 %cmp29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp32, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %25, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %28(%struct._object* %29)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.27
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %30 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.43, %do.end.23, %if.then.8, %if.then.3, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyIntl_bind_textdomain_codeset(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %domain = alloca i8*, align 8
  %codeset = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8** %domain, i8** %codeset)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %domain, align 8
  %2 = load i8*, i8** %codeset, align 8
  %call1 = call i8* @bind_textdomain_codeset(i8* %1, i8* %2) #4
  store i8* %call1, i8** %codeset, align 8
  %3 = load i8*, i8** %codeset, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load i8*, i8** %codeset, align 8
  %call4 = call %struct._object* @PyUnicode_DecodeLocale(i8* %4, i8* null)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #1

declare %struct._object* @PyDict_New() #1

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @copy_grouping(i8* %s) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct._object* null, %struct._object** %val, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %s.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %6 = load i8*, i8** %s.addr, align 8
  %arrayidx7 = getelementptr i8, i8* %6, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp ne i32 %conv8, 127
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  %add = add i32 %10, 1
  %conv11 = sext i32 %add to i64
  %call12 = call %struct._object* @PyList_New(i64 %conv11)
  store %struct._object* %call12, %struct._object** %result, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %tobool = icmp ne %struct._object* %11, null
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %for.end
  store i32 -1, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %land.end.44, %if.end.14
  %12 = load i32, i32* %i, align 4
  %inc15 = add i32 %12, 1
  store i32 %inc15, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %14 = load i8*, i8** %s.addr, align 8
  %arrayidx17 = getelementptr i8, i8* %14, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %15 to i64
  %call19 = call %struct._object* @PyLong_FromLong(i64 %conv18)
  store %struct._object* %call19, %struct._object** %val, align 8
  %16 = load %struct._object*, %struct._object** %val, align 8
  %tobool20 = icmp ne %struct._object* %16, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.body
  br label %do.end.45

if.end.22:                                        ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %result, align 8
  %18 = load i32, i32* %i, align 4
  %conv23 = sext i32 %18 to i64
  %19 = load %struct._object*, %struct._object** %val, align 8
  %call24 = call i32 @PyList_SetItem(%struct._object* %17, i64 %conv23, %struct._object* %19)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %if.end.22
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %20 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body.27
  br label %if.end.31

if.else:                                          ; preds = %do.body.27
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.31
  store %struct._object* null, %struct._object** %val, align 8
  br label %do.end.45

if.end.32:                                        ; preds = %if.end.22
  br label %do.cond

do.cond:                                          ; preds = %if.end.32
  %27 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load i8*, i8** %s.addr, align 8
  %arrayidx34 = getelementptr i8, i8* %28, i64 %idxprom33
  %29 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %29 to i32
  %cmp36 = icmp ne i32 %conv35, 0
  br i1 %cmp36, label %land.rhs.38, label %land.end.44

land.rhs.38:                                      ; preds = %do.cond
  %30 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %30 to i64
  %31 = load i8*, i8** %s.addr, align 8
  %arrayidx40 = getelementptr i8, i8* %31, i64 %idxprom39
  %32 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %32 to i32
  %cmp42 = icmp ne i32 %conv41, 127
  br label %land.end.44

land.end.44:                                      ; preds = %land.rhs.38, %do.cond
  %33 = phi i1 [ false, %do.cond ], [ %cmp42, %land.rhs.38 ]
  br i1 %33, label %do.body, label %do.end.45

do.end.45:                                        ; preds = %land.end.44, %do.end, %if.then.21
  %34 = load %struct._object*, %struct._object** %val, align 8
  %tobool46 = icmp ne %struct._object* %34, null
  br i1 %tobool46, label %if.end.61, label %if.then.47

if.then.47:                                       ; preds = %do.end.45
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %35 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp49, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %37, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.48
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.48
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %40(%struct._object* %41)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.58
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %do.end.45
  %42 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %42, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.61, %do.end.60, %if.then.13, %if.then
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #1

declare i32* @PyUnicode_AsWideCharString(%struct._object*, i64*) #1

; Function Attrs: nounwind
declare i32 @wcscoll(i32*, i32*) #2

declare void @PyMem_Free(i8*) #1

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare i64 @wcsxfrm(i32*, i32*, i64) #2

declare i8* @PyMem_Realloc(i8*, i64) #1

declare %struct._object* @PyUnicode_FromWideChar(i32*, i64) #1

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
