; ModuleID = './plug-ins/script-fu/scheme-wrapper.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scheme = type { i8* (i64)*, void (i8*)*, i32, i32, [50 x i8*], [50 x %struct.cell*], i32, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, i32, i32, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, i64, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, [64 x %struct.port], [64 x i32], i32, i32, i8, i8, [1024 x i8], [1024 x i8], %struct._IO_FILE*, i32, i32, %struct.cell*, i32, i8*, i64, %struct.scheme_interface*, i8*, i32, [2 x i32], i32 }
%struct.cell = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i32 }
%struct.port = type { i8, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct._IO_FILE*, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.scheme_interface = type { void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, double)*, %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*)*, %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*, i32)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, i8*)*, void (%struct.scheme*, i32)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, { i8, i64 } (%struct.cell*)*, i64 (%struct.cell*)*, double (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)*, i64 (%struct.cell*)*, void (%struct.cell*, %struct.cell*)*, %struct.cell* (%struct.cell*, i32)*, %struct.cell* (%struct.cell*, i32, %struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*, %struct.cell*)*, %struct.cell* (%struct.cell*, %struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, void (%struct.cell*)*, void (%struct.scheme*, %struct._IO_FILE*)*, void (%struct.scheme*, i8*)* }
%struct.NamedConstant = type { i8*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GTypeClass = type { i64 }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParasite = type { i8*, i32, i32, i8* }

@sc = internal global %struct.scheme zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"Could not initialize TinyScheme!\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"script-fu.init\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"script-fu-compat.init\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"plug-in-compat.init\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Unable to read initialization file script-fu.init\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"SF-RUN-MODE\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Welcome to TinyScheme, Version 1.40\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Copyright (c) Dimitrios Souflis\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"gimp-directory\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"gimp-data-directory\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"gimp-plug-in-directory\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"gimp-locale-directory\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"gimp-sysconf-directory\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"GIMP_\00", align 1
@script_constants = internal constant [35 x %struct.NamedConstant] [%struct.NamedConstant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 262144 }, %struct.NamedConstant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i32 65536 }, %struct.NamedConstant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 3 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 4 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 3 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 4 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 5 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 6 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 7 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 8 }, %struct.NamedConstant { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i32 14 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 15 }, %struct.NamedConstant { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i32 9 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i32 10 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 11 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 12 }, %struct.NamedConstant { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 13 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 16 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 17 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 18 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 19 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i32 20 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 1 }, %struct.NamedConstant zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [14 x i8] c"DIR-SEPARATOR\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"SEARCHPATH-SEPARATOR\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"gimp-dir\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"gimp-data-dir\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"gimp-plugin-dir\00", align 1
@old_constants = internal constant [61 x %struct.NamedConstant] [%struct.NamedConstant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 3 }, %struct.NamedConstant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 4 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i32 5 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i32 6 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 7 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 8 }, %struct.NamedConstant { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i32 9 }, %struct.NamedConstant { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i32 10 }, %struct.NamedConstant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 11 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i32 12 }, %struct.NamedConstant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 13 }, %struct.NamedConstant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 14 }, %struct.NamedConstant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 15 }, %struct.NamedConstant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i32 4 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 5 }, %struct.NamedConstant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 3 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 3 }, %struct.NamedConstant { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.90, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0), i32 3 }, %struct.NamedConstant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i32 3 }, %struct.NamedConstant { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i32 0, i32 0), i32 4 }, %struct.NamedConstant { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i32 0, i32 0), i32 5 }, %struct.NamedConstant { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.107, i32 0, i32 0), i32 6 }, %struct.NamedConstant { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), i32 7 }, %struct.NamedConstant { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.109, i32 0, i32 0), i32 8 }, %struct.NamedConstant { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i32 0, i32 0), i32 9 }, %struct.NamedConstant { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i32 0, i32 0), i32 10 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i32 0 }, %struct.NamedConstant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i32 1 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i32 2 }, %struct.NamedConstant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i32 3 }, %struct.NamedConstant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i32 4 }, %struct.NamedConstant zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [15 x i8] c"MIN-IMAGE-SIZE\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"MAX-IMAGE-SIZE\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"MIN-RESOLUTION\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"MAX-RESOLUTION\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"UNIT-PIXEL\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"UNIT-INCH\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"UNIT-MM\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"UNIT-POINT\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"UNIT-PICA\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"SF-IMAGE\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"SF-DRAWABLE\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"SF-LAYER\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"SF-CHANNEL\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"SF-VECTORS\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"SF-COLOR\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"SF-TOGGLE\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"SF-VALUE\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"SF-STRING\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"SF-FILENAME\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"SF-DIRNAME\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"SF-ADJUSTMENT\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"SF-FONT\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"SF-PATTERN\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"SF-BRUSH\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"SF-GRADIENT\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"SF-OPTION\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"SF-PALETTE\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"SF-TEXT\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"SF-ENUM\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"SF-DISPLAY\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"SF-SLIDER\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"SF-SPINNER\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"DISSOLVE\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"BEHIND\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"OVERLAY\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"DIFFERENCE\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"ADDITION\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"DARKEN-ONLY\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"LIGHTEN-ONLY\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"HUE\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"SATURATION\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"DIVIDE\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"BLUR\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"SHARPEN\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"WHITE-MASK\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"BLACK-MASK\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"ALPHA-MASK\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"SELECTION-MASK\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"COPY-MASK\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"INTERSECT\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"FG-BG-RGB\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"FG-BG-HSV\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"FG-TRANS\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"CUSTOM\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"FG-IMAGE-FILL\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"BG-IMAGE-FILL\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"WHITE-IMAGE-FILL\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"TRANS-IMAGE-FILL\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"APPLY\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"DISCARD\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"HARD\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"SOFT\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"CONTINUOUS\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"INCREMENTAL\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"HORIZONTAL\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"VERTICAL\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"BILINEAR\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"RADIAL\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"SQUARE\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"CONICAL-SYMMETRIC\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"CONICAL-ASYMMETRIC\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"SHAPEBURST-ANGULAR\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"SHAPEBURST-SPHERICAL\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"SHAPEBURST-DIMPLED\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"SPIRAL-CLOCKWISE\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"SPIRAL-ANTICLOCKWISE\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"VALUE-LUT\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"RED-LUT\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"GREEN-LUT\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"BLUE-LUT\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"ALPHA-LUT\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"script-fu-register\00", align 1
@.str.118 = private unnamed_addr constant [24 x i8] c"script-fu-menu-register\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"script-fu-quit\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"gimp-proc-db-call\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.122 = private unnamed_addr constant [40 x i8] c" (define (%s) (gimp-proc-db-call \22%s\22))\00", align 1
@.str.123 = private unnamed_addr constant [64 x i8] c" (define %s (lambda x (apply gimp-proc-db-call (cons \22%s\22 x))))\00", align 1
@.str.124 = private unnamed_addr constant [154 x i8] c"Procedure argument marshaller was called with no arguments. The procedure to be executed and the arguments it requires (possibly none) must be specified.\00", align 1
@.str.125 = private unnamed_addr constant [36 x i8] c"Invalid procedure name %s specified\00", align 1
@.str.126 = private unnamed_addr constant [65 x i8] c"Invalid number of arguments for %s (expected %d but received %d)\00", align 1
@.str.127 = private unnamed_addr constant [83 x i8] c"INT32 vector (argument %d) for function %s has size of %ld but expected size of %d\00", align 1
@.str.128 = private unnamed_addr constant [64 x i8] c"Item %d in vector is not a number (argument %d for function %s)\00", align 1
@.str.129 = private unnamed_addr constant [83 x i8] c"INT16 vector (argument %d) for function %s has size of %ld but expected size of %d\00", align 1
@.str.130 = private unnamed_addr constant [82 x i8] c"INT8 vector (argument %d) for function %s has size of %ld but expected size of %d\00", align 1
@.str.131 = private unnamed_addr constant [83 x i8] c"FLOAT vector (argument %d) for function %s has size of %ld but expected size of %d\00", align 1
@.str.132 = private unnamed_addr constant [87 x i8] c"STRING vector (argument %d) for function %s has length of %d but expected length of %d\00", align 1
@.str.133 = private unnamed_addr constant [64 x i8] c"Item %d in vector is not a string (argument %d for function %s)\00", align 1
@.str.134 = private unnamed_addr constant [83 x i8] c"COLOR vector (argument %d) for function %s has size of %ld but expected size of %d\00", align 1
@.str.135 = private unnamed_addr constant [63 x i8] c"Item %d in vector is not a color (argument %d for function %s)\00", align 1
@.str.136 = private unnamed_addr constant [42 x i8] c"Status is for return types, not arguments\00", align 1
@.str.137 = private unnamed_addr constant [38 x i8] c"Argument %d for %s is an unknown type\00", align 1
@.str.138 = private unnamed_addr constant [35 x i8] c"Invalid type for argument %d to %s\00", align 1
@.str.139 = private unnamed_addr constant [50 x i8] c"Procedure execution of %s did not return a status\00", align 1
@.str.140 = private unnamed_addr constant [37 x i8] c"Procedure execution of %s failed: %s\00", align 1
@.str.141 = private unnamed_addr constant [33 x i8] c"Procedure execution of %s failed\00", align 1
@.str.142 = private unnamed_addr constant [64 x i8] c"Procedure execution of %s failed on invalid input arguments: %s\00", align 1
@.str.143 = private unnamed_addr constant [60 x i8] c"Procedure execution of %s failed on invalid input arguments\00", align 1
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"Error: null parasite\00", align 1
@.str.146 = private unnamed_addr constant [52 x i8] c"Procedure execution returned multiple status values\00", align 1
@.str.147 = private unnamed_addr constant [20 x i8] c"Unknown return type\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: nounwind uwtable
define void @tinyscheme_init(i8* %path, i32 %register_scripts) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %register_scripts.addr = alloca i32, align 4
  %dir_list = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 %register_scripts, i32* %register_scripts.addr, align 4
  %call = call i32 @scheme_init(%struct.scheme* @sc)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  br label %if.end.16

