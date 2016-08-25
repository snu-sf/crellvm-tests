; ModuleID = './pystate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_atomic_address = type { i8* }
%struct._frame = type opaque
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
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
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@_PyThreadState_Current = global %struct._Py_atomic_address zeroinitializer, align 8
@_PyThreadState_GetFrame = global %struct._frame* (%struct._ts*)* null, align 8
@head_mutex = internal global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Can't initialize threads for interpreter\00", align 1
@interp_head = internal global %struct._is* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"PyInterpreterState_Delete: invalid interp\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"PyInterpreterState_Delete: remaining threads\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"PyState_AddModule: Module Definition is NULL\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"PyState_AddModule: Module already added!\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"PyState_RemoveModule: Module index invalid.\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"PyState_RemoveModule: Interpreters module-list not acessible.\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"PyState_RemoveModule: Module index out of bounds.\00", align 1
@PyModule_Type = external global %struct._typeobject, align 8
@Py_VerboseFlag = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [56 x i8] c"PyThreadState_Clear: warning: thread still has a frame\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"PyThreadState_Delete: tstate is still current\00", align 1
@autoInterpreterState = internal global %struct._is* null, align 8
@autoTLSkey = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"PyThreadState_DeleteCurrent: no current tstate\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"PyThreadState_Get: no current thread\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Could not allocate TLS entry\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Couldn't create autoTLSkey mapping\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Couldn't create thread-state for new thread\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"auto-releasing thread-state, but no thread-state for this thread\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"This thread state must be current when releasing\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"PyThreadState_Delete: NULL tstate\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"PyThreadState_Delete: NULL interp\00", align 1

; Function Attrs: nounwind uwtable
define %struct._is* @PyInterpreterState_New() #0 {
entry:
  %interp = alloca %struct._is*, align 8
  %call = call i8* @PyMem_RawMalloc(i64 104)
  %0 = bitcast i8* %call to %struct._is*
  store %struct._is* %0, %struct._is** %interp, align 8
  %1 = load %struct._is*, %struct._is** %interp, align 8
  %cmp = icmp ne %struct._is* %1, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @head_mutex, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %call1 = call i8* @PyThread_allocate_lock()
  store i8* %call1, i8** @head_mutex, align 8
  %tobool2 = icmp ne i8* %call1, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %3 = phi i1 [ true, %if.then ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  %4 = load i8*, i8** @head_mutex, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.end
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %lor.end
  %5 = load %struct._is*, %struct._is** %interp, align 8
  %modules = getelementptr inbounds %struct._is, %struct._is* %5, i32 0, i32 2
  store %struct._object* null, %struct._object** %modules, align 8
  %6 = load %struct._is*, %struct._is** %interp, align 8
  %modules_by_index = getelementptr inbounds %struct._is, %struct._is* %6, i32 0, i32 3
  store %struct._object* null, %struct._object** %modules_by_index, align 8
  %7 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %7, i32 0, i32 4
  store %struct._object* null, %struct._object** %sysdict, align 8
  %8 = load %struct._is*, %struct._is** %interp, align 8
  %builtins = getelementptr inbounds %struct._is, %struct._is* %8, i32 0, i32 5
  store %struct._object* null, %struct._object** %builtins, align 8
  %9 = load %struct._is*, %struct._is** %interp, align 8
  %builtins_copy = getelementptr inbounds %struct._is, %struct._is* %9, i32 0, i32 13
  store %struct._object* null, %struct._object** %builtins_copy, align 8
  %10 = load %struct._is*, %struct._is** %interp, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %10, i32 0, i32 1
  store %struct._ts* null, %struct._ts** %tstate_head, align 8
  %11 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %11, i32 0, i32 7
  store %struct._object* null, %struct._object** %codec_search_path, align 8
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_cache = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 8
  store %struct._object* null, %struct._object** %codec_search_cache, align 8
  %13 = load %struct._is*, %struct._is** %interp, align 8
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %13, i32 0, i32 9
  store %struct._object* null, %struct._object** %codec_error_registry, align 8
  %14 = load %struct._is*, %struct._is** %interp, align 8
  %codecs_initialized = getelementptr inbounds %struct._is, %struct._is* %14, i32 0, i32 10
  store i32 0, i32* %codecs_initialized, align 4
  %15 = load %struct._is*, %struct._is** %interp, align 8
  %fscodec_initialized = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 11
  store i32 0, i32* %fscodec_initialized, align 4
  %16 = load %struct._is*, %struct._is** %interp, align 8
  %importlib = getelementptr inbounds %struct._is, %struct._is* %16, i32 0, i32 6
  store %struct._object* null, %struct._object** %importlib, align 8
  %17 = load %struct._is*, %struct._is** %interp, align 8
  %dlopenflags = getelementptr inbounds %struct._is, %struct._is* %17, i32 0, i32 12
  store i32 2, i32* %dlopenflags, align 4
  %18 = load i8*, i8** @head_mutex, align 8
  %call5 = call i32 @PyThread_acquire_lock(i8* %18, i32 1)
  %19 = load %struct._is*, %struct._is** @interp_head, align 8
  %20 = load %struct._is*, %struct._is** %interp, align 8
  %next = getelementptr inbounds %struct._is, %struct._is* %20, i32 0, i32 0
  store %struct._is* %19, %struct._is** %next, align 8
  %21 = load %struct._is*, %struct._is** %interp, align 8
  store %struct._is* %21, %struct._is** @interp_head, align 8
  %22 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %22)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %23 = load %struct._is*, %struct._is** %interp, align 8
  ret %struct._is* %23
}

declare i8* @PyMem_RawMalloc(i64) #1

declare i8* @PyThread_allocate_lock() #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

declare i32 @PyThread_acquire_lock(i8*, i32) #1

declare void @PyThread_release_lock(i8*) #1

; Function Attrs: nounwind uwtable
define void @PyInterpreterState_Clear(%struct._is* %interp) #0 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  %p = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_tmp81 = alloca %struct._object*, align 8
  %_py_decref_tmp86 = alloca %struct._object*, align 8
  %_py_tmp99 = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  %_py_tmp117 = alloca %struct._object*, align 8
  %_py_decref_tmp122 = alloca %struct._object*, align 8
  %_py_tmp135 = alloca %struct._object*, align 8
  %_py_decref_tmp140 = alloca %struct._object*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  %0 = load i8*, i8** @head_mutex, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %0, i32 1)
  %1 = load %struct._is*, %struct._is** %interp.addr, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %1, i32 0, i32 1
  %2 = load %struct._ts*, %struct._ts** %tstate_head, align 8
  store %struct._ts* %2, %struct._ts** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct._ts*, %struct._ts** %p, align 8
  %cmp = icmp ne %struct._ts* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._ts*, %struct._ts** %p, align 8
  call void @PyThreadState_Clear(%struct._ts* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct._ts*, %struct._ts** %p, align 8
  %next = getelementptr inbounds %struct._ts, %struct._ts* %5, i32 0, i32 1
  %6 = load %struct._ts*, %struct._ts** %next, align 8
  store %struct._ts* %6, %struct._ts** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %7)
  br label %do.body

do.body:                                          ; preds = %for.end
  %8 = load %struct._is*, %struct._is** %interp.addr, align 8
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %8, i32 0, i32 7
  %9 = load %struct._object*, %struct._object** %codec_search_path, align 8
  store %struct._object* %9, %struct._object** %_py_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp1 = icmp ne %struct._object* %10, null
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %11 = load %struct._is*, %struct._is** %interp.addr, align 8
  %codec_search_path2 = getelementptr inbounds %struct._is, %struct._is* %11, i32 0, i32 7
  store %struct._object* null, %struct._object** %codec_search_path2, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %19 = load %struct._is*, %struct._is** %interp.addr, align 8
  %codec_search_cache = getelementptr inbounds %struct._is, %struct._is* %19, i32 0, i32 8
  %20 = load %struct._object*, %struct._object** %codec_search_cache, align 8
  store %struct._object* %20, %struct._object** %_py_tmp9, align 8
  %21 = load %struct._object*, %struct._object** %_py_tmp9, align 8
  %cmp10 = icmp ne %struct._object* %21, null
  br i1 %cmp10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %do.body.8
  %22 = load %struct._is*, %struct._is** %interp.addr, align 8
  %codec_search_cache12 = getelementptr inbounds %struct._is, %struct._is* %22, i32 0, i32 8
  store %struct._object* null, %struct._object** %codec_search_cache12, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.11
  %23 = load %struct._object*, %struct._object** %_py_tmp9, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp14, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %25, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %28(%struct._object* %29)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.8
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %30 = load %struct._is*, %struct._is** %interp.addr, align 8
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %30, i32 0, i32 9
  %31 = load %struct._object*, %struct._object** %codec_error_registry, align 8
  store %struct._object* %31, %struct._object** %_py_tmp27, align 8
  %32 = load %struct._object*, %struct._object** %_py_tmp27, align 8
  %cmp28 = icmp ne %struct._object* %32, null
  br i1 %cmp28, label %if.then.29, label %if.end.42

if.then.29:                                       ; preds = %do.body.26
  %33 = load %struct._is*, %struct._is** %interp.addr, align 8
  %codec_error_registry30 = getelementptr inbounds %struct._is, %struct._is* %33, i32 0, i32 9
  store %struct._object* null, %struct._object** %codec_error_registry30, align 8
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.29
  %34 = load %struct._object*, %struct._object** %_py_tmp27, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp32, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %36, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %39(%struct._object* %40)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %41 = load %struct._is*, %struct._is** %interp.addr, align 8
  %modules = getelementptr inbounds %struct._is, %struct._is* %41, i32 0, i32 2
  %42 = load %struct._object*, %struct._object** %modules, align 8
  store %struct._object* %42, %struct._object** %_py_tmp45, align 8
  %43 = load %struct._object*, %struct._object** %_py_tmp45, align 8
  %cmp46 = icmp ne %struct._object* %43, null
  br i1 %cmp46, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %do.body.44
  %44 = load %struct._is*, %struct._is** %interp.addr, align 8
  %modules48 = getelementptr inbounds %struct._is, %struct._is* %44, i32 0, i32 2
  store %struct._object* null, %struct._object** %modules48, align 8
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.47
  %45 = load %struct._object*, %struct._object** %_py_tmp45, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp50, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %47, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %50(%struct._object* %51)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59, %do.body.44
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.61
  %52 = load %struct._is*, %struct._is** %interp.addr, align 8
  %modules_by_index = getelementptr inbounds %struct._is, %struct._is* %52, i32 0, i32 3
  %53 = load %struct._object*, %struct._object** %modules_by_index, align 8
  store %struct._object* %53, %struct._object** %_py_tmp63, align 8
  %54 = load %struct._object*, %struct._object** %_py_tmp63, align 8
  %cmp64 = icmp ne %struct._object* %54, null
  br i1 %cmp64, label %if.then.65, label %if.end.78

