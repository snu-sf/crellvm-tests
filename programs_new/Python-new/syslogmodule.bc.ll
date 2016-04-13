; ModuleID = 'irs-onlybc/syslogmodule.bc'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !538
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !538
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !368, metadata !539), !dbg !540
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @syslogmodule, i32 1013), !dbg !541
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !542, !tbaa !543
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !547, !tbaa !543
  %cmp = icmp eq %struct._object* %1, null, !dbg !549
  br i1 %cmp, label %if.then, label %if.end, !dbg !550

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !551
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !551

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !552, !tbaa !543
  %call1 = call i32 @PyModule_AddIntConstant(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 0), !dbg !553
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !554, !tbaa !543
  %call2 = call i32 @PyModule_AddIntConstant(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i64 1), !dbg !555
  %4 = load %struct._object*, %struct._object** %m, align 8, !dbg !556, !tbaa !543
  %call3 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 2), !dbg !557
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !558, !tbaa !543
  %call4 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 3), !dbg !559
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !560, !tbaa !543
  %call5 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i64 4), !dbg !561
  %7 = load %struct._object*, %struct._object** %m, align 8, !dbg !562, !tbaa !543
  %call6 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 5), !dbg !563
  %8 = load %struct._object*, %struct._object** %m, align 8, !dbg !564, !tbaa !543
  %call7 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i64 6), !dbg !565
  %9 = load %struct._object*, %struct._object** %m, align 8, !dbg !566, !tbaa !543
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 7), !dbg !567
  %10 = load %struct._object*, %struct._object** %m, align 8, !dbg !568, !tbaa !543
  %call9 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i64 1), !dbg !569
  %11 = load %struct._object*, %struct._object** %m, align 8, !dbg !570, !tbaa !543
  %call10 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i64 2), !dbg !571
  %12 = load %struct._object*, %struct._object** %m, align 8, !dbg !572, !tbaa !543
  %call11 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 8), !dbg !573
  %13 = load %struct._object*, %struct._object** %m, align 8, !dbg !574, !tbaa !543
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i64 4), !dbg !575
  %14 = load %struct._object*, %struct._object** %m, align 8, !dbg !576, !tbaa !543
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i64 16), !dbg !577
  %15 = load %struct._object*, %struct._object** %m, align 8, !dbg !578, !tbaa !543
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 32), !dbg !579
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !580, !tbaa !543
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64 0), !dbg !581
  %17 = load %struct._object*, %struct._object** %m, align 8, !dbg !582, !tbaa !543
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i64 8), !dbg !583
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !584, !tbaa !543
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64 16), !dbg !585
  %19 = load %struct._object*, %struct._object** %m, align 8, !dbg !586, !tbaa !543
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i64 24), !dbg !587
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !588, !tbaa !543
  %call19 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i64 32), !dbg !589
  %21 = load %struct._object*, %struct._object** %m, align 8, !dbg !590, !tbaa !543
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i64 48), !dbg !591
  %22 = load %struct._object*, %struct._object** %m, align 8, !dbg !592, !tbaa !543
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i64 128), !dbg !593
  %23 = load %struct._object*, %struct._object** %m, align 8, !dbg !594, !tbaa !543
  %call22 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i64 136), !dbg !595
  %24 = load %struct._object*, %struct._object** %m, align 8, !dbg !596, !tbaa !543
  %call23 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i64 144), !dbg !597
  %25 = load %struct._object*, %struct._object** %m, align 8, !dbg !598, !tbaa !543
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i64 152), !dbg !599
  %26 = load %struct._object*, %struct._object** %m, align 8, !dbg !600, !tbaa !543
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i64 160), !dbg !601
  %27 = load %struct._object*, %struct._object** %m, align 8, !dbg !602, !tbaa !543
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i64 168), !dbg !603
  %28 = load %struct._object*, %struct._object** %m, align 8, !dbg !604, !tbaa !543
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i64 176), !dbg !605
  %29 = load %struct._object*, %struct._object** %m, align 8, !dbg !606, !tbaa !543
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i64 184), !dbg !607
  %30 = load %struct._object*, %struct._object** %m, align 8, !dbg !608, !tbaa !543
  %call29 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i64 40), !dbg !609
  %31 = load %struct._object*, %struct._object** %m, align 8, !dbg !610, !tbaa !543
  %call30 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i64 72), !dbg !611
  %32 = load %struct._object*, %struct._object** %m, align 8, !dbg !612, !tbaa !543
  %call31 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i64 64), !dbg !613
  %33 = load %struct._object*, %struct._object** %m, align 8, !dbg !614, !tbaa !543
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64 56), !dbg !615
  %34 = load %struct._object*, %struct._object** %m, align 8, !dbg !616, !tbaa !543
  %call33 = call i32 @PyModule_AddIntConstant(%struct._object* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i64 80), !dbg !617
  %35 = load %struct._object*, %struct._object** %m, align 8, !dbg !618, !tbaa !543
  store %struct._object* %35, %struct._object** %retval, !dbg !619
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !619

cleanup:                                          ; preds = %if.end, %if.then
  %36 = bitcast %struct._object** %m to i8*, !dbg !620
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !620
  %37 = load %struct._object*, %struct._object** %retval, !dbg !620
  ret %struct._object* %37, !dbg !620
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !371, metadata !539), !dbg !621
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !372, metadata !539), !dbg !622
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !373, metadata !539), !dbg !623
  %0 = bitcast i64* %logopt to i8*, !dbg !624
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !624
  call void @llvm.dbg.declare(metadata i64* %logopt, metadata !374, metadata !539), !dbg !625
  store i64 0, i64* %logopt, align 8, !dbg !625, !tbaa !626
  %1 = bitcast i64* %facility to i8*, !dbg !628
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !628
  call void @llvm.dbg.declare(metadata i64* %facility, metadata !375, metadata !539), !dbg !629
  store i64 8, i64* %facility, align 8, !dbg !629, !tbaa !626
  %2 = bitcast %struct._object** %new_S_ident_o to i8*, !dbg !630
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !630
  call void @llvm.dbg.declare(metadata %struct._object** %new_S_ident_o, metadata !376, metadata !539), !dbg !631
  store %struct._object* null, %struct._object** %new_S_ident_o, align 8, !dbg !631, !tbaa !543
  %3 = bitcast i8** %ident to i8*, !dbg !632
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !632
  call void @llvm.dbg.declare(metadata i8** %ident, metadata !377, metadata !539), !dbg !633
  store i8* null, i8** %ident, align 8, !dbg !633, !tbaa !543
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !634, !tbaa !543
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !636, !tbaa !543
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %4, %struct._object* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @syslog_openlog.keywords, i32 0, i32 0), %struct._object** %new_S_ident_o, i64* %logopt, i64* %facility), !dbg !637
  %tobool = icmp ne i32 %call, 0, !dbg !637
  br i1 %tobool, label %if.end, label %if.then, !dbg !638

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !639
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !639

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %new_S_ident_o, align 8, !dbg !640, !tbaa !543
  %tobool1 = icmp ne %struct._object* %6, null, !dbg !640
  br i1 %tobool1, label %if.then.2, label %if.end.3, !dbg !642

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %new_S_ident_o, align 8, !dbg !643, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !645
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !646, !tbaa !647
  %inc = add i64 %8, 1, !dbg !646
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !646, !tbaa !647
  br label %if.end.3, !dbg !649

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load %struct._object*, %struct._object** %new_S_ident_o, align 8, !dbg !650, !tbaa !543
  %tobool4 = icmp ne %struct._object* %9, null, !dbg !650
  br i1 %tobool4, label %if.end.7, label %if.then.5, !dbg !652

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @syslog_get_argv(), !dbg !653
  store %struct._object* %call6, %struct._object** %new_S_ident_o, align 8, !dbg !655, !tbaa !543
  br label %if.end.7, !dbg !656

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body, !dbg !657

do.body:                                          ; preds = %if.end.7
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !658
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !658
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !378, metadata !539), !dbg !660
  %11 = load %struct._object*, %struct._object** @S_ident_o, align 8, !dbg !661, !tbaa !543
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !660, !tbaa !543
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !662, !tbaa !543
  %cmp = icmp ne %struct._object* %12, null, !dbg !663
  br i1 %cmp, label %if.then.8, label %if.end.14, !dbg !664

if.then.8:                                        ; preds = %do.body
  br label %do.body.9, !dbg !665

do.body.9:                                        ; preds = %if.then.8
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !667
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !667
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !380, metadata !539), !dbg !669
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !670, !tbaa !543
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !669, !tbaa !543
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !671, !tbaa !543
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !673
  %16 = load i64, i64* %ob_refcnt10, align 8, !dbg !674, !tbaa !647
  %dec = add i64 %16, -1, !dbg !674
  store i64 %dec, i64* %ob_refcnt10, align 8, !dbg !674, !tbaa !647
  %cmp11 = icmp ne i64 %dec, 0, !dbg !675
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !676

if.then.12:                                       ; preds = %do.body.9
  br label %if.end.13, !dbg !677

if.else:                                          ; preds = %do.body.9
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !679, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !681
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !681, !tbaa !682
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !683
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !683, !tbaa !684
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !688, !tbaa !543
  call void %19(%struct._object* %20), !dbg !689
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !690
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !690
  br label %do.cond, !dbg !692

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !693

do.end:                                           ; preds = %do.cond
  br label %if.end.14, !dbg !695

if.end.14:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !697
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !697
  br label %do.cond.15, !dbg !700

do.cond.15:                                       ; preds = %if.end.14
  br label %do.end.16, !dbg !701

do.end.16:                                        ; preds = %do.cond.15
  %23 = load %struct._object*, %struct._object** %new_S_ident_o, align 8, !dbg !703, !tbaa !543
  store %struct._object* %23, %struct._object** @S_ident_o, align 8, !dbg !704, !tbaa !543
  %24 = load %struct._object*, %struct._object** @S_ident_o, align 8, !dbg !705, !tbaa !543
  %tobool17 = icmp ne %struct._object* %24, null, !dbg !705
  br i1 %tobool17, label %if.then.18, label %if.end.23, !dbg !707

