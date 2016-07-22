; ModuleID = './syslogmodule.bc'
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }

@syslogmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([7 x %struct.PyMethodDef], [7 x %struct.PyMethodDef]* @syslog_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [10 x i8] c"LOG_EMERG\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"LOG_ALERT\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"LOG_CRIT\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"LOG_ERR\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"LOG_WARNING\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"LOG_NOTICE\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LOG_INFO\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"LOG_DEBUG\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"LOG_PID\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"LOG_CONS\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"LOG_NDELAY\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"LOG_ODELAY\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"LOG_NOWAIT\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"LOG_PERROR\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"LOG_KERN\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"LOG_USER\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"LOG_MAIL\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"LOG_DAEMON\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"LOG_AUTH\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"LOG_LPR\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL0\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL1\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL2\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL3\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL4\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL5\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL6\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL7\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"LOG_SYSLOG\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"LOG_CRON\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"LOG_UUCP\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"LOG_NEWS\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"LOG_AUTHPRIV\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@syslog_methods = internal global [7 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @syslog_openlog to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @syslog_closelog, i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @syslog_syslog, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @syslog_setlogmask, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @syslog_log_mask, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @syslog_log_upto, i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [8 x i8] c"openlog\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"closelog\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"setlogmask\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"LOG_MASK\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"LOG_UPTO\00", align 1
@syslog_openlog.keywords = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* null], align 16
@.str.39 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"logoption\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"facility\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"|Ull:openlog\00", align 1
@S_ident_o = internal global %struct._object* null, align 8
@S_log_open = internal global i8 0, align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"iU;[priority,] message string\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"U;[priority,] message string\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"l;mask for priority\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"l:LOG_MASK\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"l:LOG_UPTO\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_syslog() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @syslogmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i32 @PyModule_AddIntConstant(%struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 0)
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call2 = call i32 @PyModule_AddIntConstant(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i64 1)
  %3 = load %struct._object*, %struct._object** %m, align 8
  %call3 = call i32 @PyModule_AddIntConstant(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 2)
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call4 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 3)
  %5 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i64 4)
  %6 = load %struct._object*, %struct._object** %m, align 8
  %call6 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 5)
  %7 = load %struct._object*, %struct._object** %m, align 8
  %call7 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i64 6)
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 7)
  %9 = load %struct._object*, %struct._object** %m, align 8
  %call9 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i64 1)
  %10 = load %struct._object*, %struct._object** %m, align 8
  %call10 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i64 2)
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call11 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 8)
  %12 = load %struct._object*, %struct._object** %m, align 8
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i64 4)
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i64 16)
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 32)
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64 0)
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i64 8)
  %17 = load %struct._object*, %struct._object** %m, align 8
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64 16)
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i64 24)
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call19 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i64 32)
  %20 = load %struct._object*, %struct._object** %m, align 8
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i64 48)
  %21 = load %struct._object*, %struct._object** %m, align 8
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i64 128)
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call22 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i64 136)
  %23 = load %struct._object*, %struct._object** %m, align 8
  %call23 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i64 144)
  %24 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i64 152)
  %25 = load %struct._object*, %struct._object** %m, align 8
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i64 160)
  %26 = load %struct._object*, %struct._object** %m, align 8
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i64 168)
  %27 = load %struct._object*, %struct._object** %m, align 8
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i64 176)
  %28 = load %struct._object*, %struct._object** %m, align 8
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i64 184)
  %29 = load %struct._object*, %struct._object** %m, align 8
  %call29 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i64 40)
  %30 = load %struct._object*, %struct._object** %m, align 8
  %call30 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i64 72)
  %31 = load %struct._object*, %struct._object** %m, align 8
  %call31 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i64 64)
  %32 = load %struct._object*, %struct._object** %m, align 8
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64 56)
  %33 = load %struct._object*, %struct._object** %m, align 8
  %call33 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i64 80)
  %34 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_openlog(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %logopt = alloca i64, align 8
  %facility = alloca i64, align 8
  %new_S_ident_o = alloca %struct._object*, align 8
  %ident = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i64 0, i64* %logopt, align 8
  store i64 8, i64* %facility, align 8
  store %struct._object* null, %struct._object** %new_S_ident_o, align 8
  store i8* null, i8** %ident, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @syslog_openlog.keywords, i32 0, i32 0), %struct._object** %new_S_ident_o, i64* %logopt, i64* %facility)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %new_S_ident_o, align 8
  %tobool1 = icmp ne %struct._object* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %new_S_ident_o, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct._object*, %struct._object** %new_S_ident_o, align 8
  %tobool4 = icmp ne %struct._object* %5, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @syslog_get_argv()
  store %struct._object* %call6, %struct._object** %new_S_ident_o, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %6 = load %struct._object*, %struct._object** @S_ident_o, align 8
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %7, null
  br i1 %cmp, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt10, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt10, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.9
  br label %if.end.13