if.end:                                           ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @scheme_set_input_port_file(%struct.scheme* @sc, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @scheme_set_output_port_file(%struct.scheme* @sc, %struct._IO_FILE* %1)
  call void @ts_register_output_func(void (i32, i8*, i32, i8*)* @ts_stdout_output_func, i8* null)
  call void @init_ftx(%struct.scheme* @sc)
  call void @script_fu_regex_init(%struct.scheme* @sc)
  call void @ts_init_constants(%struct.scheme* @sc)
  %2 = load i32, i32* %register_scripts.addr, align 4
  call void @ts_init_procedures(%struct.scheme* @sc, i32 %2)
  %3 = load i8*, i8** %path.addr, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.16

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %path.addr, align 8
  %call3 = call %struct._GList* @gimp_path_parse(i8* %4, i32 256, i32 1, %struct._GList** null)
  store %struct._GList* %call3, %struct._GList** %dir_list, align 8
  %5 = load %struct._GList*, %struct._GList** %dir_list, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.2
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %6, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %call5 = call i32 @ts_load_file(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %for.body
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data8 = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data8, align 8
  %call9 = call i32 @ts_load_file(i8* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data10 = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data10, align 8
  %call11 = call i32 @ts_load_file(i8* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %for.end

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool13 = icmp ne %struct._GList* %13, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %for.cond
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %cmp = icmp eq %struct._GList* %16, null
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %for.end
  %17 = load %struct._GList*, %struct._GList** %dir_list, align 8
  call void @gimp_path_free(%struct._GList* %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then, %if.end.15, %if.end
  ret void
}

declare i32 @scheme_init(%struct.scheme*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @scheme_set_input_port_file(%struct.scheme*, %struct._IO_FILE*) #1

declare void @scheme_set_output_port_file(%struct.scheme*, %struct._IO_FILE*) #1

declare void @ts_register_output_func(void (i32, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define void @ts_stdout_output_func(i32 %type, i8* %string, i32 %len, i8* %user_data) #0 {
entry:
  %type.addr = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = load i32, i32* %len.addr, align 4
  %4 = load i8*, i8** %string.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %3, i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %5)
  ret void
}

declare void @init_ftx(%struct.scheme*) #1

declare void @script_fu_regex_init(%struct.scheme*) #1

; Function Attrs: nounwind uwtable
define internal void @ts_init_constants(%struct.scheme* %sc) #0 {
entry:
  %sc.addr = alloca %struct.scheme*, align 8
  %enum_type_names = alloca i8**, align 8
  %n_enum_type_names = alloca i32, align 4
  %i = alloca i32, align 4
  %symbol = alloca %struct.cell*, align 8
  %enum_name = alloca i8*, align 8
  %enum_type = alloca i64, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %value = alloca %struct._GEnumValue*, align 8
  %scheme_name = alloca i8*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 58
  %1 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %mk_symbol = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1, i32 0, i32 6
  %2 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol, align 8
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call = call %struct.cell* %2(%struct.scheme* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  store %struct.cell* %call, %struct.cell** %symbol, align 8
  %4 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %4, i32 0, i32 58
  %5 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %scheme_define = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %5, i32 0, i32 0
  %6 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define, align 8
  %7 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %8 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env = getelementptr inbounds %struct.scheme, %struct.scheme* %8, i32 0, i32 25
  %9 = load %struct.cell*, %struct.cell** %global_env, align 8
  %10 = load %struct.cell*, %struct.cell** %symbol, align 8
  %11 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr2 = getelementptr inbounds %struct.scheme, %struct.scheme* %11, i32 0, i32 58
  %12 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr2, align 8
  %mk_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %12, i32 0, i32 8
  %13 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string, align 8
  %14 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call3 = call i8* @gimp_directory() #6
  %call4 = call %struct.cell* %13(%struct.scheme* %14, i8* %call3)
  call void %6(%struct.scheme* %7, %struct.cell* %9, %struct.cell* %10, %struct.cell* %call4)
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr5 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr5, align 8
  %setimmutable = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 54
  %17 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable, align 8
  %18 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %17(%struct.cell* %18)
  %19 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %19, i32 0, i32 58
  %20 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %mk_symbol7 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %20, i32 0, i32 6
  %21 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol7, align 8
  %22 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call8 = call %struct.cell* %21(%struct.scheme* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  store %struct.cell* %call8, %struct.cell** %symbol, align 8
  %23 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr9 = getelementptr inbounds %struct.scheme, %struct.scheme* %23, i32 0, i32 58
  %24 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr9, align 8
  %scheme_define10 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %24, i32 0, i32 0
  %25 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define10, align 8
  %26 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %27 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env11 = getelementptr inbounds %struct.scheme, %struct.scheme* %27, i32 0, i32 25
  %28 = load %struct.cell*, %struct.cell** %global_env11, align 8
  %29 = load %struct.cell*, %struct.cell** %symbol, align 8
  %30 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr12 = getelementptr inbounds %struct.scheme, %struct.scheme* %30, i32 0, i32 58
  %31 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr12, align 8
  %mk_string13 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %31, i32 0, i32 8
  %32 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string13, align 8
  %33 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call14 = call i8* @gimp_data_directory() #6
  %call15 = call %struct.cell* %32(%struct.scheme* %33, i8* %call14)
  call void %25(%struct.scheme* %26, %struct.cell* %28, %struct.cell* %29, %struct.cell* %call15)
  %34 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr16 = getelementptr inbounds %struct.scheme, %struct.scheme* %34, i32 0, i32 58
  %35 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr16, align 8
  %setimmutable17 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %35, i32 0, i32 54
  %36 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable17, align 8
  %37 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %36(%struct.cell* %37)
  %38 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr18 = getelementptr inbounds %struct.scheme, %struct.scheme* %38, i32 0, i32 58
  %39 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr18, align 8
  %mk_symbol19 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %39, i32 0, i32 6
  %40 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol19, align 8
  %41 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call20 = call %struct.cell* %40(%struct.scheme* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0))
  store %struct.cell* %call20, %struct.cell** %symbol, align 8
  %42 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr21 = getelementptr inbounds %struct.scheme, %struct.scheme* %42, i32 0, i32 58
  %43 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr21, align 8
  %scheme_define22 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %43, i32 0, i32 0
  %44 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define22, align 8
  %45 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %46 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env23 = getelementptr inbounds %struct.scheme, %struct.scheme* %46, i32 0, i32 25
  %47 = load %struct.cell*, %struct.cell** %global_env23, align 8
  %48 = load %struct.cell*, %struct.cell** %symbol, align 8
  %49 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr24 = getelementptr inbounds %struct.scheme, %struct.scheme* %49, i32 0, i32 58
  %50 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr24, align 8
  %mk_string25 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %50, i32 0, i32 8
  %51 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string25, align 8
  %52 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call26 = call i8* @gimp_plug_in_directory() #6
  %call27 = call %struct.cell* %51(%struct.scheme* %52, i8* %call26)
  call void %44(%struct.scheme* %45, %struct.cell* %47, %struct.cell* %48, %struct.cell* %call27)
  %53 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr28 = getelementptr inbounds %struct.scheme, %struct.scheme* %53, i32 0, i32 58
  %54 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr28, align 8
  %setimmutable29 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %54, i32 0, i32 54
  %55 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable29, align 8
  %56 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %55(%struct.cell* %56)
  %57 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr30 = getelementptr inbounds %struct.scheme, %struct.scheme* %57, i32 0, i32 58
  %58 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr30, align 8
  %mk_symbol31 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %58, i32 0, i32 6
  %59 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol31, align 8
  %60 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call32 = call %struct.cell* %59(%struct.scheme* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
  store %struct.cell* %call32, %struct.cell** %symbol, align 8
  %61 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr33 = getelementptr inbounds %struct.scheme, %struct.scheme* %61, i32 0, i32 58
  %62 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr33, align 8
  %scheme_define34 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %62, i32 0, i32 0
  %63 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define34, align 8
  %64 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %65 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env35 = getelementptr inbounds %struct.scheme, %struct.scheme* %65, i32 0, i32 25
  %66 = load %struct.cell*, %struct.cell** %global_env35, align 8
  %67 = load %struct.cell*, %struct.cell** %symbol, align 8
  %68 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr36 = getelementptr inbounds %struct.scheme, %struct.scheme* %68, i32 0, i32 58
  %69 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr36, align 8
  %mk_string37 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %69, i32 0, i32 8
  %70 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string37, align 8
  %71 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call38 = call i8* @gimp_locale_directory() #6
  %call39 = call %struct.cell* %70(%struct.scheme* %71, i8* %call38)
  call void %63(%struct.scheme* %64, %struct.cell* %66, %struct.cell* %67, %struct.cell* %call39)
  %72 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr40 = getelementptr inbounds %struct.scheme, %struct.scheme* %72, i32 0, i32 58
  %73 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr40, align 8
  %setimmutable41 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %73, i32 0, i32 54
  %74 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable41, align 8
  %75 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %74(%struct.cell* %75)
  %76 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr42 = getelementptr inbounds %struct.scheme, %struct.scheme* %76, i32 0, i32 58
  %77 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr42, align 8
  %mk_symbol43 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %77, i32 0, i32 6
  %78 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol43, align 8
  %79 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call44 = call %struct.cell* %78(%struct.scheme* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0))
  store %struct.cell* %call44, %struct.cell** %symbol, align 8
  %80 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr45 = getelementptr inbounds %struct.scheme, %struct.scheme* %80, i32 0, i32 58
  %81 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr45, align 8
  %scheme_define46 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %81, i32 0, i32 0
  %82 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define46, align 8
  %83 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %84 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env47 = getelementptr inbounds %struct.scheme, %struct.scheme* %84, i32 0, i32 25
  %85 = load %struct.cell*, %struct.cell** %global_env47, align 8
  %86 = load %struct.cell*, %struct.cell** %symbol, align 8
  %87 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr48 = getelementptr inbounds %struct.scheme, %struct.scheme* %87, i32 0, i32 58
  %88 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr48, align 8
  %mk_string49 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %88, i32 0, i32 8
  %89 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string49, align 8
  %90 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call50 = call i8* @gimp_sysconf_directory() #6
  %call51 = call %struct.cell* %89(%struct.scheme* %90, i8* %call50)
  call void %82(%struct.scheme* %83, %struct.cell* %85, %struct.cell* %86, %struct.cell* %call51)
  %91 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr52 = getelementptr inbounds %struct.scheme, %struct.scheme* %91, i32 0, i32 58
  %92 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr52, align 8
  %setimmutable53 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %92, i32 0, i32 54
  %93 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable53, align 8
  %94 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %93(%struct.cell* %94)
  %call54 = call i8** @gimp_enums_get_type_names(i32* %n_enum_type_names)
  store i8** %call54, i8*** %enum_type_names, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %entry
  %95 = load i32, i32* %i, align 4
  %96 = load i32, i32* %n_enum_type_names, align 4
  %cmp = icmp slt i32 %95, %96
  br i1 %cmp, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  %97 = load i32, i32* %i, align 4
  %idxprom = sext i32 %97 to i64
  %98 = load i8**, i8*** %enum_type_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %98, i64 %idxprom
  %99 = load i8*, i8** %arrayidx, align 8
  store i8* %99, i8** %enum_name, align 8
  %100 = load i8*, i8** %enum_name, align 8
  %call55 = call i64 @g_type_from_name(i8* %100)
  store i64 %call55, i64* %enum_type, align 8
  %101 = load i64, i64* %enum_type, align 8
  %call56 = call i8* @g_type_class_ref(i64 %101)
  %102 = bitcast i8* %call56 to %struct._GEnumClass*
  store %struct._GEnumClass* %102, %struct._GEnumClass** %enum_class, align 8
  %103 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %103, i32 0, i32 4
  %104 = load %struct._GEnumValue*, %struct._GEnumValue** %values, align 8
  store %struct._GEnumValue* %104, %struct._GEnumValue** %value, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc, %for.body
  %105 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %105, i32 0, i32 1
  %106 = load i8*, i8** %value_name, align 8
  %tobool = icmp ne i8* %106, null
  br i1 %tobool, label %for.body.58, label %for.end

for.body.58:                                      ; preds = %for.cond.57
  %107 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value_name59 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %107, i32 0, i32 1
  %108 = load i8*, i8** %value_name59, align 8
  %call60 = call i32 @g_str_has_prefix(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.58
  %109 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value_name62 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %109, i32 0, i32 1
  %110 = load i8*, i8** %value_name62, align 8
  %add.ptr = getelementptr inbounds i8, i8* %110, i64 5
  %call63 = call noalias i8* @g_strdup(i8* %add.ptr)
  store i8* %call63, i8** %scheme_name, align 8
  %111 = load i8*, i8** %scheme_name, align 8
  call void @convert_string(i8* %111)
  %112 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr64 = getelementptr inbounds %struct.scheme, %struct.scheme* %112, i32 0, i32 58
  %113 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr64, align 8
  %mk_symbol65 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %113, i32 0, i32 6
  %114 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol65, align 8
  %115 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %116 = load i8*, i8** %scheme_name, align 8
  %call66 = call %struct.cell* %114(%struct.scheme* %115, i8* %116)
  store %struct.cell* %call66, %struct.cell** %symbol, align 8
  %117 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr67 = getelementptr inbounds %struct.scheme, %struct.scheme* %117, i32 0, i32 58
  %118 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr67, align 8
  %scheme_define68 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %118, i32 0, i32 0
  %119 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define68, align 8
  %120 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %121 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env69 = getelementptr inbounds %struct.scheme, %struct.scheme* %121, i32 0, i32 25
  %122 = load %struct.cell*, %struct.cell** %global_env69, align 8
  %123 = load %struct.cell*, %struct.cell** %symbol, align 8
  %124 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr70 = getelementptr inbounds %struct.scheme, %struct.scheme* %124, i32 0, i32 58
  %125 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr70, align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %125, i32 0, i32 4
  %126 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %127 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %128 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value71 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %128, i32 0, i32 0
  %129 = load i32, i32* %value71, align 4
  %conv = sext i32 %129 to i64
  %call72 = call %struct.cell* %126(%struct.scheme* %127, i64 %conv)
  call void %119(%struct.scheme* %120, %struct.cell* %122, %struct.cell* %123, %struct.cell* %call72)
  %130 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr73 = getelementptr inbounds %struct.scheme, %struct.scheme* %130, i32 0, i32 58
  %131 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr73, align 8
  %setimmutable74 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %131, i32 0, i32 54
  %132 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable74, align 8
  %133 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %132(%struct.cell* %133)
  %134 = load i8*, i8** %scheme_name, align 8
  call void @g_free(i8* %134)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.58
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %135 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %incdec.ptr = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %135, i32 1
  store %struct._GEnumValue* %incdec.ptr, %struct._GEnumValue** %value, align 8
  br label %for.cond.57

for.end:                                          ; preds = %for.cond.57
  %136 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %137 = bitcast %struct._GEnumClass* %136 to i8*
  call void @g_type_class_unref(i8* %137)
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end
  %138 = load i32, i32* %i, align 4
  %inc = add nsw i32 %138, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.101, %for.end.76
  %139 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %139 to i64
  %arrayidx79 = getelementptr inbounds [35 x %struct.NamedConstant], [35 x %struct.NamedConstant]* @script_constants, i32 0, i64 %idxprom78
  %name = getelementptr inbounds %struct.NamedConstant, %struct.NamedConstant* %arrayidx79, i32 0, i32 0
  %140 = load i8*, i8** %name, align 8
  %cmp80 = icmp ne i8* %140, null
  br i1 %cmp80, label %for.body.82, label %for.end.103

for.body.82:                                      ; preds = %for.cond.77
  %141 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr83 = getelementptr inbounds %struct.scheme, %struct.scheme* %141, i32 0, i32 58
  %142 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr83, align 8
  %mk_symbol84 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %142, i32 0, i32 6
  %143 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol84, align 8
  %144 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %145 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %145 to i64
  %arrayidx86 = getelementptr inbounds [35 x %struct.NamedConstant], [35 x %struct.NamedConstant]* @script_constants, i32 0, i64 %idxprom85
  %name87 = getelementptr inbounds %struct.NamedConstant, %struct.NamedConstant* %arrayidx86, i32 0, i32 0
  %146 = load i8*, i8** %name87, align 8
  %call88 = call %struct.cell* %143(%struct.scheme* %144, i8* %146)
  store %struct.cell* %call88, %struct.cell** %symbol, align 8
  %147 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr89 = getelementptr inbounds %struct.scheme, %struct.scheme* %147, i32 0, i32 58
  %148 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr89, align 8
  %scheme_define90 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %148, i32 0, i32 0
  %149 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define90, align 8
  %150 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %151 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env91 = getelementptr inbounds %struct.scheme, %struct.scheme* %151, i32 0, i32 25
  %152 = load %struct.cell*, %struct.cell** %global_env91, align 8
  %153 = load %struct.cell*, %struct.cell** %symbol, align 8
  %154 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr92 = getelementptr inbounds %struct.scheme, %struct.scheme* %154, i32 0, i32 58
  %155 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr92, align 8
  %mk_integer93 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %155, i32 0, i32 4
  %156 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer93, align 8
  %157 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %158 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %158 to i64
  %arrayidx95 = getelementptr inbounds [35 x %struct.NamedConstant], [35 x %struct.NamedConstant]* @script_constants, i32 0, i64 %idxprom94
  %value96 = getelementptr inbounds %struct.NamedConstant, %struct.NamedConstant* %arrayidx95, i32 0, i32 1
  %159 = load i32, i32* %value96, align 4
  %conv97 = sext i32 %159 to i64
  %call98 = call %struct.cell* %156(%struct.scheme* %157, i64 %conv97)
  call void %149(%struct.scheme* %150, %struct.cell* %152, %struct.cell* %153, %struct.cell* %call98)
  %160 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr99 = getelementptr inbounds %struct.scheme, %struct.scheme* %160, i32 0, i32 58
  %161 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr99, align 8
  %setimmutable100 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %161, i32 0, i32 54
  %162 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable100, align 8
  %163 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %162(%struct.cell* %163)
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.82
  %164 = load i32, i32* %i, align 4
  %inc102 = add nsw i32 %164, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.77

for.end.103:                                      ; preds = %for.cond.77
  %165 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr104 = getelementptr inbounds %struct.scheme, %struct.scheme* %165, i32 0, i32 58
  %166 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr104, align 8
  %mk_symbol105 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %166, i32 0, i32 6
  %167 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol105, align 8
  %168 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call106 = call %struct.cell* %167(%struct.scheme* %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0))
  store %struct.cell* %call106, %struct.cell** %symbol, align 8
  %169 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr107 = getelementptr inbounds %struct.scheme, %struct.scheme* %169, i32 0, i32 58
  %170 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr107, align 8
  %scheme_define108 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %170, i32 0, i32 0
  %171 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define108, align 8
  %172 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %173 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env109 = getelementptr inbounds %struct.scheme, %struct.scheme* %173, i32 0, i32 25
  %174 = load %struct.cell*, %struct.cell** %global_env109, align 8
  %175 = load %struct.cell*, %struct.cell** %symbol, align 8
  %176 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr110 = getelementptr inbounds %struct.scheme, %struct.scheme* %176, i32 0, i32 58
  %177 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr110, align 8
  %mk_string111 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %177, i32 0, i32 8
  %178 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string111, align 8
  %179 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call112 = call %struct.cell* %178(%struct.scheme* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  call void %171(%struct.scheme* %172, %struct.cell* %174, %struct.cell* %175, %struct.cell* %call112)
  %180 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr113 = getelementptr inbounds %struct.scheme, %struct.scheme* %180, i32 0, i32 58
  %181 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr113, align 8
  %setimmutable114 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %181, i32 0, i32 54
  %182 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable114, align 8
  %183 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %182(%struct.cell* %183)
  %184 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr115 = getelementptr inbounds %struct.scheme, %struct.scheme* %184, i32 0, i32 58
  %185 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr115, align 8
  %mk_symbol116 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %185, i32 0, i32 6
  %186 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol116, align 8
  %187 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call117 = call %struct.cell* %186(%struct.scheme* %187, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  store %struct.cell* %call117, %struct.cell** %symbol, align 8
  %188 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr118 = getelementptr inbounds %struct.scheme, %struct.scheme* %188, i32 0, i32 58
  %189 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr118, align 8
  %scheme_define119 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %189, i32 0, i32 0
  %190 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define119, align 8
  %191 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %192 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env120 = getelementptr inbounds %struct.scheme, %struct.scheme* %192, i32 0, i32 25
  %193 = load %struct.cell*, %struct.cell** %global_env120, align 8
  %194 = load %struct.cell*, %struct.cell** %symbol, align 8
  %195 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr121 = getelementptr inbounds %struct.scheme, %struct.scheme* %195, i32 0, i32 58
  %196 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr121, align 8
  %mk_string122 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %196, i32 0, i32 8
  %197 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string122, align 8
  %198 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call123 = call %struct.cell* %197(%struct.scheme* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  call void %190(%struct.scheme* %191, %struct.cell* %193, %struct.cell* %194, %struct.cell* %call123)
  %199 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr124 = getelementptr inbounds %struct.scheme, %struct.scheme* %199, i32 0, i32 58
  %200 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr124, align 8
  %setimmutable125 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %200, i32 0, i32 54
  %201 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable125, align 8
  %202 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %201(%struct.cell* %202)
  %203 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr126 = getelementptr inbounds %struct.scheme, %struct.scheme* %203, i32 0, i32 58
  %204 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr126, align 8
  %mk_symbol127 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %204, i32 0, i32 6
  %205 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol127, align 8
  %206 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call128 = call %struct.cell* %205(%struct.scheme* %206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0))
  store %struct.cell* %call128, %struct.cell** %symbol, align 8
  %207 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr129 = getelementptr inbounds %struct.scheme, %struct.scheme* %207, i32 0, i32 58
  %208 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr129, align 8
  %scheme_define130 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %208, i32 0, i32 0
  %209 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define130, align 8
  %210 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %211 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env131 = getelementptr inbounds %struct.scheme, %struct.scheme* %211, i32 0, i32 25
  %212 = load %struct.cell*, %struct.cell** %global_env131, align 8
  %213 = load %struct.cell*, %struct.cell** %symbol, align 8
  %214 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr132 = getelementptr inbounds %struct.scheme, %struct.scheme* %214, i32 0, i32 58
  %215 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr132, align 8
  %mk_string133 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %215, i32 0, i32 8
  %216 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string133, align 8
  %217 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call134 = call i8* @gimp_directory() #6
  %call135 = call %struct.cell* %216(%struct.scheme* %217, i8* %call134)
  call void %209(%struct.scheme* %210, %struct.cell* %212, %struct.cell* %213, %struct.cell* %call135)
  %218 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr136 = getelementptr inbounds %struct.scheme, %struct.scheme* %218, i32 0, i32 58
  %219 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr136, align 8
  %setimmutable137 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %219, i32 0, i32 54
  %220 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable137, align 8
  %221 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %220(%struct.cell* %221)
  %222 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr138 = getelementptr inbounds %struct.scheme, %struct.scheme* %222, i32 0, i32 58
  %223 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr138, align 8
  %mk_symbol139 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %223, i32 0, i32 6
  %224 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol139, align 8
  %225 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call140 = call %struct.cell* %224(%struct.scheme* %225, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0))
  store %struct.cell* %call140, %struct.cell** %symbol, align 8
  %226 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr141 = getelementptr inbounds %struct.scheme, %struct.scheme* %226, i32 0, i32 58
  %227 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr141, align 8
  %scheme_define142 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %227, i32 0, i32 0
  %228 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define142, align 8
  %229 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %230 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env143 = getelementptr inbounds %struct.scheme, %struct.scheme* %230, i32 0, i32 25
  %231 = load %struct.cell*, %struct.cell** %global_env143, align 8
  %232 = load %struct.cell*, %struct.cell** %symbol, align 8
  %233 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr144 = getelementptr inbounds %struct.scheme, %struct.scheme* %233, i32 0, i32 58
  %234 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr144, align 8
  %mk_string145 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %234, i32 0, i32 8
  %235 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string145, align 8
  %236 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call146 = call i8* @gimp_data_directory() #6
  %call147 = call %struct.cell* %235(%struct.scheme* %236, i8* %call146)
  call void %228(%struct.scheme* %229, %struct.cell* %231, %struct.cell* %232, %struct.cell* %call147)
  %237 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr148 = getelementptr inbounds %struct.scheme, %struct.scheme* %237, i32 0, i32 58
  %238 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr148, align 8
  %setimmutable149 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %238, i32 0, i32 54
  %239 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable149, align 8
  %240 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %239(%struct.cell* %240)
  %241 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr150 = getelementptr inbounds %struct.scheme, %struct.scheme* %241, i32 0, i32 58
  %242 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr150, align 8
  %mk_symbol151 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %242, i32 0, i32 6
  %243 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol151, align 8
  %244 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call152 = call %struct.cell* %243(%struct.scheme* %244, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0))
  store %struct.cell* %call152, %struct.cell** %symbol, align 8
  %245 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr153 = getelementptr inbounds %struct.scheme, %struct.scheme* %245, i32 0, i32 58
  %246 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr153, align 8
  %scheme_define154 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %246, i32 0, i32 0
  %247 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define154, align 8
  %248 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %249 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env155 = getelementptr inbounds %struct.scheme, %struct.scheme* %249, i32 0, i32 25
  %250 = load %struct.cell*, %struct.cell** %global_env155, align 8
  %251 = load %struct.cell*, %struct.cell** %symbol, align 8
  %252 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr156 = getelementptr inbounds %struct.scheme, %struct.scheme* %252, i32 0, i32 58
  %253 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr156, align 8
  %mk_string157 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %253, i32 0, i32 8
  %254 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string157, align 8
  %255 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call158 = call i8* @gimp_plug_in_directory() #6
  %call159 = call %struct.cell* %254(%struct.scheme* %255, i8* %call158)
  call void %247(%struct.scheme* %248, %struct.cell* %250, %struct.cell* %251, %struct.cell* %call159)
  %256 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr160 = getelementptr inbounds %struct.scheme, %struct.scheme* %256, i32 0, i32 58
  %257 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr160, align 8
  %setimmutable161 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %257, i32 0, i32 54
  %258 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable161, align 8
  %259 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %258(%struct.cell* %259)
  store i32 0, i32* %i, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.187, %for.end.103
  %260 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %260 to i64
  %arrayidx164 = getelementptr inbounds [61 x %struct.NamedConstant], [61 x %struct.NamedConstant]* @old_constants, i32 0, i64 %idxprom163
  %name165 = getelementptr inbounds %struct.NamedConstant, %struct.NamedConstant* %arrayidx164, i32 0, i32 0
  %261 = load i8*, i8** %name165, align 8
  %cmp166 = icmp ne i8* %261, null
  br i1 %cmp166, label %for.body.168, label %for.end.189

for.body.168:                                     ; preds = %for.cond.162
  %262 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr169 = getelementptr inbounds %struct.scheme, %struct.scheme* %262, i32 0, i32 58
  %263 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr169, align 8
  %mk_symbol170 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %263, i32 0, i32 6
  %264 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol170, align 8
  %265 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %266 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %266 to i64
  %arrayidx172 = getelementptr inbounds [61 x %struct.NamedConstant], [61 x %struct.NamedConstant]* @old_constants, i32 0, i64 %idxprom171
  %name173 = getelementptr inbounds %struct.NamedConstant, %struct.NamedConstant* %arrayidx172, i32 0, i32 0
  %267 = load i8*, i8** %name173, align 8
  %call174 = call %struct.cell* %264(%struct.scheme* %265, i8* %267)
  store %struct.cell* %call174, %struct.cell** %symbol, align 8
  %268 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr175 = getelementptr inbounds %struct.scheme, %struct.scheme* %268, i32 0, i32 58
  %269 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr175, align 8
  %scheme_define176 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %269, i32 0, i32 0
  %270 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define176, align 8
  %271 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %272 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env177 = getelementptr inbounds %struct.scheme, %struct.scheme* %272, i32 0, i32 25
  %273 = load %struct.cell*, %struct.cell** %global_env177, align 8
  %274 = load %struct.cell*, %struct.cell** %symbol, align 8
  %275 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr178 = getelementptr inbounds %struct.scheme, %struct.scheme* %275, i32 0, i32 58
  %276 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr178, align 8
  %mk_integer179 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %276, i32 0, i32 4
  %277 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer179, align 8
  %278 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %279 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %279 to i64
  %arrayidx181 = getelementptr inbounds [61 x %struct.NamedConstant], [61 x %struct.NamedConstant]* @old_constants, i32 0, i64 %idxprom180
  %value182 = getelementptr inbounds %struct.NamedConstant, %struct.NamedConstant* %arrayidx181, i32 0, i32 1
  %280 = load i32, i32* %value182, align 4
  %conv183 = sext i32 %280 to i64
  %call184 = call %struct.cell* %277(%struct.scheme* %278, i64 %conv183)
  call void %270(%struct.scheme* %271, %struct.cell* %273, %struct.cell* %274, %struct.cell* %call184)
  %281 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr185 = getelementptr inbounds %struct.scheme, %struct.scheme* %281, i32 0, i32 58
  %282 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr185, align 8
  %setimmutable186 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %282, i32 0, i32 54
  %283 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable186, align 8
  %284 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %283(%struct.cell* %284)
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.168
  %285 = load i32, i32* %i, align 4
  %inc188 = add nsw i32 %285, 1
  store i32 %inc188, i32* %i, align 4
  br label %for.cond.162

for.end.189:                                      ; preds = %for.cond.162
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ts_init_procedures(%struct.scheme* %sc, i32 %register_scripts) #0 {
entry:
  %sc.addr = alloca %struct.scheme*, align 8
  %register_scripts.addr = alloca i32, align 4
  %proc_list = alloca i8**, align 8
  %num_procs = alloca i32, align 4
  %i = alloca i32, align 4
  %symbol = alloca %struct.cell*, align 8
  %proc_blurb = alloca i8*, align 8
  %proc_help = alloca i8*, align 8
  %proc_author = alloca i8*, align 8
  %proc_copyright = alloca i8*, align 8
  %proc_date = alloca i8*, align 8
  %proc_type = alloca i32, align 4
  %n_params = alloca i32, align 4
  %n_return_vals = alloca i32, align 4
  %params = alloca %struct._GimpParamDef*, align 8
  %return_vals = alloca %struct._GimpParamDef*, align 8
  %buff = alloca i8*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store i32 %register_scripts, i32* %register_scripts.addr, align 4
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 58
  %1 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %mk_symbol = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1, i32 0, i32 6
  %2 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol, align 8
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call = call %struct.cell* %2(%struct.scheme* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.117, i32 0, i32 0))
  store %struct.cell* %call, %struct.cell** %symbol, align 8
  %4 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %4, i32 0, i32 58
  %5 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %scheme_define = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %5, i32 0, i32 0
  %6 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define, align 8
  %7 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %8 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env = getelementptr inbounds %struct.scheme, %struct.scheme* %8, i32 0, i32 25
  %9 = load %struct.cell*, %struct.cell** %global_env, align 8
  %10 = load %struct.cell*, %struct.cell** %symbol, align 8
  %11 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr2 = getelementptr inbounds %struct.scheme, %struct.scheme* %11, i32 0, i32 58
  %12 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr2, align 8
  %mk_foreign_func = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %12, i32 0, i32 12
  %13 = load %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)*, %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)** %mk_foreign_func, align 8
  %14 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %15 = load i32, i32* %register_scripts.addr, align 4
  %tobool = icmp ne i32 %15, 0
  %cond = select i1 %tobool, %struct.cell* (%struct.scheme*, %struct.cell*)* @script_fu_register_call, %struct.cell* (%struct.scheme*, %struct.cell*)* @script_fu_nil_call
  %call3 = call %struct.cell* %13(%struct.scheme* %14, %struct.cell* (%struct.scheme*, %struct.cell*)* %cond)
  call void %6(%struct.scheme* %7, %struct.cell* %9, %struct.cell* %10, %struct.cell* %call3)
  %16 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr4 = getelementptr inbounds %struct.scheme, %struct.scheme* %16, i32 0, i32 58
  %17 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr4, align 8
  %setimmutable = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %17, i32 0, i32 54
  %18 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable, align 8
  %19 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %18(%struct.cell* %19)
  %20 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr5 = getelementptr inbounds %struct.scheme, %struct.scheme* %20, i32 0, i32 58
  %21 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr5, align 8
  %mk_symbol6 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %21, i32 0, i32 6
  %22 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol6, align 8
  %23 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call7 = call %struct.cell* %22(%struct.scheme* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.118, i32 0, i32 0))
  store %struct.cell* %call7, %struct.cell** %symbol, align 8
  %24 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr8 = getelementptr inbounds %struct.scheme, %struct.scheme* %24, i32 0, i32 58
  %25 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr8, align 8
  %scheme_define9 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %25, i32 0, i32 0
  %26 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define9, align 8
  %27 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %28 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env10 = getelementptr inbounds %struct.scheme, %struct.scheme* %28, i32 0, i32 25
  %29 = load %struct.cell*, %struct.cell** %global_env10, align 8
  %30 = load %struct.cell*, %struct.cell** %symbol, align 8
  %31 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr11 = getelementptr inbounds %struct.scheme, %struct.scheme* %31, i32 0, i32 58
  %32 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr11, align 8
  %mk_foreign_func12 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %32, i32 0, i32 12
  %33 = load %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)*, %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)** %mk_foreign_func12, align 8
  %34 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %35 = load i32, i32* %register_scripts.addr, align 4
  %tobool13 = icmp ne i32 %35, 0
  %cond14 = select i1 %tobool13, %struct.cell* (%struct.scheme*, %struct.cell*)* @script_fu_menu_register_call, %struct.cell* (%struct.scheme*, %struct.cell*)* @script_fu_nil_call
  %call15 = call %struct.cell* %33(%struct.scheme* %34, %struct.cell* (%struct.scheme*, %struct.cell*)* %cond14)
  call void %26(%struct.scheme* %27, %struct.cell* %29, %struct.cell* %30, %struct.cell* %call15)
  %36 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr16 = getelementptr inbounds %struct.scheme, %struct.scheme* %36, i32 0, i32 58
  %37 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr16, align 8
  %setimmutable17 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %37, i32 0, i32 54
  %38 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable17, align 8
  %39 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %38(%struct.cell* %39)
  %40 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr18 = getelementptr inbounds %struct.scheme, %struct.scheme* %40, i32 0, i32 58
  %41 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr18, align 8
  %mk_symbol19 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %41, i32 0, i32 6
  %42 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol19, align 8
  %43 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call20 = call %struct.cell* %42(%struct.scheme* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0))
  store %struct.cell* %call20, %struct.cell** %symbol, align 8
  %44 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr21 = getelementptr inbounds %struct.scheme, %struct.scheme* %44, i32 0, i32 58
  %45 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr21, align 8
  %scheme_define22 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %45, i32 0, i32 0
  %46 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define22, align 8
  %47 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %48 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env23 = getelementptr inbounds %struct.scheme, %struct.scheme* %48, i32 0, i32 25
  %49 = load %struct.cell*, %struct.cell** %global_env23, align 8
  %50 = load %struct.cell*, %struct.cell** %symbol, align 8
  %51 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr24 = getelementptr inbounds %struct.scheme, %struct.scheme* %51, i32 0, i32 58
  %52 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr24, align 8
  %mk_foreign_func25 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %52, i32 0, i32 12
  %53 = load %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)*, %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)** %mk_foreign_func25, align 8
  %54 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call26 = call %struct.cell* %53(%struct.scheme* %54, %struct.cell* (%struct.scheme*, %struct.cell*)* @script_fu_quit_call)
  call void %46(%struct.scheme* %47, %struct.cell* %49, %struct.cell* %50, %struct.cell* %call26)
  %55 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr27 = getelementptr inbounds %struct.scheme, %struct.scheme* %55, i32 0, i32 58
  %56 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr27, align 8
  %setimmutable28 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %56, i32 0, i32 54
  %57 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable28, align 8
  %58 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %57(%struct.cell* %58)
  %59 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr29 = getelementptr inbounds %struct.scheme, %struct.scheme* %59, i32 0, i32 58
  %60 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr29, align 8
  %mk_symbol30 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %60, i32 0, i32 6
  %61 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol30, align 8
  %62 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call31 = call %struct.cell* %61(%struct.scheme* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.120, i32 0, i32 0))
  store %struct.cell* %call31, %struct.cell** %symbol, align 8
  %63 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr32 = getelementptr inbounds %struct.scheme, %struct.scheme* %63, i32 0, i32 58
  %64 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr32, align 8
  %scheme_define33 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %64, i32 0, i32 0
  %65 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define33, align 8
  %66 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %67 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env34 = getelementptr inbounds %struct.scheme, %struct.scheme* %67, i32 0, i32 25
  %68 = load %struct.cell*, %struct.cell** %global_env34, align 8
  %69 = load %struct.cell*, %struct.cell** %symbol, align 8
  %70 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr35 = getelementptr inbounds %struct.scheme, %struct.scheme* %70, i32 0, i32 58
  %71 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr35, align 8
  %mk_foreign_func36 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %71, i32 0, i32 12
  %72 = load %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)*, %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)** %mk_foreign_func36, align 8
  %73 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call37 = call %struct.cell* %72(%struct.scheme* %73, %struct.cell* (%struct.scheme*, %struct.cell*)* @script_fu_marshal_procedure_call)
  call void %65(%struct.scheme* %66, %struct.cell* %68, %struct.cell* %69, %struct.cell* %call37)
  %74 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr38 = getelementptr inbounds %struct.scheme, %struct.scheme* %74, i32 0, i32 58
  %75 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr38, align 8
  %setimmutable39 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %75, i32 0, i32 54
  %76 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable39, align 8
  %77 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %76(%struct.cell* %77)
  %call40 = call i32 @gimp_procedural_db_query(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i32* %num_procs, i8*** %proc_list)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %num_procs, align 4
  %cmp = icmp slt i32 %78, %79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i32, i32* %i, align 4
  %idxprom = sext i32 %80 to i64
  %81 = load i8**, i8*** %proc_list, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %81, i64 %idxprom
  %82 = load i8*, i8** %arrayidx, align 8
  %call41 = call i32 @gimp_procedural_db_proc_info(i8* %82, i8** %proc_blurb, i8** %proc_help, i8** %proc_author, i8** %proc_copyright, i8** %proc_date, i32* %proc_type, i32* %n_params, i32* %n_return_vals, %struct._GimpParamDef** %params, %struct._GimpParamDef** %return_vals)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then, label %if.end.56

if.then:                                          ; preds = %for.body
  %83 = load i32, i32* %n_params, align 4
  %cmp43 = icmp eq i32 %83, 0
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.then
  %84 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %84 to i64
  %85 = load i8**, i8*** %proc_list, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %85, i64 %idxprom45
  %86 = load i8*, i8** %arrayidx46, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %87 to i64
  %88 = load i8**, i8*** %proc_list, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %88, i64 %idxprom47
  %89 = load i8*, i8** %arrayidx48, align 8
  %call49 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.122, i32 0, i32 0), i8* %86, i8* %89)
  store i8* %call49, i8** %buff, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %90 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %90 to i64
  %91 = load i8**, i8*** %proc_list, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %91, i64 %idxprom50
  %92 = load i8*, i8** %arrayidx51, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %93 to i64
  %94 = load i8**, i8*** %proc_list, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %94, i64 %idxprom52
  %95 = load i8*, i8** %arrayidx53, align 8
  %call54 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.123, i32 0, i32 0), i8* %92, i8* %95)
  store i8* %call54, i8** %buff, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.44
  %96 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr55 = getelementptr inbounds %struct.scheme, %struct.scheme* %96, i32 0, i32 58
  %97 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr55, align 8
  %load_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %97, i32 0, i32 56
  %98 = load void (%struct.scheme*, i8*)*, void (%struct.scheme*, i8*)** %load_string, align 8
  %99 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %100 = load i8*, i8** %buff, align 8
  call void %98(%struct.scheme* %99, i8* %100)
  %101 = load i8*, i8** %buff, align 8
  call void @g_free(i8* %101)
  %102 = load i8*, i8** %proc_blurb, align 8
  call void @g_free(i8* %102)
  %103 = load i8*, i8** %proc_help, align 8
  call void @g_free(i8* %103)
  %104 = load i8*, i8** %proc_author, align 8
  call void @g_free(i8* %104)
  %105 = load i8*, i8** %proc_copyright, align 8
  call void @g_free(i8* %105)
  %106 = load i8*, i8** %proc_date, align 8
  call void @g_free(i8* %106)
  %107 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %108 = load i32, i32* %n_params, align 4
  call void @gimp_destroy_paramdefs(%struct._GimpParamDef* %107, i32 %108)
  %109 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %110 = load i32, i32* %n_return_vals, align 4
  call void @gimp_destroy_paramdefs(%struct._GimpParamDef* %109, i32 %110)
  br label %if.end.56

if.end.56:                                        ; preds = %if.end, %for.body
  %111 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %111 to i64
  %112 = load i8**, i8*** %proc_list, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %112, i64 %idxprom57
  %113 = load i8*, i8** %arrayidx58, align 8
  call void @g_free(i8* %113)
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %114 = load i32, i32* %i, align 4
  %inc = add nsw i32 %114, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %115 = load i8**, i8*** %proc_list, align 8
  %116 = bitcast i8** %115 to i8*
  call void @g_free(i8* %116)
  ret void
}

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #1

; Function Attrs: nounwind uwtable
define internal i32 @ts_load_file(i8* %dirname, i8* %basename) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %basename.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %fin = alloca %struct._IO_FILE*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store i8* %basename, i8** %basename.addr, align 8
  %0 = load i8*, i8** %dirname.addr, align 8
  %1 = load i8*, i8** %basename.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_build_filename(i8* %0, i8* %1, i8* null)
  store i8* %call, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fin, align 8
  %3 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  call void @scheme_load_file(%struct.scheme* @sc, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %6)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @g_printerr(i8*, ...) #1

declare void @gimp_path_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @ts_set_run_mode(i32 %run_mode) #0 {
entry:
  %run_mode.addr = alloca i32, align 4
  %symbol = alloca %struct.cell*, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  %0 = load %struct.scheme_interface*, %struct.scheme_interface** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 58), align 8
  %mk_symbol = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %0, i32 0, i32 6
  %1 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol, align 8
  %call = call %struct.cell* %1(%struct.scheme* @sc, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  store %struct.cell* %call, %struct.cell** %symbol, align 8
  %2 = load %struct.scheme_interface*, %struct.scheme_interface** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 58), align 8
  %scheme_define = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %2, i32 0, i32 0
  %3 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define, align 8
  %4 = load %struct.cell*, %struct.cell** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 25), align 8
  %5 = load %struct.cell*, %struct.cell** %symbol, align 8
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 58), align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 4
  %7 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %8 = load i32, i32* %run_mode.addr, align 4
  %conv = zext i32 %8 to i64
  %call1 = call %struct.cell* %7(%struct.scheme* @sc, i64 %conv)
  call void %3(%struct.scheme* @sc, %struct.cell* %4, %struct.cell* %5, %struct.cell* %call1)
  %9 = load %struct.scheme_interface*, %struct.scheme_interface** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 58), align 8
  %setimmutable = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %9, i32 0, i32 54
  %10 = load void (%struct.cell*)*, void (%struct.cell*)** %setimmutable, align 8
  %11 = load %struct.cell*, %struct.cell** %symbol, align 8
  call void %10(%struct.cell* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ts_set_print_flag(i32 %print_flag) #0 {
entry:
  %print_flag.addr = alloca i32, align 4
  store i32 %print_flag, i32* %print_flag.addr, align 4
  %0 = load i32, i32* %print_flag.addr, align 4
  store i32 %0, i32* getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 13), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ts_print_welcome() #0 {
entry:
  call void @ts_output_string(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i32 -1)
  call void @ts_output_string(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i32 -1)
  ret void
}

declare void @ts_output_string(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @ts_interpret_stdin() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @scheme_load_file(%struct.scheme* @sc, %struct._IO_FILE* %0)
  ret void
}

declare void @scheme_load_file(%struct.scheme*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @ts_interpret_string(i8* %expr) #0 {
entry:
  %expr.addr = alloca i8*, align 8
  store i8* %expr, i8** %expr.addr, align 8
  %0 = load %struct.scheme_interface*, %struct.scheme_interface** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 58), align 8
  %load_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %0, i32 0, i32 56
  %1 = load void (%struct.scheme*, i8*)*, void (%struct.scheme*, i8*)** %load_string, align 8
  %2 = load i8*, i8** %expr.addr, align 8
  call void %1(%struct.scheme* @sc, i8* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 2), align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i8* @ts_get_success_msg() #0 {
entry:
  %retval = alloca i8*, align 8
  %0 = load %struct.scheme_interface*, %struct.scheme_interface** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 58), align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %0, i32 0, i32 16
  %1 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %2 = load %struct.cell*, %struct.cell** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 54), align 8
  %call = call i32 %1(%struct.cell* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme_interface*, %struct.scheme_interface** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 58), align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %3, i32 0, i32 18
  %4 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %5 = load %struct.cell*, %struct.cell** getelementptr inbounds (%struct.scheme, %struct.scheme* @sc, i32 0, i32 54), align 8
  %call1 = call i8* %4(%struct.cell* %5)
  store i8* %call1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @ts_gstring_output_func(i32 %type, i8* %string, i32 %len, i8* %user_data) #0 {
entry:
  %type.addr = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %gstr = alloca %struct._GString*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GString*
  store %struct._GString* %1, %struct._GString** %gstr, align 8
  %2 = load %struct._GString*, %struct._GString** %gstr, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %4 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %4 to i64
  %call = call %struct._GString* @g_string_append_len(%struct._GString* %2, i8* %3, i64 %conv)
  ret void
}