if.then.18:                                       ; preds = %do.end.16
  %25 = load %struct._object*, %struct._object** @S_ident_o, align 8, !dbg !708, !tbaa !543
  %call19 = call i8* @PyUnicode_AsUTF8(%struct._object* %25), !dbg !710
  store i8* %call19, i8** %ident, align 8, !dbg !711, !tbaa !543
  %26 = load i8*, i8** %ident, align 8, !dbg !712, !tbaa !543
  %cmp20 = icmp eq i8* %26, null, !dbg !714
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !715

if.then.21:                                       ; preds = %if.then.18
  store %struct._object* null, %struct._object** %retval, !dbg !716
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !716

if.end.22:                                        ; preds = %if.then.18
  br label %if.end.23, !dbg !717

if.end.23:                                        ; preds = %if.end.22, %do.end.16
  %27 = load i8*, i8** %ident, align 8, !dbg !718, !tbaa !543
  %28 = load i64, i64* %logopt, align 8, !dbg !719, !tbaa !626
  %conv = trunc i64 %28 to i32, !dbg !719
  %29 = load i64, i64* %facility, align 8, !dbg !720, !tbaa !626
  %conv24 = trunc i64 %29 to i32, !dbg !720
  call void @openlog(i8* %27, i32 %conv, i32 %conv24), !dbg !721
  store i8 1, i8* @S_log_open, align 1, !dbg !722, !tbaa !723
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !724, !tbaa !647
  %inc25 = add i64 %30, 1, !dbg !724
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !724, !tbaa !647
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !725
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !725

cleanup:                                          ; preds = %if.end.23, %if.then.21, %if.then
  %31 = bitcast i8** %ident to i8*, !dbg !726
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !726
  %32 = bitcast %struct._object** %new_S_ident_o to i8*, !dbg !726
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !726
  %33 = bitcast i64* %facility to i8*, !dbg !726
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !726
  %34 = bitcast i64* %logopt to i8*, !dbg !726
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !726
  %35 = load %struct._object*, %struct._object** %retval, !dbg !726
  ret %struct._object* %35, !dbg !726
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_closelog(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !392, metadata !539), !dbg !727
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !393, metadata !539), !dbg !728
  %0 = load i8, i8* @S_log_open, align 1, !dbg !729, !tbaa !723
  %tobool = icmp ne i8 %0, 0, !dbg !729
  br i1 %tobool, label %if.then, label %if.end.8, !dbg !730

if.then:                                          ; preds = %entry
  call void @closelog(), !dbg !731
  br label %do.body, !dbg !732

do.body:                                          ; preds = %if.then
  %1 = bitcast %struct._object** %_py_tmp to i8*, !dbg !733
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !733
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !394, metadata !539), !dbg !735
  %2 = load %struct._object*, %struct._object** @S_ident_o, align 8, !dbg !736, !tbaa !543
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !735, !tbaa !543
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !737, !tbaa !543
  %cmp = icmp ne %struct._object* %3, null, !dbg !738
  br i1 %cmp, label %if.then.1, label %if.end.5, !dbg !739

if.then.1:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** @S_ident_o, align 8, !dbg !740, !tbaa !543
  br label %do.body.2, !dbg !742

do.body.2:                                        ; preds = %if.then.1
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !743
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !398, metadata !539), !dbg !745
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !746, !tbaa !543
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !745, !tbaa !543
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !747, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !749
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !750, !tbaa !647
  %dec = add i64 %7, -1, !dbg !750
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !750, !tbaa !647
  %cmp3 = icmp ne i64 %dec, 0, !dbg !751
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !752

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !753

if.else:                                          ; preds = %do.body.2
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !755, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !757
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !757, !tbaa !682
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !758
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !758, !tbaa !684
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !759, !tbaa !543
  call void %10(%struct._object* %11), !dbg !760
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !761
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !761
  br label %do.cond, !dbg !763

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !764

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !766

if.end.5:                                         ; preds = %do.end, %do.body
  %13 = bitcast %struct._object** %_py_tmp to i8*, !dbg !768
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !768
  br label %do.end.7, !dbg !771

do.end.7:                                         ; preds = %if.end.5
  store i8 0, i8* @S_log_open, align 1, !dbg !772, !tbaa !723
  br label %if.end.8, !dbg !773

if.end.8:                                         ; preds = %do.end.7, %entry
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !774, !tbaa !647
  %inc = add i64 %14, 1, !dbg !774
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !774, !tbaa !647
  ret %struct._object* @_Py_NoneStruct, !dbg !775
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
  %cleanup.dest.slot = alloca i32
  %openargs = alloca %struct._object*, align 8
  %openlog_ret = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !404, metadata !539), !dbg !776
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !405, metadata !539), !dbg !777
  %0 = bitcast %struct._object** %message_object to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !778
  call void @llvm.dbg.declare(metadata %struct._object** %message_object, metadata !406, metadata !539), !dbg !779
  %1 = bitcast i8** %message to i8*, !dbg !780
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !780
  call void @llvm.dbg.declare(metadata i8** %message, metadata !407, metadata !539), !dbg !781
  %2 = bitcast i32* %priority to i8*, !dbg !782
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !782
  call void @llvm.dbg.declare(metadata i32* %priority, metadata !408, metadata !539), !dbg !783
  store i32 6, i32* %priority, align 4, !dbg !783, !tbaa !784
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !785, !tbaa !543
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i32* %priority, %struct._object** %message_object), !dbg !787
  %tobool = icmp ne i32 %call, 0, !dbg !787
  br i1 %tobool, label %if.end.4, label %if.then, !dbg !788

if.then:                                          ; preds = %entry
  call void @PyErr_Clear(), !dbg !789
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !791, !tbaa !543
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i32 0, i32 0), %struct._object** %message_object), !dbg !793
  %tobool2 = icmp ne i32 %call1, 0, !dbg !793
  br i1 %tobool2, label %if.end, label %if.then.3, !dbg !794

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !795
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !795

if.end:                                           ; preds = %if.then
  br label %if.end.4, !dbg !796

if.end.4:                                         ; preds = %if.end, %entry
  %5 = load %struct._object*, %struct._object** %message_object, align 8, !dbg !797, !tbaa !543
  %call5 = call i8* @PyUnicode_AsUTF8(%struct._object* %5), !dbg !798
  store i8* %call5, i8** %message, align 8, !dbg !799, !tbaa !543
  %6 = load i8*, i8** %message, align 8, !dbg !800, !tbaa !543
  %cmp = icmp eq i8* %6, null, !dbg !802
  br i1 %cmp, label %if.then.6, label %if.end.7, !dbg !803

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !804
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !804

if.end.7:                                         ; preds = %if.end.4
  %7 = load i8, i8* @S_log_open, align 1, !dbg !805, !tbaa !723
  %tobool8 = icmp ne i8 %7, 0, !dbg !805
  br i1 %tobool8, label %if.end.36, label %if.then.9, !dbg !806

if.then.9:                                        ; preds = %if.end.7
  %8 = bitcast %struct._object** %openargs to i8*, !dbg !807
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !807
  call void @llvm.dbg.declare(metadata %struct._object** %openargs, metadata !409, metadata !539), !dbg !808
  %call10 = call %struct._object* @PyTuple_New(i64 0), !dbg !809
  store %struct._object* %call10, %struct._object** %openargs, align 8, !dbg !810, !tbaa !543
  %tobool11 = icmp ne %struct._object* %call10, null, !dbg !810
  br i1 %tobool11, label %if.then.12, label %if.end.35, !dbg !811

if.then.12:                                       ; preds = %if.then.9
  %9 = bitcast %struct._object** %openlog_ret to i8*, !dbg !812
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !812
  call void @llvm.dbg.declare(metadata %struct._object** %openlog_ret, metadata !412, metadata !539), !dbg !813
  %10 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !814, !tbaa !543
  %11 = load %struct._object*, %struct._object** %openargs, align 8, !dbg !815, !tbaa !543
  %call13 = call %struct._object* @syslog_openlog(%struct._object* %10, %struct._object* %11, %struct._object* null), !dbg !816
  store %struct._object* %call13, %struct._object** %openlog_ret, align 8, !dbg !813, !tbaa !543
  br label %do.body, !dbg !817

do.body:                                          ; preds = %if.then.12
  %12 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !818
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !818
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !415, metadata !539), !dbg !820
  %13 = load %struct._object*, %struct._object** %openlog_ret, align 8, !dbg !821, !tbaa !543
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8, !dbg !820, !tbaa !543
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !822, !tbaa !543
  %cmp14 = icmp ne %struct._object* %14, null, !dbg !823
  br i1 %cmp14, label %if.then.15, label %if.end.20, !dbg !824

if.then.15:                                       ; preds = %do.body
  br label %do.body.16, !dbg !825

do.body.16:                                       ; preds = %if.then.15
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !827
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !827
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !417, metadata !539), !dbg !829
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !830, !tbaa !543
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !829, !tbaa !543
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !831, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !833
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !834, !tbaa !647
  %dec = add i64 %18, -1, !dbg !834
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !834, !tbaa !647
  %cmp17 = icmp ne i64 %dec, 0, !dbg !835
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !836

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.19, !dbg !837

if.else:                                          ; preds = %do.body.16
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !839, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !841
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !841, !tbaa !682
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !842
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !842, !tbaa !684
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !843, !tbaa !543
  call void %21(%struct._object* %22), !dbg !844
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !845
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !845
  br label %do.cond, !dbg !847

do.cond:                                          ; preds = %if.end.19
  br label %do.end, !dbg !848

do.end:                                           ; preds = %do.cond
  br label %if.end.20, !dbg !850

if.end.20:                                        ; preds = %do.end, %do.body
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !852
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !852
  br label %do.cond.21, !dbg !855

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !856

do.end.22:                                        ; preds = %do.cond.21
  br label %do.body.23, !dbg !858

do.body.23:                                       ; preds = %do.end.22
  %25 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !859
  call void @llvm.lifetime.start(i64 8, i8* %25) #1, !dbg !859
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !420, metadata !539), !dbg !861
  %26 = load %struct._object*, %struct._object** %openargs, align 8, !dbg !862, !tbaa !543
  store %struct._object* %26, %struct._object** %_py_decref_tmp24, align 8, !dbg !861, !tbaa !543
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !863, !tbaa !543
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !865
  %28 = load i64, i64* %ob_refcnt25, align 8, !dbg !866, !tbaa !647
  %dec26 = add i64 %28, -1, !dbg !866
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !866, !tbaa !647
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !867
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !868

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32, !dbg !869

