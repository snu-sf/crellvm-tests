; ModuleID = 'irs-onlybc/resource.bc'
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
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
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
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.rlimit = type { i64, i64 }

@resourcemodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([6 x %struct.PyMethodDef], [6 x %struct.PyMethodDef]* @resource_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyExc_OSError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@initialized = internal global i32 0, align 4
@StructRUsageType = internal global %struct._typeobject zeroinitializer, align 8
@struct_rusage_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([272 x i8], [272 x i8]* @struct_rusage__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([17 x %struct.PyStructSequence_Field], [17 x %struct.PyStructSequence_Field]* @struct_rusage_fields, i32 0, i32 0), i32 16 }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"struct_rusage\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"RLIMIT_CPU\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"RLIMIT_FSIZE\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"RLIMIT_DATA\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"RLIMIT_STACK\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"RLIMIT_CORE\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"RLIMIT_NOFILE\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"RLIMIT_OFILE\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"RLIMIT_AS\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"RLIMIT_RSS\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"RLIMIT_NPROC\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"RLIMIT_MEMLOCK\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"RLIMIT_MSGQUEUE\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"RLIMIT_NICE\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"RLIMIT_RTPRIO\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"RLIMIT_RTTIME\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"RLIMIT_SIGPENDING\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"RUSAGE_SELF\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"RUSAGE_CHILDREN\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"RUSAGE_THREAD\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"RLIM_INFINITY\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@resource_methods = internal global [6 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @resource_getrusage, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @resource_getrlimit, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @resource_prlimit, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @resource_setrlimit, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @resource_getpagesize, i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [10 x i8] c"getrusage\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"getrlimit\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"prlimit\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"setrlimit\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"getpagesize\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"i:getrusage\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.29 = private unnamed_addr constant [22 x i8] c"invalid who parameter\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"i:getrlimit\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"invalid resource specified\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"ii|(OO):prlimit\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"current limit exceeds maximum limit\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"iO:setrlimit\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"expected a tuple of 2 integers\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"not allowed to raise maximum limit\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.38 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"resource.struct_rusage\00", align 1
@struct_rusage__doc__ = internal global [272 x i8] c"struct_rusage: Result from getrusage.\0A\0AThis object may be accessed either as a tuple of\0A    (utime,stime,maxrss,ixrss,idrss,isrss,minflt,majflt,\0A    nswap,inblock,oublock,msgsnd,msgrcv,nsignals,nvcsw,nivcsw)\0Aor via the attributes ru_utime, ru_stime, ru_maxrss, and so on.\00", align 16
@struct_rusage_fields = internal global [17 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.40 = private unnamed_addr constant [9 x i8] c"ru_utime\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"user time used\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"ru_stime\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"system time used\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"ru_maxrss\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"max. resident set size\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"ru_ixrss\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"shared memory size\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"ru_idrss\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"unshared data size\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ru_isrss\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"unshared stack size\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"ru_minflt\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"page faults not requiring I/O\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"ru_majflt\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"page faults requiring I/O\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"ru_nswap\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"number of swap outs\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"ru_inblock\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"block input operations\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"ru_oublock\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"block output operations\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"ru_msgsnd\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"IPC messages sent\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"ru_msgrcv\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"IPC messages received\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"ru_nsignals\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"signals received\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"ru_nvcsw\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"voluntary context switches\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"ru_nivcsw\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"involuntary context switches\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_resource() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !596
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !596
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !388, metadata !597), !dbg !598
  %1 = bitcast %struct._object** %v to i8*, !dbg !596
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !596
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !389, metadata !597), !dbg !599
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @resourcemodule, i32 1013), !dbg !600
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !601, !tbaa !602
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !606, !tbaa !602
  %cmp = icmp eq %struct._object* %2, null, !dbg !608
  br i1 %cmp, label %if.then, label %if.end, !dbg !609

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !610
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !610

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !611, !tbaa !602
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !612
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !613, !tbaa !614
  %inc = add i64 %4, 1, !dbg !613
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !613, !tbaa !614
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !617, !tbaa !602
  %6 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !618, !tbaa !602
  %call1 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* %6), !dbg !619
  %7 = load i32, i32* @initialized, align 4, !dbg !620, !tbaa !622
  %tobool = icmp ne i32 %7, 0, !dbg !620
  br i1 %tobool, label %if.end.7, label %if.then.2, !dbg !624

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StructRUsageType, %struct.PyStructSequence_Desc* @struct_rusage_desc), !dbg !625
  %cmp4 = icmp slt i32 %call3, 0, !dbg !628
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !629

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval, !dbg !630
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !630

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7, !dbg !631

if.end.7:                                         ; preds = %if.end.6, %if.end
  %8 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructRUsageType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !632, !tbaa !614
  %inc8 = add i64 %8, 1, !dbg !632
  store i64 %inc8, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructRUsageType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !632, !tbaa !614
  %9 = load %struct._object*, %struct._object** %m, align 8, !dbg !633, !tbaa !602
  %call9 = call i32 @PyModule_AddObject(%struct._object* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructRUsageType, i32 0, i32 0, i32 0)), !dbg !634
  %10 = load %struct._object*, %struct._object** %m, align 8, !dbg !635, !tbaa !602
  %call10 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i64 0), !dbg !636
  %11 = load %struct._object*, %struct._object** %m, align 8, !dbg !637, !tbaa !602
  %call11 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i64 1), !dbg !638
  %12 = load %struct._object*, %struct._object** %m, align 8, !dbg !639, !tbaa !602
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i64 2), !dbg !640
  %13 = load %struct._object*, %struct._object** %m, align 8, !dbg !641, !tbaa !602
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i64 3), !dbg !642
  %14 = load %struct._object*, %struct._object** %m, align 8, !dbg !643, !tbaa !602
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 4), !dbg !644
  %15 = load %struct._object*, %struct._object** %m, align 8, !dbg !645, !tbaa !602
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 7), !dbg !646
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !647, !tbaa !602
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i64 7), !dbg !648
  %17 = load %struct._object*, %struct._object** %m, align 8, !dbg !649, !tbaa !602
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i64 9), !dbg !650
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !651, !tbaa !602
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 5), !dbg !652
  %19 = load %struct._object*, %struct._object** %m, align 8, !dbg !653, !tbaa !602
  %call19 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i64 6), !dbg !654
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !655, !tbaa !602
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i64 8), !dbg !656
  %21 = load %struct._object*, %struct._object** %m, align 8, !dbg !657, !tbaa !602
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i64 12), !dbg !658
  %22 = load %struct._object*, %struct._object** %m, align 8, !dbg !659, !tbaa !602
  %call22 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64 13), !dbg !660
  %23 = load %struct._object*, %struct._object** %m, align 8, !dbg !661, !tbaa !602
  %call23 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i64 14), !dbg !662
  %24 = load %struct._object*, %struct._object** %m, align 8, !dbg !663, !tbaa !602
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i64 15), !dbg !664
  %25 = load %struct._object*, %struct._object** %m, align 8, !dbg !665, !tbaa !602
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i64 11), !dbg !666
  %26 = load %struct._object*, %struct._object** %m, align 8, !dbg !667, !tbaa !602
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i64 0), !dbg !668
  %27 = load %struct._object*, %struct._object** %m, align 8, !dbg !669, !tbaa !602
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i64 -1), !dbg !670
  %28 = load %struct._object*, %struct._object** %m, align 8, !dbg !671, !tbaa !602
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i64 1), !dbg !672
  %call29 = call %struct._object* @PyLong_FromLong(i64 -1), !dbg !673
  store %struct._object* %call29, %struct._object** %v, align 8, !dbg !676, !tbaa !602
  %29 = load %struct._object*, %struct._object** %v, align 8, !dbg !677, !tbaa !602
  %tobool30 = icmp ne %struct._object* %29, null, !dbg !677
  br i1 %tobool30, label %if.then.31, label %if.end.33, !dbg !679

if.then.31:                                       ; preds = %if.end.7
  %30 = load %struct._object*, %struct._object** %m, align 8, !dbg !680, !tbaa !602
  %31 = load %struct._object*, %struct._object** %v, align 8, !dbg !682, !tbaa !602
  %call32 = call i32 @PyModule_AddObject(%struct._object* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), %struct._object* %31), !dbg !683
  br label %if.end.33, !dbg !684

if.end.33:                                        ; preds = %if.then.31, %if.end.7
  store i32 1, i32* @initialized, align 4, !dbg !685, !tbaa !622
  %32 = load %struct._object*, %struct._object** %m, align 8, !dbg !686, !tbaa !602
  store %struct._object* %32, %struct._object** %retval, !dbg !687
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !687

cleanup:                                          ; preds = %if.end.33, %if.then.5, %if.then
  %33 = bitcast %struct._object** %v to i8*, !dbg !688
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !688
  %34 = bitcast %struct._object** %m to i8*, !dbg !688
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !688
  %35 = load %struct._object*, %struct._object** %retval, !dbg !688
  ret %struct._object* %35, !dbg !688
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @resource_getrusage(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %who = alloca i32, align 4
  %ru = alloca %struct.rusage, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !392, metadata !597), !dbg !689
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !393, metadata !597), !dbg !690
  %0 = bitcast i32* %who to i8*, !dbg !691
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !691
  call void @llvm.dbg.declare(metadata i32* %who, metadata !394, metadata !597), !dbg !692
  %1 = bitcast %struct.rusage* %ru to i8*, !dbg !693
  call void @llvm.lifetime.start(i64 144, i8* %1) #1, !dbg !693
  call void @llvm.dbg.declare(metadata %struct.rusage* %ru, metadata !395, metadata !597), !dbg !694
  %2 = bitcast %struct._object** %result to i8*, !dbg !695
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !695
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !478, metadata !597), !dbg !696
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !697, !tbaa !602
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32* %who), !dbg !699
  %tobool = icmp ne i32 %call, 0, !dbg !699
  br i1 %tobool, label %if.end, label %if.then, !dbg !700

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !701
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !701

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %who, align 4, !dbg !702, !tbaa !622
  %call1 = call i32 @getrusage(i32 %4, %struct.rusage* %ru) #1, !dbg !704
  %cmp = icmp eq i32 %call1, -1, !dbg !705
  br i1 %cmp, label %if.then.2, label %if.end.8, !dbg !706

if.then.2:                                        ; preds = %if.end
  %call3 = call i32* @__errno_location() #2, !dbg !707
  %5 = load i32, i32* %call3, align 4, !dbg !710, !tbaa !622
  %cmp4 = icmp eq i32 %5, 22, !dbg !711
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !712

if.then.5:                                        ; preds = %if.then.2
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !713, !tbaa !602
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0)), !dbg !715
  store %struct._object* null, %struct._object** %retval, !dbg !716
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !716

if.end.6:                                         ; preds = %if.then.2
  %7 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !717, !tbaa !602
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %7), !dbg !718
  store %struct._object* null, %struct._object** %retval, !dbg !719
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !719

if.end.8:                                         ; preds = %if.end
  %call9 = call %struct._object* @PyStructSequence_New(%struct._typeobject* @StructRUsageType), !dbg !720
  store %struct._object* %call9, %struct._object** %result, align 8, !dbg !721, !tbaa !602
  %8 = load %struct._object*, %struct._object** %result, align 8, !dbg !722, !tbaa !602
  %tobool10 = icmp ne %struct._object* %8, null, !dbg !722
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !724

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval, !dbg !725
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !725