declare %struct._GString* @g_string_append_len(%struct._GString*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #4

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #4

; Function Attrs: nounwind readnone
declare i8* @gimp_plug_in_directory() #4

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #4

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #4

declare i8** @gimp_enums_get_type_names(i32*) #1

declare i64 @g_type_from_name(i8*) #1

declare i8* @g_type_class_ref(i64) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @convert_string(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %str.addr, align 8
  store i8 45, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @g_free(i8*) #1

declare void @g_type_class_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.cell* @script_fu_register_call(%struct.scheme* %sc, %struct.cell* %a) #0 {
entry:
  %sc.addr = alloca %struct.scheme*, align 8
  %a.addr = alloca %struct.cell*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %a, %struct.cell** %a.addr, align 8
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call = call %struct.cell* @script_fu_add_script(%struct.scheme* %0, %struct.cell* %1)
  ret %struct.cell* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.cell* @script_fu_nil_call(%struct.scheme* %sc, %struct.cell* %a) #0 {
entry:
  %sc.addr = alloca %struct.scheme*, align 8
  %a.addr = alloca %struct.cell*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %a, %struct.cell** %a.addr, align 8
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 17
  %1 = load %struct.cell*, %struct.cell** %NIL, align 8
  ret %struct.cell* %1
}

; Function Attrs: nounwind uwtable
define internal %struct.cell* @script_fu_menu_register_call(%struct.scheme* %sc, %struct.cell* %a) #0 {
entry:
  %sc.addr = alloca %struct.scheme*, align 8
  %a.addr = alloca %struct.cell*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %a, %struct.cell** %a.addr, align 8
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call = call %struct.cell* @script_fu_add_menu(%struct.scheme* %0, %struct.cell* %1)
  ret %struct.cell* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.cell* @script_fu_quit_call(%struct.scheme* %sc, %struct.cell* %a) #0 {
entry:
  %sc.addr = alloca %struct.scheme*, align 8
  %a.addr = alloca %struct.cell*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %a, %struct.cell** %a.addr, align 8
  call void @script_fu_server_quit()
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  call void @scheme_deinit(%struct.scheme* %0)
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  ret %struct.cell* %2
}

; Function Attrs: nounwind uwtable
define internal %struct.cell* @script_fu_marshal_procedure_call(%struct.scheme* %sc, %struct.cell* %a) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %a.addr = alloca %struct.cell*, align 8
  %args = alloca %struct._GimpParam*, align 8
  %values = alloca %struct._GimpParam*, align 8
  %nvalues = alloca i32, align 4
  %proc_name = alloca i8*, align 8
  %proc_blurb = alloca i8*, align 8
  %proc_help = alloca i8*, align 8
  %proc_author = alloca i8*, align 8
  %proc_copyright = alloca i8*, align 8
  %proc_date = alloca i8*, align 8
  %proc_type = alloca i32, align 4
  %nparams = alloca i32, align 4
  %nreturn_vals = alloca i32, align 4
  %params = alloca %struct._GimpParamDef*, align 8
  %return_vals = alloca %struct._GimpParamDef*, align 8
  %error_str = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  %success = alloca i32, align 4
  %return_val = alloca %struct.cell*, align 8
  %n_elements = alloca i32, align 4
  %vector = alloca %struct.cell*, align 8
  %j = alloca i32, align 4
  %v_element = alloca %struct.cell*, align 8
  %v_element289 = alloca %struct.cell*, align 8
  %v_element364 = alloca %struct.cell*, align 8
  %v_element439 = alloca %struct.cell*, align 8
  %v_element513 = alloca %struct.cell*, align 8
  %color_list = alloca %struct.cell*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %v_element771 = alloca %struct.cell*, align 8
  %color_list775 = alloca %struct.cell*, align 8
  %r776 = alloca i8, align 1
  %g777 = alloca i8, align 1
  %b778 = alloca i8, align 1
  %temp_val = alloca %struct.cell*, align 8
  %string = alloca i8*, align 8
  %j1097 = alloca i32, align 4
  %num_int32s = alloca i32, align 4
  %array = alloca i32*, align 8
  %vector1173 = alloca %struct.cell*, align 8
  %num_int16s = alloca i32, align 4
  %array1199 = alloca i16*, align 8
  %vector1205 = alloca %struct.cell*, align 8
  %num_int8s = alloca i32, align 4
  %array1233 = alloca i8*, align 8
  %vector1239 = alloca %struct.cell*, align 8
  %num_floats = alloca i32, align 4
  %array1267 = alloca double*, align 8
  %vector1273 = alloca %struct.cell*, align 8
  %num_strings = alloca i32, align 4
  %array1300 = alloca i8**, align 8
  %list = alloca %struct.cell*, align 8
  %r1333 = alloca i8, align 1
  %g1334 = alloca i8, align 1
  %b1335 = alloca i8, align 1
  %temp_val1336 = alloca i8*, align 8
  %num_colors = alloca i32, align 4
  %array1372 = alloca %struct._GimpRGB*, align 8
  %vector1378 = alloca %struct.cell*, align 8
  %r1386 = alloca i8, align 1
  %g1387 = alloca i8, align 1
  %b1388 = alloca i8, align 1
  %temp_val1389 = alloca %struct.cell*, align 8
  %p = alloca %struct._GimpParasite*, align 8
  %data1440 = alloca i8*, align 8
  %char_cnt = alloca i32, align 4
  %temp_val1449 = alloca %struct.cell*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %a, %struct.cell** %a.addr, align 8
  store %struct._GimpParam* null, %struct._GimpParam** %values, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 17
  %1 = load %struct.cell*, %struct.cell** %NIL, align 8
  store %struct.cell* %1, %struct.cell** %return_val, align 8
  %2 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL1 = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 17
  %4 = load %struct.cell*, %struct.cell** %NIL1, align 8
  %cmp = icmp eq %struct.cell* %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call = call %struct.cell* @foreign_error(%struct.scheme* %5, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.124, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %6, i32 0, i32 58
  %7 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %is_pair = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %7, i32 0, i32 35
  %8 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_pair, align 8
  %9 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call2 = call i32 %8(%struct.cell* %9)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr4 = getelementptr inbounds %struct.scheme, %struct.scheme* %10, i32 0, i32 58
  %11 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr4, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %11, i32 0, i32 18
  %12 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr5 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 58
  %14 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr5, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %14, i32 0, i32 36
  %15 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %16 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call6 = call %struct.cell* %15(%struct.cell* %16)
  %call7 = call i8* %12(%struct.cell* %call6)
  %call8 = call noalias i8* @g_strdup(i8* %call7)
  store i8* %call8, i8** %proc_name, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %17 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr9 = getelementptr inbounds %struct.scheme, %struct.scheme* %17, i32 0, i32 58
  %18 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr9, align 8
  %string_value10 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %18, i32 0, i32 18
  %19 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value10, align 8
  %20 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call11 = call i8* %19(%struct.cell* %20)
  %call12 = call noalias i8* @g_strdup(i8* %call11)
  store i8* %call12, i8** %proc_name, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.3
  %21 = load i8*, i8** %proc_name, align 8
  call void @script_fu_interface_report_cc(i8* %21)
  %22 = load i8*, i8** %proc_name, align 8
  %call14 = call i32 @gimp_procedural_db_proc_info(i8* %22, i8** %proc_blurb, i8** %proc_help, i8** %proc_author, i8** %proc_copyright, i8** %proc_date, i32* %proc_type, i32* %nparams, i32* %nreturn_vals, %struct._GimpParamDef** %params, %struct._GimpParamDef** %return_vals)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.20, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %23 = load i8*, i8** %proc_name, align 8
  %call17 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.125, i32 0, i32 0), i8* %23)
  %24 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call19 = call %struct.cell* @foreign_error(%struct.scheme* %24, i8* %arraydecay18, %struct.cell* null)
  store %struct.cell* %call19, %struct.cell** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %nparams, align 4
  %cmp21 = icmp slt i32 %25, %26
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %28, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx, i32 0, i32 1
  %29 = load i8*, i8** %name, align 8
  call void @g_free(i8* %29)
  %30 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %30 to i64
  %31 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %31, i64 %idxprom22
  %description = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx23, i32 0, i32 2
  %32 = load i8*, i8** %description, align 8
  call void @g_free(i8* %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.33, %for.end
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %nreturn_vals, align 4
  %cmp25 = icmp slt i32 %34, %35
  br i1 %cmp25, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.24
  %36 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %37, i64 %idxprom27
  %name29 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx28, i32 0, i32 1
  %38 = load i8*, i8** %name29, align 8
  call void @g_free(i8* %38)
  %39 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %39 to i64
  %40 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %40, i64 %idxprom30
  %description32 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx31, i32 0, i32 2
  %41 = load i8*, i8** %description32, align 8
  call void @g_free(i8* %41)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.26
  %42 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %42, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.24

for.end.35:                                       ; preds = %for.cond.24
  %43 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr36 = getelementptr inbounds %struct.scheme, %struct.scheme* %43, i32 0, i32 58
  %44 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr36, align 8
  %list_length = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %44, i32 0, i32 29
  %45 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length, align 8
  %46 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %47 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call37 = call i32 %45(%struct.scheme* %46, %struct.cell* %47)
  %sub = sub nsw i32 %call37, 1
  %48 = load i32, i32* %nparams, align 4
  %cmp38 = icmp ne i32 %sub, %48
  br i1 %cmp38, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %for.end.35
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %49 = load i8*, i8** %proc_name, align 8
  %50 = load i32, i32* %nparams, align 4
  %51 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr41 = getelementptr inbounds %struct.scheme, %struct.scheme* %51, i32 0, i32 58
  %52 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr41, align 8
  %list_length42 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %52, i32 0, i32 29
  %53 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length42, align 8
  %54 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %55 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call43 = call i32 %53(%struct.scheme* %54, %struct.cell* %55)
  %sub44 = sub nsw i32 %call43, 1
  %call45 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay40, i64 1024, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.126, i32 0, i32 0), i8* %49, i32 %50, i32 %sub44)
  %56 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call47 = call %struct.cell* @foreign_error(%struct.scheme* %56, i8* %arraydecay46, %struct.cell* null)
  store %struct.cell* %call47, %struct.cell** %retval
  br label %return

if.end.48:                                        ; preds = %for.end.35
  %57 = load i32, i32* %nparams, align 4
  %tobool49 = icmp ne i32 %57, 0
  br i1 %tobool49, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.end.48
  %58 = load i32, i32* %nparams, align 4
  %conv = sext i32 %58 to i64
  %call51 = call noalias i8* @g_malloc_n(i64 %conv, i64 40)
  %59 = bitcast i8* %call51 to %struct._GimpParam*
  store %struct._GimpParam* %59, %struct._GimpParam** %args, align 8
  br label %if.end.53

if.else.52:                                       ; preds = %if.end.48
  store %struct._GimpParam* null, %struct._GimpParam** %args, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.then.50
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.1029, %if.end.53
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %nparams, align 4
  %cmp55 = icmp slt i32 %60, %61
  br i1 %cmp55, label %for.body.57, label %for.end.1031

for.body.57:                                      ; preds = %for.cond.54
  %62 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr58 = getelementptr inbounds %struct.scheme, %struct.scheme* %62, i32 0, i32 58
  %63 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr58, align 8
  %pair_cdr = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %63, i32 0, i32 37
  %64 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr, align 8
  %65 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call59 = call %struct.cell* %64(%struct.cell* %65)
  store %struct.cell* %call59, %struct.cell** %a.addr, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %66 to i64
  %67 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %67, i64 %idxprom60
  %type = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx61, i32 0, i32 0
  %68 = load i32, i32* %type, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %69 to i64
  %70 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %70, i64 %idxprom62
  %type64 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx63, i32 0, i32 0
  store i32 %68, i32* %type64, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %71 to i64
  %72 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %72, i64 %idxprom65
  %type67 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx66, i32 0, i32 0
  %73 = load i32, i32* %type67, align 4
  switch i32 %73, label %sw.default [
    i32 0, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 11, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 19, label %sw.bb
    i32 1, label %sw.bb.87
    i32 2, label %sw.bb.110
    i32 3, label %sw.bb.133
    i32 4, label %sw.bb.154
    i32 5, label %sw.bb.175
    i32 6, label %sw.bb.244
    i32 7, label %sw.bb.319
    i32 8, label %sw.bb.394
    i32 9, label %sw.bb.470
    i32 10, label %sw.bb.545
    i32 18, label %sw.bb.726
    i32 20, label %sw.bb.915
    i32 21, label %sw.bb.1016
  ]

sw.bb:                                            ; preds = %for.body.57, %for.body.57, %for.body.57, %for.body.57, %for.body.57, %for.body.57, %for.body.57, %for.body.57, %for.body.57
  %74 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr68 = getelementptr inbounds %struct.scheme, %struct.scheme* %74, i32 0, i32 58
  %75 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr68, align 8
  %is_number = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %75, i32 0, i32 19
  %76 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number, align 8
  %77 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr69 = getelementptr inbounds %struct.scheme, %struct.scheme* %77, i32 0, i32 58
  %78 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr69, align 8
  %pair_car70 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %78, i32 0, i32 36
  %79 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car70, align 8
  %80 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call71 = call %struct.cell* %79(%struct.cell* %80)
  %call72 = call i32 %76(%struct.cell* %call71)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %sw.bb
  store i32 0, i32* %success, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %sw.bb
  %81 = load i32, i32* %success, align 4
  %tobool76 = icmp ne i32 %81, 0
  br i1 %tobool76, label %if.then.77, label %if.end.86

if.then.77:                                       ; preds = %if.end.75
  %82 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr78 = getelementptr inbounds %struct.scheme, %struct.scheme* %82, i32 0, i32 58
  %83 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr78, align 8
  %ivalue = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %83, i32 0, i32 21
  %84 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue, align 8
  %85 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr79 = getelementptr inbounds %struct.scheme, %struct.scheme* %85, i32 0, i32 58
  %86 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr79, align 8
  %pair_car80 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %86, i32 0, i32 36
  %87 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car80, align 8
  %88 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call81 = call %struct.cell* %87(%struct.cell* %88)
  %call82 = call i64 %84(%struct.cell* %call81)
  %conv83 = trunc i64 %call82 to i32
  %89 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %89 to i64
  %90 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx85 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %90, i64 %idxprom84
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx85, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  store i32 %conv83, i32* %d_int32, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.77, %if.end.75
  br label %sw.epilog

sw.bb.87:                                         ; preds = %for.body.57
  %91 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr88 = getelementptr inbounds %struct.scheme, %struct.scheme* %91, i32 0, i32 58
  %92 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr88, align 8
  %is_number89 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %92, i32 0, i32 19
  %93 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number89, align 8
  %94 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr90 = getelementptr inbounds %struct.scheme, %struct.scheme* %94, i32 0, i32 58
  %95 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr90, align 8
  %pair_car91 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %95, i32 0, i32 36
  %96 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car91, align 8
  %97 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call92 = call %struct.cell* %96(%struct.cell* %97)
  %call93 = call i32 %93(%struct.cell* %call92)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %sw.bb.87
  store i32 0, i32* %success, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %sw.bb.87
  %98 = load i32, i32* %success, align 4
  %tobool97 = icmp ne i32 %98, 0
  br i1 %tobool97, label %if.then.98, label %if.end.109

if.then.98:                                       ; preds = %if.end.96
  %99 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr99 = getelementptr inbounds %struct.scheme, %struct.scheme* %99, i32 0, i32 58
  %100 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr99, align 8
  %ivalue100 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %100, i32 0, i32 21
  %101 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue100, align 8
  %102 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr101 = getelementptr inbounds %struct.scheme, %struct.scheme* %102, i32 0, i32 58
  %103 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr101, align 8
  %pair_car102 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %103, i32 0, i32 36
  %104 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car102, align 8
  %105 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call103 = call %struct.cell* %104(%struct.cell* %105)
  %call104 = call i64 %101(%struct.cell* %call103)
  %conv105 = trunc i64 %call104 to i16
  %106 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %106 to i64
  %107 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx107 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %107, i64 %idxprom106
  %data108 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx107, i32 0, i32 1
  %d_int16 = bitcast %union._GimpParamData* %data108 to i16*
  store i16 %conv105, i16* %d_int16, align 2
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.98, %if.end.96
  br label %sw.epilog

sw.bb.110:                                        ; preds = %for.body.57
  %108 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr111 = getelementptr inbounds %struct.scheme, %struct.scheme* %108, i32 0, i32 58
  %109 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr111, align 8
  %is_number112 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %109, i32 0, i32 19
  %110 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number112, align 8
  %111 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr113 = getelementptr inbounds %struct.scheme, %struct.scheme* %111, i32 0, i32 58
  %112 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr113, align 8
  %pair_car114 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %112, i32 0, i32 36
  %113 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car114, align 8
  %114 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call115 = call %struct.cell* %113(%struct.cell* %114)
  %call116 = call i32 %110(%struct.cell* %call115)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %sw.bb.110
  store i32 0, i32* %success, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %sw.bb.110
  %115 = load i32, i32* %success, align 4
  %tobool120 = icmp ne i32 %115, 0
  br i1 %tobool120, label %if.then.121, label %if.end.132

if.then.121:                                      ; preds = %if.end.119
  %116 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr122 = getelementptr inbounds %struct.scheme, %struct.scheme* %116, i32 0, i32 58
  %117 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr122, align 8
  %ivalue123 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %117, i32 0, i32 21
  %118 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue123, align 8
  %119 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr124 = getelementptr inbounds %struct.scheme, %struct.scheme* %119, i32 0, i32 58
  %120 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr124, align 8
  %pair_car125 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %120, i32 0, i32 36
  %121 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car125, align 8
  %122 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call126 = call %struct.cell* %121(%struct.cell* %122)
  %call127 = call i64 %118(%struct.cell* %call126)
  %conv128 = trunc i64 %call127 to i8
  %123 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %123 to i64
  %124 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx130 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %124, i64 %idxprom129
  %data131 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx130, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data131 to i8*
  store i8 %conv128, i8* %d_int8, align 1
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.121, %if.end.119
  br label %sw.epilog

sw.bb.133:                                        ; preds = %for.body.57
  %125 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr134 = getelementptr inbounds %struct.scheme, %struct.scheme* %125, i32 0, i32 58
  %126 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr134, align 8
  %is_number135 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %126, i32 0, i32 19
  %127 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number135, align 8
  %128 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr136 = getelementptr inbounds %struct.scheme, %struct.scheme* %128, i32 0, i32 58
  %129 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr136, align 8
  %pair_car137 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %129, i32 0, i32 36
  %130 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car137, align 8
  %131 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call138 = call %struct.cell* %130(%struct.cell* %131)
  %call139 = call i32 %127(%struct.cell* %call138)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.end.142, label %if.then.141

if.then.141:                                      ; preds = %sw.bb.133
  store i32 0, i32* %success, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %sw.bb.133
  %132 = load i32, i32* %success, align 4
  %tobool143 = icmp ne i32 %132, 0
  br i1 %tobool143, label %if.then.144, label %if.end.153

if.then.144:                                      ; preds = %if.end.142
  %133 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr145 = getelementptr inbounds %struct.scheme, %struct.scheme* %133, i32 0, i32 58
  %134 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr145, align 8
  %rvalue = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %134, i32 0, i32 22
  %135 = load double (%struct.cell*)*, double (%struct.cell*)** %rvalue, align 8
  %136 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr146 = getelementptr inbounds %struct.scheme, %struct.scheme* %136, i32 0, i32 58
  %137 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr146, align 8
  %pair_car147 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %137, i32 0, i32 36
  %138 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car147, align 8
  %139 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call148 = call %struct.cell* %138(%struct.cell* %139)
  %call149 = call double %135(%struct.cell* %call148)
  %140 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %140 to i64
  %141 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx151 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %141, i64 %idxprom150
  %data152 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx151, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data152 to double*
  store double %call149, double* %d_float, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.144, %if.end.142
  br label %sw.epilog

sw.bb.154:                                        ; preds = %for.body.57
  %142 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr155 = getelementptr inbounds %struct.scheme, %struct.scheme* %142, i32 0, i32 58
  %143 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr155, align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %143, i32 0, i32 16
  %144 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %145 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr156 = getelementptr inbounds %struct.scheme, %struct.scheme* %145, i32 0, i32 58
  %146 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr156, align 8
  %pair_car157 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %146, i32 0, i32 36
  %147 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car157, align 8
  %148 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call158 = call %struct.cell* %147(%struct.cell* %148)
  %call159 = call i32 %144(%struct.cell* %call158)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %sw.bb.154
  store i32 0, i32* %success, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %sw.bb.154
  %149 = load i32, i32* %success, align 4
  %tobool163 = icmp ne i32 %149, 0
  br i1 %tobool163, label %if.then.164, label %if.end.174

if.then.164:                                      ; preds = %if.end.162
  %150 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr165 = getelementptr inbounds %struct.scheme, %struct.scheme* %150, i32 0, i32 58
  %151 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr165, align 8
  %string_value166 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %151, i32 0, i32 18
  %152 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value166, align 8
  %153 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr167 = getelementptr inbounds %struct.scheme, %struct.scheme* %153, i32 0, i32 58
  %154 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr167, align 8
  %pair_car168 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %154, i32 0, i32 36
  %155 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car168, align 8
  %156 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call169 = call %struct.cell* %155(%struct.cell* %156)
  %call170 = call i8* %152(%struct.cell* %call169)
  %157 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %157 to i64
  %158 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx172 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %158, i64 %idxprom171
  %data173 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx172, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data173 to i8**
  store i8* %call170, i8** %d_string, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.164, %if.end.162
  br label %sw.epilog

sw.bb.175:                                        ; preds = %for.body.57
  %159 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr176 = getelementptr inbounds %struct.scheme, %struct.scheme* %159, i32 0, i32 58
  %160 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr176, align 8
  %pair_car177 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %160, i32 0, i32 36
  %161 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car177, align 8
  %162 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call178 = call %struct.cell* %161(%struct.cell* %162)
  store %struct.cell* %call178, %struct.cell** %vector, align 8
  %163 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr179 = getelementptr inbounds %struct.scheme, %struct.scheme* %163, i32 0, i32 58
  %164 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr179, align 8
  %is_vector = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %164, i32 0, i32 28
  %165 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_vector, align 8
  %166 = load %struct.cell*, %struct.cell** %vector, align 8
  %call180 = call i32 %165(%struct.cell* %166)
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.end.183, label %if.then.182

if.then.182:                                      ; preds = %sw.bb.175
  store i32 0, i32* %success, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %sw.bb.175
  %167 = load i32, i32* %success, align 4
  %tobool184 = icmp ne i32 %167, 0
  br i1 %tobool184, label %if.then.185, label %if.end.243

if.then.185:                                      ; preds = %if.end.183
  %168 = load i32, i32* %i, align 4
  %sub186 = sub nsw i32 %168, 1
  %idxprom187 = sext i32 %sub186 to i64
  %169 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx188 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %169, i64 %idxprom187
  %data189 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx188, i32 0, i32 1
  %d_int32190 = bitcast %union._GimpParamData* %data189 to i32*
  %170 = load i32, i32* %d_int32190, align 4
  store i32 %170, i32* %n_elements, align 4
  %171 = load i32, i32* %n_elements, align 4
  %cmp191 = icmp slt i32 %171, 0
  br i1 %cmp191, label %if.then.198, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.185
  %172 = load i32, i32* %n_elements, align 4
  %conv193 = sext i32 %172 to i64
  %173 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr194 = getelementptr inbounds %struct.scheme, %struct.scheme* %173, i32 0, i32 58
  %174 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr194, align 8
  %vector_length = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %174, i32 0, i32 30
  %175 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length, align 8
  %176 = load %struct.cell*, %struct.cell** %vector, align 8
  %call195 = call i64 %175(%struct.cell* %176)
  %cmp196 = icmp sgt i64 %conv193, %call195
  br i1 %cmp196, label %if.then.198, label %if.end.206

if.then.198:                                      ; preds = %lor.lhs.false, %if.then.185
  %arraydecay199 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %177 = load i32, i32* %i, align 4
  %add = add nsw i32 %177, 1
  %178 = load i8*, i8** %proc_name, align 8
  %179 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr200 = getelementptr inbounds %struct.scheme, %struct.scheme* %179, i32 0, i32 58
  %180 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr200, align 8
  %vector_length201 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %180, i32 0, i32 30
  %181 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length201, align 8
  %182 = load %struct.cell*, %struct.cell** %vector, align 8
  %call202 = call i64 %181(%struct.cell* %182)
  %183 = load i32, i32* %n_elements, align 4
  %call203 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay199, i64 1024, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.127, i32 0, i32 0), i32 %add, i8* %178, i64 %call202, i32 %183)
  %184 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay204 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call205 = call %struct.cell* @foreign_error(%struct.scheme* %184, i8* %arraydecay204, %struct.cell* null)
  store %struct.cell* %call205, %struct.cell** %retval
  br label %return

if.end.206:                                       ; preds = %lor.lhs.false
  %185 = load i32, i32* %n_elements, align 4
  %conv207 = sext i32 %185 to i64
  %call208 = call noalias i8* @g_malloc_n(i64 %conv207, i64 4)
  %186 = bitcast i8* %call208 to i32*
  %187 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %187 to i64
  %188 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx210 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %188, i64 %idxprom209
  %data211 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx210, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data211 to i32**
  store i32* %186, i32** %d_int32array, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.240, %if.end.206
  %189 = load i32, i32* %j, align 4
  %190 = load i32, i32* %n_elements, align 4
  %cmp213 = icmp slt i32 %189, %190
  br i1 %cmp213, label %for.body.215, label %for.end.242

for.body.215:                                     ; preds = %for.cond.212
  %191 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr216 = getelementptr inbounds %struct.scheme, %struct.scheme* %191, i32 0, i32 58
  %192 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr216, align 8
  %vector_elem = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %192, i32 0, i32 32
  %193 = load %struct.cell* (%struct.cell*, i32)*, %struct.cell* (%struct.cell*, i32)** %vector_elem, align 8
  %194 = load %struct.cell*, %struct.cell** %vector, align 8
  %195 = load i32, i32* %j, align 4
  %call217 = call %struct.cell* %193(%struct.cell* %194, i32 %195)
  store %struct.cell* %call217, %struct.cell** %v_element, align 8
  %196 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr218 = getelementptr inbounds %struct.scheme, %struct.scheme* %196, i32 0, i32 58
  %197 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr218, align 8
  %is_number219 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %197, i32 0, i32 19
  %198 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number219, align 8
  %199 = load %struct.cell*, %struct.cell** %v_element, align 8
  %call220 = call i32 %198(%struct.cell* %199)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.end.229, label %if.then.222

if.then.222:                                      ; preds = %for.body.215
  %arraydecay223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %200 = load i32, i32* %j, align 4
  %add224 = add nsw i32 %200, 1
  %201 = load i32, i32* %i, align 4
  %add225 = add nsw i32 %201, 1
  %202 = load i8*, i8** %proc_name, align 8
  %call226 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay223, i64 1024, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.128, i32 0, i32 0), i32 %add224, i32 %add225, i8* %202)
  %203 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay227 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %204 = load %struct.cell*, %struct.cell** %vector, align 8
  %call228 = call %struct.cell* @foreign_error(%struct.scheme* %203, i8* %arraydecay227, %struct.cell* %204)
  store %struct.cell* %call228, %struct.cell** %retval
  br label %return

if.end.229:                                       ; preds = %for.body.215
  %205 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr230 = getelementptr inbounds %struct.scheme, %struct.scheme* %205, i32 0, i32 58
  %206 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr230, align 8
  %ivalue231 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %206, i32 0, i32 21
  %207 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue231, align 8
  %208 = load %struct.cell*, %struct.cell** %v_element, align 8
  %call232 = call i64 %207(%struct.cell* %208)
  %conv233 = trunc i64 %call232 to i32
  %209 = load i32, i32* %j, align 4
  %idxprom234 = sext i32 %209 to i64
  %210 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %210 to i64
  %211 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx236 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %211, i64 %idxprom235
  %data237 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx236, i32 0, i32 1
  %d_int32array238 = bitcast %union._GimpParamData* %data237 to i32**
  %212 = load i32*, i32** %d_int32array238, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %212, i64 %idxprom234
  store i32 %conv233, i32* %arrayidx239, align 4
  br label %for.inc.240

for.inc.240:                                      ; preds = %if.end.229
  %213 = load i32, i32* %j, align 4
  %inc241 = add nsw i32 %213, 1
  store i32 %inc241, i32* %j, align 4
  br label %for.cond.212

for.end.242:                                      ; preds = %for.cond.212
  br label %if.end.243

if.end.243:                                       ; preds = %for.end.242, %if.end.183
  br label %sw.epilog