if.else:                                          ; preds = %do.body.9
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %do.body
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  %15 = load %struct._object*, %struct._object** %new_S_ident_o, align 8
  store %struct._object* %15, %struct._object** @S_ident_o, align 8
  %16 = load %struct._object*, %struct._object** @S_ident_o, align 8
  %tobool16 = icmp ne %struct._object* %16, null
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %do.end.15
  %17 = load %struct._object*, %struct._object** @S_ident_o, align 8
  %call18 = call i8* @PyUnicode_AsUTF8(%struct._object* %17)
  store i8* %call18, i8** %ident, align 8
  %18 = load i8*, i8** %ident, align 8
  %cmp19 = icmp eq i8* %18, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %do.end.15
  %19 = load i8*, i8** %ident, align 8
  %20 = load i64, i64* %logopt, align 8
  %conv = trunc i64 %20 to i32
  %21 = load i64, i64* %facility, align 8
  %conv23 = trunc i64 %21 to i32
  call void @openlog(i8* %19, i32 %conv, i32 %conv23)
  store i8 1, i8* @S_log_open, align 1
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc24 = add i64 %22, 1
  store i64 %inc24, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.20, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_closelog(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load i8, i8* @S_log_open, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  call void @closelog()
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._object*, %struct._object** @S_ident_o, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** @S_ident_o, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  store i8 0, i8* @S_log_open, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %do.end.6, %entry
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_syslog(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %message_object = alloca %struct._object*, align 8
  %message = alloca i8*, align 8
  %priority = alloca i32, align 4
  %openargs = alloca %struct._object*, align 8
  %openlog_ret = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 6, i32* %priority, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i32* %priority, %struct._object** %message_object)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i32 0, i32 0), %struct._object** %message_object)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** %message_object, align 8
  %call5 = call i8* @PyUnicode_AsUTF8(%struct._object* %2)
  store i8* %call5, i8** %message, align 8
  %3 = load i8*, i8** %message, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %4 = load i8, i8* @S_log_open, align 1
  %tobool8 = icmp ne i8 %4, 0
  br i1 %tobool8, label %if.end.34, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %call10 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call10, %struct._object** %openargs, align 8
  %tobool11 = icmp ne %struct._object* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.end.33

if.then.12:                                       ; preds = %if.then.9
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %6 = load %struct._object*, %struct._object** %openargs, align 8
  %call13 = call %struct._object* @syslog_openlog(%struct._object* %5, %struct._object* %6, %struct._object* null)
  store %struct._object* %call13, %struct._object** %openlog_ret, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** %openlog_ret, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp14 = icmp ne %struct._object* %8, null
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %do.body
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.19