if.then.65:                                       ; preds = %do.body.62
  %55 = load %struct._is*, %struct._is** %interp.addr, align 8
  %modules_by_index66 = getelementptr inbounds %struct._is, %struct._is* %55, i32 0, i32 3
  store %struct._object* null, %struct._object** %modules_by_index66, align 8
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.65
  %56 = load %struct._object*, %struct._object** %_py_tmp63, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp68, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt69, align 8
  %dec70 = add i64 %58, -1
  store i64 %dec70, i64* %ob_refcnt69, align 8
  %cmp71 = icmp ne i64 %dec70, 0
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.67
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.67
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  call void %61(%struct._object* %62)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %do.end.77, %do.body.62
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.end.79
  %63 = load %struct._is*, %struct._is** %interp.addr, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %63, i32 0, i32 4
  %64 = load %struct._object*, %struct._object** %sysdict, align 8
  store %struct._object* %64, %struct._object** %_py_tmp81, align 8
  %65 = load %struct._object*, %struct._object** %_py_tmp81, align 8
  %cmp82 = icmp ne %struct._object* %65, null
  br i1 %cmp82, label %if.then.83, label %if.end.96

if.then.83:                                       ; preds = %do.body.80
  %66 = load %struct._is*, %struct._is** %interp.addr, align 8
  %sysdict84 = getelementptr inbounds %struct._is, %struct._is* %66, i32 0, i32 4
  store %struct._object* null, %struct._object** %sysdict84, align 8
  br label %do.body.85

do.body.85:                                       ; preds = %if.then.83
  %67 = load %struct._object*, %struct._object** %_py_tmp81, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp86, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt87, align 8
  %dec88 = add i64 %69, -1
  store i64 %dec88, i64* %ob_refcnt87, align 8
  %cmp89 = icmp ne i64 %dec88, 0
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %do.body.85
  br label %if.end.94

if.else.91:                                       ; preds = %do.body.85
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8
  call void %72(%struct._object* %73)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.95, %do.body.80
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  br label %do.body.98

do.body.98:                                       ; preds = %do.end.97
  %74 = load %struct._is*, %struct._is** %interp.addr, align 8
  %builtins = getelementptr inbounds %struct._is, %struct._is* %74, i32 0, i32 5
  %75 = load %struct._object*, %struct._object** %builtins, align 8
  store %struct._object* %75, %struct._object** %_py_tmp99, align 8
  %76 = load %struct._object*, %struct._object** %_py_tmp99, align 8
  %cmp100 = icmp ne %struct._object* %76, null
  br i1 %cmp100, label %if.then.101, label %if.end.114

if.then.101:                                      ; preds = %do.body.98
  %77 = load %struct._is*, %struct._is** %interp.addr, align 8
  %builtins102 = getelementptr inbounds %struct._is, %struct._is* %77, i32 0, i32 5
  store %struct._object* null, %struct._object** %builtins102, align 8
  br label %do.body.103

do.body.103:                                      ; preds = %if.then.101
  %78 = load %struct._object*, %struct._object** %_py_tmp99, align 8
  store %struct._object* %78, %struct._object** %_py_decref_tmp104, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %80, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %do.body.103
  br label %if.end.112

if.else.109:                                      ; preds = %do.body.103
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type110 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8
  %tp_dealloc111 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc111, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %83(%struct._object* %84)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.109, %if.then.108
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %if.end.114

if.end.114:                                       ; preds = %do.end.113, %do.body.98
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  br label %do.body.116

do.body.116:                                      ; preds = %do.end.115
  %85 = load %struct._is*, %struct._is** %interp.addr, align 8
  %builtins_copy = getelementptr inbounds %struct._is, %struct._is* %85, i32 0, i32 13
  %86 = load %struct._object*, %struct._object** %builtins_copy, align 8
  store %struct._object* %86, %struct._object** %_py_tmp117, align 8
  %87 = load %struct._object*, %struct._object** %_py_tmp117, align 8
  %cmp118 = icmp ne %struct._object* %87, null
  br i1 %cmp118, label %if.then.119, label %if.end.132

if.then.119:                                      ; preds = %do.body.116
  %88 = load %struct._is*, %struct._is** %interp.addr, align 8
  %builtins_copy120 = getelementptr inbounds %struct._is, %struct._is* %88, i32 0, i32 13
  store %struct._object* null, %struct._object** %builtins_copy120, align 8
  br label %do.body.121

do.body.121:                                      ; preds = %if.then.119
  %89 = load %struct._object*, %struct._object** %_py_tmp117, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp122, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt123, align 8
  %dec124 = add i64 %91, -1
  store i64 %dec124, i64* %ob_refcnt123, align 8
  %cmp125 = icmp ne i64 %dec124, 0
  br i1 %cmp125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %do.body.121
  br label %if.end.130

if.else.127:                                      ; preds = %do.body.121
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  call void %94(%struct._object* %95)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.131, %do.body.116
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.133
  %96 = load %struct._is*, %struct._is** %interp.addr, align 8
  %importlib = getelementptr inbounds %struct._is, %struct._is* %96, i32 0, i32 6
  %97 = load %struct._object*, %struct._object** %importlib, align 8
  store %struct._object* %97, %struct._object** %_py_tmp135, align 8
  %98 = load %struct._object*, %struct._object** %_py_tmp135, align 8
  %cmp136 = icmp ne %struct._object* %98, null
  br i1 %cmp136, label %if.then.137, label %if.end.150

if.then.137:                                      ; preds = %do.body.134
  %99 = load %struct._is*, %struct._is** %interp.addr, align 8
  %importlib138 = getelementptr inbounds %struct._is, %struct._is* %99, i32 0, i32 6
  store %struct._object* null, %struct._object** %importlib138, align 8
  br label %do.body.139

do.body.139:                                      ; preds = %if.then.137
  %100 = load %struct._object*, %struct._object** %_py_tmp135, align 8
  store %struct._object* %100, %struct._object** %_py_decref_tmp140, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_refcnt141 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt141, align 8
  %dec142 = add i64 %102, -1
  store i64 %dec142, i64* %ob_refcnt141, align 8
  %cmp143 = icmp ne i64 %dec142, 0
  br i1 %cmp143, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.139
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.139
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  call void %105(%struct._object* %106)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  br label %if.end.150

if.end.150:                                       ; preds = %do.end.149, %do.body.134
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyThreadState_Clear(%struct._ts* %tstate) #0 {
entry:
  %tstate.addr = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  %_py_tmp84 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_tmp102 = alloca %struct._object*, align 8
  %_py_decref_tmp107 = alloca %struct._object*, align 8
  %_py_tmp120 = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  %_py_tmp138 = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  %_py_tmp156 = alloca %struct._object*, align 8
  %_py_decref_tmp161 = alloca %struct._object*, align 8
  %_py_tmp174 = alloca %struct._object*, align 8
  %_py_decref_tmp179 = alloca %struct._object*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %1, i32 0, i32 3
  %2 = load %struct._frame*, %struct._frame** %frame, align 8
  %cmp = icmp ne %struct._frame* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %frame1 = getelementptr inbounds %struct._ts, %struct._ts* %4, i32 0, i32 3
  %5 = load %struct._frame*, %struct._frame** %frame1, align 8
  %6 = bitcast %struct._frame* %5 to %struct._object*
  store %struct._object* %6, %struct._object** %_py_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp2 = icmp ne %struct._object* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %do.body
  %8 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %frame4 = getelementptr inbounds %struct._ts, %struct._ts* %8, i32 0, i32 3
  store %struct._frame* null, %struct._frame** %frame4, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.3
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %16 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %dict = getelementptr inbounds %struct._ts, %struct._ts* %16, i32 0, i32 19
  %17 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %17, %struct._object** %_py_tmp12, align 8
  %18 = load %struct._object*, %struct._object** %_py_tmp12, align 8
  %cmp13 = icmp ne %struct._object* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %do.body.11
  %19 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %dict15 = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 19
  store %struct._object* null, %struct._object** %dict15, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.14
  %20 = load %struct._object*, %struct._object** %_py_tmp12, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp17, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %22, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.16
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %25(%struct._object* %26)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %do.end.26, %do.body.11
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %27 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %async_exc = getelementptr inbounds %struct._ts, %struct._ts* %27, i32 0, i32 21
  %28 = load %struct._object*, %struct._object** %async_exc, align 8
  store %struct._object* %28, %struct._object** %_py_tmp30, align 8
  %29 = load %struct._object*, %struct._object** %_py_tmp30, align 8
  %cmp31 = icmp ne %struct._object* %29, null
  br i1 %cmp31, label %if.then.32, label %if.end.45

if.then.32:                                       ; preds = %do.body.29
  %30 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %async_exc33 = getelementptr inbounds %struct._ts, %struct._ts* %30, i32 0, i32 21
  store %struct._object* null, %struct._object** %async_exc33, align 8
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.32
  %31 = load %struct._object*, %struct._object** %_py_tmp30, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp35, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %33, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %36(%struct._object* %37)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %do.body.29
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %38 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %38, i32 0, i32 13
  %39 = load %struct._object*, %struct._object** %curexc_type, align 8
  store %struct._object* %39, %struct._object** %_py_tmp48, align 8
  %40 = load %struct._object*, %struct._object** %_py_tmp48, align 8
  %cmp49 = icmp ne %struct._object* %40, null
  br i1 %cmp49, label %if.then.50, label %if.end.63

if.then.50:                                       ; preds = %do.body.47
  %41 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %curexc_type51 = getelementptr inbounds %struct._ts, %struct._ts* %41, i32 0, i32 13
  store %struct._object* null, %struct._object** %curexc_type51, align 8
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.50
  %42 = load %struct._object*, %struct._object** %_py_tmp48, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp53, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %44, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %47(%struct._object* %48)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.body.47
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.64
  %49 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %curexc_value = getelementptr inbounds %struct._ts, %struct._ts* %49, i32 0, i32 14
  %50 = load %struct._object*, %struct._object** %curexc_value, align 8
  store %struct._object* %50, %struct._object** %_py_tmp66, align 8
  %51 = load %struct._object*, %struct._object** %_py_tmp66, align 8
  %cmp67 = icmp ne %struct._object* %51, null
  br i1 %cmp67, label %if.then.68, label %if.end.81

