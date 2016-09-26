; ModuleID = './resource.bc'
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
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @resourcemodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct._object*, %struct._object** %m, align 8
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call1 = call i32 @PyModule_AddObject(%struct._object* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* %4)
  %5 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.7, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StructRUsageType, %struct.PyStructSequence_Desc* @struct_rusage_desc)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructRUsageType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc8 = add i64 %6, 1
  store i64 %inc8, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructRUsageType, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = load %struct._object*, %struct._object** %m, align 8
  %call9 = call i32 @PyModule_AddObject(%struct._object* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructRUsageType, i32 0, i32 0, i32 0))
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call10 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i64 0)
  %9 = load %struct._object*, %struct._object** %m, align 8
  %call11 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i64 1)
  %10 = load %struct._object*, %struct._object** %m, align 8
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i64 2)
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i64 3)
  %12 = load %struct._object*, %struct._object** %m, align 8
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 4)
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 7)
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i64 7)
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i64 9)
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 5)
  %17 = load %struct._object*, %struct._object** %m, align 8
  %call19 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i64 6)
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i64 8)
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i64 12)
  %20 = load %struct._object*, %struct._object** %m, align 8
  %call22 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64 13)
  %21 = load %struct._object*, %struct._object** %m, align 8
  %call23 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i64 14)
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i64 15)
  %23 = load %struct._object*, %struct._object** %m, align 8
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i64 11)
  %24 = load %struct._object*, %struct._object** %m, align 8
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i64 0)
  %25 = load %struct._object*, %struct._object** %m, align 8
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i64 -1)
  %26 = load %struct._object*, %struct._object** %m, align 8
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i64 1)
  %call29 = call %struct._object* @PyLong_FromLong(i64 -1)
  store %struct._object* %call29, %struct._object** %v, align 8
  %27 = load %struct._object*, %struct._object** %v, align 8
  %tobool30 = icmp ne %struct._object* %27, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.7
  %28 = load %struct._object*, %struct._object** %m, align 8
  %29 = load %struct._object*, %struct._object** %v, align 8
  %call32 = call i32 @PyModule_AddObject(%struct._object* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), %struct._object* %29)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.7
  store i32 1, i32* @initialized, align 4
  %30 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.5, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @resource_getrusage(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %who = alloca i32, align 4
  %ru = alloca %struct.rusage, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32* %who)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %who, align 4
  %call1 = call i32 @getrusage(i32 %1, %struct.rusage* %ru) #4
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %call3 = call i32* @__errno_location() #5
  %2 = load i32, i32* %call3, align 4
  %cmp4 = icmp eq i32 %2, 22
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %call9 = call %struct._object* @PyStructSequence_New(%struct._typeobject* @StructRUsageType)
  store %struct._object* %call9, %struct._object** %result, align 8
  %5 = load %struct._object*, %struct._object** %result, align 8
  %tobool10 = icmp ne %struct._object* %5, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0
  %6 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %6 to double
  %ru_utime13 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime13, i32 0, i32 1
  %7 = load i64, i64* %tv_usec, align 8
  %conv14 = sitofp i64 %7 to double
  %mul = fmul double %conv14, 1.000000e-06
  %add = fadd double %conv, %mul
  %call15 = call %struct._object* @PyFloat_FromDouble(double %add)
  %8 = load %struct._object*, %struct._object** %result, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %call15, %struct._object** %arrayidx, align 8
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime, i32 0, i32 0
  %10 = load i64, i64* %tv_sec16, align 8
  %conv17 = sitofp i64 %10 to double
  %ru_stime18 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1
  %tv_usec19 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime18, i32 0, i32 1
  %11 = load i64, i64* %tv_usec19, align 8
  %conv20 = sitofp i64 %11 to double
  %mul21 = fmul double %conv20, 1.000000e-06
  %add22 = fadd double %conv17, %mul21
  %call23 = call %struct._object* @PyFloat_FromDouble(double %add22)
  %12 = load %struct._object*, %struct._object** %result, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx25 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item24, i32 0, i64 1
  store %struct._object* %call23, %struct._object** %arrayidx25, align 8
  %14 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 2
  %ru_maxrss = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %ru_maxrss, align 8
  %call26 = call %struct._object* @PyLong_FromLong(i64 %15)
  %16 = load %struct._object*, %struct._object** %result, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx28 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item27, i32 0, i64 2
  store %struct._object* %call26, %struct._object** %arrayidx28, align 8
  %18 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 3
  %ru_ixrss = bitcast %union.anon.0* %18 to i64*
  %19 = load i64, i64* %ru_ixrss, align 8
  %call29 = call %struct._object* @PyLong_FromLong(i64 %19)
  %20 = load %struct._object*, %struct._object** %result, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 3
  store %struct._object* %call29, %struct._object** %arrayidx31, align 8
  %22 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 4
  %ru_idrss = bitcast %union.anon.1* %22 to i64*
  %23 = load i64, i64* %ru_idrss, align 8
  %call32 = call %struct._object* @PyLong_FromLong(i64 %23)
  %24 = load %struct._object*, %struct._object** %result, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*
  %ob_item33 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1
  %arrayidx34 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item33, i32 0, i64 4
  store %struct._object* %call32, %struct._object** %arrayidx34, align 8
  %26 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 5
  %ru_isrss = bitcast %union.anon.2* %26 to i64*
  %27 = load i64, i64* %ru_isrss, align 8
  %call35 = call %struct._object* @PyLong_FromLong(i64 %27)
  %28 = load %struct._object*, %struct._object** %result, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*
  %ob_item36 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1
  %arrayidx37 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item36, i32 0, i64 5
  store %struct._object* %call35, %struct._object** %arrayidx37, align 8
  %30 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 6
  %ru_minflt = bitcast %union.anon.3* %30 to i64*
  %31 = load i64, i64* %ru_minflt, align 8
  %call38 = call %struct._object* @PyLong_FromLong(i64 %31)
  %32 = load %struct._object*, %struct._object** %result, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*
  %ob_item39 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1
  %arrayidx40 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item39, i32 0, i64 6
  store %struct._object* %call38, %struct._object** %arrayidx40, align 8
  %34 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 7
  %ru_majflt = bitcast %union.anon.4* %34 to i64*
  %35 = load i64, i64* %ru_majflt, align 8
  %call41 = call %struct._object* @PyLong_FromLong(i64 %35)
  %36 = load %struct._object*, %struct._object** %result, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyTupleObject*
  %ob_item42 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %37, i32 0, i32 1
  %arrayidx43 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item42, i32 0, i64 7
  store %struct._object* %call41, %struct._object** %arrayidx43, align 8
  %38 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 8
  %ru_nswap = bitcast %union.anon.5* %38 to i64*
  %39 = load i64, i64* %ru_nswap, align 8
  %call44 = call %struct._object* @PyLong_FromLong(i64 %39)
  %40 = load %struct._object*, %struct._object** %result, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyTupleObject*
  %ob_item45 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %41, i32 0, i32 1
  %arrayidx46 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item45, i32 0, i64 8
  store %struct._object* %call44, %struct._object** %arrayidx46, align 8
  %42 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 9
  %ru_inblock = bitcast %union.anon.6* %42 to i64*
  %43 = load i64, i64* %ru_inblock, align 8
  %call47 = call %struct._object* @PyLong_FromLong(i64 %43)
  %44 = load %struct._object*, %struct._object** %result, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyTupleObject*
  %ob_item48 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %45, i32 0, i32 1
  %arrayidx49 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item48, i32 0, i64 9
  store %struct._object* %call47, %struct._object** %arrayidx49, align 8
  %46 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 10
  %ru_oublock = bitcast %union.anon.7* %46 to i64*
  %47 = load i64, i64* %ru_oublock, align 8
  %call50 = call %struct._object* @PyLong_FromLong(i64 %47)
  %48 = load %struct._object*, %struct._object** %result, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyTupleObject*
  %ob_item51 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %49, i32 0, i32 1
  %arrayidx52 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item51, i32 0, i64 10
  store %struct._object* %call50, %struct._object** %arrayidx52, align 8
  %50 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 11
  %ru_msgsnd = bitcast %union.anon.8* %50 to i64*
  %51 = load i64, i64* %ru_msgsnd, align 8
  %call53 = call %struct._object* @PyLong_FromLong(i64 %51)
  %52 = load %struct._object*, %struct._object** %result, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyTupleObject*
  %ob_item54 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %53, i32 0, i32 1
  %arrayidx55 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item54, i32 0, i64 11
  store %struct._object* %call53, %struct._object** %arrayidx55, align 8
  %54 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 12
  %ru_msgrcv = bitcast %union.anon.9* %54 to i64*
  %55 = load i64, i64* %ru_msgrcv, align 8
  %call56 = call %struct._object* @PyLong_FromLong(i64 %55)
  %56 = load %struct._object*, %struct._object** %result, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyTupleObject*
  %ob_item57 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %57, i32 0, i32 1
  %arrayidx58 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item57, i32 0, i64 12
  store %struct._object* %call56, %struct._object** %arrayidx58, align 8
  %58 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 13
  %ru_nsignals = bitcast %union.anon.10* %58 to i64*
  %59 = load i64, i64* %ru_nsignals, align 8
  %call59 = call %struct._object* @PyLong_FromLong(i64 %59)
  %60 = load %struct._object*, %struct._object** %result, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyTupleObject*
  %ob_item60 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %61, i32 0, i32 1
  %arrayidx61 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item60, i32 0, i64 13
  store %struct._object* %call59, %struct._object** %arrayidx61, align 8
  %62 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 14
  %ru_nvcsw = bitcast %union.anon.11* %62 to i64*
  %63 = load i64, i64* %ru_nvcsw, align 8
  %call62 = call %struct._object* @PyLong_FromLong(i64 %63)
  %64 = load %struct._object*, %struct._object** %result, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyTupleObject*
  %ob_item63 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %65, i32 0, i32 1
  %arrayidx64 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item63, i32 0, i64 14
  store %struct._object* %call62, %struct._object** %arrayidx64, align 8
  %66 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 15
  %ru_nivcsw = bitcast %union.anon.12* %66 to i64*
  %67 = load i64, i64* %ru_nivcsw, align 8
  %call65 = call %struct._object* @PyLong_FromLong(i64 %67)
  %68 = load %struct._object*, %struct._object** %result, align 8
  %69 = bitcast %struct._object* %68 to %struct.PyTupleObject*
  %ob_item66 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %69, i32 0, i32 1
  %arrayidx67 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item66, i32 0, i64 15
  store %struct._object* %call65, %struct._object** %arrayidx67, align 8
  %call68 = call %struct._object* @PyErr_Occurred()
  %tobool69 = icmp ne %struct._object* %call68, null
  br i1 %tobool69, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.then.70
  %70 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %72, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp71 = icmp ne i64 %dec, 0
  br i1 %cmp71, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %do.body
  br label %if.end.74