sw.bb.244:                                        ; preds = %for.body.57
  %214 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr245 = getelementptr inbounds %struct.scheme, %struct.scheme* %214, i32 0, i32 58
  %215 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr245, align 8
  %pair_car246 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %215, i32 0, i32 36
  %216 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car246, align 8
  %217 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call247 = call %struct.cell* %216(%struct.cell* %217)
  store %struct.cell* %call247, %struct.cell** %vector, align 8
  %218 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr248 = getelementptr inbounds %struct.scheme, %struct.scheme* %218, i32 0, i32 58
  %219 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr248, align 8
  %is_vector249 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %219, i32 0, i32 28
  %220 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_vector249, align 8
  %221 = load %struct.cell*, %struct.cell** %vector, align 8
  %call250 = call i32 %220(%struct.cell* %221)
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %if.end.253, label %if.then.252

if.then.252:                                      ; preds = %sw.bb.244
  store i32 0, i32* %success, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.252, %sw.bb.244
  %222 = load i32, i32* %success, align 4
  %tobool254 = icmp ne i32 %222, 0
  br i1 %tobool254, label %if.then.255, label %if.end.318

if.then.255:                                      ; preds = %if.end.253
  %223 = load i32, i32* %i, align 4
  %sub256 = sub nsw i32 %223, 1
  %idxprom257 = sext i32 %sub256 to i64
  %224 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx258 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %224, i64 %idxprom257
  %data259 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx258, i32 0, i32 1
  %d_int32260 = bitcast %union._GimpParamData* %data259 to i32*
  %225 = load i32, i32* %d_int32260, align 4
  store i32 %225, i32* %n_elements, align 4
  %226 = load i32, i32* %n_elements, align 4
  %cmp261 = icmp slt i32 %226, 0
  br i1 %cmp261, label %if.then.270, label %lor.lhs.false.263

lor.lhs.false.263:                                ; preds = %if.then.255
  %227 = load i32, i32* %n_elements, align 4
  %conv264 = sext i32 %227 to i64
  %228 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr265 = getelementptr inbounds %struct.scheme, %struct.scheme* %228, i32 0, i32 58
  %229 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr265, align 8
  %vector_length266 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %229, i32 0, i32 30
  %230 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length266, align 8
  %231 = load %struct.cell*, %struct.cell** %vector, align 8
  %call267 = call i64 %230(%struct.cell* %231)
  %cmp268 = icmp sgt i64 %conv264, %call267
  br i1 %cmp268, label %if.then.270, label %if.end.279

if.then.270:                                      ; preds = %lor.lhs.false.263, %if.then.255
  %arraydecay271 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %232 = load i32, i32* %i, align 4
  %add272 = add nsw i32 %232, 1
  %233 = load i8*, i8** %proc_name, align 8
  %234 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr273 = getelementptr inbounds %struct.scheme, %struct.scheme* %234, i32 0, i32 58
  %235 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr273, align 8
  %vector_length274 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %235, i32 0, i32 30
  %236 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length274, align 8
  %237 = load %struct.cell*, %struct.cell** %vector, align 8
  %call275 = call i64 %236(%struct.cell* %237)
  %238 = load i32, i32* %n_elements, align 4
  %call276 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay271, i64 1024, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.129, i32 0, i32 0), i32 %add272, i8* %233, i64 %call275, i32 %238)
  %239 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay277 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call278 = call %struct.cell* @foreign_error(%struct.scheme* %239, i8* %arraydecay277, %struct.cell* null)
  store %struct.cell* %call278, %struct.cell** %retval
  br label %return

if.end.279:                                       ; preds = %lor.lhs.false.263
  %240 = load i32, i32* %n_elements, align 4
  %conv280 = sext i32 %240 to i64
  %call281 = call noalias i8* @g_malloc_n(i64 %conv280, i64 2)
  %241 = bitcast i8* %call281 to i16*
  %242 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %242 to i64
  %243 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx283 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %243, i64 %idxprom282
  %data284 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx283, i32 0, i32 1
  %d_int16array = bitcast %union._GimpParamData* %data284 to i16**
  store i16* %241, i16** %d_int16array, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.285

for.cond.285:                                     ; preds = %for.inc.315, %if.end.279
  %244 = load i32, i32* %j, align 4
  %245 = load i32, i32* %n_elements, align 4
  %cmp286 = icmp slt i32 %244, %245
  br i1 %cmp286, label %for.body.288, label %for.end.317

for.body.288:                                     ; preds = %for.cond.285
  %246 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr290 = getelementptr inbounds %struct.scheme, %struct.scheme* %246, i32 0, i32 58
  %247 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr290, align 8
  %vector_elem291 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %247, i32 0, i32 32
  %248 = load %struct.cell* (%struct.cell*, i32)*, %struct.cell* (%struct.cell*, i32)** %vector_elem291, align 8
  %249 = load %struct.cell*, %struct.cell** %vector, align 8
  %250 = load i32, i32* %j, align 4
  %call292 = call %struct.cell* %248(%struct.cell* %249, i32 %250)
  store %struct.cell* %call292, %struct.cell** %v_element289, align 8
  %251 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr293 = getelementptr inbounds %struct.scheme, %struct.scheme* %251, i32 0, i32 58
  %252 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr293, align 8
  %is_number294 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %252, i32 0, i32 19
  %253 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number294, align 8
  %254 = load %struct.cell*, %struct.cell** %v_element289, align 8
  %call295 = call i32 %253(%struct.cell* %254)
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %if.end.304, label %if.then.297

if.then.297:                                      ; preds = %for.body.288
  %arraydecay298 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %255 = load i32, i32* %j, align 4
  %add299 = add nsw i32 %255, 1
  %256 = load i32, i32* %i, align 4
  %add300 = add nsw i32 %256, 1
  %257 = load i8*, i8** %proc_name, align 8
  %call301 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay298, i64 1024, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.128, i32 0, i32 0), i32 %add299, i32 %add300, i8* %257)
  %258 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay302 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %259 = load %struct.cell*, %struct.cell** %vector, align 8
  %call303 = call %struct.cell* @foreign_error(%struct.scheme* %258, i8* %arraydecay302, %struct.cell* %259)
  store %struct.cell* %call303, %struct.cell** %retval
  br label %return

if.end.304:                                       ; preds = %for.body.288
  %260 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr305 = getelementptr inbounds %struct.scheme, %struct.scheme* %260, i32 0, i32 58
  %261 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr305, align 8
  %ivalue306 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %261, i32 0, i32 21
  %262 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue306, align 8
  %263 = load %struct.cell*, %struct.cell** %v_element289, align 8
  %call307 = call i64 %262(%struct.cell* %263)
  %conv308 = trunc i64 %call307 to i16
  %264 = load i32, i32* %j, align 4
  %idxprom309 = sext i32 %264 to i64
  %265 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %265 to i64
  %266 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx311 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %266, i64 %idxprom310
  %data312 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx311, i32 0, i32 1
  %d_int16array313 = bitcast %union._GimpParamData* %data312 to i16**
  %267 = load i16*, i16** %d_int16array313, align 8
  %arrayidx314 = getelementptr inbounds i16, i16* %267, i64 %idxprom309
  store i16 %conv308, i16* %arrayidx314, align 2
  br label %for.inc.315

for.inc.315:                                      ; preds = %if.end.304
  %268 = load i32, i32* %j, align 4
  %inc316 = add nsw i32 %268, 1
  store i32 %inc316, i32* %j, align 4
  br label %for.cond.285

for.end.317:                                      ; preds = %for.cond.285
  br label %if.end.318

if.end.318:                                       ; preds = %for.end.317, %if.end.253
  br label %sw.epilog

sw.bb.319:                                        ; preds = %for.body.57
  %269 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr320 = getelementptr inbounds %struct.scheme, %struct.scheme* %269, i32 0, i32 58
  %270 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr320, align 8
  %pair_car321 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %270, i32 0, i32 36
  %271 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car321, align 8
  %272 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call322 = call %struct.cell* %271(%struct.cell* %272)
  store %struct.cell* %call322, %struct.cell** %vector, align 8
  %273 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr323 = getelementptr inbounds %struct.scheme, %struct.scheme* %273, i32 0, i32 58
  %274 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr323, align 8
  %is_vector324 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %274, i32 0, i32 28
  %275 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_vector324, align 8
  %276 = load %struct.cell*, %struct.cell** %vector, align 8
  %call325 = call i32 %275(%struct.cell* %276)
  %tobool326 = icmp ne i32 %call325, 0
  br i1 %tobool326, label %if.end.328, label %if.then.327

if.then.327:                                      ; preds = %sw.bb.319
  store i32 0, i32* %success, align 4
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.327, %sw.bb.319
  %277 = load i32, i32* %success, align 4
  %tobool329 = icmp ne i32 %277, 0
  br i1 %tobool329, label %if.then.330, label %if.end.393

if.then.330:                                      ; preds = %if.end.328
  %278 = load i32, i32* %i, align 4
  %sub331 = sub nsw i32 %278, 1
  %idxprom332 = sext i32 %sub331 to i64
  %279 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx333 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %279, i64 %idxprom332
  %data334 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx333, i32 0, i32 1
  %d_int32335 = bitcast %union._GimpParamData* %data334 to i32*
  %280 = load i32, i32* %d_int32335, align 4
  store i32 %280, i32* %n_elements, align 4
  %281 = load i32, i32* %n_elements, align 4
  %cmp336 = icmp slt i32 %281, 0
  br i1 %cmp336, label %if.then.345, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %if.then.330
  %282 = load i32, i32* %n_elements, align 4
  %conv339 = sext i32 %282 to i64
  %283 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr340 = getelementptr inbounds %struct.scheme, %struct.scheme* %283, i32 0, i32 58
  %284 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr340, align 8
  %vector_length341 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %284, i32 0, i32 30
  %285 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length341, align 8
  %286 = load %struct.cell*, %struct.cell** %vector, align 8
  %call342 = call i64 %285(%struct.cell* %286)
  %cmp343 = icmp sgt i64 %conv339, %call342
  br i1 %cmp343, label %if.then.345, label %if.end.354

if.then.345:                                      ; preds = %lor.lhs.false.338, %if.then.330
  %arraydecay346 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %287 = load i32, i32* %i, align 4
  %add347 = add nsw i32 %287, 1
  %288 = load i8*, i8** %proc_name, align 8
  %289 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr348 = getelementptr inbounds %struct.scheme, %struct.scheme* %289, i32 0, i32 58
  %290 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr348, align 8
  %vector_length349 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %290, i32 0, i32 30
  %291 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length349, align 8
  %292 = load %struct.cell*, %struct.cell** %vector, align 8
  %call350 = call i64 %291(%struct.cell* %292)
  %293 = load i32, i32* %n_elements, align 4
  %call351 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay346, i64 1024, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.130, i32 0, i32 0), i32 %add347, i8* %288, i64 %call350, i32 %293)
  %294 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay352 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call353 = call %struct.cell* @foreign_error(%struct.scheme* %294, i8* %arraydecay352, %struct.cell* null)
  store %struct.cell* %call353, %struct.cell** %retval
  br label %return

if.end.354:                                       ; preds = %lor.lhs.false.338
  %295 = load i32, i32* %n_elements, align 4
  %conv355 = sext i32 %295 to i64
  %call356 = call noalias i8* @g_malloc_n(i64 %conv355, i64 1)
  %296 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %296 to i64
  %297 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx358 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %297, i64 %idxprom357
  %data359 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx358, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data359 to i8**
  store i8* %call356, i8** %d_int8array, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.360

for.cond.360:                                     ; preds = %for.inc.390, %if.end.354
  %298 = load i32, i32* %j, align 4
  %299 = load i32, i32* %n_elements, align 4
  %cmp361 = icmp slt i32 %298, %299
  br i1 %cmp361, label %for.body.363, label %for.end.392

for.body.363:                                     ; preds = %for.cond.360
  %300 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr365 = getelementptr inbounds %struct.scheme, %struct.scheme* %300, i32 0, i32 58
  %301 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr365, align 8
  %vector_elem366 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %301, i32 0, i32 32
  %302 = load %struct.cell* (%struct.cell*, i32)*, %struct.cell* (%struct.cell*, i32)** %vector_elem366, align 8
  %303 = load %struct.cell*, %struct.cell** %vector, align 8
  %304 = load i32, i32* %j, align 4
  %call367 = call %struct.cell* %302(%struct.cell* %303, i32 %304)
  store %struct.cell* %call367, %struct.cell** %v_element364, align 8
  %305 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr368 = getelementptr inbounds %struct.scheme, %struct.scheme* %305, i32 0, i32 58
  %306 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr368, align 8
  %is_number369 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %306, i32 0, i32 19
  %307 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number369, align 8
  %308 = load %struct.cell*, %struct.cell** %v_element364, align 8
  %call370 = call i32 %307(%struct.cell* %308)
  %tobool371 = icmp ne i32 %call370, 0
  br i1 %tobool371, label %if.end.379, label %if.then.372

if.then.372:                                      ; preds = %for.body.363
  %arraydecay373 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %309 = load i32, i32* %j, align 4
  %add374 = add nsw i32 %309, 1
  %310 = load i32, i32* %i, align 4
  %add375 = add nsw i32 %310, 1
  %311 = load i8*, i8** %proc_name, align 8
  %call376 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay373, i64 1024, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.128, i32 0, i32 0), i32 %add374, i32 %add375, i8* %311)
  %312 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay377 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %313 = load %struct.cell*, %struct.cell** %vector, align 8
  %call378 = call %struct.cell* @foreign_error(%struct.scheme* %312, i8* %arraydecay377, %struct.cell* %313)
  store %struct.cell* %call378, %struct.cell** %retval
  br label %return

if.end.379:                                       ; preds = %for.body.363
  %314 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr380 = getelementptr inbounds %struct.scheme, %struct.scheme* %314, i32 0, i32 58
  %315 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr380, align 8
  %ivalue381 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %315, i32 0, i32 21
  %316 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue381, align 8
  %317 = load %struct.cell*, %struct.cell** %v_element364, align 8
  %call382 = call i64 %316(%struct.cell* %317)
  %conv383 = trunc i64 %call382 to i8
  %318 = load i32, i32* %j, align 4
  %idxprom384 = sext i32 %318 to i64
  %319 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %319 to i64
  %320 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx386 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %320, i64 %idxprom385
  %data387 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx386, i32 0, i32 1
  %d_int8array388 = bitcast %union._GimpParamData* %data387 to i8**
  %321 = load i8*, i8** %d_int8array388, align 8
  %arrayidx389 = getelementptr inbounds i8, i8* %321, i64 %idxprom384
  store i8 %conv383, i8* %arrayidx389, align 1
  br label %for.inc.390

for.inc.390:                                      ; preds = %if.end.379
  %322 = load i32, i32* %j, align 4
  %inc391 = add nsw i32 %322, 1
  store i32 %inc391, i32* %j, align 4
  br label %for.cond.360

for.end.392:                                      ; preds = %for.cond.360
  br label %if.end.393

if.end.393:                                       ; preds = %for.end.392, %if.end.328
  br label %sw.epilog

sw.bb.394:                                        ; preds = %for.body.57
  %323 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr395 = getelementptr inbounds %struct.scheme, %struct.scheme* %323, i32 0, i32 58
  %324 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr395, align 8
  %pair_car396 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %324, i32 0, i32 36
  %325 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car396, align 8
  %326 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call397 = call %struct.cell* %325(%struct.cell* %326)
  store %struct.cell* %call397, %struct.cell** %vector, align 8
  %327 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr398 = getelementptr inbounds %struct.scheme, %struct.scheme* %327, i32 0, i32 58
  %328 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr398, align 8
  %is_vector399 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %328, i32 0, i32 28
  %329 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_vector399, align 8
  %330 = load %struct.cell*, %struct.cell** %vector, align 8
  %call400 = call i32 %329(%struct.cell* %330)
  %tobool401 = icmp ne i32 %call400, 0
  br i1 %tobool401, label %if.end.403, label %if.then.402

if.then.402:                                      ; preds = %sw.bb.394
  store i32 0, i32* %success, align 4
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.402, %sw.bb.394
  %331 = load i32, i32* %success, align 4
  %tobool404 = icmp ne i32 %331, 0
  br i1 %tobool404, label %if.then.405, label %if.end.469

if.then.405:                                      ; preds = %if.end.403
  %332 = load i32, i32* %i, align 4
  %sub406 = sub nsw i32 %332, 1
  %idxprom407 = sext i32 %sub406 to i64
  %333 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx408 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %333, i64 %idxprom407
  %data409 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx408, i32 0, i32 1
  %d_int32410 = bitcast %union._GimpParamData* %data409 to i32*
  %334 = load i32, i32* %d_int32410, align 4
  store i32 %334, i32* %n_elements, align 4
  %335 = load i32, i32* %n_elements, align 4
  %cmp411 = icmp slt i32 %335, 0
  br i1 %cmp411, label %if.then.420, label %lor.lhs.false.413

lor.lhs.false.413:                                ; preds = %if.then.405
  %336 = load i32, i32* %n_elements, align 4
  %conv414 = sext i32 %336 to i64
  %337 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr415 = getelementptr inbounds %struct.scheme, %struct.scheme* %337, i32 0, i32 58
  %338 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr415, align 8
  %vector_length416 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %338, i32 0, i32 30
  %339 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length416, align 8
  %340 = load %struct.cell*, %struct.cell** %vector, align 8
  %call417 = call i64 %339(%struct.cell* %340)
  %cmp418 = icmp sgt i64 %conv414, %call417
  br i1 %cmp418, label %if.then.420, label %if.end.429

if.then.420:                                      ; preds = %lor.lhs.false.413, %if.then.405
  %arraydecay421 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %341 = load i32, i32* %i, align 4
  %add422 = add nsw i32 %341, 1
  %342 = load i8*, i8** %proc_name, align 8
  %343 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr423 = getelementptr inbounds %struct.scheme, %struct.scheme* %343, i32 0, i32 58
  %344 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr423, align 8
  %vector_length424 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %344, i32 0, i32 30
  %345 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length424, align 8
  %346 = load %struct.cell*, %struct.cell** %vector, align 8
  %call425 = call i64 %345(%struct.cell* %346)
  %347 = load i32, i32* %n_elements, align 4
  %call426 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay421, i64 1024, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.131, i32 0, i32 0), i32 %add422, i8* %342, i64 %call425, i32 %347)
  %348 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay427 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call428 = call %struct.cell* @foreign_error(%struct.scheme* %348, i8* %arraydecay427, %struct.cell* null)
  store %struct.cell* %call428, %struct.cell** %retval
  br label %return

if.end.429:                                       ; preds = %lor.lhs.false.413
  %349 = load i32, i32* %n_elements, align 4
  %conv430 = sext i32 %349 to i64
  %call431 = call noalias i8* @g_malloc_n(i64 %conv430, i64 8)
  %350 = bitcast i8* %call431 to double*
  %351 = load i32, i32* %i, align 4
  %idxprom432 = sext i32 %351 to i64
  %352 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx433 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %352, i64 %idxprom432
  %data434 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx433, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data434 to double**
  store double* %350, double** %d_floatarray, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.435

for.cond.435:                                     ; preds = %for.inc.466, %if.end.429
  %353 = load i32, i32* %j, align 4
  %354 = load i32, i32* %n_elements, align 4
  %cmp436 = icmp slt i32 %353, %354
  br i1 %cmp436, label %for.body.438, label %for.end.468

for.body.438:                                     ; preds = %for.cond.435
  %355 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr440 = getelementptr inbounds %struct.scheme, %struct.scheme* %355, i32 0, i32 58
  %356 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr440, align 8
  %vector_elem441 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %356, i32 0, i32 32
  %357 = load %struct.cell* (%struct.cell*, i32)*, %struct.cell* (%struct.cell*, i32)** %vector_elem441, align 8
  %358 = load %struct.cell*, %struct.cell** %vector, align 8
  %359 = load i32, i32* %j, align 4
  %call442 = call %struct.cell* %357(%struct.cell* %358, i32 %359)
  store %struct.cell* %call442, %struct.cell** %v_element439, align 8
  %360 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr443 = getelementptr inbounds %struct.scheme, %struct.scheme* %360, i32 0, i32 58
  %361 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr443, align 8
  %is_number444 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %361, i32 0, i32 19
  %362 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number444, align 8
  %363 = load %struct.cell*, %struct.cell** %v_element439, align 8
  %call445 = call i32 %362(%struct.cell* %363)
  %tobool446 = icmp ne i32 %call445, 0
  br i1 %tobool446, label %if.end.454, label %if.then.447

if.then.447:                                      ; preds = %for.body.438
  %arraydecay448 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %364 = load i32, i32* %j, align 4
  %add449 = add nsw i32 %364, 1
  %365 = load i32, i32* %i, align 4
  %add450 = add nsw i32 %365, 1
  %366 = load i8*, i8** %proc_name, align 8
  %call451 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay448, i64 1024, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.128, i32 0, i32 0), i32 %add449, i32 %add450, i8* %366)
  %367 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay452 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %368 = load %struct.cell*, %struct.cell** %vector, align 8
  %call453 = call %struct.cell* @foreign_error(%struct.scheme* %367, i8* %arraydecay452, %struct.cell* %368)
  store %struct.cell* %call453, %struct.cell** %retval
  br label %return

if.end.454:                                       ; preds = %for.body.438
  %369 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr455 = getelementptr inbounds %struct.scheme, %struct.scheme* %369, i32 0, i32 58
  %370 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr455, align 8
  %rvalue456 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %370, i32 0, i32 22
  %371 = load double (%struct.cell*)*, double (%struct.cell*)** %rvalue456, align 8
  %372 = load %struct.cell*, %struct.cell** %v_element439, align 8
  %call457 = call double %371(%struct.cell* %372)
  %conv458 = fptrunc double %call457 to float
  %conv459 = fpext float %conv458 to double
  %373 = load i32, i32* %j, align 4
  %idxprom460 = sext i32 %373 to i64
  %374 = load i32, i32* %i, align 4
  %idxprom461 = sext i32 %374 to i64
  %375 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx462 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %375, i64 %idxprom461
  %data463 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx462, i32 0, i32 1
  %d_floatarray464 = bitcast %union._GimpParamData* %data463 to double**
  %376 = load double*, double** %d_floatarray464, align 8
  %arrayidx465 = getelementptr inbounds double, double* %376, i64 %idxprom460
  store double %conv459, double* %arrayidx465, align 8
  br label %for.inc.466

for.inc.466:                                      ; preds = %if.end.454
  %377 = load i32, i32* %j, align 4
  %inc467 = add nsw i32 %377, 1
  store i32 %inc467, i32* %j, align 4
  br label %for.cond.435

for.end.468:                                      ; preds = %for.cond.435
  br label %if.end.469

if.end.469:                                       ; preds = %for.end.468, %if.end.403
  br label %sw.epilog

sw.bb.470:                                        ; preds = %for.body.57
  %378 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr471 = getelementptr inbounds %struct.scheme, %struct.scheme* %378, i32 0, i32 58
  %379 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr471, align 8
  %pair_car472 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %379, i32 0, i32 36
  %380 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car472, align 8
  %381 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call473 = call %struct.cell* %380(%struct.cell* %381)
  store %struct.cell* %call473, %struct.cell** %vector, align 8
  %382 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr474 = getelementptr inbounds %struct.scheme, %struct.scheme* %382, i32 0, i32 58
  %383 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr474, align 8
  %is_list = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %383, i32 0, i32 27
  %384 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %is_list, align 8
  %385 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %386 = load %struct.cell*, %struct.cell** %vector, align 8
  %call475 = call i32 %384(%struct.scheme* %385, %struct.cell* %386)
  %tobool476 = icmp ne i32 %call475, 0
  br i1 %tobool476, label %if.end.478, label %if.then.477

if.then.477:                                      ; preds = %sw.bb.470
  store i32 0, i32* %success, align 4
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.477, %sw.bb.470
  %387 = load i32, i32* %success, align 4
  %tobool479 = icmp ne i32 %387, 0
  br i1 %tobool479, label %if.then.480, label %if.end.544

if.then.480:                                      ; preds = %if.end.478
  %388 = load i32, i32* %i, align 4
  %sub481 = sub nsw i32 %388, 1
  %idxprom482 = sext i32 %sub481 to i64
  %389 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx483 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %389, i64 %idxprom482
  %data484 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx483, i32 0, i32 1
  %d_int32485 = bitcast %union._GimpParamData* %data484 to i32*
  %390 = load i32, i32* %d_int32485, align 4
  store i32 %390, i32* %n_elements, align 4
  %391 = load i32, i32* %n_elements, align 4
  %cmp486 = icmp slt i32 %391, 0
  br i1 %cmp486, label %if.then.494, label %lor.lhs.false.488

lor.lhs.false.488:                                ; preds = %if.then.480
  %392 = load i32, i32* %n_elements, align 4
  %393 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr489 = getelementptr inbounds %struct.scheme, %struct.scheme* %393, i32 0, i32 58
  %394 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr489, align 8
  %list_length490 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %394, i32 0, i32 29
  %395 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length490, align 8
  %396 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %397 = load %struct.cell*, %struct.cell** %vector, align 8
  %call491 = call i32 %395(%struct.scheme* %396, %struct.cell* %397)
  %cmp492 = icmp sgt i32 %392, %call491
  br i1 %cmp492, label %if.then.494, label %if.end.503

if.then.494:                                      ; preds = %lor.lhs.false.488, %if.then.480
  %arraydecay495 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %398 = load i32, i32* %i, align 4
  %add496 = add nsw i32 %398, 1
  %399 = load i8*, i8** %proc_name, align 8
  %400 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr497 = getelementptr inbounds %struct.scheme, %struct.scheme* %400, i32 0, i32 58
  %401 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr497, align 8
  %list_length498 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %401, i32 0, i32 29
  %402 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length498, align 8
  %403 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %404 = load %struct.cell*, %struct.cell** %vector, align 8
  %call499 = call i32 %402(%struct.scheme* %403, %struct.cell* %404)
  %405 = load i32, i32* %n_elements, align 4
  %call500 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay495, i64 1024, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.132, i32 0, i32 0), i32 %add496, i8* %399, i32 %call499, i32 %405)
  %406 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay501 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call502 = call %struct.cell* @foreign_error(%struct.scheme* %406, i8* %arraydecay501, %struct.cell* null)
  store %struct.cell* %call502, %struct.cell** %retval
  br label %return

if.end.503:                                       ; preds = %lor.lhs.false.488
  %407 = load i32, i32* %n_elements, align 4
  %conv504 = sext i32 %407 to i64
  %call505 = call noalias i8* @g_malloc_n(i64 %conv504, i64 8)
  %408 = bitcast i8* %call505 to i8**
  %409 = load i32, i32* %i, align 4
  %idxprom506 = sext i32 %409 to i64
  %410 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx507 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %410, i64 %idxprom506
  %data508 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx507, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data508 to i8***
  store i8** %408, i8*** %d_stringarray, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.509

for.cond.509:                                     ; preds = %for.inc.541, %if.end.503
  %411 = load i32, i32* %j, align 4
  %412 = load i32, i32* %n_elements, align 4
  %cmp510 = icmp slt i32 %411, %412
  br i1 %cmp510, label %for.body.512, label %for.end.543

for.body.512:                                     ; preds = %for.cond.509
  %413 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr514 = getelementptr inbounds %struct.scheme, %struct.scheme* %413, i32 0, i32 58
  %414 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr514, align 8
  %pair_car515 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %414, i32 0, i32 36
  %415 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car515, align 8
  %416 = load %struct.cell*, %struct.cell** %vector, align 8
  %call516 = call %struct.cell* %415(%struct.cell* %416)
  store %struct.cell* %call516, %struct.cell** %v_element513, align 8
  %417 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr517 = getelementptr inbounds %struct.scheme, %struct.scheme* %417, i32 0, i32 58
  %418 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr517, align 8
  %is_string518 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %418, i32 0, i32 16
  %419 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string518, align 8
  %420 = load %struct.cell*, %struct.cell** %v_element513, align 8
  %call519 = call i32 %419(%struct.cell* %420)
  %tobool520 = icmp ne i32 %call519, 0
  br i1 %tobool520, label %if.end.528, label %if.then.521