if.then.68:                                       ; preds = %do.body.65
  %52 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %curexc_value69 = getelementptr inbounds %struct._ts, %struct._ts* %52, i32 0, i32 14
  store %struct._object* null, %struct._object** %curexc_value69, align 8
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.68
  %53 = load %struct._object*, %struct._object** %_py_tmp66, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp71, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt72, align 8
  %dec73 = add i64 %55, -1
  store i64 %dec73, i64* %ob_refcnt72, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.70
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.70
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  call void %58(%struct._object* %59)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.80, %do.body.65
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  br label %do.body.83

do.body.83:                                       ; preds = %do.end.82
  %60 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %60, i32 0, i32 15
  %61 = load %struct._object*, %struct._object** %curexc_traceback, align 8
  store %struct._object* %61, %struct._object** %_py_tmp84, align 8
  %62 = load %struct._object*, %struct._object** %_py_tmp84, align 8
  %cmp85 = icmp ne %struct._object* %62, null
  br i1 %cmp85, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %do.body.83
  %63 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %curexc_traceback87 = getelementptr inbounds %struct._ts, %struct._ts* %63, i32 0, i32 15
  store %struct._object* null, %struct._object** %curexc_traceback87, align 8
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.86
  %64 = load %struct._object*, %struct._object** %_py_tmp84, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp89, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %66, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.88
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %69(%struct._object* %70)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %do.body.83
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %71 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %exc_type = getelementptr inbounds %struct._ts, %struct._ts* %71, i32 0, i32 16
  %72 = load %struct._object*, %struct._object** %exc_type, align 8
  store %struct._object* %72, %struct._object** %_py_tmp102, align 8
  %73 = load %struct._object*, %struct._object** %_py_tmp102, align 8
  %cmp103 = icmp ne %struct._object* %73, null
  br i1 %cmp103, label %if.then.104, label %if.end.117

if.then.104:                                      ; preds = %do.body.101
  %74 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %exc_type105 = getelementptr inbounds %struct._ts, %struct._ts* %74, i32 0, i32 16
  store %struct._object* null, %struct._object** %exc_type105, align 8
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.104
  %75 = load %struct._object*, %struct._object** %_py_tmp102, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp107, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt108, align 8
  %dec109 = add i64 %77, -1
  store i64 %dec109, i64* %ob_refcnt108, align 8
  %cmp110 = icmp ne i64 %dec109, 0
  br i1 %cmp110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %do.body.106
  br label %if.end.115

if.else.112:                                      ; preds = %do.body.106
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_type113 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type113, align 8
  %tp_dealloc114 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc114, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  call void %80(%struct._object* %81)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.112, %if.then.111
  br label %do.end.116

do.end.116:                                       ; preds = %if.end.115
  br label %if.end.117

if.end.117:                                       ; preds = %do.end.116, %do.body.101
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  br label %do.body.119

do.body.119:                                      ; preds = %do.end.118
  %82 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %exc_value = getelementptr inbounds %struct._ts, %struct._ts* %82, i32 0, i32 17
  %83 = load %struct._object*, %struct._object** %exc_value, align 8
  store %struct._object* %83, %struct._object** %_py_tmp120, align 8
  %84 = load %struct._object*, %struct._object** %_py_tmp120, align 8
  %cmp121 = icmp ne %struct._object* %84, null
  br i1 %cmp121, label %if.then.122, label %if.end.135

if.then.122:                                      ; preds = %do.body.119
  %85 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %exc_value123 = getelementptr inbounds %struct._ts, %struct._ts* %85, i32 0, i32 17
  store %struct._object* null, %struct._object** %exc_value123, align 8
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.122
  %86 = load %struct._object*, %struct._object** %_py_tmp120, align 8
  store %struct._object* %86, %struct._object** %_py_decref_tmp125, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0
  %88 = load i64, i64* %ob_refcnt126, align 8
  %dec127 = add i64 %88, -1
  store i64 %dec127, i64* %ob_refcnt126, align 8
  %cmp128 = icmp ne i64 %dec127, 0
  br i1 %cmp128, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %do.body.124
  br label %if.end.133

if.else.130:                                      ; preds = %do.body.124
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_type131 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type131, align 8
  %tp_dealloc132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc132, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  call void %91(%struct._object* %92)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  br label %if.end.135

if.end.135:                                       ; preds = %do.end.134, %do.body.119
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %do.body.137

do.body.137:                                      ; preds = %do.end.136
  %93 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %exc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %93, i32 0, i32 18
  %94 = load %struct._object*, %struct._object** %exc_traceback, align 8
  store %struct._object* %94, %struct._object** %_py_tmp138, align 8
  %95 = load %struct._object*, %struct._object** %_py_tmp138, align 8
  %cmp139 = icmp ne %struct._object* %95, null
  br i1 %cmp139, label %if.then.140, label %if.end.153

if.then.140:                                      ; preds = %do.body.137
  %96 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %exc_traceback141 = getelementptr inbounds %struct._ts, %struct._ts* %96, i32 0, i32 18
  store %struct._object* null, %struct._object** %exc_traceback141, align 8
  br label %do.body.142

do.body.142:                                      ; preds = %if.then.140
  %97 = load %struct._object*, %struct._object** %_py_tmp138, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp143, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt144, align 8
  %dec145 = add i64 %99, -1
  store i64 %dec145, i64* %ob_refcnt144, align 8
  %cmp146 = icmp ne i64 %dec145, 0
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %do.body.142
  br label %if.end.151

if.else.148:                                      ; preds = %do.body.142
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_type149 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type149, align 8
  %tp_dealloc150 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc150, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  call void %102(%struct._object* %103)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.148, %if.then.147
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  br label %if.end.153

if.end.153:                                       ; preds = %do.end.152, %do.body.137
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.153
  %104 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_profilefunc = getelementptr inbounds %struct._ts, %struct._ts* %104, i32 0, i32 9
  store i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_profilefunc, align 8
  %105 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_tracefunc = getelementptr inbounds %struct._ts, %struct._ts* %105, i32 0, i32 10
  store i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_tracefunc, align 8
  br label %do.body.155

do.body.155:                                      ; preds = %do.end.154
  %106 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_profileobj = getelementptr inbounds %struct._ts, %struct._ts* %106, i32 0, i32 11
  %107 = load %struct._object*, %struct._object** %c_profileobj, align 8
  store %struct._object* %107, %struct._object** %_py_tmp156, align 8
  %108 = load %struct._object*, %struct._object** %_py_tmp156, align 8
  %cmp157 = icmp ne %struct._object* %108, null
  br i1 %cmp157, label %if.then.158, label %if.end.171

if.then.158:                                      ; preds = %do.body.155
  %109 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_profileobj159 = getelementptr inbounds %struct._ts, %struct._ts* %109, i32 0, i32 11
  store %struct._object* null, %struct._object** %c_profileobj159, align 8
  br label %do.body.160

do.body.160:                                      ; preds = %if.then.158
  %110 = load %struct._object*, %struct._object** %_py_tmp156, align 8
  store %struct._object* %110, %struct._object** %_py_decref_tmp161, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_refcnt162 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt162, align 8
  %dec163 = add i64 %112, -1
  store i64 %dec163, i64* %ob_refcnt162, align 8
  %cmp164 = icmp ne i64 %dec163, 0
  br i1 %cmp164, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %do.body.160
  br label %if.end.169

if.else.166:                                      ; preds = %do.body.160
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_type167 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type167, align 8
  %tp_dealloc168 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc168, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  call void %115(%struct._object* %116)
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.166, %if.then.165
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  br label %if.end.171

if.end.171:                                       ; preds = %do.end.170, %do.body.155
  br label %do.end.172

do.end.172:                                       ; preds = %if.end.171
  br label %do.body.173

do.body.173:                                      ; preds = %do.end.172
  %117 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_traceobj = getelementptr inbounds %struct._ts, %struct._ts* %117, i32 0, i32 12
  %118 = load %struct._object*, %struct._object** %c_traceobj, align 8
  store %struct._object* %118, %struct._object** %_py_tmp174, align 8
  %119 = load %struct._object*, %struct._object** %_py_tmp174, align 8
  %cmp175 = icmp ne %struct._object* %119, null
  br i1 %cmp175, label %if.then.176, label %if.end.189

if.then.176:                                      ; preds = %do.body.173
  %120 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_traceobj177 = getelementptr inbounds %struct._ts, %struct._ts* %120, i32 0, i32 12
  store %struct._object* null, %struct._object** %c_traceobj177, align 8
  br label %do.body.178

do.body.178:                                      ; preds = %if.then.176
  %121 = load %struct._object*, %struct._object** %_py_tmp174, align 8
  store %struct._object* %121, %struct._object** %_py_decref_tmp179, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_refcnt180 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 0
  %123 = load i64, i64* %ob_refcnt180, align 8
  %dec181 = add i64 %123, -1
  store i64 %dec181, i64* %ob_refcnt180, align 8
  %cmp182 = icmp ne i64 %dec181, 0
  br i1 %cmp182, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %do.body.178
  br label %if.end.187

if.else.184:                                      ; preds = %do.body.178
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_type185 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type185, align 8
  %tp_dealloc186 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 4
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc186, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  call void %126(%struct._object* %127)
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.184, %if.then.183
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  br label %if.end.189

if.end.189:                                       ; preds = %do.end.188, %do.body.173
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.189
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyInterpreterState_Delete(%struct._is* %interp) #0 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  %p = alloca %struct._is**, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  %0 = load %struct._is*, %struct._is** %interp.addr, align 8
  call void @zapthreads(%struct._is* %0)
  %1 = load i8*, i8** @head_mutex, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %1, i32 1)
  store %struct._is** @interp_head, %struct._is*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._is**, %struct._is*** %p, align 8
  %3 = load %struct._is*, %struct._is** %2, align 8
  %cmp = icmp eq %struct._is* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  call void @Py_FatalError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %for.cond
  %4 = load %struct._is**, %struct._is*** %p, align 8
  %5 = load %struct._is*, %struct._is** %4, align 8
  %6 = load %struct._is*, %struct._is** %interp.addr, align 8
  %cmp1 = icmp eq %struct._is* %5, %6
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.end

if.end.3:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.3
  %7 = load %struct._is**, %struct._is*** %p, align 8
  %8 = load %struct._is*, %struct._is** %7, align 8
  %next = getelementptr inbounds %struct._is, %struct._is* %8, i32 0, i32 0
  store %struct._is** %next, %struct._is*** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.2
  %9 = load %struct._is*, %struct._is** %interp.addr, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %9, i32 0, i32 1
  %10 = load %struct._ts*, %struct._ts** %tstate_head, align 8
  %cmp4 = icmp ne %struct._ts* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.end
  call void @Py_FatalError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0)) #4
  unreachable