if.else:                                          ; preds = %do.body
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %75(%struct._object* %76)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %if.then.73
  br label %do.end

do.end:                                           ; preds = %if.end.74
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.75:                                        ; preds = %if.end.12
  %77 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %77, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.75, %do.end, %if.then.11, %if.end.6, %if.then.5, %if.then
  %78 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %78
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @resource_getrlimit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rl = alloca %struct.rlimit, align 8
  %resource = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32* %resource)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %resource, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %resource, align 4
  %cmp1 = icmp sge i32 %2, 16
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %4 = load i32, i32* %resource, align 4
  %call4 = call i32 @getrlimit64(i32 %4, %struct.rlimit* %rl) #4
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %6 = bitcast %struct.rlimit* %rl to { i64, i64 }*
  %7 = getelementptr { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 1
  %call9 = call %struct._object* @rlimit2py(i64 %8, i64 %10)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.2, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %curobj, align 8
  store %struct._object* null, %struct._object** %maxobj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32* %pid, i32* %resource, %struct._object** %curobj, %struct._object** %maxobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %resource, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %resource, align 4
  %cmp2 = icmp sge i32 %2, 16
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %curobj, align 8
  %cmp5 = icmp ne %struct._object* %4, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %curobj, align 8
  %6 = load %struct._object*, %struct._object** %maxobj, align 8
  %call7 = call i32 @py2rlimit(%struct._object* %5, %struct._object* %6, %struct.rlimit* %new_limit)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.6
  %7 = load i32, i32* %pid, align 4
  %8 = load i32, i32* %resource, align 4
  %call11 = call i32 @prlimit64(i32 %7, i32 %8, %struct.rlimit* %new_limit, %struct.rlimit* %old_limit) #4
  store i32 %call11, i32* %retval1, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end.4
  %9 = load i32, i32* %pid, align 4
  %10 = load i32, i32* %resource, align 4
  %call12 = call i32 @prlimit64(i32 %9, i32 %10, %struct.rlimit* null, %struct.rlimit* %old_limit) #4
  store i32 %call12, i32* %retval1, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.10
  %11 = load i32, i32* %retval1, align 4
  %cmp14 = icmp eq i32 %11, -1
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end.13
  %call16 = call i32* @__errno_location() #5
  %12 = load i32, i32* %call16, align 4
  %cmp17 = icmp eq i32 %12, 22
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.then.15
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.21

if.else.19:                                       ; preds = %if.then.15
  %14 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %14)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.13
  %15 = bitcast %struct.rlimit* %old_limit to { i64, i64 }*
  %16 = getelementptr { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 1
  %18 = getelementptr { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 1
  %call23 = call %struct._object* @rlimit2py(i64 %17, i64 %19)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.end.21, %if.then.9, %if.then.3, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32* %resource, %struct._object** %limits)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %resource, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %resource, align 4
  %cmp1 = icmp sge i32 %2, 16
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %limits, align 8
  %call4 = call %struct._object* @PySequence_Tuple(%struct._object* %4)
  store %struct._object* %call4, %struct._object** %limits, align 8
  %5 = load %struct._object*, %struct._object** %limits, align 8
  %tobool5 = icmp ne %struct._object* %5, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %limits, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  %cmp8 = icmp ne i64 %8, 2
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0))
  br label %error