if.end.12:                                        ; preds = %if.end.8
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0, !dbg !726
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0, !dbg !727
  %9 = load i64, i64* %tv_sec, align 8, !dbg !727, !tbaa !728
  %conv = sitofp i64 %9 to double, !dbg !731
  %ru_utime13 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0, !dbg !732
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime13, i32 0, i32 1, !dbg !733
  %10 = load i64, i64* %tv_usec, align 8, !dbg !733, !tbaa !734
  %conv14 = sitofp i64 %10 to double, !dbg !735
  %mul = fmul double %conv14, 1.000000e-06, !dbg !736
  %add = fadd double %conv, %mul, !dbg !737
  %call15 = call %struct._object* @PyFloat_FromDouble(double %add), !dbg !738
  %11 = load %struct._object*, %struct._object** %result, align 8, !dbg !739, !tbaa !602
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*, !dbg !740
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1, !dbg !741
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !742
  store %struct._object* %call15, %struct._object** %arrayidx, align 8, !dbg !743, !tbaa !602
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1, !dbg !744
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime, i32 0, i32 0, !dbg !745
  %13 = load i64, i64* %tv_sec16, align 8, !dbg !745, !tbaa !746
  %conv17 = sitofp i64 %13 to double, !dbg !747
  %ru_stime18 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1, !dbg !748
  %tv_usec19 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime18, i32 0, i32 1, !dbg !749
  %14 = load i64, i64* %tv_usec19, align 8, !dbg !749, !tbaa !750
  %conv20 = sitofp i64 %14 to double, !dbg !751
  %mul21 = fmul double %conv20, 1.000000e-06, !dbg !752
  %add22 = fadd double %conv17, %mul21, !dbg !753
  %call23 = call %struct._object* @PyFloat_FromDouble(double %add22), !dbg !754
  %15 = load %struct._object*, %struct._object** %result, align 8, !dbg !755, !tbaa !602
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*, !dbg !756
  %ob_item24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1, !dbg !757
  %arrayidx25 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item24, i32 0, i64 1, !dbg !758
  store %struct._object* %call23, %struct._object** %arrayidx25, align 8, !dbg !759, !tbaa !602
  %17 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 2, !dbg !760
  %ru_maxrss = bitcast %union.anon* %17 to i64*, !dbg !760
  %18 = load i64, i64* %ru_maxrss, align 8, !dbg !760, !tbaa !761
  %call26 = call %struct._object* @PyLong_FromLong(i64 %18), !dbg !762
  %19 = load %struct._object*, %struct._object** %result, align 8, !dbg !763, !tbaa !602
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*, !dbg !764
  %ob_item27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1, !dbg !765
  %arrayidx28 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item27, i32 0, i64 2, !dbg !766
  store %struct._object* %call26, %struct._object** %arrayidx28, align 8, !dbg !767, !tbaa !602
  %21 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 3, !dbg !768
  %ru_ixrss = bitcast %union.anon.0* %21 to i64*, !dbg !768
  %22 = load i64, i64* %ru_ixrss, align 8, !dbg !768, !tbaa !761
  %call29 = call %struct._object* @PyLong_FromLong(i64 %22), !dbg !769
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !770, !tbaa !602
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*, !dbg !771
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1, !dbg !772
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 3, !dbg !773
  store %struct._object* %call29, %struct._object** %arrayidx31, align 8, !dbg !774, !tbaa !602
  %25 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 4, !dbg !775
  %ru_idrss = bitcast %union.anon.1* %25 to i64*, !dbg !775
  %26 = load i64, i64* %ru_idrss, align 8, !dbg !775, !tbaa !761
  %call32 = call %struct._object* @PyLong_FromLong(i64 %26), !dbg !776
  %27 = load %struct._object*, %struct._object** %result, align 8, !dbg !777, !tbaa !602
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*, !dbg !778
  %ob_item33 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1, !dbg !779
  %arrayidx34 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item33, i32 0, i64 4, !dbg !780
  store %struct._object* %call32, %struct._object** %arrayidx34, align 8, !dbg !781, !tbaa !602
  %29 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 5, !dbg !782
  %ru_isrss = bitcast %union.anon.2* %29 to i64*, !dbg !782
  %30 = load i64, i64* %ru_isrss, align 8, !dbg !782, !tbaa !761
  %call35 = call %struct._object* @PyLong_FromLong(i64 %30), !dbg !783
  %31 = load %struct._object*, %struct._object** %result, align 8, !dbg !784, !tbaa !602
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*, !dbg !785
  %ob_item36 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1, !dbg !786
  %arrayidx37 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item36, i32 0, i64 5, !dbg !787
  store %struct._object* %call35, %struct._object** %arrayidx37, align 8, !dbg !788, !tbaa !602
  %33 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 6, !dbg !789
  %ru_minflt = bitcast %union.anon.3* %33 to i64*, !dbg !789
  %34 = load i64, i64* %ru_minflt, align 8, !dbg !789, !tbaa !761
  %call38 = call %struct._object* @PyLong_FromLong(i64 %34), !dbg !790
  %35 = load %struct._object*, %struct._object** %result, align 8, !dbg !791, !tbaa !602
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*, !dbg !792
  %ob_item39 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1, !dbg !793
  %arrayidx40 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item39, i32 0, i64 6, !dbg !794
  store %struct._object* %call38, %struct._object** %arrayidx40, align 8, !dbg !795, !tbaa !602
  %37 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 7, !dbg !796
  %ru_majflt = bitcast %union.anon.4* %37 to i64*, !dbg !796
  %38 = load i64, i64* %ru_majflt, align 8, !dbg !796, !tbaa !761
  %call41 = call %struct._object* @PyLong_FromLong(i64 %38), !dbg !797
  %39 = load %struct._object*, %struct._object** %result, align 8, !dbg !798, !tbaa !602
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*, !dbg !799
  %ob_item42 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1, !dbg !800
  %arrayidx43 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item42, i32 0, i64 7, !dbg !801
  store %struct._object* %call41, %struct._object** %arrayidx43, align 8, !dbg !802, !tbaa !602
  %41 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 8, !dbg !803
  %ru_nswap = bitcast %union.anon.5* %41 to i64*, !dbg !803
  %42 = load i64, i64* %ru_nswap, align 8, !dbg !803, !tbaa !761
  %call44 = call %struct._object* @PyLong_FromLong(i64 %42), !dbg !804
  %43 = load %struct._object*, %struct._object** %result, align 8, !dbg !805, !tbaa !602
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*, !dbg !806
  %ob_item45 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1, !dbg !807
  %arrayidx46 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item45, i32 0, i64 8, !dbg !808
  store %struct._object* %call44, %struct._object** %arrayidx46, align 8, !dbg !809, !tbaa !602
  %45 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 9, !dbg !810
  %ru_inblock = bitcast %union.anon.6* %45 to i64*, !dbg !810
  %46 = load i64, i64* %ru_inblock, align 8, !dbg !810, !tbaa !761
  %call47 = call %struct._object* @PyLong_FromLong(i64 %46), !dbg !811
  %47 = load %struct._object*, %struct._object** %result, align 8, !dbg !812, !tbaa !602
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*, !dbg !813
  %ob_item48 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %48, i32 0, i32 1, !dbg !814
  %arrayidx49 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item48, i32 0, i64 9, !dbg !815
  store %struct._object* %call47, %struct._object** %arrayidx49, align 8, !dbg !816, !tbaa !602
  %49 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 10, !dbg !817
  %ru_oublock = bitcast %union.anon.7* %49 to i64*, !dbg !817
  %50 = load i64, i64* %ru_oublock, align 8, !dbg !817, !tbaa !761
  %call50 = call %struct._object* @PyLong_FromLong(i64 %50), !dbg !818
  %51 = load %struct._object*, %struct._object** %result, align 8, !dbg !819, !tbaa !602
  %52 = bitcast %struct._object* %51 to %struct.PyTupleObject*, !dbg !820
  %ob_item51 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %52, i32 0, i32 1, !dbg !821
  %arrayidx52 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item51, i32 0, i64 10, !dbg !822
  store %struct._object* %call50, %struct._object** %arrayidx52, align 8, !dbg !823, !tbaa !602
  %53 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 11, !dbg !824
  %ru_msgsnd = bitcast %union.anon.8* %53 to i64*, !dbg !824
  %54 = load i64, i64* %ru_msgsnd, align 8, !dbg !824, !tbaa !761
  %call53 = call %struct._object* @PyLong_FromLong(i64 %54), !dbg !825
  %55 = load %struct._object*, %struct._object** %result, align 8, !dbg !826, !tbaa !602
  %56 = bitcast %struct._object* %55 to %struct.PyTupleObject*, !dbg !827
  %ob_item54 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %56, i32 0, i32 1, !dbg !828
  %arrayidx55 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item54, i32 0, i64 11, !dbg !829
  store %struct._object* %call53, %struct._object** %arrayidx55, align 8, !dbg !830, !tbaa !602
  %57 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 12, !dbg !831
  %ru_msgrcv = bitcast %union.anon.9* %57 to i64*, !dbg !831
  %58 = load i64, i64* %ru_msgrcv, align 8, !dbg !831, !tbaa !761
  %call56 = call %struct._object* @PyLong_FromLong(i64 %58), !dbg !832
  %59 = load %struct._object*, %struct._object** %result, align 8, !dbg !833, !tbaa !602
  %60 = bitcast %struct._object* %59 to %struct.PyTupleObject*, !dbg !834
  %ob_item57 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %60, i32 0, i32 1, !dbg !835
  %arrayidx58 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item57, i32 0, i64 12, !dbg !836
  store %struct._object* %call56, %struct._object** %arrayidx58, align 8, !dbg !837, !tbaa !602
  %61 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 13, !dbg !838
  %ru_nsignals = bitcast %union.anon.10* %61 to i64*, !dbg !838
  %62 = load i64, i64* %ru_nsignals, align 8, !dbg !838, !tbaa !761
  %call59 = call %struct._object* @PyLong_FromLong(i64 %62), !dbg !839
  %63 = load %struct._object*, %struct._object** %result, align 8, !dbg !840, !tbaa !602
  %64 = bitcast %struct._object* %63 to %struct.PyTupleObject*, !dbg !841
  %ob_item60 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %64, i32 0, i32 1, !dbg !842
  %arrayidx61 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item60, i32 0, i64 13, !dbg !843
  store %struct._object* %call59, %struct._object** %arrayidx61, align 8, !dbg !844, !tbaa !602
  %65 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 14, !dbg !845
  %ru_nvcsw = bitcast %union.anon.11* %65 to i64*, !dbg !845
  %66 = load i64, i64* %ru_nvcsw, align 8, !dbg !845, !tbaa !761
  %call62 = call %struct._object* @PyLong_FromLong(i64 %66), !dbg !846
  %67 = load %struct._object*, %struct._object** %result, align 8, !dbg !847, !tbaa !602
  %68 = bitcast %struct._object* %67 to %struct.PyTupleObject*, !dbg !848
  %ob_item63 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %68, i32 0, i32 1, !dbg !849
  %arrayidx64 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item63, i32 0, i64 14, !dbg !850
  store %struct._object* %call62, %struct._object** %arrayidx64, align 8, !dbg !851, !tbaa !602
  %69 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 15, !dbg !852
  %ru_nivcsw = bitcast %union.anon.12* %69 to i64*, !dbg !852
  %70 = load i64, i64* %ru_nivcsw, align 8, !dbg !852, !tbaa !761
  %call65 = call %struct._object* @PyLong_FromLong(i64 %70), !dbg !853
  %71 = load %struct._object*, %struct._object** %result, align 8, !dbg !854, !tbaa !602
  %72 = bitcast %struct._object* %71 to %struct.PyTupleObject*, !dbg !855
  %ob_item66 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %72, i32 0, i32 1, !dbg !856
  %arrayidx67 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item66, i32 0, i64 15, !dbg !857
  store %struct._object* %call65, %struct._object** %arrayidx67, align 8, !dbg !858, !tbaa !602
  %call68 = call %struct._object* @PyErr_Occurred(), !dbg !859
  %tobool69 = icmp ne %struct._object* %call68, null, !dbg !859
  br i1 %tobool69, label %if.then.70, label %if.end.75, !dbg !860

if.then.70:                                       ; preds = %if.end.12
  br label %do.body, !dbg !861

do.body:                                          ; preds = %if.then.70
  %73 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !862
  call void @llvm.lifetime.start(i64 8, i8* %73) #1, !dbg !862
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !479, metadata !597), !dbg !864
  %74 = load %struct._object*, %struct._object** %result, align 8, !dbg !865, !tbaa !602
  store %struct._object* %74, %struct._object** %_py_decref_tmp, align 8, !dbg !864, !tbaa !602
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !866, !tbaa !602
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0, !dbg !868
  %76 = load i64, i64* %ob_refcnt, align 8, !dbg !869, !tbaa !614
  %dec = add i64 %76, -1, !dbg !869
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !869, !tbaa !614
  %cmp71 = icmp ne i64 %dec, 0, !dbg !870
  br i1 %cmp71, label %if.then.73, label %if.else, !dbg !871

if.then.73:                                       ; preds = %do.body
  br label %if.end.74, !dbg !872

if.else:                                          ; preds = %do.body
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !874, !tbaa !602
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1, !dbg !876
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !876, !tbaa !877
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4, !dbg !878
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !878, !tbaa !879
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !882, !tbaa !602
  call void %79(%struct._object* %80), !dbg !883
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %if.then.73
  %81 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !884
  call void @llvm.lifetime.end(i64 8, i8* %81) #1, !dbg !884
  br label %do.cond, !dbg !886

do.cond:                                          ; preds = %if.end.74
  br label %do.end, !dbg !887

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !889
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !889

if.end.75:                                        ; preds = %if.end.12
  %82 = load %struct._object*, %struct._object** %result, align 8, !dbg !890, !tbaa !602
  store %struct._object* %82, %struct._object** %retval, !dbg !891
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !891

cleanup:                                          ; preds = %if.end.75, %do.end, %if.then.11, %if.end.6, %if.then.5, %if.then
  %83 = bitcast %struct._object** %result to i8*, !dbg !892
  call void @llvm.lifetime.end(i64 8, i8* %83) #1, !dbg !892
  %84 = bitcast %struct.rusage* %ru to i8*, !dbg !892
  call void @llvm.lifetime.end(i64 144, i8* %84) #1, !dbg !892
  %85 = bitcast i32* %who to i8*, !dbg !892
  call void @llvm.lifetime.end(i64 4, i8* %85) #1, !dbg !892
  %86 = load %struct._object*, %struct._object** %retval, !dbg !892
  ret %struct._object* %86, !dbg !892
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @resource_getrlimit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rl = alloca %struct.rlimit, align 8
  %resource = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !485, metadata !597), !dbg !893
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !486, metadata !597), !dbg !894
  %0 = bitcast %struct.rlimit* %rl to i8*, !dbg !895
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !895
  call void @llvm.dbg.declare(metadata %struct.rlimit* %rl, metadata !487, metadata !597), !dbg !896
  %1 = bitcast i32* %resource to i8*, !dbg !897
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !897
  call void @llvm.dbg.declare(metadata i32* %resource, metadata !492, metadata !597), !dbg !898
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !899, !tbaa !602
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32* %resource), !dbg !901
  %tobool = icmp ne i32 %call, 0, !dbg !901
  br i1 %tobool, label %if.end, label %if.then, !dbg !902

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !903
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !903

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %resource, align 4, !dbg !904, !tbaa !622
  %cmp = icmp slt i32 %3, 0, !dbg !906
  br i1 %cmp, label %if.then.2, label %lor.lhs.false, !dbg !907

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %resource, align 4, !dbg !908, !tbaa !622
  %cmp1 = icmp sge i32 %4, 16, !dbg !910
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !911

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !912, !tbaa !602
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0)), !dbg !914
  store %struct._object* null, %struct._object** %retval, !dbg !915
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !915

if.end.3:                                         ; preds = %lor.lhs.false
  %6 = load i32, i32* %resource, align 4, !dbg !916, !tbaa !622
  %call4 = call i32 @getrlimit64(i32 %6, %struct.rlimit* %rl) #1, !dbg !918
  %cmp5 = icmp eq i32 %call4, -1, !dbg !919
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !920

if.then.6:                                        ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !921, !tbaa !602
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %7), !dbg !923
  store %struct._object* null, %struct._object** %retval, !dbg !924
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !924

if.end.8:                                         ; preds = %if.end.3
  %8 = bitcast %struct.rlimit* %rl to { i64, i64 }*, !dbg !925
  %9 = getelementptr { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0, !dbg !925
  %10 = load i64, i64* %9, align 1, !dbg !925
  %11 = getelementptr { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1, !dbg !925
  %12 = load i64, i64* %11, align 1, !dbg !925
  %call9 = call %struct._object* @rlimit2py(i64 %10, i64 %12), !dbg !925
  store %struct._object* %call9, %struct._object** %retval, !dbg !926
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !926

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then.2, %if.then
  %13 = bitcast i32* %resource to i8*, !dbg !927
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !927
  %14 = bitcast %struct.rlimit* %rl to i8*, !dbg !927
  call void @llvm.lifetime.end(i64 16, i8* %14) #1, !dbg !927
  %15 = load %struct._object*, %struct._object** %retval, !dbg !927
  ret %struct._object* %15, !dbg !927
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @resource_prlimit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %old_limit = alloca %struct.rlimit, align 8
  %new_limit = alloca %struct.rlimit, align 8
  %resource = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %pid = alloca i32, align 4
  %curobj = alloca %struct._object*, align 8
  %maxobj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !500, metadata !597), !dbg !928
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !501, metadata !597), !dbg !929
  %0 = bitcast %struct.rlimit* %old_limit to i8*, !dbg !930
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !930
  call void @llvm.dbg.declare(metadata %struct.rlimit* %old_limit, metadata !502, metadata !597), !dbg !931
  %1 = bitcast %struct.rlimit* %new_limit to i8*, !dbg !930
  call void @llvm.lifetime.start(i64 16, i8* %1) #1, !dbg !930
  call void @llvm.dbg.declare(metadata %struct.rlimit* %new_limit, metadata !503, metadata !597), !dbg !932
  %2 = bitcast i32* %resource to i8*, !dbg !933
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !933
  call void @llvm.dbg.declare(metadata i32* %resource, metadata !504, metadata !597), !dbg !934
  %3 = bitcast i32* %retval1 to i8*, !dbg !933
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !933
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !505, metadata !597), !dbg !935
  %4 = bitcast i32* %pid to i8*, !dbg !936
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !936
  call void @llvm.dbg.declare(metadata i32* %pid, metadata !506, metadata !597), !dbg !937
  %5 = bitcast %struct._object** %curobj to i8*, !dbg !938
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !938
  call void @llvm.dbg.declare(metadata %struct._object** %curobj, metadata !510, metadata !597), !dbg !939
  store %struct._object* null, %struct._object** %curobj, align 8, !dbg !939, !tbaa !602
  %6 = bitcast %struct._object** %maxobj to i8*, !dbg !938
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !938
  call void @llvm.dbg.declare(metadata %struct._object** %maxobj, metadata !511, metadata !597), !dbg !940
  store %struct._object* null, %struct._object** %maxobj, align 8, !dbg !940, !tbaa !602
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !941, !tbaa !602
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32* %pid, i32* %resource, %struct._object** %curobj, %struct._object** %maxobj), !dbg !943
  %tobool = icmp ne i32 %call, 0, !dbg !943
  br i1 %tobool, label %if.end, label %if.then, !dbg !944

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !945
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !945

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %resource, align 4, !dbg !946, !tbaa !622
  %cmp = icmp slt i32 %8, 0, !dbg !948
  br i1 %cmp, label %if.then.3, label %lor.lhs.false, !dbg !949

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %resource, align 4, !dbg !950, !tbaa !622
  %cmp2 = icmp sge i32 %9, 16, !dbg !952
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !953

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !954, !tbaa !602
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0)), !dbg !956
  store %struct._object* null, %struct._object** %retval, !dbg !957
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !957