if.end.6:                                         ; preds = %for.end
  %11 = load %struct._is*, %struct._is** %interp.addr, align 8
  %next7 = getelementptr inbounds %struct._is, %struct._is* %11, i32 0, i32 0
  %12 = load %struct._is*, %struct._is** %next7, align 8
  %13 = load %struct._is**, %struct._is*** %p, align 8
  store %struct._is* %12, %struct._is** %13, align 8
  %14 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %14)
  %15 = load %struct._is*, %struct._is** %interp.addr, align 8
  %16 = bitcast %struct._is* %15 to i8*
  call void @PyMem_RawFree(i8* %16)
  %17 = load %struct._is*, %struct._is** @interp_head, align 8
  %cmp8 = icmp eq %struct._is* %17, null
  br i1 %cmp8, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.6
  %18 = load i8*, i8** @head_mutex, align 8
  %cmp9 = icmp ne i8* %18, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  %19 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_free_lock(i8* %19)
  store i8* null, i8** @head_mutex, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zapthreads(%struct._is* %interp) #0 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  %p = alloca %struct._ts*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._is*, %struct._is** %interp.addr, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %0, i32 0, i32 1
  %1 = load %struct._ts*, %struct._ts** %tstate_head, align 8
  store %struct._ts* %1, %struct._ts** %p, align 8
  %cmp = icmp ne %struct._ts* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._ts*, %struct._ts** %p, align 8
  call void @PyThreadState_Delete(%struct._ts* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @PyMem_RawFree(i8*) #1

declare void @PyThread_free_lock(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._ts* @PyThreadState_New(%struct._is* %interp) #0 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  %0 = load %struct._is*, %struct._is** %interp.addr, align 8
  %call = call %struct._ts* @new_threadstate(%struct._is* %0, i32 1)
  ret %struct._ts* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._ts* @new_threadstate(%struct._is* %interp, i32 %init) #0 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  %init.addr = alloca i32, align 4
  %tstate = alloca %struct._ts*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  store i32 %init, i32* %init.addr, align 4
  %call = call i8* @PyMem_RawMalloc(i64 192)
  %0 = bitcast i8* %call to %struct._ts*
  store %struct._ts* %0, %struct._ts** %tstate, align 8
  %1 = load %struct._frame* (%struct._ts*)*, %struct._frame* (%struct._ts*)** @_PyThreadState_GetFrame, align 8
  %cmp = icmp eq %struct._frame* (%struct._ts*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._frame* (%struct._ts*)* @threadstate_getframe, %struct._frame* (%struct._ts*)** @_PyThreadState_GetFrame, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp1 = icmp ne %struct._ts* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._is*, %struct._is** %interp.addr, align 8
  %4 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp3 = getelementptr inbounds %struct._ts, %struct._ts* %4, i32 0, i32 2
  store %struct._is* %3, %struct._is** %interp3, align 8
  %5 = load %struct._ts*, %struct._ts** %tstate, align 8
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %5, i32 0, i32 3
  store %struct._frame* null, %struct._frame** %frame, align 8
  %6 = load %struct._ts*, %struct._ts** %tstate, align 8
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %6, i32 0, i32 4
  store i32 0, i32* %recursion_depth, align 4
  %7 = load %struct._ts*, %struct._ts** %tstate, align 8
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %7, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  %8 = load %struct._ts*, %struct._ts** %tstate, align 8
  %recursion_critical = getelementptr inbounds %struct._ts, %struct._ts* %8, i32 0, i32 6
  store i8 0, i8* %recursion_critical, align 1
  %9 = load %struct._ts*, %struct._ts** %tstate, align 8
  %tracing = getelementptr inbounds %struct._ts, %struct._ts* %9, i32 0, i32 7
  store i32 0, i32* %tracing, align 4
  %10 = load %struct._ts*, %struct._ts** %tstate, align 8
  %use_tracing = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 8
  store i32 0, i32* %use_tracing, align 4
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %gilstate_counter = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 20
  store i32 0, i32* %gilstate_counter, align 4
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  %async_exc = getelementptr inbounds %struct._ts, %struct._ts* %12, i32 0, i32 21
  store %struct._object* null, %struct._object** %async_exc, align 8
  %call4 = call i64 @PyThread_get_thread_ident()
  %13 = load %struct._ts*, %struct._ts** %tstate, align 8
  %thread_id = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 22
  store i64 %call4, i64* %thread_id, align 8
  %14 = load %struct._ts*, %struct._ts** %tstate, align 8
  %dict = getelementptr inbounds %struct._ts, %struct._ts* %14, i32 0, i32 19
  store %struct._object* null, %struct._object** %dict, align 8
  %15 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 13
  store %struct._object* null, %struct._object** %curexc_type, align 8
  %16 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_value = getelementptr inbounds %struct._ts, %struct._ts* %16, i32 0, i32 14
  store %struct._object* null, %struct._object** %curexc_value, align 8
  %17 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 15
  store %struct._object* null, %struct._object** %curexc_traceback, align 8
  %18 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_type = getelementptr inbounds %struct._ts, %struct._ts* %18, i32 0, i32 16
  store %struct._object* null, %struct._object** %exc_type, align 8
  %19 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_value = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 17
  store %struct._object* null, %struct._object** %exc_value, align 8
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 18
  store %struct._object* null, %struct._object** %exc_traceback, align 8
  %21 = load %struct._ts*, %struct._ts** %tstate, align 8
  %c_profilefunc = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 9
  store i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_profilefunc, align 8
  %22 = load %struct._ts*, %struct._ts** %tstate, align 8
  %c_tracefunc = getelementptr inbounds %struct._ts, %struct._ts* %22, i32 0, i32 10
  store i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_tracefunc, align 8
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8
  %c_profileobj = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 11
  store %struct._object* null, %struct._object** %c_profileobj, align 8
  %24 = load %struct._ts*, %struct._ts** %tstate, align 8
  %c_traceobj = getelementptr inbounds %struct._ts, %struct._ts* %24, i32 0, i32 12
  store %struct._object* null, %struct._object** %c_traceobj, align 8
  %25 = load %struct._ts*, %struct._ts** %tstate, align 8
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %25, i32 0, i32 23
  store i32 0, i32* %trash_delete_nesting, align 4
  %26 = load %struct._ts*, %struct._ts** %tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %26, i32 0, i32 24
  store %struct._object* null, %struct._object** %trash_delete_later, align 8
  %27 = load %struct._ts*, %struct._ts** %tstate, align 8
  %on_delete = getelementptr inbounds %struct._ts, %struct._ts* %27, i32 0, i32 25
  store void (i8*)* null, void (i8*)** %on_delete, align 8
  %28 = load %struct._ts*, %struct._ts** %tstate, align 8
  %on_delete_data = getelementptr inbounds %struct._ts, %struct._ts* %28, i32 0, i32 26
  store i8* null, i8** %on_delete_data, align 8
  %29 = load i32, i32* %init.addr, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %30 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @_PyThreadState_Init(%struct._ts* %30)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.2
  %31 = load i8*, i8** @head_mutex, align 8
  %call7 = call i32 @PyThread_acquire_lock(i8* %31, i32 1)
  %32 = load %struct._ts*, %struct._ts** %tstate, align 8
  %prev = getelementptr inbounds %struct._ts, %struct._ts* %32, i32 0, i32 0
  store %struct._ts* null, %struct._ts** %prev, align 8
  %33 = load %struct._is*, %struct._is** %interp.addr, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %33, i32 0, i32 1
  %34 = load %struct._ts*, %struct._ts** %tstate_head, align 8
  %35 = load %struct._ts*, %struct._ts** %tstate, align 8
  %next = getelementptr inbounds %struct._ts, %struct._ts* %35, i32 0, i32 1
  store %struct._ts* %34, %struct._ts** %next, align 8
  %36 = load %struct._ts*, %struct._ts** %tstate, align 8
  %next8 = getelementptr inbounds %struct._ts, %struct._ts* %36, i32 0, i32 1
  %37 = load %struct._ts*, %struct._ts** %next8, align 8
  %tobool9 = icmp ne %struct._ts* %37, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.6
  %38 = load %struct._ts*, %struct._ts** %tstate, align 8
  %39 = load %struct._ts*, %struct._ts** %tstate, align 8
  %next11 = getelementptr inbounds %struct._ts, %struct._ts* %39, i32 0, i32 1
  %40 = load %struct._ts*, %struct._ts** %next11, align 8
  %prev12 = getelementptr inbounds %struct._ts, %struct._ts* %40, i32 0, i32 0
  store %struct._ts* %38, %struct._ts** %prev12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.6
  %41 = load %struct._ts*, %struct._ts** %tstate, align 8
  %42 = load %struct._is*, %struct._is** %interp.addr, align 8
  %tstate_head14 = getelementptr inbounds %struct._is, %struct._is* %42, i32 0, i32 1
  store %struct._ts* %41, %struct._ts** %tstate_head14, align 8
  %43 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %43)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.13, %if.end
  %44 = load %struct._ts*, %struct._ts** %tstate, align 8
  ret %struct._ts* %44
}

; Function Attrs: nounwind uwtable
define %struct._ts* @_PyThreadState_Prealloc(%struct._is* %interp) #0 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  %0 = load %struct._is*, %struct._is** %interp.addr, align 8
  %call = call %struct._ts* @new_threadstate(%struct._is* %0, i32 0)
  ret %struct._ts* %call
}