if.then.521:                                      ; preds = %for.body.512
  %arraydecay522 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %421 = load i32, i32* %j, align 4
  %add523 = add nsw i32 %421, 1
  %422 = load i32, i32* %i, align 4
  %add524 = add nsw i32 %422, 1
  %423 = load i8*, i8** %proc_name, align 8
  %call525 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay522, i64 1024, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.133, i32 0, i32 0), i32 %add523, i32 %add524, i8* %423)
  %424 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay526 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %425 = load %struct.cell*, %struct.cell** %vector, align 8
  %call527 = call %struct.cell* @foreign_error(%struct.scheme* %424, i8* %arraydecay526, %struct.cell* %425)
  store %struct.cell* %call527, %struct.cell** %retval
  br label %return

if.end.528:                                       ; preds = %for.body.512
  %426 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr529 = getelementptr inbounds %struct.scheme, %struct.scheme* %426, i32 0, i32 58
  %427 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr529, align 8
  %string_value530 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %427, i32 0, i32 18
  %428 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value530, align 8
  %429 = load %struct.cell*, %struct.cell** %v_element513, align 8
  %call531 = call i8* %428(%struct.cell* %429)
  %430 = load i32, i32* %j, align 4
  %idxprom532 = sext i32 %430 to i64
  %431 = load i32, i32* %i, align 4
  %idxprom533 = sext i32 %431 to i64
  %432 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx534 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %432, i64 %idxprom533
  %data535 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx534, i32 0, i32 1
  %d_stringarray536 = bitcast %union._GimpParamData* %data535 to i8***
  %433 = load i8**, i8*** %d_stringarray536, align 8
  %arrayidx537 = getelementptr inbounds i8*, i8** %433, i64 %idxprom532
  store i8* %call531, i8** %arrayidx537, align 8
  %434 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr538 = getelementptr inbounds %struct.scheme, %struct.scheme* %434, i32 0, i32 58
  %435 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr538, align 8
  %pair_cdr539 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %435, i32 0, i32 37
  %436 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr539, align 8
  %437 = load %struct.cell*, %struct.cell** %vector, align 8
  %call540 = call %struct.cell* %436(%struct.cell* %437)
  store %struct.cell* %call540, %struct.cell** %vector, align 8
  br label %for.inc.541

for.inc.541:                                      ; preds = %if.end.528
  %438 = load i32, i32* %j, align 4
  %inc542 = add nsw i32 %438, 1
  store i32 %inc542, i32* %j, align 4
  br label %for.cond.509

for.end.543:                                      ; preds = %for.cond.509
  br label %if.end.544

if.end.544:                                       ; preds = %for.end.543, %if.end.478
  br label %sw.epilog

sw.bb.545:                                        ; preds = %for.body.57
  %439 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr546 = getelementptr inbounds %struct.scheme, %struct.scheme* %439, i32 0, i32 58
  %440 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr546, align 8
  %is_string547 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %440, i32 0, i32 16
  %441 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string547, align 8
  %442 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr548 = getelementptr inbounds %struct.scheme, %struct.scheme* %442, i32 0, i32 58
  %443 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr548, align 8
  %pair_car549 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %443, i32 0, i32 36
  %444 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car549, align 8
  %445 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call550 = call %struct.cell* %444(%struct.cell* %445)
  %call551 = call i32 %441(%struct.cell* %call550)
  %tobool552 = icmp ne i32 %call551, 0
  br i1 %tobool552, label %if.then.553, label %if.else.571

if.then.553:                                      ; preds = %sw.bb.545
  %446 = load i32, i32* %i, align 4
  %idxprom554 = sext i32 %446 to i64
  %447 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx555 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %447, i64 %idxprom554
  %data556 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx555, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data556 to %struct._GimpRGB*
  %448 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr557 = getelementptr inbounds %struct.scheme, %struct.scheme* %448, i32 0, i32 58
  %449 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr557, align 8
  %string_value558 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %449, i32 0, i32 18
  %450 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value558, align 8
  %451 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr559 = getelementptr inbounds %struct.scheme, %struct.scheme* %451, i32 0, i32 58
  %452 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr559, align 8
  %pair_car560 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %452, i32 0, i32 36
  %453 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car560, align 8
  %454 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call561 = call %struct.cell* %453(%struct.cell* %454)
  %call562 = call i8* %450(%struct.cell* %call561)
  %call563 = call i32 @gimp_rgb_parse_css(%struct._GimpRGB* %d_color, i8* %call562, i32 -1)
  %tobool564 = icmp ne i32 %call563, 0
  br i1 %tobool564, label %if.end.566, label %if.then.565

if.then.565:                                      ; preds = %if.then.553
  store i32 0, i32* %success, align 4
  br label %if.end.566

if.end.566:                                       ; preds = %if.then.565, %if.then.553
  %455 = load i32, i32* %i, align 4
  %idxprom567 = sext i32 %455 to i64
  %456 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx568 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %456, i64 %idxprom567
  %data569 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx568, i32 0, i32 1
  %d_color570 = bitcast %union._GimpParamData* %data569 to %struct._GimpRGB*
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %d_color570, double 1.000000e+00)
  br label %if.end.725

if.else.571:                                      ; preds = %sw.bb.545
  %457 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr572 = getelementptr inbounds %struct.scheme, %struct.scheme* %457, i32 0, i32 58
  %458 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr572, align 8
  %is_list573 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %458, i32 0, i32 27
  %459 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %is_list573, align 8
  %460 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %461 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr574 = getelementptr inbounds %struct.scheme, %struct.scheme* %461, i32 0, i32 58
  %462 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr574, align 8
  %pair_car575 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %462, i32 0, i32 36
  %463 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car575, align 8
  %464 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call576 = call %struct.cell* %463(%struct.cell* %464)
  %call577 = call i32 %459(%struct.scheme* %460, %struct.cell* %call576)
  %tobool578 = icmp ne i32 %call577, 0
  br i1 %tobool578, label %land.lhs.true, label %if.else.723

land.lhs.true:                                    ; preds = %if.else.571
  %465 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr579 = getelementptr inbounds %struct.scheme, %struct.scheme* %465, i32 0, i32 58
  %466 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr579, align 8
  %list_length580 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %466, i32 0, i32 29
  %467 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length580, align 8
  %468 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %469 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr581 = getelementptr inbounds %struct.scheme, %struct.scheme* %469, i32 0, i32 58
  %470 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr581, align 8
  %pair_car582 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %470, i32 0, i32 36
  %471 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car582, align 8
  %472 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call583 = call %struct.cell* %471(%struct.cell* %472)
  %call584 = call i32 %467(%struct.scheme* %468, %struct.cell* %call583)
  %cmp585 = icmp eq i32 %call584, 3
  br i1 %cmp585, label %if.then.587, label %if.else.723

if.then.587:                                      ; preds = %land.lhs.true
  store i8 0, i8* %r, align 1
  store i8 0, i8* %g, align 1
  store i8 0, i8* %b, align 1
  %473 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr588 = getelementptr inbounds %struct.scheme, %struct.scheme* %473, i32 0, i32 58
  %474 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr588, align 8
  %pair_car589 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %474, i32 0, i32 36
  %475 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car589, align 8
  %476 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call590 = call %struct.cell* %475(%struct.cell* %476)
  store %struct.cell* %call590, %struct.cell** %color_list, align 8
  %477 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr591 = getelementptr inbounds %struct.scheme, %struct.scheme* %477, i32 0, i32 58
  %478 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr591, align 8
  %is_number592 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %478, i32 0, i32 19
  %479 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number592, align 8
  %480 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr593 = getelementptr inbounds %struct.scheme, %struct.scheme* %480, i32 0, i32 58
  %481 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr593, align 8
  %pair_car594 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %481, i32 0, i32 36
  %482 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car594, align 8
  %483 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call595 = call %struct.cell* %482(%struct.cell* %483)
  %call596 = call i32 %479(%struct.cell* %call595)
  %tobool597 = icmp ne i32 %call596, 0
  br i1 %tobool597, label %if.then.598, label %if.else.626

if.then.598:                                      ; preds = %if.then.587
  %484 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr599 = getelementptr inbounds %struct.scheme, %struct.scheme* %484, i32 0, i32 58
  %485 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr599, align 8
  %ivalue600 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %485, i32 0, i32 21
  %486 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue600, align 8
  %487 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr601 = getelementptr inbounds %struct.scheme, %struct.scheme* %487, i32 0, i32 58
  %488 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr601, align 8
  %pair_car602 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %488, i32 0, i32 36
  %489 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car602, align 8
  %490 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call603 = call %struct.cell* %489(%struct.cell* %490)
  %call604 = call i64 %486(%struct.cell* %call603)
  %cmp605 = icmp sgt i64 %call604, 255
  br i1 %cmp605, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.598
  br label %cond.end.623

cond.false:                                       ; preds = %if.then.598
  %491 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr607 = getelementptr inbounds %struct.scheme, %struct.scheme* %491, i32 0, i32 58
  %492 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr607, align 8
  %ivalue608 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %492, i32 0, i32 21
  %493 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue608, align 8
  %494 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr609 = getelementptr inbounds %struct.scheme, %struct.scheme* %494, i32 0, i32 58
  %495 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr609, align 8
  %pair_car610 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %495, i32 0, i32 36
  %496 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car610, align 8
  %497 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call611 = call %struct.cell* %496(%struct.cell* %497)
  %call612 = call i64 %493(%struct.cell* %call611)
  %cmp613 = icmp slt i64 %call612, 0
  br i1 %cmp613, label %cond.true.615, label %cond.false.616

cond.true.615:                                    ; preds = %cond.false
  br label %cond.end

cond.false.616:                                   ; preds = %cond.false
  %498 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr617 = getelementptr inbounds %struct.scheme, %struct.scheme* %498, i32 0, i32 58
  %499 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr617, align 8
  %ivalue618 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %499, i32 0, i32 21
  %500 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue618, align 8
  %501 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr619 = getelementptr inbounds %struct.scheme, %struct.scheme* %501, i32 0, i32 58
  %502 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr619, align 8
  %pair_car620 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %502, i32 0, i32 36
  %503 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car620, align 8
  %504 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call621 = call %struct.cell* %503(%struct.cell* %504)
  %call622 = call i64 %500(%struct.cell* %call621)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.616, %cond.true.615
  %cond = phi i64 [ 0, %cond.true.615 ], [ %call622, %cond.false.616 ]
  br label %cond.end.623

cond.end.623:                                     ; preds = %cond.end, %cond.true
  %cond624 = phi i64 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv625 = trunc i64 %cond624 to i8
  store i8 %conv625, i8* %r, align 1
  br label %if.end.627

if.else.626:                                      ; preds = %if.then.587
  store i32 0, i32* %success, align 4
  br label %if.end.627

if.end.627:                                       ; preds = %if.else.626, %cond.end.623
  %505 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr628 = getelementptr inbounds %struct.scheme, %struct.scheme* %505, i32 0, i32 58
  %506 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr628, align 8
  %pair_cdr629 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %506, i32 0, i32 37
  %507 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr629, align 8
  %508 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call630 = call %struct.cell* %507(%struct.cell* %508)
  store %struct.cell* %call630, %struct.cell** %color_list, align 8
  %509 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr631 = getelementptr inbounds %struct.scheme, %struct.scheme* %509, i32 0, i32 58
  %510 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr631, align 8
  %is_number632 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %510, i32 0, i32 19
  %511 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number632, align 8
  %512 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr633 = getelementptr inbounds %struct.scheme, %struct.scheme* %512, i32 0, i32 58
  %513 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr633, align 8
  %pair_car634 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %513, i32 0, i32 36
  %514 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car634, align 8
  %515 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call635 = call %struct.cell* %514(%struct.cell* %515)
  %call636 = call i32 %511(%struct.cell* %call635)
  %tobool637 = icmp ne i32 %call636, 0
  br i1 %tobool637, label %if.then.638, label %if.else.670

if.then.638:                                      ; preds = %if.end.627
  %516 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr639 = getelementptr inbounds %struct.scheme, %struct.scheme* %516, i32 0, i32 58
  %517 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr639, align 8
  %ivalue640 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %517, i32 0, i32 21
  %518 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue640, align 8
  %519 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr641 = getelementptr inbounds %struct.scheme, %struct.scheme* %519, i32 0, i32 58
  %520 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr641, align 8
  %pair_car642 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %520, i32 0, i32 36
  %521 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car642, align 8
  %522 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call643 = call %struct.cell* %521(%struct.cell* %522)
  %call644 = call i64 %518(%struct.cell* %call643)
  %cmp645 = icmp sgt i64 %call644, 255
  br i1 %cmp645, label %cond.true.647, label %cond.false.648

cond.true.647:                                    ; preds = %if.then.638
  br label %cond.end.667

cond.false.648:                                   ; preds = %if.then.638
  %523 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr649 = getelementptr inbounds %struct.scheme, %struct.scheme* %523, i32 0, i32 58
  %524 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr649, align 8
  %ivalue650 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %524, i32 0, i32 21
  %525 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue650, align 8
  %526 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr651 = getelementptr inbounds %struct.scheme, %struct.scheme* %526, i32 0, i32 58
  %527 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr651, align 8
  %pair_car652 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %527, i32 0, i32 36
  %528 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car652, align 8
  %529 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call653 = call %struct.cell* %528(%struct.cell* %529)
  %call654 = call i64 %525(%struct.cell* %call653)
  %cmp655 = icmp slt i64 %call654, 0
  br i1 %cmp655, label %cond.true.657, label %cond.false.658

cond.true.657:                                    ; preds = %cond.false.648
  br label %cond.end.665

cond.false.658:                                   ; preds = %cond.false.648
  %530 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr659 = getelementptr inbounds %struct.scheme, %struct.scheme* %530, i32 0, i32 58
  %531 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr659, align 8
  %ivalue660 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %531, i32 0, i32 21
  %532 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue660, align 8
  %533 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr661 = getelementptr inbounds %struct.scheme, %struct.scheme* %533, i32 0, i32 58
  %534 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr661, align 8
  %pair_car662 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %534, i32 0, i32 36
  %535 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car662, align 8
  %536 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call663 = call %struct.cell* %535(%struct.cell* %536)
  %call664 = call i64 %532(%struct.cell* %call663)
  br label %cond.end.665

cond.end.665:                                     ; preds = %cond.false.658, %cond.true.657
  %cond666 = phi i64 [ 0, %cond.true.657 ], [ %call664, %cond.false.658 ]
  br label %cond.end.667

cond.end.667:                                     ; preds = %cond.end.665, %cond.true.647
  %cond668 = phi i64 [ 255, %cond.true.647 ], [ %cond666, %cond.end.665 ]
  %conv669 = trunc i64 %cond668 to i8
  store i8 %conv669, i8* %g, align 1
  br label %if.end.671

if.else.670:                                      ; preds = %if.end.627
  store i32 0, i32* %success, align 4
  br label %if.end.671

if.end.671:                                       ; preds = %if.else.670, %cond.end.667
  %537 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr672 = getelementptr inbounds %struct.scheme, %struct.scheme* %537, i32 0, i32 58
  %538 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr672, align 8
  %pair_cdr673 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %538, i32 0, i32 37
  %539 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr673, align 8
  %540 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call674 = call %struct.cell* %539(%struct.cell* %540)
  store %struct.cell* %call674, %struct.cell** %color_list, align 8
  %541 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr675 = getelementptr inbounds %struct.scheme, %struct.scheme* %541, i32 0, i32 58
  %542 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr675, align 8
  %is_number676 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %542, i32 0, i32 19
  %543 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number676, align 8
  %544 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr677 = getelementptr inbounds %struct.scheme, %struct.scheme* %544, i32 0, i32 58
  %545 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr677, align 8
  %pair_car678 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %545, i32 0, i32 36
  %546 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car678, align 8
  %547 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call679 = call %struct.cell* %546(%struct.cell* %547)
  %call680 = call i32 %543(%struct.cell* %call679)
  %tobool681 = icmp ne i32 %call680, 0
  br i1 %tobool681, label %if.then.682, label %if.else.714

if.then.682:                                      ; preds = %if.end.671
  %548 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr683 = getelementptr inbounds %struct.scheme, %struct.scheme* %548, i32 0, i32 58
  %549 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr683, align 8
  %ivalue684 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %549, i32 0, i32 21
  %550 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue684, align 8
  %551 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr685 = getelementptr inbounds %struct.scheme, %struct.scheme* %551, i32 0, i32 58
  %552 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr685, align 8
  %pair_car686 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %552, i32 0, i32 36
  %553 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car686, align 8
  %554 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call687 = call %struct.cell* %553(%struct.cell* %554)
  %call688 = call i64 %550(%struct.cell* %call687)
  %cmp689 = icmp sgt i64 %call688, 255
  br i1 %cmp689, label %cond.true.691, label %cond.false.692

cond.true.691:                                    ; preds = %if.then.682
  br label %cond.end.711

cond.false.692:                                   ; preds = %if.then.682
  %555 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr693 = getelementptr inbounds %struct.scheme, %struct.scheme* %555, i32 0, i32 58
  %556 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr693, align 8
  %ivalue694 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %556, i32 0, i32 21
  %557 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue694, align 8
  %558 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr695 = getelementptr inbounds %struct.scheme, %struct.scheme* %558, i32 0, i32 58
  %559 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr695, align 8
  %pair_car696 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %559, i32 0, i32 36
  %560 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car696, align 8
  %561 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call697 = call %struct.cell* %560(%struct.cell* %561)
  %call698 = call i64 %557(%struct.cell* %call697)
  %cmp699 = icmp slt i64 %call698, 0
  br i1 %cmp699, label %cond.true.701, label %cond.false.702

cond.true.701:                                    ; preds = %cond.false.692
  br label %cond.end.709

cond.false.702:                                   ; preds = %cond.false.692
  %562 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr703 = getelementptr inbounds %struct.scheme, %struct.scheme* %562, i32 0, i32 58
  %563 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr703, align 8
  %ivalue704 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %563, i32 0, i32 21
  %564 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue704, align 8
  %565 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr705 = getelementptr inbounds %struct.scheme, %struct.scheme* %565, i32 0, i32 58
  %566 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr705, align 8
  %pair_car706 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %566, i32 0, i32 36
  %567 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car706, align 8
  %568 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call707 = call %struct.cell* %567(%struct.cell* %568)
  %call708 = call i64 %564(%struct.cell* %call707)
  br label %cond.end.709

cond.end.709:                                     ; preds = %cond.false.702, %cond.true.701
  %cond710 = phi i64 [ 0, %cond.true.701 ], [ %call708, %cond.false.702 ]
  br label %cond.end.711

cond.end.711:                                     ; preds = %cond.end.709, %cond.true.691
  %cond712 = phi i64 [ 255, %cond.true.691 ], [ %cond710, %cond.end.709 ]
  %conv713 = trunc i64 %cond712 to i8
  store i8 %conv713, i8* %b, align 1
  br label %if.end.715

if.else.714:                                      ; preds = %if.end.671
  store i32 0, i32* %success, align 4
  br label %if.end.715

if.end.715:                                       ; preds = %if.else.714, %cond.end.711
  %569 = load i32, i32* %success, align 4
  %tobool716 = icmp ne i32 %569, 0
  br i1 %tobool716, label %if.then.717, label %if.end.722

if.then.717:                                      ; preds = %if.end.715
  %570 = load i32, i32* %i, align 4
  %idxprom718 = sext i32 %570 to i64
  %571 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx719 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %571, i64 %idxprom718
  %data720 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx719, i32 0, i32 1
  %d_color721 = bitcast %union._GimpParamData* %data720 to %struct._GimpRGB*
  %572 = load i8, i8* %r, align 1
  %573 = load i8, i8* %g, align 1
  %574 = load i8, i8* %b, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %d_color721, i8 zeroext %572, i8 zeroext %573, i8 zeroext %574, i8 zeroext -1)
  br label %if.end.722

if.end.722:                                       ; preds = %if.then.717, %if.end.715
  br label %if.end.724

if.else.723:                                      ; preds = %land.lhs.true, %if.else.571
  store i32 0, i32* %success, align 4
  br label %if.end.724

if.end.724:                                       ; preds = %if.else.723, %if.end.722
  br label %if.end.725

if.end.725:                                       ; preds = %if.end.724, %if.end.566
  br label %sw.epilog

sw.bb.726:                                        ; preds = %for.body.57
  %575 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr727 = getelementptr inbounds %struct.scheme, %struct.scheme* %575, i32 0, i32 58
  %576 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr727, align 8
  %pair_car728 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %576, i32 0, i32 36
  %577 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car728, align 8
  %578 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call729 = call %struct.cell* %577(%struct.cell* %578)
  store %struct.cell* %call729, %struct.cell** %vector, align 8
  %579 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr730 = getelementptr inbounds %struct.scheme, %struct.scheme* %579, i32 0, i32 58
  %580 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr730, align 8
  %is_vector731 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %580, i32 0, i32 28
  %581 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_vector731, align 8
  %582 = load %struct.cell*, %struct.cell** %vector, align 8
  %call732 = call i32 %581(%struct.cell* %582)
  %tobool733 = icmp ne i32 %call732, 0
  br i1 %tobool733, label %if.end.735, label %if.then.734

if.then.734:                                      ; preds = %sw.bb.726
  store i32 0, i32* %success, align 4
  br label %if.end.735

if.end.735:                                       ; preds = %if.then.734, %sw.bb.726
  %583 = load i32, i32* %success, align 4
  %tobool736 = icmp ne i32 %583, 0
  br i1 %tobool736, label %if.then.737, label %if.end.914

if.then.737:                                      ; preds = %if.end.735
  %584 = load i32, i32* %i, align 4
  %sub738 = sub nsw i32 %584, 1
  %idxprom739 = sext i32 %sub738 to i64
  %585 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx740 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %585, i64 %idxprom739
  %data741 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx740, i32 0, i32 1
  %d_int32742 = bitcast %union._GimpParamData* %data741 to i32*
  %586 = load i32, i32* %d_int32742, align 4
  store i32 %586, i32* %n_elements, align 4
  %587 = load i32, i32* %n_elements, align 4
  %cmp743 = icmp slt i32 %587, 0
  br i1 %cmp743, label %if.then.752, label %lor.lhs.false.745

lor.lhs.false.745:                                ; preds = %if.then.737
  %588 = load i32, i32* %n_elements, align 4
  %conv746 = sext i32 %588 to i64
  %589 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr747 = getelementptr inbounds %struct.scheme, %struct.scheme* %589, i32 0, i32 58
  %590 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr747, align 8
  %vector_length748 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %590, i32 0, i32 30
  %591 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length748, align 8
  %592 = load %struct.cell*, %struct.cell** %vector, align 8
  %call749 = call i64 %591(%struct.cell* %592)
  %cmp750 = icmp sgt i64 %conv746, %call749
  br i1 %cmp750, label %if.then.752, label %if.end.761

if.then.752:                                      ; preds = %lor.lhs.false.745, %if.then.737
  %arraydecay753 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %593 = load i32, i32* %i, align 4
  %add754 = add nsw i32 %593, 1
  %594 = load i8*, i8** %proc_name, align 8
  %595 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr755 = getelementptr inbounds %struct.scheme, %struct.scheme* %595, i32 0, i32 58
  %596 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr755, align 8
  %vector_length756 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %596, i32 0, i32 30
  %597 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %vector_length756, align 8
  %598 = load %struct.cell*, %struct.cell** %vector, align 8
  %call757 = call i64 %597(%struct.cell* %598)
  %599 = load i32, i32* %n_elements, align 4
  %call758 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay753, i64 1024, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.134, i32 0, i32 0), i32 %add754, i8* %594, i64 %call757, i32 %599)
  %600 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay759 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call760 = call %struct.cell* @foreign_error(%struct.scheme* %600, i8* %arraydecay759, %struct.cell* null)
  store %struct.cell* %call760, %struct.cell** %retval
  br label %return

if.end.761:                                       ; preds = %lor.lhs.false.745
  %601 = load i32, i32* %n_elements, align 4
  %conv762 = sext i32 %601 to i64
  %call763 = call noalias i8* @g_malloc_n(i64 %conv762, i64 32)
  %602 = bitcast i8* %call763 to %struct._GimpRGB*
  %603 = load i32, i32* %i, align 4
  %idxprom764 = sext i32 %603 to i64
  %604 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx765 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %604, i64 %idxprom764
  %data766 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx765, i32 0, i32 1
  %d_colorarray = bitcast %union._GimpParamData* %data766 to %struct._GimpRGB**
  store %struct._GimpRGB* %602, %struct._GimpRGB** %d_colorarray, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.767

for.cond.767:                                     ; preds = %for.inc.911, %if.end.761
  %605 = load i32, i32* %j, align 4
  %606 = load i32, i32* %n_elements, align 4
  %cmp768 = icmp slt i32 %605, %606
  br i1 %cmp768, label %for.body.770, label %for.end.913

for.body.770:                                     ; preds = %for.cond.767
  %607 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr772 = getelementptr inbounds %struct.scheme, %struct.scheme* %607, i32 0, i32 58
  %608 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr772, align 8
  %vector_elem773 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %608, i32 0, i32 32
  %609 = load %struct.cell* (%struct.cell*, i32)*, %struct.cell* (%struct.cell*, i32)** %vector_elem773, align 8
  %610 = load %struct.cell*, %struct.cell** %vector, align 8
  %611 = load i32, i32* %j, align 4
  %call774 = call %struct.cell* %609(%struct.cell* %610, i32 %611)
  store %struct.cell* %call774, %struct.cell** %v_element771, align 8
  %612 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr779 = getelementptr inbounds %struct.scheme, %struct.scheme* %612, i32 0, i32 58
  %613 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr779, align 8
  %is_list780 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %613, i32 0, i32 27
  %614 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %is_list780, align 8
  %615 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %616 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr781 = getelementptr inbounds %struct.scheme, %struct.scheme* %616, i32 0, i32 58
  %617 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr781, align 8
  %pair_car782 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %617, i32 0, i32 36
  %618 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car782, align 8
  %619 = load %struct.cell*, %struct.cell** %v_element771, align 8
  %call783 = call %struct.cell* %618(%struct.cell* %619)
  %call784 = call i32 %614(%struct.scheme* %615, %struct.cell* %call783)
  %tobool785 = icmp ne i32 %call784, 0
  br i1 %tobool785, label %land.lhs.true.786, label %if.then.795

land.lhs.true.786:                                ; preds = %for.body.770
  %620 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr787 = getelementptr inbounds %struct.scheme, %struct.scheme* %620, i32 0, i32 58
  %621 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr787, align 8
  %list_length788 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %621, i32 0, i32 29
  %622 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length788, align 8
  %623 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %624 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr789 = getelementptr inbounds %struct.scheme, %struct.scheme* %624, i32 0, i32 58
  %625 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr789, align 8
  %pair_car790 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %625, i32 0, i32 36
  %626 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car790, align 8
  %627 = load %struct.cell*, %struct.cell** %v_element771, align 8
  %call791 = call %struct.cell* %626(%struct.cell* %627)
  %call792 = call i32 %622(%struct.scheme* %623, %struct.cell* %call791)
  %cmp793 = icmp eq i32 %call792, 3
  br i1 %cmp793, label %if.end.802, label %if.then.795

if.then.795:                                      ; preds = %land.lhs.true.786, %for.body.770
  %arraydecay796 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %628 = load i32, i32* %j, align 4
  %add797 = add nsw i32 %628, 1
  %629 = load i32, i32* %i, align 4
  %add798 = add nsw i32 %629, 1
  %630 = load i8*, i8** %proc_name, align 8
  %call799 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay796, i64 1024, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.135, i32 0, i32 0), i32 %add797, i32 %add798, i8* %630)
  %631 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay800 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %632 = load %struct.cell*, %struct.cell** %vector, align 8
  %call801 = call %struct.cell* @foreign_error(%struct.scheme* %631, i8* %arraydecay800, %struct.cell* %632)
  store %struct.cell* %call801, %struct.cell** %retval
  br label %return