if.end.10:                                        ; preds = %if.end.7
  %10 = load %struct._object*, %struct._object** %limits, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %12, %struct._object** %curobj, align 8
  %13 = load %struct._object*, %struct._object** %limits, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx12 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item11, i32 0, i64 1
  %15 = load %struct._object*, %struct._object** %arrayidx12, align 8
  store %struct._object* %15, %struct._object** %maxobj, align 8
  %16 = load %struct._object*, %struct._object** %curobj, align 8
  %17 = load %struct._object*, %struct._object** %maxobj, align 8
  %call13 = call i32 @py2rlimit(%struct._object* %16, %struct._object* %17, %struct.rlimit* %rl)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  br label %error

if.end.16:                                        ; preds = %if.end.10
  %18 = load i32, i32* %resource, align 4
  %call17 = call i32 @setrlimit64(i32 %18, %struct.rlimit* %rl) #4
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %if.end.16
  %call20 = call i32* @__errno_location() #5
  %19 = load i32, i32* %call20, align 4
  %cmp21 = icmp eq i32 %19, 22
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.19
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.29

if.else:                                          ; preds = %if.then.19
  %call23 = call i32* @__errno_location() #5
  %21 = load i32, i32* %call23, align 4
  %cmp24 = icmp eq i32 %21, 1
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else
  %22 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.28