; Function Attrs: nounwind uwtable
define void @_PyThreadState_Init(%struct._ts* %tstate) #0 {
entry:
  %tstate.addr = alloca %struct._ts*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  call void @_PyGILState_NoteThreadState(%struct._ts* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_PyGILState_NoteThreadState(%struct._ts* %tstate) #0 {
entry:
  %tstate.addr = alloca %struct._ts*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load %struct._is*, %struct._is** @autoInterpreterState, align 8
  %tobool = icmp ne %struct._is* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @autoTLSkey, align 4
  %call = call i8* @PyThread_get_key_value(i32 %1)
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %2 = load i32, i32* @autoTLSkey, align 4
  %3 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %4 = bitcast %struct._ts* %3 to i8*
  %call2 = call i32 @PyThread_set_key_value(i32 %2, i8* %4)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0)) #4
  unreachable

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %5 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %gilstate_counter = getelementptr inbounds %struct._ts, %struct._ts* %5, i32 0, i32 20
  store i32 1, i32* %gilstate_counter, align 4
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyState_FindModule(%struct.PyModuleDef* %module) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %index = alloca i64, align 8
  %state = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  %0 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %0, i32 0, i32 0
  %m_index = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 2
  %1 = load i64, i64* %m_index, align 8
  store i64 %1, i64* %index, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %2, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %3 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %4 = bitcast %struct._Py_atomic_address* %3 to i8*
  %5 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %4, i32 %5)
  %6 = load i32, i32* %order, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %7 = load i8**, i8*** %volatile_data, align 8
  %8 = load volatile i8*, i8** %7, align 8
  store i8* %8, i8** %result, align 8
  %9 = load i32, i32* %order, align 4
  switch i32 %9, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %10 = load i8*, i8** %result, align 8
  store i8* %10, i8** %tmp
  %11 = load i8*, i8** %tmp
  %12 = bitcast i8* %11 to %struct._ts*
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %12, i32 0, i32 2
  %13 = load %struct._is*, %struct._is** %interp, align 8
  store %struct._is* %13, %struct._is** %state, align 8
  %14 = load i64, i64* %index, align 8
  %cmp = icmp eq i64 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %15 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 3
  %16 = load %struct._object*, %struct._object** %modules_by_index, align 8
  %cmp5 = icmp eq %struct._object* %16, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %17 = load i64, i64* %index, align 8
  %18 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index8 = getelementptr inbounds %struct._is, %struct._is* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %modules_by_index8, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size, align 8
  %cmp9 = icmp sge i64 %17, %21
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %22 = load i64, i64* %index, align 8
  %23 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index12 = getelementptr inbounds %struct._is, %struct._is* %23, i32 0, i32 3
  %24 = load %struct._object*, %struct._object** %modules_by_index12, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %25, i32 0, i32 1
  %26 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %26, i64 %22
  %27 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %27, %struct._object** %res, align 8
  %28 = load %struct._object*, %struct._object** %res, align 8
  %cmp13 = icmp eq %struct._object* %28, @_Py_NoneStruct
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %29 = load %struct._object*, %struct._object** %res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %29, %cond.false ]
  store %struct._object* %cond, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.10, %if.then.6, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load i32, i32* %order.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_PyState_AddModule(%struct._object* %module, %struct.PyModuleDef* %def) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca %struct._object*, align 8
  %def.addr = alloca %struct.PyModuleDef*, align 8
  %state = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct.PyModuleDef* %def, %struct.PyModuleDef** %def.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp, align 8
  store %struct._is* %11, %struct._is** %state, align 8
  %12 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def.addr, align 8
  %tobool = icmp ne %struct.PyModuleDef* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog.3
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %13 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index = getelementptr inbounds %struct._is, %struct._is* %13, i32 0, i32 3
  %14 = load %struct._object*, %struct._object** %modules_by_index, align 8
  %tobool4 = icmp ne %struct._object* %14, null
  br i1 %tobool4, label %if.end.11, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %call = call %struct._object* @PyList_New(i64 0)
  %15 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index6 = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 3
  store %struct._object* %call, %struct._object** %modules_by_index6, align 8
  %16 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index7 = getelementptr inbounds %struct._is, %struct._is* %16, i32 0, i32 3
  %17 = load %struct._object*, %struct._object** %modules_by_index7, align 8
  %tobool8 = icmp ne %struct._object* %17, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end.11
  %18 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index12 = getelementptr inbounds %struct._is, %struct._is* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %modules_by_index12, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size, align 8
  %22 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def.addr, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %22, i32 0, i32 0
  %m_index = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 2
  %23 = load i64, i64* %m_index, align 8
  %cmp = icmp sle i64 %21, %23
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index13 = getelementptr inbounds %struct._is, %struct._is* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %modules_by_index13, align 8
  %call14 = call i32 @PyList_Append(%struct._object* %25, %struct._object* @_Py_NoneStruct)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct._object*, %struct._object** %module.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %28 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index18 = getelementptr inbounds %struct._is, %struct._is* %28, i32 0, i32 3
  %29 = load %struct._object*, %struct._object** %modules_by_index18, align 8
  %30 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def.addr, align 8
  %m_base19 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %30, i32 0, i32 0
  %m_index20 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base19, i32 0, i32 2
  %31 = load i64, i64* %m_index20, align 8
  %32 = load %struct._object*, %struct._object** %module.addr, align 8
  %call21 = call i32 @PyList_SetItem(%struct._object* %29, i64 %31, %struct._object* %32)
  store i32 %call21, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.16, %if.then.9, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @PyState_AddModule(%struct._object* %module, %struct.PyModuleDef* %def) #0 {
entry:
  %module.addr = alloca %struct._object*, align 8
  %def.addr = alloca %struct.PyModuleDef*, align 8
  %index = alloca i64, align 8
  %state = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct.PyModuleDef* %def, %struct.PyModuleDef** %def.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp, align 8
  store %struct._is* %11, %struct._is** %state, align 8
  %12 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def.addr, align 8
  %tobool = icmp ne %struct.PyModuleDef* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog.3
  call void @Py_FatalError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %sw.epilog.3
  %13 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def.addr, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %13, i32 0, i32 0
  %m_index = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 2
  %14 = load i64, i64* %m_index, align 8
  store i64 %14, i64* %index, align 8
  %15 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 3
  %16 = load %struct._object*, %struct._object** %modules_by_index, align 8
  %tobool4 = icmp ne %struct._object* %16, null
  br i1 %tobool4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end
  %17 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index6 = getelementptr inbounds %struct._is, %struct._is* %17, i32 0, i32 3
  %18 = load %struct._object*, %struct._object** %modules_by_index6, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size, align 8
  %21 = load i64, i64* %index, align 8
  %cmp = icmp sge i64 %20, %21
  br i1 %cmp, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.then.5
  %22 = load %struct._object*, %struct._object** %module.addr, align 8
  %23 = load i64, i64* %index, align 8
  %24 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index8 = getelementptr inbounds %struct._is, %struct._is* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %modules_by_index8, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %26, i32 0, i32 1
  %27 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %27, i64 %23
  %28 = load %struct._object*, %struct._object** %arrayidx, align 8
  %cmp9 = icmp eq %struct._object* %22, %28
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0)) #4
  unreachable

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %29 = load %struct._object*, %struct._object** %module.addr, align 8
  %30 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def.addr, align 8
  %call = call i32 @_PyState_AddModule(%struct._object* %29, %struct.PyModuleDef* %30)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyState_RemoveModule(%struct.PyModuleDef* %def) #0 {
entry:
  %def.addr = alloca %struct.PyModuleDef*, align 8
  %index = alloca i64, align 8
  %state = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct.PyModuleDef* %def, %struct.PyModuleDef** %def.addr, align 8
  %0 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def.addr, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %0, i32 0, i32 0
  %m_index = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 2
  %1 = load i64, i64* %m_index, align 8
  store i64 %1, i64* %index, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %2, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %3 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %4 = bitcast %struct._Py_atomic_address* %3 to i8*
  %5 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %4, i32 %5)
  %6 = load i32, i32* %order, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %7 = load i8**, i8*** %volatile_data, align 8
  %8 = load volatile i8*, i8** %7, align 8
  store i8* %8, i8** %result, align 8
  %9 = load i32, i32* %order, align 4
  switch i32 %9, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %10 = load i8*, i8** %result, align 8
  store i8* %10, i8** %tmp
  %11 = load i8*, i8** %tmp
  %12 = bitcast i8* %11 to %struct._ts*
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %12, i32 0, i32 2
  %13 = load %struct._is*, %struct._is** %interp, align 8
  store %struct._is* %13, %struct._is** %state, align 8
  %14 = load i64, i64* %index, align 8
  %cmp = icmp eq i64 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %sw.epilog.3
  %15 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 3
  %16 = load %struct._object*, %struct._object** %modules_by_index, align 8
  %cmp4 = icmp eq %struct._object* %16, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i32 0)) #4
  unreachable

if.end.6:                                         ; preds = %if.end
  %17 = load i64, i64* %index, align 8
  %18 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index7 = getelementptr inbounds %struct._is, %struct._is* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %modules_by_index7, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size, align 8
  %cmp8 = icmp sgt i64 %17, %21
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  call void @Py_FatalError(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0)) #4
  unreachable

if.end.10:                                        ; preds = %if.end.6
  %22 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index11 = getelementptr inbounds %struct._is, %struct._is* %22, i32 0, i32 3
  %23 = load %struct._object*, %struct._object** %modules_by_index11, align 8
  %24 = load i64, i64* %index, align 8
  %call = call i32 @PyList_SetItem(%struct._object* %23, i64 %24, %struct._object* @_Py_NoneStruct)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @_PyState_ClearModules() #0 {
entry:
  %state = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %i = alloca i64, align 8
  %m = alloca %struct._object*, align 8
  %md = alloca %struct.PyModuleDef*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp, align 8
  store %struct._is* %11, %struct._is** %state, align 8
  %12 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %modules_by_index, align 8
  %tobool = icmp ne %struct._object* %13, null
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %sw.epilog.3
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i64, i64* %i, align 8
  %15 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index5 = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 3
  %16 = load %struct._object*, %struct._object** %modules_by_index5, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %14, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %20 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index7 = getelementptr inbounds %struct._is, %struct._is* %20, i32 0, i32 3
  %21 = load %struct._object*, %struct._object** %modules_by_index7, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %22, i32 0, i32 1
  %23 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %23, i64 %19
  %24 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %24, %struct._object** %m, align 8
  %25 = load %struct._object*, %struct._object** %m, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp8 = icmp eq %struct._typeobject* %26, @PyModule_Type
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %27 = load %struct._object*, %struct._object** %m, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %28, %struct._typeobject* @PyModule_Type)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.then.11, label %if.end.29

if.then.11:                                       ; preds = %lor.lhs.false, %for.body
  %29 = load %struct._object*, %struct._object** %m, align 8
  %call13 = call %struct.PyModuleDef* @PyModule_GetDef(%struct._object* %29)
  store %struct.PyModuleDef* %call13, %struct.PyModuleDef** %md, align 8
  %30 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md, align 8
  %tobool14 = icmp ne %struct.PyModuleDef* %30, null
  br i1 %tobool14, label %if.then.15, label %if.end.28

if.then.15:                                       ; preds = %if.then.11
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %31 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %31, i32 0, i32 0
  %m_copy = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 3
  %32 = load %struct._object*, %struct._object** %m_copy, align 8
  store %struct._object* %32, %struct._object** %_py_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp17 = icmp ne %struct._object* %33, null
  br i1 %cmp17, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %do.body
  %34 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md, align 8
  %m_base19 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %34, i32 0, i32 0
  %m_copy20 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base19, i32 0, i32 3
  store %struct._object* null, %struct._object** %m_copy20, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.18
  %35 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body.21
  br label %if.end