if.end.802:                                       ; preds = %land.lhs.true.786
  %633 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr803 = getelementptr inbounds %struct.scheme, %struct.scheme* %633, i32 0, i32 58
  %634 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr803, align 8
  %pair_car804 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %634, i32 0, i32 36
  %635 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car804, align 8
  %636 = load %struct.cell*, %struct.cell** %v_element771, align 8
  %call805 = call %struct.cell* %635(%struct.cell* %636)
  store %struct.cell* %call805, %struct.cell** %color_list775, align 8
  %637 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr806 = getelementptr inbounds %struct.scheme, %struct.scheme* %637, i32 0, i32 58
  %638 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr806, align 8
  %ivalue807 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %638, i32 0, i32 21
  %639 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue807, align 8
  %640 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr808 = getelementptr inbounds %struct.scheme, %struct.scheme* %640, i32 0, i32 58
  %641 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr808, align 8
  %pair_car809 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %641, i32 0, i32 36
  %642 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car809, align 8
  %643 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call810 = call %struct.cell* %642(%struct.cell* %643)
  %call811 = call i64 %639(%struct.cell* %call810)
  %cmp812 = icmp sgt i64 %call811, 255
  br i1 %cmp812, label %cond.true.814, label %cond.false.815

cond.true.814:                                    ; preds = %if.end.802
  br label %cond.end.834

cond.false.815:                                   ; preds = %if.end.802
  %644 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr816 = getelementptr inbounds %struct.scheme, %struct.scheme* %644, i32 0, i32 58
  %645 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr816, align 8
  %ivalue817 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %645, i32 0, i32 21
  %646 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue817, align 8
  %647 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr818 = getelementptr inbounds %struct.scheme, %struct.scheme* %647, i32 0, i32 58
  %648 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr818, align 8
  %pair_car819 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %648, i32 0, i32 36
  %649 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car819, align 8
  %650 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call820 = call %struct.cell* %649(%struct.cell* %650)
  %call821 = call i64 %646(%struct.cell* %call820)
  %cmp822 = icmp slt i64 %call821, 0
  br i1 %cmp822, label %cond.true.824, label %cond.false.825

cond.true.824:                                    ; preds = %cond.false.815
  br label %cond.end.832

cond.false.825:                                   ; preds = %cond.false.815
  %651 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr826 = getelementptr inbounds %struct.scheme, %struct.scheme* %651, i32 0, i32 58
  %652 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr826, align 8
  %ivalue827 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %652, i32 0, i32 21
  %653 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue827, align 8
  %654 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr828 = getelementptr inbounds %struct.scheme, %struct.scheme* %654, i32 0, i32 58
  %655 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr828, align 8
  %pair_car829 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %655, i32 0, i32 36
  %656 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car829, align 8
  %657 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call830 = call %struct.cell* %656(%struct.cell* %657)
  %call831 = call i64 %653(%struct.cell* %call830)
  br label %cond.end.832

cond.end.832:                                     ; preds = %cond.false.825, %cond.true.824
  %cond833 = phi i64 [ 0, %cond.true.824 ], [ %call831, %cond.false.825 ]
  br label %cond.end.834

cond.end.834:                                     ; preds = %cond.end.832, %cond.true.814
  %cond835 = phi i64 [ 255, %cond.true.814 ], [ %cond833, %cond.end.832 ]
  %conv836 = trunc i64 %cond835 to i8
  store i8 %conv836, i8* %r776, align 1
  %658 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr837 = getelementptr inbounds %struct.scheme, %struct.scheme* %658, i32 0, i32 58
  %659 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr837, align 8
  %pair_cdr838 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %659, i32 0, i32 37
  %660 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr838, align 8
  %661 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call839 = call %struct.cell* %660(%struct.cell* %661)
  store %struct.cell* %call839, %struct.cell** %color_list775, align 8
  %662 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr840 = getelementptr inbounds %struct.scheme, %struct.scheme* %662, i32 0, i32 58
  %663 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr840, align 8
  %ivalue841 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %663, i32 0, i32 21
  %664 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue841, align 8
  %665 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr842 = getelementptr inbounds %struct.scheme, %struct.scheme* %665, i32 0, i32 58
  %666 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr842, align 8
  %pair_car843 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %666, i32 0, i32 36
  %667 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car843, align 8
  %668 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call844 = call %struct.cell* %667(%struct.cell* %668)
  %call845 = call i64 %664(%struct.cell* %call844)
  %cmp846 = icmp sgt i64 %call845, 255
  br i1 %cmp846, label %cond.true.848, label %cond.false.849

cond.true.848:                                    ; preds = %cond.end.834
  br label %cond.end.868

cond.false.849:                                   ; preds = %cond.end.834
  %669 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr850 = getelementptr inbounds %struct.scheme, %struct.scheme* %669, i32 0, i32 58
  %670 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr850, align 8
  %ivalue851 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %670, i32 0, i32 21
  %671 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue851, align 8
  %672 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr852 = getelementptr inbounds %struct.scheme, %struct.scheme* %672, i32 0, i32 58
  %673 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr852, align 8
  %pair_car853 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %673, i32 0, i32 36
  %674 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car853, align 8
  %675 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call854 = call %struct.cell* %674(%struct.cell* %675)
  %call855 = call i64 %671(%struct.cell* %call854)
  %cmp856 = icmp slt i64 %call855, 0
  br i1 %cmp856, label %cond.true.858, label %cond.false.859

cond.true.858:                                    ; preds = %cond.false.849
  br label %cond.end.866

cond.false.859:                                   ; preds = %cond.false.849
  %676 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr860 = getelementptr inbounds %struct.scheme, %struct.scheme* %676, i32 0, i32 58
  %677 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr860, align 8
  %ivalue861 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %677, i32 0, i32 21
  %678 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue861, align 8
  %679 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr862 = getelementptr inbounds %struct.scheme, %struct.scheme* %679, i32 0, i32 58
  %680 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr862, align 8
  %pair_car863 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %680, i32 0, i32 36
  %681 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car863, align 8
  %682 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call864 = call %struct.cell* %681(%struct.cell* %682)
  %call865 = call i64 %678(%struct.cell* %call864)
  br label %cond.end.866

cond.end.866:                                     ; preds = %cond.false.859, %cond.true.858
  %cond867 = phi i64 [ 0, %cond.true.858 ], [ %call865, %cond.false.859 ]
  br label %cond.end.868

cond.end.868:                                     ; preds = %cond.end.866, %cond.true.848
  %cond869 = phi i64 [ 255, %cond.true.848 ], [ %cond867, %cond.end.866 ]
  %conv870 = trunc i64 %cond869 to i8
  store i8 %conv870, i8* %g777, align 1
  %683 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr871 = getelementptr inbounds %struct.scheme, %struct.scheme* %683, i32 0, i32 58
  %684 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr871, align 8
  %pair_cdr872 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %684, i32 0, i32 37
  %685 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr872, align 8
  %686 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call873 = call %struct.cell* %685(%struct.cell* %686)
  store %struct.cell* %call873, %struct.cell** %color_list775, align 8
  %687 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr874 = getelementptr inbounds %struct.scheme, %struct.scheme* %687, i32 0, i32 58
  %688 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr874, align 8
  %ivalue875 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %688, i32 0, i32 21
  %689 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue875, align 8
  %690 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr876 = getelementptr inbounds %struct.scheme, %struct.scheme* %690, i32 0, i32 58
  %691 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr876, align 8
  %pair_car877 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %691, i32 0, i32 36
  %692 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car877, align 8
  %693 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call878 = call %struct.cell* %692(%struct.cell* %693)
  %call879 = call i64 %689(%struct.cell* %call878)
  %cmp880 = icmp sgt i64 %call879, 255
  br i1 %cmp880, label %cond.true.882, label %cond.false.883

cond.true.882:                                    ; preds = %cond.end.868
  br label %cond.end.902

cond.false.883:                                   ; preds = %cond.end.868
  %694 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr884 = getelementptr inbounds %struct.scheme, %struct.scheme* %694, i32 0, i32 58
  %695 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr884, align 8
  %ivalue885 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %695, i32 0, i32 21
  %696 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue885, align 8
  %697 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr886 = getelementptr inbounds %struct.scheme, %struct.scheme* %697, i32 0, i32 58
  %698 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr886, align 8
  %pair_car887 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %698, i32 0, i32 36
  %699 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car887, align 8
  %700 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call888 = call %struct.cell* %699(%struct.cell* %700)
  %call889 = call i64 %696(%struct.cell* %call888)
  %cmp890 = icmp slt i64 %call889, 0
  br i1 %cmp890, label %cond.true.892, label %cond.false.893

cond.true.892:                                    ; preds = %cond.false.883
  br label %cond.end.900

cond.false.893:                                   ; preds = %cond.false.883
  %701 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr894 = getelementptr inbounds %struct.scheme, %struct.scheme* %701, i32 0, i32 58
  %702 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr894, align 8
  %ivalue895 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %702, i32 0, i32 21
  %703 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue895, align 8
  %704 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr896 = getelementptr inbounds %struct.scheme, %struct.scheme* %704, i32 0, i32 58
  %705 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr896, align 8
  %pair_car897 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %705, i32 0, i32 36
  %706 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car897, align 8
  %707 = load %struct.cell*, %struct.cell** %color_list775, align 8
  %call898 = call %struct.cell* %706(%struct.cell* %707)
  %call899 = call i64 %703(%struct.cell* %call898)
  br label %cond.end.900

cond.end.900:                                     ; preds = %cond.false.893, %cond.true.892
  %cond901 = phi i64 [ 0, %cond.true.892 ], [ %call899, %cond.false.893 ]
  br label %cond.end.902

cond.end.902:                                     ; preds = %cond.end.900, %cond.true.882
  %cond903 = phi i64 [ 255, %cond.true.882 ], [ %cond901, %cond.end.900 ]
  %conv904 = trunc i64 %cond903 to i8
  store i8 %conv904, i8* %b778, align 1
  %708 = load i32, i32* %j, align 4
  %idxprom905 = sext i32 %708 to i64
  %709 = load i32, i32* %i, align 4
  %idxprom906 = sext i32 %709 to i64
  %710 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx907 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %710, i64 %idxprom906
  %data908 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx907, i32 0, i32 1
  %d_colorarray909 = bitcast %union._GimpParamData* %data908 to %struct._GimpRGB**
  %711 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray909, align 8
  %arrayidx910 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %711, i64 %idxprom905
  %712 = load i8, i8* %r776, align 1
  %713 = load i8, i8* %g777, align 1
  %714 = load i8, i8* %b778, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %arrayidx910, i8 zeroext %712, i8 zeroext %713, i8 zeroext %714, i8 zeroext -1)
  br label %for.inc.911

for.inc.911:                                      ; preds = %cond.end.902
  %715 = load i32, i32* %j, align 4
  %inc912 = add nsw i32 %715, 1
  store i32 %inc912, i32* %j, align 4
  br label %for.cond.767

for.end.913:                                      ; preds = %for.cond.767
  br label %if.end.914

if.end.914:                                       ; preds = %for.end.913, %if.end.735
  br label %sw.epilog

sw.bb.915:                                        ; preds = %for.body.57
  %716 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr916 = getelementptr inbounds %struct.scheme, %struct.scheme* %716, i32 0, i32 58
  %717 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr916, align 8
  %is_list917 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %717, i32 0, i32 27
  %718 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %is_list917, align 8
  %719 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %720 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr918 = getelementptr inbounds %struct.scheme, %struct.scheme* %720, i32 0, i32 58
  %721 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr918, align 8
  %pair_car919 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %721, i32 0, i32 36
  %722 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car919, align 8
  %723 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call920 = call %struct.cell* %722(%struct.cell* %723)
  %call921 = call i32 %718(%struct.scheme* %719, %struct.cell* %call920)
  %tobool922 = icmp ne i32 %call921, 0
  br i1 %tobool922, label %lor.lhs.false.923, label %if.then.932

lor.lhs.false.923:                                ; preds = %sw.bb.915
  %724 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr924 = getelementptr inbounds %struct.scheme, %struct.scheme* %724, i32 0, i32 58
  %725 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr924, align 8
  %list_length925 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %725, i32 0, i32 29
  %726 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length925, align 8
  %727 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %728 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr926 = getelementptr inbounds %struct.scheme, %struct.scheme* %728, i32 0, i32 58
  %729 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr926, align 8
  %pair_car927 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %729, i32 0, i32 36
  %730 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car927, align 8
  %731 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call928 = call %struct.cell* %730(%struct.cell* %731)
  %call929 = call i32 %726(%struct.scheme* %727, %struct.cell* %call928)
  %cmp930 = icmp ne i32 %call929, 3
  br i1 %cmp930, label %if.then.932, label %if.end.933

if.then.932:                                      ; preds = %lor.lhs.false.923, %sw.bb.915
  store i32 0, i32* %success, align 4
  br label %if.end.933

if.end.933:                                       ; preds = %if.then.932, %lor.lhs.false.923
  %732 = load i32, i32* %success, align 4
  %tobool934 = icmp ne i32 %732, 0
  br i1 %tobool934, label %if.then.935, label %if.end.1015

if.then.935:                                      ; preds = %if.end.933
  %733 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr936 = getelementptr inbounds %struct.scheme, %struct.scheme* %733, i32 0, i32 58
  %734 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr936, align 8
  %pair_car937 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %734, i32 0, i32 36
  %735 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car937, align 8
  %736 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call938 = call %struct.cell* %735(%struct.cell* %736)
  store %struct.cell* %call938, %struct.cell** %temp_val, align 8
  %737 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr939 = getelementptr inbounds %struct.scheme, %struct.scheme* %737, i32 0, i32 58
  %738 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr939, align 8
  %is_string940 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %738, i32 0, i32 16
  %739 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string940, align 8
  %740 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr941 = getelementptr inbounds %struct.scheme, %struct.scheme* %740, i32 0, i32 58
  %741 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr941, align 8
  %pair_car942 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %741, i32 0, i32 36
  %742 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car942, align 8
  %743 = load %struct.cell*, %struct.cell** %temp_val, align 8
  %call943 = call %struct.cell* %742(%struct.cell* %743)
  %call944 = call i32 %739(%struct.cell* %call943)
  %tobool945 = icmp ne i32 %call944, 0
  br i1 %tobool945, label %if.end.947, label %if.then.946

if.then.946:                                      ; preds = %if.then.935
  store i32 0, i32* %success, align 4
  br label %sw.epilog

if.end.947:                                       ; preds = %if.then.935
  %744 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr948 = getelementptr inbounds %struct.scheme, %struct.scheme* %744, i32 0, i32 58
  %745 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr948, align 8
  %string_value949 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %745, i32 0, i32 18
  %746 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value949, align 8
  %747 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr950 = getelementptr inbounds %struct.scheme, %struct.scheme* %747, i32 0, i32 58
  %748 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr950, align 8
  %pair_car951 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %748, i32 0, i32 36
  %749 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car951, align 8
  %750 = load %struct.cell*, %struct.cell** %temp_val, align 8
  %call952 = call %struct.cell* %749(%struct.cell* %750)
  %call953 = call i8* %746(%struct.cell* %call952)
  %751 = load i32, i32* %i, align 4
  %idxprom954 = sext i32 %751 to i64
  %752 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx955 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %752, i64 %idxprom954
  %data956 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx955, i32 0, i32 1
  %d_parasite = bitcast %union._GimpParamData* %data956 to %struct._GimpParasite*
  %name957 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite, i32 0, i32 0
  store i8* %call953, i8** %name957, align 8
  %753 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr958 = getelementptr inbounds %struct.scheme, %struct.scheme* %753, i32 0, i32 58
  %754 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr958, align 8
  %pair_cdr959 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %754, i32 0, i32 37
  %755 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr959, align 8
  %756 = load %struct.cell*, %struct.cell** %temp_val, align 8
  %call960 = call %struct.cell* %755(%struct.cell* %756)
  store %struct.cell* %call960, %struct.cell** %temp_val, align 8
  %757 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr961 = getelementptr inbounds %struct.scheme, %struct.scheme* %757, i32 0, i32 58
  %758 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr961, align 8
  %is_number962 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %758, i32 0, i32 19
  %759 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_number962, align 8
  %760 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr963 = getelementptr inbounds %struct.scheme, %struct.scheme* %760, i32 0, i32 58
  %761 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr963, align 8
  %pair_car964 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %761, i32 0, i32 36
  %762 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car964, align 8
  %763 = load %struct.cell*, %struct.cell** %temp_val, align 8
  %call965 = call %struct.cell* %762(%struct.cell* %763)
  %call966 = call i32 %759(%struct.cell* %call965)
  %tobool967 = icmp ne i32 %call966, 0
  br i1 %tobool967, label %if.end.969, label %if.then.968

if.then.968:                                      ; preds = %if.end.947
  store i32 0, i32* %success, align 4
  br label %sw.epilog

if.end.969:                                       ; preds = %if.end.947
  %764 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr970 = getelementptr inbounds %struct.scheme, %struct.scheme* %764, i32 0, i32 58
  %765 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr970, align 8
  %ivalue971 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %765, i32 0, i32 21
  %766 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue971, align 8
  %767 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr972 = getelementptr inbounds %struct.scheme, %struct.scheme* %767, i32 0, i32 58
  %768 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr972, align 8
  %pair_car973 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %768, i32 0, i32 36
  %769 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car973, align 8
  %770 = load %struct.cell*, %struct.cell** %temp_val, align 8
  %call974 = call %struct.cell* %769(%struct.cell* %770)
  %call975 = call i64 %766(%struct.cell* %call974)
  %conv976 = trunc i64 %call975 to i32
  %771 = load i32, i32* %i, align 4
  %idxprom977 = sext i32 %771 to i64
  %772 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx978 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %772, i64 %idxprom977
  %data979 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx978, i32 0, i32 1
  %d_parasite980 = bitcast %union._GimpParamData* %data979 to %struct._GimpParasite*
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite980, i32 0, i32 1
  store i32 %conv976, i32* %flags, align 4
  %773 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr981 = getelementptr inbounds %struct.scheme, %struct.scheme* %773, i32 0, i32 58
  %774 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr981, align 8
  %pair_cdr982 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %774, i32 0, i32 37
  %775 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr982, align 8
  %776 = load %struct.cell*, %struct.cell** %temp_val, align 8
  %call983 = call %struct.cell* %775(%struct.cell* %776)
  store %struct.cell* %call983, %struct.cell** %temp_val, align 8
  %777 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr984 = getelementptr inbounds %struct.scheme, %struct.scheme* %777, i32 0, i32 58
  %778 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr984, align 8
  %is_string985 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %778, i32 0, i32 16
  %779 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string985, align 8
  %780 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr986 = getelementptr inbounds %struct.scheme, %struct.scheme* %780, i32 0, i32 58
  %781 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr986, align 8
  %pair_car987 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %781, i32 0, i32 36
  %782 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car987, align 8
  %783 = load %struct.cell*, %struct.cell** %temp_val, align 8
  %call988 = call %struct.cell* %782(%struct.cell* %783)
  %call989 = call i32 %779(%struct.cell* %call988)
  %tobool990 = icmp ne i32 %call989, 0
  br i1 %tobool990, label %if.end.992, label %if.then.991

if.then.991:                                      ; preds = %if.end.969
  store i32 0, i32* %success, align 4
  br label %sw.epilog

if.end.992:                                       ; preds = %if.end.969
  %784 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr993 = getelementptr inbounds %struct.scheme, %struct.scheme* %784, i32 0, i32 58
  %785 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr993, align 8
  %string_value994 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %785, i32 0, i32 18
  %786 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value994, align 8
  %787 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr995 = getelementptr inbounds %struct.scheme, %struct.scheme* %787, i32 0, i32 58
  %788 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr995, align 8
  %pair_car996 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %788, i32 0, i32 36
  %789 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car996, align 8
  %790 = load %struct.cell*, %struct.cell** %temp_val, align 8
  %call997 = call %struct.cell* %789(%struct.cell* %790)
  %call998 = call i8* %786(%struct.cell* %call997)
  %791 = load i32, i32* %i, align 4
  %idxprom999 = sext i32 %791 to i64
  %792 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx1000 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %792, i64 %idxprom999
  %data1001 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1000, i32 0, i32 1
  %d_parasite1002 = bitcast %union._GimpParamData* %data1001 to %struct._GimpParasite*
  %data1003 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite1002, i32 0, i32 3
  store i8* %call998, i8** %data1003, align 8
  %793 = load i32, i32* %i, align 4
  %idxprom1004 = sext i32 %793 to i64
  %794 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx1005 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %794, i64 %idxprom1004
  %data1006 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1005, i32 0, i32 1
  %d_parasite1007 = bitcast %union._GimpParamData* %data1006 to %struct._GimpParasite*
  %data1008 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite1007, i32 0, i32 3
  %795 = load i8*, i8** %data1008, align 8
  %call1009 = call i64 @strlen(i8* %795) #5
  %conv1010 = trunc i64 %call1009 to i32
  %796 = load i32, i32* %i, align 4
  %idxprom1011 = sext i32 %796 to i64
  %797 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %arrayidx1012 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %797, i64 %idxprom1011
  %data1013 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1012, i32 0, i32 1
  %d_parasite1014 = bitcast %union._GimpParamData* %data1013 to %struct._GimpParasite*
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite1014, i32 0, i32 2
  store i32 %conv1010, i32* %size, align 4
  br label %if.end.1015

if.end.1015:                                      ; preds = %if.end.992, %if.end.933
  br label %sw.epilog

sw.bb.1016:                                       ; preds = %for.body.57
  %798 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %799 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1017 = getelementptr inbounds %struct.scheme, %struct.scheme* %799, i32 0, i32 58
  %800 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1017, align 8
  %pair_car1018 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %800, i32 0, i32 36
  %801 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car1018, align 8
  %802 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call1019 = call %struct.cell* %801(%struct.cell* %802)
  %call1020 = call %struct.cell* @foreign_error(%struct.scheme* %798, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.136, i32 0, i32 0), %struct.cell* %call1019)
  store %struct.cell* %call1020, %struct.cell** %retval
  br label %return

sw.default:                                       ; preds = %for.body.57
  %arraydecay1021 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %803 = load i32, i32* %i, align 4
  %add1022 = add nsw i32 %803, 1
  %804 = load i8*, i8** %proc_name, align 8
  %call1023 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay1021, i64 1024, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.137, i32 0, i32 0), i32 %add1022, i8* %804)
  %805 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay1024 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call1025 = call %struct.cell* @foreign_error(%struct.scheme* %805, i8* %arraydecay1024, %struct.cell* null)
  store %struct.cell* %call1025, %struct.cell** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.1015, %if.then.991, %if.then.968, %if.then.946, %if.end.914, %if.end.725, %if.end.544, %if.end.469, %if.end.393, %if.end.318, %if.end.243, %if.end.174, %if.end.153, %if.end.132, %if.end.109, %if.end.86
  %806 = load i32, i32* %success, align 4
  %tobool1026 = icmp ne i32 %806, 0
  br i1 %tobool1026, label %if.end.1028, label %if.then.1027

if.then.1027:                                     ; preds = %sw.epilog
  br label %for.end.1031

if.end.1028:                                      ; preds = %sw.epilog
  br label %for.inc.1029

for.inc.1029:                                     ; preds = %if.end.1028
  %807 = load i32, i32* %i, align 4
  %inc1030 = add nsw i32 %807, 1
  store i32 %inc1030, i32* %i, align 4
  br label %for.cond.54

for.end.1031:                                     ; preds = %if.then.1027, %for.cond.54
  %808 = load i32, i32* %success, align 4
  %tobool1032 = icmp ne i32 %808, 0
  br i1 %tobool1032, label %if.then.1033, label %if.else.1035

if.then.1033:                                     ; preds = %for.end.1031
  %809 = load i8*, i8** %proc_name, align 8
  %810 = load i32, i32* %nparams, align 4
  %811 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %call1034 = call %struct._GimpParam* @gimp_run_procedure2(i8* %809, i32* %nvalues, i32 %810, %struct._GimpParam* %811)
  store %struct._GimpParam* %call1034, %struct._GimpParam** %values, align 8
  br label %if.end.1041

if.else.1035:                                     ; preds = %for.end.1031
  %arraydecay1036 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %812 = load i32, i32* %i, align 4
  %add1037 = add nsw i32 %812, 1
  %813 = load i8*, i8** %proc_name, align 8
  %call1038 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay1036, i64 1024, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.138, i32 0, i32 0), i32 %add1037, i8* %813)
  %814 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay1039 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call1040 = call %struct.cell* @foreign_error(%struct.scheme* %814, i8* %arraydecay1039, %struct.cell* null)
  store %struct.cell* %call1040, %struct.cell** %retval
  br label %return

if.end.1041:                                      ; preds = %if.then.1033
  %815 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %tobool1042 = icmp ne %struct._GimpParam* %815, null
  br i1 %tobool1042, label %if.end.1048, label %if.then.1043

if.then.1043:                                     ; preds = %if.end.1041
  %arraydecay1044 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %816 = load i8*, i8** %proc_name, align 8
  %call1045 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay1044, i64 1024, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.139, i32 0, i32 0), i8* %816)
  %817 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay1046 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call1047 = call %struct.cell* @foreign_error(%struct.scheme* %817, i8* %arraydecay1046, %struct.cell* null)
  store %struct.cell* %call1047, %struct.cell** %retval
  br label %return

if.end.1048:                                      ; preds = %if.end.1041
  %818 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1049 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %818, i64 0
  %data1050 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1049, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data1050 to i32*
  %819 = load i32, i32* %d_status, align 4
  switch i32 %819, label %sw.epilog.1484 [
    i32 0, label %sw.bb.1051
    i32 1, label %sw.bb.1071
    i32 3, label %sw.bb.1091
    i32 2, label %sw.bb.1483
    i32 4, label %sw.bb.1483
  ]

sw.bb.1051:                                       ; preds = %if.end.1048
  %820 = load i32, i32* %nvalues, align 4
  %cmp1052 = icmp sgt i32 %820, 1
  br i1 %cmp1052, label %land.lhs.true.1054, label %if.else.1065

land.lhs.true.1054:                               ; preds = %sw.bb.1051
  %821 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1055 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %821, i64 1
  %type1056 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1055, i32 0, i32 0
  %822 = load i32, i32* %type1056, align 4
  %cmp1057 = icmp eq i32 %822, 4
  br i1 %cmp1057, label %if.then.1059, label %if.else.1065

if.then.1059:                                     ; preds = %land.lhs.true.1054
  %arraydecay1060 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %823 = load i8*, i8** %proc_name, align 8
  %824 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1061 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %824, i64 1
  %data1062 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1061, i32 0, i32 1
  %d_string1063 = bitcast %union._GimpParamData* %data1062 to i8**
  %825 = load i8*, i8** %d_string1063, align 8
  %call1064 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay1060, i64 1024, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.140, i32 0, i32 0), i8* %823, i8* %825)
  br label %if.end.1068

if.else.1065:                                     ; preds = %land.lhs.true.1054, %sw.bb.1051
  %arraydecay1066 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %826 = load i8*, i8** %proc_name, align 8
  %call1067 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay1066, i64 1024, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.141, i32 0, i32 0), i8* %826)
  br label %if.end.1068

if.end.1068:                                      ; preds = %if.else.1065, %if.then.1059
  %827 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay1069 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call1070 = call %struct.cell* @foreign_error(%struct.scheme* %827, i8* %arraydecay1069, %struct.cell* null)
  store %struct.cell* %call1070, %struct.cell** %retval
  br label %return

sw.bb.1071:                                       ; preds = %if.end.1048
  %828 = load i32, i32* %nvalues, align 4
  %cmp1072 = icmp sgt i32 %828, 1
  br i1 %cmp1072, label %land.lhs.true.1074, label %if.else.1085

land.lhs.true.1074:                               ; preds = %sw.bb.1071
  %829 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1075 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %829, i64 1
  %type1076 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1075, i32 0, i32 0
  %830 = load i32, i32* %type1076, align 4
  %cmp1077 = icmp eq i32 %830, 4
  br i1 %cmp1077, label %if.then.1079, label %if.else.1085

if.then.1079:                                     ; preds = %land.lhs.true.1074
  %arraydecay1080 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %831 = load i8*, i8** %proc_name, align 8
  %832 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1081 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %832, i64 1
  %data1082 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1081, i32 0, i32 1
  %d_string1083 = bitcast %union._GimpParamData* %data1082 to i8**
  %833 = load i8*, i8** %d_string1083, align 8
  %call1084 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay1080, i64 1024, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.142, i32 0, i32 0), i8* %831, i8* %833)
  br label %if.end.1088