if.end.4:                                         ; preds = %lor.lhs.false
  %11 = load %struct._object*, %struct._object** %curobj, align 8, !dbg !958, !tbaa !602
  %cmp5 = icmp ne %struct._object* %11, null, !dbg !960
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !961

if.then.6:                                        ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %curobj, align 8, !dbg !962, !tbaa !602
  %13 = load %struct._object*, %struct._object** %maxobj, align 8, !dbg !965, !tbaa !602
  %call7 = call i32 @py2rlimit(%struct._object* %12, %struct._object* %13, %struct.rlimit* %new_limit), !dbg !966
  %cmp8 = icmp slt i32 %call7, 0, !dbg !967
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !968

if.then.9:                                        ; preds = %if.then.6
  store %struct._object* null, %struct._object** %retval, !dbg !969
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !969

if.end.10:                                        ; preds = %if.then.6
  %14 = load i32, i32* %pid, align 4, !dbg !971, !tbaa !622
  %15 = load i32, i32* %resource, align 4, !dbg !972, !tbaa !622
  %call11 = call i32 @prlimit64(i32 %14, i32 %15, %struct.rlimit* %new_limit, %struct.rlimit* %old_limit) #1, !dbg !973
  store i32 %call11, i32* %retval1, align 4, !dbg !974, !tbaa !622
  br label %if.end.13, !dbg !975

if.else:                                          ; preds = %if.end.4
  %16 = load i32, i32* %pid, align 4, !dbg !976, !tbaa !622
  %17 = load i32, i32* %resource, align 4, !dbg !978, !tbaa !622
  %call12 = call i32 @prlimit64(i32 %16, i32 %17, %struct.rlimit* null, %struct.rlimit* %old_limit) #1, !dbg !979
  store i32 %call12, i32* %retval1, align 4, !dbg !980, !tbaa !622
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.10
  %18 = load i32, i32* %retval1, align 4, !dbg !981, !tbaa !622
  %cmp14 = icmp eq i32 %18, -1, !dbg !983
  br i1 %cmp14, label %if.then.15, label %if.end.22, !dbg !984

if.then.15:                                       ; preds = %if.end.13
  %call16 = call i32* @__errno_location() #2, !dbg !985
  %19 = load i32, i32* %call16, align 4, !dbg !988, !tbaa !622
  %cmp17 = icmp eq i32 %19, 22, !dbg !989
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !990

if.then.18:                                       ; preds = %if.then.15
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !991, !tbaa !602
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0)), !dbg !993
  br label %if.end.21, !dbg !994

if.else.19:                                       ; preds = %if.then.15
  %21 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !995, !tbaa !602
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %21), !dbg !997
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.18
  store %struct._object* null, %struct._object** %retval, !dbg !998
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !998

if.end.22:                                        ; preds = %if.end.13
  %22 = bitcast %struct.rlimit* %old_limit to { i64, i64 }*, !dbg !999
  %23 = getelementptr { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0, !dbg !999
  %24 = load i64, i64* %23, align 1, !dbg !999
  %25 = getelementptr { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1, !dbg !999
  %26 = load i64, i64* %25, align 1, !dbg !999
  %call23 = call %struct._object* @rlimit2py(i64 %24, i64 %26), !dbg !999
  store %struct._object* %call23, %struct._object** %retval, !dbg !1000
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1000

cleanup:                                          ; preds = %if.end.22, %if.end.21, %if.then.9, %if.then.3, %if.then
  %27 = bitcast %struct._object** %maxobj to i8*, !dbg !1001
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !1001
  %28 = bitcast %struct._object** %curobj to i8*, !dbg !1001
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !1001
  %29 = bitcast i32* %pid to i8*, !dbg !1001
  call void @llvm.lifetime.end(i64 4, i8* %29) #1, !dbg !1001
  %30 = bitcast i32* %retval1 to i8*, !dbg !1001
  call void @llvm.lifetime.end(i64 4, i8* %30) #1, !dbg !1001
  %31 = bitcast i32* %resource to i8*, !dbg !1001
  call void @llvm.lifetime.end(i64 4, i8* %31) #1, !dbg !1001
  %32 = bitcast %struct.rlimit* %new_limit to i8*, !dbg !1001
  call void @llvm.lifetime.end(i64 16, i8* %32) #1, !dbg !1001
  %33 = bitcast %struct.rlimit* %old_limit to i8*, !dbg !1001
  call void @llvm.lifetime.end(i64 16, i8* %33) #1, !dbg !1001
  %34 = load %struct._object*, %struct._object** %retval, !dbg !1001
  ret %struct._object* %34, !dbg !1001
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @resource_setrlimit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rl = alloca %struct.rlimit, align 8
  %resource = alloca i32, align 4
  %limits = alloca %struct._object*, align 8
  %curobj = alloca %struct._object*, align 8
  %maxobj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !522, metadata !597), !dbg !1002
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !523, metadata !597), !dbg !1003
  %0 = bitcast %struct.rlimit* %rl to i8*, !dbg !1004
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !1004
  call void @llvm.dbg.declare(metadata %struct.rlimit* %rl, metadata !524, metadata !597), !dbg !1005
  %1 = bitcast i32* %resource to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %resource, metadata !525, metadata !597), !dbg !1007
  %2 = bitcast %struct._object** %limits to i8*, !dbg !1008
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1008
  call void @llvm.dbg.declare(metadata %struct._object** %limits, metadata !526, metadata !597), !dbg !1009
  %3 = bitcast %struct._object** %curobj to i8*, !dbg !1008
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1008
  call void @llvm.dbg.declare(metadata %struct._object** %curobj, metadata !527, metadata !597), !dbg !1010
  %4 = bitcast %struct._object** %maxobj to i8*, !dbg !1008
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1008
  call void @llvm.dbg.declare(metadata %struct._object** %maxobj, metadata !528, metadata !597), !dbg !1011
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1012, !tbaa !602
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32* %resource, %struct._object** %limits), !dbg !1014
  %tobool = icmp ne i32 %call, 0, !dbg !1014
  br i1 %tobool, label %if.end, label %if.then, !dbg !1015

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1016
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1016

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %resource, align 4, !dbg !1017, !tbaa !622
  %cmp = icmp slt i32 %6, 0, !dbg !1019
  br i1 %cmp, label %if.then.2, label %lor.lhs.false, !dbg !1020

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %resource, align 4, !dbg !1021, !tbaa !622
  %cmp1 = icmp sge i32 %7, 16, !dbg !1023
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1024

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1025, !tbaa !602
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0)), !dbg !1027
  store %struct._object* null, %struct._object** %retval, !dbg !1028
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1028

if.end.3:                                         ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %limits, align 8, !dbg !1029, !tbaa !602
  %call4 = call %struct._object* @PySequence_Tuple(%struct._object* %9), !dbg !1030
  store %struct._object* %call4, %struct._object** %limits, align 8, !dbg !1031, !tbaa !602
  %10 = load %struct._object*, %struct._object** %limits, align 8, !dbg !1032, !tbaa !602
  %tobool5 = icmp ne %struct._object* %10, null, !dbg !1032
  br i1 %tobool5, label %if.end.7, label %if.then.6, !dbg !1034

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !1035
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1035

if.end.7:                                         ; preds = %if.end.3
  %11 = load %struct._object*, %struct._object** %limits, align 8, !dbg !1036, !tbaa !602
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*, !dbg !1038
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !1039
  %13 = load i64, i64* %ob_size, align 8, !dbg !1039, !tbaa !1040
  %cmp8 = icmp ne i64 %13, 2, !dbg !1041
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1042

if.then.9:                                        ; preds = %if.end.7
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1043, !tbaa !602
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0)), !dbg !1045
  br label %error, !dbg !1046

if.end.10:                                        ; preds = %if.end.7
  %15 = load %struct._object*, %struct._object** %limits, align 8, !dbg !1047, !tbaa !602
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*, !dbg !1048
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1, !dbg !1049
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1050
  %17 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1050, !tbaa !602
  store %struct._object* %17, %struct._object** %curobj, align 8, !dbg !1051, !tbaa !602
  %18 = load %struct._object*, %struct._object** %limits, align 8, !dbg !1052, !tbaa !602
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*, !dbg !1053
  %ob_item11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1, !dbg !1054
  %arrayidx12 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item11, i32 0, i64 1, !dbg !1055
  %20 = load %struct._object*, %struct._object** %arrayidx12, align 8, !dbg !1055, !tbaa !602
  store %struct._object* %20, %struct._object** %maxobj, align 8, !dbg !1056, !tbaa !602
  %21 = load %struct._object*, %struct._object** %curobj, align 8, !dbg !1057, !tbaa !602
  %22 = load %struct._object*, %struct._object** %maxobj, align 8, !dbg !1059, !tbaa !602
  %call13 = call i32 @py2rlimit(%struct._object* %21, %struct._object* %22, %struct.rlimit* %rl), !dbg !1060
  %cmp14 = icmp slt i32 %call13, 0, !dbg !1061
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !1062

if.then.15:                                       ; preds = %if.end.10
  br label %error, !dbg !1063

if.end.16:                                        ; preds = %if.end.10
  %23 = load i32, i32* %resource, align 4, !dbg !1065, !tbaa !622
  %call17 = call i32 @setrlimit64(i32 %23, %struct.rlimit* %rl) #1, !dbg !1067
  %cmp18 = icmp eq i32 %call17, -1, !dbg !1068
  br i1 %cmp18, label %if.then.19, label %if.end.30, !dbg !1069

if.then.19:                                       ; preds = %if.end.16
  %call20 = call i32* @__errno_location() #2, !dbg !1070
  %24 = load i32, i32* %call20, align 4, !dbg !1073, !tbaa !622
  %cmp21 = icmp eq i32 %24, 22, !dbg !1074
  br i1 %cmp21, label %if.then.22, label %if.else, !dbg !1075

if.then.22:                                       ; preds = %if.then.19
  %25 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1076, !tbaa !602
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0)), !dbg !1077
  br label %if.end.29, !dbg !1077

if.else:                                          ; preds = %if.then.19
  %call23 = call i32* @__errno_location() #2, !dbg !1078
  %26 = load i32, i32* %call23, align 4, !dbg !1080, !tbaa !622
  %cmp24 = icmp eq i32 %26, 1, !dbg !1081
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !1082

if.then.25:                                       ; preds = %if.else
  %27 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1083, !tbaa !602
  call void @PyErr_SetString(%struct._object* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.37, i32 0, i32 0)), !dbg !1084
  br label %if.end.28, !dbg !1084

if.else.26:                                       ; preds = %if.else
  %28 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1085, !tbaa !602
  %call27 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %28), !dbg !1086
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.22
  br label %error, !dbg !1087

if.end.30:                                        ; preds = %if.end.16
  br label %do.body, !dbg !1088

do.body:                                          ; preds = %if.end.30
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1089
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !1089
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !529, metadata !597), !dbg !1091
  %30 = load %struct._object*, %struct._object** %limits, align 8, !dbg !1092, !tbaa !602
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8, !dbg !1091, !tbaa !602
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1093, !tbaa !602
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !1095
  %32 = load i64, i64* %ob_refcnt, align 8, !dbg !1096, !tbaa !614
  %dec = add i64 %32, -1, !dbg !1096
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1096, !tbaa !614
  %cmp31 = icmp ne i64 %dec, 0, !dbg !1097
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !1098

if.then.32:                                       ; preds = %do.body
  br label %if.end.34, !dbg !1099

if.else.33:                                       ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1101, !tbaa !602
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !1103
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1103, !tbaa !877
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !1104
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1104, !tbaa !879
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1105, !tbaa !602
  call void %35(%struct._object* %36), !dbg !1106
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  %37 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1107
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !1107
  br label %do.cond, !dbg !1109

do.cond:                                          ; preds = %if.end.34
  br label %do.end, !dbg !1110

do.end:                                           ; preds = %do.cond
  %38 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1112, !tbaa !614
  %inc = add i64 %38, 1, !dbg !1112
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1112, !tbaa !614
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1113
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1113

error:                                            ; preds = %if.end.29, %if.then.15, %if.then.9
  br label %do.body.35, !dbg !1114

do.body.35:                                       ; preds = %error
  %39 = bitcast %struct._object** %_py_decref_tmp36 to i8*, !dbg !1115
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !1115
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp36, metadata !531, metadata !597), !dbg !1117
  %40 = load %struct._object*, %struct._object** %limits, align 8, !dbg !1118, !tbaa !602
  store %struct._object* %40, %struct._object** %_py_decref_tmp36, align 8, !dbg !1117, !tbaa !602
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8, !dbg !1119, !tbaa !602
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !1121
  %42 = load i64, i64* %ob_refcnt37, align 8, !dbg !1122, !tbaa !614
  %dec38 = add i64 %42, -1, !dbg !1122
  store i64 %dec38, i64* %ob_refcnt37, align 8, !dbg !1122, !tbaa !614
  %cmp39 = icmp ne i64 %dec38, 0, !dbg !1123
  br i1 %cmp39, label %if.then.40, label %if.else.41, !dbg !1124

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44, !dbg !1125

if.else.41:                                       ; preds = %do.body.35
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8, !dbg !1127, !tbaa !602
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !1129
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !1129, !tbaa !877
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !1130
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8, !dbg !1130, !tbaa !879
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8, !dbg !1131, !tbaa !602
  call void %45(%struct._object* %46), !dbg !1132
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  %47 = bitcast %struct._object** %_py_decref_tmp36 to i8*, !dbg !1133
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !1133
  br label %do.cond.45, !dbg !1134

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !1135

do.end.46:                                        ; preds = %do.cond.45
  store %struct._object* null, %struct._object** %retval, !dbg !1137
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1137