if.else:                                          ; preds = %do.body.21
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %do.body
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %if.then.11
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %42 = load i64, i64* %i, align 8
  %inc = add i64 %42, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index30 = getelementptr inbounds %struct._is, %struct._is* %43, i32 0, i32 3
  %44 = load %struct._object*, %struct._object** %modules_by_index30, align 8
  %45 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index31 = getelementptr inbounds %struct._is, %struct._is* %45, i32 0, i32 3
  %46 = load %struct._object*, %struct._object** %modules_by_index31, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyVarObject*
  %ob_size32 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %47, i32 0, i32 1
  %48 = load i64, i64* %ob_size32, align 8
  %call33 = call i32 @PyList_SetSlice(%struct._object* %44, i64 0, i64 %48, %struct._object* null)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.end
  %49 = load %struct._is*, %struct._is** %state, align 8
  %modules_by_index36 = getelementptr inbounds %struct._is, %struct._is* %49, i32 0, i32 3
  %50 = load %struct._object*, %struct._object** %modules_by_index36, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %50)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %sw.epilog.3
  ret void
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct.PyModuleDef* @PyModule_GetDef(%struct._object*) #1

declare i32 @PyList_SetSlice(%struct._object*, i64, i64, %struct._object*) #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @PyThreadState_Delete(%struct._ts* %tstate) #0 {
entry:
  %tstate.addr = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %1, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %3 = bitcast %struct._Py_atomic_address* %2 to i8*
  %4 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %3, i32 %4)
  %5 = load i32, i32* %order, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %6 = load i8**, i8*** %volatile_data, align 8
  %7 = load volatile i8*, i8** %6, align 8
  store i8* %7, i8** %result, align 8
  %8 = load i32, i32* %order, align 4
  switch i32 %8, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %9 = load i8*, i8** %result, align 8
  store i8* %9, i8** %tmp
  %10 = load i8*, i8** %tmp
  %11 = bitcast i8* %10 to %struct._ts*
  %cmp = icmp eq %struct._ts* %0, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %sw.epilog.3
  %12 = load %struct._is*, %struct._is** @autoInterpreterState, align 8
  %tobool = icmp ne %struct._is* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* @autoTLSkey, align 4
  %call = call i8* @PyThread_get_key_value(i32 %13)
  %14 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %15 = bitcast %struct._ts* %14 to i8*
  %cmp4 = icmp eq i8* %call, %15
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* @autoTLSkey, align 4
  call void @PyThread_delete_key_value(i32 %16)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %17 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  call void @tstate_delete_common(%struct._ts* %17)
  ret void
}

declare i8* @PyThread_get_key_value(i32) #1

declare void @PyThread_delete_key_value(i32) #1

; Function Attrs: nounwind uwtable
define internal void @tstate_delete_common(%struct._ts* %tstate) #0 {
entry:
  %tstate.addr = alloca %struct._ts*, align 8
  %interp = alloca %struct._is*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %cmp = icmp eq %struct._ts* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %1, i32 0, i32 2
  %2 = load %struct._is*, %struct._is** %interp1, align 8
  store %struct._is* %2, %struct._is** %interp, align 8
  %3 = load %struct._is*, %struct._is** %interp, align 8
  %cmp2 = icmp eq %struct._is* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0)) #4
  unreachable

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** @head_mutex, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %4, i32 1)
  %5 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %prev = getelementptr inbounds %struct._ts, %struct._ts* %5, i32 0, i32 0
  %6 = load %struct._ts*, %struct._ts** %prev, align 8
  %tobool = icmp ne %struct._ts* %6, null
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.4
  %7 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next = getelementptr inbounds %struct._ts, %struct._ts* %7, i32 0, i32 1
  %8 = load %struct._ts*, %struct._ts** %next, align 8
  %9 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %prev6 = getelementptr inbounds %struct._ts, %struct._ts* %9, i32 0, i32 0
  %10 = load %struct._ts*, %struct._ts** %prev6, align 8
  %next7 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 1
  store %struct._ts* %8, %struct._ts** %next7, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end.4
  %11 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next8 = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 1
  %12 = load %struct._ts*, %struct._ts** %next8, align 8
  %13 = load %struct._is*, %struct._is** %interp, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %13, i32 0, i32 1
  store %struct._ts* %12, %struct._ts** %tstate_head, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  %14 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next10 = getelementptr inbounds %struct._ts, %struct._ts* %14, i32 0, i32 1
  %15 = load %struct._ts*, %struct._ts** %next10, align 8
  %tobool11 = icmp ne %struct._ts* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.9
  %16 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %prev13 = getelementptr inbounds %struct._ts, %struct._ts* %16, i32 0, i32 0
  %17 = load %struct._ts*, %struct._ts** %prev13, align 8
  %18 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next14 = getelementptr inbounds %struct._ts, %struct._ts* %18, i32 0, i32 1
  %19 = load %struct._ts*, %struct._ts** %next14, align 8
  %prev15 = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 0
  store %struct._ts* %17, %struct._ts** %prev15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.9
  %20 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %20)
  %21 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %on_delete = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 25
  %22 = load void (i8*)*, void (i8*)** %on_delete, align 8
  %cmp17 = icmp ne void (i8*)* %22, null
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %23 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %on_delete19 = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 25
  %24 = load void (i8*)*, void (i8*)** %on_delete19, align 8
  %25 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %on_delete_data = getelementptr inbounds %struct._ts, %struct._ts* %25, i32 0, i32 26
  %26 = load i8*, i8** %on_delete_data, align 8
  call void %24(i8* %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %27 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %28 = bitcast %struct._ts* %27 to i8*
  call void @PyMem_RawFree(i8* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyThreadState_DeleteCurrent() #0 {
entry:
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val5 = alloca %struct._Py_atomic_address*, align 8
  %new_val = alloca i8*, align 8
  %volatile_data8 = alloca i8**, align 8
  %order11 = alloca i32, align 4
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp = icmp eq %struct._ts* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  call void @Py_FatalError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %sw.epilog.3
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val5, align 8
  store i8* null, i8** %new_val, align 8
  %12 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val5, align 8
  %_value9 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %12, i32 0, i32 0
  store i8** %_value9, i8*** %volatile_data8, align 8
  store i32 0, i32* %order11, align 4
  %13 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val5, align 8
  %14 = bitcast %struct._Py_atomic_address* %13 to i8*
  %15 = load i32, i32* %order11, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %14, i32 %15)
  %16 = load i32, i32* %order11, align 4
  switch i32 %16, label %sw.epilog.16 [
    i32 2, label %sw.bb.12
    i32 0, label %sw.bb.13
    i32 1, label %sw.bb.14
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.14
  ]

sw.bb.12:                                         ; preds = %if.end
  call void @_Py_atomic_signal_fence(i32 2)
  br label %sw.bb.13

sw.bb.13:                                         ; preds = %if.end, %sw.bb.12
  %17 = load i8*, i8** %new_val, align 8
  %18 = load i8**, i8*** %volatile_data8, align 8
  store volatile i8* %17, i8** %18, align 8
  br label %sw.epilog.16

sw.bb.14:                                         ; preds = %if.end, %if.end, %if.end
  %19 = load i8*, i8** %new_val, align 8
  %20 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val5, align 8
  %_value15 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %20, i32 0, i32 0
  %21 = call i8* asm sideeffect "xchg $0, $1", "=r,*m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i8** %_value15, i8* %19) #5, !srcloc !3
  store i8* %21, i8** %new_val, align 8
  br label %sw.epilog.16

sw.epilog.16:                                     ; preds = %if.end, %sw.bb.14, %sw.bb.13
  %22 = load %struct._is*, %struct._is** @autoInterpreterState, align 8
  %tobool = icmp ne %struct._is* %22, null
  br i1 %tobool, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %sw.epilog.16
  %23 = load i32, i32* @autoTLSkey, align 4
  %call = call i8* @PyThread_get_key_value(i32 %23)
  %24 = load %struct._ts*, %struct._ts** %tstate, align 8
  %25 = bitcast %struct._ts* %24 to i8*
  %cmp17 = icmp eq i8* %call, %25
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* @autoTLSkey, align 4
  call void @PyThread_delete_key_value(i32 %26)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true, %sw.epilog.16
  %27 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @tstate_delete_common(%struct._ts* %27)
  call void @PyEval_ReleaseLock()
  ret void
}

declare void @PyEval_ReleaseLock() #1

; Function Attrs: nounwind uwtable
define void @_PyThreadState_DeleteExcept(%struct._ts* %tstate) #0 {
entry:
  %tstate.addr = alloca %struct._ts*, align 8
  %interp = alloca %struct._is*, align 8
  %p = alloca %struct._ts*, align 8
  %next = alloca %struct._ts*, align 8
  %garbage = alloca %struct._ts*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %0, i32 0, i32 2
  %1 = load %struct._is*, %struct._is** %interp1, align 8
  store %struct._is* %1, %struct._is** %interp, align 8
  %2 = load i8*, i8** @head_mutex, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %2, i32 1)
  %3 = load %struct._is*, %struct._is** %interp, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %3, i32 0, i32 1
  %4 = load %struct._ts*, %struct._ts** %tstate_head, align 8
  store %struct._ts* %4, %struct._ts** %garbage, align 8
  %5 = load %struct._ts*, %struct._ts** %garbage, align 8
  %6 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %cmp = icmp eq %struct._ts* %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next2 = getelementptr inbounds %struct._ts, %struct._ts* %7, i32 0, i32 1
  %8 = load %struct._ts*, %struct._ts** %next2, align 8
  store %struct._ts* %8, %struct._ts** %garbage, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %prev = getelementptr inbounds %struct._ts, %struct._ts* %9, i32 0, i32 0
  %10 = load %struct._ts*, %struct._ts** %prev, align 8
  %tobool = icmp ne %struct._ts* %10, null
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %11 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next4 = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 1
  %12 = load %struct._ts*, %struct._ts** %next4, align 8
  %13 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %prev5 = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 0
  %14 = load %struct._ts*, %struct._ts** %prev5, align 8
  %next6 = getelementptr inbounds %struct._ts, %struct._ts* %14, i32 0, i32 1
  store %struct._ts* %12, %struct._ts** %next6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %15 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next8 = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 1
  %16 = load %struct._ts*, %struct._ts** %next8, align 8
  %tobool9 = icmp ne %struct._ts* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.7
  %17 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %prev11 = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 0
  %18 = load %struct._ts*, %struct._ts** %prev11, align 8
  %19 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next12 = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 1
  %20 = load %struct._ts*, %struct._ts** %next12, align 8
  %prev13 = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 0
  store %struct._ts* %18, %struct._ts** %prev13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end.7
  %21 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next15 = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 1
  store %struct._ts* null, %struct._ts** %next15, align 8
  %22 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %prev16 = getelementptr inbounds %struct._ts, %struct._ts* %22, i32 0, i32 0
  store %struct._ts* null, %struct._ts** %prev16, align 8
  %23 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %24 = load %struct._is*, %struct._is** %interp, align 8
  %tstate_head17 = getelementptr inbounds %struct._is, %struct._is* %24, i32 0, i32 1
  store %struct._ts* %23, %struct._ts** %tstate_head17, align 8
  %25 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %25)
  %26 = load %struct._ts*, %struct._ts** %garbage, align 8
  store %struct._ts* %26, %struct._ts** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %27 = load %struct._ts*, %struct._ts** %p, align 8
  %tobool18 = icmp ne %struct._ts* %27, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._ts*, %struct._ts** %p, align 8
  %next19 = getelementptr inbounds %struct._ts, %struct._ts* %28, i32 0, i32 1
  %29 = load %struct._ts*, %struct._ts** %next19, align 8
  store %struct._ts* %29, %struct._ts** %next, align 8
  %30 = load %struct._ts*, %struct._ts** %p, align 8
  call void @PyThreadState_Clear(%struct._ts* %30)
  %31 = load %struct._ts*, %struct._ts** %p, align 8
  %32 = bitcast %struct._ts* %31 to i8*
  call void @PyMem_RawFree(i8* %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load %struct._ts*, %struct._ts** %next, align 8
  store %struct._ts* %33, %struct._ts** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._ts* @PyThreadState_Get() #0 {
entry:
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp = icmp eq %struct._ts* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %sw.epilog.3
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  ret %struct._ts* %12
}