if.else.29:                                       ; preds = %do.body.23
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !871, !tbaa !543
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !873
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !873, !tbaa !682
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !874
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !874, !tbaa !684
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !875, !tbaa !543
  call void %31(%struct._object* %32), !dbg !876
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %33 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !877
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !877
  br label %do.cond.33, !dbg !879

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !880

do.end.34:                                        ; preds = %do.cond.33
  %34 = bitcast %struct._object** %openlog_ret to i8*, !dbg !882
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !882
  br label %if.end.35, !dbg !883

if.end.35:                                        ; preds = %do.end.34, %if.then.9
  %35 = bitcast %struct._object** %openargs to i8*, !dbg !884
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !884
  br label %if.end.36, !dbg !885

if.end.36:                                        ; preds = %if.end.35, %if.end.7
  %36 = bitcast %struct._ts** %_save to i8*, !dbg !886
  call void @llvm.lifetime.start(i64 8, i8* %36) #1, !dbg !886
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !422, metadata !539), !dbg !887
  %call37 = call %struct._ts* @PyEval_SaveThread(), !dbg !888
  store %struct._ts* %call37, %struct._ts** %_save, align 8, !dbg !889, !tbaa !543
  %37 = load i32, i32* %priority, align 4, !dbg !890, !tbaa !784
  %38 = load i8*, i8** %message, align 8, !dbg !891, !tbaa !543
  call void (i32, i8*, ...) @syslog(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %38), !dbg !892
  %39 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !893, !tbaa !543
  call void @PyEval_RestoreThread(%struct._ts* %39), !dbg !894
  %40 = bitcast %struct._ts** %_save to i8*, !dbg !895
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !895
  %41 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !896, !tbaa !647
  %inc = add i64 %41, 1, !dbg !896
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !896, !tbaa !647
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !897
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !897

cleanup:                                          ; preds = %if.end.36, %if.then.6, %if.then.3
  %42 = bitcast i32* %priority to i8*, !dbg !898
  call void @llvm.lifetime.end(i64 4, i8* %42) #1, !dbg !898
  %43 = bitcast i8** %message to i8*, !dbg !898
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !898
  %44 = bitcast %struct._object** %message_object to i8*, !dbg !898
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !898
  %45 = load %struct._object*, %struct._object** %retval, !dbg !898
  ret %struct._object* %45, !dbg !898
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_setlogmask(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %maskpri = alloca i64, align 8
  %omaskpri = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !484, metadata !539), !dbg !899
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !485, metadata !539), !dbg !900
  %0 = bitcast i64* %maskpri to i8*, !dbg !901
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !901
  call void @llvm.dbg.declare(metadata i64* %maskpri, metadata !486, metadata !539), !dbg !902
  %1 = bitcast i64* %omaskpri to i8*, !dbg !901
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !901
  call void @llvm.dbg.declare(metadata i64* %omaskpri, metadata !487, metadata !539), !dbg !903
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !904, !tbaa !543
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i64* %maskpri), !dbg !906
  %tobool = icmp ne i32 %call, 0, !dbg !906
  br i1 %tobool, label %if.end, label %if.then, !dbg !907

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !908
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !908

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %maskpri, align 8, !dbg !909, !tbaa !626
  %conv = trunc i64 %3 to i32, !dbg !909
  %call1 = call i32 @setlogmask(i32 %conv) #1, !dbg !910
  %conv2 = sext i32 %call1 to i64, !dbg !910
  store i64 %conv2, i64* %omaskpri, align 8, !dbg !911, !tbaa !626
  %4 = load i64, i64* %omaskpri, align 8, !dbg !912, !tbaa !626
  %call3 = call %struct._object* @PyLong_FromLong(i64 %4), !dbg !913
  store %struct._object* %call3, %struct._object** %retval, !dbg !914
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !914

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i64* %omaskpri to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !915
  %6 = bitcast i64* %maskpri to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !915
  %7 = load %struct._object*, %struct._object** %retval, !dbg !915
  ret %struct._object* %7, !dbg !915
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_log_mask(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %mask = alloca i64, align 8
  %pri = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !490, metadata !539), !dbg !916
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !491, metadata !539), !dbg !917
  %0 = bitcast i64* %mask to i8*, !dbg !918
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !918
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !492, metadata !539), !dbg !919
  %1 = bitcast i64* %pri to i8*, !dbg !920
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !920
  call void @llvm.dbg.declare(metadata i64* %pri, metadata !493, metadata !539), !dbg !921
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !922, !tbaa !543
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i64* %pri), !dbg !924
  %tobool = icmp ne i32 %call, 0, !dbg !924
  br i1 %tobool, label %if.end, label %if.then, !dbg !925

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !926
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !926

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %pri, align 8, !dbg !927, !tbaa !626
  %sh_prom = trunc i64 %3 to i32, !dbg !928
  %shl = shl i32 1, %sh_prom, !dbg !928
  %conv = sext i32 %shl to i64, !dbg !929
  store i64 %conv, i64* %mask, align 8, !dbg !930, !tbaa !626
  %4 = load i64, i64* %mask, align 8, !dbg !931, !tbaa !626
  %call1 = call %struct._object* @PyLong_FromLong(i64 %4), !dbg !932
  store %struct._object* %call1, %struct._object** %retval, !dbg !933
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !933

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i64* %pri to i8*, !dbg !934
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !934
  %6 = bitcast i64* %mask to i8*, !dbg !934
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !934
  %7 = load %struct._object*, %struct._object** %retval, !dbg !934
  ret %struct._object* %7, !dbg !934
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_log_upto(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %mask = alloca i64, align 8
  %pri = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !496, metadata !539), !dbg !935
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !497, metadata !539), !dbg !936
  %0 = bitcast i64* %mask to i8*, !dbg !937
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !937
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !498, metadata !539), !dbg !938
  %1 = bitcast i64* %pri to i8*, !dbg !939
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !939
  call void @llvm.dbg.declare(metadata i64* %pri, metadata !499, metadata !539), !dbg !940
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !941, !tbaa !543
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i64* %pri), !dbg !943
  %tobool = icmp ne i32 %call, 0, !dbg !943
  br i1 %tobool, label %if.end, label %if.then, !dbg !944

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !945
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !945

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %pri, align 8, !dbg !946, !tbaa !626
  %add = add i64 %3, 1, !dbg !947
  %sh_prom = trunc i64 %add to i32, !dbg !948
  %shl = shl i32 1, %sh_prom, !dbg !948
  %sub = sub i32 %shl, 1, !dbg !949
  %conv = sext i32 %sub to i64, !dbg !950
  store i64 %conv, i64* %mask, align 8, !dbg !951, !tbaa !626
  %4 = load i64, i64* %mask, align 8, !dbg !952, !tbaa !626
  %call1 = call %struct._object* @PyLong_FromLong(i64 %4), !dbg !953
  store %struct._object* %call1, %struct._object** %retval, !dbg !954
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !954

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i64* %pri to i8*, !dbg !955
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !955
  %6 = bitcast i64* %mask to i8*, !dbg !955
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !955
  %7 = load %struct._object*, %struct._object** %retval, !dbg !955
  ret %struct._object* %7, !dbg !955
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @syslog_get_argv() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %argv_len = alloca i64, align 8
  %scriptlen = alloca i64, align 8
  %scriptobj = alloca %struct._object*, align 8
  %slash = alloca i64, align 8
  %argv = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i64* %argv_len to i8*, !dbg !956
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !956
  call void @llvm.dbg.declare(metadata i64* %argv_len, metadata !385, metadata !539), !dbg !957
  %1 = bitcast i64* %scriptlen to i8*, !dbg !956
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !956
  call void @llvm.dbg.declare(metadata i64* %scriptlen, metadata !386, metadata !539), !dbg !958
  %2 = bitcast %struct._object** %scriptobj to i8*, !dbg !959
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !959
  call void @llvm.dbg.declare(metadata %struct._object** %scriptobj, metadata !387, metadata !539), !dbg !960
  %3 = bitcast i64* %slash to i8*, !dbg !961
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !961
  call void @llvm.dbg.declare(metadata i64* %slash, metadata !388, metadata !539), !dbg !962
  %4 = bitcast %struct._object** %argv to i8*, !dbg !963
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !963
  call void @llvm.dbg.declare(metadata %struct._object** %argv, metadata !389, metadata !539), !dbg !964
  %call = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)), !dbg !965
  store %struct._object* %call, %struct._object** %argv, align 8, !dbg !964, !tbaa !543
  %5 = load %struct._object*, %struct._object** %argv, align 8, !dbg !966, !tbaa !543
  %cmp = icmp eq %struct._object* %5, null, !dbg !968
  br i1 %cmp, label %if.then, label %if.end, !dbg !969

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !970
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !970

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %argv, align 8, !dbg !972, !tbaa !543
  %call1 = call i64 @PyList_Size(%struct._object* %6), !dbg !973
  store i64 %call1, i64* %argv_len, align 8, !dbg !974, !tbaa !626
  %7 = load i64, i64* %argv_len, align 8, !dbg !975, !tbaa !626
  %cmp2 = icmp eq i64 %7, -1, !dbg !977
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !978

if.then.3:                                        ; preds = %if.end
  call void @PyErr_Clear(), !dbg !979
  store %struct._object* null, %struct._object** %retval, !dbg !981
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !981

if.end.4:                                         ; preds = %if.end
  %8 = load i64, i64* %argv_len, align 8, !dbg !982, !tbaa !626
  %cmp5 = icmp eq i64 %8, 0, !dbg !984
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !985

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !986
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !986

if.end.7:                                         ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %argv, align 8, !dbg !988, !tbaa !543
  %call8 = call %struct._object* @PyList_GetItem(%struct._object* %9, i64 0), !dbg !989
  store %struct._object* %call8, %struct._object** %scriptobj, align 8, !dbg !990, !tbaa !543
  %10 = load %struct._object*, %struct._object** %scriptobj, align 8, !dbg !991, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !993
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !993, !tbaa !682
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19, !dbg !994
  %12 = load i64, i64* %tp_flags, align 8, !dbg !994, !tbaa !995
  %and = and i64 %12, 268435456, !dbg !996
  %cmp9 = icmp ne i64 %and, 0, !dbg !997
  br i1 %cmp9, label %if.end.11, label %if.then.10, !dbg !998

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !999
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !999