cleanup:                                          ; preds = %do.end.46, %do.end, %if.then.6, %if.then.2, %if.then
  %48 = bitcast %struct._object** %maxobj to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !1138
  %49 = bitcast %struct._object** %curobj to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !1138
  %50 = bitcast %struct._object** %limits to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !1138
  %51 = bitcast i32* %resource to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 4, i8* %51) #1, !dbg !1138
  %52 = bitcast %struct.rlimit* %rl to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 16, i8* %52) #1, !dbg !1138
  %53 = load %struct._object*, %struct._object** %retval, !dbg !1138
  ret %struct._object* %53, !dbg !1138
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @resource_getpagesize(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %pagesize = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !535, metadata !597), !dbg !1139
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !536, metadata !597), !dbg !1140
  %0 = bitcast i64* %pagesize to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1141
  call void @llvm.dbg.declare(metadata i64* %pagesize, metadata !537, metadata !597), !dbg !1142
  store i64 0, i64* %pagesize, align 8, !dbg !1142, !tbaa !761
  %call = call i32 @getpagesize() #2, !dbg !1143
  %conv = sext i32 %call to i64, !dbg !1143
  store i64 %conv, i64* %pagesize, align 8, !dbg !1144, !tbaa !761
  %1 = load i64, i64* %pagesize, align 8, !dbg !1145, !tbaa !761
  %call1 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i64 %1), !dbg !1146
  %2 = bitcast i64* %pagesize to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1147
  ret %struct._object* %call1, !dbg !1148
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind
declare i32 @getrlimit64(i32, %struct.rlimit*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlimit2py(i64 %rl.coerce0, i64 %rl.coerce1) #0 {
entry:
  %rl = alloca %struct.rlimit, align 8
  %0 = bitcast %struct.rlimit* %rl to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %rl.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %rl.coerce1, i64* %2
  call void @llvm.dbg.declare(metadata %struct.rlimit* %rl, metadata !497, metadata !597), !dbg !1149
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rl, i32 0, i32 0, !dbg !1150
  %3 = load i64, i64* %rlim_cur, align 8, !dbg !1150, !tbaa !1151
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rl, i32 0, i32 1, !dbg !1153
  %4 = load i64, i64* %rlim_max, align 8, !dbg !1153, !tbaa !1154
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i64 %3, i64 %4), !dbg !1155
  ret %struct._object* %call, !dbg !1156
}

declare %struct._object* @Py_BuildValue(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @py2rlimit(%struct._object* %curobj, %struct._object* %maxobj, %struct.rlimit* %rl_out) #0 {
entry:
  %retval = alloca i32, align 4
  %curobj.addr = alloca %struct._object*, align 8
  %maxobj.addr = alloca %struct._object*, align 8
  %rl_out.addr = alloca %struct.rlimit*, align 8
  store %struct._object* %curobj, %struct._object** %curobj.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %curobj.addr, metadata !517, metadata !597), !dbg !1157
  store %struct._object* %maxobj, %struct._object** %maxobj.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct._object** %maxobj.addr, metadata !518, metadata !597), !dbg !1158
  store %struct.rlimit* %rl_out, %struct.rlimit** %rl_out.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata %struct.rlimit** %rl_out.addr, metadata !519, metadata !597), !dbg !1159
  %0 = load %struct._object*, %struct._object** %curobj.addr, align 8, !dbg !1160, !tbaa !602
  %call = call i64 @PyLong_AsLong(%struct._object* %0), !dbg !1161
  %1 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8, !dbg !1162, !tbaa !602
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0, !dbg !1163
  store i64 %call, i64* %rlim_cur, align 8, !dbg !1164, !tbaa !1151
  %2 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8, !dbg !1165, !tbaa !602
  %rlim_cur1 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0, !dbg !1167
  %3 = load i64, i64* %rlim_cur1, align 8, !dbg !1167, !tbaa !1151
  %cmp = icmp eq i64 %3, -1, !dbg !1168
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1169

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !1170
  %tobool = icmp ne %struct._object* %call2, null, !dbg !1170
  br i1 %tobool, label %if.then, label %if.end, !dbg !1172

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !1173
  br label %return, !dbg !1173

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct._object*, %struct._object** %maxobj.addr, align 8, !dbg !1174, !tbaa !602
  %call3 = call i64 @PyLong_AsLong(%struct._object* %4), !dbg !1175
  %5 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8, !dbg !1176, !tbaa !602
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 1, !dbg !1177
  store i64 %call3, i64* %rlim_max, align 8, !dbg !1178, !tbaa !1154
  %6 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8, !dbg !1179, !tbaa !602
  %rlim_max4 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1, !dbg !1181
  %7 = load i64, i64* %rlim_max4, align 8, !dbg !1181, !tbaa !1154
  %cmp5 = icmp eq i64 %7, -1, !dbg !1182
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10, !dbg !1183

land.lhs.true.6:                                  ; preds = %if.end
  %call7 = call %struct._object* @PyErr_Occurred(), !dbg !1184
  %tobool8 = icmp ne %struct._object* %call7, null, !dbg !1184
  br i1 %tobool8, label %if.then.9, label %if.end.10, !dbg !1186

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 -1, i32* %retval, !dbg !1187
  br label %return, !dbg !1187

if.end.10:                                        ; preds = %land.lhs.true.6, %if.end
  %8 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8, !dbg !1188, !tbaa !602
  %rlim_cur11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0, !dbg !1189
  %9 = load i64, i64* %rlim_cur11, align 8, !dbg !1189, !tbaa !1151
  %10 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8, !dbg !1190, !tbaa !602
  %rlim_cur12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0, !dbg !1191
  store i64 %9, i64* %rlim_cur12, align 8, !dbg !1192, !tbaa !1151
  %11 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8, !dbg !1193, !tbaa !602
  %rlim_max13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %11, i32 0, i32 1, !dbg !1194
  %12 = load i64, i64* %rlim_max13, align 8, !dbg !1194, !tbaa !1154
  %13 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8, !dbg !1195, !tbaa !602
  %rlim_max14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 1, !dbg !1196
  store i64 %12, i64* %rlim_max14, align 8, !dbg !1197, !tbaa !1154
  store i32 0, i32* %retval, !dbg !1198
  br label %return, !dbg !1198

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %14 = load i32, i32* %retval, !dbg !1199
  ret i32 %14, !dbg !1199
}