; Function Attrs: nounwind uwtable
define %struct._ts* @PyThreadState_Swap(%struct._ts* %newts) #0 {
entry:
  %newts.addr = alloca %struct._ts*, align 8
  %oldts = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val5 = alloca %struct._Py_atomic_address*, align 8
  %new_val = alloca i8*, align 8
  %volatile_data8 = alloca i8**, align 8
  %order11 = alloca i32, align 4
  store %struct._ts* %newts, %struct._ts** %newts.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %oldts, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val5, align 8
  %11 = load %struct._ts*, %struct._ts** %newts.addr, align 8
  %12 = bitcast %struct._ts* %11 to i8*
  store i8* %12, i8** %new_val, align 8
  %13 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val5, align 8
  %_value9 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %13, i32 0, i32 0
  store i8** %_value9, i8*** %volatile_data8, align 8
  store i32 0, i32* %order11, align 4
  %14 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val5, align 8
  %15 = bitcast %struct._Py_atomic_address* %14 to i8*
  %16 = load i32, i32* %order11, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %15, i32 %16)
  %17 = load i32, i32* %order11, align 4
  switch i32 %17, label %sw.epilog.16 [
    i32 2, label %sw.bb.12
    i32 0, label %sw.bb.13
    i32 1, label %sw.bb.14
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.14
  ]

sw.bb.12:                                         ; preds = %sw.epilog.3
  call void @_Py_atomic_signal_fence(i32 2)
  br label %sw.bb.13

sw.bb.13:                                         ; preds = %sw.epilog.3, %sw.bb.12
  %18 = load i8*, i8** %new_val, align 8
  %19 = load i8**, i8*** %volatile_data8, align 8
  store volatile i8* %18, i8** %19, align 8
  br label %sw.epilog.16

sw.bb.14:                                         ; preds = %sw.epilog.3, %sw.epilog.3, %sw.epilog.3
  %20 = load i8*, i8** %new_val, align 8
  %21 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val5, align 8
  %_value15 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %21, i32 0, i32 0
  %22 = call i8* asm sideeffect "xchg $0, $1", "=r,*m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i8** %_value15, i8* %20) #5, !srcloc !4
  store i8* %22, i8** %new_val, align 8
  br label %sw.epilog.16

sw.epilog.16:                                     ; preds = %sw.epilog.3, %sw.bb.14, %sw.bb.13
  %23 = load %struct._ts*, %struct._ts** %oldts, align 8
  ret %struct._ts* %23
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyThreadState_GetDict() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %d = alloca %struct._object*, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp = icmp eq %struct._ts* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  %dict = getelementptr inbounds %struct._ts, %struct._ts* %12, i32 0, i32 19
  %13 = load %struct._object*, %struct._object** %dict, align 8
  %cmp4 = icmp eq %struct._object* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** %d, align 8
  %14 = load %struct._ts*, %struct._ts** %tstate, align 8
  %dict7 = getelementptr inbounds %struct._ts, %struct._ts* %14, i32 0, i32 19
  store %struct._object* %call, %struct._object** %dict7, align 8
  %15 = load %struct._object*, %struct._object** %d, align 8
  %cmp8 = icmp eq %struct._object* %15, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  call void @PyErr_Clear()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %16 = load %struct._ts*, %struct._ts** %tstate, align 8
  %dict12 = getelementptr inbounds %struct._ts, %struct._ts* %16, i32 0, i32 19
  %17 = load %struct._object*, %struct._object** %dict12, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

declare %struct._object* @PyDict_New() #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define i32 @PyThreadState_SetAsyncExc(i64 %id, %struct._object* %exc) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %exc.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %interp = alloca %struct._is*, align 8
  %p = alloca %struct._ts*, align 8
  %old_exc = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i64 %id, i64* %id.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp5 = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 2
  %12 = load %struct._is*, %struct._is** %interp5, align 8
  store %struct._is* %12, %struct._is** %interp, align 8
  %13 = load i8*, i8** @head_mutex, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %13, i32 1)
  %14 = load %struct._is*, %struct._is** %interp, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %14, i32 0, i32 1
  %15 = load %struct._ts*, %struct._ts** %tstate_head, align 8
  store %struct._ts* %15, %struct._ts** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog.3
  %16 = load %struct._ts*, %struct._ts** %p, align 8
  %cmp = icmp ne %struct._ts* %16, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._ts*, %struct._ts** %p, align 8
  %thread_id = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 22
  %18 = load i64, i64* %thread_id, align 8
  %19 = load i64, i64* %id.addr, align 8
  %cmp7 = icmp eq i64 %18, %19
  br i1 %cmp7, label %if.then, label %if.end.26

if.then:                                          ; preds = %for.body
  %20 = load %struct._ts*, %struct._ts** %p, align 8
  %async_exc = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 21
  %21 = load %struct._object*, %struct._object** %async_exc, align 8
  store %struct._object* %21, %struct._object** %old_exc, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %22 = load %struct._object*, %struct._object** %exc.addr, align 8
  store %struct._object* %22, %struct._object** %_py_xincref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp10 = icmp ne %struct._object* %23, null
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %26 = load %struct._object*, %struct._object** %exc.addr, align 8
  %27 = load %struct._ts*, %struct._ts** %p, align 8
  %async_exc12 = getelementptr inbounds %struct._ts, %struct._ts* %27, i32 0, i32 21
  store %struct._object* %26, %struct._object** %async_exc12, align 8
  %28 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %28)
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %29 = load %struct._object*, %struct._object** %old_exc, align 8
  store %struct._object* %29, %struct._object** %_py_xdecref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp15 = icmp ne %struct._object* %30, null
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %do.body.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt19, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %ob_refcnt19, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body.17
  br label %if.end.22

if.else:                                          ; preds = %do.body.17
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %36(%struct._object* %37)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.13
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  call void @_PyEval_SignalAsyncExc()
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %38 = load %struct._ts*, %struct._ts** %p, align 8
  %next = getelementptr inbounds %struct._ts, %struct._ts* %38, i32 0, i32 1
  %39 = load %struct._ts*, %struct._ts** %next, align 8
  store %struct._ts* %39, %struct._ts** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %40)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %do.end.25
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare void @_PyEval_SignalAsyncExc() #1

; Function Attrs: nounwind uwtable
define %struct._is* @PyInterpreterState_Head() #0 {
entry:
  %0 = load %struct._is*, %struct._is** @interp_head, align 8
  ret %struct._is* %0
}

; Function Attrs: nounwind uwtable
define %struct._is* @PyInterpreterState_Next(%struct._is* %interp) #0 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  %0 = load %struct._is*, %struct._is** %interp.addr, align 8
  %next = getelementptr inbounds %struct._is, %struct._is* %0, i32 0, i32 0
  %1 = load %struct._is*, %struct._is** %next, align 8
  ret %struct._is* %1
}

; Function Attrs: nounwind uwtable
define %struct._ts* @PyInterpreterState_ThreadHead(%struct._is* %interp) #0 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  %0 = load %struct._is*, %struct._is** %interp.addr, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %0, i32 0, i32 1
  %1 = load %struct._ts*, %struct._ts** %tstate_head, align 8
  ret %struct._ts* %1
}

; Function Attrs: nounwind uwtable
define %struct._ts* @PyThreadState_Next(%struct._ts* %tstate) #0 {
entry:
  %tstate.addr = alloca %struct._ts*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next = getelementptr inbounds %struct._ts, %struct._ts* %0, i32 0, i32 1
  %1 = load %struct._ts*, %struct._ts** %next, align 8
  ret %struct._ts* %1
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyThread_CurrentFrames() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %i = alloca %struct._is*, align 8
  %t = alloca %struct._ts*, align 8
  %id = alloca %struct._object*, align 8
  %stat = alloca i32, align 4
  %frame = alloca %struct._frame*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @head_mutex, align 8
  %call1 = call i32 @PyThread_acquire_lock(i8* %1, i32 1)
  %2 = load %struct._is*, %struct._is** @interp_head, align 8
  store %struct._is* %2, %struct._is** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %if.end
  %3 = load %struct._is*, %struct._is** %i, align 8
  %cmp2 = icmp ne %struct._is* %3, null
  br i1 %cmp2, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %4 = load %struct._is*, %struct._is** %i, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %4, i32 0, i32 1
  %5 = load %struct._ts*, %struct._ts** %tstate_head, align 8
  store %struct._ts* %5, %struct._ts** %t, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load %struct._ts*, %struct._ts** %t, align 8
  %cmp4 = icmp ne %struct._ts* %6, null
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %7 = load %struct._ts*, %struct._ts** %t, align 8
  %frame6 = getelementptr inbounds %struct._ts, %struct._ts* %7, i32 0, i32 3
  %8 = load %struct._frame*, %struct._frame** %frame6, align 8
  store %struct._frame* %8, %struct._frame** %frame, align 8
  %9 = load %struct._frame*, %struct._frame** %frame, align 8
  %cmp7 = icmp eq %struct._frame* %9, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body.5
  br label %for.inc