if.else.1085:                                     ; preds = %land.lhs.true.1074, %sw.bb.1071
  %arraydecay1086 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %834 = load i8*, i8** %proc_name, align 8
  %call1087 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay1086, i64 1024, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.143, i32 0, i32 0), i8* %834)
  br label %if.end.1088

if.end.1088:                                      ; preds = %if.else.1085, %if.then.1079
  %835 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %arraydecay1089 = getelementptr inbounds [1024 x i8], [1024 x i8]* %error_str, i32 0, i32 0
  %call1090 = call %struct.cell* @foreign_error(%struct.scheme* %835, i8* %arraydecay1089, %struct.cell* null)
  store %struct.cell* %call1090, %struct.cell** %retval
  br label %return

sw.bb.1091:                                       ; preds = %if.end.1048
  %836 = load i32, i32* %nvalues, align 4
  %sub1092 = sub nsw i32 %836, 2
  store i32 %sub1092, i32* %i, align 4
  br label %for.cond.1093

for.cond.1093:                                    ; preds = %for.inc.1480, %sw.bb.1091
  %837 = load i32, i32* %i, align 4
  %cmp1094 = icmp sge i32 %837, 0
  br i1 %cmp1094, label %for.body.1096, label %for.end.1482

for.body.1096:                                    ; preds = %for.cond.1093
  %838 = load i32, i32* %i, align 4
  %idxprom1098 = sext i32 %838 to i64
  %839 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %arrayidx1099 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %839, i64 %idxprom1098
  %type1100 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx1099, i32 0, i32 0
  %840 = load i32, i32* %type1100, align 4
  switch i32 %840, label %sw.default.1477 [
    i32 0, label %sw.bb.1101
    i32 12, label %sw.bb.1101
    i32 13, label %sw.bb.1101
    i32 11, label %sw.bb.1101
    i32 14, label %sw.bb.1101
    i32 15, label %sw.bb.1101
    i32 16, label %sw.bb.1101
    i32 17, label %sw.bb.1101
    i32 19, label %sw.bb.1101
    i32 1, label %sw.bb.1112
    i32 2, label %sw.bb.1125
    i32 3, label %sw.bb.1138
    i32 4, label %sw.bb.1149
    i32 5, label %sw.bb.1163
    i32 6, label %sw.bb.1194
    i32 7, label %sw.bb.1228
    i32 8, label %sw.bb.1262
    i32 9, label %sw.bb.1295
    i32 10, label %sw.bb.1332
    i32 18, label %sw.bb.1367
    i32 20, label %sw.bb.1423
    i32 21, label %sw.bb.1475
  ]

sw.bb.1101:                                       ; preds = %for.body.1096, %for.body.1096, %for.body.1096, %for.body.1096, %for.body.1096, %for.body.1096, %for.body.1096, %for.body.1096, %for.body.1096
  %841 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1102 = getelementptr inbounds %struct.scheme, %struct.scheme* %841, i32 0, i32 58
  %842 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1102, align 8
  %cons = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %842, i32 0, i32 1
  %843 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons, align 8
  %844 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %845 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1103 = getelementptr inbounds %struct.scheme, %struct.scheme* %845, i32 0, i32 58
  %846 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1103, align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %846, i32 0, i32 4
  %847 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %848 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %849 = load i32, i32* %i, align 4
  %add1104 = add nsw i32 %849, 1
  %idxprom1105 = sext i32 %add1104 to i64
  %850 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1106 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %850, i64 %idxprom1105
  %data1107 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1106, i32 0, i32 1
  %d_int321108 = bitcast %union._GimpParamData* %data1107 to i32*
  %851 = load i32, i32* %d_int321108, align 4
  %conv1109 = sext i32 %851 to i64
  %call1110 = call %struct.cell* %847(%struct.scheme* %848, i64 %conv1109)
  %852 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1111 = call %struct.cell* %843(%struct.scheme* %844, %struct.cell* %call1110, %struct.cell* %852)
  store %struct.cell* %call1111, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1112:                                       ; preds = %for.body.1096
  %853 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1113 = getelementptr inbounds %struct.scheme, %struct.scheme* %853, i32 0, i32 58
  %854 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1113, align 8
  %cons1114 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %854, i32 0, i32 1
  %855 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1114, align 8
  %856 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %857 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1115 = getelementptr inbounds %struct.scheme, %struct.scheme* %857, i32 0, i32 58
  %858 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1115, align 8
  %mk_integer1116 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %858, i32 0, i32 4
  %859 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1116, align 8
  %860 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %861 = load i32, i32* %i, align 4
  %add1117 = add nsw i32 %861, 1
  %idxprom1118 = sext i32 %add1117 to i64
  %862 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1119 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %862, i64 %idxprom1118
  %data1120 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1119, i32 0, i32 1
  %d_int161121 = bitcast %union._GimpParamData* %data1120 to i16*
  %863 = load i16, i16* %d_int161121, align 2
  %conv1122 = sext i16 %863 to i64
  %call1123 = call %struct.cell* %859(%struct.scheme* %860, i64 %conv1122)
  %864 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1124 = call %struct.cell* %855(%struct.scheme* %856, %struct.cell* %call1123, %struct.cell* %864)
  store %struct.cell* %call1124, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1125:                                       ; preds = %for.body.1096
  %865 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1126 = getelementptr inbounds %struct.scheme, %struct.scheme* %865, i32 0, i32 58
  %866 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1126, align 8
  %cons1127 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %866, i32 0, i32 1
  %867 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1127, align 8
  %868 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %869 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1128 = getelementptr inbounds %struct.scheme, %struct.scheme* %869, i32 0, i32 58
  %870 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1128, align 8
  %mk_integer1129 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %870, i32 0, i32 4
  %871 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1129, align 8
  %872 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %873 = load i32, i32* %i, align 4
  %add1130 = add nsw i32 %873, 1
  %idxprom1131 = sext i32 %add1130 to i64
  %874 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1132 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %874, i64 %idxprom1131
  %data1133 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1132, i32 0, i32 1
  %d_int81134 = bitcast %union._GimpParamData* %data1133 to i8*
  %875 = load i8, i8* %d_int81134, align 1
  %conv1135 = zext i8 %875 to i64
  %call1136 = call %struct.cell* %871(%struct.scheme* %872, i64 %conv1135)
  %876 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1137 = call %struct.cell* %867(%struct.scheme* %868, %struct.cell* %call1136, %struct.cell* %876)
  store %struct.cell* %call1137, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1138:                                       ; preds = %for.body.1096
  %877 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1139 = getelementptr inbounds %struct.scheme, %struct.scheme* %877, i32 0, i32 58
  %878 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1139, align 8
  %cons1140 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %878, i32 0, i32 1
  %879 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1140, align 8
  %880 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %881 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1141 = getelementptr inbounds %struct.scheme, %struct.scheme* %881, i32 0, i32 58
  %882 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1141, align 8
  %mk_real = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %882, i32 0, i32 5
  %883 = load %struct.cell* (%struct.scheme*, double)*, %struct.cell* (%struct.scheme*, double)** %mk_real, align 8
  %884 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %885 = load i32, i32* %i, align 4
  %add1142 = add nsw i32 %885, 1
  %idxprom1143 = sext i32 %add1142 to i64
  %886 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1144 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %886, i64 %idxprom1143
  %data1145 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1144, i32 0, i32 1
  %d_float1146 = bitcast %union._GimpParamData* %data1145 to double*
  %887 = load double, double* %d_float1146, align 8
  %call1147 = call %struct.cell* %883(%struct.scheme* %884, double %887)
  %888 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1148 = call %struct.cell* %879(%struct.scheme* %880, %struct.cell* %call1147, %struct.cell* %888)
  store %struct.cell* %call1148, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1149:                                       ; preds = %for.body.1096
  %889 = load i32, i32* %i, align 4
  %add1150 = add nsw i32 %889, 1
  %idxprom1151 = sext i32 %add1150 to i64
  %890 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1152 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %890, i64 %idxprom1151
  %data1153 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1152, i32 0, i32 1
  %d_string1154 = bitcast %union._GimpParamData* %data1153 to i8**
  %891 = load i8*, i8** %d_string1154, align 8
  store i8* %891, i8** %string, align 8
  %892 = load i8*, i8** %string, align 8
  %tobool1155 = icmp ne i8* %892, null
  br i1 %tobool1155, label %if.end.1157, label %if.then.1156

if.then.1156:                                     ; preds = %sw.bb.1149
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i32 0, i32 0), i8** %string, align 8
  br label %if.end.1157

if.end.1157:                                      ; preds = %if.then.1156, %sw.bb.1149
  %893 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1158 = getelementptr inbounds %struct.scheme, %struct.scheme* %893, i32 0, i32 58
  %894 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1158, align 8
  %cons1159 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %894, i32 0, i32 1
  %895 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1159, align 8
  %896 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %897 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1160 = getelementptr inbounds %struct.scheme, %struct.scheme* %897, i32 0, i32 58
  %898 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1160, align 8
  %mk_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %898, i32 0, i32 8
  %899 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string, align 8
  %900 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %901 = load i8*, i8** %string, align 8
  %call1161 = call %struct.cell* %899(%struct.scheme* %900, i8* %901)
  %902 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1162 = call %struct.cell* %895(%struct.scheme* %896, %struct.cell* %call1161, %struct.cell* %902)
  store %struct.cell* %call1162, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1163:                                       ; preds = %for.body.1096
  %903 = load i32, i32* %i, align 4
  %idxprom1164 = sext i32 %903 to i64
  %904 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1165 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %904, i64 %idxprom1164
  %data1166 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1165, i32 0, i32 1
  %d_int321167 = bitcast %union._GimpParamData* %data1166 to i32*
  %905 = load i32, i32* %d_int321167, align 4
  store i32 %905, i32* %num_int32s, align 4
  %906 = load i32, i32* %i, align 4
  %add1168 = add nsw i32 %906, 1
  %idxprom1169 = sext i32 %add1168 to i64
  %907 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1170 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %907, i64 %idxprom1169
  %data1171 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1170, i32 0, i32 1
  %d_int32array1172 = bitcast %union._GimpParamData* %data1171 to i32**
  %908 = load i32*, i32** %d_int32array1172, align 8
  store i32* %908, i32** %array, align 8
  %909 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1174 = getelementptr inbounds %struct.scheme, %struct.scheme* %909, i32 0, i32 58
  %910 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1174, align 8
  %mk_vector = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %910, i32 0, i32 11
  %911 = load %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i32)** %mk_vector, align 8
  %912 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %913 = load i32, i32* %num_int32s, align 4
  %call1175 = call %struct.cell* %911(%struct.scheme* %912, i32 %913)
  store %struct.cell* %call1175, %struct.cell** %vector1173, align 8
  store i32 0, i32* %j1097, align 4
  br label %for.cond.1176

for.cond.1176:                                    ; preds = %for.inc.1188, %sw.bb.1163
  %914 = load i32, i32* %j1097, align 4
  %915 = load i32, i32* %num_int32s, align 4
  %cmp1177 = icmp slt i32 %914, %915
  br i1 %cmp1177, label %for.body.1179, label %for.end.1190

for.body.1179:                                    ; preds = %for.cond.1176
  %916 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1180 = getelementptr inbounds %struct.scheme, %struct.scheme* %916, i32 0, i32 58
  %917 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1180, align 8
  %set_vector_elem = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %917, i32 0, i32 33
  %918 = load %struct.cell* (%struct.cell*, i32, %struct.cell*)*, %struct.cell* (%struct.cell*, i32, %struct.cell*)** %set_vector_elem, align 8
  %919 = load %struct.cell*, %struct.cell** %vector1173, align 8
  %920 = load i32, i32* %j1097, align 4
  %921 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1181 = getelementptr inbounds %struct.scheme, %struct.scheme* %921, i32 0, i32 58
  %922 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1181, align 8
  %mk_integer1182 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %922, i32 0, i32 4
  %923 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1182, align 8
  %924 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %925 = load i32, i32* %j1097, align 4
  %idxprom1183 = sext i32 %925 to i64
  %926 = load i32*, i32** %array, align 8
  %arrayidx1184 = getelementptr inbounds i32, i32* %926, i64 %idxprom1183
  %927 = load i32, i32* %arrayidx1184, align 4
  %conv1185 = sext i32 %927 to i64
  %call1186 = call %struct.cell* %923(%struct.scheme* %924, i64 %conv1185)
  %call1187 = call %struct.cell* %918(%struct.cell* %919, i32 %920, %struct.cell* %call1186)
  br label %for.inc.1188

for.inc.1188:                                     ; preds = %for.body.1179
  %928 = load i32, i32* %j1097, align 4
  %inc1189 = add nsw i32 %928, 1
  store i32 %inc1189, i32* %j1097, align 4
  br label %for.cond.1176

for.end.1190:                                     ; preds = %for.cond.1176
  %929 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1191 = getelementptr inbounds %struct.scheme, %struct.scheme* %929, i32 0, i32 58
  %930 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1191, align 8
  %cons1192 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %930, i32 0, i32 1
  %931 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1192, align 8
  %932 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %933 = load %struct.cell*, %struct.cell** %vector1173, align 8
  %934 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1193 = call %struct.cell* %931(%struct.scheme* %932, %struct.cell* %933, %struct.cell* %934)
  store %struct.cell* %call1193, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1194:                                       ; preds = %for.body.1096
  %935 = load i32, i32* %i, align 4
  %idxprom1195 = sext i32 %935 to i64
  %936 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1196 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %936, i64 %idxprom1195
  %data1197 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1196, i32 0, i32 1
  %d_int321198 = bitcast %union._GimpParamData* %data1197 to i32*
  %937 = load i32, i32* %d_int321198, align 4
  store i32 %937, i32* %num_int16s, align 4
  %938 = load i32, i32* %i, align 4
  %add1200 = add nsw i32 %938, 1
  %idxprom1201 = sext i32 %add1200 to i64
  %939 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1202 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %939, i64 %idxprom1201
  %data1203 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1202, i32 0, i32 1
  %d_int16array1204 = bitcast %union._GimpParamData* %data1203 to i16**
  %940 = load i16*, i16** %d_int16array1204, align 8
  store i16* %940, i16** %array1199, align 8
  %941 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1206 = getelementptr inbounds %struct.scheme, %struct.scheme* %941, i32 0, i32 58
  %942 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1206, align 8
  %mk_vector1207 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %942, i32 0, i32 11
  %943 = load %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i32)** %mk_vector1207, align 8
  %944 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %945 = load i32, i32* %num_int16s, align 4
  %call1208 = call %struct.cell* %943(%struct.scheme* %944, i32 %945)
  store %struct.cell* %call1208, %struct.cell** %vector1205, align 8
  store i32 0, i32* %j1097, align 4
  br label %for.cond.1209

for.cond.1209:                                    ; preds = %for.inc.1222, %sw.bb.1194
  %946 = load i32, i32* %j1097, align 4
  %947 = load i32, i32* %num_int16s, align 4
  %cmp1210 = icmp slt i32 %946, %947
  br i1 %cmp1210, label %for.body.1212, label %for.end.1224

for.body.1212:                                    ; preds = %for.cond.1209
  %948 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1213 = getelementptr inbounds %struct.scheme, %struct.scheme* %948, i32 0, i32 58
  %949 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1213, align 8
  %set_vector_elem1214 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %949, i32 0, i32 33
  %950 = load %struct.cell* (%struct.cell*, i32, %struct.cell*)*, %struct.cell* (%struct.cell*, i32, %struct.cell*)** %set_vector_elem1214, align 8
  %951 = load %struct.cell*, %struct.cell** %vector1205, align 8
  %952 = load i32, i32* %j1097, align 4
  %953 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1215 = getelementptr inbounds %struct.scheme, %struct.scheme* %953, i32 0, i32 58
  %954 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1215, align 8
  %mk_integer1216 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %954, i32 0, i32 4
  %955 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1216, align 8
  %956 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %957 = load i32, i32* %j1097, align 4
  %idxprom1217 = sext i32 %957 to i64
  %958 = load i16*, i16** %array1199, align 8
  %arrayidx1218 = getelementptr inbounds i16, i16* %958, i64 %idxprom1217
  %959 = load i16, i16* %arrayidx1218, align 2
  %conv1219 = sext i16 %959 to i64
  %call1220 = call %struct.cell* %955(%struct.scheme* %956, i64 %conv1219)
  %call1221 = call %struct.cell* %950(%struct.cell* %951, i32 %952, %struct.cell* %call1220)
  br label %for.inc.1222

for.inc.1222:                                     ; preds = %for.body.1212
  %960 = load i32, i32* %j1097, align 4
  %inc1223 = add nsw i32 %960, 1
  store i32 %inc1223, i32* %j1097, align 4
  br label %for.cond.1209

for.end.1224:                                     ; preds = %for.cond.1209
  %961 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1225 = getelementptr inbounds %struct.scheme, %struct.scheme* %961, i32 0, i32 58
  %962 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1225, align 8
  %cons1226 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %962, i32 0, i32 1
  %963 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1226, align 8
  %964 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %965 = load %struct.cell*, %struct.cell** %vector1205, align 8
  %966 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1227 = call %struct.cell* %963(%struct.scheme* %964, %struct.cell* %965, %struct.cell* %966)
  store %struct.cell* %call1227, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1228:                                       ; preds = %for.body.1096
  %967 = load i32, i32* %i, align 4
  %idxprom1229 = sext i32 %967 to i64
  %968 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1230 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %968, i64 %idxprom1229
  %data1231 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1230, i32 0, i32 1
  %d_int321232 = bitcast %union._GimpParamData* %data1231 to i32*
  %969 = load i32, i32* %d_int321232, align 4
  store i32 %969, i32* %num_int8s, align 4
  %970 = load i32, i32* %i, align 4
  %add1234 = add nsw i32 %970, 1
  %idxprom1235 = sext i32 %add1234 to i64
  %971 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1236 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %971, i64 %idxprom1235
  %data1237 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1236, i32 0, i32 1
  %d_int8array1238 = bitcast %union._GimpParamData* %data1237 to i8**
  %972 = load i8*, i8** %d_int8array1238, align 8
  store i8* %972, i8** %array1233, align 8
  %973 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1240 = getelementptr inbounds %struct.scheme, %struct.scheme* %973, i32 0, i32 58
  %974 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1240, align 8
  %mk_vector1241 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %974, i32 0, i32 11
  %975 = load %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i32)** %mk_vector1241, align 8
  %976 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %977 = load i32, i32* %num_int8s, align 4
  %call1242 = call %struct.cell* %975(%struct.scheme* %976, i32 %977)
  store %struct.cell* %call1242, %struct.cell** %vector1239, align 8
  store i32 0, i32* %j1097, align 4
  br label %for.cond.1243

for.cond.1243:                                    ; preds = %for.inc.1256, %sw.bb.1228
  %978 = load i32, i32* %j1097, align 4
  %979 = load i32, i32* %num_int8s, align 4
  %cmp1244 = icmp slt i32 %978, %979
  br i1 %cmp1244, label %for.body.1246, label %for.end.1258

for.body.1246:                                    ; preds = %for.cond.1243
  %980 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1247 = getelementptr inbounds %struct.scheme, %struct.scheme* %980, i32 0, i32 58
  %981 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1247, align 8
  %set_vector_elem1248 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %981, i32 0, i32 33
  %982 = load %struct.cell* (%struct.cell*, i32, %struct.cell*)*, %struct.cell* (%struct.cell*, i32, %struct.cell*)** %set_vector_elem1248, align 8
  %983 = load %struct.cell*, %struct.cell** %vector1239, align 8
  %984 = load i32, i32* %j1097, align 4
  %985 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1249 = getelementptr inbounds %struct.scheme, %struct.scheme* %985, i32 0, i32 58
  %986 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1249, align 8
  %mk_integer1250 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %986, i32 0, i32 4
  %987 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1250, align 8
  %988 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %989 = load i32, i32* %j1097, align 4
  %idxprom1251 = sext i32 %989 to i64
  %990 = load i8*, i8** %array1233, align 8
  %arrayidx1252 = getelementptr inbounds i8, i8* %990, i64 %idxprom1251
  %991 = load i8, i8* %arrayidx1252, align 1
  %conv1253 = zext i8 %991 to i64
  %call1254 = call %struct.cell* %987(%struct.scheme* %988, i64 %conv1253)
  %call1255 = call %struct.cell* %982(%struct.cell* %983, i32 %984, %struct.cell* %call1254)
  br label %for.inc.1256

for.inc.1256:                                     ; preds = %for.body.1246
  %992 = load i32, i32* %j1097, align 4
  %inc1257 = add nsw i32 %992, 1
  store i32 %inc1257, i32* %j1097, align 4
  br label %for.cond.1243

for.end.1258:                                     ; preds = %for.cond.1243
  %993 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1259 = getelementptr inbounds %struct.scheme, %struct.scheme* %993, i32 0, i32 58
  %994 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1259, align 8
  %cons1260 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %994, i32 0, i32 1
  %995 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1260, align 8
  %996 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %997 = load %struct.cell*, %struct.cell** %vector1239, align 8
  %998 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1261 = call %struct.cell* %995(%struct.scheme* %996, %struct.cell* %997, %struct.cell* %998)
  store %struct.cell* %call1261, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1262:                                       ; preds = %for.body.1096
  %999 = load i32, i32* %i, align 4
  %idxprom1263 = sext i32 %999 to i64
  %1000 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1264 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1000, i64 %idxprom1263
  %data1265 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1264, i32 0, i32 1
  %d_int321266 = bitcast %union._GimpParamData* %data1265 to i32*
  %1001 = load i32, i32* %d_int321266, align 4
  store i32 %1001, i32* %num_floats, align 4
  %1002 = load i32, i32* %i, align 4
  %add1268 = add nsw i32 %1002, 1
  %idxprom1269 = sext i32 %add1268 to i64
  %1003 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1270 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1003, i64 %idxprom1269
  %data1271 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1270, i32 0, i32 1
  %d_floatarray1272 = bitcast %union._GimpParamData* %data1271 to double**
  %1004 = load double*, double** %d_floatarray1272, align 8
  store double* %1004, double** %array1267, align 8
  %1005 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1274 = getelementptr inbounds %struct.scheme, %struct.scheme* %1005, i32 0, i32 58
  %1006 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1274, align 8
  %mk_vector1275 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1006, i32 0, i32 11
  %1007 = load %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i32)** %mk_vector1275, align 8
  %1008 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1009 = load i32, i32* %num_floats, align 4
  %call1276 = call %struct.cell* %1007(%struct.scheme* %1008, i32 %1009)
  store %struct.cell* %call1276, %struct.cell** %vector1273, align 8
  store i32 0, i32* %j1097, align 4
  br label %for.cond.1277

for.cond.1277:                                    ; preds = %for.inc.1289, %sw.bb.1262
  %1010 = load i32, i32* %j1097, align 4
  %1011 = load i32, i32* %num_floats, align 4
  %cmp1278 = icmp slt i32 %1010, %1011
  br i1 %cmp1278, label %for.body.1280, label %for.end.1291

for.body.1280:                                    ; preds = %for.cond.1277
  %1012 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1281 = getelementptr inbounds %struct.scheme, %struct.scheme* %1012, i32 0, i32 58
  %1013 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1281, align 8
  %set_vector_elem1282 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1013, i32 0, i32 33
  %1014 = load %struct.cell* (%struct.cell*, i32, %struct.cell*)*, %struct.cell* (%struct.cell*, i32, %struct.cell*)** %set_vector_elem1282, align 8
  %1015 = load %struct.cell*, %struct.cell** %vector1273, align 8
  %1016 = load i32, i32* %j1097, align 4
  %1017 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1283 = getelementptr inbounds %struct.scheme, %struct.scheme* %1017, i32 0, i32 58
  %1018 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1283, align 8
  %mk_real1284 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1018, i32 0, i32 5
  %1019 = load %struct.cell* (%struct.scheme*, double)*, %struct.cell* (%struct.scheme*, double)** %mk_real1284, align 8
  %1020 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1021 = load i32, i32* %j1097, align 4
  %idxprom1285 = sext i32 %1021 to i64
  %1022 = load double*, double** %array1267, align 8
  %arrayidx1286 = getelementptr inbounds double, double* %1022, i64 %idxprom1285
  %1023 = load double, double* %arrayidx1286, align 8
  %call1287 = call %struct.cell* %1019(%struct.scheme* %1020, double %1023)
  %call1288 = call %struct.cell* %1014(%struct.cell* %1015, i32 %1016, %struct.cell* %call1287)
  br label %for.inc.1289

for.inc.1289:                                     ; preds = %for.body.1280
  %1024 = load i32, i32* %j1097, align 4
  %inc1290 = add nsw i32 %1024, 1
  store i32 %inc1290, i32* %j1097, align 4
  br label %for.cond.1277

for.end.1291:                                     ; preds = %for.cond.1277
  %1025 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1292 = getelementptr inbounds %struct.scheme, %struct.scheme* %1025, i32 0, i32 58
  %1026 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1292, align 8
  %cons1293 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1026, i32 0, i32 1
  %1027 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1293, align 8
  %1028 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1029 = load %struct.cell*, %struct.cell** %vector1273, align 8
  %1030 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1294 = call %struct.cell* %1027(%struct.scheme* %1028, %struct.cell* %1029, %struct.cell* %1030)
  store %struct.cell* %call1294, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1295:                                       ; preds = %for.body.1096
  %1031 = load i32, i32* %i, align 4
  %idxprom1296 = sext i32 %1031 to i64
  %1032 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1297 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1032, i64 %idxprom1296
  %data1298 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1297, i32 0, i32 1
  %d_int321299 = bitcast %union._GimpParamData* %data1298 to i32*
  %1033 = load i32, i32* %d_int321299, align 4
  store i32 %1033, i32* %num_strings, align 4
  %1034 = load i32, i32* %i, align 4
  %add1301 = add nsw i32 %1034, 1
  %idxprom1302 = sext i32 %add1301 to i64
  %1035 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1303 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1035, i64 %idxprom1302
  %data1304 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1303, i32 0, i32 1
  %d_stringarray1305 = bitcast %union._GimpParamData* %data1304 to i8***
  %1036 = load i8**, i8*** %d_stringarray1305, align 8
  store i8** %1036, i8*** %array1300, align 8
  %1037 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL1306 = getelementptr inbounds %struct.scheme, %struct.scheme* %1037, i32 0, i32 17
  %1038 = load %struct.cell*, %struct.cell** %NIL1306, align 8
  store %struct.cell* %1038, %struct.cell** %list, align 8
  %1039 = load i32, i32* %num_strings, align 4
  %sub1307 = sub nsw i32 %1039, 1
  store i32 %sub1307, i32* %j1097, align 4
  br label %for.cond.1308

for.cond.1308:                                    ; preds = %for.inc.1327, %sw.bb.1295
  %1040 = load i32, i32* %j1097, align 4
  %cmp1309 = icmp sge i32 %1040, 0
  br i1 %cmp1309, label %for.body.1311, label %for.end.1328

for.body.1311:                                    ; preds = %for.cond.1308
  %1041 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1312 = getelementptr inbounds %struct.scheme, %struct.scheme* %1041, i32 0, i32 58
  %1042 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1312, align 8
  %cons1313 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1042, i32 0, i32 1
  %1043 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1313, align 8
  %1044 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1045 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1314 = getelementptr inbounds %struct.scheme, %struct.scheme* %1045, i32 0, i32 58
  %1046 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1314, align 8
  %mk_string1315 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1046, i32 0, i32 8
  %1047 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string1315, align 8
  %1048 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1049 = load i32, i32* %j1097, align 4
  %idxprom1316 = sext i32 %1049 to i64
  %1050 = load i8**, i8*** %array1300, align 8
  %arrayidx1317 = getelementptr inbounds i8*, i8** %1050, i64 %idxprom1316
  %1051 = load i8*, i8** %arrayidx1317, align 8
  %tobool1318 = icmp ne i8* %1051, null
  br i1 %tobool1318, label %cond.true.1319, label %cond.false.1322