; Function Attrs: nounwind
declare i32 @prlimit64(i32, i32, %struct.rlimit*, %struct.rlimit*) #4

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PySequence_Tuple(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @setrlimit64(i32, %struct.rlimit*) #4

; Function Attrs: nounwind readnone
declare i32 @getpagesize() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!592, !593, !594}
!llvm.ident = !{!595}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !30, subprograms: !382, globals: !538)
!1 = !DIFile(filename: "resource.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !25}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !4, line: 31, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/bits/resource.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!6 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!7 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!8 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!9 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!10 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!11 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!12 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!13 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!14 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!15 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!16 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!17 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!18 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!19 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!20 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!21 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!22 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!23 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!24 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rusage_who", file: !4, line: 158, size: 32, align: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "RUSAGE_SELF", value: 0)
!28 = !DIEnumerator(name: "RUSAGE_CHILDREN", value: -1)
!29 = !DIEnumerator(name: "RUSAGE_THREAD", value: 1)
!30 = !{!31, !32, !44, !370, !371, !379, !381}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !34, line: 109, baseType: !35)
!34 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !34, line: 105, size: 128, align: 64, elements: !36)
!36 = !{!37, !45}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !35, file: !34, line: 107, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !39, line: 177, baseType: !40)
!39 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 102, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 181, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!44 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !35, file: !34, line: 108, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !34, line: 334, size: 3200, align: 64, elements: !48)
!48 = !{!49, !55, !59, !60, !61, !66, !129, !134, !139, !140, !145, !197, !228, !240, !246, !247, !248, !250, !252, !283, !284, !285, !294, !295, !300, !301, !303, !305, !315, !318, !336, !337, !338, !340, !342, !343, !345, !350, !355, !360, !361, !362, !363, !364, !365, !366, !367, !369}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !47, file: !34, line: 335, baseType: !50, size: 192, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !34, line: 114, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 111, size: 192, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !51, file: !34, line: 112, baseType: !33, size: 128, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !51, file: !34, line: 113, baseType: !38, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !47, file: !34, line: 336, baseType: !56, size: 64, align: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !47, file: !34, line: 337, baseType: !38, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !47, file: !34, line: 337, baseType: !38, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !47, file: !34, line: 341, baseType: !62, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !34, line: 308, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !32}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !47, file: !34, line: 342, baseType: !67, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !34, line: 314, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !32, !72, !71}
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !41, line: 48, baseType: !74)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 246, size: 1728, align: 64, elements: !76)
!75 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!76 = !{!77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !98, !99, !100, !101, !103, !105, !107, !111, !114, !116, !117, !118, !119, !120, !124, !125}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 247, baseType: !71, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 252, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 253, baseType: !79, size: 64, align: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 254, baseType: !79, size: 64, align: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 255, baseType: !79, size: 64, align: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 256, baseType: !79, size: 64, align: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 257, baseType: !79, size: 64, align: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 258, baseType: !79, size: 64, align: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 259, baseType: !79, size: 64, align: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 261, baseType: !79, size: 64, align: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 262, baseType: !79, size: 64, align: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 263, baseType: !79, size: 64, align: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 265, baseType: !91, size: 64, align: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 161, size: 192, align: 64, elements: !93)
!93 = !{!94, !95, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !92, file: !75, line: 162, baseType: !91, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !92, file: !75, line: 163, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !92, file: !75, line: 167, baseType: !71, size: 32, align: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 267, baseType: !96, size: 64, align: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 269, baseType: !71, size: 32, align: 32, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 273, baseType: !71, size: 32, align: 32, offset: 928)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 275, baseType: !102, size: 64, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 140, baseType: !44)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 279, baseType: !104, size: 16, align: 16, offset: 1024)
!104 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 280, baseType: !106, size: 8, align: 8, offset: 1040)
!106 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 281, baseType: !108, size: 8, align: 8, offset: 1048)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 8, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 1)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 285, baseType: !112, size: 64, align: 64, offset: 1088)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 155, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 294, baseType: !115, size: 64, align: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 141, baseType: !44)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !74, file: !75, line: 303, baseType: !31, size: 64, align: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !74, file: !75, line: 304, baseType: !31, size: 64, align: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !74, file: !75, line: 305, baseType: !31, size: 64, align: 64, offset: 1344)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !74, file: !75, line: 306, baseType: !31, size: 64, align: 64, offset: 1408)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 307, baseType: !121, size: 64, align: 64, offset: 1472)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 62, baseType: !123)
!122 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!123 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 309, baseType: !71, size: 32, align: 32, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 311, baseType: !126, size: 160, align: 8, offset: 1568)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, align: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 20)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !47, file: !34, line: 343, baseType: !130, size: 64, align: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !34, line: 316, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!32, !32, !79}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !47, file: !34, line: 344, baseType: !135, size: 64, align: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !34, line: 318, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!71, !32, !79, !32}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !47, file: !34, line: 345, baseType: !31, size: 64, align: 64, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !47, file: !34, line: 346, baseType: !141, size: 64, align: 64, offset: 704)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !34, line: 320, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!32, !32}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !47, file: !34, line: 350, baseType: !146, size: 64, align: 64, offset: 768)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !34, line: 278, baseType: !148)
!148 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 236, size: 2176, align: 64, elements: !149)
!149 = !{!150, !155, !156, !157, !158, !159, !164, !166, !167, !168, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !148, file: !34, line: 241, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !34, line: 166, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!32, !32, !32}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !148, file: !34, line: 242, baseType: !151, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !148, file: !34, line: 243, baseType: !151, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !148, file: !34, line: 244, baseType: !151, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !148, file: !34, line: 245, baseType: !151, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !148, file: !34, line: 246, baseType: !160, size: 64, align: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !34, line: 167, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!32, !32, !32, !32}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !148, file: !34, line: 247, baseType: !165, size: 64, align: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !34, line: 165, baseType: !142)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !148, file: !34, line: 248, baseType: !165, size: 64, align: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !148, file: !34, line: 249, baseType: !165, size: 64, align: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !148, file: !34, line: 250, baseType: !169, size: 64, align: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !34, line: 168, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!71, !32}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !148, file: !34, line: 251, baseType: !165, size: 64, align: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !148, file: !34, line: 252, baseType: !151, size: 64, align: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !148, file: !34, line: 253, baseType: !151, size: 64, align: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !148, file: !34, line: 254, baseType: !151, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !148, file: !34, line: 255, baseType: !151, size: 64, align: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !148, file: !34, line: 256, baseType: !151, size: 64, align: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !148, file: !34, line: 257, baseType: !165, size: 64, align: 64, offset: 1024)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !148, file: !34, line: 258, baseType: !31, size: 64, align: 64, offset: 1088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !148, file: !34, line: 259, baseType: !165, size: 64, align: 64, offset: 1152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !148, file: !34, line: 261, baseType: !151, size: 64, align: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !148, file: !34, line: 262, baseType: !151, size: 64, align: 64, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !148, file: !34, line: 263, baseType: !151, size: 64, align: 64, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !148, file: !34, line: 264, baseType: !151, size: 64, align: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !148, file: !34, line: 265, baseType: !160, size: 64, align: 64, offset: 1472)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !148, file: !34, line: 266, baseType: !151, size: 64, align: 64, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !148, file: !34, line: 267, baseType: !151, size: 64, align: 64, offset: 1600)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !148, file: !34, line: 268, baseType: !151, size: 64, align: 64, offset: 1664)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !148, file: !34, line: 269, baseType: !151, size: 64, align: 64, offset: 1728)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !148, file: !34, line: 270, baseType: !151, size: 64, align: 64, offset: 1792)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !148, file: !34, line: 272, baseType: !151, size: 64, align: 64, offset: 1856)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !148, file: !34, line: 273, baseType: !151, size: 64, align: 64, offset: 1920)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !148, file: !34, line: 274, baseType: !151, size: 64, align: 64, offset: 1984)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !148, file: !34, line: 275, baseType: !151, size: 64, align: 64, offset: 2048)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !148, file: !34, line: 277, baseType: !165, size: 64, align: 64, offset: 2112)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !47, file: !34, line: 351, baseType: !198, size: 64, align: 64, offset: 832)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !34, line: 292, baseType: !200)
!200 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 280, size: 640, align: 64, elements: !201)
!201 = !{!202, !207, !208, !213, !214, !215, !220, !221, !226, !227}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !200, file: !34, line: 281, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !34, line: 169, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!38, !32}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !200, file: !34, line: 282, baseType: !151, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !200, file: !34, line: 283, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !34, line: 170, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!32, !32, !38}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !200, file: !34, line: 284, baseType: !209, size: 64, align: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !200, file: !34, line: 285, baseType: !31, size: 64, align: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !200, file: !34, line: 286, baseType: !216, size: 64, align: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !34, line: 172, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!71, !32, !38, !32}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !200, file: !34, line: 287, baseType: !31, size: 64, align: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !200, file: !34, line: 288, baseType: !222, size: 64, align: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !34, line: 231, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!71, !32, !32}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !200, file: !34, line: 290, baseType: !151, size: 64, align: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !200, file: !34, line: 291, baseType: !209, size: 64, align: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !47, file: !34, line: 352, baseType: !229, size: 64, align: 64, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !34, line: 298, baseType: !231)
!231 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 294, size: 192, align: 64, elements: !232)
!232 = !{!233, !234, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !231, file: !34, line: 295, baseType: !203, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !231, file: !34, line: 296, baseType: !151, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !231, file: !34, line: 297, baseType: !236, size: 64, align: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !34, line: 174, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!71, !32, !32, !32}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !47, file: !34, line: 356, baseType: !241, size: 64, align: 64, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !34, line: 321, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !32}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !39, line: 186, baseType: !38)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !47, file: !34, line: 357, baseType: !160, size: 64, align: 64, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !47, file: !34, line: 358, baseType: !141, size: 64, align: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !47, file: !34, line: 359, baseType: !249, size: 64, align: 64, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !34, line: 317, baseType: !152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !47, file: !34, line: 360, baseType: !251, size: 64, align: 64, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !34, line: 319, baseType: !237)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !47, file: !34, line: 363, baseType: !253, size: 64, align: 64, offset: 1280)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !34, line: 304, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 301, size: 128, align: 64, elements: !256)
!256 = !{!257, !278}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !255, file: !34, line: 302, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !34, line: 193, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!71, !32, !262, !71}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !34, line: 191, baseType: !264)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !34, line: 178, size: 640, align: 64, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !275, !276, !277}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !264, file: !34, line: 179, baseType: !31, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !264, file: !34, line: 180, baseType: !32, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !264, file: !34, line: 181, baseType: !38, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !264, file: !34, line: 182, baseType: !38, size: 64, align: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !264, file: !34, line: 184, baseType: !71, size: 32, align: 32, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !264, file: !34, line: 185, baseType: !71, size: 32, align: 32, offset: 288)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !264, file: !34, line: 186, baseType: !79, size: 64, align: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !264, file: !34, line: 187, baseType: !274, size: 64, align: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !264, file: !34, line: 188, baseType: !274, size: 64, align: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !264, file: !34, line: 189, baseType: !274, size: 64, align: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !264, file: !34, line: 190, baseType: !31, size: 64, align: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !255, file: !34, line: 303, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !34, line: 194, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !32, !262}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !47, file: !34, line: 366, baseType: !123, size: 64, align: 64, offset: 1344)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !47, file: !34, line: 368, baseType: !56, size: 64, align: 64, offset: 1408)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !47, file: !34, line: 372, baseType: !286, size: 64, align: 64, offset: 1472)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !34, line: 233, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!71, !32, !290, !31}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !34, line: 232, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!71, !32, !31}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !47, file: !34, line: 375, baseType: !169, size: 64, align: 64, offset: 1536)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !47, file: !34, line: 379, baseType: !296, size: 64, align: 64, offset: 1600)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !34, line: 322, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!32, !32, !32, !71}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !47, file: !34, line: 382, baseType: !38, size: 64, align: 64, offset: 1664)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !47, file: !34, line: 385, baseType: !302, size: 64, align: 64, offset: 1728)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !34, line: 323, baseType: !142)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !47, file: !34, line: 386, baseType: !304, size: 64, align: 64, offset: 1792)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !34, line: 324, baseType: !142)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !47, file: !34, line: 389, baseType: !306, size: 64, align: 64, offset: 1856)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !308, line: 40, size: 256, align: 64, elements: !309)
!308 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!309 = !{!310, !311, !313, !314}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !307, file: !308, line: 41, baseType: !56, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !307, file: !308, line: 42, baseType: !312, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !308, line: 18, baseType: !152)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !307, file: !308, line: 43, baseType: !71, size: 32, align: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !307, file: !308, line: 45, baseType: !56, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !47, file: !34, line: 390, baseType: !316, size: 64, align: 64, offset: 1920)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !34, line: 390, flags: DIFlagFwdDecl)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !47, file: !34, line: 391, baseType: !319, size: 64, align: 64, offset: 1984)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !321, line: 11, size: 320, align: 64, elements: !322)
!321 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!322 = !{!323, !324, !329, !334, !335}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !321, line: 12, baseType: !79, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !320, file: !321, line: 13, baseType: !325, size: 64, align: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !321, line: 8, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!32, !32, !31}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !320, file: !321, line: 14, baseType: !330, size: 64, align: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !321, line: 9, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!71, !32, !32, !31}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !320, file: !321, line: 15, baseType: !79, size: 64, align: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !320, file: !321, line: 16, baseType: !31, size: 64, align: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !47, file: !34, line: 392, baseType: !46, size: 64, align: 64, offset: 2048)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !47, file: !34, line: 393, baseType: !32, size: 64, align: 64, offset: 2112)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !47, file: !34, line: 394, baseType: !339, size: 64, align: 64, offset: 2176)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !34, line: 325, baseType: !161)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !47, file: !34, line: 395, baseType: !341, size: 64, align: 64, offset: 2240)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !34, line: 326, baseType: !237)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !47, file: !34, line: 396, baseType: !38, size: 64, align: 64, offset: 2304)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !47, file: !34, line: 397, baseType: !344, size: 64, align: 64, offset: 2368)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !34, line: 327, baseType: !237)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !47, file: !34, line: 398, baseType: !346, size: 64, align: 64, offset: 2432)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !34, line: 329, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!32, !46, !38}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !47, file: !34, line: 399, baseType: !351, size: 64, align: 64, offset: 2496)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !34, line: 328, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!32, !46, !32, !32}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !47, file: !34, line: 400, baseType: !356, size: 64, align: 64, offset: 2560)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !34, line: 307, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !31}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !47, file: !34, line: 401, baseType: !169, size: 64, align: 64, offset: 2624)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !47, file: !34, line: 402, baseType: !32, size: 64, align: 64, offset: 2688)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !47, file: !34, line: 403, baseType: !32, size: 64, align: 64, offset: 2752)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !47, file: !34, line: 404, baseType: !32, size: 64, align: 64, offset: 2816)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !47, file: !34, line: 405, baseType: !32, size: 64, align: 64, offset: 2880)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !47, file: !34, line: 406, baseType: !32, size: 64, align: 64, offset: 2944)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !47, file: !34, line: 407, baseType: !62, size: 64, align: 64, offset: 3008)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !47, file: !34, line: 410, baseType: !368, size: 32, align: 32, offset: 3072)
!368 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !47, file: !34, line: 412, baseType: !62, size: 64, align: 64, offset: 3136)
!370 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !373, line: 33, baseType: !374)
!373 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!374 = !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 25, size: 256, align: 64, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !374, file: !373, line: 26, baseType: !50, size: 192, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !374, file: !373, line: 27, baseType: !378, size: 64, align: 64, offset: 192)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, align: 64, elements: !109)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !4, line: 133, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim64_t", file: !43, line: 146, baseType: !123)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!382 = !{!383, !390, !483, !493, !498, !512, !520, !533}
!383 = !DISubprogram(name: "PyInit_resource", scope: !384, file: !384, line: 314, type: !385, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_resource, variables: !387)
!384 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/resource.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!385 = !DISubroutineType(types: !386)
!386 = !{!32}
!387 = !{!388, !389}
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !383, file: !384, line: 316, type: !32)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !383, file: !384, line: 316, type: !32)
!390 = !DISubprogram(name: "resource_getrusage", scope: !384, file: !384, line: 59, type: !153, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @resource_getrusage, variables: !391)
!391 = !{!392, !393, !394, !395, !478, !479}
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !390, file: !384, line: 59, type: !32)
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !390, file: !384, line: 59, type: !32)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "who", scope: !390, file: !384, line: 61, type: !71)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ru", scope: !390, file: !384, line: 62, type: !396)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !4, line: 187, size: 1152, align: 64, elements: !397)
!397 = !{!398, !406, !407, !413, !418, !423, !428, !433, !438, !443, !448, !453, !458, !463, !468, !473}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !396, file: !4, line: 190, baseType: !399, size: 128, align: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !400, line: 30, size: 128, align: 64, elements: !401)
!400 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!401 = !{!402, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !399, file: !400, line: 32, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !43, line: 148, baseType: !44)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !399, file: !400, line: 33, baseType: !405, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !43, line: 150, baseType: !44)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !396, file: !4, line: 192, baseType: !399, size: 128, align: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 194, baseType: !408, size: 64, align: 64, offset: 256)
!408 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 194, size: 64, align: 64, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !408, file: !4, line: 196, baseType: !44, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_maxrss_word", scope: !408, file: !4, line: 197, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !43, line: 184, baseType: !44)
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 202, baseType: !414, size: 64, align: 64, offset: 320)
!414 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 202, size: 64, align: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !414, file: !4, line: 204, baseType: !44, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_ixrss_word", scope: !414, file: !4, line: 205, baseType: !412, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 208, baseType: !419, size: 64, align: 64, offset: 384)
!419 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 208, size: 64, align: 64, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !419, file: !4, line: 210, baseType: !44, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_idrss_word", scope: !419, file: !4, line: 211, baseType: !412, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 214, baseType: !424, size: 64, align: 64, offset: 448)
!424 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 214, size: 64, align: 64, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !424, file: !4, line: 216, baseType: !44, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_isrss_word", scope: !424, file: !4, line: 217, baseType: !412, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 221, baseType: !429, size: 64, align: 64, offset: 512)
!429 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 221, size: 64, align: 64, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !429, file: !4, line: 223, baseType: !44, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_minflt_word", scope: !429, file: !4, line: 224, baseType: !412, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 227, baseType: !434, size: 64, align: 64, offset: 576)
!434 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 227, size: 64, align: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !434, file: !4, line: 229, baseType: !44, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_majflt_word", scope: !434, file: !4, line: 230, baseType: !412, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 233, baseType: !439, size: 64, align: 64, offset: 640)
!439 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 233, size: 64, align: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !439, file: !4, line: 235, baseType: !44, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nswap_word", scope: !439, file: !4, line: 236, baseType: !412, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 240, baseType: !444, size: 64, align: 64, offset: 704)
!444 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 240, size: 64, align: 64, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !444, file: !4, line: 242, baseType: !44, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_inblock_word", scope: !444, file: !4, line: 243, baseType: !412, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 246, baseType: !449, size: 64, align: 64, offset: 768)
!449 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 246, size: 64, align: 64, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !449, file: !4, line: 248, baseType: !44, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_oublock_word", scope: !449, file: !4, line: 249, baseType: !412, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 252, baseType: !454, size: 64, align: 64, offset: 832)
!454 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 252, size: 64, align: 64, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !454, file: !4, line: 254, baseType: !44, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgsnd_word", scope: !454, file: !4, line: 255, baseType: !412, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 258, baseType: !459, size: 64, align: 64, offset: 896)
!459 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 258, size: 64, align: 64, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !459, file: !4, line: 260, baseType: !44, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgrcv_word", scope: !459, file: !4, line: 261, baseType: !412, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 264, baseType: !464, size: 64, align: 64, offset: 960)
!464 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 264, size: 64, align: 64, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !464, file: !4, line: 266, baseType: !44, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nsignals_word", scope: !464, file: !4, line: 267, baseType: !412, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 272, baseType: !469, size: 64, align: 64, offset: 1024)
!469 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 272, size: 64, align: 64, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !469, file: !4, line: 274, baseType: !44, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nvcsw_word", scope: !469, file: !4, line: 275, baseType: !412, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !4, line: 279, baseType: !474, size: 64, align: 64, offset: 1088)
!474 = !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !4, line: 279, size: 64, align: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !474, file: !4, line: 281, baseType: !44, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nivcsw_word", scope: !474, file: !4, line: 282, baseType: !412, size: 64, align: 64)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !390, file: !384, line: 63, type: !32)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !480, file: !384, line: 102, type: !32)
!480 = distinct !DILexicalBlock(scope: !481, file: !384, line: 102, column: 12)
!481 = distinct !DILexicalBlock(scope: !482, file: !384, line: 101, column: 27)
!482 = distinct !DILexicalBlock(scope: !390, file: !384, line: 101, column: 9)
!483 = !DISubprogram(name: "resource_getrlimit", scope: !384, file: !384, line: 149, type: !153, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @resource_getrlimit, variables: !484)
!484 = !{!485, !486, !487, !492}
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !483, file: !384, line: 149, type: !32)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !483, file: !384, line: 149, type: !32)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rl", scope: !483, file: !384, line: 151, type: !488)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4, line: 139, size: 128, align: 64, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !488, file: !4, line: 142, baseType: !379, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !488, file: !4, line: 144, baseType: !379, size: 64, align: 64, offset: 64)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resource", scope: !483, file: !384, line: 152, type: !71)
!493 = !DISubprogram(name: "rlimit2py", scope: !384, file: !384, line: 136, type: !494, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64, i64)* @rlimit2py, variables: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!32, !488}
!496 = !{!497}
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rl", arg: 1, scope: !493, file: !384, line: 136, type: !488)
!498 = !DISubprogram(name: "resource_prlimit", scope: !384, file: !384, line: 225, type: !153, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @resource_prlimit, variables: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !510, !511}
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !498, file: !384, line: 225, type: !32)
!501 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !498, file: !384, line: 225, type: !32)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_limit", scope: !498, file: !384, line: 227, type: !488)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_limit", scope: !498, file: !384, line: 227, type: !488)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resource", scope: !498, file: !384, line: 228, type: !71)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !498, file: !384, line: 228, type: !71)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pid", scope: !498, file: !384, line: 229, type: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !508, line: 98, baseType: !509)
!508 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !43, line: 142, baseType: !71)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curobj", scope: !498, file: !384, line: 230, type: !32)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxobj", scope: !498, file: !384, line: 230, type: !32)
!512 = !DISubprogram(name: "py2rlimit", scope: !384, file: !384, line: 110, type: !513, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct.rlimit*)* @py2rlimit, variables: !516)
!513 = !DISubroutineType(types: !514)
!514 = !{!71, !32, !32, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!516 = !{!517, !518, !519}
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "curobj", arg: 1, scope: !512, file: !384, line: 110, type: !32)
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxobj", arg: 2, scope: !512, file: !384, line: 110, type: !32)
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rl_out", arg: 3, scope: !512, file: !384, line: 110, type: !515)
!520 = !DISubprogram(name: "resource_setrlimit", scope: !384, file: !384, line: 171, type: !153, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @resource_setrlimit, variables: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !531}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !520, file: !384, line: 171, type: !32)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !520, file: !384, line: 171, type: !32)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rl", scope: !520, file: !384, line: 173, type: !488)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resource", scope: !520, file: !384, line: 174, type: !71)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limits", scope: !520, file: !384, line: 175, type: !32)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curobj", scope: !520, file: !384, line: 175, type: !32)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxobj", scope: !520, file: !384, line: 175, type: !32)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !530, file: !384, line: 214, type: !32)
!530 = distinct !DILexicalBlock(scope: !520, file: !384, line: 214, column: 8)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !532, file: !384, line: 219, type: !32)
!532 = distinct !DILexicalBlock(scope: !520, file: !384, line: 219, column: 8)
!533 = !DISubprogram(name: "resource_getpagesize", scope: !384, file: !384, line: 266, type: !153, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @resource_getpagesize, variables: !534)
!534 = !{!535, !536, !537}
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !533, file: !384, line: 266, type: !32)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !533, file: !384, line: 266, type: !32)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pagesize", scope: !533, file: !384, line: 268, type: !44)
!538 = !{!539, !540, !542, !565, !569, !583, !587}
!539 = !DIGlobalVariable(name: "initialized", scope: !0, file: !384, line: 55, type: !71, isLocal: true, isDefinition: true, variable: i32* @initialized)
!540 = !DIGlobalVariable(name: "StructRUsageType", scope: !0, file: !384, line: 56, type: !541, isLocal: true, isDefinition: true, variable: %struct._typeobject* @StructRUsageType)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !34, line: 422, baseType: !47)
!542 = !DIGlobalVariable(name: "resourcemodule", scope: !0, file: !384, line: 301, type: !543, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @resourcemodule)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !544, line: 47, size: 832, align: 64, elements: !545)
!544 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!545 = !{!546, !555, !556, !557, !558, !561, !562, !563, !564}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !543, file: !544, line: 48, baseType: !547, size: 320, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !544, line: 38, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !544, line: 33, size: 320, align: 64, elements: !549)
!549 = !{!550, !551, !553, !554}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !548, file: !544, line: 34, baseType: !33, size: 128, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !548, file: !544, line: 35, baseType: !552, size: 64, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !548, file: !544, line: 36, baseType: !38, size: 64, align: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !548, file: !544, line: 37, baseType: !32, size: 64, align: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !543, file: !544, line: 49, baseType: !56, size: 64, align: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !543, file: !544, line: 50, baseType: !56, size: 64, align: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !543, file: !544, line: 51, baseType: !38, size: 64, align: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !543, file: !544, line: 52, baseType: !559, size: 64, align: 64, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !308, line: 47, baseType: !307)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !543, file: !544, line: 53, baseType: !169, size: 64, align: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !543, file: !544, line: 54, baseType: !286, size: 64, align: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !543, file: !544, line: 55, baseType: !169, size: 64, align: 64, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !543, file: !544, line: 56, baseType: !356, size: 64, align: 64, offset: 768)
!565 = !DIGlobalVariable(name: "resource_methods", scope: !0, file: !384, line: 286, type: !566, isLocal: true, isDefinition: true, variable: [6 x %struct.PyMethodDef]* @resource_methods)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 1536, align: 64, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 6)
!569 = !DIGlobalVariable(name: "struct_rusage_desc", scope: !0, file: !384, line: 48, type: !570, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @struct_rusage_desc)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !571, line: 20, baseType: !572)
!571 = !DIFile(filename: "./Include/structseq.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !571, line: 15, size: 256, align: 64, elements: !573)
!573 = !{!574, !575, !576, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !572, file: !571, line: 16, baseType: !79, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !572, file: !571, line: 17, baseType: !79, size: 64, align: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !572, file: !571, line: 18, baseType: !577, size: 64, align: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64, align: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !571, line: 10, size: 128, align: 64, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !578, file: !571, line: 11, baseType: !79, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !578, file: !571, line: 12, baseType: !79, size: 64, align: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !572, file: !571, line: 19, baseType: !71, size: 32, align: 32, offset: 192)
!583 = !DIGlobalVariable(name: "struct_rusage__doc__", scope: !0, file: !384, line: 21, type: !584, isLocal: true, isDefinition: true, variable: [272 x i8]* @struct_rusage__doc__)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2176, align: 8, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 272)
!587 = !DIGlobalVariable(name: "struct_rusage_fields", scope: !0, file: !384, line: 28, type: !588, isLocal: true, isDefinition: true, variable: [17 x %struct.PyStructSequence_Field]* @struct_rusage_fields)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 2176, align: 64, elements: !590)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !571, line: 13, baseType: !578)
!590 = !{!591}
!591 = !DISubrange(count: 17)
!592 = !{i32 2, !"Dwarf Version", i32 4}
!593 = !{i32 2, !"Debug Info Version", i32 3}
!594 = !{i32 1, !"PIC Level", i32 2}
!595 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!596 = !DILocation(line: 316, column: 5, scope: !383)
!597 = !DIExpression()
!598 = !DILocation(line: 316, column: 15, scope: !383)
!599 = !DILocation(line: 316, column: 19, scope: !383)
!600 = !DILocation(line: 319, column: 9, scope: !383)
!601 = !DILocation(line: 319, column: 7, scope: !383)
!602 = !{!603, !603, i64 0}
!603 = !{!"any pointer", !604, i64 0}
!604 = !{!"omnipotent char", !605, i64 0}
!605 = !{!"Simple C/C++ TBAA"}
!606 = !DILocation(line: 320, column: 9, scope: !607)
!607 = distinct !DILexicalBlock(scope: !383, file: !384, line: 320, column: 9)
!608 = !DILocation(line: 320, column: 11, scope: !607)
!609 = !DILocation(line: 320, column: 9, scope: !383)
!610 = !DILocation(line: 321, column: 9, scope: !607)
!611 = !DILocation(line: 324, column: 21, scope: !383)
!612 = !DILocation(line: 324, column: 38, scope: !383)
!613 = !DILocation(line: 324, column: 47, scope: !383)
!614 = !{!615, !616, i64 0}
!615 = !{!"_object", !616, i64 0, !603, i64 8}
!616 = !{!"long", !604, i64 0}
!617 = !DILocation(line: 325, column: 24, scope: !383)
!618 = !DILocation(line: 325, column: 36, scope: !383)
!619 = !DILocation(line: 325, column: 5, scope: !383)
!620 = !DILocation(line: 326, column: 10, scope: !621)
!621 = distinct !DILexicalBlock(scope: !383, file: !384, line: 326, column: 9)
!622 = !{!623, !623, i64 0}
!623 = !{!"int", !604, i64 0}
!624 = !DILocation(line: 326, column: 9, scope: !383)
!625 = !DILocation(line: 327, column: 13, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !384, line: 327, column: 13)
!627 = distinct !DILexicalBlock(scope: !621, file: !384, line: 326, column: 23)
!628 = !DILocation(line: 328, column: 61, scope: !626)
!629 = !DILocation(line: 327, column: 13, scope: !627)
!630 = !DILocation(line: 329, column: 13, scope: !626)
!631 = !DILocation(line: 330, column: 5, scope: !627)
!632 = !DILocation(line: 332, column: 51, scope: !383)
!633 = !DILocation(line: 333, column: 24, scope: !383)
!634 = !DILocation(line: 333, column: 5, scope: !383)
!635 = !DILocation(line: 338, column: 29, scope: !383)
!636 = !DILocation(line: 338, column: 5, scope: !383)
!637 = !DILocation(line: 342, column: 29, scope: !383)
!638 = !DILocation(line: 342, column: 5, scope: !383)
!639 = !DILocation(line: 346, column: 29, scope: !383)
!640 = !DILocation(line: 346, column: 5, scope: !383)
!641 = !DILocation(line: 350, column: 29, scope: !383)
!642 = !DILocation(line: 350, column: 5, scope: !383)
!643 = !DILocation(line: 354, column: 29, scope: !383)
!644 = !DILocation(line: 354, column: 5, scope: !383)
!645 = !DILocation(line: 358, column: 29, scope: !383)
!646 = !DILocation(line: 358, column: 5, scope: !383)
!647 = !DILocation(line: 362, column: 29, scope: !383)
!648 = !DILocation(line: 362, column: 5, scope: !383)
!649 = !DILocation(line: 370, column: 29, scope: !383)
!650 = !DILocation(line: 370, column: 5, scope: !383)
!651 = !DILocation(line: 374, column: 29, scope: !383)
!652 = !DILocation(line: 374, column: 5, scope: !383)
!653 = !DILocation(line: 378, column: 29, scope: !383)
!654 = !DILocation(line: 378, column: 5, scope: !383)
!655 = !DILocation(line: 382, column: 29, scope: !383)
!656 = !DILocation(line: 382, column: 5, scope: !383)
!657 = !DILocation(line: 391, column: 29, scope: !383)
!658 = !DILocation(line: 391, column: 5, scope: !383)
!659 = !DILocation(line: 395, column: 29, scope: !383)
!660 = !DILocation(line: 395, column: 5, scope: !383)
!661 = !DILocation(line: 399, column: 29, scope: !383)
!662 = !DILocation(line: 399, column: 5, scope: !383)
!663 = !DILocation(line: 403, column: 29, scope: !383)
!664 = !DILocation(line: 403, column: 5, scope: !383)
!665 = !DILocation(line: 407, column: 29, scope: !383)
!666 = !DILocation(line: 407, column: 5, scope: !383)
!667 = !DILocation(line: 412, column: 29, scope: !383)
!668 = !DILocation(line: 412, column: 5, scope: !383)
!669 = !DILocation(line: 416, column: 29, scope: !383)
!670 = !DILocation(line: 416, column: 5, scope: !383)
!671 = !DILocation(line: 424, column: 29, scope: !383)
!672 = !DILocation(line: 424, column: 5, scope: !383)
!673 = !DILocation(line: 447, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !384, line: 446, column: 5)
!675 = distinct !DILexicalBlock(scope: !383, file: !384, line: 442, column: 9)
!676 = !DILocation(line: 447, column: 11, scope: !674)
!677 = !DILocation(line: 449, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !383, file: !384, line: 449, column: 9)
!679 = !DILocation(line: 449, column: 9, scope: !383)
!680 = !DILocation(line: 450, column: 28, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !384, line: 449, column: 12)
!682 = !DILocation(line: 450, column: 48, scope: !681)
!683 = !DILocation(line: 450, column: 9, scope: !681)
!684 = !DILocation(line: 451, column: 5, scope: !681)
!685 = !DILocation(line: 452, column: 17, scope: !383)
!686 = !DILocation(line: 453, column: 12, scope: !383)
!687 = !DILocation(line: 453, column: 5, scope: !383)
!688 = !DILocation(line: 454, column: 1, scope: !383)
!689 = !DILocation(line: 59, column: 30, scope: !390)
!690 = !DILocation(line: 59, column: 46, scope: !390)
!691 = !DILocation(line: 61, column: 5, scope: !390)
!692 = !DILocation(line: 61, column: 9, scope: !390)
!693 = !DILocation(line: 62, column: 5, scope: !390)
!694 = !DILocation(line: 62, column: 19, scope: !390)
!695 = !DILocation(line: 63, column: 5, scope: !390)
!696 = !DILocation(line: 63, column: 15, scope: !390)
!697 = !DILocation(line: 65, column: 27, scope: !698)
!698 = distinct !DILexicalBlock(scope: !390, file: !384, line: 65, column: 9)
!699 = !DILocation(line: 65, column: 10, scope: !698)
!700 = !DILocation(line: 65, column: 9, scope: !390)
!701 = !DILocation(line: 66, column: 9, scope: !698)
!702 = !DILocation(line: 68, column: 19, scope: !703)
!703 = distinct !DILexicalBlock(scope: !390, file: !384, line: 68, column: 9)
!704 = !DILocation(line: 68, column: 9, scope: !703)
!705 = !DILocation(line: 68, column: 29, scope: !703)
!706 = !DILocation(line: 68, column: 9, scope: !390)
!707 = !DILocation(line: 69, column: 15, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !384, line: 69, column: 13)
!709 = distinct !DILexicalBlock(scope: !703, file: !384, line: 68, column: 36)
!710 = !DILocation(line: 69, column: 14, scope: !708)
!711 = !DILocation(line: 69, column: 36, scope: !708)
!712 = !DILocation(line: 69, column: 13, scope: !709)
!713 = !DILocation(line: 70, column: 29, scope: !714)
!714 = distinct !DILexicalBlock(scope: !708, file: !384, line: 69, column: 43)
!715 = !DILocation(line: 70, column: 13, scope: !714)
!716 = !DILocation(line: 72, column: 13, scope: !714)
!717 = !DILocation(line: 74, column: 28, scope: !709)
!718 = !DILocation(line: 74, column: 9, scope: !709)
!719 = !DILocation(line: 75, column: 9, scope: !709)
!720 = !DILocation(line: 78, column: 14, scope: !390)
!721 = !DILocation(line: 78, column: 12, scope: !390)
!722 = !DILocation(line: 79, column: 10, scope: !723)
!723 = distinct !DILexicalBlock(scope: !390, file: !384, line: 79, column: 9)
!724 = !DILocation(line: 79, column: 9, scope: !390)
!725 = !DILocation(line: 80, column: 9, scope: !723)
!726 = !DILocation(line: 82, column: 80, scope: !390)
!727 = !DILocation(line: 82, column: 90, scope: !390)
!728 = !{!729, !616, i64 0}
!729 = !{!"rusage", !730, i64 0, !730, i64 16, !604, i64 32, !604, i64 40, !604, i64 48, !604, i64 56, !604, i64 64, !604, i64 72, !604, i64 80, !604, i64 88, !604, i64 96, !604, i64 104, !604, i64 112, !604, i64 120, !604, i64 128, !604, i64 136}
!730 = !{!"timeval", !616, i64 0, !616, i64 8}
!731 = !DILocation(line: 82, column: 68, scope: !390)
!732 = !DILocation(line: 82, column: 103, scope: !390)
!733 = !DILocation(line: 82, column: 113, scope: !390)
!734 = !{!729, !616, i64 8}
!735 = !DILocation(line: 82, column: 99, scope: !390)
!736 = !DILocation(line: 82, column: 121, scope: !390)
!737 = !DILocation(line: 82, column: 97, scope: !390)
!738 = !DILocation(line: 82, column: 48, scope: !390)
!739 = !DILocation(line: 82, column: 25, scope: !390)
!740 = !DILocation(line: 82, column: 7, scope: !390)
!741 = !DILocation(line: 82, column: 35, scope: !390)
!742 = !DILocation(line: 82, column: 6, scope: !390)
!743 = !DILocation(line: 82, column: 46, scope: !390)
!744 = !DILocation(line: 84, column: 80, scope: !390)
!745 = !DILocation(line: 84, column: 90, scope: !390)
!746 = !{!729, !616, i64 16}
!747 = !DILocation(line: 84, column: 68, scope: !390)
!748 = !DILocation(line: 84, column: 103, scope: !390)
!749 = !DILocation(line: 84, column: 113, scope: !390)
!750 = !{!729, !616, i64 24}
!751 = !DILocation(line: 84, column: 99, scope: !390)
!752 = !DILocation(line: 84, column: 121, scope: !390)
!753 = !DILocation(line: 84, column: 97, scope: !390)
!754 = !DILocation(line: 84, column: 48, scope: !390)
!755 = !DILocation(line: 84, column: 25, scope: !390)
!756 = !DILocation(line: 84, column: 7, scope: !390)
!757 = !DILocation(line: 84, column: 35, scope: !390)
!758 = !DILocation(line: 84, column: 6, scope: !390)
!759 = !DILocation(line: 84, column: 46, scope: !390)
!760 = !DILocation(line: 86, column: 67, scope: !390)
!761 = !{!616, !616, i64 0}
!762 = !DILocation(line: 86, column: 48, scope: !390)
!763 = !DILocation(line: 86, column: 25, scope: !390)
!764 = !DILocation(line: 86, column: 7, scope: !390)
!765 = !DILocation(line: 86, column: 35, scope: !390)
!766 = !DILocation(line: 86, column: 6, scope: !390)
!767 = !DILocation(line: 86, column: 46, scope: !390)
!768 = !DILocation(line: 87, column: 67, scope: !390)
!769 = !DILocation(line: 87, column: 48, scope: !390)
!770 = !DILocation(line: 87, column: 25, scope: !390)
!771 = !DILocation(line: 87, column: 7, scope: !390)
!772 = !DILocation(line: 87, column: 35, scope: !390)
!773 = !DILocation(line: 87, column: 6, scope: !390)
!774 = !DILocation(line: 87, column: 46, scope: !390)
!775 = !DILocation(line: 88, column: 67, scope: !390)
!776 = !DILocation(line: 88, column: 48, scope: !390)
!777 = !DILocation(line: 88, column: 25, scope: !390)
!778 = !DILocation(line: 88, column: 7, scope: !390)
!779 = !DILocation(line: 88, column: 35, scope: !390)
!780 = !DILocation(line: 88, column: 6, scope: !390)
!781 = !DILocation(line: 88, column: 46, scope: !390)
!782 = !DILocation(line: 89, column: 67, scope: !390)
!783 = !DILocation(line: 89, column: 48, scope: !390)
!784 = !DILocation(line: 89, column: 25, scope: !390)
!785 = !DILocation(line: 89, column: 7, scope: !390)
!786 = !DILocation(line: 89, column: 35, scope: !390)
!787 = !DILocation(line: 89, column: 6, scope: !390)
!788 = !DILocation(line: 89, column: 46, scope: !390)
!789 = !DILocation(line: 90, column: 67, scope: !390)
!790 = !DILocation(line: 90, column: 48, scope: !390)
!791 = !DILocation(line: 90, column: 25, scope: !390)
!792 = !DILocation(line: 90, column: 7, scope: !390)
!793 = !DILocation(line: 90, column: 35, scope: !390)
!794 = !DILocation(line: 90, column: 6, scope: !390)
!795 = !DILocation(line: 90, column: 46, scope: !390)
!796 = !DILocation(line: 91, column: 67, scope: !390)
!797 = !DILocation(line: 91, column: 48, scope: !390)
!798 = !DILocation(line: 91, column: 25, scope: !390)
!799 = !DILocation(line: 91, column: 7, scope: !390)
!800 = !DILocation(line: 91, column: 35, scope: !390)
!801 = !DILocation(line: 91, column: 6, scope: !390)
!802 = !DILocation(line: 91, column: 46, scope: !390)
!803 = !DILocation(line: 92, column: 67, scope: !390)
!804 = !DILocation(line: 92, column: 48, scope: !390)
!805 = !DILocation(line: 92, column: 25, scope: !390)
!806 = !DILocation(line: 92, column: 7, scope: !390)
!807 = !DILocation(line: 92, column: 35, scope: !390)
!808 = !DILocation(line: 92, column: 6, scope: !390)
!809 = !DILocation(line: 92, column: 46, scope: !390)
!810 = !DILocation(line: 93, column: 67, scope: !390)
!811 = !DILocation(line: 93, column: 48, scope: !390)
!812 = !DILocation(line: 93, column: 25, scope: !390)
!813 = !DILocation(line: 93, column: 7, scope: !390)
!814 = !DILocation(line: 93, column: 35, scope: !390)
!815 = !DILocation(line: 93, column: 6, scope: !390)
!816 = !DILocation(line: 93, column: 46, scope: !390)
!817 = !DILocation(line: 94, column: 68, scope: !390)
!818 = !DILocation(line: 94, column: 49, scope: !390)
!819 = !DILocation(line: 94, column: 25, scope: !390)
!820 = !DILocation(line: 94, column: 7, scope: !390)
!821 = !DILocation(line: 94, column: 35, scope: !390)
!822 = !DILocation(line: 94, column: 6, scope: !390)
!823 = !DILocation(line: 94, column: 47, scope: !390)
!824 = !DILocation(line: 95, column: 68, scope: !390)
!825 = !DILocation(line: 95, column: 49, scope: !390)
!826 = !DILocation(line: 95, column: 25, scope: !390)
!827 = !DILocation(line: 95, column: 7, scope: !390)
!828 = !DILocation(line: 95, column: 35, scope: !390)
!829 = !DILocation(line: 95, column: 6, scope: !390)
!830 = !DILocation(line: 95, column: 47, scope: !390)
!831 = !DILocation(line: 96, column: 68, scope: !390)
!832 = !DILocation(line: 96, column: 49, scope: !390)
!833 = !DILocation(line: 96, column: 25, scope: !390)
!834 = !DILocation(line: 96, column: 7, scope: !390)
!835 = !DILocation(line: 96, column: 35, scope: !390)
!836 = !DILocation(line: 96, column: 6, scope: !390)
!837 = !DILocation(line: 96, column: 47, scope: !390)
!838 = !DILocation(line: 97, column: 68, scope: !390)
!839 = !DILocation(line: 97, column: 49, scope: !390)
!840 = !DILocation(line: 97, column: 25, scope: !390)
!841 = !DILocation(line: 97, column: 7, scope: !390)
!842 = !DILocation(line: 97, column: 35, scope: !390)
!843 = !DILocation(line: 97, column: 6, scope: !390)
!844 = !DILocation(line: 97, column: 47, scope: !390)
!845 = !DILocation(line: 98, column: 68, scope: !390)
!846 = !DILocation(line: 98, column: 49, scope: !390)
!847 = !DILocation(line: 98, column: 25, scope: !390)
!848 = !DILocation(line: 98, column: 7, scope: !390)
!849 = !DILocation(line: 98, column: 35, scope: !390)
!850 = !DILocation(line: 98, column: 6, scope: !390)
!851 = !DILocation(line: 98, column: 47, scope: !390)
!852 = !DILocation(line: 99, column: 68, scope: !390)
!853 = !DILocation(line: 99, column: 49, scope: !390)
!854 = !DILocation(line: 99, column: 25, scope: !390)
!855 = !DILocation(line: 99, column: 7, scope: !390)
!856 = !DILocation(line: 99, column: 35, scope: !390)
!857 = !DILocation(line: 99, column: 6, scope: !390)
!858 = !DILocation(line: 99, column: 47, scope: !390)
!859 = !DILocation(line: 101, column: 9, scope: !482)
!860 = !DILocation(line: 101, column: 9, scope: !390)
!861 = !DILocation(line: 102, column: 9, scope: !481)
!862 = !DILocation(line: 102, column: 14, scope: !863)
!863 = !DILexicalBlockFile(scope: !480, file: !384, discriminator: 1)
!864 = !DILocation(line: 102, column: 24, scope: !480)
!865 = !DILocation(line: 102, column: 54, scope: !480)
!866 = !DILocation(line: 102, column: 71, scope: !867)
!867 = distinct !DILexicalBlock(scope: !480, file: !384, line: 102, column: 68)
!868 = !DILocation(line: 102, column: 88, scope: !867)
!869 = !DILocation(line: 102, column: 68, scope: !867)
!870 = !DILocation(line: 102, column: 98, scope: !867)
!871 = !DILocation(line: 102, column: 68, scope: !480)
!872 = !DILocation(line: 102, column: 68, scope: !873)
!873 = !DILexicalBlockFile(scope: !480, file: !384, discriminator: 2)
!874 = !DILocation(line: 102, column: 129, scope: !875)
!875 = !DILexicalBlockFile(scope: !867, file: !384, discriminator: 3)
!876 = !DILocation(line: 102, column: 147, scope: !867)
!877 = !{!615, !603, i64 8}
!878 = !DILocation(line: 102, column: 157, scope: !867)
!879 = !{!880, !603, i64 48}
!880 = !{!"_typeobject", !881, i64 0, !603, i64 24, !616, i64 32, !616, i64 40, !603, i64 48, !603, i64 56, !603, i64 64, !603, i64 72, !603, i64 80, !603, i64 88, !603, i64 96, !603, i64 104, !603, i64 112, !603, i64 120, !603, i64 128, !603, i64 136, !603, i64 144, !603, i64 152, !603, i64 160, !616, i64 168, !603, i64 176, !603, i64 184, !603, i64 192, !603, i64 200, !616, i64 208, !603, i64 216, !603, i64 224, !603, i64 232, !603, i64 240, !603, i64 248, !603, i64 256, !603, i64 264, !603, i64 272, !603, i64 280, !616, i64 288, !603, i64 296, !603, i64 304, !603, i64 312, !603, i64 320, !603, i64 328, !603, i64 336, !603, i64 344, !603, i64 352, !603, i64 360, !603, i64 368, !603, i64 376, !623, i64 384, !603, i64 392}
!881 = !{!"", !615, i64 0, !616, i64 16}
!882 = !DILocation(line: 102, column: 182, scope: !867)
!883 = !DILocation(line: 102, column: 113, scope: !867)
!884 = !DILocation(line: 102, column: 201, scope: !885)
!885 = !DILexicalBlockFile(scope: !481, file: !384, discriminator: 4)
!886 = !DILocation(line: 102, column: 201, scope: !480)
!887 = !DILocation(line: 102, column: 201, scope: !888)
!888 = !DILexicalBlockFile(scope: !480, file: !384, discriminator: 5)
!889 = !DILocation(line: 103, column: 9, scope: !481)
!890 = !DILocation(line: 106, column: 12, scope: !390)
!891 = !DILocation(line: 106, column: 5, scope: !390)
!892 = !DILocation(line: 107, column: 1, scope: !390)
!893 = !DILocation(line: 149, column: 30, scope: !483)
!894 = !DILocation(line: 149, column: 46, scope: !483)
!895 = !DILocation(line: 151, column: 5, scope: !483)
!896 = !DILocation(line: 151, column: 19, scope: !483)
!897 = !DILocation(line: 152, column: 5, scope: !483)
!898 = !DILocation(line: 152, column: 9, scope: !483)
!899 = !DILocation(line: 154, column: 27, scope: !900)
!900 = distinct !DILexicalBlock(scope: !483, file: !384, line: 154, column: 9)
!901 = !DILocation(line: 154, column: 10, scope: !900)
!902 = !DILocation(line: 154, column: 9, scope: !483)
!903 = !DILocation(line: 155, column: 9, scope: !900)
!904 = !DILocation(line: 157, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !483, file: !384, line: 157, column: 9)
!906 = !DILocation(line: 157, column: 18, scope: !905)
!907 = !DILocation(line: 157, column: 22, scope: !905)
!908 = !DILocation(line: 157, column: 25, scope: !909)
!909 = !DILexicalBlockFile(scope: !905, file: !384, discriminator: 1)
!910 = !DILocation(line: 157, column: 34, scope: !905)
!911 = !DILocation(line: 157, column: 9, scope: !483)
!912 = !DILocation(line: 158, column: 25, scope: !913)
!913 = distinct !DILexicalBlock(scope: !905, file: !384, line: 157, column: 53)
!914 = !DILocation(line: 158, column: 9, scope: !913)
!915 = !DILocation(line: 160, column: 9, scope: !913)
!916 = !DILocation(line: 163, column: 19, scope: !917)
!917 = distinct !DILexicalBlock(scope: !483, file: !384, line: 163, column: 9)
!918 = !DILocation(line: 163, column: 9, scope: !917)
!919 = !DILocation(line: 163, column: 34, scope: !917)
!920 = !DILocation(line: 163, column: 9, scope: !483)
!921 = !DILocation(line: 164, column: 28, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !384, line: 163, column: 41)
!923 = !DILocation(line: 164, column: 9, scope: !922)
!924 = !DILocation(line: 165, column: 9, scope: !922)
!925 = !DILocation(line: 167, column: 12, scope: !483)
!926 = !DILocation(line: 167, column: 5, scope: !483)
!927 = !DILocation(line: 168, column: 1, scope: !483)
!928 = !DILocation(line: 225, column: 28, scope: !498)
!929 = !DILocation(line: 225, column: 44, scope: !498)
!930 = !DILocation(line: 227, column: 5, scope: !498)
!931 = !DILocation(line: 227, column: 19, scope: !498)
!932 = !DILocation(line: 227, column: 30, scope: !498)
!933 = !DILocation(line: 228, column: 5, scope: !498)
!934 = !DILocation(line: 228, column: 9, scope: !498)
!935 = !DILocation(line: 228, column: 19, scope: !498)
!936 = !DILocation(line: 229, column: 5, scope: !498)
!937 = !DILocation(line: 229, column: 11, scope: !498)
!938 = !DILocation(line: 230, column: 5, scope: !498)
!939 = !DILocation(line: 230, column: 15, scope: !498)
!940 = !DILocation(line: 230, column: 35, scope: !498)
!941 = !DILocation(line: 232, column: 27, scope: !942)
!942 = distinct !DILexicalBlock(scope: !498, file: !384, line: 232, column: 9)
!943 = !DILocation(line: 232, column: 10, scope: !942)
!944 = !DILocation(line: 232, column: 9, scope: !498)
!945 = !DILocation(line: 234, column: 9, scope: !942)
!946 = !DILocation(line: 236, column: 9, scope: !947)
!947 = distinct !DILexicalBlock(scope: !498, file: !384, line: 236, column: 9)
!948 = !DILocation(line: 236, column: 18, scope: !947)
!949 = !DILocation(line: 236, column: 22, scope: !947)
!950 = !DILocation(line: 236, column: 25, scope: !951)
!951 = !DILexicalBlockFile(scope: !947, file: !384, discriminator: 1)
!952 = !DILocation(line: 236, column: 34, scope: !947)
!953 = !DILocation(line: 236, column: 9, scope: !498)
!954 = !DILocation(line: 237, column: 25, scope: !955)
!955 = distinct !DILexicalBlock(scope: !947, file: !384, line: 236, column: 53)
!956 = !DILocation(line: 237, column: 9, scope: !955)
!957 = !DILocation(line: 239, column: 9, scope: !955)
!958 = !DILocation(line: 242, column: 9, scope: !959)
!959 = distinct !DILexicalBlock(scope: !498, file: !384, line: 242, column: 9)
!960 = !DILocation(line: 242, column: 16, scope: !959)
!961 = !DILocation(line: 242, column: 9, scope: !498)
!962 = !DILocation(line: 243, column: 23, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !384, line: 243, column: 13)
!964 = distinct !DILexicalBlock(scope: !959, file: !384, line: 242, column: 31)
!965 = !DILocation(line: 243, column: 31, scope: !963)
!966 = !DILocation(line: 243, column: 13, scope: !963)
!967 = !DILocation(line: 243, column: 51, scope: !963)
!968 = !DILocation(line: 243, column: 13, scope: !964)
!969 = !DILocation(line: 244, column: 13, scope: !970)
!970 = distinct !DILexicalBlock(scope: !963, file: !384, line: 243, column: 56)
!971 = !DILocation(line: 246, column: 26, scope: !964)
!972 = !DILocation(line: 246, column: 31, scope: !964)
!973 = !DILocation(line: 246, column: 18, scope: !964)
!974 = !DILocation(line: 246, column: 16, scope: !964)
!975 = !DILocation(line: 247, column: 5, scope: !964)
!976 = !DILocation(line: 249, column: 26, scope: !977)
!977 = distinct !DILexicalBlock(scope: !959, file: !384, line: 248, column: 10)
!978 = !DILocation(line: 249, column: 31, scope: !977)
!979 = !DILocation(line: 249, column: 18, scope: !977)
!980 = !DILocation(line: 249, column: 16, scope: !977)
!981 = !DILocation(line: 252, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !498, file: !384, line: 252, column: 9)
!983 = !DILocation(line: 252, column: 16, scope: !982)
!984 = !DILocation(line: 252, column: 9, scope: !498)
!985 = !DILocation(line: 253, column: 15, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !384, line: 253, column: 13)
!987 = distinct !DILexicalBlock(scope: !982, file: !384, line: 252, column: 23)
!988 = !DILocation(line: 253, column: 14, scope: !986)
!989 = !DILocation(line: 253, column: 36, scope: !986)
!990 = !DILocation(line: 253, column: 13, scope: !987)
!991 = !DILocation(line: 254, column: 29, scope: !992)
!992 = distinct !DILexicalBlock(scope: !986, file: !384, line: 253, column: 43)
!993 = !DILocation(line: 254, column: 13, scope: !992)
!994 = !DILocation(line: 256, column: 9, scope: !992)
!995 = !DILocation(line: 257, column: 32, scope: !996)
!996 = distinct !DILexicalBlock(scope: !986, file: !384, line: 256, column: 16)
!997 = !DILocation(line: 257, column: 13, scope: !996)
!998 = !DILocation(line: 259, column: 9, scope: !987)
!999 = !DILocation(line: 261, column: 12, scope: !498)
!1000 = !DILocation(line: 261, column: 5, scope: !498)
!1001 = !DILocation(line: 262, column: 1, scope: !498)
!1002 = !DILocation(line: 171, column: 30, scope: !520)
!1003 = !DILocation(line: 171, column: 46, scope: !520)
!1004 = !DILocation(line: 173, column: 5, scope: !520)
!1005 = !DILocation(line: 173, column: 19, scope: !520)
!1006 = !DILocation(line: 174, column: 5, scope: !520)
!1007 = !DILocation(line: 174, column: 9, scope: !520)
!1008 = !DILocation(line: 175, column: 5, scope: !520)
!1009 = !DILocation(line: 175, column: 15, scope: !520)
!1010 = !DILocation(line: 175, column: 24, scope: !520)
!1011 = !DILocation(line: 175, column: 33, scope: !520)
!1012 = !DILocation(line: 177, column: 27, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !520, file: !384, line: 177, column: 9)
!1014 = !DILocation(line: 177, column: 10, scope: !1013)
!1015 = !DILocation(line: 177, column: 9, scope: !520)
!1016 = !DILocation(line: 178, column: 9, scope: !1013)
!1017 = !DILocation(line: 180, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !520, file: !384, line: 180, column: 9)
!1019 = !DILocation(line: 180, column: 18, scope: !1018)
!1020 = !DILocation(line: 180, column: 22, scope: !1018)
!1021 = !DILocation(line: 180, column: 25, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1018, file: !384, discriminator: 1)
!1023 = !DILocation(line: 180, column: 34, scope: !1018)
!1024 = !DILocation(line: 180, column: 9, scope: !520)
!1025 = !DILocation(line: 181, column: 25, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1018, file: !384, line: 180, column: 53)
!1027 = !DILocation(line: 181, column: 9, scope: !1026)
!1028 = !DILocation(line: 183, column: 9, scope: !1026)
!1029 = !DILocation(line: 186, column: 31, scope: !520)
!1030 = !DILocation(line: 186, column: 14, scope: !520)
!1031 = !DILocation(line: 186, column: 12, scope: !520)
!1032 = !DILocation(line: 187, column: 10, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !520, file: !384, line: 187, column: 9)
!1034 = !DILocation(line: 187, column: 9, scope: !520)
!1035 = !DILocation(line: 189, column: 9, scope: !1033)
!1036 = !DILocation(line: 191, column: 26, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !520, file: !384, line: 191, column: 9)
!1038 = !DILocation(line: 191, column: 11, scope: !1037)
!1039 = !DILocation(line: 191, column: 36, scope: !1037)
!1040 = !{!881, !616, i64 16}
!1041 = !DILocation(line: 191, column: 45, scope: !1037)
!1042 = !DILocation(line: 191, column: 9, scope: !520)
!1043 = !DILocation(line: 192, column: 25, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1037, file: !384, line: 191, column: 51)
!1045 = !DILocation(line: 192, column: 9, scope: !1044)
!1046 = !DILocation(line: 194, column: 9, scope: !1044)
!1047 = !DILocation(line: 196, column: 34, scope: !520)
!1048 = !DILocation(line: 196, column: 16, scope: !520)
!1049 = !DILocation(line: 196, column: 44, scope: !520)
!1050 = !DILocation(line: 196, column: 15, scope: !520)
!1051 = !DILocation(line: 196, column: 12, scope: !520)
!1052 = !DILocation(line: 197, column: 34, scope: !520)
!1053 = !DILocation(line: 197, column: 16, scope: !520)
!1054 = !DILocation(line: 197, column: 44, scope: !520)
!1055 = !DILocation(line: 197, column: 15, scope: !520)
!1056 = !DILocation(line: 197, column: 12, scope: !520)
!1057 = !DILocation(line: 199, column: 19, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !520, file: !384, line: 199, column: 9)
!1059 = !DILocation(line: 199, column: 27, scope: !1058)
!1060 = !DILocation(line: 199, column: 9, scope: !1058)
!1061 = !DILocation(line: 199, column: 40, scope: !1058)
!1062 = !DILocation(line: 199, column: 9, scope: !520)
!1063 = !DILocation(line: 200, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1058, file: !384, line: 199, column: 45)
!1065 = !DILocation(line: 203, column: 19, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !520, file: !384, line: 203, column: 9)
!1067 = !DILocation(line: 203, column: 9, scope: !1066)
!1068 = !DILocation(line: 203, column: 34, scope: !1066)
!1069 = !DILocation(line: 203, column: 9, scope: !520)
!1070 = !DILocation(line: 204, column: 15, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !384, line: 204, column: 13)
!1072 = distinct !DILexicalBlock(scope: !1066, file: !384, line: 203, column: 41)
!1073 = !DILocation(line: 204, column: 14, scope: !1071)
!1074 = !DILocation(line: 204, column: 36, scope: !1071)
!1075 = !DILocation(line: 204, column: 13, scope: !1072)
!1076 = !DILocation(line: 205, column: 29, scope: !1071)
!1077 = !DILocation(line: 205, column: 13, scope: !1071)
!1078 = !DILocation(line: 207, column: 20, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !384, line: 207, column: 18)
!1080 = !DILocation(line: 207, column: 19, scope: !1079)
!1081 = !DILocation(line: 207, column: 41, scope: !1079)
!1082 = !DILocation(line: 207, column: 18, scope: !1071)
!1083 = !DILocation(line: 208, column: 29, scope: !1079)
!1084 = !DILocation(line: 208, column: 13, scope: !1079)
!1085 = !DILocation(line: 211, column: 32, scope: !1079)
!1086 = !DILocation(line: 211, column: 13, scope: !1079)
!1087 = !DILocation(line: 212, column: 9, scope: !1072)
!1088 = !DILocation(line: 214, column: 5, scope: !520)
!1089 = !DILocation(line: 214, column: 10, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !530, file: !384, discriminator: 1)
!1091 = !DILocation(line: 214, column: 20, scope: !530)
!1092 = !DILocation(line: 214, column: 50, scope: !530)
!1093 = !DILocation(line: 214, column: 67, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !530, file: !384, line: 214, column: 64)
!1095 = !DILocation(line: 214, column: 84, scope: !1094)
!1096 = !DILocation(line: 214, column: 64, scope: !1094)
!1097 = !DILocation(line: 214, column: 94, scope: !1094)
!1098 = !DILocation(line: 214, column: 64, scope: !530)
!1099 = !DILocation(line: 214, column: 64, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !530, file: !384, discriminator: 2)
!1101 = !DILocation(line: 214, column: 125, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1094, file: !384, discriminator: 3)
!1103 = !DILocation(line: 214, column: 143, scope: !1094)
!1104 = !DILocation(line: 214, column: 153, scope: !1094)
!1105 = !DILocation(line: 214, column: 178, scope: !1094)
!1106 = !DILocation(line: 214, column: 109, scope: !1094)
!1107 = !DILocation(line: 214, column: 197, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !520, file: !384, discriminator: 4)
!1109 = !DILocation(line: 214, column: 197, scope: !530)
!1110 = !DILocation(line: 214, column: 197, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !530, file: !384, discriminator: 5)
!1112 = !DILocation(line: 215, column: 51, scope: !520)
!1113 = !DILocation(line: 216, column: 5, scope: !520)
!1114 = !DILocation(line: 219, column: 5, scope: !520)
!1115 = !DILocation(line: 219, column: 10, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !532, file: !384, discriminator: 1)
!1117 = !DILocation(line: 219, column: 20, scope: !532)
!1118 = !DILocation(line: 219, column: 50, scope: !532)
!1119 = !DILocation(line: 219, column: 67, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !532, file: !384, line: 219, column: 64)
!1121 = !DILocation(line: 219, column: 84, scope: !1120)
!1122 = !DILocation(line: 219, column: 64, scope: !1120)
!1123 = !DILocation(line: 219, column: 94, scope: !1120)
!1124 = !DILocation(line: 219, column: 64, scope: !532)
!1125 = !DILocation(line: 219, column: 64, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !532, file: !384, discriminator: 2)
!1127 = !DILocation(line: 219, column: 125, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1120, file: !384, discriminator: 3)
!1129 = !DILocation(line: 219, column: 143, scope: !1120)
!1130 = !DILocation(line: 219, column: 153, scope: !1120)
!1131 = !DILocation(line: 219, column: 178, scope: !1120)
!1132 = !DILocation(line: 219, column: 109, scope: !1120)
!1133 = !DILocation(line: 219, column: 197, scope: !1108)
!1134 = !DILocation(line: 219, column: 197, scope: !532)
!1135 = !DILocation(line: 219, column: 197, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !532, file: !384, discriminator: 5)
!1137 = !DILocation(line: 220, column: 5, scope: !520)
!1138 = !DILocation(line: 221, column: 1, scope: !520)
!1139 = !DILocation(line: 266, column: 32, scope: !533)
!1140 = !DILocation(line: 266, column: 48, scope: !533)
!1141 = !DILocation(line: 268, column: 5, scope: !533)
!1142 = !DILocation(line: 268, column: 10, scope: !533)
!1143 = !DILocation(line: 270, column: 16, scope: !533)
!1144 = !DILocation(line: 270, column: 14, scope: !533)
!1145 = !DILocation(line: 279, column: 31, scope: !533)
!1146 = !DILocation(line: 279, column: 12, scope: !533)
!1147 = !DILocation(line: 281, column: 1, scope: !533)
!1148 = !DILocation(line: 279, column: 5, scope: !533)
!1149 = !DILocation(line: 136, column: 25, scope: !493)
!1150 = !DILocation(line: 145, column: 42, scope: !493)
!1151 = !{!1152, !616, i64 0}
!1152 = !{!"rlimit", !616, i64 0, !616, i64 8}
!1153 = !DILocation(line: 145, column: 62, scope: !493)
!1154 = !{!1152, !616, i64 8}
!1155 = !DILocation(line: 145, column: 12, scope: !493)
!1156 = !DILocation(line: 145, column: 5, scope: !493)
!1157 = !DILocation(line: 110, column: 21, scope: !512)
!1158 = !DILocation(line: 110, column: 39, scope: !512)
!1159 = !DILocation(line: 110, column: 62, scope: !512)
!1160 = !DILocation(line: 113, column: 38, scope: !512)
!1161 = !DILocation(line: 113, column: 24, scope: !512)
!1162 = !DILocation(line: 113, column: 5, scope: !512)
!1163 = !DILocation(line: 113, column: 13, scope: !512)
!1164 = !DILocation(line: 113, column: 22, scope: !512)
!1165 = !DILocation(line: 114, column: 9, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !512, file: !384, line: 114, column: 9)
!1167 = !DILocation(line: 114, column: 17, scope: !1166)
!1168 = !DILocation(line: 114, column: 26, scope: !1166)
!1169 = !DILocation(line: 114, column: 40, scope: !1166)
!1170 = !DILocation(line: 114, column: 43, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1166, file: !384, discriminator: 1)
!1172 = !DILocation(line: 114, column: 9, scope: !512)
!1173 = !DILocation(line: 115, column: 9, scope: !1166)
!1174 = !DILocation(line: 116, column: 38, scope: !512)
!1175 = !DILocation(line: 116, column: 24, scope: !512)
!1176 = !DILocation(line: 116, column: 5, scope: !512)
!1177 = !DILocation(line: 116, column: 13, scope: !512)
!1178 = !DILocation(line: 116, column: 22, scope: !512)
!1179 = !DILocation(line: 117, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !512, file: !384, line: 117, column: 9)
!1181 = !DILocation(line: 117, column: 17, scope: !1180)
!1182 = !DILocation(line: 117, column: 26, scope: !1180)
!1183 = !DILocation(line: 117, column: 40, scope: !1180)
!1184 = !DILocation(line: 117, column: 43, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1180, file: !384, discriminator: 1)
!1186 = !DILocation(line: 117, column: 9, scope: !512)
!1187 = !DILocation(line: 118, column: 9, scope: !1180)
!1188 = !DILocation(line: 129, column: 24, scope: !512)
!1189 = !DILocation(line: 129, column: 32, scope: !512)
!1190 = !DILocation(line: 129, column: 5, scope: !512)
!1191 = !DILocation(line: 129, column: 13, scope: !512)
!1192 = !DILocation(line: 129, column: 22, scope: !512)
!1193 = !DILocation(line: 130, column: 24, scope: !512)
!1194 = !DILocation(line: 130, column: 32, scope: !512)
!1195 = !DILocation(line: 130, column: 5, scope: !512)
!1196 = !DILocation(line: 130, column: 13, scope: !512)
!1197 = !DILocation(line: 130, column: 22, scope: !512)
!1198 = !DILocation(line: 131, column: 5, scope: !512)
!1199 = !DILocation(line: 133, column: 1, scope: !512)