if.else:                                          ; preds = %do.body.16
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %do.body
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %16 = load %struct._object*, %struct._object** %openargs, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp23, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %18, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %21(%struct._object* %22)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %if.then.9
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.7
  %call35 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call35, %struct._ts** %_save, align 8
  %23 = load i32, i32* %priority, align 4
  %24 = load i8*, i8** %message, align 8
  call void (i32, i8*, ...) @syslog(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %24)
  %25 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %25)
  %26 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.6, %if.then.3
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_setlogmask(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %maskpri = alloca i64, align 8
  %omaskpri = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i64* %maskpri)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %maskpri, align 8
  %conv = trunc i64 %1 to i32
  %call1 = call i32 @setlogmask(i32 %conv) #3
  %conv2 = sext i32 %call1 to i64
  store i64 %conv2, i64* %omaskpri, align 8
  %2 = load i64, i64* %omaskpri, align 8
  %call3 = call %struct._object* @PyLong_FromLong(i64 %2)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_log_mask(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %mask = alloca i64, align 8
  %pri = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i64* %pri)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pri, align 8
  %sh_prom = trunc i64 %1 to i32
  %shl = shl i32 1, %sh_prom
  %conv = sext i32 %shl to i64
  store i64 %conv, i64* %mask, align 8
  %2 = load i64, i64* %mask, align 8
  %call1 = call %struct._object* @PyLong_FromLong(i64 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_log_upto(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %mask = alloca i64, align 8
  %pri = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i64* %pri)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pri, align 8
  %add = add i64 %1, 1
  %sh_prom = trunc i64 %add to i32
  %shl = shl i32 1, %sh_prom
  %sub = sub i32 %shl, 1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %mask, align 8
  %2 = load i64, i64* %mask, align 8
  %call1 = call %struct._object* @PyLong_FromLong(i64 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_get_argv() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %argv_len = alloca i64, align 8
  %scriptlen = alloca i64, align 8
  %scriptobj = alloca %struct._object*, align 8
  %slash = alloca i64, align 8
  %argv = alloca %struct._object*, align 8
  %call = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %argv, align 8
  %0 = load %struct._object*, %struct._object** %argv, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %argv, align 8
  %call1 = call i64 @PyList_Size(%struct._object* %1)
  store i64 %call1, i64* %argv_len, align 8
  %2 = load i64, i64* %argv_len, align 8
  %cmp2 = icmp eq i64 %2, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @PyErr_Clear()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* %argv_len, align 8
  %cmp5 = icmp eq i64 %3, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %argv, align 8
  %call8 = call %struct._object* @PyList_GetItem(%struct._object* %4, i64 0)
  store %struct._object* %call8, %struct._object** %scriptobj, align 8
  %5 = load %struct._object*, %struct._object** %scriptobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 268435456
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** %scriptobj, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 1
  %10 = load i64, i64* %length, align 8
  store i64 %10, i64* %scriptlen, align 8
  %11 = load i64, i64* %scriptlen, align 8
  %cmp12 = icmp eq i64 %11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %12 = load %struct._object*, %struct._object** %scriptobj, align 8
  %13 = load i64, i64* %scriptlen, align 8
  %call15 = call i64 @PyUnicode_FindChar(%struct._object* %12, i32 47, i64 0, i64 %13, i32 -1)
  store i64 %call15, i64* %slash, align 8
  %14 = load i64, i64* %slash, align 8
  %cmp16 = icmp eq i64 %14, -2
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %15 = load i64, i64* %slash, align 8
  %cmp19 = icmp ne i64 %15, -1
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  %16 = load %struct._object*, %struct._object** %scriptobj, align 8
  %17 = load i64, i64* %slash, align 8
  %18 = load i64, i64* %scriptlen, align 8
  %call21 = call %struct._object* @PyUnicode_Substring(%struct._object* %16, i64 %17, i64 %18)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.18
  %19 = load %struct._object*, %struct._object** %scriptobj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %21 = load %struct._object*, %struct._object** %scriptobj, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.20, %if.then.17, %if.then.13, %if.then.10, %if.then.6, %if.then.3, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare void @openlog(i8*, i32, i32) #1

declare %struct._object* @PySys_GetObject(i8*) #1

declare i64 @PyList_Size(%struct._object*) #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #1

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #1

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

declare void @closelog() #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare void @syslog(i32, i8*, ...) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind
declare i32 @setlogmask(i32) #2

declare %struct._object* @PyLong_FromLong(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