cond.true.1319:                                   ; preds = %for.body.1311
  %1052 = load i32, i32* %j1097, align 4
  %idxprom1320 = sext i32 %1052 to i64
  %1053 = load i8**, i8*** %array1300, align 8
  %arrayidx1321 = getelementptr inbounds i8*, i8** %1053, i64 %idxprom1320
  %1054 = load i8*, i8** %arrayidx1321, align 8
  br label %cond.end.1323

cond.false.1322:                                  ; preds = %for.body.1311
  br label %cond.end.1323

cond.end.1323:                                    ; preds = %cond.false.1322, %cond.true.1319
  %cond1324 = phi i8* [ %1054, %cond.true.1319 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i32 0, i32 0), %cond.false.1322 ]
  %call1325 = call %struct.cell* %1047(%struct.scheme* %1048, i8* %cond1324)
  %1055 = load %struct.cell*, %struct.cell** %list, align 8
  %call1326 = call %struct.cell* %1043(%struct.scheme* %1044, %struct.cell* %call1325, %struct.cell* %1055)
  store %struct.cell* %call1326, %struct.cell** %list, align 8
  br label %for.inc.1327

for.inc.1327:                                     ; preds = %cond.end.1323
  %1056 = load i32, i32* %j1097, align 4
  %dec = add nsw i32 %1056, -1
  store i32 %dec, i32* %j1097, align 4
  br label %for.cond.1308

for.end.1328:                                     ; preds = %for.cond.1308
  %1057 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1329 = getelementptr inbounds %struct.scheme, %struct.scheme* %1057, i32 0, i32 58
  %1058 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1329, align 8
  %cons1330 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1058, i32 0, i32 1
  %1059 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1330, align 8
  %1060 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1061 = load %struct.cell*, %struct.cell** %list, align 8
  %1062 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1331 = call %struct.cell* %1059(%struct.scheme* %1060, %struct.cell* %1061, %struct.cell* %1062)
  store %struct.cell* %call1331, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1332:                                       ; preds = %for.body.1096
  %1063 = load i32, i32* %i, align 4
  %add1337 = add nsw i32 %1063, 1
  %idxprom1338 = sext i32 %add1337 to i64
  %1064 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1339 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1064, i64 %idxprom1338
  %data1340 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1339, i32 0, i32 1
  %d_color1341 = bitcast %union._GimpParamData* %data1340 to %struct._GimpRGB*
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %d_color1341, i8* %r1333, i8* %g1334, i8* %b1335)
  %1065 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1342 = getelementptr inbounds %struct.scheme, %struct.scheme* %1065, i32 0, i32 58
  %1066 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1342, align 8
  %cons1343 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1066, i32 0, i32 1
  %1067 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1343, align 8
  %1068 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1069 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1344 = getelementptr inbounds %struct.scheme, %struct.scheme* %1069, i32 0, i32 58
  %1070 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1344, align 8
  %mk_integer1345 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1070, i32 0, i32 4
  %1071 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1345, align 8
  %1072 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1073 = load i8, i8* %r1333, align 1
  %conv1346 = zext i8 %1073 to i64
  %call1347 = call %struct.cell* %1071(%struct.scheme* %1072, i64 %conv1346)
  %1074 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1348 = getelementptr inbounds %struct.scheme, %struct.scheme* %1074, i32 0, i32 58
  %1075 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1348, align 8
  %cons1349 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1075, i32 0, i32 1
  %1076 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1349, align 8
  %1077 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1078 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1350 = getelementptr inbounds %struct.scheme, %struct.scheme* %1078, i32 0, i32 58
  %1079 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1350, align 8
  %mk_integer1351 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1079, i32 0, i32 4
  %1080 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1351, align 8
  %1081 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1082 = load i8, i8* %g1334, align 1
  %conv1352 = zext i8 %1082 to i64
  %call1353 = call %struct.cell* %1080(%struct.scheme* %1081, i64 %conv1352)
  %1083 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1354 = getelementptr inbounds %struct.scheme, %struct.scheme* %1083, i32 0, i32 58
  %1084 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1354, align 8
  %cons1355 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1084, i32 0, i32 1
  %1085 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1355, align 8
  %1086 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1087 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1356 = getelementptr inbounds %struct.scheme, %struct.scheme* %1087, i32 0, i32 58
  %1088 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1356, align 8
  %mk_integer1357 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1088, i32 0, i32 4
  %1089 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1357, align 8
  %1090 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1091 = load i8, i8* %b1335, align 1
  %conv1358 = zext i8 %1091 to i64
  %call1359 = call %struct.cell* %1089(%struct.scheme* %1090, i64 %conv1358)
  %1092 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL1360 = getelementptr inbounds %struct.scheme, %struct.scheme* %1092, i32 0, i32 17
  %1093 = load %struct.cell*, %struct.cell** %NIL1360, align 8
  %call1361 = call %struct.cell* %1085(%struct.scheme* %1086, %struct.cell* %call1359, %struct.cell* %1093)
  %call1362 = call %struct.cell* %1076(%struct.scheme* %1077, %struct.cell* %call1353, %struct.cell* %call1361)
  %call1363 = call %struct.cell* %1067(%struct.scheme* %1068, %struct.cell* %call1347, %struct.cell* %call1362)
  %1094 = bitcast %struct.cell* %call1363 to i8*
  store i8* %1094, i8** %temp_val1336, align 8
  %1095 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1364 = getelementptr inbounds %struct.scheme, %struct.scheme* %1095, i32 0, i32 58
  %1096 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1364, align 8
  %cons1365 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1096, i32 0, i32 1
  %1097 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1365, align 8
  %1098 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1099 = load i8*, i8** %temp_val1336, align 8
  %1100 = bitcast i8* %1099 to %struct.cell*
  %1101 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1366 = call %struct.cell* %1097(%struct.scheme* %1098, %struct.cell* %1100, %struct.cell* %1101)
  store %struct.cell* %call1366, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1367:                                       ; preds = %for.body.1096
  %1102 = load i32, i32* %i, align 4
  %idxprom1368 = sext i32 %1102 to i64
  %1103 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1369 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1103, i64 %idxprom1368
  %data1370 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1369, i32 0, i32 1
  %d_int321371 = bitcast %union._GimpParamData* %data1370 to i32*
  %1104 = load i32, i32* %d_int321371, align 4
  store i32 %1104, i32* %num_colors, align 4
  %1105 = load i32, i32* %i, align 4
  %add1373 = add nsw i32 %1105, 1
  %idxprom1374 = sext i32 %add1373 to i64
  %1106 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1375 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1106, i64 %idxprom1374
  %data1376 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1375, i32 0, i32 1
  %d_colorarray1377 = bitcast %union._GimpParamData* %data1376 to %struct._GimpRGB**
  %1107 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray1377, align 8
  store %struct._GimpRGB* %1107, %struct._GimpRGB** %array1372, align 8
  %1108 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1379 = getelementptr inbounds %struct.scheme, %struct.scheme* %1108, i32 0, i32 58
  %1109 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1379, align 8
  %mk_vector1380 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1109, i32 0, i32 11
  %1110 = load %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i32)** %mk_vector1380, align 8
  %1111 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1112 = load i32, i32* %num_colors, align 4
  %call1381 = call %struct.cell* %1110(%struct.scheme* %1111, i32 %1112)
  store %struct.cell* %call1381, %struct.cell** %vector1378, align 8
  store i32 0, i32* %j1097, align 4
  br label %for.cond.1382

for.cond.1382:                                    ; preds = %for.inc.1417, %sw.bb.1367
  %1113 = load i32, i32* %j1097, align 4
  %1114 = load i32, i32* %num_colors, align 4
  %cmp1383 = icmp slt i32 %1113, %1114
  br i1 %cmp1383, label %for.body.1385, label %for.end.1419

for.body.1385:                                    ; preds = %for.cond.1382
  %1115 = load i32, i32* %j1097, align 4
  %idxprom1390 = sext i32 %1115 to i64
  %1116 = load %struct._GimpRGB*, %struct._GimpRGB** %array1372, align 8
  %arrayidx1391 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1116, i64 %idxprom1390
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %arrayidx1391, i8* %r1386, i8* %g1387, i8* %b1388)
  %1117 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1392 = getelementptr inbounds %struct.scheme, %struct.scheme* %1117, i32 0, i32 58
  %1118 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1392, align 8
  %cons1393 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1118, i32 0, i32 1
  %1119 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1393, align 8
  %1120 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1121 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1394 = getelementptr inbounds %struct.scheme, %struct.scheme* %1121, i32 0, i32 58
  %1122 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1394, align 8
  %mk_integer1395 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1122, i32 0, i32 4
  %1123 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1395, align 8
  %1124 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1125 = load i8, i8* %r1386, align 1
  %conv1396 = zext i8 %1125 to i64
  %call1397 = call %struct.cell* %1123(%struct.scheme* %1124, i64 %conv1396)
  %1126 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1398 = getelementptr inbounds %struct.scheme, %struct.scheme* %1126, i32 0, i32 58
  %1127 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1398, align 8
  %cons1399 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1127, i32 0, i32 1
  %1128 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1399, align 8
  %1129 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1130 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1400 = getelementptr inbounds %struct.scheme, %struct.scheme* %1130, i32 0, i32 58
  %1131 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1400, align 8
  %mk_integer1401 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1131, i32 0, i32 4
  %1132 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1401, align 8
  %1133 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1134 = load i8, i8* %g1387, align 1
  %conv1402 = zext i8 %1134 to i64
  %call1403 = call %struct.cell* %1132(%struct.scheme* %1133, i64 %conv1402)
  %1135 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1404 = getelementptr inbounds %struct.scheme, %struct.scheme* %1135, i32 0, i32 58
  %1136 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1404, align 8
  %cons1405 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1136, i32 0, i32 1
  %1137 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1405, align 8
  %1138 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1139 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1406 = getelementptr inbounds %struct.scheme, %struct.scheme* %1139, i32 0, i32 58
  %1140 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1406, align 8
  %mk_integer1407 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1140, i32 0, i32 4
  %1141 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1407, align 8
  %1142 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1143 = load i8, i8* %b1388, align 1
  %conv1408 = zext i8 %1143 to i64
  %call1409 = call %struct.cell* %1141(%struct.scheme* %1142, i64 %conv1408)
  %1144 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL1410 = getelementptr inbounds %struct.scheme, %struct.scheme* %1144, i32 0, i32 17
  %1145 = load %struct.cell*, %struct.cell** %NIL1410, align 8
  %call1411 = call %struct.cell* %1137(%struct.scheme* %1138, %struct.cell* %call1409, %struct.cell* %1145)
  %call1412 = call %struct.cell* %1128(%struct.scheme* %1129, %struct.cell* %call1403, %struct.cell* %call1411)
  %call1413 = call %struct.cell* %1119(%struct.scheme* %1120, %struct.cell* %call1397, %struct.cell* %call1412)
  store %struct.cell* %call1413, %struct.cell** %temp_val1389, align 8
  %1146 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1414 = getelementptr inbounds %struct.scheme, %struct.scheme* %1146, i32 0, i32 58
  %1147 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1414, align 8
  %set_vector_elem1415 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1147, i32 0, i32 33
  %1148 = load %struct.cell* (%struct.cell*, i32, %struct.cell*)*, %struct.cell* (%struct.cell*, i32, %struct.cell*)** %set_vector_elem1415, align 8
  %1149 = load %struct.cell*, %struct.cell** %vector1378, align 8
  %1150 = load i32, i32* %j1097, align 4
  %1151 = load %struct.cell*, %struct.cell** %temp_val1389, align 8
  %call1416 = call %struct.cell* %1148(%struct.cell* %1149, i32 %1150, %struct.cell* %1151)
  br label %for.inc.1417

for.inc.1417:                                     ; preds = %for.body.1385
  %1152 = load i32, i32* %j1097, align 4
  %inc1418 = add nsw i32 %1152, 1
  store i32 %inc1418, i32* %j1097, align 4
  br label %for.cond.1382

for.end.1419:                                     ; preds = %for.cond.1382
  %1153 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1420 = getelementptr inbounds %struct.scheme, %struct.scheme* %1153, i32 0, i32 58
  %1154 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1420, align 8
  %cons1421 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1154, i32 0, i32 1
  %1155 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1421, align 8
  %1156 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1157 = load %struct.cell*, %struct.cell** %vector1378, align 8
  %1158 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1422 = call %struct.cell* %1155(%struct.scheme* %1156, %struct.cell* %1157, %struct.cell* %1158)
  store %struct.cell* %call1422, %struct.cell** %return_val, align 8
  br label %sw.epilog.1479

sw.bb.1423:                                       ; preds = %for.body.1096
  %1159 = load i32, i32* %i, align 4
  %add1424 = add nsw i32 %1159, 1
  %idxprom1425 = sext i32 %add1424 to i64
  %1160 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1426 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1160, i64 %idxprom1425
  %data1427 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1426, i32 0, i32 1
  %d_parasite1428 = bitcast %union._GimpParamData* %data1427 to %struct._GimpParasite*
  %name1429 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite1428, i32 0, i32 0
  %1161 = load i8*, i8** %name1429, align 8
  %cmp1430 = icmp eq i8* %1161, null
  br i1 %cmp1430, label %if.then.1432, label %if.else.1434

if.then.1432:                                     ; preds = %sw.bb.1423
  %1162 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call1433 = call %struct.cell* @foreign_error(%struct.scheme* %1162, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.145, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call1433, %struct.cell** %return_val, align 8
  br label %if.end.1474

if.else.1434:                                     ; preds = %sw.bb.1423
  %1163 = load i32, i32* %i, align 4
  %add1435 = add nsw i32 %1163, 1
  %idxprom1436 = sext i32 %add1435 to i64
  %1164 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1437 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1164, i64 %idxprom1436
  %data1438 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1437, i32 0, i32 1
  %d_parasite1439 = bitcast %union._GimpParamData* %data1438 to %struct._GimpParasite*
  store %struct._GimpParasite* %d_parasite1439, %struct._GimpParasite** %p, align 8
  %1165 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %data1441 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1165, i32 0, i32 3
  %1166 = load i8*, i8** %data1441, align 8
  %1167 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %size1442 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1167, i32 0, i32 2
  %1168 = load i32, i32* %size1442, align 4
  %conv1443 = zext i32 %1168 to i64
  %call1444 = call noalias i8* @g_strndup(i8* %1166, i64 %conv1443)
  store i8* %call1444, i8** %data1440, align 8
  %1169 = load i8*, i8** %data1440, align 8
  %1170 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %size1445 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1170, i32 0, i32 2
  %1171 = load i32, i32* %size1445, align 4
  %conv1446 = zext i32 %1171 to i64
  %call1447 = call i64 @g_utf8_strlen(i8* %1169, i64 %conv1446) #5
  %conv1448 = trunc i64 %call1447 to i32
  store i32 %conv1448, i32* %char_cnt, align 4
  %1172 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1450 = getelementptr inbounds %struct.scheme, %struct.scheme* %1172, i32 0, i32 58
  %1173 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1450, align 8
  %cons1451 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1173, i32 0, i32 1
  %1174 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1451, align 8
  %1175 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1176 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1452 = getelementptr inbounds %struct.scheme, %struct.scheme* %1176, i32 0, i32 58
  %1177 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1452, align 8
  %mk_string1453 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1177, i32 0, i32 8
  %1178 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string1453, align 8
  %1179 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1180 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %name1454 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1180, i32 0, i32 0
  %1181 = load i8*, i8** %name1454, align 8
  %call1455 = call %struct.cell* %1178(%struct.scheme* %1179, i8* %1181)
  %1182 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1456 = getelementptr inbounds %struct.scheme, %struct.scheme* %1182, i32 0, i32 58
  %1183 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1456, align 8
  %cons1457 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1183, i32 0, i32 1
  %1184 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1457, align 8
  %1185 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1186 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1458 = getelementptr inbounds %struct.scheme, %struct.scheme* %1186, i32 0, i32 58
  %1187 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1458, align 8
  %mk_integer1459 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1187, i32 0, i32 4
  %1188 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer1459, align 8
  %1189 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1190 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %flags1460 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1190, i32 0, i32 1
  %1191 = load i32, i32* %flags1460, align 4
  %conv1461 = zext i32 %1191 to i64
  %call1462 = call %struct.cell* %1188(%struct.scheme* %1189, i64 %conv1461)
  %1192 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1463 = getelementptr inbounds %struct.scheme, %struct.scheme* %1192, i32 0, i32 58
  %1193 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1463, align 8
  %cons1464 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1193, i32 0, i32 1
  %1194 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1464, align 8
  %1195 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1196 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1465 = getelementptr inbounds %struct.scheme, %struct.scheme* %1196, i32 0, i32 58
  %1197 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1465, align 8
  %mk_counted_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1197, i32 0, i32 9
  %1198 = load %struct.cell* (%struct.scheme*, i8*, i32)*, %struct.cell* (%struct.scheme*, i8*, i32)** %mk_counted_string, align 8
  %1199 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1200 = load i8*, i8** %data1440, align 8
  %1201 = load i32, i32* %char_cnt, align 4
  %call1466 = call %struct.cell* %1198(%struct.scheme* %1199, i8* %1200, i32 %1201)
  %1202 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL1467 = getelementptr inbounds %struct.scheme, %struct.scheme* %1202, i32 0, i32 17
  %1203 = load %struct.cell*, %struct.cell** %NIL1467, align 8
  %call1468 = call %struct.cell* %1194(%struct.scheme* %1195, %struct.cell* %call1466, %struct.cell* %1203)
  %call1469 = call %struct.cell* %1184(%struct.scheme* %1185, %struct.cell* %call1462, %struct.cell* %call1468)
  %call1470 = call %struct.cell* %1174(%struct.scheme* %1175, %struct.cell* %call1455, %struct.cell* %call1469)
  store %struct.cell* %call1470, %struct.cell** %temp_val1449, align 8
  %1204 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1471 = getelementptr inbounds %struct.scheme, %struct.scheme* %1204, i32 0, i32 58
  %1205 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1471, align 8
  %cons1472 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1205, i32 0, i32 1
  %1206 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1472, align 8
  %1207 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1208 = load %struct.cell*, %struct.cell** %temp_val1449, align 8
  %1209 = load %struct.cell*, %struct.cell** %return_val, align 8
  %call1473 = call %struct.cell* %1206(%struct.scheme* %1207, %struct.cell* %1208, %struct.cell* %1209)
  store %struct.cell* %call1473, %struct.cell** %return_val, align 8
  %1210 = load i8*, i8** %data1440, align 8
  call void @g_free(i8* %1210)
  br label %if.end.1474

if.end.1474:                                      ; preds = %if.else.1434, %if.then.1432
  br label %sw.epilog.1479

sw.bb.1475:                                       ; preds = %for.body.1096
  %1211 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call1476 = call %struct.cell* @foreign_error(%struct.scheme* %1211, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.146, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call1476, %struct.cell** %retval
  br label %return

sw.default.1477:                                  ; preds = %for.body.1096
  %1212 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call1478 = call %struct.cell* @foreign_error(%struct.scheme* %1212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.147, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call1478, %struct.cell** %retval
  br label %return

sw.epilog.1479:                                   ; preds = %if.end.1474, %for.end.1419, %sw.bb.1332, %for.end.1328, %for.end.1291, %for.end.1258, %for.end.1224, %for.end.1190, %if.end.1157, %sw.bb.1138, %sw.bb.1125, %sw.bb.1112, %sw.bb.1101
  br label %for.inc.1480

for.inc.1480:                                     ; preds = %sw.epilog.1479
  %1213 = load i32, i32* %i, align 4
  %dec1481 = add nsw i32 %1213, -1
  store i32 %dec1481, i32* %i, align 4
  br label %for.cond.1093

for.end.1482:                                     ; preds = %for.cond.1093
  br label %sw.bb.1483

sw.bb.1483:                                       ; preds = %if.end.1048, %if.end.1048, %for.end.1482
  br label %sw.epilog.1484

sw.epilog.1484:                                   ; preds = %if.end.1048, %sw.bb.1483
  %1214 = load %struct.cell*, %struct.cell** %return_val, align 8
  %1215 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL1485 = getelementptr inbounds %struct.scheme, %struct.scheme* %1215, i32 0, i32 17
  %1216 = load %struct.cell*, %struct.cell** %NIL1485, align 8
  %cmp1486 = icmp eq %struct.cell* %1214, %1216
  br i1 %cmp1486, label %if.then.1488, label %if.end.1505

if.then.1488:                                     ; preds = %sw.epilog.1484
  %1217 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %arrayidx1489 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1217, i64 0
  %data1490 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1489, i32 0, i32 1
  %d_status1491 = bitcast %union._GimpParamData* %data1490 to i32*
  %1218 = load i32, i32* %d_status1491, align 4
  %cmp1492 = icmp eq i32 %1218, 3
  br i1 %cmp1492, label %if.then.1494, label %if.else.1499

if.then.1494:                                     ; preds = %if.then.1488
  %1219 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1495 = getelementptr inbounds %struct.scheme, %struct.scheme* %1219, i32 0, i32 58
  %1220 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1495, align 8
  %cons1496 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1220, i32 0, i32 1
  %1221 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1496, align 8
  %1222 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1223 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %T = getelementptr inbounds %struct.scheme, %struct.scheme* %1223, i32 0, i32 19
  %1224 = load %struct.cell*, %struct.cell** %T, align 8
  %1225 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL1497 = getelementptr inbounds %struct.scheme, %struct.scheme* %1225, i32 0, i32 17
  %1226 = load %struct.cell*, %struct.cell** %NIL1497, align 8
  %call1498 = call %struct.cell* %1221(%struct.scheme* %1222, %struct.cell* %1224, %struct.cell* %1226)
  store %struct.cell* %call1498, %struct.cell** %return_val, align 8
  br label %if.end.1504

if.else.1499:                                     ; preds = %if.then.1488
  %1227 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1500 = getelementptr inbounds %struct.scheme, %struct.scheme* %1227, i32 0, i32 58
  %1228 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1500, align 8
  %cons1501 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1228, i32 0, i32 1
  %1229 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons1501, align 8
  %1230 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %1231 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %1231, i32 0, i32 21
  %1232 = load %struct.cell*, %struct.cell** %F, align 8
  %1233 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL1502 = getelementptr inbounds %struct.scheme, %struct.scheme* %1233, i32 0, i32 17
  %1234 = load %struct.cell*, %struct.cell** %NIL1502, align 8
  %call1503 = call %struct.cell* %1229(%struct.scheme* %1230, %struct.cell* %1232, %struct.cell* %1234)
  store %struct.cell* %call1503, %struct.cell** %return_val, align 8
  br label %if.end.1504

if.end.1504:                                      ; preds = %if.else.1499, %if.then.1494
  br label %if.end.1505

if.end.1505:                                      ; preds = %if.end.1504, %sw.epilog.1484
  %1235 = load i8*, i8** %proc_name, align 8
  call void @g_free(i8* %1235)
  %1236 = load %struct._GimpParam*, %struct._GimpParam** %values, align 8
  %1237 = load i32, i32* %nvalues, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %1236, i32 %1237)
  %1238 = load %struct._GimpParam*, %struct._GimpParam** %args, align 8
  %1239 = load i32, i32* %nparams, align 4
  call void @script_fu_marshal_destroy_args(%struct._GimpParam* %1238, i32 %1239)
  %1240 = load i8*, i8** %proc_blurb, align 8
  call void @g_free(i8* %1240)
  %1241 = load i8*, i8** %proc_help, align 8
  call void @g_free(i8* %1241)
  %1242 = load i8*, i8** %proc_author, align 8
  call void @g_free(i8* %1242)
  %1243 = load i8*, i8** %proc_copyright, align 8
  call void @g_free(i8* %1243)
  %1244 = load i8*, i8** %proc_date, align 8
  call void @g_free(i8* %1244)
  %1245 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %1246 = bitcast %struct._GimpParamDef* %1245 to i8*
  call void @g_free(i8* %1246)
  %1247 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %1248 = bitcast %struct._GimpParamDef* %1247 to i8*
  call void @g_free(i8* %1248)
  %call1506 = call i32 @script_fu_server_get_mode()
  %tobool1507 = icmp ne i32 %call1506, 0
  br i1 %tobool1507, label %if.then.1508, label %if.end.1509

if.then.1508:                                     ; preds = %if.end.1505
  call void @script_fu_server_listen(i32 10)
  br label %if.end.1509

if.end.1509:                                      ; preds = %if.then.1508, %if.end.1505
  %1249 = load %struct.cell*, %struct.cell** %return_val, align 8
  store %struct.cell* %1249, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.1509, %sw.default.1477, %sw.bb.1475, %if.end.1088, %if.end.1068, %if.then.1043, %if.else.1035, %sw.default, %sw.bb.1016, %if.then.795, %if.then.752, %if.then.521, %if.then.494, %if.then.447, %if.then.420, %if.then.372, %if.then.345, %if.then.297, %if.then.270, %if.then.222, %if.then.198, %if.then.39, %if.then.16, %if.then
  %1250 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %1250
}

declare i32 @gimp_procedural_db_query(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8***) #1

declare i32 @gimp_procedural_db_proc_info(i8*, i8**, i8**, i8**, i8**, i8**, i32*, i32*, i32*, %struct._GimpParamDef**, %struct._GimpParamDef**) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_destroy_paramdefs(%struct._GimpParamDef*, i32) #1

declare %struct.cell* @script_fu_add_script(%struct.scheme*, %struct.cell*) #1

declare %struct.cell* @script_fu_add_menu(%struct.scheme*, %struct.cell*) #1

declare void @script_fu_server_quit() #1

declare void @scheme_deinit(%struct.scheme*) #1

declare %struct.cell* @foreign_error(%struct.scheme*, i8*, %struct.cell*) #1

declare void @script_fu_interface_report_cc(i8*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_rgb_parse_css(%struct._GimpRGB*, i8*, i32) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare %struct._GimpParam* @gimp_run_procedure2(i8*, i32*, i32, %struct._GimpParam*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @g_utf8_strlen(i8*, i64) #2

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_marshal_destroy_args(%struct._GimpParam* %params, i32 %n_params) #0 {
entry:
  %params.addr = alloca %struct._GimpParam*, align 8
  %n_params.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n_params.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 %idxprom
  %type = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb.1
    i32 6, label %sw.bb.4
    i32 7, label %sw.bb.8
    i32 8, label %sw.bb.12
    i32 9, label %sw.bb.16
    i32 18, label %sw.bb.20
    i32 10, label %sw.bb.24
    i32 12, label %sw.bb.24
    i32 13, label %sw.bb.24
    i32 11, label %sw.bb.24
    i32 14, label %sw.bb.24
    i32 15, label %sw.bb.24
    i32 16, label %sw.bb.24
    i32 17, label %sw.bb.24
    i32 19, label %sw.bb.24
    i32 20, label %sw.bb.24
    i32 21, label %sw.bb.24
    i32 22, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 %idxprom2
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data to i32**
  %7 = load i32*, i32** %d_int32array, align 8
  %8 = bitcast i32* %7 to i8*
  call void @g_free(i8* %8)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 %idxprom5
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int16array = bitcast %union._GimpParamData* %data7 to i16**
  %11 = load i16*, i16** %d_int16array, align 8
  %12 = bitcast i16* %11 to i8*
  call void @g_free(i8* %12)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 %idxprom9
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data11 to i8**
  %15 = load i8*, i8** %d_int8array, align 8
  call void @g_free(i8* %15)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 %idxprom13
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data15 to double**
  %18 = load double*, double** %d_floatarray, align 8
  %19 = bitcast double* %18 to i8*
  call void @g_free(i8* %19)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 %idxprom17
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data19 to i8***
  %22 = load i8**, i8*** %d_stringarray, align 8
  %23 = bitcast i8** %22 to i8*
  call void @g_free(i8* %23)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 %idxprom21
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_colorarray = bitcast %union._GimpParamData* %data23 to %struct._GimpRGB**
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray, align 8
  %27 = bitcast %struct._GimpRGB* %26 to i8*
  call void @g_free(i8* %27)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.24, %sw.bb.20, %sw.bb.16, %sw.bb.12, %sw.bb.8, %sw.bb.4, %sw.bb.1, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %30 = bitcast %struct._GimpParam* %29 to i8*
  call void @g_free(i8* %30)
  ret void
}

declare i32 @script_fu_server_get_mode() #1

declare void @script_fu_server_listen(i32) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