if.else.26:                                       ; preds = %if.else
  %23 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call27 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %23)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.22
  br label %error

if.end.30:                                        ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.end.30
  %24 = load %struct._object*, %struct._object** %limits, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body
  br label %if.end.34

if.else.33:                                       ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end

do.end:                                           ; preds = %if.end.34
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.end.29, %if.then.15, %if.then.9
  br label %do.body.35

do.body.35:                                       ; preds = %error
  %32 = load %struct._object*, %struct._object** %limits, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp36, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %34, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %37(%struct._object* %38)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.45, %do.end, %if.then.6, %if.then.2, %if.then
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @resource_getpagesize(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %pagesize = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  store i64 0, i64* %pagesize, align 8
  %call = call i32 @getpagesize() #5
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %pagesize, align 8
  %0 = load i64, i64* %pagesize, align 8
  %call1 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i64 %0)
  ret %struct._object* %call1
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind
declare i32 @getrlimit64(i32, %struct.rlimit*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlimit2py(i64 %rl.coerce0, i64 %rl.coerce1) #0 {
entry:
  %rl = alloca %struct.rlimit, align 8
  %0 = bitcast %struct.rlimit* %rl to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %rl.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %rl.coerce1, i64* %2
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rl, i32 0, i32 0
  %3 = load i64, i64* %rlim_cur, align 8
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rl, i32 0, i32 1
  %4 = load i64, i64* %rlim_max, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i64 %3, i64 %4)
  ret %struct._object* %call
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @py2rlimit(%struct._object* %curobj, %struct._object* %maxobj, %struct.rlimit* %rl_out) #0 {
entry:
  %retval = alloca i32, align 4
  %curobj.addr = alloca %struct._object*, align 8
  %maxobj.addr = alloca %struct._object*, align 8
  %rl_out.addr = alloca %struct.rlimit*, align 8
  store %struct._object* %curobj, %struct._object** %curobj.addr, align 8
  store %struct._object* %maxobj, %struct._object** %maxobj.addr, align 8
  store %struct.rlimit* %rl_out, %struct.rlimit** %rl_out.addr, align 8
  %0 = load %struct._object*, %struct._object** %curobj.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %0)
  %1 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  store i64 %call, i64* %rlim_cur, align 8
  %2 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8
  %rlim_cur1 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %3 = load i64, i64* %rlim_cur1, align 8
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct._object*, %struct._object** %maxobj.addr, align 8
  %call3 = call i64 @PyLong_AsLong(%struct._object* %4)
  %5 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 1
  store i64 %call3, i64* %rlim_max, align 8
  %6 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8
  %rlim_max4 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %7 = load i64, i64* %rlim_max4, align 8
  %cmp5 = icmp eq i64 %7, -1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %if.end
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool8 = icmp ne %struct._object* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.6, %if.end
  %8 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8
  %rlim_cur11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0
  %9 = load i64, i64* %rlim_cur11, align 8
  %10 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8
  %rlim_cur12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  store i64 %9, i64* %rlim_cur12, align 8
  %11 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8
  %rlim_max13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %11, i32 0, i32 1
  %12 = load i64, i64* %rlim_max13, align 8
  %13 = load %struct.rlimit*, %struct.rlimit** %rl_out.addr, align 8
  %rlim_max14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 1
  store i64 %12, i64* %rlim_max14, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare i32 @prlimit64(i32, i32, %struct.rlimit*, %struct.rlimit*) #2

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PySequence_Tuple(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @setrlimit64(i32, %struct.rlimit*) #2

; Function Attrs: nounwind readnone
declare i32 @getpagesize() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