if.end.11:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %scriptobj, align 8, !dbg !1001, !tbaa !543
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*, !dbg !1002
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 1, !dbg !1003
  %15 = load i64, i64* %length, align 8, !dbg !1003, !tbaa !1004
  store i64 %15, i64* %scriptlen, align 8, !dbg !1007, !tbaa !626
  %16 = load i64, i64* %scriptlen, align 8, !dbg !1008, !tbaa !626
  %cmp12 = icmp eq i64 %16, 0, !dbg !1010
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1011

if.then.13:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval, !dbg !1012
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1012

if.end.14:                                        ; preds = %if.end.11
  %17 = load %struct._object*, %struct._object** %scriptobj, align 8, !dbg !1014, !tbaa !543
  %18 = load i64, i64* %scriptlen, align 8, !dbg !1015, !tbaa !626
  %call15 = call i64 @PyUnicode_FindChar(%struct._object* %17, i32 47, i64 0, i64 %18, i32 -1), !dbg !1016
  store i64 %call15, i64* %slash, align 8, !dbg !1017, !tbaa !626
  %19 = load i64, i64* %slash, align 8, !dbg !1018, !tbaa !626
  %cmp16 = icmp eq i64 %19, -2, !dbg !1020
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !1021

if.then.17:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval, !dbg !1022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1022

if.end.18:                                        ; preds = %if.end.14
  %20 = load i64, i64* %slash, align 8, !dbg !1023, !tbaa !626
  %cmp19 = icmp ne i64 %20, -1, !dbg !1025
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !1026

if.then.20:                                       ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** %scriptobj, align 8, !dbg !1027, !tbaa !543
  %22 = load i64, i64* %slash, align 8, !dbg !1029, !tbaa !626
  %23 = load i64, i64* %scriptlen, align 8, !dbg !1030, !tbaa !626
  %call21 = call %struct._object* @PyUnicode_Substring(%struct._object* %21, i64 %22, i64 %23), !dbg !1031
  store %struct._object* %call21, %struct._object** %retval, !dbg !1032
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1032

if.else:                                          ; preds = %if.end.18
  %24 = load %struct._object*, %struct._object** %scriptobj, align 8, !dbg !1033, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1035
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1036, !tbaa !647
  %inc = add i64 %25, 1, !dbg !1036
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1036, !tbaa !647
  %26 = load %struct._object*, %struct._object** %scriptobj, align 8, !dbg !1037, !tbaa !543
  store %struct._object* %26, %struct._object** %retval, !dbg !1038
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1038

cleanup:                                          ; preds = %if.else, %if.then.20, %if.then.17, %if.then.13, %if.then.10, %if.then.6, %if.then.3, %if.then
  %27 = bitcast %struct._object** %argv to i8*, !dbg !1039
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !1039
  %28 = bitcast i64* %slash to i8*, !dbg !1039
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !1039
  %29 = bitcast %struct._object** %scriptobj to i8*, !dbg !1039
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !1039
  %30 = bitcast i64* %scriptlen to i8*, !dbg !1039
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !1039
  %31 = bitcast i64* %argv_len to i8*, !dbg !1039
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !1039
  %32 = load %struct._object*, %struct._object** %retval, !dbg !1039
  ret %struct._object* %32, !dbg !1039
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

declare void @openlog(i8*, i32, i32) #3

declare %struct._object* @PySys_GetObject(i8*) #3

declare i64 @PyList_Size(%struct._object*) #3

declare void @PyErr_Clear() #3

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #3

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #3

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #3

declare void @closelog() #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._ts* @PyEval_SaveThread() #3

declare void @syslog(i32, i8*, ...) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

; Function Attrs: nounwind
declare i32 @setlogmask(i32) #4