if.end.9:                                         ; preds = %for.body.5
  %10 = load %struct._ts*, %struct._ts** %t, align 8
  %thread_id = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 22
  %11 = load i64, i64* %thread_id, align 8
  %call10 = call %struct._object* @PyLong_FromLong(i64 %11)
  store %struct._object* %call10, %struct._object** %id, align 8
  %12 = load %struct._object*, %struct._object** %id, align 8
  %cmp11 = icmp eq %struct._object* %12, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  br label %Fail

if.end.13:                                        ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** %result, align 8
  %14 = load %struct._object*, %struct._object** %id, align 8
  %15 = load %struct._frame*, %struct._frame** %frame, align 8
  %16 = bitcast %struct._frame* %15 to %struct._object*
  %call14 = call i32 @PyDict_SetItem(%struct._object* %13, %struct._object* %14, %struct._object* %16)
  store i32 %call14, i32* %stat, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %17 = load %struct._object*, %struct._object** %id, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %24 = load i32, i32* %stat, align 4
  %cmp18 = icmp slt i32 %24, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  br label %Fail

if.end.20:                                        ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.20, %if.then.8
  %25 = load %struct._ts*, %struct._ts** %t, align 8
  %next = getelementptr inbounds %struct._ts, %struct._ts* %25, i32 0, i32 1
  %26 = load %struct._ts*, %struct._ts** %next, align 8
  store %struct._ts* %26, %struct._ts** %t, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %27 = load %struct._is*, %struct._is** %i, align 8
  %next22 = getelementptr inbounds %struct._is, %struct._is* %27, i32 0, i32 0
  %28 = load %struct._is*, %struct._is** %next22, align 8
  store %struct._is* %28, %struct._is** %i, align 8
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %29 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %29)
  %30 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

Fail:                                             ; preds = %if.then.19, %if.then.12
  %31 = load i8*, i8** @head_mutex, align 8
  call void @PyThread_release_lock(i8* %31)
  br label %do.body.24

do.body.24:                                       ; preds = %Fail
  %32 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp25, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %34, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %37(%struct._object* %38)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.34, %for.end.23, %if.then
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define void @_PyGILState_Init(%struct._is* %i, %struct._ts* %t) #0 {
entry:
  %i.addr = alloca %struct._is*, align 8
  %t.addr = alloca %struct._ts*, align 8
  store %struct._is* %i, %struct._is** %i.addr, align 8
  store %struct._ts* %t, %struct._ts** %t.addr, align 8
  %call = call i32 @PyThread_create_key()
  store i32 %call, i32* @autoTLSkey, align 4
  %0 = load i32, i32* @autoTLSkey, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct._is*, %struct._is** %i.addr, align 8
  store %struct._is* %1, %struct._is** @autoInterpreterState, align 8
  %2 = load %struct._ts*, %struct._ts** %t.addr, align 8
  call void @_PyGILState_NoteThreadState(%struct._ts* %2)
  ret void
}

declare i32 @PyThread_create_key() #1

; Function Attrs: nounwind uwtable
define void @_PyGILState_Fini() #0 {
entry:
  %0 = load i32, i32* @autoTLSkey, align 4
  call void @PyThread_delete_key(i32 %0)
  store %struct._is* null, %struct._is** @autoInterpreterState, align 8
  ret void
}

declare void @PyThread_delete_key(i32) #1

; Function Attrs: nounwind uwtable
define void @_PyGILState_Reinit() #0 {
entry:
  %tstate = alloca %struct._ts*, align 8
  %call = call %struct._ts* @PyGILState_GetThisThreadState()
  store %struct._ts* %call, %struct._ts** %tstate, align 8
  %0 = load i32, i32* @autoTLSkey, align 4
  call void @PyThread_delete_key(i32 %0)
  %call1 = call i32 @PyThread_create_key()
  store i32 %call1, i32* @autoTLSkey, align 4
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct._ts*, %struct._ts** %tstate, align 8
  %tobool = icmp ne %struct._ts* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @autoTLSkey, align 4
  %3 = load %struct._ts*, %struct._ts** %tstate, align 8
  %4 = bitcast %struct._ts* %3 to i8*
  %call2 = call i32 @PyThread_set_key_value(i32 %2, i8* %4)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0)) #4
  unreachable

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._ts* @PyGILState_GetThisThreadState() #0 {
entry:
  %retval = alloca %struct._ts*, align 8
  %0 = load %struct._is*, %struct._is** @autoInterpreterState, align 8
  %cmp = icmp eq %struct._is* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._ts* null, %struct._ts** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @autoTLSkey, align 4
  %call = call i8* @PyThread_get_key_value(i32 %1)
  %2 = bitcast i8* %call to %struct._ts*
  store %struct._ts* %2, %struct._ts** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._ts*, %struct._ts** %retval
  ret %struct._ts* %3
}

declare i32 @PyThread_set_key_value(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyGILState_Check() #0 {
entry:
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %tobool = icmp ne %struct._ts* %11, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.epilog.3
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  %call = call %struct._ts* @PyGILState_GetThisThreadState()
  %cmp = icmp eq %struct._ts* %12, %call
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog.3
  %13 = phi i1 [ false, %sw.epilog.3 ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @PyGILState_Ensure() #0 {
entry:
  %current = alloca i32, align 4
  %tcur = alloca %struct._ts*, align 8
  %0 = load i32, i32* @autoTLSkey, align 4
  %call = call i8* @PyThread_get_key_value(i32 %0)
  %1 = bitcast i8* %call to %struct._ts*
  store %struct._ts* %1, %struct._ts** %tcur, align 8
  %2 = load %struct._ts*, %struct._ts** %tcur, align 8
  %cmp = icmp eq %struct._ts* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @PyEval_InitThreads()
  %3 = load %struct._is*, %struct._is** @autoInterpreterState, align 8
  %call1 = call %struct._ts* @PyThreadState_New(%struct._is* %3)
  store %struct._ts* %call1, %struct._ts** %tcur, align 8
  %4 = load %struct._ts*, %struct._ts** %tcur, align 8
  %cmp2 = icmp eq %struct._ts* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load %struct._ts*, %struct._ts** %tcur, align 8
  %gilstate_counter = getelementptr inbounds %struct._ts, %struct._ts* %5, i32 0, i32 20
  store i32 0, i32* %gilstate_counter, align 4
  store i32 0, i32* %current, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %6 = load %struct._ts*, %struct._ts** %tcur, align 8
  %call4 = call i32 @PyThreadState_IsCurrent(%struct._ts* %6)
  store i32 %call4, i32* %current, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %7 = load i32, i32* %current, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %8 = load %struct._ts*, %struct._ts** %tcur, align 8
  call void @PyEval_RestoreThread(%struct._ts* %8)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %9 = load %struct._ts*, %struct._ts** %tcur, align 8
  %gilstate_counter9 = getelementptr inbounds %struct._ts, %struct._ts* %9, i32 0, i32 20
  %10 = load i32, i32* %gilstate_counter9, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %gilstate_counter9, align 4
  %11 = load i32, i32* %current, align 4
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i32 0, i32 1
  ret i32 %cond
}

declare void @PyEval_InitThreads() #1

; Function Attrs: nounwind uwtable
define internal i32 @PyThreadState_IsCurrent(%struct._ts* %tstate) #0 {
entry:
  %tstate.addr = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %1, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %3 = bitcast %struct._Py_atomic_address* %2 to i8*
  %4 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %3, i32 %4)
  %5 = load i32, i32* %order, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %6 = load i8**, i8*** %volatile_data, align 8
  %7 = load volatile i8*, i8** %6, align 8
  store i8* %7, i8** %result, align 8
  %8 = load i32, i32* %order, align 4
  switch i32 %8, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %9 = load i8*, i8** %result, align 8
  store i8* %9, i8** %tmp
  %10 = load i8*, i8** %tmp
  %11 = bitcast i8* %10 to %struct._ts*
  %cmp = icmp eq %struct._ts* %0, %11
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind uwtable
define void @PyGILState_Release(i32 %oldstate) #0 {
entry:
  %oldstate.addr = alloca i32, align 4
  %tcur = alloca %struct._ts*, align 8
  store i32 %oldstate, i32* %oldstate.addr, align 4
  %0 = load i32, i32* @autoTLSkey, align 4
  %call = call i8* @PyThread_get_key_value(i32 %0)
  %1 = bitcast i8* %call to %struct._ts*
  store %struct._ts* %1, %struct._ts** %tcur, align 8
  %2 = load %struct._ts*, %struct._ts** %tcur, align 8
  %cmp = icmp eq %struct._ts* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._ts*, %struct._ts** %tcur, align 8
  %call1 = call i32 @PyThreadState_IsCurrent(%struct._ts* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0)) #4
  unreachable

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._ts*, %struct._ts** %tcur, align 8
  %gilstate_counter = getelementptr inbounds %struct._ts, %struct._ts* %4, i32 0, i32 20
  %5 = load i32, i32* %gilstate_counter, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %gilstate_counter, align 4
  %6 = load %struct._ts*, %struct._ts** %tcur, align 8
  %gilstate_counter4 = getelementptr inbounds %struct._ts, %struct._ts* %6, i32 0, i32 20
  %7 = load i32, i32* %gilstate_counter4, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  %8 = load %struct._ts*, %struct._ts** %tcur, align 8
  call void @PyThreadState_Clear(%struct._ts* %8)
  call void @PyThreadState_DeleteCurrent()
  br label %if.end.11

if.else:                                          ; preds = %if.end.3
  %9 = load i32, i32* %oldstate.addr, align 4
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %call9 = call %struct._ts* @PyEval_SaveThread()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.6
  ret void
}

declare %struct._ts* @PyEval_SaveThread() #1

; Function Attrs: nounwind uwtable
define internal %struct._frame* @threadstate_getframe(%struct._ts* %self) #0 {
entry:
  %self.addr = alloca %struct._ts*, align 8
  store %struct._ts* %self, %struct._ts** %self.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %self.addr, align 8
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %0, i32 0, i32 3
  %1 = load %struct._frame*, %struct._frame** %frame, align 8
  ret %struct._frame* %1
}

declare i64 @PyThread_get_thread_ident() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139693}
!2 = !{i32 139533}
!3 = !{i32 289232}
!4 = !{i32 292491}