declare %struct._object* @PyLong_FromLong(i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!534, !535, !536}
!llvm.ident = !{!537}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !362, globals: !500)
!1 = !DIFile(filename: "syslogmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !7, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !52, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !5, !4}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!44, !5, !5, !4}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!5, !19, !11}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!5, !19, !5, !5}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !4}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !345, line: 351, baseType: !346)
!345 = !DIFile(filename: "./Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!346 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 217, size: 384, align: 64, elements: !347)
!347 = !{!348, !349, !350, !351, !359}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !346, file: !345, line: 291, baseType: !6, size: 128, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !346, file: !345, line: 292, baseType: !11, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !346, file: !345, line: 293, baseType: !218, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !345, line: 349, baseType: !352, size: 32, align: 32, offset: 256)
!352 = !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !345, line: 294, size: 32, align: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !352, file: !345, line: 303, baseType: !341, size: 2, align: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !352, file: !345, line: 331, baseType: !341, size: 3, align: 32, offset: 2)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !352, file: !345, line: 336, baseType: !341, size: 1, align: 32, offset: 5)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !352, file: !345, line: 340, baseType: !341, size: 1, align: 32, offset: 6)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !352, file: !345, line: 345, baseType: !341, size: 1, align: 32, offset: 7)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !346, file: !345, line: 350, baseType: !360, size: 64, align: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !44)
!362 = !{!363, !369, !383, !390, !402, !482, !488, !494}
!363 = !DISubprogram(name: "PyInit_syslog", scope: !364, file: !364, line: 268, type: !365, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_syslog, variables: !367)
!364 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/syslogmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!365 = !DISubroutineType(types: !366)
!366 = !{!5}
!367 = !{!368}
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !363, file: !364, line: 270, type: !5)
!369 = !DISubprogram(name: "syslog_openlog", scope: !364, file: !364, line: 113, type: !135, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @syslog_openlog, variables: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !380}
!371 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !369, file: !364, line: 113, type: !5)
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !369, file: !364, line: 113, type: !5)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !369, file: !364, line: 113, type: !5)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "logopt", scope: !369, file: !364, line: 115, type: !17)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "facility", scope: !369, file: !364, line: 116, type: !17)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_S_ident_o", scope: !369, file: !364, line: 117, type: !5)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ident", scope: !369, file: !364, line: 119, type: !52)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !379, file: !364, line: 134, type: !5)
!379 = distinct !DILexicalBlock(scope: !369, file: !364, line: 134, column: 8)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !381, file: !364, line: 134, type: !5)
!381 = distinct !DILexicalBlock(scope: !382, file: !364, line: 134, column: 101)
!382 = distinct !DILexicalBlock(scope: !379, file: !364, line: 134, column: 67)
!383 = !DISubprogram(name: "syslog_get_argv", scope: !364, file: !364, line: 63, type: !365, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @syslog_get_argv, variables: !384)
!384 = !{!385, !386, !387, !388, !389}
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv_len", scope: !383, file: !364, line: 71, type: !11)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scriptlen", scope: !383, file: !364, line: 71, type: !11)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scriptobj", scope: !383, file: !364, line: 72, type: !5)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slash", scope: !383, file: !364, line: 73, type: !11)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv", scope: !383, file: !364, line: 74, type: !5)
!390 = !DISubprogram(name: "syslog_closelog", scope: !364, file: !364, line: 196, type: !126, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @syslog_closelog, variables: !391)
!391 = !{!392, !393, !394, !398}
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !390, file: !364, line: 196, type: !5)
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !390, file: !364, line: 196, type: !5)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !395, file: !364, line: 200, type: !5)
!395 = distinct !DILexicalBlock(scope: !396, file: !364, line: 200, column: 12)
!396 = distinct !DILexicalBlock(scope: !397, file: !364, line: 198, column: 21)
!397 = distinct !DILexicalBlock(scope: !390, file: !364, line: 198, column: 9)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !399, file: !364, line: 200, type: !5)
!399 = distinct !DILexicalBlock(scope: !400, file: !364, line: 200, column: 117)
!400 = distinct !DILexicalBlock(scope: !401, file: !364, line: 200, column: 86)
!401 = distinct !DILexicalBlock(scope: !395, file: !364, line: 200, column: 63)
!402 = !DISubprogram(name: "syslog_syslog", scope: !364, file: !364, line: 156, type: !126, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @syslog_syslog, variables: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !412, !415, !417, !420, !422}
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !402, file: !364, line: 156, type: !5)
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !402, file: !364, line: 156, type: !5)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message_object", scope: !402, file: !364, line: 158, type: !5)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !402, file: !364, line: 159, type: !29)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "priority", scope: !402, file: !364, line: 160, type: !44)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "openargs", scope: !410, file: !364, line: 176, type: !5)
!410 = distinct !DILexicalBlock(scope: !411, file: !364, line: 175, column: 22)
!411 = distinct !DILexicalBlock(scope: !402, file: !364, line: 175, column: 9)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "openlog_ret", scope: !413, file: !364, line: 183, type: !5)
!413 = distinct !DILexicalBlock(scope: !414, file: !364, line: 182, column: 42)
!414 = distinct !DILexicalBlock(scope: !410, file: !364, line: 182, column: 13)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !416, file: !364, line: 184, type: !5)
!416 = distinct !DILexicalBlock(scope: !413, file: !364, line: 184, column: 16)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !418, file: !364, line: 184, type: !5)
!418 = distinct !DILexicalBlock(scope: !419, file: !364, line: 184, column: 111)
!419 = distinct !DILexicalBlock(scope: !416, file: !364, line: 184, column: 77)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !421, file: !364, line: 185, type: !5)
!421 = distinct !DILexicalBlock(scope: !413, file: !364, line: 185, column: 16)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !423, file: !364, line: 189, type: !424)
!423 = distinct !DILexicalBlock(scope: !402, file: !364, line: 189, column: 5)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !426, line: 139, baseType: !427)
!426 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !426, line: 69, size: 1536, align: 64, elements: !428)
!428 = !{!429, !431, !432, !452, !455, !456, !457, !458, !459, !460, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !427, file: !426, line: 72, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !426, line: 73, baseType: !430, size: 64, align: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !427, file: !426, line: 74, baseType: !433, size: 64, align: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !426, line: 44, baseType: !435)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !426, line: 19, size: 832, align: 64, elements: !436)
!436 = !{!437, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !426, line: 21, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !435, file: !426, line: 22, baseType: !430, size: 64, align: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !435, file: !426, line: 24, baseType: !5, size: 64, align: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !435, file: !426, line: 25, baseType: !5, size: 64, align: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !435, file: !426, line: 26, baseType: !5, size: 64, align: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !435, file: !426, line: 27, baseType: !5, size: 64, align: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !435, file: !426, line: 28, baseType: !5, size: 64, align: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !435, file: !426, line: 30, baseType: !5, size: 64, align: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !435, file: !426, line: 31, baseType: !5, size: 64, align: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !435, file: !426, line: 32, baseType: !5, size: 64, align: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !435, file: !426, line: 33, baseType: !44, size: 32, align: 32, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !435, file: !426, line: 34, baseType: !44, size: 32, align: 32, offset: 672)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !435, file: !426, line: 37, baseType: !44, size: 32, align: 32, offset: 704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !435, file: !426, line: 43, baseType: !5, size: 64, align: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !427, file: !426, line: 76, baseType: !453, size: 64, align: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !426, line: 50, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !427, file: !426, line: 77, baseType: !44, size: 32, align: 32, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !427, file: !426, line: 78, baseType: !31, size: 8, align: 8, offset: 288)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !427, file: !426, line: 80, baseType: !31, size: 8, align: 8, offset: 296)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !427, file: !426, line: 85, baseType: !44, size: 32, align: 32, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !427, file: !426, line: 86, baseType: !44, size: 32, align: 32, offset: 352)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !427, file: !426, line: 88, baseType: !461, size: 64, align: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !426, line: 54, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!44, !5, !453, !44, !5}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !427, file: !426, line: 89, baseType: !461, size: 64, align: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !427, file: !426, line: 90, baseType: !5, size: 64, align: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !427, file: !426, line: 91, baseType: !5, size: 64, align: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !427, file: !426, line: 93, baseType: !5, size: 64, align: 64, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !427, file: !426, line: 94, baseType: !5, size: 64, align: 64, offset: 704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !427, file: !426, line: 95, baseType: !5, size: 64, align: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !427, file: !426, line: 97, baseType: !5, size: 64, align: 64, offset: 832)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !427, file: !426, line: 98, baseType: !5, size: 64, align: 64, offset: 896)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !427, file: !426, line: 99, baseType: !5, size: 64, align: 64, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !427, file: !426, line: 101, baseType: !5, size: 64, align: 64, offset: 1024)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !427, file: !426, line: 103, baseType: !44, size: 32, align: 32, offset: 1088)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !427, file: !426, line: 105, baseType: !5, size: 64, align: 64, offset: 1152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !427, file: !426, line: 106, baseType: !17, size: 64, align: 64, offset: 1216)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !427, file: !426, line: 108, baseType: !44, size: 32, align: 32, offset: 1280)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !427, file: !426, line: 109, baseType: !5, size: 64, align: 64, offset: 1344)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !427, file: !426, line: 134, baseType: !330, size: 64, align: 64, offset: 1408)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !427, file: !426, line: 135, baseType: !4, size: 64, align: 64, offset: 1472)
!482 = !DISubprogram(name: "syslog_setlogmask", scope: !364, file: !364, line: 208, type: !126, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @syslog_setlogmask, variables: !483)
!483 = !{!484, !485, !486, !487}
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !482, file: !364, line: 208, type: !5)
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !482, file: !364, line: 208, type: !5)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maskpri", scope: !482, file: !364, line: 210, type: !17)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "omaskpri", scope: !482, file: !364, line: 210, type: !17)
!488 = !DISubprogram(name: "syslog_log_mask", scope: !364, file: !364, line: 219, type: !126, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @syslog_log_mask, variables: !489)
!489 = !{!490, !491, !492, !493}
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !488, file: !364, line: 219, type: !5)
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !488, file: !364, line: 219, type: !5)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !488, file: !364, line: 221, type: !17)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pri", scope: !488, file: !364, line: 222, type: !17)
!494 = !DISubprogram(name: "syslog_log_upto", scope: !364, file: !364, line: 230, type: !126, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @syslog_log_upto, variables: !495)
!495 = !{!496, !497, !498, !499}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !494, file: !364, line: 230, type: !5)
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !494, file: !364, line: 230, type: !5)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !494, file: !364, line: 232, type: !17)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pri", scope: !494, file: !364, line: 233, type: !17)
!500 = !{!501, !524, !528, !532, !533}
!501 = !DIGlobalVariable(name: "syslogmodule", scope: !0, file: !364, line: 255, type: !502, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @syslogmodule)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !503, line: 47, size: 832, align: 64, elements: !504)
!503 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!504 = !{!505, !514, !515, !516, !517, !520, !521, !522, !523}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !502, file: !503, line: 48, baseType: !506, size: 320, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !503, line: 38, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !503, line: 33, size: 320, align: 64, elements: !508)
!508 = !{!509, !510, !512, !513}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !507, file: !503, line: 34, baseType: !6, size: 128, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !507, file: !503, line: 35, baseType: !511, size: 64, align: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !507, file: !503, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !507, file: !503, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !502, file: !503, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !502, file: !503, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !502, file: !503, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !502, file: !503, line: 52, baseType: !518, size: 64, align: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !502, file: !503, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !502, file: !503, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !502, file: !503, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !502, file: !503, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!524 = !DIGlobalVariable(name: "syslog_methods", scope: !0, file: !364, line: 242, type: !525, isLocal: true, isDefinition: true, variable: [7 x %struct.PyMethodDef]* @syslog_methods)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 1792, align: 64, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 7)
!528 = !DIGlobalVariable(name: "keywords", scope: !369, file: !364, line: 118, type: !529, isLocal: true, isDefinition: true, variable: [4 x i8*]* @syslog_openlog.keywords)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, align: 64, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 4)
!532 = !DIGlobalVariable(name: "S_ident_o", scope: !0, file: !364, line: 58, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @S_ident_o)
!533 = !DIGlobalVariable(name: "S_log_open", scope: !0, file: !364, line: 59, type: !31, isLocal: true, isDefinition: true, variable: i8* @S_log_open)
!534 = !{i32 2, !"Dwarf Version", i32 4}
!535 = !{i32 2, !"Debug Info Version", i32 3}
!536 = !{i32 1, !"PIC Level", i32 2}
!537 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!538 = !DILocation(line: 270, column: 5, scope: !363)
!539 = !DIExpression()
!540 = !DILocation(line: 270, column: 15, scope: !363)
!541 = !DILocation(line: 273, column: 9, scope: !363)
!542 = !DILocation(line: 273, column: 7, scope: !363)
!543 = !{!544, !544, i64 0}
!544 = !{!"any pointer", !545, i64 0}
!545 = !{!"omnipotent char", !546, i64 0}
!546 = !{!"Simple C/C++ TBAA"}
!547 = !DILocation(line: 274, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !363, file: !364, line: 274, column: 9)
!549 = !DILocation(line: 274, column: 11, scope: !548)
!550 = !DILocation(line: 274, column: 9, scope: !363)
!551 = !DILocation(line: 275, column: 9, scope: !548)
!552 = !DILocation(line: 280, column: 29, scope: !363)
!553 = !DILocation(line: 280, column: 5, scope: !363)
!554 = !DILocation(line: 281, column: 29, scope: !363)
!555 = !DILocation(line: 281, column: 5, scope: !363)
!556 = !DILocation(line: 282, column: 29, scope: !363)
!557 = !DILocation(line: 282, column: 5, scope: !363)
!558 = !DILocation(line: 283, column: 29, scope: !363)
!559 = !DILocation(line: 283, column: 5, scope: !363)
!560 = !DILocation(line: 284, column: 29, scope: !363)
!561 = !DILocation(line: 284, column: 5, scope: !363)
!562 = !DILocation(line: 285, column: 29, scope: !363)
!563 = !DILocation(line: 285, column: 5, scope: !363)
!564 = !DILocation(line: 286, column: 29, scope: !363)
!565 = !DILocation(line: 286, column: 5, scope: !363)
!566 = !DILocation(line: 287, column: 29, scope: !363)
!567 = !DILocation(line: 287, column: 5, scope: !363)
!568 = !DILocation(line: 290, column: 29, scope: !363)
!569 = !DILocation(line: 290, column: 5, scope: !363)
!570 = !DILocation(line: 291, column: 29, scope: !363)
!571 = !DILocation(line: 291, column: 5, scope: !363)
!572 = !DILocation(line: 292, column: 29, scope: !363)
!573 = !DILocation(line: 292, column: 5, scope: !363)
!574 = !DILocation(line: 294, column: 29, scope: !363)
!575 = !DILocation(line: 294, column: 5, scope: !363)
!576 = !DILocation(line: 297, column: 29, scope: !363)
!577 = !DILocation(line: 297, column: 5, scope: !363)
!578 = !DILocation(line: 300, column: 29, scope: !363)
!579 = !DILocation(line: 300, column: 5, scope: !363)
!580 = !DILocation(line: 304, column: 29, scope: !363)
!581 = !DILocation(line: 304, column: 5, scope: !363)
!582 = !DILocation(line: 305, column: 29, scope: !363)
!583 = !DILocation(line: 305, column: 5, scope: !363)
!584 = !DILocation(line: 306, column: 29, scope: !363)
!585 = !DILocation(line: 306, column: 5, scope: !363)
!586 = !DILocation(line: 307, column: 29, scope: !363)
!587 = !DILocation(line: 307, column: 5, scope: !363)
!588 = !DILocation(line: 308, column: 29, scope: !363)
!589 = !DILocation(line: 308, column: 5, scope: !363)
!590 = !DILocation(line: 309, column: 29, scope: !363)
!591 = !DILocation(line: 309, column: 5, scope: !363)
!592 = !DILocation(line: 310, column: 29, scope: !363)
!593 = !DILocation(line: 310, column: 5, scope: !363)
!594 = !DILocation(line: 311, column: 29, scope: !363)
!595 = !DILocation(line: 311, column: 5, scope: !363)
!596 = !DILocation(line: 312, column: 29, scope: !363)
!597 = !DILocation(line: 312, column: 5, scope: !363)
!598 = !DILocation(line: 313, column: 29, scope: !363)
!599 = !DILocation(line: 313, column: 5, scope: !363)
!600 = !DILocation(line: 314, column: 29, scope: !363)
!601 = !DILocation(line: 314, column: 5, scope: !363)
!602 = !DILocation(line: 315, column: 29, scope: !363)
!603 = !DILocation(line: 315, column: 5, scope: !363)
!604 = !DILocation(line: 316, column: 29, scope: !363)
!605 = !DILocation(line: 316, column: 5, scope: !363)
!606 = !DILocation(line: 317, column: 29, scope: !363)
!607 = !DILocation(line: 317, column: 5, scope: !363)
!608 = !DILocation(line: 332, column: 29, scope: !363)
!609 = !DILocation(line: 332, column: 5, scope: !363)
!610 = !DILocation(line: 333, column: 29, scope: !363)
!611 = !DILocation(line: 333, column: 5, scope: !363)
!612 = !DILocation(line: 334, column: 29, scope: !363)
!613 = !DILocation(line: 334, column: 5, scope: !363)
!614 = !DILocation(line: 335, column: 29, scope: !363)
!615 = !DILocation(line: 335, column: 5, scope: !363)
!616 = !DILocation(line: 338, column: 29, scope: !363)
!617 = !DILocation(line: 338, column: 5, scope: !363)
!618 = !DILocation(line: 341, column: 12, scope: !363)
!619 = !DILocation(line: 341, column: 5, scope: !363)
!620 = !DILocation(line: 342, column: 1, scope: !363)
!621 = !DILocation(line: 113, column: 27, scope: !369)
!622 = !DILocation(line: 113, column: 44, scope: !369)
!623 = !DILocation(line: 113, column: 60, scope: !369)
!624 = !DILocation(line: 115, column: 5, scope: !369)
!625 = !DILocation(line: 115, column: 10, scope: !369)
!626 = !{!627, !627, i64 0}
!627 = !{!"long", !545, i64 0}
!628 = !DILocation(line: 116, column: 5, scope: !369)
!629 = !DILocation(line: 116, column: 10, scope: !369)
!630 = !DILocation(line: 117, column: 5, scope: !369)
!631 = !DILocation(line: 117, column: 15, scope: !369)
!632 = !DILocation(line: 119, column: 5, scope: !369)
!633 = !DILocation(line: 119, column: 11, scope: !369)
!634 = !DILocation(line: 121, column: 38, scope: !635)
!635 = distinct !DILexicalBlock(scope: !369, file: !364, line: 121, column: 9)
!636 = !DILocation(line: 121, column: 44, scope: !635)
!637 = !DILocation(line: 121, column: 10, scope: !635)
!638 = !DILocation(line: 121, column: 9, scope: !369)
!639 = !DILocation(line: 123, column: 9, scope: !635)
!640 = !DILocation(line: 125, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !369, file: !364, line: 125, column: 9)
!642 = !DILocation(line: 125, column: 9, scope: !369)
!643 = !DILocation(line: 126, column: 25, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !364, line: 125, column: 24)
!645 = !DILocation(line: 126, column: 42, scope: !644)
!646 = !DILocation(line: 126, column: 51, scope: !644)
!647 = !{!648, !627, i64 0}
!648 = !{!"_object", !627, i64 0, !544, i64 8}
!649 = !DILocation(line: 127, column: 5, scope: !644)
!650 = !DILocation(line: 130, column: 10, scope: !651)
!651 = distinct !DILexicalBlock(scope: !369, file: !364, line: 130, column: 9)
!652 = !DILocation(line: 130, column: 9, scope: !369)
!653 = !DILocation(line: 131, column: 25, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !364, line: 130, column: 25)
!655 = !DILocation(line: 131, column: 23, scope: !654)
!656 = !DILocation(line: 132, column: 5, scope: !654)
!657 = !DILocation(line: 134, column: 5, scope: !369)
!658 = !DILocation(line: 134, column: 10, scope: !659)
!659 = !DILexicalBlockFile(scope: !379, file: !364, discriminator: 1)
!660 = !DILocation(line: 134, column: 20, scope: !379)
!661 = !DILocation(line: 134, column: 51, scope: !379)
!662 = !DILocation(line: 134, column: 67, scope: !382)
!663 = !DILocation(line: 134, column: 83, scope: !382)
!664 = !DILocation(line: 134, column: 67, scope: !379)
!665 = !DILocation(line: 134, column: 98, scope: !666)
!666 = !DILexicalBlockFile(scope: !382, file: !364, discriminator: 2)
!667 = !DILocation(line: 134, column: 103, scope: !668)
!668 = !DILexicalBlockFile(scope: !381, file: !364, discriminator: 4)
!669 = !DILocation(line: 134, column: 113, scope: !381)
!670 = !DILocation(line: 134, column: 143, scope: !381)
!671 = !DILocation(line: 134, column: 169, scope: !672)
!672 = distinct !DILexicalBlock(scope: !381, file: !364, line: 134, column: 166)
!673 = !DILocation(line: 134, column: 186, scope: !672)
!674 = !DILocation(line: 134, column: 166, scope: !672)
!675 = !DILocation(line: 134, column: 196, scope: !672)
!676 = !DILocation(line: 134, column: 166, scope: !381)
!677 = !DILocation(line: 134, column: 166, scope: !678)
!678 = !DILexicalBlockFile(scope: !381, file: !364, discriminator: 5)
!679 = !DILocation(line: 134, column: 227, scope: !680)
!680 = !DILexicalBlockFile(scope: !672, file: !364, discriminator: 6)
!681 = !DILocation(line: 134, column: 245, scope: !672)
!682 = !{!648, !544, i64 8}
!683 = !DILocation(line: 134, column: 255, scope: !672)
!684 = !{!685, !544, i64 48}
!685 = !{!"_typeobject", !686, i64 0, !544, i64 24, !627, i64 32, !627, i64 40, !544, i64 48, !544, i64 56, !544, i64 64, !544, i64 72, !544, i64 80, !544, i64 88, !544, i64 96, !544, i64 104, !544, i64 112, !544, i64 120, !544, i64 128, !544, i64 136, !544, i64 144, !544, i64 152, !544, i64 160, !627, i64 168, !544, i64 176, !544, i64 184, !544, i64 192, !544, i64 200, !627, i64 208, !544, i64 216, !544, i64 224, !544, i64 232, !544, i64 240, !544, i64 248, !544, i64 256, !544, i64 264, !544, i64 272, !544, i64 280, !627, i64 288, !544, i64 296, !544, i64 304, !544, i64 312, !544, i64 320, !544, i64 328, !544, i64 336, !544, i64 344, !544, i64 352, !544, i64 360, !544, i64 368, !544, i64 376, !687, i64 384, !544, i64 392}
!686 = !{!"", !648, i64 0, !627, i64 16}
!687 = !{!"int", !545, i64 0}
!688 = !DILocation(line: 134, column: 280, scope: !672)
!689 = !DILocation(line: 134, column: 211, scope: !672)
!690 = !DILocation(line: 134, column: 299, scope: !691)
!691 = !DILexicalBlockFile(scope: !382, file: !364, discriminator: 7)
!692 = !DILocation(line: 134, column: 299, scope: !381)
!693 = !DILocation(line: 134, column: 299, scope: !694)
!694 = !DILexicalBlockFile(scope: !381, file: !364, discriminator: 8)
!695 = !DILocation(line: 134, column: 299, scope: !696)
!696 = !DILexicalBlockFile(scope: !381, file: !364, discriminator: 9)
!697 = !DILocation(line: 134, column: 312, scope: !698)
!698 = !DILexicalBlockFile(scope: !699, file: !364, discriminator: 10)
!699 = !DILexicalBlockFile(scope: !369, file: !364, discriminator: 3)
!700 = !DILocation(line: 134, column: 312, scope: !379)
!701 = !DILocation(line: 134, column: 312, scope: !702)
!702 = !DILexicalBlockFile(scope: !379, file: !364, discriminator: 11)
!703 = !DILocation(line: 135, column: 17, scope: !369)
!704 = !DILocation(line: 135, column: 15, scope: !369)
!705 = !DILocation(line: 141, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !369, file: !364, line: 141, column: 9)
!707 = !DILocation(line: 141, column: 9, scope: !369)
!708 = !DILocation(line: 142, column: 34, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !364, line: 141, column: 20)
!710 = !DILocation(line: 142, column: 17, scope: !709)
!711 = !DILocation(line: 142, column: 15, scope: !709)
!712 = !DILocation(line: 143, column: 13, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !364, line: 143, column: 13)
!714 = !DILocation(line: 143, column: 19, scope: !713)
!715 = !DILocation(line: 143, column: 13, scope: !709)
!716 = !DILocation(line: 144, column: 13, scope: !713)
!717 = !DILocation(line: 145, column: 5, scope: !709)
!718 = !DILocation(line: 147, column: 13, scope: !369)
!719 = !DILocation(line: 147, column: 20, scope: !369)
!720 = !DILocation(line: 147, column: 28, scope: !369)
!721 = !DILocation(line: 147, column: 5, scope: !369)
!722 = !DILocation(line: 148, column: 16, scope: !369)
!723 = !{!545, !545, i64 0}
!724 = !DILocation(line: 150, column: 51, scope: !369)
!725 = !DILocation(line: 151, column: 5, scope: !369)
!726 = !DILocation(line: 152, column: 1, scope: !369)
!727 = !DILocation(line: 196, column: 27, scope: !390)
!728 = !DILocation(line: 196, column: 43, scope: !390)
!729 = !DILocation(line: 198, column: 9, scope: !397)
!730 = !DILocation(line: 198, column: 9, scope: !390)
!731 = !DILocation(line: 199, column: 9, scope: !396)
!732 = !DILocation(line: 200, column: 9, scope: !396)
!733 = !DILocation(line: 200, column: 14, scope: !734)
!734 = !DILexicalBlockFile(scope: !395, file: !364, discriminator: 1)
!735 = !DILocation(line: 200, column: 24, scope: !395)
!736 = !DILocation(line: 200, column: 47, scope: !395)
!737 = !DILocation(line: 200, column: 63, scope: !401)
!738 = !DILocation(line: 200, column: 71, scope: !401)
!739 = !DILocation(line: 200, column: 63, scope: !395)
!740 = !DILocation(line: 200, column: 100, scope: !741)
!741 = !DILexicalBlockFile(scope: !400, file: !364, discriminator: 2)
!742 = !DILocation(line: 200, column: 114, scope: !400)
!743 = !DILocation(line: 200, column: 119, scope: !744)
!744 = !DILexicalBlockFile(scope: !399, file: !364, discriminator: 4)
!745 = !DILocation(line: 200, column: 129, scope: !399)
!746 = !DILocation(line: 200, column: 159, scope: !399)
!747 = !DILocation(line: 200, column: 177, scope: !748)
!748 = distinct !DILexicalBlock(scope: !399, file: !364, line: 200, column: 174)
!749 = !DILocation(line: 200, column: 194, scope: !748)
!750 = !DILocation(line: 200, column: 174, scope: !748)
!751 = !DILocation(line: 200, column: 204, scope: !748)
!752 = !DILocation(line: 200, column: 174, scope: !399)
!753 = !DILocation(line: 200, column: 174, scope: !754)
!754 = !DILexicalBlockFile(scope: !399, file: !364, discriminator: 5)
!755 = !DILocation(line: 200, column: 235, scope: !756)
!756 = !DILexicalBlockFile(scope: !748, file: !364, discriminator: 6)
!757 = !DILocation(line: 200, column: 253, scope: !748)
!758 = !DILocation(line: 200, column: 263, scope: !748)
!759 = !DILocation(line: 200, column: 288, scope: !748)
!760 = !DILocation(line: 200, column: 219, scope: !748)
!761 = !DILocation(line: 200, column: 307, scope: !762)
!762 = !DILexicalBlockFile(scope: !400, file: !364, discriminator: 7)
!763 = !DILocation(line: 200, column: 307, scope: !399)
!764 = !DILocation(line: 200, column: 307, scope: !765)
!765 = !DILexicalBlockFile(scope: !399, file: !364, discriminator: 8)
!766 = !DILocation(line: 200, column: 320, scope: !767)
!767 = !DILexicalBlockFile(scope: !400, file: !364, discriminator: 9)
!768 = !DILocation(line: 200, column: 322, scope: !769)
!769 = !DILexicalBlockFile(scope: !770, file: !364, discriminator: 10)
!770 = !DILexicalBlockFile(scope: !396, file: !364, discriminator: 3)
!771 = !DILocation(line: 200, column: 322, scope: !395)
!772 = !DILocation(line: 201, column: 20, scope: !396)
!773 = !DILocation(line: 202, column: 5, scope: !396)
!774 = !DILocation(line: 203, column: 51, scope: !390)
!775 = !DILocation(line: 204, column: 5, scope: !390)
!776 = !DILocation(line: 156, column: 26, scope: !402)
!777 = !DILocation(line: 156, column: 43, scope: !402)
!778 = !DILocation(line: 158, column: 5, scope: !402)
!779 = !DILocation(line: 158, column: 15, scope: !402)
!780 = !DILocation(line: 159, column: 5, scope: !402)
!781 = !DILocation(line: 159, column: 17, scope: !402)
!782 = !DILocation(line: 160, column: 5, scope: !402)
!783 = !DILocation(line: 160, column: 9, scope: !402)
!784 = !{!687, !687, i64 0}
!785 = !DILocation(line: 162, column: 27, scope: !786)
!786 = distinct !DILexicalBlock(scope: !402, file: !364, line: 162, column: 9)
!787 = !DILocation(line: 162, column: 10, scope: !786)
!788 = !DILocation(line: 162, column: 9, scope: !402)
!789 = !DILocation(line: 164, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !364, line: 163, column: 56)
!791 = !DILocation(line: 165, column: 31, scope: !792)
!792 = distinct !DILexicalBlock(scope: !790, file: !364, line: 165, column: 13)
!793 = !DILocation(line: 165, column: 14, scope: !792)
!794 = !DILocation(line: 165, column: 13, scope: !790)
!795 = !DILocation(line: 167, column: 13, scope: !792)
!796 = !DILocation(line: 168, column: 5, scope: !790)
!797 = !DILocation(line: 170, column: 32, scope: !402)
!798 = !DILocation(line: 170, column: 15, scope: !402)
!799 = !DILocation(line: 170, column: 13, scope: !402)
!800 = !DILocation(line: 171, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !402, file: !364, line: 171, column: 9)
!802 = !DILocation(line: 171, column: 17, scope: !801)
!803 = !DILocation(line: 171, column: 9, scope: !402)
!804 = !DILocation(line: 172, column: 9, scope: !801)
!805 = !DILocation(line: 175, column: 10, scope: !411)
!806 = !DILocation(line: 175, column: 9, scope: !402)
!807 = !DILocation(line: 176, column: 9, scope: !410)
!808 = !DILocation(line: 176, column: 19, scope: !410)
!809 = !DILocation(line: 182, column: 25, scope: !414)
!810 = !DILocation(line: 182, column: 23, scope: !414)
!811 = !DILocation(line: 182, column: 13, scope: !410)
!812 = !DILocation(line: 183, column: 13, scope: !413)
!813 = !DILocation(line: 183, column: 23, scope: !413)
!814 = !DILocation(line: 183, column: 52, scope: !413)
!815 = !DILocation(line: 183, column: 58, scope: !413)
!816 = !DILocation(line: 183, column: 37, scope: !413)
!817 = !DILocation(line: 184, column: 13, scope: !413)
!818 = !DILocation(line: 184, column: 18, scope: !819)
!819 = !DILexicalBlockFile(scope: !416, file: !364, discriminator: 1)
!820 = !DILocation(line: 184, column: 28, scope: !416)
!821 = !DILocation(line: 184, column: 59, scope: !416)
!822 = !DILocation(line: 184, column: 77, scope: !419)
!823 = !DILocation(line: 184, column: 93, scope: !419)
!824 = !DILocation(line: 184, column: 77, scope: !416)
!825 = !DILocation(line: 184, column: 108, scope: !826)
!826 = !DILexicalBlockFile(scope: !419, file: !364, discriminator: 2)
!827 = !DILocation(line: 184, column: 113, scope: !828)
!828 = !DILexicalBlockFile(scope: !418, file: !364, discriminator: 4)
!829 = !DILocation(line: 184, column: 123, scope: !418)
!830 = !DILocation(line: 184, column: 153, scope: !418)
!831 = !DILocation(line: 184, column: 179, scope: !832)
!832 = distinct !DILexicalBlock(scope: !418, file: !364, line: 184, column: 176)
!833 = !DILocation(line: 184, column: 196, scope: !832)
!834 = !DILocation(line: 184, column: 176, scope: !832)
!835 = !DILocation(line: 184, column: 206, scope: !832)
!836 = !DILocation(line: 184, column: 176, scope: !418)
!837 = !DILocation(line: 184, column: 176, scope: !838)
!838 = !DILexicalBlockFile(scope: !418, file: !364, discriminator: 5)
!839 = !DILocation(line: 184, column: 237, scope: !840)
!840 = !DILexicalBlockFile(scope: !832, file: !364, discriminator: 6)
!841 = !DILocation(line: 184, column: 255, scope: !832)
!842 = !DILocation(line: 184, column: 265, scope: !832)
!843 = !DILocation(line: 184, column: 290, scope: !832)
!844 = !DILocation(line: 184, column: 221, scope: !832)
!845 = !DILocation(line: 184, column: 309, scope: !846)
!846 = !DILexicalBlockFile(scope: !419, file: !364, discriminator: 7)
!847 = !DILocation(line: 184, column: 309, scope: !418)
!848 = !DILocation(line: 184, column: 309, scope: !849)
!849 = !DILexicalBlockFile(scope: !418, file: !364, discriminator: 8)
!850 = !DILocation(line: 184, column: 309, scope: !851)
!851 = !DILexicalBlockFile(scope: !418, file: !364, discriminator: 9)
!852 = !DILocation(line: 184, column: 322, scope: !853)
!853 = !DILexicalBlockFile(scope: !854, file: !364, discriminator: 10)
!854 = !DILexicalBlockFile(scope: !413, file: !364, discriminator: 3)
!855 = !DILocation(line: 184, column: 322, scope: !416)
!856 = !DILocation(line: 184, column: 322, scope: !857)
!857 = !DILexicalBlockFile(scope: !416, file: !364, discriminator: 11)
!858 = !DILocation(line: 185, column: 13, scope: !413)
!859 = !DILocation(line: 185, column: 18, scope: !860)
!860 = !DILexicalBlockFile(scope: !421, file: !364, discriminator: 1)
!861 = !DILocation(line: 185, column: 28, scope: !421)
!862 = !DILocation(line: 185, column: 58, scope: !421)
!863 = !DILocation(line: 185, column: 77, scope: !864)
!864 = distinct !DILexicalBlock(scope: !421, file: !364, line: 185, column: 74)
!865 = !DILocation(line: 185, column: 94, scope: !864)
!866 = !DILocation(line: 185, column: 74, scope: !864)
!867 = !DILocation(line: 185, column: 104, scope: !864)
!868 = !DILocation(line: 185, column: 74, scope: !421)
!869 = !DILocation(line: 185, column: 74, scope: !870)
!870 = !DILexicalBlockFile(scope: !421, file: !364, discriminator: 2)
!871 = !DILocation(line: 185, column: 135, scope: !872)
!872 = !DILexicalBlockFile(scope: !864, file: !364, discriminator: 3)
!873 = !DILocation(line: 185, column: 153, scope: !864)
!874 = !DILocation(line: 185, column: 163, scope: !864)
!875 = !DILocation(line: 185, column: 188, scope: !864)
!876 = !DILocation(line: 185, column: 119, scope: !864)
!877 = !DILocation(line: 185, column: 207, scope: !878)
!878 = !DILexicalBlockFile(scope: !413, file: !364, discriminator: 4)
!879 = !DILocation(line: 185, column: 207, scope: !421)
!880 = !DILocation(line: 185, column: 207, scope: !881)
!881 = !DILexicalBlockFile(scope: !421, file: !364, discriminator: 5)
!882 = !DILocation(line: 186, column: 9, scope: !414)
!883 = !DILocation(line: 186, column: 9, scope: !413)
!884 = !DILocation(line: 187, column: 5, scope: !411)
!885 = !DILocation(line: 187, column: 5, scope: !410)
!886 = !DILocation(line: 189, column: 7, scope: !423)
!887 = !DILocation(line: 189, column: 22, scope: !423)
!888 = !DILocation(line: 189, column: 37, scope: !423)
!889 = !DILocation(line: 189, column: 35, scope: !423)
!890 = !DILocation(line: 190, column: 12, scope: !423)
!891 = !DILocation(line: 190, column: 28, scope: !423)
!892 = !DILocation(line: 190, column: 5, scope: !423)
!893 = !DILocation(line: 191, column: 26, scope: !423)
!894 = !DILocation(line: 191, column: 5, scope: !423)
!895 = !DILocation(line: 191, column: 34, scope: !402)
!896 = !DILocation(line: 192, column: 58, scope: !402)
!897 = !DILocation(line: 192, column: 5, scope: !402)
!898 = !DILocation(line: 193, column: 1, scope: !402)
!899 = !DILocation(line: 208, column: 29, scope: !482)
!900 = !DILocation(line: 208, column: 45, scope: !482)
!901 = !DILocation(line: 210, column: 5, scope: !482)
!902 = !DILocation(line: 210, column: 10, scope: !482)
!903 = !DILocation(line: 210, column: 19, scope: !482)
!904 = !DILocation(line: 212, column: 27, scope: !905)
!905 = distinct !DILexicalBlock(scope: !482, file: !364, line: 212, column: 9)
!906 = !DILocation(line: 212, column: 10, scope: !905)
!907 = !DILocation(line: 212, column: 9, scope: !482)
!908 = !DILocation(line: 213, column: 9, scope: !905)
!909 = !DILocation(line: 214, column: 27, scope: !482)
!910 = !DILocation(line: 214, column: 16, scope: !482)
!911 = !DILocation(line: 214, column: 14, scope: !482)
!912 = !DILocation(line: 215, column: 28, scope: !482)
!913 = !DILocation(line: 215, column: 12, scope: !482)
!914 = !DILocation(line: 215, column: 5, scope: !482)
!915 = !DILocation(line: 216, column: 1, scope: !482)
!916 = !DILocation(line: 219, column: 27, scope: !488)
!917 = !DILocation(line: 219, column: 43, scope: !488)
!918 = !DILocation(line: 221, column: 5, scope: !488)
!919 = !DILocation(line: 221, column: 10, scope: !488)
!920 = !DILocation(line: 222, column: 5, scope: !488)
!921 = !DILocation(line: 222, column: 10, scope: !488)
!922 = !DILocation(line: 223, column: 27, scope: !923)
!923 = distinct !DILexicalBlock(scope: !488, file: !364, line: 223, column: 9)
!924 = !DILocation(line: 223, column: 10, scope: !923)
!925 = !DILocation(line: 223, column: 9, scope: !488)
!926 = !DILocation(line: 224, column: 9, scope: !923)
!927 = !DILocation(line: 225, column: 19, scope: !488)
!928 = !DILocation(line: 225, column: 15, scope: !488)
!929 = !DILocation(line: 225, column: 12, scope: !488)
!930 = !DILocation(line: 225, column: 10, scope: !488)
!931 = !DILocation(line: 226, column: 28, scope: !488)
!932 = !DILocation(line: 226, column: 12, scope: !488)
!933 = !DILocation(line: 226, column: 5, scope: !488)
!934 = !DILocation(line: 227, column: 1, scope: !488)
!935 = !DILocation(line: 230, column: 27, scope: !494)
!936 = !DILocation(line: 230, column: 43, scope: !494)
!937 = !DILocation(line: 232, column: 5, scope: !494)
!938 = !DILocation(line: 232, column: 10, scope: !494)
!939 = !DILocation(line: 233, column: 5, scope: !494)
!940 = !DILocation(line: 233, column: 10, scope: !494)
!941 = !DILocation(line: 234, column: 27, scope: !942)
!942 = distinct !DILexicalBlock(scope: !494, file: !364, line: 234, column: 9)
!943 = !DILocation(line: 234, column: 10, scope: !942)
!944 = !DILocation(line: 234, column: 9, scope: !494)
!945 = !DILocation(line: 235, column: 9, scope: !942)
!946 = !DILocation(line: 236, column: 21, scope: !494)
!947 = !DILocation(line: 236, column: 25, scope: !494)
!948 = !DILocation(line: 236, column: 16, scope: !494)
!949 = !DILocation(line: 236, column: 30, scope: !494)
!950 = !DILocation(line: 236, column: 12, scope: !494)
!951 = !DILocation(line: 236, column: 10, scope: !494)
!952 = !DILocation(line: 237, column: 28, scope: !494)
!953 = !DILocation(line: 237, column: 12, scope: !494)
!954 = !DILocation(line: 237, column: 5, scope: !494)
!955 = !DILocation(line: 238, column: 1, scope: !494)
!956 = !DILocation(line: 71, column: 5, scope: !383)
!957 = !DILocation(line: 71, column: 16, scope: !383)
!958 = !DILocation(line: 71, column: 26, scope: !383)
!959 = !DILocation(line: 72, column: 5, scope: !383)
!960 = !DILocation(line: 72, column: 15, scope: !383)
!961 = !DILocation(line: 73, column: 5, scope: !383)
!962 = !DILocation(line: 73, column: 16, scope: !383)
!963 = !DILocation(line: 74, column: 5, scope: !383)
!964 = !DILocation(line: 74, column: 15, scope: !383)
!965 = !DILocation(line: 74, column: 22, scope: !383)
!966 = !DILocation(line: 76, column: 9, scope: !967)
!967 = distinct !DILexicalBlock(scope: !383, file: !364, line: 76, column: 9)
!968 = !DILocation(line: 76, column: 14, scope: !967)
!969 = !DILocation(line: 76, column: 9, scope: !383)
!970 = !DILocation(line: 77, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !364, line: 76, column: 29)
!972 = !DILocation(line: 80, column: 28, scope: !383)
!973 = !DILocation(line: 80, column: 16, scope: !383)
!974 = !DILocation(line: 80, column: 14, scope: !383)
!975 = !DILocation(line: 81, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !383, file: !364, line: 81, column: 9)
!977 = !DILocation(line: 81, column: 18, scope: !976)
!978 = !DILocation(line: 81, column: 9, scope: !383)
!979 = !DILocation(line: 82, column: 9, scope: !980)
!980 = distinct !DILexicalBlock(scope: !976, file: !364, line: 81, column: 25)
!981 = !DILocation(line: 83, column: 9, scope: !980)
!982 = !DILocation(line: 85, column: 9, scope: !983)
!983 = distinct !DILexicalBlock(scope: !383, file: !364, line: 85, column: 9)
!984 = !DILocation(line: 85, column: 18, scope: !983)
!985 = !DILocation(line: 85, column: 9, scope: !383)
!986 = !DILocation(line: 86, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !364, line: 85, column: 24)
!988 = !DILocation(line: 89, column: 32, scope: !383)
!989 = !DILocation(line: 89, column: 17, scope: !383)
!990 = !DILocation(line: 89, column: 15, scope: !383)
!991 = !DILocation(line: 90, column: 27, scope: !992)
!992 = distinct !DILexicalBlock(scope: !383, file: !364, line: 90, column: 9)
!993 = !DILocation(line: 90, column: 40, scope: !992)
!994 = !DILocation(line: 90, column: 51, scope: !992)
!995 = !{!685, !627, i64 168}
!996 = !DILocation(line: 90, column: 60, scope: !992)
!997 = !DILocation(line: 90, column: 77, scope: !992)
!998 = !DILocation(line: 90, column: 9, scope: !383)
!999 = !DILocation(line: 91, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !992, file: !364, line: 90, column: 84)
!1001 = !DILocation(line: 93, column: 65, scope: !383)
!1002 = !DILocation(line: 93, column: 47, scope: !383)
!1003 = !DILocation(line: 93, column: 78, scope: !383)
!1004 = !{!1005, !627, i64 16}
!1005 = !{!"", !648, i64 0, !627, i64 16, !627, i64 24, !1006, i64 32, !544, i64 40}
!1006 = !{!"", !687, i64 0, !687, i64 0, !687, i64 0, !687, i64 0, !687, i64 0, !687, i64 1}
!1007 = !DILocation(line: 93, column: 15, scope: !383)
!1008 = !DILocation(line: 94, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !383, file: !364, line: 94, column: 9)
!1010 = !DILocation(line: 94, column: 19, scope: !1009)
!1011 = !DILocation(line: 94, column: 9, scope: !383)
!1012 = !DILocation(line: 95, column: 9, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !364, line: 94, column: 25)
!1014 = !DILocation(line: 98, column: 32, scope: !383)
!1015 = !DILocation(line: 98, column: 52, scope: !383)
!1016 = !DILocation(line: 98, column: 13, scope: !383)
!1017 = !DILocation(line: 98, column: 11, scope: !383)
!1018 = !DILocation(line: 99, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !383, file: !364, line: 99, column: 9)
!1020 = !DILocation(line: 99, column: 15, scope: !1019)
!1021 = !DILocation(line: 99, column: 9, scope: !383)
!1022 = !DILocation(line: 100, column: 9, scope: !1019)
!1023 = !DILocation(line: 101, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !383, file: !364, line: 101, column: 9)
!1025 = !DILocation(line: 101, column: 15, scope: !1024)
!1026 = !DILocation(line: 101, column: 9, scope: !383)
!1027 = !DILocation(line: 102, column: 36, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !364, line: 101, column: 22)
!1029 = !DILocation(line: 102, column: 47, scope: !1028)
!1030 = !DILocation(line: 102, column: 54, scope: !1028)
!1031 = !DILocation(line: 102, column: 16, scope: !1028)
!1032 = !DILocation(line: 102, column: 9, scope: !1028)
!1033 = !DILocation(line: 104, column: 25, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1024, file: !364, line: 103, column: 12)
!1035 = !DILocation(line: 104, column: 38, scope: !1034)
!1036 = !DILocation(line: 104, column: 47, scope: !1034)
!1037 = !DILocation(line: 105, column: 16, scope: !1034)
!1038 = !DILocation(line: 105, column: 9, scope: !1034)
!1039 = !DILocation(line: 109, column: 1, scope: !383)
