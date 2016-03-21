; ModuleID = 'irs-onlybc/_tracemalloc.bc'
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
%struct.anon = type { i32, i32, i32 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_hashtable_t = type { i64, i64, %struct._Py_slist_t*, i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*, i8* (i8*)*, void (i8*)*, i64 (i8*)*, %struct._Py_hashtable_allocator_t }
%struct._Py_slist_t = type { %struct._Py_slist_item_s* }
%struct._Py_slist_item_s = type { %struct._Py_slist_item_s* }
%struct._Py_hashtable_entry_t = type { %struct._Py_slist_item_s, i8*, i64 }
%struct._Py_hashtable_allocator_t = type { i8* (i64)*, void (i8*)* }
%struct.anon.0 = type { %struct.PyMemAllocator, %struct.PyMemAllocator, %struct.PyMemAllocator }
%struct.PyMemAllocator = type { i8*, i8* (i8*, i64)*, i8* (i8*, i8*, i64)*, void (i8*, i8*)* }
%struct.traceback_t = type { i64, i32, [1 x %struct.frame_t] }
%struct.frame_t = type <{ %struct._object*, i32 }>
%struct.get_traces_t = type { %struct._Py_hashtable_t*, %struct._Py_hashtable_t*, %struct._object* }
%struct.trace_t = type { i64, %struct.traceback_t* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon.1, i32* }
%struct.anon.1 = type { i32 }

@module_def = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @module_doc, i32 0, i32 0), i64 0, %struct.PyMethodDef* getelementptr inbounds ([10 x %struct.PyMethodDef], [10 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"PYTHONTRACEMALLOC\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"PYTHONTRACEMALLOC: invalid number of frames\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"tracemalloc\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"-X tracemalloc=NFRAME: invalid number of frames\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"_tracemalloc\00", align 1
@module_doc = internal global [57 x i8] c"Debug module to trace memory blocks allocated by Python.\00", align 16
@module_methods = internal global [10 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @py_tracemalloc_is_tracing to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @tracemalloc_is_tracing_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @py_tracemalloc_clear_traces to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @tracemalloc_clear_traces_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_tracemalloc_get_traces, i32 4, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @tracemalloc_get_traces_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_tracemalloc_get_object_traceback, i32 8, i8* getelementptr inbounds ([242 x i8], [242 x i8]* @tracemalloc_get_object_traceback_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_tracemalloc_start, i32 1, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @tracemalloc_start_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @py_tracemalloc_stop to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @tracemalloc_stop_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @py_tracemalloc_get_traceback_limit to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @tracemalloc_get_traceback_limit_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @tracemalloc_get_tracemalloc_memory to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @tracemalloc_get_tracemalloc_memory_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @tracemalloc_get_traced_memory to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @tracemalloc_get_traced_memory_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"is_tracing\00", align 1
@tracemalloc_is_tracing_doc = internal global [106 x i8] c"is_tracing()->bool\0A\0ATrue if the tracemalloc module is tracing Python memory allocations,\0AFalse otherwise.\00", align 16
@.str.6 = private unnamed_addr constant [13 x i8] c"clear_traces\00", align 1
@tracemalloc_clear_traces_doc = internal global [67 x i8] c"clear_traces()\0A\0AClear traces of memory blocks allocated by Python.\00", align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"_get_traces\00", align 1
@tracemalloc_get_traces_doc = internal global [253 x i8] c"_get_traces() -> list\0A\0AGet traces of all memory blocks allocated by Python.\0AReturn a list of (size: int, traceback: tuple) tuples.\0Atraceback is a tuple of (filename: str, lineno: int) tuples.\0A\0AReturn an empty list if the tracemalloc module is disabled.\00", align 16
@.str.8 = private unnamed_addr constant [22 x i8] c"_get_object_traceback\00", align 1
@tracemalloc_get_object_traceback_doc = internal global [242 x i8] c"_get_object_traceback(obj)\0A\0AGet the traceback where the Python object obj was allocated.\0AReturn a tuple of (filename: str, lineno: int) tuples.\0A\0AReturn None if the tracemalloc module is disabled or did not\0Atrace the allocation of the object.\00", align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@tracemalloc_start_doc = internal global [148 x i8] c"start(nframe: int=1)\0A\0AStart tracing Python memory allocations. Set also the maximum number \0Aof frames stored in the traceback of a trace to nframe.\00", align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@tracemalloc_stop_doc = internal global [102 x i8] c"stop()\0A\0AStop tracing Python memory allocations and clear traces\0Aof memory blocks allocated by Python.\00", align 16
@.str.11 = private unnamed_addr constant [20 x i8] c"get_traceback_limit\00", align 1
@tracemalloc_get_traceback_limit_doc = internal global [200 x i8] c"get_traceback_limit() -> int\0A\0AGet the maximum number of frames stored in the traceback\0Aof a trace.\0A\0ABy default, a trace of an allocated memory block only stores\0Athe most recent frame: the limit is 1.\00", align 16
@.str.12 = private unnamed_addr constant [23 x i8] c"get_tracemalloc_memory\00", align 1
@tracemalloc_get_tracemalloc_memory_doc = internal global [134 x i8] c"get_tracemalloc_memory() -> int\0A\0AGet the memory usage in bytes of the tracemalloc module\0Aused internally to trace memory allocations.\00", align 16
@.str.13 = private unnamed_addr constant [18 x i8] c"get_traced_memory\00", align 1
@tracemalloc_get_traced_memory_doc = internal global [159 x i8] c"get_traced_memory() -> (int, int)\0A\0AGet the current size and peak size of memory blocks traced\0Aby the tracemalloc module as a tuple: (current: int, peak: int).\00", align 16
@tracemalloc_config = internal global %struct.anon { i32 0, i32 0, i32 1 }, align 4
@_Py_NoneStruct = external global %struct._object, align 8
@tracemalloc_reentrant_key = internal global i32 0, align 4
@_Py_TrueStruct = external global %struct._longobject, align 8
@tables_lock = internal global i8* null, align 8
@tracemalloc_traces = internal global %struct._Py_hashtable_t* null, align 8
@tracemalloc_traced_memory = internal global i64 0, align 8
@tracemalloc_peak_traced_memory = internal global i64 0, align 8
@tracemalloc_tracebacks = internal global %struct._Py_hashtable_t* null, align 8
@tracemalloc_filenames = internal global %struct._Py_hashtable_t* null, align 8
@allocators = internal global %struct.anon.0 zeroinitializer, align 8
@hashtable_alloc = internal global %struct._Py_hashtable_allocator_t { i8* (i64)* @malloc, void (i8*)* @free }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"|n:start\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"the number of frames must be in range [1; %i]\00", align 1
@tracemalloc_traceback = internal global %struct.traceback_t* null, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"NN\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [41 x i8] c"the tracemalloc module has been unloaded\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@.str.20 = private unnamed_addr constant [21 x i8] c"cannot allocate lock\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@unknown_filename = internal global %struct._object* null, align 8
@tracemalloc_empty_traceback = internal global %struct.traceback_t zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__tracemalloc() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !1048
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1048
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !459, metadata !1049), !dbg !1050
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @module_def, i32 1013), !dbg !1051
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1052, !tbaa !1053
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !1057, !tbaa !1053
  %cmp = icmp eq %struct._object* %1, null, !dbg !1059
  br i1 %cmp, label %if.then, label %if.end, !dbg !1060

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1061
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1061

if.end:                                           ; preds = %entry
  %call1 = call i32 @tracemalloc_init(), !dbg !1062
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1064
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1065

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1066
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1066

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !1067, !tbaa !1053
  store %struct._object* %2, %struct._object** %retval, !dbg !1068
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1068

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %3 = bitcast %struct._object** %m to i8*, !dbg !1069
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1069
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1069
  ret %struct._object* %4, !dbg !1069
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_init() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4, !dbg !1070, !tbaa !1072
  %cmp = icmp eq i32 %0, 2, !dbg !1075
  br i1 %cmp, label %if.then, label %if.end, !dbg !1076

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1077, !tbaa !1053
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0)), !dbg !1079
  store i32 -1, i32* %retval, !dbg !1080
  br label %return, !dbg !1080

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4, !dbg !1081, !tbaa !1072
  %cmp1 = icmp eq i32 %2, 1, !dbg !1083
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1084

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !1085
  br label %return, !dbg !1085

if.end.3:                                         ; preds = %if.end
  call void @PyMem_GetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1)), !dbg !1086
  %call = call i32 @PyThread_create_key(), !dbg !1087
  store i32 %call, i32* @tracemalloc_reentrant_key, align 4, !dbg !1088, !tbaa !1089
  %3 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1090, !tbaa !1089
  %cmp4 = icmp eq i32 %3, -1, !dbg !1092
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !1093

if.then.5:                                        ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1094, !tbaa !1053
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4), !dbg !1096
  store i32 -1, i32* %retval, !dbg !1097
  br label %return, !dbg !1097

if.end.7:                                         ; preds = %if.end.3
  %5 = load i8*, i8** @tables_lock, align 8, !dbg !1098, !tbaa !1053
  %cmp8 = icmp eq i8* %5, null, !dbg !1100
  br i1 %cmp8, label %if.then.9, label %if.end.14, !dbg !1101

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i8* @PyThread_allocate_lock(), !dbg !1102
  store i8* %call10, i8** @tables_lock, align 8, !dbg !1104, !tbaa !1053
  %6 = load i8*, i8** @tables_lock, align 8, !dbg !1105, !tbaa !1053
  %cmp11 = icmp eq i8* %6, null, !dbg !1107
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1108

if.then.12:                                       ; preds = %if.then.9
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1109, !tbaa !1053
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0)), !dbg !1111
  store i32 -1, i32* %retval, !dbg !1112
  br label %return, !dbg !1112

if.end.13:                                        ; preds = %if.then.9
  br label %if.end.14, !dbg !1113

if.end.14:                                        ; preds = %if.end.13, %if.end.7
  %call15 = call %struct._Py_hashtable_t* @hashtable_new(i64 0, i64 (i8*)* bitcast (i64 (%struct._object*)* @PyObject_Hash to i64 (i8*)*), i32 (i8*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_unicode), !dbg !1114
  store %struct._Py_hashtable_t* %call15, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1115, !tbaa !1053
  %call16 = call %struct._Py_hashtable_t* @hashtable_new(i64 0, i64 (i8*)* @hashtable_hash_traceback, i32 (i8*, %struct._Py_hashtable_entry_t*)* bitcast (i32 (%struct.traceback_t*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_traceback to i32 (i8*, %struct._Py_hashtable_entry_t*)*)), !dbg !1116
  store %struct._Py_hashtable_t* %call16, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1117, !tbaa !1053
  %call17 = call %struct._Py_hashtable_t* @hashtable_new(i64 16, i64 (i8*)* @_Py_hashtable_hash_ptr, i32 (i8*, %struct._Py_hashtable_entry_t*)* @_Py_hashtable_compare_direct), !dbg !1118
  store %struct._Py_hashtable_t* %call17, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1119, !tbaa !1053
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1120, !tbaa !1053
  %cmp18 = icmp eq %struct._Py_hashtable_t* %8, null, !dbg !1122
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false, !dbg !1123

lor.lhs.false:                                    ; preds = %if.end.14
  %9 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1124, !tbaa !1053
  %cmp19 = icmp eq %struct._Py_hashtable_t* %9, null, !dbg !1126
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20, !dbg !1127

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1128, !tbaa !1053
  %cmp21 = icmp eq %struct._Py_hashtable_t* %10, null, !dbg !1129
  br i1 %cmp21, label %if.then.22, label %if.end.24, !dbg !1130

if.then.22:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false, %if.end.14
  %call23 = call %struct._object* @PyErr_NoMemory(), !dbg !1131
  store i32 -1, i32* %retval, !dbg !1133
  br label %return, !dbg !1133

if.end.24:                                        ; preds = %lor.lhs.false.20
  %call25 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)), !dbg !1134
  store %struct._object* %call25, %struct._object** @unknown_filename, align 8, !dbg !1135, !tbaa !1053
  %11 = load %struct._object*, %struct._object** @unknown_filename, align 8, !dbg !1136, !tbaa !1053
  %cmp26 = icmp eq %struct._object* %11, null, !dbg !1138
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !1139

if.then.27:                                       ; preds = %if.end.24
  store i32 -1, i32* %retval, !dbg !1140
  br label %return, !dbg !1140

if.end.28:                                        ; preds = %if.end.24
  call void @PyUnicode_InternInPlace(%struct._object** @unknown_filename), !dbg !1141
  store i32 1, i32* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i32 0, i32 1), align 4, !dbg !1142, !tbaa !1143
  %12 = load %struct._object*, %struct._object** @unknown_filename, align 8, !dbg !1146, !tbaa !1053
  store %struct._object* %12, %struct._object** getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i32 0, i32 2, i64 0, i32 0), align 1, !dbg !1147, !tbaa !1148
  store i32 0, i32* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i32 0, i32 2, i64 0, i32 1), align 1, !dbg !1150, !tbaa !1151
  %call29 = call i64 @traceback_hash(%struct.traceback_t* @tracemalloc_empty_traceback), !dbg !1152
  store i64 %call29, i64* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i32 0, i32 0), align 8, !dbg !1153, !tbaa !1154
  call void @set_reentrant(i32 1), !dbg !1155
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4, !dbg !1156, !tbaa !1072
  store i32 0, i32* %retval, !dbg !1157
  br label %return, !dbg !1157

return:                                           ; preds = %if.end.28, %if.then.27, %if.then.22, %if.then.12, %if.then.5, %if.then.2, %if.then
  %13 = load i32, i32* %retval, !dbg !1158
  ret i32 %13, !dbg !1158
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @_PyTraceMalloc_Init() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca i8*, align 8
  %nframe = alloca i32, align 4
  %endptr = alloca i8*, align 8
  %value = alloca i64, align 8
  %xoptions = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %value19 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %0 = bitcast i8** %p to i8*, !dbg !1159
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1159
  call void @llvm.dbg.declare(metadata i8** %p, metadata !464, metadata !1049), !dbg !1160
  %1 = bitcast i32* %nframe to i8*, !dbg !1161
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1161
  call void @llvm.dbg.declare(metadata i32* %nframe, metadata !465, metadata !1049), !dbg !1162
  %2 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4, !dbg !1163, !tbaa !1089
  %tobool = icmp ne i32 %2, 0, !dbg !1163
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1163

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1164

cond.false:                                       ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #1, !dbg !1166
  br label %cond.end, !dbg !1163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ], !dbg !1163
  store i8* %cond, i8** %p, align 8, !dbg !1168, !tbaa !1053
  %tobool1 = icmp ne i8* %cond, null, !dbg !1168
  br i1 %tobool1, label %land.lhs.true, label %if.else, !dbg !1171

land.lhs.true:                                    ; preds = %cond.end
  %3 = load i8*, i8** %p, align 8, !dbg !1172, !tbaa !1053
  %4 = load i8, i8* %3, align 1, !dbg !1174, !tbaa !1175
  %conv = sext i8 %4 to i32, !dbg !1174
  %cmp = icmp ne i32 %conv, 0, !dbg !1176
  br i1 %cmp, label %if.then, label %if.else, !dbg !1177

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i8** %endptr to i8*, !dbg !1178
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1178
  call void @llvm.dbg.declare(metadata i8** %endptr, metadata !466, metadata !1049), !dbg !1179
  %6 = load i8*, i8** %p, align 8, !dbg !1180, !tbaa !1053
  store i8* %6, i8** %endptr, align 8, !dbg !1179, !tbaa !1053
  %7 = bitcast i64* %value to i8*, !dbg !1181
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1181
  call void @llvm.dbg.declare(metadata i64* %value, metadata !469, metadata !1049), !dbg !1182
  %call3 = call i32* @__errno_location() #2, !dbg !1183
  store i32 0, i32* %call3, align 4, !dbg !1184, !tbaa !1089
  %8 = load i8*, i8** %p, align 8, !dbg !1185, !tbaa !1053
  %call4 = call i64 @strtol(i8* %8, i8** %endptr, i32 10) #1, !dbg !1186
  store i64 %call4, i64* %value, align 8, !dbg !1187, !tbaa !1188
  %9 = load i8*, i8** %endptr, align 8, !dbg !1189, !tbaa !1053
  %10 = load i8, i8* %9, align 1, !dbg !1191, !tbaa !1175
  %conv5 = sext i8 %10 to i32, !dbg !1191
  %cmp6 = icmp ne i32 %conv5, 0, !dbg !1192
  br i1 %cmp6, label %if.then.17, label %lor.lhs.false, !dbg !1193

lor.lhs.false:                                    ; preds = %if.then
  %11 = load i64, i64* %value, align 8, !dbg !1194, !tbaa !1188
  %cmp8 = icmp slt i64 %11, 1, !dbg !1196
  br i1 %cmp8, label %if.then.17, label %lor.lhs.false.10, !dbg !1197

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %12 = load i64, i64* %value, align 8, !dbg !1198, !tbaa !1188
  %cmp11 = icmp ugt i64 %12, 178956969, !dbg !1199
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false.13, !dbg !1200

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %call14 = call i32* @__errno_location() #2, !dbg !1201
  %13 = load i32, i32* %call14, align 4, !dbg !1202, !tbaa !1089
  %cmp15 = icmp eq i32 %13, 34, !dbg !1203
  br i1 %cmp15, label %if.then.17, label %if.end, !dbg !1204

if.then.17:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.10, %lor.lhs.false, %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !1205
  unreachable, !dbg !1205

if.end:                                           ; preds = %lor.lhs.false.13
  %14 = load i64, i64* %value, align 8, !dbg !1207, !tbaa !1188
  %conv18 = trunc i64 %14 to i32, !dbg !1208
  store i32 %conv18, i32* %nframe, align 4, !dbg !1209, !tbaa !1089
  %15 = bitcast i64* %value to i8*, !dbg !1210
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1210
  %16 = bitcast i8** %endptr to i8*, !dbg !1210
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !1210
  br label %if.end.64, !dbg !1211

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %17 = bitcast %struct._object** %xoptions to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !1212
  call void @llvm.dbg.declare(metadata %struct._object** %xoptions, metadata !470, metadata !1049), !dbg !1213
  %18 = bitcast %struct._object** %key to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !1212
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !472, metadata !1049), !dbg !1214
  %19 = bitcast %struct._object** %value19 to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !1212
  call void @llvm.dbg.declare(metadata %struct._object** %value19, metadata !473, metadata !1049), !dbg !1215
  %call20 = call %struct._object* @PySys_GetXOptions(), !dbg !1216
  store %struct._object* %call20, %struct._object** %xoptions, align 8, !dbg !1217, !tbaa !1053
  %20 = load %struct._object*, %struct._object** %xoptions, align 8, !dbg !1218, !tbaa !1053
  %cmp21 = icmp eq %struct._object* %20, null, !dbg !1220
  br i1 %cmp21, label %if.then.23, label %if.end.24, !dbg !1221

if.then.23:                                       ; preds = %if.else
  store i32 -1, i32* %retval, !dbg !1222
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1222

if.end.24:                                        ; preds = %if.else
  %call25 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !1223
  store %struct._object* %call25, %struct._object** %key, align 8, !dbg !1224, !tbaa !1053
  %21 = load %struct._object*, %struct._object** %key, align 8, !dbg !1225, !tbaa !1053
  %cmp26 = icmp eq %struct._object* %21, null, !dbg !1227
  br i1 %cmp26, label %if.then.28, label %if.end.29, !dbg !1228

if.then.28:                                       ; preds = %if.end.24
  store i32 -1, i32* %retval, !dbg !1229
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1229

if.end.29:                                        ; preds = %if.end.24
  %22 = load %struct._object*, %struct._object** %xoptions, align 8, !dbg !1230, !tbaa !1053
  %23 = load %struct._object*, %struct._object** %key, align 8, !dbg !1231, !tbaa !1053
  %call30 = call %struct._object* @PyDict_GetItemWithError(%struct._object* %22, %struct._object* %23), !dbg !1232
  store %struct._object* %call30, %struct._object** %value19, align 8, !dbg !1233, !tbaa !1053
  br label %do.body, !dbg !1234

do.body:                                          ; preds = %if.end.29
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1235
  call void @llvm.lifetime.start(i64 8, i8* %24) #1, !dbg !1235
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !474, metadata !1049), !dbg !1237
  %25 = load %struct._object*, %struct._object** %key, align 8, !dbg !1238, !tbaa !1053
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8, !dbg !1237, !tbaa !1053
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1239, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1241
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !1242, !tbaa !1243
  %dec = add i64 %27, -1, !dbg !1242
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1242, !tbaa !1243
  %cmp31 = icmp ne i64 %dec, 0, !dbg !1245
  br i1 %cmp31, label %if.then.33, label %if.else.34, !dbg !1246

if.then.33:                                       ; preds = %do.body
  br label %if.end.35, !dbg !1247

if.else.34:                                       ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1249, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1251
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1251, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !1253
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1253, !tbaa !1254
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1257, !tbaa !1053
  call void %30(%struct._object* %31), !dbg !1258
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1259
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !1259
  br label %do.cond, !dbg !1261

do.cond:                                          ; preds = %if.end.35
  br label %do.end, !dbg !1262

do.end:                                           ; preds = %do.cond
  %33 = load %struct._object*, %struct._object** %value19, align 8, !dbg !1264, !tbaa !1053
  %cmp36 = icmp eq %struct._object* %33, null, !dbg !1266
  br i1 %cmp36, label %if.then.38, label %if.end.43, !dbg !1267

if.then.38:                                       ; preds = %do.end
  %call39 = call %struct._object* @PyErr_Occurred(), !dbg !1268
  %tobool40 = icmp ne %struct._object* %call39, null, !dbg !1268
  br i1 %tobool40, label %if.then.41, label %if.end.42, !dbg !1271

if.then.41:                                       ; preds = %if.then.38
  store i32 -1, i32* %retval, !dbg !1272
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1272

if.end.42:                                        ; preds = %if.then.38
  store i32 0, i32* %retval, !dbg !1273
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1273

if.end.43:                                        ; preds = %do.end
  %34 = load %struct._object*, %struct._object** %value19, align 8, !dbg !1274, !tbaa !1053
  %call44 = call i32 @parse_sys_xoptions(%struct._object* %34), !dbg !1275
  store i32 %call44, i32* %nframe, align 4, !dbg !1276, !tbaa !1089
  br label %do.body.45, !dbg !1277

do.body.45:                                       ; preds = %if.end.43
  %35 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !1278
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp46, metadata !476, metadata !1049), !dbg !1280
  %36 = load %struct._object*, %struct._object** %value19, align 8, !dbg !1281, !tbaa !1053
  store %struct._object* %36, %struct._object** %_py_decref_tmp46, align 8, !dbg !1280, !tbaa !1053
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1282, !tbaa !1053
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !1284
  %38 = load i64, i64* %ob_refcnt47, align 8, !dbg !1285, !tbaa !1243
  %dec48 = add i64 %38, -1, !dbg !1285
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !1285, !tbaa !1243
  %cmp49 = icmp ne i64 %dec48, 0, !dbg !1286
  br i1 %cmp49, label %if.then.51, label %if.else.52, !dbg !1287

if.then.51:                                       ; preds = %do.body.45
  br label %if.end.55, !dbg !1288

if.else.52:                                       ; preds = %do.body.45
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1290, !tbaa !1053
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1292
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !1292, !tbaa !1252
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !1293
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !1293, !tbaa !1254
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1294, !tbaa !1053
  call void %41(%struct._object* %42), !dbg !1295
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  %43 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !1296
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !1296
  br label %do.cond.56, !dbg !1297

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57, !dbg !1298

do.end.57:                                        ; preds = %do.cond.56
  %44 = load i32, i32* %nframe, align 4, !dbg !1300, !tbaa !1089
  %cmp58 = icmp slt i32 %44, 0, !dbg !1302
  br i1 %cmp58, label %if.then.60, label %if.end.61, !dbg !1303

if.then.60:                                       ; preds = %do.end.57
  call void @Py_FatalError(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !1304
  unreachable, !dbg !1304

if.end.61:                                        ; preds = %do.end.57
  store i32 0, i32* %cleanup.dest.slot, !dbg !1306
  br label %cleanup, !dbg !1306

cleanup:                                          ; preds = %if.end.61, %if.end.42, %if.then.41, %if.then.28, %if.then.23
  %45 = bitcast %struct._object** %value19 to i8*, !dbg !1307
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !1307
  %46 = bitcast %struct._object** %key to i8*, !dbg !1307
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !1307
  %47 = bitcast %struct._object** %xoptions to i8*, !dbg !1307
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !1307
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.66 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.64

if.end.64:                                        ; preds = %cleanup.cont, %if.end
  %48 = load i32, i32* %nframe, align 4, !dbg !1308, !tbaa !1089
  %call65 = call i32 @tracemalloc_start(i32 %48), !dbg !1309
  store i32 %call65, i32* %retval, !dbg !1310
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66, !dbg !1310

cleanup.66:                                       ; preds = %if.end.64, %cleanup
  %49 = bitcast i32* %nframe to i8*, !dbg !1311
  call void @llvm.lifetime.end(i64 4, i8* %49) #1, !dbg !1311
  %50 = bitcast i8** %p to i8*, !dbg !1311
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !1311
  %51 = load i32, i32* %retval, !dbg !1311
  ret i32 %51, !dbg !1311
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

declare %struct._object* @PySys_GetXOptions() #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @PyDict_GetItemWithError(%struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_sys_xoptions(%struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._object*, align 8
  %valuelong = alloca %struct._object*, align 8
  %nframe = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !718, metadata !1049), !dbg !1312
  %0 = bitcast %struct._object** %valuelong to i8*, !dbg !1313
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1313
  call void @llvm.dbg.declare(metadata %struct._object** %valuelong, metadata !719, metadata !1049), !dbg !1314
  %1 = bitcast i64* %nframe to i8*, !dbg !1315
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1315
  call void @llvm.dbg.declare(metadata i64* %nframe, metadata !720, metadata !1049), !dbg !1316
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1317, !tbaa !1053
  %cmp = icmp eq %struct._object* %2, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !1319
  br i1 %cmp, label %if.then, label %if.end, !dbg !1320

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !1321
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1321

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1322, !tbaa !1053
  %call = call i64 @PyUnicode_GetLength(%struct._object* %3), !dbg !1324
  %cmp1 = icmp eq i64 %call, 0, !dbg !1325
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1326

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !1327
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1327

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1328, !tbaa !1053
  %call4 = call %struct._object* @PyLong_FromUnicodeObject(%struct._object* %4, i32 10), !dbg !1329
  store %struct._object* %call4, %struct._object** %valuelong, align 8, !dbg !1330, !tbaa !1053
  %5 = load %struct._object*, %struct._object** %valuelong, align 8, !dbg !1331, !tbaa !1053
  %cmp5 = icmp eq %struct._object* %5, null, !dbg !1333
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1334

if.then.6:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval, !dbg !1335
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1335

if.end.7:                                         ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %valuelong, align 8, !dbg !1336, !tbaa !1053
  %call8 = call i64 @PyLong_AsLong(%struct._object* %6), !dbg !1337
  store i64 %call8, i64* %nframe, align 8, !dbg !1338, !tbaa !1188
  br label %do.body, !dbg !1339

do.body:                                          ; preds = %if.end.7
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1340
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1340
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !721, metadata !1049), !dbg !1342
  %8 = load %struct._object*, %struct._object** %valuelong, align 8, !dbg !1343, !tbaa !1053
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !1342, !tbaa !1053
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1344, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1346
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1347, !tbaa !1243
  %dec = add i64 %10, -1, !dbg !1347
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1347, !tbaa !1243
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1348
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1349

if.then.10:                                       ; preds = %do.body
  br label %if.end.11, !dbg !1350

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1352, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1354
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1354, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !1355
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1355, !tbaa !1254
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1356, !tbaa !1053
  call void %13(%struct._object* %14), !dbg !1357
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1358
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1358
  br label %do.cond, !dbg !1360

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1361

do.end:                                           ; preds = %do.cond
  %16 = load i64, i64* %nframe, align 8, !dbg !1363, !tbaa !1188
  %cmp12 = icmp eq i64 %16, -1, !dbg !1365
  br i1 %cmp12, label %land.lhs.true, label %if.end.15, !dbg !1366

land.lhs.true:                                    ; preds = %do.end
  %call13 = call %struct._object* @PyErr_Occurred(), !dbg !1367
  %tobool = icmp ne %struct._object* %call13, null, !dbg !1367
  br i1 %tobool, label %if.then.14, label %if.end.15, !dbg !1369

if.then.14:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !1370
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1370

if.end.15:                                        ; preds = %land.lhs.true, %do.end
  %17 = load i64, i64* %nframe, align 8, !dbg !1371, !tbaa !1188
  %cmp16 = icmp slt i64 %17, 1, !dbg !1373
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false, !dbg !1374

lor.lhs.false:                                    ; preds = %if.end.15
  %18 = load i64, i64* %nframe, align 8, !dbg !1375, !tbaa !1188
  %cmp17 = icmp ugt i64 %18, 178956969, !dbg !1377
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !1378

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.15
  store i32 -1, i32* %retval, !dbg !1379
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1379

if.end.19:                                        ; preds = %lor.lhs.false
  %19 = load i64, i64* %nframe, align 8, !dbg !1380, !tbaa !1188
  %conv = trunc i64 %19 to i32, !dbg !1381
  store i32 %conv, i32* %retval, !dbg !1382
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1382

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then.14, %if.then.6, %if.then.2, %if.then
  %20 = bitcast i64* %nframe to i8*, !dbg !1383
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1383
  %21 = bitcast %struct._object** %valuelong to i8*, !dbg !1383
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !1383
  %22 = load i32, i32* %retval, !dbg !1383
  ret i32 %22, !dbg !1383
}

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_start(i32 %max_nframe) #0 {
entry:
  %retval = alloca i32, align 4
  %max_nframe.addr = alloca i32, align 4
  %alloc = alloca %struct.PyMemAllocator, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %max_nframe, i32* %max_nframe.addr, align 4, !tbaa !1089
  call void @llvm.dbg.declare(metadata i32* %max_nframe.addr, metadata !727, metadata !1049), !dbg !1384
  %0 = bitcast %struct.PyMemAllocator* %alloc to i8*, !dbg !1385
  call void @llvm.lifetime.start(i64 32, i8* %0) #1, !dbg !1385
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator* %alloc, metadata !728, metadata !1049), !dbg !1386
  %1 = bitcast i64* %size to i8*, !dbg !1387
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1387
  call void @llvm.dbg.declare(metadata i64* %size, metadata !729, metadata !1049), !dbg !1388
  %call = call i32 @tracemalloc_init(), !dbg !1389
  %cmp = icmp slt i32 %call, 0, !dbg !1391
  br i1 %cmp, label %if.then, label %if.end, !dbg !1392

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1393
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1393

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4, !dbg !1394, !tbaa !1396
  %tobool = icmp ne i32 %2, 0, !dbg !1397
  br i1 %tobool, label %if.then.1, label %if.end.2, !dbg !1398

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !1399
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1399

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %max_nframe.addr, align 4, !dbg !1401, !tbaa !1089
  store i32 %3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 2), align 4, !dbg !1402, !tbaa !1403
  %4 = load i32, i32* %max_nframe.addr, align 4, !dbg !1404, !tbaa !1089
  %sub = sub i32 %4, 1, !dbg !1405
  %conv = sext i32 %sub to i64, !dbg !1406
  %mul = mul i64 12, %conv, !dbg !1407
  %add = add i64 24, %mul, !dbg !1408
  store i64 %add, i64* %size, align 8, !dbg !1409, !tbaa !1188
  %5 = load i64, i64* %size, align 8, !dbg !1410, !tbaa !1188
  %call3 = call i8* @raw_malloc(i64 %5), !dbg !1411
  %6 = bitcast i8* %call3 to %struct.traceback_t*, !dbg !1411
  store %struct.traceback_t* %6, %struct.traceback_t** @tracemalloc_traceback, align 8, !dbg !1412, !tbaa !1053
  %7 = load %struct.traceback_t*, %struct.traceback_t** @tracemalloc_traceback, align 8, !dbg !1413, !tbaa !1053
  %cmp4 = icmp eq %struct.traceback_t* %7, null, !dbg !1415
  br i1 %cmp4, label %if.then.6, label %if.end.8, !dbg !1416

if.then.6:                                        ; preds = %if.end.2
  %call7 = call %struct._object* @PyErr_NoMemory(), !dbg !1417
  store i32 -1, i32* %retval, !dbg !1419
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1419

if.end.8:                                         ; preds = %if.end.2
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 1, !dbg !1420
  store i8* (i8*, i64)* @tracemalloc_raw_malloc, i8* (i8*, i64)** %malloc, align 8, !dbg !1421, !tbaa !1422
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 2, !dbg !1424
  store i8* (i8*, i8*, i64)* @tracemalloc_raw_realloc, i8* (i8*, i8*, i64)** %realloc, align 8, !dbg !1425, !tbaa !1426
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 3, !dbg !1427
  store void (i8*, i8*)* @tracemalloc_free, void (i8*, i8*)** %free, align 8, !dbg !1428, !tbaa !1429
  %ctx = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 0, !dbg !1430
  store i8* bitcast (%struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1) to i8*), i8** %ctx, align 8, !dbg !1431, !tbaa !1432
  call void @PyMem_GetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1)), !dbg !1433
  call void @PyMem_SetAllocator(i32 0, %struct.PyMemAllocator* %alloc), !dbg !1434
  %malloc9 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 1, !dbg !1435
  store i8* (i8*, i64)* @tracemalloc_malloc_gil, i8* (i8*, i64)** %malloc9, align 8, !dbg !1436, !tbaa !1422
  %realloc10 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 2, !dbg !1437
  store i8* (i8*, i8*, i64)* @tracemalloc_realloc_gil, i8* (i8*, i8*, i64)** %realloc10, align 8, !dbg !1438, !tbaa !1426
  %free11 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 3, !dbg !1439
  store void (i8*, i8*)* @tracemalloc_free, void (i8*, i8*)** %free11, align 8, !dbg !1440, !tbaa !1429
  %ctx12 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 0, !dbg !1441
  store i8* bitcast (%struct.anon.0* @allocators to i8*), i8** %ctx12, align 8, !dbg !1442, !tbaa !1432
  call void @PyMem_GetAllocator(i32 1, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 0)), !dbg !1443
  call void @PyMem_SetAllocator(i32 1, %struct.PyMemAllocator* %alloc), !dbg !1444
  %ctx13 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 0, !dbg !1445
  store i8* bitcast (%struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 2) to i8*), i8** %ctx13, align 8, !dbg !1446, !tbaa !1432
  call void @PyMem_GetAllocator(i32 2, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 2)), !dbg !1447
  call void @PyMem_SetAllocator(i32 2, %struct.PyMemAllocator* %alloc), !dbg !1448
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4, !dbg !1449, !tbaa !1396
  call void @set_reentrant(i32 0), !dbg !1450
  store i32 0, i32* %retval, !dbg !1451
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1451

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then.1, %if.then
  %8 = bitcast i64* %size to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1452
  %9 = bitcast %struct.PyMemAllocator* %alloc to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 32, i8* %9) #1, !dbg !1452
  %10 = load i32, i32* %retval, !dbg !1452
  ret i32 %10, !dbg !1452
}

; Function Attrs: nounwind uwtable
define void @_PyTraceMalloc_Fini() #0 {
entry:
  call void @tracemalloc_deinit(), !dbg !1453
  ret void, !dbg !1454
}

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_deinit() #0 {
entry:
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4, !dbg !1455, !tbaa !1072
  %cmp = icmp ne i32 %0, 1, !dbg !1457
  br i1 %cmp, label %if.then, label %if.end, !dbg !1458

if.then:                                          ; preds = %entry
  br label %do.end.12, !dbg !1459

if.end:                                           ; preds = %entry
  store i32 2, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4, !dbg !1460, !tbaa !1072
  call void @tracemalloc_stop(), !dbg !1461
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1462, !tbaa !1053
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %1), !dbg !1463
  %2 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1464, !tbaa !1053
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %2), !dbg !1465
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1466, !tbaa !1053
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %3), !dbg !1467
  %4 = load i8*, i8** @tables_lock, align 8, !dbg !1468, !tbaa !1053
  %cmp1 = icmp ne i8* %4, null, !dbg !1470
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1471

if.then.2:                                        ; preds = %if.end
  %5 = load i8*, i8** @tables_lock, align 8, !dbg !1472, !tbaa !1053
  call void @PyThread_free_lock(i8* %5), !dbg !1474
  store i8* null, i8** @tables_lock, align 8, !dbg !1475, !tbaa !1053
  br label %if.end.3, !dbg !1476

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1477, !tbaa !1089
  call void @PyThread_delete_key(i32 %6), !dbg !1478
  br label %do.body, !dbg !1479

do.body:                                          ; preds = %if.end.3
  %7 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1480
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1480
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !952, metadata !1049), !dbg !1482
  %8 = load %struct._object*, %struct._object** @unknown_filename, align 8, !dbg !1483, !tbaa !1053
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1482, !tbaa !1053
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1484, !tbaa !1053
  %cmp4 = icmp ne %struct._object* %9, null, !dbg !1485
  br i1 %cmp4, label %if.then.5, label %if.end.10, !dbg !1486

if.then.5:                                        ; preds = %do.body
  br label %do.body.6, !dbg !1487

do.body.6:                                        ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1489
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !1489
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !954, metadata !1049), !dbg !1491
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1492, !tbaa !1053
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !1491, !tbaa !1053
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1493, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !1495
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1496, !tbaa !1243
  %dec = add i64 %13, -1, !dbg !1496
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1496, !tbaa !1243
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1497
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1498

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9, !dbg !1499

if.else:                                          ; preds = %do.body.6
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1501, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1503
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1503, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !1504
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1504, !tbaa !1254
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1505, !tbaa !1053
  call void %16(%struct._object* %17), !dbg !1506
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1507
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !1507
  br label %do.cond, !dbg !1509

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1510

do.end:                                           ; preds = %do.cond
  br label %if.end.10, !dbg !1512

if.end.10:                                        ; preds = %do.end, %do.body
  %19 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1514
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1514
  br label %do.end.12, !dbg !1517

do.end.12:                                        ; preds = %if.then, %if.end.10
  ret void, !dbg !1518
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_is_tracing(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !484, metadata !1049), !dbg !1519
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4, !dbg !1520, !tbaa !1396
  %conv = sext i32 %0 to i64, !dbg !1521
  %call = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !1522
  ret %struct._object* %call, !dbg !1523
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_clear_traces(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !487, metadata !1049), !dbg !1524
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4, !dbg !1525, !tbaa !1396
  %tobool = icmp ne i32 %0, 0, !dbg !1527
  br i1 %tobool, label %if.end, label %if.then, !dbg !1528

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1529, !tbaa !1243
  %inc = add i64 %1, 1, !dbg !1529
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1529, !tbaa !1243
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1530
  br label %return, !dbg !1530

if.end:                                           ; preds = %entry
  call void @set_reentrant(i32 1), !dbg !1531
  call void @tracemalloc_clear_traces(), !dbg !1532
  call void @set_reentrant(i32 0), !dbg !1533
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1534, !tbaa !1243
  %inc1 = add i64 %2, 1, !dbg !1534
  store i64 %inc1, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1534, !tbaa !1243
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1535
  br label %return, !dbg !1535

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !1536
  ret %struct._object* %3, !dbg !1536
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_get_traces(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %get_traces = alloca %struct.get_traces_t, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !514, metadata !1049), !dbg !1537
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !515, metadata !1049), !dbg !1538
  %0 = bitcast %struct.get_traces_t* %get_traces to i8*, !dbg !1539
  call void @llvm.lifetime.start(i64 24, i8* %0) #1, !dbg !1539
  call void @llvm.dbg.declare(metadata %struct.get_traces_t* %get_traces, metadata !516, metadata !1049), !dbg !1540
  %1 = bitcast i32* %err to i8*, !dbg !1541
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1541
  call void @llvm.dbg.declare(metadata i32* %err, metadata !560, metadata !1049), !dbg !1542
  %traces = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0, !dbg !1543
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %traces, align 8, !dbg !1544, !tbaa !1545
  %tracebacks = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1, !dbg !1547
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %tracebacks, align 8, !dbg !1548, !tbaa !1549
  %call = call %struct._object* @PyList_New(i64 0), !dbg !1550
  %list = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2, !dbg !1551
  store %struct._object* %call, %struct._object** %list, align 8, !dbg !1552, !tbaa !1553
  %list1 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2, !dbg !1554
  %2 = load %struct._object*, %struct._object** %list1, align 8, !dbg !1554, !tbaa !1553
  %cmp = icmp eq %struct._object* %2, null, !dbg !1556
  br i1 %cmp, label %if.then, label %if.end, !dbg !1557

if.then:                                          ; preds = %entry
  br label %error, !dbg !1558

if.end:                                           ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4, !dbg !1559, !tbaa !1396
  %tobool = icmp ne i32 %3, 0, !dbg !1561
  br i1 %tobool, label %if.end.4, label %if.then.2, !dbg !1562

if.then.2:                                        ; preds = %if.end
  %list3 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2, !dbg !1563
  %4 = load %struct._object*, %struct._object** %list3, align 8, !dbg !1563, !tbaa !1553
  store %struct._object* %4, %struct._object** %retval, !dbg !1564
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1564

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._Py_hashtable_t* @hashtable_new(i64 8, i64 (i8*)* @_Py_hashtable_hash_ptr, i32 (i8*, %struct._Py_hashtable_entry_t*)* @_Py_hashtable_compare_direct), !dbg !1565
  %tracebacks6 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1, !dbg !1566
  store %struct._Py_hashtable_t* %call5, %struct._Py_hashtable_t** %tracebacks6, align 8, !dbg !1567, !tbaa !1549
  %tracebacks7 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1, !dbg !1568
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks7, align 8, !dbg !1568, !tbaa !1549
  %cmp8 = icmp eq %struct._Py_hashtable_t* %5, null, !dbg !1570
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !1571

if.then.9:                                        ; preds = %if.end.4
  %call10 = call %struct._object* @PyErr_NoMemory(), !dbg !1572
  br label %error, !dbg !1574

if.end.11:                                        ; preds = %if.end.4
  %6 = load i8*, i8** @tables_lock, align 8, !dbg !1575, !tbaa !1053
  %call12 = call i32 @PyThread_acquire_lock(i8* %6, i32 1), !dbg !1576
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1577, !tbaa !1053
  %call13 = call %struct._Py_hashtable_t* @_Py_hashtable_copy(%struct._Py_hashtable_t* %7), !dbg !1578
  %traces14 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0, !dbg !1579
  store %struct._Py_hashtable_t* %call13, %struct._Py_hashtable_t** %traces14, align 8, !dbg !1580, !tbaa !1545
  %8 = load i8*, i8** @tables_lock, align 8, !dbg !1581, !tbaa !1053
  call void @PyThread_release_lock(i8* %8), !dbg !1582
  %traces15 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0, !dbg !1583
  %9 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %traces15, align 8, !dbg !1583, !tbaa !1545
  %cmp16 = icmp eq %struct._Py_hashtable_t* %9, null, !dbg !1585
  br i1 %cmp16, label %if.then.17, label %if.end.19, !dbg !1586

if.then.17:                                       ; preds = %if.end.11
  %call18 = call %struct._object* @PyErr_NoMemory(), !dbg !1587
  br label %error, !dbg !1589

if.end.19:                                        ; preds = %if.end.11
  call void @set_reentrant(i32 1), !dbg !1590
  %traces20 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0, !dbg !1591
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %traces20, align 8, !dbg !1591, !tbaa !1545
  %11 = bitcast %struct.get_traces_t* %get_traces to i8*, !dbg !1592
  %call21 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %10, i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_get_traces_fill, i8* %11), !dbg !1593
  store i32 %call21, i32* %err, align 4, !dbg !1594, !tbaa !1089
  call void @set_reentrant(i32 0), !dbg !1595
  %12 = load i32, i32* %err, align 4, !dbg !1596, !tbaa !1089
  %tobool22 = icmp ne i32 %12, 0, !dbg !1596
  br i1 %tobool22, label %if.then.23, label %if.end.24, !dbg !1598

if.then.23:                                       ; preds = %if.end.19
  br label %error, !dbg !1599

if.end.24:                                        ; preds = %if.end.19
  br label %finally, !dbg !1600

error:                                            ; preds = %if.then.23, %if.then.17, %if.then.9, %if.then
  br label %do.body, !dbg !1601

do.body:                                          ; preds = %error
  %13 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1602
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !1602
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !561, metadata !1049), !dbg !1604
  %list25 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2, !dbg !1605
  %14 = load %struct._object*, %struct._object** %list25, align 8, !dbg !1605, !tbaa !1553
  store %struct._object* %14, %struct._object** %_py_tmp, align 8, !dbg !1604, !tbaa !1053
  %15 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1606, !tbaa !1053
  %cmp26 = icmp ne %struct._object* %15, null, !dbg !1607
  br i1 %cmp26, label %if.then.27, label %if.end.33, !dbg !1608

if.then.27:                                       ; preds = %do.body
  %list28 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2, !dbg !1609
  store %struct._object* null, %struct._object** %list28, align 8, !dbg !1611, !tbaa !1553
  br label %do.body.29, !dbg !1612

do.body.29:                                       ; preds = %if.then.27
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1613
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !1613
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !563, metadata !1049), !dbg !1615
  %17 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1616, !tbaa !1053
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !1615, !tbaa !1053
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1617, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1619
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !1620, !tbaa !1243
  %dec = add i64 %19, -1, !dbg !1620
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1620, !tbaa !1243
  %cmp30 = icmp ne i64 %dec, 0, !dbg !1621
  br i1 %cmp30, label %if.then.31, label %if.else, !dbg !1622

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.32, !dbg !1623

if.else:                                          ; preds = %do.body.29
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1625, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !1627
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1627, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !1628
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1628, !tbaa !1254
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1629, !tbaa !1053
  call void %22(%struct._object* %23), !dbg !1630
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.31
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1631
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !1631
  br label %do.cond, !dbg !1633

do.cond:                                          ; preds = %if.end.32
  br label %do.end, !dbg !1634

do.end:                                           ; preds = %do.cond
  br label %if.end.33, !dbg !1636

if.end.33:                                        ; preds = %do.end, %do.body
  %25 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1638
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !1638
  br label %do.cond.34, !dbg !1641

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !1642

do.end.35:                                        ; preds = %do.cond.34
  br label %finally, !dbg !1644

finally:                                          ; preds = %do.end.35, %if.end.24
  %tracebacks36 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1, !dbg !1646
  %26 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks36, align 8, !dbg !1646, !tbaa !1549
  %cmp37 = icmp ne %struct._Py_hashtable_t* %26, null, !dbg !1648
  br i1 %cmp37, label %if.then.38, label %if.end.42, !dbg !1649

if.then.38:                                       ; preds = %finally
  %tracebacks39 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1, !dbg !1650
  %27 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks39, align 8, !dbg !1650, !tbaa !1549
  %call40 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %27, i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_pyobject_decref_cb, i8* null), !dbg !1652
  %tracebacks41 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1, !dbg !1653
  %28 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks41, align 8, !dbg !1653, !tbaa !1549
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %28), !dbg !1654
  br label %if.end.42, !dbg !1655

if.end.42:                                        ; preds = %if.then.38, %finally
  %traces43 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0, !dbg !1656
  %29 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %traces43, align 8, !dbg !1656, !tbaa !1545
  %cmp44 = icmp ne %struct._Py_hashtable_t* %29, null, !dbg !1658
  br i1 %cmp44, label %if.then.45, label %if.end.47, !dbg !1659

if.then.45:                                       ; preds = %if.end.42
  %traces46 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0, !dbg !1660
  %30 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %traces46, align 8, !dbg !1660, !tbaa !1545
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %30), !dbg !1661
  br label %if.end.47, !dbg !1661

if.end.47:                                        ; preds = %if.then.45, %if.end.42
  %list48 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2, !dbg !1662
  %31 = load %struct._object*, %struct._object** %list48, align 8, !dbg !1662, !tbaa !1553
  store %struct._object* %31, %struct._object** %retval, !dbg !1663
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1663

cleanup:                                          ; preds = %if.end.47, %if.then.2
  %32 = bitcast i32* %err to i8*, !dbg !1664
  call void @llvm.lifetime.end(i64 4, i8* %32) #1, !dbg !1664
  %33 = bitcast %struct.get_traces_t* %get_traces to i8*, !dbg !1664
  call void @llvm.lifetime.end(i64 24, i8* %33) #1, !dbg !1664
  %34 = load %struct._object*, %struct._object** %retval, !dbg !1664
  ret %struct._object* %34, !dbg !1664
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_get_object_traceback(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type = alloca %struct._typeobject*, align 8
  %ptr = alloca i8*, align 8
  %trace = alloca %struct.trace_t, align 8
  %found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !650, metadata !1049), !dbg !1665
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !651, metadata !1049), !dbg !1666
  %0 = bitcast %struct._typeobject** %type to i8*, !dbg !1667
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1667
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type, metadata !652, metadata !1049), !dbg !1668
  %1 = bitcast i8** %ptr to i8*, !dbg !1669
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1669
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !655, metadata !1049), !dbg !1670
  %2 = bitcast %struct.trace_t* %trace to i8*, !dbg !1671
  call void @llvm.lifetime.start(i64 16, i8* %2) #1, !dbg !1671
  call void @llvm.dbg.declare(metadata %struct.trace_t* %trace, metadata !656, metadata !1049), !dbg !1672
  %3 = bitcast i32* %found to i8*, !dbg !1673
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1673
  call void @llvm.dbg.declare(metadata i32* %found, metadata !657, metadata !1049), !dbg !1674
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4, !dbg !1675, !tbaa !1396
  %tobool = icmp ne i32 %4, 0, !dbg !1677
  br i1 %tobool, label %if.end, label %if.then, !dbg !1678

if.then:                                          ; preds = %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1679, !tbaa !1243
  %inc = add i64 %5, 1, !dbg !1679
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1679, !tbaa !1243
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1680
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1680

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1681, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1682
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1682, !tbaa !1252
  store %struct._typeobject* %7, %struct._typeobject** %type, align 8, !dbg !1683, !tbaa !1053
  %8 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1684, !tbaa !1053
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !1686
  %9 = load i64, i64* %tp_flags, align 8, !dbg !1686, !tbaa !1687
  %and = and i64 %9, 16384, !dbg !1688
  %cmp = icmp ne i64 %and, 0, !dbg !1689
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1690

if.then.1:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1691, !tbaa !1053
  %11 = bitcast %struct._object* %10 to i8*, !dbg !1692
  %add.ptr = getelementptr i8, i8* %11, i64 -24, !dbg !1693
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !1694, !tbaa !1053
  br label %if.end.2, !dbg !1695

if.else:                                          ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1696, !tbaa !1053
  %13 = bitcast %struct._object* %12 to i8*, !dbg !1697
  store i8* %13, i8** %ptr, align 8, !dbg !1698, !tbaa !1053
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %14 = load i8*, i8** @tables_lock, align 8, !dbg !1699, !tbaa !1053
  %call = call i32 @PyThread_acquire_lock(i8* %14, i32 1), !dbg !1700
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1701, !tbaa !1053
  %16 = load i8*, i8** %ptr, align 8, !dbg !1702, !tbaa !1053
  %17 = bitcast %struct.trace_t* %trace to i8*, !dbg !1703
  %call3 = call i32 @_Py_hashtable_get(%struct._Py_hashtable_t* %15, i8* %16, i8* %17, i64 16), !dbg !1704
  store i32 %call3, i32* %found, align 4, !dbg !1705, !tbaa !1089
  %18 = load i8*, i8** @tables_lock, align 8, !dbg !1706, !tbaa !1053
  call void @PyThread_release_lock(i8* %18), !dbg !1707
  %19 = load i32, i32* %found, align 4, !dbg !1708, !tbaa !1089
  %tobool4 = icmp ne i32 %19, 0, !dbg !1708
  br i1 %tobool4, label %if.end.7, label %if.then.5, !dbg !1710

if.then.5:                                        ; preds = %if.end.2
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1711, !tbaa !1243
  %inc6 = add i64 %20, 1, !dbg !1711
  store i64 %inc6, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1711, !tbaa !1243
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1712
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1712

if.end.7:                                         ; preds = %if.end.2
  %traceback = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i32 0, i32 1, !dbg !1713
  %21 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !1713, !tbaa !1714
  %call8 = call %struct._object* @traceback_to_pyobject(%struct.traceback_t* %21, %struct._Py_hashtable_t* null), !dbg !1716
  store %struct._object* %call8, %struct._object** %retval, !dbg !1717
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1717

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then
  %22 = bitcast i32* %found to i8*, !dbg !1718
  call void @llvm.lifetime.end(i64 4, i8* %22) #1, !dbg !1718
  %23 = bitcast %struct.trace_t* %trace to i8*, !dbg !1718
  call void @llvm.lifetime.end(i64 16, i8* %23) #1, !dbg !1718
  %24 = bitcast i8** %ptr to i8*, !dbg !1718
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !1718
  %25 = bitcast %struct._typeobject** %type to i8*, !dbg !1718
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !1718
  %26 = load %struct._object*, %struct._object** %retval, !dbg !1718
  ret %struct._object* %26, !dbg !1718
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_start(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %nframe = alloca i64, align 8
  %nframe_int = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !660, metadata !1049), !dbg !1719
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !661, metadata !1049), !dbg !1720
  %0 = bitcast i64* %nframe to i8*, !dbg !1721
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1721
  call void @llvm.dbg.declare(metadata i64* %nframe, metadata !662, metadata !1049), !dbg !1722
  store i64 1, i64* %nframe, align 8, !dbg !1722, !tbaa !1188
  %1 = bitcast i32* %nframe_int to i8*, !dbg !1723
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1723
  call void @llvm.dbg.declare(metadata i32* %nframe_int, metadata !663, metadata !1049), !dbg !1724
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1725, !tbaa !1053
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64* %nframe), !dbg !1727
  %tobool = icmp ne i32 %call, 0, !dbg !1727
  br i1 %tobool, label %if.end, label %if.then, !dbg !1728

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1729
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1729

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %nframe, align 8, !dbg !1730, !tbaa !1188
  %cmp = icmp slt i64 %3, 1, !dbg !1732
  br i1 %cmp, label %if.then.2, label %lor.lhs.false, !dbg !1733

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %nframe, align 8, !dbg !1734, !tbaa !1188
  %cmp1 = icmp ugt i64 %4, 178956969, !dbg !1736
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !1737

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1738, !tbaa !1053
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i32 178956969), !dbg !1740
  store %struct._object* null, %struct._object** %retval, !dbg !1741
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1741

if.end.4:                                         ; preds = %lor.lhs.false
  %6 = load i64, i64* %nframe, align 8, !dbg !1742, !tbaa !1188
  %conv = trunc i64 %6 to i32, !dbg !1743
  store i32 %conv, i32* %nframe_int, align 4, !dbg !1744, !tbaa !1089
  %7 = load i32, i32* %nframe_int, align 4, !dbg !1745, !tbaa !1089
  %call5 = call i32 @tracemalloc_start(i32 %7), !dbg !1747
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1748
  br i1 %cmp6, label %if.then.8, label %if.end.9, !dbg !1749

if.then.8:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !1750
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1750

if.end.9:                                         ; preds = %if.end.4
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1751, !tbaa !1243
  %inc = add i64 %8, 1, !dbg !1751
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1751, !tbaa !1243
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1752
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1752

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then.2, %if.then
  %9 = bitcast i32* %nframe_int to i8*, !dbg !1753
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !1753
  %10 = bitcast i64* %nframe to i8*, !dbg !1753
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1753
  %11 = load %struct._object*, %struct._object** %retval, !dbg !1753
  ret %struct._object* %11, !dbg !1753
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_stop(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !666, metadata !1049), !dbg !1754
  call void @tracemalloc_stop(), !dbg !1755
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1756, !tbaa !1243
  %inc = add i64 %0, 1, !dbg !1756
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1756, !tbaa !1243
  ret %struct._object* @_Py_NoneStruct, !dbg !1757
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_get_traceback_limit(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !670, metadata !1049), !dbg !1758
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 2), align 4, !dbg !1759, !tbaa !1403
  %conv = sext i32 %0 to i64, !dbg !1760
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !1761
  ret %struct._object* %call, !dbg !1762
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tracemalloc_get_tracemalloc_memory(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %size_obj = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !673, metadata !1049), !dbg !1763
  %0 = bitcast i64* %size to i8*, !dbg !1764
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1764
  call void @llvm.dbg.declare(metadata i64* %size, metadata !674, metadata !1049), !dbg !1765
  %1 = bitcast %struct._object** %size_obj to i8*, !dbg !1766
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1766
  call void @llvm.dbg.declare(metadata %struct._object** %size_obj, metadata !675, metadata !1049), !dbg !1767
  %2 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1768, !tbaa !1053
  %call = call i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %2), !dbg !1769
  store i64 %call, i64* %size, align 8, !dbg !1770, !tbaa !1188
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1771, !tbaa !1053
  %call1 = call i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %3), !dbg !1772
  %4 = load i64, i64* %size, align 8, !dbg !1773, !tbaa !1188
  %add = add i64 %4, %call1, !dbg !1773
  store i64 %add, i64* %size, align 8, !dbg !1773, !tbaa !1188
  %5 = load i8*, i8** @tables_lock, align 8, !dbg !1774, !tbaa !1053
  %call2 = call i32 @PyThread_acquire_lock(i8* %5, i32 1), !dbg !1775
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1776, !tbaa !1053
  %call3 = call i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %6), !dbg !1777
  %7 = load i64, i64* %size, align 8, !dbg !1778, !tbaa !1188
  %add4 = add i64 %7, %call3, !dbg !1778
  store i64 %add4, i64* %size, align 8, !dbg !1778, !tbaa !1188
  %8 = load i8*, i8** @tables_lock, align 8, !dbg !1779, !tbaa !1053
  call void @PyThread_release_lock(i8* %8), !dbg !1780
  %9 = load i64, i64* %size, align 8, !dbg !1781, !tbaa !1188
  %call5 = call %struct._object* @PyLong_FromSize_t(i64 %9), !dbg !1782
  store %struct._object* %call5, %struct._object** %size_obj, align 8, !dbg !1783, !tbaa !1053
  %10 = load %struct._object*, %struct._object** %size_obj, align 8, !dbg !1784, !tbaa !1053
  %call6 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %struct._object* %10), !dbg !1785
  %11 = bitcast %struct._object** %size_obj to i8*, !dbg !1786
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1786
  %12 = bitcast i64* %size to i8*, !dbg !1786
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !1786
  ret %struct._object* %call6, !dbg !1787
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tracemalloc_get_traced_memory(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %peak_size = alloca i64, align 8
  %size_obj = alloca %struct._object*, align 8
  %peak_size_obj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !678, metadata !1049), !dbg !1788
  %0 = bitcast i64* %size to i8*, !dbg !1789
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1789
  call void @llvm.dbg.declare(metadata i64* %size, metadata !679, metadata !1049), !dbg !1790
  %1 = bitcast i64* %peak_size to i8*, !dbg !1789
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1789
  call void @llvm.dbg.declare(metadata i64* %peak_size, metadata !680, metadata !1049), !dbg !1791
  %2 = bitcast %struct._object** %size_obj to i8*, !dbg !1792
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1792
  call void @llvm.dbg.declare(metadata %struct._object** %size_obj, metadata !681, metadata !1049), !dbg !1793
  %3 = bitcast %struct._object** %peak_size_obj to i8*, !dbg !1792
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1792
  call void @llvm.dbg.declare(metadata %struct._object** %peak_size_obj, metadata !682, metadata !1049), !dbg !1794
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4, !dbg !1795, !tbaa !1396
  %tobool = icmp ne i32 %4, 0, !dbg !1797
  br i1 %tobool, label %if.end, label %if.then, !dbg !1798

if.then:                                          ; preds = %entry
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0), !dbg !1799
  store %struct._object* %call, %struct._object** %retval, !dbg !1800
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1800

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** @tables_lock, align 8, !dbg !1801, !tbaa !1053
  %call1 = call i32 @PyThread_acquire_lock(i8* %5, i32 1), !dbg !1802
  %6 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !1803, !tbaa !1188
  store i64 %6, i64* %size, align 8, !dbg !1804, !tbaa !1188
  %7 = load i64, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !1805, !tbaa !1188
  store i64 %7, i64* %peak_size, align 8, !dbg !1806, !tbaa !1188
  %8 = load i8*, i8** @tables_lock, align 8, !dbg !1807, !tbaa !1053
  call void @PyThread_release_lock(i8* %8), !dbg !1808
  %9 = load i64, i64* %size, align 8, !dbg !1809, !tbaa !1188
  %call2 = call %struct._object* @PyLong_FromSize_t(i64 %9), !dbg !1810
  store %struct._object* %call2, %struct._object** %size_obj, align 8, !dbg !1811, !tbaa !1053
  %10 = load i64, i64* %peak_size, align 8, !dbg !1812, !tbaa !1188
  %call3 = call %struct._object* @PyLong_FromSize_t(i64 %10), !dbg !1813
  store %struct._object* %call3, %struct._object** %peak_size_obj, align 8, !dbg !1814, !tbaa !1053
  %11 = load %struct._object*, %struct._object** %size_obj, align 8, !dbg !1815, !tbaa !1053
  %12 = load %struct._object*, %struct._object** %peak_size_obj, align 8, !dbg !1816, !tbaa !1053
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct._object* %11, %struct._object* %12), !dbg !1817
  store %struct._object* %call4, %struct._object** %retval, !dbg !1818
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1818

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct._object** %peak_size_obj to i8*, !dbg !1819
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !1819
  %14 = bitcast %struct._object** %size_obj to i8*, !dbg !1819
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1819
  %15 = bitcast i64* %peak_size to i8*, !dbg !1819
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1819
  %16 = bitcast i64* %size to i8*, !dbg !1819
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !1819
  %17 = load %struct._object*, %struct._object** %retval, !dbg !1819
  ret %struct._object* %17, !dbg !1819
}

declare %struct._object* @PyBool_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define internal void @set_reentrant(i32 %reentrant) #0 {
entry:
  %reentrant.addr = alloca i32, align 4
  store i32 %reentrant, i32* %reentrant.addr, align 4, !tbaa !1089
  call void @llvm.dbg.declare(metadata i32* %reentrant.addr, metadata !492, metadata !1049), !dbg !1820
  %0 = load i32, i32* %reentrant.addr, align 4, !dbg !1821, !tbaa !1089
  %tobool = icmp ne i32 %0, 0, !dbg !1821
  br i1 %tobool, label %if.then, label %if.else, !dbg !1823

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1824, !tbaa !1089
  %call = call i32 @PyThread_set_key_value(i32 %1, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)), !dbg !1826
  br label %if.end, !dbg !1827

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1828, !tbaa !1089
  %call1 = call i32 @PyThread_set_key_value(i32 %2, i8* null), !dbg !1830
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1831
}

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_clear_traces() #0 {
entry:
  %0 = load i8*, i8** @tables_lock, align 8, !dbg !1832, !tbaa !1053
  %call = call i32 @PyThread_acquire_lock(i8* %0, i32 1), !dbg !1833
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1834, !tbaa !1053
  call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %1), !dbg !1835
  store i64 0, i64* @tracemalloc_traced_memory, align 8, !dbg !1836, !tbaa !1188
  store i64 0, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !1837, !tbaa !1188
  %2 = load i8*, i8** @tables_lock, align 8, !dbg !1838, !tbaa !1053
  call void @PyThread_release_lock(i8* %2), !dbg !1839
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1840, !tbaa !1053
  %call1 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %3, i32 (%struct._Py_hashtable_entry_t*, i8*)* @traceback_free_traceback, i8* null), !dbg !1841
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1842, !tbaa !1053
  call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %4), !dbg !1843
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1844, !tbaa !1053
  %call2 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %5, i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_clear_filename, i8* null), !dbg !1845
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1846, !tbaa !1053
  call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %6), !dbg !1847
  ret void, !dbg !1848
}

declare i32 @PyThread_set_key_value(i32, i8*) #3

declare i32 @PyThread_acquire_lock(i8*, i32) #3

declare void @_Py_hashtable_clear(%struct._Py_hashtable_t*) #3

declare void @PyThread_release_lock(i8*) #3

declare i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t*, i32 (%struct._Py_hashtable_entry_t*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @traceback_free_traceback(%struct._Py_hashtable_entry_t* %entry1, i8* %user_data) #0 {
entry:
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  %user_data.addr = alloca i8*, align 8
  %traceback = alloca %struct.traceback_t*, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry.addr, metadata !499, metadata !1049), !dbg !1849
  store i8* %user_data, i8** %user_data.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %user_data.addr, metadata !500, metadata !1049), !dbg !1850
  %0 = bitcast %struct.traceback_t** %traceback to i8*, !dbg !1851
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1851
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %traceback, metadata !501, metadata !1049), !dbg !1852
  %1 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !dbg !1853, !tbaa !1053
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %1, i32 0, i32 1, !dbg !1854
  %2 = load i8*, i8** %key, align 8, !dbg !1854, !tbaa !1855
  %3 = bitcast i8* %2 to %struct.traceback_t*, !dbg !1858
  store %struct.traceback_t* %3, %struct.traceback_t** %traceback, align 8, !dbg !1852, !tbaa !1053
  %4 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !1859, !tbaa !1053
  %5 = bitcast %struct.traceback_t* %4 to i8*, !dbg !1859
  call void @raw_free(i8* %5), !dbg !1860
  %6 = bitcast %struct.traceback_t** %traceback to i8*, !dbg !1861
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1861
  ret i32 0, !dbg !1862
}

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_clear_filename(%struct._Py_hashtable_entry_t* %entry1, i8* %user_data) #0 {
entry:
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  %user_data.addr = alloca i8*, align 8
  %filename = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry.addr, metadata !507, metadata !1049), !dbg !1863
  store i8* %user_data, i8** %user_data.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %user_data.addr, metadata !508, metadata !1049), !dbg !1864
  %0 = bitcast %struct._object** %filename to i8*, !dbg !1865
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1865
  call void @llvm.dbg.declare(metadata %struct._object** %filename, metadata !509, metadata !1049), !dbg !1866
  %1 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !dbg !1867, !tbaa !1053
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %1, i32 0, i32 1, !dbg !1868
  %2 = load i8*, i8** %key, align 8, !dbg !1868, !tbaa !1855
  %3 = bitcast i8* %2 to %struct._object*, !dbg !1869
  store %struct._object* %3, %struct._object** %filename, align 8, !dbg !1866, !tbaa !1053
  br label %do.body, !dbg !1870

do.body:                                          ; preds = %entry
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1871
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1871
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !510, metadata !1049), !dbg !1873
  %5 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1874, !tbaa !1053
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !1873, !tbaa !1053
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1875, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !1877
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1878, !tbaa !1243
  %dec = add i64 %7, -1, !dbg !1878
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1878, !tbaa !1243
  %cmp = icmp ne i64 %dec, 0, !dbg !1879
  br i1 %cmp, label %if.then, label %if.else, !dbg !1880

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !1881

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1883, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1885
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1885, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !1886
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1886, !tbaa !1254
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1887, !tbaa !1053
  call void %10(%struct._object* %11), !dbg !1888
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1889
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !1889
  br label %do.cond, !dbg !1891

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1892

do.end:                                           ; preds = %do.cond
  %13 = bitcast %struct._object** %filename to i8*, !dbg !1894
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !1894
  ret i32 0, !dbg !1895
}

; Function Attrs: nounwind uwtable
define internal void @raw_free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !504, metadata !1049), !dbg !1896
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1, i32 3), align 8, !dbg !1897, !tbaa !1898
  %1 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1, i32 0), align 8, !dbg !1900, !tbaa !1901
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !1902, !tbaa !1053
  call void %0(i8* %1, i8* %2), !dbg !1903
  ret void, !dbg !1904
}

declare %struct._object* @PyList_New(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._Py_hashtable_t* @hashtable_new(i64 %data_size, i64 (i8*)* %hash_func, i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func) #0 {
entry:
  %data_size.addr = alloca i64, align 8
  %hash_func.addr = alloca i64 (i8*)*, align 8
  %compare_func.addr = alloca i32 (i8*, %struct._Py_hashtable_entry_t*)*, align 8
  store i64 %data_size, i64* %data_size.addr, align 8, !tbaa !1188
  call void @llvm.dbg.declare(metadata i64* %data_size.addr, metadata !571, metadata !1049), !dbg !1905
  store i64 (i8*)* %hash_func, i64 (i8*)** %hash_func.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i64 (i8*)** %hash_func.addr, metadata !572, metadata !1049), !dbg !1906
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, metadata !573, metadata !1049), !dbg !1907
  %0 = load i64, i64* %data_size.addr, align 8, !dbg !1908, !tbaa !1188
  %1 = load i64 (i8*)*, i64 (i8*)** %hash_func.addr, align 8, !dbg !1909, !tbaa !1053
  %2 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8, !dbg !1910, !tbaa !1053
  %call = call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 %0, i64 0, i64 (i8*)* %1, i32 (i8*, %struct._Py_hashtable_entry_t*)* %2, i8* (i8*)* null, void (i8*)* null, i64 (i8*)* null, %struct._Py_hashtable_allocator_t* @hashtable_alloc), !dbg !1911
  ret %struct._Py_hashtable_t* %call, !dbg !1912
}

declare i64 @_Py_hashtable_hash_ptr(i8*) #3

declare i32 @_Py_hashtable_compare_direct(i8*, %struct._Py_hashtable_entry_t*) #3

declare %struct._object* @PyErr_NoMemory() #3

declare %struct._Py_hashtable_t* @_Py_hashtable_copy(%struct._Py_hashtable_t*) #3

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_get_traces_fill(%struct._Py_hashtable_entry_t* %entry1, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  %user_data.addr = alloca i8*, align 8
  %get_traces = alloca %struct.get_traces_t*, align 8
  %trace = alloca %struct.trace_t*, align 8
  %tracemalloc_obj = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry.addr, metadata !576, metadata !1049), !dbg !1913
  store i8* %user_data, i8** %user_data.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %user_data.addr, metadata !577, metadata !1049), !dbg !1914
  %0 = bitcast %struct.get_traces_t** %get_traces to i8*, !dbg !1915
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1915
  call void @llvm.dbg.declare(metadata %struct.get_traces_t** %get_traces, metadata !578, metadata !1049), !dbg !1916
  %1 = load i8*, i8** %user_data.addr, align 8, !dbg !1917, !tbaa !1053
  %2 = bitcast i8* %1 to %struct.get_traces_t*, !dbg !1917
  store %struct.get_traces_t* %2, %struct.get_traces_t** %get_traces, align 8, !dbg !1916, !tbaa !1053
  %3 = bitcast %struct.trace_t** %trace to i8*, !dbg !1918
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1918
  call void @llvm.dbg.declare(metadata %struct.trace_t** %trace, metadata !580, metadata !1049), !dbg !1919
  %4 = bitcast %struct._object** %tracemalloc_obj to i8*, !dbg !1920
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1920
  call void @llvm.dbg.declare(metadata %struct._object** %tracemalloc_obj, metadata !581, metadata !1049), !dbg !1921
  %5 = bitcast i32* %res to i8*, !dbg !1922
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !1922
  call void @llvm.dbg.declare(metadata i32* %res, metadata !582, metadata !1049), !dbg !1923
  %6 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !dbg !1924, !tbaa !1053
  %7 = bitcast %struct._Py_hashtable_entry_t* %6 to i8*, !dbg !1925
  %add.ptr = getelementptr i8, i8* %7, i64 24, !dbg !1926
  %8 = bitcast i8* %add.ptr to %struct.trace_t*, !dbg !1927
  store %struct.trace_t* %8, %struct.trace_t** %trace, align 8, !dbg !1928, !tbaa !1053
  %9 = load %struct.trace_t*, %struct.trace_t** %trace, align 8, !dbg !1929, !tbaa !1053
  %10 = load %struct.get_traces_t*, %struct.get_traces_t** %get_traces, align 8, !dbg !1930, !tbaa !1053
  %tracebacks = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %10, i32 0, i32 1, !dbg !1931
  %11 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks, align 8, !dbg !1931, !tbaa !1549
  %call = call %struct._object* @trace_to_pyobject(%struct.trace_t* %9, %struct._Py_hashtable_t* %11), !dbg !1932
  store %struct._object* %call, %struct._object** %tracemalloc_obj, align 8, !dbg !1933, !tbaa !1053
  %12 = load %struct._object*, %struct._object** %tracemalloc_obj, align 8, !dbg !1934, !tbaa !1053
  %cmp = icmp eq %struct._object* %12, null, !dbg !1936
  br i1 %cmp, label %if.then, label %if.end, !dbg !1937

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !1938
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1938

if.end:                                           ; preds = %entry
  %13 = load %struct.get_traces_t*, %struct.get_traces_t** %get_traces, align 8, !dbg !1939, !tbaa !1053
  %list = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %13, i32 0, i32 2, !dbg !1940
  %14 = load %struct._object*, %struct._object** %list, align 8, !dbg !1940, !tbaa !1553
  %15 = load %struct._object*, %struct._object** %tracemalloc_obj, align 8, !dbg !1941, !tbaa !1053
  %call2 = call i32 @PyList_Append(%struct._object* %14, %struct._object* %15), !dbg !1942
  store i32 %call2, i32* %res, align 4, !dbg !1943, !tbaa !1089
  br label %do.body, !dbg !1944

do.body:                                          ; preds = %if.end
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1945
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !1945
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !583, metadata !1049), !dbg !1947
  %17 = load %struct._object*, %struct._object** %tracemalloc_obj, align 8, !dbg !1948, !tbaa !1053
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !1947, !tbaa !1053
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1949, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1951
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !1952, !tbaa !1243
  %dec = add i64 %19, -1, !dbg !1952
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1952, !tbaa !1243
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1953
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1954

if.then.4:                                        ; preds = %do.body
  br label %if.end.5, !dbg !1955

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1957, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !1959
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1959, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !1960
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1960, !tbaa !1254
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1961, !tbaa !1053
  call void %22(%struct._object* %23), !dbg !1962
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1963
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !1963
  br label %do.cond, !dbg !1965

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !1966

do.end:                                           ; preds = %do.cond
  %25 = load i32, i32* %res, align 4, !dbg !1968, !tbaa !1089
  %cmp6 = icmp slt i32 %25, 0, !dbg !1970
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1971

if.then.7:                                        ; preds = %do.end
  store i32 1, i32* %retval, !dbg !1972
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1972

if.end.8:                                         ; preds = %do.end
  store i32 0, i32* %retval, !dbg !1973
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1973

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %26 = bitcast i32* %res to i8*, !dbg !1974
  call void @llvm.lifetime.end(i64 4, i8* %26) #1, !dbg !1974
  %27 = bitcast %struct._object** %tracemalloc_obj to i8*, !dbg !1974
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !1974
  %28 = bitcast %struct.trace_t** %trace to i8*, !dbg !1974
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !1974
  %29 = bitcast %struct.get_traces_t** %get_traces to i8*, !dbg !1974
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !1974
  %30 = load i32, i32* %retval, !dbg !1974
  ret i32 %30, !dbg !1974
}

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_pyobject_decref_cb(%struct._Py_hashtable_entry_t* %entry1, i8* %user_data) #0 {
entry:
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  %user_data.addr = alloca i8*, align 8
  %obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry.addr, metadata !643, metadata !1049), !dbg !1975
  store i8* %user_data, i8** %user_data.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %user_data.addr, metadata !644, metadata !1049), !dbg !1976
  %0 = bitcast %struct._object** %obj to i8*, !dbg !1977
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1977
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !645, metadata !1049), !dbg !1978
  %1 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !dbg !1979, !tbaa !1053
  %2 = bitcast %struct._Py_hashtable_entry_t* %1 to i8*, !dbg !1980
  %add.ptr = getelementptr i8, i8* %2, i64 24, !dbg !1981
  %3 = bitcast i8* %add.ptr to i8**, !dbg !1982
  %4 = load i8*, i8** %3, align 8, !dbg !1983, !tbaa !1053
  %5 = bitcast i8* %4 to %struct._object*, !dbg !1984
  store %struct._object* %5, %struct._object** %obj, align 8, !dbg !1978, !tbaa !1053
  br label %do.body, !dbg !1985

do.body:                                          ; preds = %entry
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1986
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1986
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !646, metadata !1049), !dbg !1988
  %7 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1989, !tbaa !1053
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1988, !tbaa !1053
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1990, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1992
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1993, !tbaa !1243
  %dec = add i64 %9, -1, !dbg !1993
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1993, !tbaa !1243
  %cmp = icmp ne i64 %dec, 0, !dbg !1994
  br i1 %cmp, label %if.then, label %if.else, !dbg !1995

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !1996

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1998, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2000
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2000, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !2001
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2001, !tbaa !1254
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2002, !tbaa !1053
  call void %12(%struct._object* %13), !dbg !2003
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2004
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !2004
  br label %do.cond, !dbg !2006

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2007

do.end:                                           ; preds = %do.cond
  %15 = bitcast %struct._object** %obj to i8*, !dbg !2009
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2009
  ret i32 0, !dbg !2010
}

declare void @_Py_hashtable_destroy(%struct._Py_hashtable_t*) #3

declare %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64, i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*, i8* (i8*)*, void (i8*)*, i64 (i8*)*, %struct._Py_hashtable_allocator_t*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @trace_to_pyobject(%struct.trace_t* %trace, %struct._Py_hashtable_t* %intern_tracebacks) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %trace.addr = alloca %struct.trace_t*, align 8
  %intern_tracebacks.addr = alloca %struct._Py_hashtable_t*, align 8
  %trace_obj = alloca %struct._object*, align 8
  %size = alloca %struct._object*, align 8
  %traceback = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct.trace_t* %trace, %struct.trace_t** %trace.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct.trace_t** %trace.addr, metadata !589, metadata !1049), !dbg !2011
  store %struct._Py_hashtable_t* %intern_tracebacks, %struct._Py_hashtable_t** %intern_tracebacks.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %intern_tracebacks.addr, metadata !590, metadata !1049), !dbg !2012
  %0 = bitcast %struct._object** %trace_obj to i8*, !dbg !2013
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2013
  call void @llvm.dbg.declare(metadata %struct._object** %trace_obj, metadata !591, metadata !1049), !dbg !2014
  store %struct._object* null, %struct._object** %trace_obj, align 8, !dbg !2014, !tbaa !1053
  %1 = bitcast %struct._object** %size to i8*, !dbg !2015
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2015
  call void @llvm.dbg.declare(metadata %struct._object** %size, metadata !592, metadata !1049), !dbg !2016
  %2 = bitcast %struct._object** %traceback to i8*, !dbg !2015
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2015
  call void @llvm.dbg.declare(metadata %struct._object** %traceback, metadata !593, metadata !1049), !dbg !2017
  %call = call %struct._object* @PyTuple_New(i64 2), !dbg !2018
  store %struct._object* %call, %struct._object** %trace_obj, align 8, !dbg !2019, !tbaa !1053
  %3 = load %struct._object*, %struct._object** %trace_obj, align 8, !dbg !2020, !tbaa !1053
  %cmp = icmp eq %struct._object* %3, null, !dbg !2022
  br i1 %cmp, label %if.then, label %if.end, !dbg !2023

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2024
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2024

if.end:                                           ; preds = %entry
  %4 = load %struct.trace_t*, %struct.trace_t** %trace.addr, align 8, !dbg !2025, !tbaa !1053
  %size1 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %4, i32 0, i32 0, !dbg !2026
  %5 = load i64, i64* %size1, align 8, !dbg !2026, !tbaa !2027
  %call2 = call %struct._object* @PyLong_FromSize_t(i64 %5), !dbg !2028
  store %struct._object* %call2, %struct._object** %size, align 8, !dbg !2029, !tbaa !1053
  %6 = load %struct._object*, %struct._object** %size, align 8, !dbg !2030, !tbaa !1053
  %cmp3 = icmp eq %struct._object* %6, null, !dbg !2031
  br i1 %cmp3, label %if.then.4, label %if.end.8, !dbg !2032

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !2033

do.body:                                          ; preds = %if.then.4
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2034
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2034
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !594, metadata !1049), !dbg !2036
  %8 = load %struct._object*, %struct._object** %trace_obj, align 8, !dbg !2037, !tbaa !1053
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !2036, !tbaa !1053
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2038, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !2040
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !2041, !tbaa !1243
  %dec = add i64 %10, -1, !dbg !2041
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2041, !tbaa !1243
  %cmp5 = icmp ne i64 %dec, 0, !dbg !2042
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !2043

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !2044

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2046, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2048
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2048, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !2049
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2049, !tbaa !1254
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2050, !tbaa !1053
  call void %13(%struct._object* %14), !dbg !2051
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2052
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2052
  br label %do.cond, !dbg !2054

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !2055

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2057
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2057

if.end.8:                                         ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %size, align 8, !dbg !2058, !tbaa !1053
  %17 = load %struct._object*, %struct._object** %trace_obj, align 8, !dbg !2059, !tbaa !1053
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*, !dbg !2060
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1, !dbg !2061
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2062
  store %struct._object* %16, %struct._object** %arrayidx, align 8, !dbg !2063, !tbaa !1053
  %19 = load %struct.trace_t*, %struct.trace_t** %trace.addr, align 8, !dbg !2064, !tbaa !1053
  %traceback9 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %19, i32 0, i32 1, !dbg !2065
  %20 = load %struct.traceback_t*, %struct.traceback_t** %traceback9, align 8, !dbg !2065, !tbaa !1714
  %21 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_tracebacks.addr, align 8, !dbg !2066, !tbaa !1053
  %call10 = call %struct._object* @traceback_to_pyobject(%struct.traceback_t* %20, %struct._Py_hashtable_t* %21), !dbg !2067
  store %struct._object* %call10, %struct._object** %traceback, align 8, !dbg !2068, !tbaa !1053
  %22 = load %struct._object*, %struct._object** %traceback, align 8, !dbg !2069, !tbaa !1053
  %cmp11 = icmp eq %struct._object* %22, null, !dbg !2070
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !2071

if.then.12:                                       ; preds = %if.end.8
  br label %do.body.13, !dbg !2072

do.body.13:                                       ; preds = %if.then.12
  %23 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2073
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !2073
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !598, metadata !1049), !dbg !2075
  %24 = load %struct._object*, %struct._object** %trace_obj, align 8, !dbg !2076, !tbaa !1053
  store %struct._object* %24, %struct._object** %_py_decref_tmp14, align 8, !dbg !2075, !tbaa !1053
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2077, !tbaa !1053
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !2079
  %26 = load i64, i64* %ob_refcnt15, align 8, !dbg !2080, !tbaa !1243
  %dec16 = add i64 %26, -1, !dbg !2080
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !2080, !tbaa !1243
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !2081
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !2082

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !2083

if.else.19:                                       ; preds = %do.body.13
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2085, !tbaa !1053
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !2087
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !2087, !tbaa !1252
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !2088
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !2088, !tbaa !1254
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2089, !tbaa !1053
  call void %29(%struct._object* %30), !dbg !2090
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %31 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2091
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !2091
  br label %do.cond.23, !dbg !2093

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !2094

do.end.24:                                        ; preds = %do.cond.23
  store %struct._object* null, %struct._object** %retval, !dbg !2096
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2096

if.end.25:                                        ; preds = %if.end.8
  %32 = load %struct._object*, %struct._object** %traceback, align 8, !dbg !2097, !tbaa !1053
  %33 = load %struct._object*, %struct._object** %trace_obj, align 8, !dbg !2098, !tbaa !1053
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*, !dbg !2099
  %ob_item26 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1, !dbg !2100
  %arrayidx27 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item26, i32 0, i64 1, !dbg !2101
  store %struct._object* %32, %struct._object** %arrayidx27, align 8, !dbg !2102, !tbaa !1053
  %35 = load %struct._object*, %struct._object** %trace_obj, align 8, !dbg !2103, !tbaa !1053
  store %struct._object* %35, %struct._object** %retval, !dbg !2104
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2104

cleanup:                                          ; preds = %if.end.25, %do.end.24, %do.end, %if.then
  %36 = bitcast %struct._object** %traceback to i8*, !dbg !2105
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !2105
  %37 = bitcast %struct._object** %size to i8*, !dbg !2105
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !2105
  %38 = bitcast %struct._object** %trace_obj to i8*, !dbg !2105
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2105
  %39 = load %struct._object*, %struct._object** %retval, !dbg !2105
  ret %struct._object* %39, !dbg !2105
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyLong_FromSize_t(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @traceback_to_pyobject(%struct.traceback_t* %traceback, %struct._Py_hashtable_t* %intern_table) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %traceback.addr = alloca %struct.traceback_t*, align 8
  %intern_table.addr = alloca %struct._Py_hashtable_t*, align 8
  %i = alloca i32, align 4
  %frames = alloca %struct._object*, align 8
  %frame = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.traceback_t* %traceback, %struct.traceback_t** %traceback.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %traceback.addr, metadata !606, metadata !1049), !dbg !2106
  store %struct._Py_hashtable_t* %intern_table, %struct._Py_hashtable_t** %intern_table.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %intern_table.addr, metadata !607, metadata !1049), !dbg !2107
  %0 = bitcast i32* %i to i8*, !dbg !2108
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2108
  call void @llvm.dbg.declare(metadata i32* %i, metadata !608, metadata !1049), !dbg !2109
  %1 = bitcast %struct._object** %frames to i8*, !dbg !2110
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2110
  call void @llvm.dbg.declare(metadata %struct._object** %frames, metadata !609, metadata !1049), !dbg !2111
  %2 = bitcast %struct._object** %frame to i8*, !dbg !2110
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2110
  call void @llvm.dbg.declare(metadata %struct._object** %frame, metadata !610, metadata !1049), !dbg !2112
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_table.addr, align 8, !dbg !2113, !tbaa !1053
  %cmp = icmp ne %struct._Py_hashtable_t* %3, null, !dbg !2115
  br i1 %cmp, label %if.then, label %if.end.2, !dbg !2116

if.then:                                          ; preds = %entry
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_table.addr, align 8, !dbg !2117, !tbaa !1053
  %5 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2120, !tbaa !1053
  %6 = bitcast %struct.traceback_t* %5 to i8*, !dbg !2120
  %7 = bitcast %struct._object** %frames to i8*, !dbg !2121
  %call = call i32 @_Py_hashtable_get(%struct._Py_hashtable_t* %4, i8* %6, i8* %7, i64 8), !dbg !2122
  %tobool = icmp ne i32 %call, 0, !dbg !2122
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !2123

if.then.1:                                        ; preds = %if.then
  %8 = load %struct._object*, %struct._object** %frames, align 8, !dbg !2124, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2126
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2127, !tbaa !1243
  %inc = add i64 %9, 1, !dbg !2127
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2127, !tbaa !1243
  %10 = load %struct._object*, %struct._object** %frames, align 8, !dbg !2128, !tbaa !1053
  store %struct._object* %10, %struct._object** %retval, !dbg !2129
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2129

if.end:                                           ; preds = %if.then
  br label %if.end.2, !dbg !2130

if.end.2:                                         ; preds = %if.end, %entry
  %11 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2131, !tbaa !1053
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %11, i32 0, i32 1, !dbg !2132
  %12 = load i32, i32* %nframe, align 4, !dbg !2132, !tbaa !1143
  %conv = sext i32 %12 to i64, !dbg !2131
  %call3 = call %struct._object* @PyTuple_New(i64 %conv), !dbg !2133
  store %struct._object* %call3, %struct._object** %frames, align 8, !dbg !2134, !tbaa !1053
  %13 = load %struct._object*, %struct._object** %frames, align 8, !dbg !2135, !tbaa !1053
  %cmp4 = icmp eq %struct._object* %13, null, !dbg !2137
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !2138

if.then.6:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval, !dbg !2139
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2139

if.end.7:                                         ; preds = %if.end.2
  store i32 0, i32* %i, align 4, !dbg !2140, !tbaa !1089
  br label %for.cond, !dbg !2141

for.cond:                                         ; preds = %for.inc, %if.end.7
  %14 = load i32, i32* %i, align 4, !dbg !2142, !tbaa !1089
  %15 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2145, !tbaa !1053
  %nframe8 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %15, i32 0, i32 1, !dbg !2146
  %16 = load i32, i32* %nframe8, align 4, !dbg !2146, !tbaa !1143
  %cmp9 = icmp slt i32 %14, %16, !dbg !2147
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2148

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !2149, !tbaa !1089
  %idxprom = sext i32 %17 to i64, !dbg !2150
  %18 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2150, !tbaa !1053
  %frames11 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %18, i32 0, i32 2, !dbg !2151
  %arrayidx = getelementptr [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames11, i32 0, i64 %idxprom, !dbg !2150
  %call12 = call %struct._object* @frame_to_pyobject(%struct.frame_t* %arrayidx), !dbg !2152
  store %struct._object* %call12, %struct._object** %frame, align 8, !dbg !2153, !tbaa !1053
  %19 = load %struct._object*, %struct._object** %frame, align 8, !dbg !2154, !tbaa !1053
  %cmp13 = icmp eq %struct._object* %19, null, !dbg !2155
  br i1 %cmp13, label %if.then.15, label %if.end.21, !dbg !2156

if.then.15:                                       ; preds = %for.body
  br label %do.body, !dbg !2157

do.body:                                          ; preds = %if.then.15
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2158
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !2158
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !611, metadata !1049), !dbg !2160
  %21 = load %struct._object*, %struct._object** %frames, align 8, !dbg !2161, !tbaa !1053
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !2160, !tbaa !1053
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2162, !tbaa !1053
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !2164
  %23 = load i64, i64* %ob_refcnt16, align 8, !dbg !2165, !tbaa !1243
  %dec = add i64 %23, -1, !dbg !2165
  store i64 %dec, i64* %ob_refcnt16, align 8, !dbg !2165, !tbaa !1243
  %cmp17 = icmp ne i64 %dec, 0, !dbg !2166
  br i1 %cmp17, label %if.then.19, label %if.else, !dbg !2167

if.then.19:                                       ; preds = %do.body
  br label %if.end.20, !dbg !2168

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2170, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2172
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2172, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !2173
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2173, !tbaa !1254
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2174, !tbaa !1053
  call void %26(%struct._object* %27), !dbg !2175
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2176
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !2176
  br label %do.cond, !dbg !2178

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !2179

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2181
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2181

if.end.21:                                        ; preds = %for.body
  %29 = load %struct._object*, %struct._object** %frame, align 8, !dbg !2182, !tbaa !1053
  %30 = load i32, i32* %i, align 4, !dbg !2183, !tbaa !1089
  %idxprom22 = sext i32 %30 to i64, !dbg !2184
  %31 = load %struct._object*, %struct._object** %frames, align 8, !dbg !2185, !tbaa !1053
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*, !dbg !2186
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1, !dbg !2187
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom22, !dbg !2184
  store %struct._object* %29, %struct._object** %arrayidx23, align 8, !dbg !2188, !tbaa !1053
  br label %for.inc, !dbg !2189

for.inc:                                          ; preds = %if.end.21
  %33 = load i32, i32* %i, align 4, !dbg !2190, !tbaa !1089
  %inc24 = add i32 %33, 1, !dbg !2190
  store i32 %inc24, i32* %i, align 4, !dbg !2190, !tbaa !1089
  br label %for.cond, !dbg !2191

for.end:                                          ; preds = %for.cond
  %34 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_table.addr, align 8, !dbg !2192, !tbaa !1053
  %cmp25 = icmp ne %struct._Py_hashtable_t* %34, null, !dbg !2193
  br i1 %cmp25, label %if.then.27, label %if.end.49, !dbg !2194

if.then.27:                                       ; preds = %for.end
  %35 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_table.addr, align 8, !dbg !2195, !tbaa !1053
  %36 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2196, !tbaa !1053
  %37 = bitcast %struct.traceback_t* %36 to i8*, !dbg !2196
  %38 = bitcast %struct._object** %frames to i8*, !dbg !2197
  %call28 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %35, i8* %37, i8* %38, i64 8), !dbg !2198
  %cmp29 = icmp slt i32 %call28, 0, !dbg !2199
  br i1 %cmp29, label %if.then.31, label %if.end.46, !dbg !2200

if.then.31:                                       ; preds = %if.then.27
  br label %do.body.32, !dbg !2201

do.body.32:                                       ; preds = %if.then.31
  %39 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !2202
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !2202
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !618, metadata !1049), !dbg !2204
  %40 = load %struct._object*, %struct._object** %frames, align 8, !dbg !2205, !tbaa !1053
  store %struct._object* %40, %struct._object** %_py_decref_tmp33, align 8, !dbg !2204, !tbaa !1053
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !2206, !tbaa !1053
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !2208
  %42 = load i64, i64* %ob_refcnt34, align 8, !dbg !2209, !tbaa !1243
  %dec35 = add i64 %42, -1, !dbg !2209
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !2209, !tbaa !1243
  %cmp36 = icmp ne i64 %dec35, 0, !dbg !2210
  br i1 %cmp36, label %if.then.38, label %if.else.39, !dbg !2211

if.then.38:                                       ; preds = %do.body.32
  br label %if.end.42, !dbg !2212

if.else.39:                                       ; preds = %do.body.32
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !2214, !tbaa !1053
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !2216
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !2216, !tbaa !1252
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !2217
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !2217, !tbaa !1254
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !2218, !tbaa !1053
  call void %45(%struct._object* %46), !dbg !2219
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %47 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !2220
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !2220
  br label %do.cond.43, !dbg !2222

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !2223

do.end.44:                                        ; preds = %do.cond.43
  %call45 = call %struct._object* @PyErr_NoMemory(), !dbg !2225
  store %struct._object* null, %struct._object** %retval, !dbg !2226
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2226

if.end.46:                                        ; preds = %if.then.27
  %48 = load %struct._object*, %struct._object** %frames, align 8, !dbg !2227, !tbaa !1053
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !2228
  %49 = load i64, i64* %ob_refcnt47, align 8, !dbg !2229, !tbaa !1243
  %inc48 = add i64 %49, 1, !dbg !2229
  store i64 %inc48, i64* %ob_refcnt47, align 8, !dbg !2229, !tbaa !1243
  br label %if.end.49, !dbg !2230

if.end.49:                                        ; preds = %if.end.46, %for.end
  %50 = load %struct._object*, %struct._object** %frames, align 8, !dbg !2231, !tbaa !1053
  store %struct._object* %50, %struct._object** %retval, !dbg !2232
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2232

cleanup:                                          ; preds = %if.end.49, %do.end.44, %do.end, %if.then.6, %if.then.1
  %51 = bitcast %struct._object** %frame to i8*, !dbg !2233
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !2233
  %52 = bitcast %struct._object** %frames to i8*, !dbg !2233
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !2233
  %53 = bitcast i32* %i to i8*, !dbg !2233
  call void @llvm.lifetime.end(i64 4, i8* %53) #1, !dbg !2233
  %54 = load %struct._object*, %struct._object** %retval, !dbg !2233
  ret %struct._object* %54, !dbg !2233
}

declare i32 @_Py_hashtable_get(%struct._Py_hashtable_t*, i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @frame_to_pyobject(%struct.frame_t* %frame) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %frame.addr = alloca %struct.frame_t*, align 8
  %frame_obj = alloca %struct._object*, align 8
  %lineno_obj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.frame_t* %frame, %struct.frame_t** %frame.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct.frame_t** %frame.addr, metadata !629, metadata !1049), !dbg !2234
  %0 = bitcast %struct._object** %frame_obj to i8*, !dbg !2235
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2235
  call void @llvm.dbg.declare(metadata %struct._object** %frame_obj, metadata !630, metadata !1049), !dbg !2236
  %1 = bitcast %struct._object** %lineno_obj to i8*, !dbg !2235
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2235
  call void @llvm.dbg.declare(metadata %struct._object** %lineno_obj, metadata !631, metadata !1049), !dbg !2237
  %call = call %struct._object* @PyTuple_New(i64 2), !dbg !2238
  store %struct._object* %call, %struct._object** %frame_obj, align 8, !dbg !2239, !tbaa !1053
  %2 = load %struct._object*, %struct._object** %frame_obj, align 8, !dbg !2240, !tbaa !1053
  %cmp = icmp eq %struct._object* %2, null, !dbg !2242
  br i1 %cmp, label %if.then, label %if.end, !dbg !2243

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2244
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2244

if.end:                                           ; preds = %entry
  %3 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !2245, !tbaa !1053
  %filename = getelementptr inbounds %struct.frame_t, %struct.frame_t* %3, i32 0, i32 0, !dbg !2247
  %4 = load %struct._object*, %struct._object** %filename, align 1, !dbg !2247, !tbaa !1148
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !2248
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !2249

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !2250, !tbaa !1053
  %filename3 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %5, i32 0, i32 0, !dbg !2251
  store %struct._object* @_Py_NoneStruct, %struct._object** %filename3, align 1, !dbg !2252, !tbaa !1148
  br label %if.end.4, !dbg !2250

if.end.4:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !2253, !tbaa !1053
  %filename5 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %6, i32 0, i32 0, !dbg !2254
  %7 = load %struct._object*, %struct._object** %filename5, align 1, !dbg !2254, !tbaa !1148
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !2255
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2256, !tbaa !1243
  %inc = add i64 %8, 1, !dbg !2256
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2256, !tbaa !1243
  %9 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !2257, !tbaa !1053
  %filename6 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %9, i32 0, i32 0, !dbg !2258
  %10 = load %struct._object*, %struct._object** %filename6, align 1, !dbg !2258, !tbaa !1148
  %11 = load %struct._object*, %struct._object** %frame_obj, align 8, !dbg !2259, !tbaa !1053
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*, !dbg !2260
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1, !dbg !2261
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2262
  store %struct._object* %10, %struct._object** %arrayidx, align 8, !dbg !2263, !tbaa !1053
  %13 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !2264, !tbaa !1053
  %lineno = getelementptr inbounds %struct.frame_t, %struct.frame_t* %13, i32 0, i32 1, !dbg !2265
  %14 = load i32, i32* %lineno, align 1, !dbg !2265, !tbaa !1151
  %call7 = call %struct._object* @lineno_as_obj(i32 %14), !dbg !2266
  store %struct._object* %call7, %struct._object** %lineno_obj, align 8, !dbg !2267, !tbaa !1053
  %15 = load %struct._object*, %struct._object** %lineno_obj, align 8, !dbg !2268, !tbaa !1053
  %cmp8 = icmp eq %struct._object* %15, null, !dbg !2269
  br i1 %cmp8, label %if.then.9, label %if.end.14, !dbg !2270

if.then.9:                                        ; preds = %if.end.4
  br label %do.body, !dbg !2271

do.body:                                          ; preds = %if.then.9
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2272
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !2272
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !632, metadata !1049), !dbg !2274
  %17 = load %struct._object*, %struct._object** %frame_obj, align 8, !dbg !2275, !tbaa !1053
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !2274, !tbaa !1053
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2276, !tbaa !1053
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !2278
  %19 = load i64, i64* %ob_refcnt10, align 8, !dbg !2279, !tbaa !1243
  %dec = add i64 %19, -1, !dbg !2279
  store i64 %dec, i64* %ob_refcnt10, align 8, !dbg !2279, !tbaa !1243
  %cmp11 = icmp ne i64 %dec, 0, !dbg !2280
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !2281

if.then.12:                                       ; preds = %do.body
  br label %if.end.13, !dbg !2282

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2284, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !2286
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2286, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !2287
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2287, !tbaa !1254
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2288, !tbaa !1053
  call void %22(%struct._object* %23), !dbg !2289
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2290
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2290
  br label %do.cond, !dbg !2292

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !2293

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2295
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2295

if.end.14:                                        ; preds = %if.end.4
  %25 = load %struct._object*, %struct._object** %lineno_obj, align 8, !dbg !2296, !tbaa !1053
  %26 = load %struct._object*, %struct._object** %frame_obj, align 8, !dbg !2297, !tbaa !1053
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*, !dbg !2298
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1, !dbg !2299
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 1, !dbg !2300
  store %struct._object* %25, %struct._object** %arrayidx16, align 8, !dbg !2301, !tbaa !1053
  %28 = load %struct._object*, %struct._object** %frame_obj, align 8, !dbg !2302, !tbaa !1053
  store %struct._object* %28, %struct._object** %retval, !dbg !2303
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2303

cleanup:                                          ; preds = %if.end.14, %do.end, %if.then
  %29 = bitcast %struct._object** %lineno_obj to i8*, !dbg !2304
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !2304
  %30 = bitcast %struct._object** %frame_obj to i8*, !dbg !2304
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !2304
  %31 = load %struct._object*, %struct._object** %retval, !dbg !2304
  ret %struct._object* %31, !dbg !2304
}

declare i32 @_Py_hashtable_set(%struct._Py_hashtable_t*, i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @lineno_as_obj(i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1089
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !640, metadata !1049), !dbg !2305
  %0 = load i32, i32* %lineno.addr, align 4, !dbg !2306, !tbaa !1089
  %cmp = icmp sge i32 %0, 0, !dbg !2308
  br i1 %cmp, label %if.then, label %if.else, !dbg !2309

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %lineno.addr, align 4, !dbg !2310, !tbaa !1089
  %conv = sext i32 %1 to i64, !dbg !2310
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2311
  store %struct._object* %call, %struct._object** %retval, !dbg !2312
  br label %return, !dbg !2312

if.else:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2313, !tbaa !1243
  %inc = add i64 %2, 1, !dbg !2313
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2313, !tbaa !1243
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2314
  br label %return, !dbg !2314

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !2315
  ret %struct._object* %3, !dbg !2315
}

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_stop() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4, !dbg !2316, !tbaa !1396
  %tobool = icmp ne i32 %0, 0, !dbg !2318
  br i1 %tobool, label %if.end, label %if.then, !dbg !2319

if.then:                                          ; preds = %entry
  br label %return, !dbg !2320

if.end:                                           ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4, !dbg !2321, !tbaa !1396
  call void @set_reentrant(i32 1), !dbg !2322
  call void @PyMem_SetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1)), !dbg !2323
  call void @PyMem_SetAllocator(i32 1, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 0)), !dbg !2324
  call void @PyMem_SetAllocator(i32 2, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 2)), !dbg !2325
  call void @tracemalloc_clear_traces(), !dbg !2326
  %1 = load %struct.traceback_t*, %struct.traceback_t** @tracemalloc_traceback, align 8, !dbg !2327, !tbaa !1053
  %2 = bitcast %struct.traceback_t* %1 to i8*, !dbg !2327
  call void @raw_free(i8* %2), !dbg !2328
  store %struct.traceback_t* null, %struct.traceback_t** @tracemalloc_traceback, align 8, !dbg !2329, !tbaa !1053
  br label %return, !dbg !2330

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2331
}

declare void @PyMem_SetAllocator(i32, %struct.PyMemAllocator*) #3

declare i64 @_Py_hashtable_size(%struct._Py_hashtable_t*) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare void @PyMem_GetAllocator(i32, %struct.PyMemAllocator*) #3

declare i32 @PyThread_create_key() #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

declare i8* @PyThread_allocate_lock() #3

declare i64 @PyObject_Hash(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @hashtable_compare_unicode(i8* %key, %struct._Py_hashtable_entry_t* %entry1) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  store i8* %key, i8** %key.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !686, metadata !1049), !dbg !2333
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry.addr, metadata !687, metadata !1049), !dbg !2334
  %0 = load i8*, i8** %key.addr, align 8, !dbg !2335, !tbaa !1053
  %cmp = icmp ne i8* %0, null, !dbg !2337
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2338

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !dbg !2339, !tbaa !1053
  %key2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %1, i32 0, i32 1, !dbg !2341
  %2 = load i8*, i8** %key2, align 8, !dbg !2341, !tbaa !1855
  %cmp3 = icmp ne i8* %2, null, !dbg !2342
  br i1 %cmp3, label %if.then, label %if.else, !dbg !2343

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %key.addr, align 8, !dbg !2344, !tbaa !1053
  %4 = bitcast i8* %3 to %struct._object*, !dbg !2345
  %5 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !dbg !2346, !tbaa !1053
  %key4 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %5, i32 0, i32 1, !dbg !2347
  %6 = load i8*, i8** %key4, align 8, !dbg !2347, !tbaa !1855
  %7 = bitcast i8* %6 to %struct._object*, !dbg !2348
  %call = call i32 @PyUnicode_Compare(%struct._object* %4, %struct._object* %7), !dbg !2349
  %cmp5 = icmp eq i32 %call, 0, !dbg !2350
  %conv = zext i1 %cmp5 to i32, !dbg !2350
  store i32 %conv, i32* %retval, !dbg !2351
  br label %return, !dbg !2351

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load i8*, i8** %key.addr, align 8, !dbg !2352, !tbaa !1053
  %9 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !dbg !2353, !tbaa !1053
  %key6 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %9, i32 0, i32 1, !dbg !2354
  %10 = load i8*, i8** %key6, align 8, !dbg !2354, !tbaa !1855
  %cmp7 = icmp eq i8* %8, %10, !dbg !2355
  %conv8 = zext i1 %cmp7 to i32, !dbg !2355
  store i32 %conv8, i32* %retval, !dbg !2356
  br label %return, !dbg !2356

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval, !dbg !2357
  ret i32 %11, !dbg !2357
}

; Function Attrs: nounwind uwtable
define internal i64 @hashtable_hash_traceback(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %traceback = alloca %struct.traceback_t*, align 8
  store i8* %key, i8** %key.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !690, metadata !1049), !dbg !2358
  %0 = bitcast %struct.traceback_t** %traceback to i8*, !dbg !2359
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2359
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %traceback, metadata !691, metadata !1049), !dbg !2360
  %1 = load i8*, i8** %key.addr, align 8, !dbg !2361, !tbaa !1053
  %2 = bitcast i8* %1 to %struct.traceback_t*, !dbg !2361
  store %struct.traceback_t* %2, %struct.traceback_t** %traceback, align 8, !dbg !2360, !tbaa !1053
  %3 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2362, !tbaa !1053
  %hash = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %3, i32 0, i32 0, !dbg !2363
  %4 = load i64, i64* %hash, align 8, !dbg !2363, !tbaa !1154
  %5 = bitcast %struct.traceback_t** %traceback to i8*, !dbg !2364
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !2364
  ret i64 %4, !dbg !2365
}

; Function Attrs: nounwind uwtable
define internal i32 @hashtable_compare_traceback(%struct.traceback_t* %traceback1, %struct._Py_hashtable_entry_t* %he) #0 {
entry:
  %retval = alloca i32, align 4
  %traceback1.addr = alloca %struct.traceback_t*, align 8
  %he.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  %traceback2 = alloca %struct.traceback_t*, align 8
  %frame1 = alloca %struct.frame_t*, align 8
  %frame2 = alloca %struct.frame_t*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.traceback_t* %traceback1, %struct.traceback_t** %traceback1.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %traceback1.addr, metadata !698, metadata !1049), !dbg !2366
  store %struct._Py_hashtable_entry_t* %he, %struct._Py_hashtable_entry_t** %he.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %he.addr, metadata !699, metadata !1049), !dbg !2367
  %0 = bitcast %struct.traceback_t** %traceback2 to i8*, !dbg !2368
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2368
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %traceback2, metadata !700, metadata !1049), !dbg !2369
  %1 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %he.addr, align 8, !dbg !2370, !tbaa !1053
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %1, i32 0, i32 1, !dbg !2371
  %2 = load i8*, i8** %key, align 8, !dbg !2371, !tbaa !1855
  %3 = bitcast i8* %2 to %struct.traceback_t*, !dbg !2370
  store %struct.traceback_t* %3, %struct.traceback_t** %traceback2, align 8, !dbg !2369, !tbaa !1053
  %4 = bitcast %struct.frame_t** %frame1 to i8*, !dbg !2372
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2372
  call void @llvm.dbg.declare(metadata %struct.frame_t** %frame1, metadata !701, metadata !1049), !dbg !2373
  %5 = bitcast %struct.frame_t** %frame2 to i8*, !dbg !2372
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2372
  call void @llvm.dbg.declare(metadata %struct.frame_t** %frame2, metadata !704, metadata !1049), !dbg !2374
  %6 = bitcast i32* %i to i8*, !dbg !2375
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !2375
  call void @llvm.dbg.declare(metadata i32* %i, metadata !705, metadata !1049), !dbg !2376
  %7 = load %struct.traceback_t*, %struct.traceback_t** %traceback1.addr, align 8, !dbg !2377, !tbaa !1053
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %7, i32 0, i32 1, !dbg !2379
  %8 = load i32, i32* %nframe, align 4, !dbg !2379, !tbaa !1143
  %9 = load %struct.traceback_t*, %struct.traceback_t** %traceback2, align 8, !dbg !2380, !tbaa !1053
  %nframe1 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %9, i32 0, i32 1, !dbg !2381
  %10 = load i32, i32* %nframe1, align 4, !dbg !2381, !tbaa !1143
  %cmp = icmp ne i32 %8, %10, !dbg !2382
  br i1 %cmp, label %if.then, label %if.end, !dbg !2383

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !2384
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2384

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2385, !tbaa !1089
  br label %for.cond, !dbg !2387

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !2388, !tbaa !1089
  %12 = load %struct.traceback_t*, %struct.traceback_t** %traceback1.addr, align 8, !dbg !2392, !tbaa !1053
  %nframe2 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %12, i32 0, i32 1, !dbg !2393
  %13 = load i32, i32* %nframe2, align 4, !dbg !2393, !tbaa !1143
  %cmp3 = icmp slt i32 %11, %13, !dbg !2394
  br i1 %cmp3, label %for.body, label %for.end, !dbg !2395

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !2396, !tbaa !1089
  %idxprom = sext i32 %14 to i64, !dbg !2398
  %15 = load %struct.traceback_t*, %struct.traceback_t** %traceback1.addr, align 8, !dbg !2398, !tbaa !1053
  %frames = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %15, i32 0, i32 2, !dbg !2399
  %arrayidx = getelementptr [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames, i32 0, i64 %idxprom, !dbg !2398
  store %struct.frame_t* %arrayidx, %struct.frame_t** %frame1, align 8, !dbg !2400, !tbaa !1053
  %16 = load i32, i32* %i, align 4, !dbg !2401, !tbaa !1089
  %idxprom4 = sext i32 %16 to i64, !dbg !2402
  %17 = load %struct.traceback_t*, %struct.traceback_t** %traceback2, align 8, !dbg !2402, !tbaa !1053
  %frames5 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %17, i32 0, i32 2, !dbg !2403
  %arrayidx6 = getelementptr [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames5, i32 0, i64 %idxprom4, !dbg !2402
  store %struct.frame_t* %arrayidx6, %struct.frame_t** %frame2, align 8, !dbg !2404, !tbaa !1053
  %18 = load %struct.frame_t*, %struct.frame_t** %frame1, align 8, !dbg !2405, !tbaa !1053
  %lineno = getelementptr inbounds %struct.frame_t, %struct.frame_t* %18, i32 0, i32 1, !dbg !2407
  %19 = load i32, i32* %lineno, align 1, !dbg !2407, !tbaa !1151
  %20 = load %struct.frame_t*, %struct.frame_t** %frame2, align 8, !dbg !2408, !tbaa !1053
  %lineno7 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %20, i32 0, i32 1, !dbg !2409
  %21 = load i32, i32* %lineno7, align 1, !dbg !2409, !tbaa !1151
  %cmp8 = icmp ne i32 %19, %21, !dbg !2410
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2411

if.then.9:                                        ; preds = %for.body
  store i32 0, i32* %retval, !dbg !2412
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2412

if.end.10:                                        ; preds = %for.body
  %22 = load %struct.frame_t*, %struct.frame_t** %frame1, align 8, !dbg !2413, !tbaa !1053
  %filename = getelementptr inbounds %struct.frame_t, %struct.frame_t* %22, i32 0, i32 0, !dbg !2415
  %23 = load %struct._object*, %struct._object** %filename, align 1, !dbg !2415, !tbaa !1148
  %24 = load %struct.frame_t*, %struct.frame_t** %frame2, align 8, !dbg !2416, !tbaa !1053
  %filename11 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %24, i32 0, i32 0, !dbg !2417
  %25 = load %struct._object*, %struct._object** %filename11, align 1, !dbg !2417, !tbaa !1148
  %cmp12 = icmp ne %struct._object* %23, %25, !dbg !2418
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !2419

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %retval, !dbg !2420
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2420

if.end.14:                                        ; preds = %if.end.10
  br label %for.inc, !dbg !2422

for.inc:                                          ; preds = %if.end.14
  %26 = load i32, i32* %i, align 4, !dbg !2423, !tbaa !1089
  %inc = add i32 %26, 1, !dbg !2423
  store i32 %inc, i32* %i, align 4, !dbg !2423, !tbaa !1089
  br label %for.cond, !dbg !2424

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, !dbg !2425
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2425

cleanup:                                          ; preds = %for.end, %if.then.13, %if.then.9, %if.then
  %27 = bitcast i32* %i to i8*, !dbg !2426
  call void @llvm.lifetime.end(i64 4, i8* %27) #1, !dbg !2426
  %28 = bitcast %struct.frame_t** %frame2 to i8*, !dbg !2426
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !2426
  %29 = bitcast %struct.frame_t** %frame1 to i8*, !dbg !2426
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !2426
  %30 = bitcast %struct.traceback_t** %traceback2 to i8*, !dbg !2426
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !2426
  %31 = load i32, i32* %retval, !dbg !2426
  ret i32 %31, !dbg !2426
}

declare void @PyUnicode_InternInPlace(%struct._object**) #3

; Function Attrs: nounwind uwtable
define internal i64 @traceback_hash(%struct.traceback_t* %traceback) #0 {
entry:
  %traceback.addr = alloca %struct.traceback_t*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %len = alloca i32, align 4
  %mult = alloca i64, align 8
  %frame = alloca %struct.frame_t*, align 8
  store %struct.traceback_t* %traceback, %struct.traceback_t** %traceback.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %traceback.addr, metadata !710, metadata !1049), !dbg !2427
  %0 = bitcast i64* %x to i8*, !dbg !2428
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2428
  call void @llvm.dbg.declare(metadata i64* %x, metadata !711, metadata !1049), !dbg !2429
  %1 = bitcast i64* %y to i8*, !dbg !2428
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2428
  call void @llvm.dbg.declare(metadata i64* %y, metadata !712, metadata !1049), !dbg !2430
  %2 = bitcast i32* %len to i8*, !dbg !2431
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2431
  call void @llvm.dbg.declare(metadata i32* %len, metadata !713, metadata !1049), !dbg !2432
  %3 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2433, !tbaa !1053
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %3, i32 0, i32 1, !dbg !2434
  %4 = load i32, i32* %nframe, align 4, !dbg !2434, !tbaa !1143
  store i32 %4, i32* %len, align 4, !dbg !2432, !tbaa !1089
  %5 = bitcast i64* %mult to i8*, !dbg !2435
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2435
  call void @llvm.dbg.declare(metadata i64* %mult, metadata !714, metadata !1049), !dbg !2436
  store i64 1000003, i64* %mult, align 8, !dbg !2436, !tbaa !1188
  %6 = bitcast %struct.frame_t** %frame to i8*, !dbg !2437
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2437
  call void @llvm.dbg.declare(metadata %struct.frame_t** %frame, metadata !715, metadata !1049), !dbg !2438
  store i64 3430008, i64* %x, align 8, !dbg !2439, !tbaa !1188
  %7 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2440, !tbaa !1053
  %frames = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %7, i32 0, i32 2, !dbg !2441
  %arraydecay = getelementptr inbounds [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames, i32 0, i32 0, !dbg !2440
  store %struct.frame_t* %arraydecay, %struct.frame_t** %frame, align 8, !dbg !2442, !tbaa !1053
  br label %while.cond, !dbg !2443

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* %len, align 4, !dbg !2444, !tbaa !1089
  %dec = add i32 %8, -1, !dbg !2444
  store i32 %dec, i32* %len, align 4, !dbg !2444, !tbaa !1089
  %cmp = icmp sge i32 %dec, 0, !dbg !2447
  br i1 %cmp, label %while.body, label %while.end, !dbg !2443

while.body:                                       ; preds = %while.cond
  %9 = load %struct.frame_t*, %struct.frame_t** %frame, align 8, !dbg !2448, !tbaa !1053
  %filename = getelementptr inbounds %struct.frame_t, %struct.frame_t* %9, i32 0, i32 0, !dbg !2450
  %10 = load %struct._object*, %struct._object** %filename, align 1, !dbg !2450, !tbaa !1148
  %call = call i64 @PyObject_Hash(%struct._object* %10), !dbg !2451
  store i64 %call, i64* %y, align 8, !dbg !2452, !tbaa !1188
  %11 = load %struct.frame_t*, %struct.frame_t** %frame, align 8, !dbg !2453, !tbaa !1053
  %lineno = getelementptr inbounds %struct.frame_t, %struct.frame_t* %11, i32 0, i32 1, !dbg !2454
  %12 = load i32, i32* %lineno, align 1, !dbg !2454, !tbaa !1151
  %conv = sext i32 %12 to i64, !dbg !2455
  %13 = load i64, i64* %y, align 8, !dbg !2456, !tbaa !1188
  %xor = xor i64 %13, %conv, !dbg !2456
  store i64 %xor, i64* %y, align 8, !dbg !2456, !tbaa !1188
  %14 = load %struct.frame_t*, %struct.frame_t** %frame, align 8, !dbg !2457, !tbaa !1053
  %incdec.ptr = getelementptr %struct.frame_t, %struct.frame_t* %14, i32 1, !dbg !2457
  store %struct.frame_t* %incdec.ptr, %struct.frame_t** %frame, align 8, !dbg !2457, !tbaa !1053
  %15 = load i64, i64* %x, align 8, !dbg !2458, !tbaa !1188
  %16 = load i64, i64* %y, align 8, !dbg !2459, !tbaa !1188
  %xor1 = xor i64 %15, %16, !dbg !2460
  %17 = load i64, i64* %mult, align 8, !dbg !2461, !tbaa !1188
  %mul = mul i64 %xor1, %17, !dbg !2462
  store i64 %mul, i64* %x, align 8, !dbg !2463, !tbaa !1188
  %18 = load i32, i32* %len, align 4, !dbg !2464, !tbaa !1089
  %conv2 = sext i32 %18 to i64, !dbg !2464
  %add = add i64 82520, %conv2, !dbg !2465
  %19 = load i32, i32* %len, align 4, !dbg !2466, !tbaa !1089
  %conv3 = sext i32 %19 to i64, !dbg !2466
  %add4 = add i64 %add, %conv3, !dbg !2467
  %20 = load i64, i64* %mult, align 8, !dbg !2468, !tbaa !1188
  %add5 = add i64 %20, %add4, !dbg !2468
  store i64 %add5, i64* %mult, align 8, !dbg !2468, !tbaa !1188
  br label %while.cond, !dbg !2443

while.end:                                        ; preds = %while.cond
  %21 = load i64, i64* %x, align 8, !dbg !2469, !tbaa !1188
  %add6 = add i64 %21, 97531, !dbg !2469
  store i64 %add6, i64* %x, align 8, !dbg !2469, !tbaa !1188
  %22 = load i64, i64* %x, align 8, !dbg !2470, !tbaa !1188
  %23 = bitcast %struct.frame_t** %frame to i8*, !dbg !2471
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !2471
  %24 = bitcast i64* %mult to i8*, !dbg !2471
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2471
  %25 = bitcast i32* %len to i8*, !dbg !2471
  call void @llvm.lifetime.end(i64 4, i8* %25) #1, !dbg !2471
  %26 = bitcast i64* %y to i8*, !dbg !2471
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !2471
  %27 = bitcast i64* %x to i8*, !dbg !2471
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !2471
  ret i64 %22, !dbg !2472
}

declare i32 @PyUnicode_Compare(%struct._object*, %struct._object*) #3

declare i64 @PyUnicode_GetLength(%struct._object*) #3

declare %struct._object* @PyLong_FromUnicodeObject(%struct._object*, i32) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i8* @raw_malloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !1188
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !732, metadata !1049), !dbg !2473
  %0 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1, i32 1), align 8, !dbg !2474, !tbaa !2475
  %1 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1, i32 0), align 8, !dbg !2476, !tbaa !1901
  %2 = load i64, i64* %size.addr, align 8, !dbg !2477, !tbaa !1188
  %call = call i8* %0(i8* %1, i64 %2), !dbg !2478
  ret i8* %call, !dbg !2479
}

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_raw_malloc(i8* %ctx, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %gil_state = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !735, metadata !1049), !dbg !2480
  store i64 %size, i64* %size.addr, align 8, !tbaa !1188
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !736, metadata !1049), !dbg !2481
  %0 = bitcast i32* %gil_state to i8*, !dbg !2482
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2482
  call void @llvm.dbg.declare(metadata i32* %gil_state, metadata !737, metadata !1049), !dbg !2483
  %1 = bitcast i8** %ptr to i8*, !dbg !2484
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2484
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !739, metadata !1049), !dbg !2485
  %call = call i32 @get_reentrant(), !dbg !2486
  %tobool = icmp ne i32 %call, 0, !dbg !2486
  br i1 %tobool, label %if.then, label %if.end, !dbg !2487

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2488
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2488
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %alloc, metadata !740, metadata !1049), !dbg !2489
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !2490, !tbaa !1053
  %4 = bitcast i8* %3 to %struct.PyMemAllocator*, !dbg !2491
  store %struct.PyMemAllocator* %4, %struct.PyMemAllocator** %alloc, align 8, !dbg !2489, !tbaa !1053
  %5 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2492, !tbaa !1053
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %5, i32 0, i32 1, !dbg !2493
  %6 = load i8* (i8*, i64)*, i8* (i8*, i64)** %malloc, align 8, !dbg !2493, !tbaa !1422
  %7 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2494, !tbaa !1053
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %7, i32 0, i32 0, !dbg !2495
  %8 = load i8*, i8** %ctx1, align 8, !dbg !2495, !tbaa !1432
  %9 = load i64, i64* %size.addr, align 8, !dbg !2496, !tbaa !1188
  %call2 = call i8* %6(i8* %8, i64 %9), !dbg !2492
  store i8* %call2, i8** %retval, !dbg !2497
  store i32 1, i32* %cleanup.dest.slot
  %10 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2498
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !2498
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @set_reentrant(i32 1), !dbg !2499
  %call3 = call i32 @PyGILState_Ensure(), !dbg !2500
  store i32 %call3, i32* %gil_state, align 4, !dbg !2501, !tbaa !1175
  %11 = load i8*, i8** %ctx.addr, align 8, !dbg !2502, !tbaa !1053
  %12 = load i64, i64* %size.addr, align 8, !dbg !2503, !tbaa !1188
  %call4 = call i8* @tracemalloc_malloc(i8* %11, i64 %12), !dbg !2504
  store i8* %call4, i8** %ptr, align 8, !dbg !2505, !tbaa !1053
  %13 = load i32, i32* %gil_state, align 4, !dbg !2506, !tbaa !1175
  call void @PyGILState_Release(i32 %13), !dbg !2507
  call void @set_reentrant(i32 0), !dbg !2508
  %14 = load i8*, i8** %ptr, align 8, !dbg !2509, !tbaa !1053
  store i8* %14, i8** %retval, !dbg !2510
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2510

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i8** %ptr to i8*, !dbg !2511
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2511
  %16 = bitcast i32* %gil_state to i8*, !dbg !2511
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !2511
  %17 = load i8*, i8** %retval, !dbg !2511
  ret i8* %17, !dbg !2511
}

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_raw_realloc(i8* %ctx, i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  %gil_state = alloca i32, align 4
  %ptr2 = alloca i8*, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !909, metadata !1049), !dbg !2512
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !910, metadata !1049), !dbg !2513
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !1188
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !911, metadata !1049), !dbg !2514
  %0 = bitcast i32* %gil_state to i8*, !dbg !2515
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2515
  call void @llvm.dbg.declare(metadata i32* %gil_state, metadata !912, metadata !1049), !dbg !2516
  %1 = bitcast i8** %ptr2 to i8*, !dbg !2517
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2517
  call void @llvm.dbg.declare(metadata i8** %ptr2, metadata !913, metadata !1049), !dbg !2518
  %call = call i32 @get_reentrant(), !dbg !2519
  %tobool = icmp ne i32 %call, 0, !dbg !2519
  br i1 %tobool, label %if.then, label %if.end.6, !dbg !2520

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2521
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2521
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %alloc, metadata !914, metadata !1049), !dbg !2522
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !2523, !tbaa !1053
  %4 = bitcast i8* %3 to %struct.PyMemAllocator*, !dbg !2524
  store %struct.PyMemAllocator* %4, %struct.PyMemAllocator** %alloc, align 8, !dbg !2522, !tbaa !1053
  %5 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2525, !tbaa !1053
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %5, i32 0, i32 2, !dbg !2526
  %6 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %realloc, align 8, !dbg !2526, !tbaa !1426
  %7 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2527, !tbaa !1053
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %7, i32 0, i32 0, !dbg !2528
  %8 = load i8*, i8** %ctx1, align 8, !dbg !2528, !tbaa !1432
  %9 = load i8*, i8** %ptr.addr, align 8, !dbg !2529, !tbaa !1053
  %10 = load i64, i64* %new_size.addr, align 8, !dbg !2530, !tbaa !1188
  %call2 = call i8* %6(i8* %8, i8* %9, i64 %10), !dbg !2525
  store i8* %call2, i8** %ptr2, align 8, !dbg !2531, !tbaa !1053
  %11 = load i8*, i8** %ptr2, align 8, !dbg !2532, !tbaa !1053
  %cmp = icmp ne i8* %11, null, !dbg !2534
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2535

land.lhs.true:                                    ; preds = %if.then
  %12 = load i8*, i8** %ptr.addr, align 8, !dbg !2536, !tbaa !1053
  %cmp3 = icmp ne i8* %12, null, !dbg !2538
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !2539

if.then.4:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** @tables_lock, align 8, !dbg !2540, !tbaa !1053
  %call5 = call i32 @PyThread_acquire_lock(i8* %13, i32 1), !dbg !2542
  %14 = load i8*, i8** %ptr.addr, align 8, !dbg !2543, !tbaa !1053
  call void @tracemalloc_remove_trace(i8* %14), !dbg !2544
  %15 = load i8*, i8** @tables_lock, align 8, !dbg !2545, !tbaa !1053
  call void @PyThread_release_lock(i8* %15), !dbg !2546
  br label %if.end, !dbg !2547

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %16 = load i8*, i8** %ptr2, align 8, !dbg !2548, !tbaa !1053
  store i8* %16, i8** %retval, !dbg !2549
  store i32 1, i32* %cleanup.dest.slot
  %17 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2550
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !2550
  br label %cleanup

if.end.6:                                         ; preds = %entry
  call void @set_reentrant(i32 1), !dbg !2551
  %call7 = call i32 @PyGILState_Ensure(), !dbg !2552
  store i32 %call7, i32* %gil_state, align 4, !dbg !2553, !tbaa !1175
  %18 = load i8*, i8** %ctx.addr, align 8, !dbg !2554, !tbaa !1053
  %19 = load i8*, i8** %ptr.addr, align 8, !dbg !2555, !tbaa !1053
  %20 = load i64, i64* %new_size.addr, align 8, !dbg !2556, !tbaa !1188
  %call8 = call i8* @tracemalloc_realloc(i8* %18, i8* %19, i64 %20), !dbg !2557
  store i8* %call8, i8** %ptr2, align 8, !dbg !2558, !tbaa !1053
  %21 = load i32, i32* %gil_state, align 4, !dbg !2559, !tbaa !1175
  call void @PyGILState_Release(i32 %21), !dbg !2560
  call void @set_reentrant(i32 0), !dbg !2561
  %22 = load i8*, i8** %ptr2, align 8, !dbg !2562, !tbaa !1053
  store i8* %22, i8** %retval, !dbg !2563
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2563

cleanup:                                          ; preds = %if.end.6, %if.end
  %23 = bitcast i8** %ptr2 to i8*, !dbg !2564
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !2564
  %24 = bitcast i32* %gil_state to i8*, !dbg !2564
  call void @llvm.lifetime.end(i64 4, i8* %24) #1, !dbg !2564
  %25 = load i8*, i8** %retval, !dbg !2564
  ret i8* %25, !dbg !2564
}

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_free(i8* %ctx, i8* %ptr) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !930, metadata !1049), !dbg !2565
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !931, metadata !1049), !dbg !2566
  %0 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2567
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2567
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %alloc, metadata !932, metadata !1049), !dbg !2568
  %1 = load i8*, i8** %ctx.addr, align 8, !dbg !2569, !tbaa !1053
  %2 = bitcast i8* %1 to %struct.PyMemAllocator*, !dbg !2570
  store %struct.PyMemAllocator* %2, %struct.PyMemAllocator** %alloc, align 8, !dbg !2568, !tbaa !1053
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !2571, !tbaa !1053
  %cmp = icmp eq i8* %3, null, !dbg !2573
  br i1 %cmp, label %if.then, label %if.end, !dbg !2574

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2575

if.end:                                           ; preds = %entry
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2576, !tbaa !1053
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 3, !dbg !2577
  %5 = load void (i8*, i8*)*, void (i8*, i8*)** %free, align 8, !dbg !2577, !tbaa !1429
  %6 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2578, !tbaa !1053
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %6, i32 0, i32 0, !dbg !2579
  %7 = load i8*, i8** %ctx1, align 8, !dbg !2579, !tbaa !1432
  %8 = load i8*, i8** %ptr.addr, align 8, !dbg !2580, !tbaa !1053
  call void %5(i8* %7, i8* %8), !dbg !2576
  %9 = load i8*, i8** @tables_lock, align 8, !dbg !2581, !tbaa !1053
  %call = call i32 @PyThread_acquire_lock(i8* %9, i32 1), !dbg !2582
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !2583, !tbaa !1053
  call void @tracemalloc_remove_trace(i8* %10), !dbg !2584
  %11 = load i8*, i8** @tables_lock, align 8, !dbg !2585, !tbaa !1053
  call void @PyThread_release_lock(i8* %11), !dbg !2586
  store i32 0, i32* %cleanup.dest.slot, !dbg !2587
  br label %cleanup, !dbg !2587

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2588
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !2588
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2587

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_malloc_gil(i8* %ctx, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !935, metadata !1049), !dbg !2590
  store i64 %size, i64* %size.addr, align 8, !tbaa !1188
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !936, metadata !1049), !dbg !2591
  %0 = bitcast i8** %ptr to i8*, !dbg !2592
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2592
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !937, metadata !1049), !dbg !2593
  %call = call i32 @get_reentrant(), !dbg !2594
  %tobool = icmp ne i32 %call, 0, !dbg !2594
  br i1 %tobool, label %if.then, label %if.end, !dbg !2595

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2596
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2596
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %alloc, metadata !938, metadata !1049), !dbg !2597
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !2598, !tbaa !1053
  %3 = bitcast i8* %2 to %struct.PyMemAllocator*, !dbg !2599
  store %struct.PyMemAllocator* %3, %struct.PyMemAllocator** %alloc, align 8, !dbg !2597, !tbaa !1053
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2600, !tbaa !1053
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 1, !dbg !2601
  %5 = load i8* (i8*, i64)*, i8* (i8*, i64)** %malloc, align 8, !dbg !2601, !tbaa !1422
  %6 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2602, !tbaa !1053
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %6, i32 0, i32 0, !dbg !2603
  %7 = load i8*, i8** %ctx1, align 8, !dbg !2603, !tbaa !1432
  %8 = load i64, i64* %size.addr, align 8, !dbg !2604, !tbaa !1188
  %call2 = call i8* %5(i8* %7, i64 %8), !dbg !2600
  store i8* %call2, i8** %retval, !dbg !2605
  store i32 1, i32* %cleanup.dest.slot
  %9 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2606
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !2606
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @set_reentrant(i32 1), !dbg !2607
  %10 = load i8*, i8** %ctx.addr, align 8, !dbg !2608, !tbaa !1053
  %11 = load i64, i64* %size.addr, align 8, !dbg !2609, !tbaa !1188
  %call3 = call i8* @tracemalloc_malloc(i8* %10, i64 %11), !dbg !2610
  store i8* %call3, i8** %ptr, align 8, !dbg !2611, !tbaa !1053
  call void @set_reentrant(i32 0), !dbg !2612
  %12 = load i8*, i8** %ptr, align 8, !dbg !2613, !tbaa !1053
  store i8* %12, i8** %retval, !dbg !2614
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2614

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i8** %ptr to i8*, !dbg !2615
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !2615
  %14 = load i8*, i8** %retval, !dbg !2615
  ret i8* %14, !dbg !2615
}

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_realloc_gil(i8* %ctx, i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  %ptr2 = alloca i8*, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !943, metadata !1049), !dbg !2616
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !944, metadata !1049), !dbg !2617
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !1188
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !945, metadata !1049), !dbg !2618
  %0 = bitcast i8** %ptr2 to i8*, !dbg !2619
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2619
  call void @llvm.dbg.declare(metadata i8** %ptr2, metadata !946, metadata !1049), !dbg !2620
  %call = call i32 @get_reentrant(), !dbg !2621
  %tobool = icmp ne i32 %call, 0, !dbg !2621
  br i1 %tobool, label %if.then, label %if.end.6, !dbg !2622

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2623
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2623
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %alloc, metadata !947, metadata !1049), !dbg !2624
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !2625, !tbaa !1053
  %3 = bitcast i8* %2 to %struct.PyMemAllocator*, !dbg !2626
  store %struct.PyMemAllocator* %3, %struct.PyMemAllocator** %alloc, align 8, !dbg !2624, !tbaa !1053
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2627, !tbaa !1053
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 2, !dbg !2628
  %5 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %realloc, align 8, !dbg !2628, !tbaa !1426
  %6 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2629, !tbaa !1053
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %6, i32 0, i32 0, !dbg !2630
  %7 = load i8*, i8** %ctx1, align 8, !dbg !2630, !tbaa !1432
  %8 = load i8*, i8** %ptr.addr, align 8, !dbg !2631, !tbaa !1053
  %9 = load i64, i64* %new_size.addr, align 8, !dbg !2632, !tbaa !1188
  %call2 = call i8* %5(i8* %7, i8* %8, i64 %9), !dbg !2627
  store i8* %call2, i8** %ptr2, align 8, !dbg !2633, !tbaa !1053
  %10 = load i8*, i8** %ptr2, align 8, !dbg !2634, !tbaa !1053
  %cmp = icmp ne i8* %10, null, !dbg !2636
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2637

land.lhs.true:                                    ; preds = %if.then
  %11 = load i8*, i8** %ptr.addr, align 8, !dbg !2638, !tbaa !1053
  %cmp3 = icmp ne i8* %11, null, !dbg !2640
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !2641

if.then.4:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** @tables_lock, align 8, !dbg !2642, !tbaa !1053
  %call5 = call i32 @PyThread_acquire_lock(i8* %12, i32 1), !dbg !2644
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !2645, !tbaa !1053
  call void @tracemalloc_remove_trace(i8* %13), !dbg !2646
  %14 = load i8*, i8** @tables_lock, align 8, !dbg !2647, !tbaa !1053
  call void @PyThread_release_lock(i8* %14), !dbg !2648
  br label %if.end, !dbg !2649

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %15 = load i8*, i8** %ptr2, align 8, !dbg !2650, !tbaa !1053
  store i8* %15, i8** %retval, !dbg !2651
  store i32 1, i32* %cleanup.dest.slot
  %16 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2652
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !2652
  br label %cleanup

if.end.6:                                         ; preds = %entry
  call void @set_reentrant(i32 1), !dbg !2653
  %17 = load i8*, i8** %ctx.addr, align 8, !dbg !2654, !tbaa !1053
  %18 = load i8*, i8** %ptr.addr, align 8, !dbg !2655, !tbaa !1053
  %19 = load i64, i64* %new_size.addr, align 8, !dbg !2656, !tbaa !1188
  %call7 = call i8* @tracemalloc_realloc(i8* %17, i8* %18, i64 %19), !dbg !2657
  store i8* %call7, i8** %ptr2, align 8, !dbg !2658, !tbaa !1053
  call void @set_reentrant(i32 0), !dbg !2659
  %20 = load i8*, i8** %ptr2, align 8, !dbg !2660, !tbaa !1053
  store i8* %20, i8** %retval, !dbg !2661
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2661

cleanup:                                          ; preds = %if.end.6, %if.end
  %21 = bitcast i8** %ptr2 to i8*, !dbg !2662
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !2662
  %22 = load i8*, i8** %retval, !dbg !2662
  ret i8* %22, !dbg !2662
}

; Function Attrs: nounwind uwtable
define internal i32 @get_reentrant() #0 {
entry:
  %retval = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i8** %ptr to i8*, !dbg !2663
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2663
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !745, metadata !1049), !dbg !2664
  %1 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !2665, !tbaa !1089
  %call = call i8* @PyThread_get_key_value(i32 %1), !dbg !2666
  store i8* %call, i8** %ptr, align 8, !dbg !2664, !tbaa !1053
  %2 = load i8*, i8** %ptr, align 8, !dbg !2667, !tbaa !1053
  %cmp = icmp ne i8* %2, null, !dbg !2669
  br i1 %cmp, label %if.then, label %if.else, !dbg !2670

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !2671
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2671

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !2673
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2673

cleanup:                                          ; preds = %if.else, %if.then
  %3 = bitcast i8** %ptr to i8*, !dbg !2674
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !2674
  %4 = load i32, i32* %retval, !dbg !2674
  ret i32 %4, !dbg !2674
}

declare i32 @PyGILState_Ensure() #3

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_malloc(i8* %ctx, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !748, metadata !1049), !dbg !2675
  store i64 %size, i64* %size.addr, align 8, !tbaa !1188
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !749, metadata !1049), !dbg !2676
  %0 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2677
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2677
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %alloc, metadata !750, metadata !1049), !dbg !2678
  %1 = load i8*, i8** %ctx.addr, align 8, !dbg !2679, !tbaa !1053
  %2 = bitcast i8* %1 to %struct.PyMemAllocator*, !dbg !2680
  store %struct.PyMemAllocator* %2, %struct.PyMemAllocator** %alloc, align 8, !dbg !2678, !tbaa !1053
  %3 = bitcast i8** %ptr to i8*, !dbg !2681
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2681
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !751, metadata !1049), !dbg !2682
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2683, !tbaa !1053
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 1, !dbg !2684
  %5 = load i8* (i8*, i64)*, i8* (i8*, i64)** %malloc, align 8, !dbg !2684, !tbaa !1422
  %6 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2685, !tbaa !1053
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %6, i32 0, i32 0, !dbg !2686
  %7 = load i8*, i8** %ctx1, align 8, !dbg !2686, !tbaa !1432
  %8 = load i64, i64* %size.addr, align 8, !dbg !2687, !tbaa !1188
  %call = call i8* %5(i8* %7, i64 %8), !dbg !2683
  store i8* %call, i8** %ptr, align 8, !dbg !2688, !tbaa !1053
  %9 = load i8*, i8** %ptr, align 8, !dbg !2689, !tbaa !1053
  %cmp = icmp eq i8* %9, null, !dbg !2691
  br i1 %cmp, label %if.then, label %if.end, !dbg !2692

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !2693
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2693

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** @tables_lock, align 8, !dbg !2694, !tbaa !1053
  %call2 = call i32 @PyThread_acquire_lock(i8* %10, i32 1), !dbg !2695
  %11 = load i8*, i8** %ptr, align 8, !dbg !2696, !tbaa !1053
  %12 = load i64, i64* %size.addr, align 8, !dbg !2698, !tbaa !1188
  %call3 = call i32 @tracemalloc_add_trace(i8* %11, i64 %12), !dbg !2699
  %cmp4 = icmp slt i32 %call3, 0, !dbg !2700
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !2701

if.then.5:                                        ; preds = %if.end
  %13 = load i8*, i8** @tables_lock, align 8, !dbg !2702, !tbaa !1053
  call void @PyThread_release_lock(i8* %13), !dbg !2704
  %14 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2705, !tbaa !1053
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %14, i32 0, i32 3, !dbg !2706
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** %free, align 8, !dbg !2706, !tbaa !1429
  %16 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !2707, !tbaa !1053
  %ctx6 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %16, i32 0, i32 0, !dbg !2708
  %17 = load i8*, i8** %ctx6, align 8, !dbg !2708, !tbaa !1432
  %18 = load i8*, i8** %ptr, align 8, !dbg !2709, !tbaa !1053
  call void %15(i8* %17, i8* %18), !dbg !2705
  store i8* null, i8** %retval, !dbg !2710
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2710

if.end.7:                                         ; preds = %if.end
  %19 = load i8*, i8** @tables_lock, align 8, !dbg !2711, !tbaa !1053
  call void @PyThread_release_lock(i8* %19), !dbg !2712
  %20 = load i8*, i8** %ptr, align 8, !dbg !2713, !tbaa !1053
  store i8* %20, i8** %retval, !dbg !2714
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2714

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then
  %21 = bitcast i8** %ptr to i8*, !dbg !2715
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !2715
  %22 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !2715
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !2715
  %23 = load i8*, i8** %retval, !dbg !2715
  ret i8* %23, !dbg !2715
}

declare void @PyGILState_Release(i32) #3

declare i8* @PyThread_get_key_value(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_add_trace(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %traceback = alloca %struct.traceback_t*, align 8
  %trace = alloca %struct.trace_t, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !756, metadata !1049), !dbg !2716
  store i64 %size, i64* %size.addr, align 8, !tbaa !1188
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !757, metadata !1049), !dbg !2717
  %0 = bitcast %struct.traceback_t** %traceback to i8*, !dbg !2718
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2718
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %traceback, metadata !758, metadata !1049), !dbg !2719
  %1 = bitcast %struct.trace_t* %trace to i8*, !dbg !2720
  call void @llvm.lifetime.start(i64 16, i8* %1) #1, !dbg !2720
  call void @llvm.dbg.declare(metadata %struct.trace_t* %trace, metadata !759, metadata !1049), !dbg !2721
  %2 = bitcast i32* %res to i8*, !dbg !2722
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2722
  call void @llvm.dbg.declare(metadata i32* %res, metadata !760, metadata !1049), !dbg !2723
  %call = call %struct.traceback_t* @traceback_new(), !dbg !2724
  store %struct.traceback_t* %call, %struct.traceback_t** %traceback, align 8, !dbg !2725, !tbaa !1053
  %3 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2726, !tbaa !1053
  %cmp = icmp eq %struct.traceback_t* %3, null, !dbg !2728
  br i1 %cmp, label %if.then, label %if.end, !dbg !2729

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !2730
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2730

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !2731, !tbaa !1188
  %size1 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i32 0, i32 0, !dbg !2732
  store i64 %4, i64* %size1, align 8, !dbg !2733, !tbaa !2027
  %5 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2734, !tbaa !1053
  %traceback2 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i32 0, i32 1, !dbg !2735
  store %struct.traceback_t* %5, %struct.traceback_t** %traceback2, align 8, !dbg !2736, !tbaa !1714
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !2737, !tbaa !1053
  %7 = load i8*, i8** %ptr.addr, align 8, !dbg !2738, !tbaa !1053
  %8 = bitcast %struct.trace_t* %trace to i8*, !dbg !2739
  %call3 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %6, i8* %7, i8* %8, i64 16), !dbg !2740
  store i32 %call3, i32* %res, align 4, !dbg !2741, !tbaa !1089
  %9 = load i32, i32* %res, align 4, !dbg !2742, !tbaa !1089
  %cmp4 = icmp eq i32 %9, 0, !dbg !2744
  br i1 %cmp4, label %if.then.5, label %if.end.9, !dbg !2745

if.then.5:                                        ; preds = %if.end
  %10 = load i64, i64* %size.addr, align 8, !dbg !2746, !tbaa !1188
  %11 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !2748, !tbaa !1188
  %add = add i64 %11, %10, !dbg !2748
  store i64 %add, i64* @tracemalloc_traced_memory, align 8, !dbg !2748, !tbaa !1188
  %12 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !2749, !tbaa !1188
  %13 = load i64, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !2751, !tbaa !1188
  %cmp6 = icmp ugt i64 %12, %13, !dbg !2752
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2753

if.then.7:                                        ; preds = %if.then.5
  %14 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !2754, !tbaa !1188
  store i64 %14, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !2755, !tbaa !1188
  br label %if.end.8, !dbg !2756

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.9, !dbg !2757

if.end.9:                                         ; preds = %if.end.8, %if.end
  %15 = load i32, i32* %res, align 4, !dbg !2758, !tbaa !1089
  store i32 %15, i32* %retval, !dbg !2759
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2759

cleanup:                                          ; preds = %if.end.9, %if.then
  %16 = bitcast i32* %res to i8*, !dbg !2760
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !2760
  %17 = bitcast %struct.trace_t* %trace to i8*, !dbg !2760
  call void @llvm.lifetime.end(i64 16, i8* %17) #1, !dbg !2760
  %18 = bitcast %struct.traceback_t** %traceback to i8*, !dbg !2760
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !2760
  %19 = load i32, i32* %retval, !dbg !2760
  ret i32 %19, !dbg !2760
}

; Function Attrs: nounwind uwtable
define internal %struct.traceback_t* @traceback_new() #0 {
entry:
  %retval = alloca %struct.traceback_t*, align 8
  %traceback = alloca %struct.traceback_t*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %cleanup.dest.slot = alloca i32
  %copy = alloca %struct.traceback_t*, align 8
  %traceback_size = alloca i64, align 8
  %0 = bitcast %struct.traceback_t** %traceback to i8*, !dbg !2761
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2761
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %traceback, metadata !765, metadata !1049), !dbg !2762
  %1 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !2763
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2763
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry1, metadata !766, metadata !1049), !dbg !2764
  %2 = load %struct.traceback_t*, %struct.traceback_t** @tracemalloc_traceback, align 8, !dbg !2765, !tbaa !1053
  store %struct.traceback_t* %2, %struct.traceback_t** %traceback, align 8, !dbg !2766, !tbaa !1053
  %3 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2767, !tbaa !1053
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %3, i32 0, i32 1, !dbg !2768
  store i32 0, i32* %nframe, align 4, !dbg !2769, !tbaa !1143
  %4 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2770, !tbaa !1053
  call void @traceback_get_frames(%struct.traceback_t* %4), !dbg !2771
  %5 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2772, !tbaa !1053
  %nframe2 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %5, i32 0, i32 1, !dbg !2774
  %6 = load i32, i32* %nframe2, align 4, !dbg !2774, !tbaa !1143
  %cmp = icmp eq i32 %6, 0, !dbg !2775
  br i1 %cmp, label %if.then, label %if.end, !dbg !2776

if.then:                                          ; preds = %entry
  store %struct.traceback_t* @tracemalloc_empty_traceback, %struct.traceback_t** %retval, !dbg !2777
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19, !dbg !2777

if.end:                                           ; preds = %entry
  %7 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2778, !tbaa !1053
  %call = call i64 @traceback_hash(%struct.traceback_t* %7), !dbg !2779
  %8 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2780, !tbaa !1053
  %hash = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %8, i32 0, i32 0, !dbg !2781
  store i64 %call, i64* %hash, align 8, !dbg !2782, !tbaa !1154
  %9 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !2783, !tbaa !1053
  %10 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2784, !tbaa !1053
  %11 = bitcast %struct.traceback_t* %10 to i8*, !dbg !2784
  %call3 = call %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %9, i8* %11), !dbg !2785
  store %struct._Py_hashtable_entry_t* %call3, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !2786, !tbaa !1053
  %12 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !2787, !tbaa !1053
  %cmp4 = icmp ne %struct._Py_hashtable_entry_t* %12, null, !dbg !2788
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !2789

if.then.5:                                        ; preds = %if.end
  %13 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !2790, !tbaa !1053
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %13, i32 0, i32 1, !dbg !2792
  %14 = load i8*, i8** %key, align 8, !dbg !2792, !tbaa !1855
  %15 = bitcast i8* %14 to %struct.traceback_t*, !dbg !2793
  store %struct.traceback_t* %15, %struct.traceback_t** %traceback, align 8, !dbg !2794, !tbaa !1053
  br label %if.end.18, !dbg !2795

if.else:                                          ; preds = %if.end
  %16 = bitcast %struct.traceback_t** %copy to i8*, !dbg !2796
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !2796
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %copy, metadata !767, metadata !1049), !dbg !2797
  %17 = bitcast i64* %traceback_size to i8*, !dbg !2798
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !2798
  call void @llvm.dbg.declare(metadata i64* %traceback_size, metadata !770, metadata !1049), !dbg !2799
  %18 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2800, !tbaa !1053
  %nframe6 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %18, i32 0, i32 1, !dbg !2801
  %19 = load i32, i32* %nframe6, align 4, !dbg !2801, !tbaa !1143
  %sub = sub i32 %19, 1, !dbg !2802
  %conv = sext i32 %sub to i64, !dbg !2803
  %mul = mul i64 12, %conv, !dbg !2804
  %add = add i64 24, %mul, !dbg !2805
  store i64 %add, i64* %traceback_size, align 8, !dbg !2806, !tbaa !1188
  %20 = load i64, i64* %traceback_size, align 8, !dbg !2807, !tbaa !1188
  %call7 = call i8* @raw_malloc(i64 %20), !dbg !2808
  %21 = bitcast i8* %call7 to %struct.traceback_t*, !dbg !2808
  store %struct.traceback_t* %21, %struct.traceback_t** %copy, align 8, !dbg !2809, !tbaa !1053
  %22 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8, !dbg !2810, !tbaa !1053
  %cmp8 = icmp eq %struct.traceback_t* %22, null, !dbg !2812
  br i1 %cmp8, label %if.then.10, label %if.end.11, !dbg !2813

if.then.10:                                       ; preds = %if.else
  store %struct.traceback_t* null, %struct.traceback_t** %retval, !dbg !2814
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2814

if.end.11:                                        ; preds = %if.else
  %23 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8, !dbg !2816, !tbaa !1053
  %24 = bitcast %struct.traceback_t* %23 to i8*, !dbg !2817
  %25 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2818, !tbaa !1053
  %26 = bitcast %struct.traceback_t* %25 to i8*, !dbg !2817
  %27 = load i64, i64* %traceback_size, align 8, !dbg !2819, !tbaa !1188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %26, i64 %27, i32 8, i1 false), !dbg !2817
  %28 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !2820, !tbaa !1053
  %29 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8, !dbg !2822, !tbaa !1053
  %30 = bitcast %struct.traceback_t* %29 to i8*, !dbg !2822
  %call12 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %28, i8* %30, i8* null, i64 0), !dbg !2823
  %cmp13 = icmp slt i32 %call12, 0, !dbg !2824
  br i1 %cmp13, label %if.then.15, label %if.end.16, !dbg !2825

if.then.15:                                       ; preds = %if.end.11
  %31 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8, !dbg !2826, !tbaa !1053
  %32 = bitcast %struct.traceback_t* %31 to i8*, !dbg !2826
  call void @raw_free(i8* %32), !dbg !2828
  store %struct.traceback_t* null, %struct.traceback_t** %retval, !dbg !2829
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2829

if.end.16:                                        ; preds = %if.end.11
  %33 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8, !dbg !2830, !tbaa !1053
  store %struct.traceback_t* %33, %struct.traceback_t** %traceback, align 8, !dbg !2831, !tbaa !1053
  store i32 0, i32* %cleanup.dest.slot, !dbg !2832
  br label %cleanup, !dbg !2832

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.10
  %34 = bitcast i64* %traceback_size to i8*, !dbg !2833
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !2833
  %35 = bitcast %struct.traceback_t** %copy to i8*, !dbg !2833
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !2833
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.18

if.end.18:                                        ; preds = %cleanup.cont, %if.then.5
  %36 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !2835, !tbaa !1053
  store %struct.traceback_t* %36, %struct.traceback_t** %retval, !dbg !2836
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19, !dbg !2836

cleanup.19:                                       ; preds = %if.end.18, %cleanup, %if.then
  %37 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !2837
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !2837
  %38 = bitcast %struct.traceback_t** %traceback to i8*, !dbg !2837
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2837
  %39 = load %struct.traceback_t*, %struct.traceback_t** %retval, !dbg !2837
  ret %struct.traceback_t* %39, !dbg !2837
}

; Function Attrs: nounwind uwtable
define internal void @traceback_get_frames(%struct.traceback_t* %traceback) #0 {
entry:
  %traceback.addr = alloca %struct.traceback_t*, align 8
  %tstate = alloca %struct._ts*, align 8
  %pyframe = alloca %struct._frame*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.traceback_t* %traceback, %struct.traceback_t** %traceback.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct.traceback_t** %traceback.addr, metadata !775, metadata !1049), !dbg !2838
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !2839
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2839
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !776, metadata !1049), !dbg !2840
  %1 = bitcast %struct._frame** %pyframe to i8*, !dbg !2841
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2841
  call void @llvm.dbg.declare(metadata %struct._frame** %pyframe, metadata !889, metadata !1049), !dbg !2842
  %call = call %struct._ts* @PyGILState_GetThisThreadState(), !dbg !2843
  store %struct._ts* %call, %struct._ts** %tstate, align 8, !dbg !2844, !tbaa !1053
  %2 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2845, !tbaa !1053
  %cmp = icmp eq %struct._ts* %2, null, !dbg !2847
  br i1 %cmp, label %if.then, label %if.end, !dbg !2848

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2849

if.end:                                           ; preds = %entry
  %3 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2851, !tbaa !1053
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %3, i32 0, i32 3, !dbg !2853
  %4 = load %struct._frame*, %struct._frame** %frame, align 8, !dbg !2853, !tbaa !2854
  store %struct._frame* %4, %struct._frame** %pyframe, align 8, !dbg !2856, !tbaa !1053
  br label %for.cond, !dbg !2857

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct._frame*, %struct._frame** %pyframe, align 8, !dbg !2858, !tbaa !1053
  %cmp1 = icmp ne %struct._frame* %5, null, !dbg !2862
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2863

for.body:                                         ; preds = %for.cond
  %6 = load %struct._frame*, %struct._frame** %pyframe, align 8, !dbg !2864, !tbaa !1053
  %7 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2866, !tbaa !1053
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %7, i32 0, i32 1, !dbg !2867
  %8 = load i32, i32* %nframe, align 4, !dbg !2867, !tbaa !1143
  %idxprom = sext i32 %8 to i64, !dbg !2868
  %9 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2868, !tbaa !1053
  %frames = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %9, i32 0, i32 2, !dbg !2869
  %arrayidx = getelementptr [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames, i32 0, i64 %idxprom, !dbg !2868
  call void @tracemalloc_get_frame(%struct._frame* %6, %struct.frame_t* %arrayidx), !dbg !2870
  %10 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2871, !tbaa !1053
  %nframe2 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %10, i32 0, i32 1, !dbg !2872
  %11 = load i32, i32* %nframe2, align 4, !dbg !2873, !tbaa !1143
  %inc = add i32 %11, 1, !dbg !2873
  store i32 %inc, i32* %nframe2, align 4, !dbg !2873, !tbaa !1143
  %12 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8, !dbg !2874, !tbaa !1053
  %nframe3 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %12, i32 0, i32 1, !dbg !2876
  %13 = load i32, i32* %nframe3, align 4, !dbg !2876, !tbaa !1143
  %14 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 2), align 4, !dbg !2877, !tbaa !1403
  %cmp4 = icmp eq i32 %13, %14, !dbg !2878
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2879

if.then.5:                                        ; preds = %for.body
  br label %for.end, !dbg !2880

if.end.6:                                         ; preds = %for.body
  br label %for.inc, !dbg !2881

for.inc:                                          ; preds = %if.end.6
  %15 = load %struct._frame*, %struct._frame** %pyframe, align 8, !dbg !2882, !tbaa !1053
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %15, i32 0, i32 1, !dbg !2883
  %16 = load %struct._frame*, %struct._frame** %f_back, align 8, !dbg !2883, !tbaa !2884
  store %struct._frame* %16, %struct._frame** %pyframe, align 8, !dbg !2886, !tbaa !1053
  br label %for.cond, !dbg !2887

for.end:                                          ; preds = %if.then.5, %for.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !2888
  br label %cleanup, !dbg !2888

cleanup:                                          ; preds = %for.end, %if.then
  %17 = bitcast %struct._frame** %pyframe to i8*, !dbg !2889
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !2889
  %18 = bitcast %struct._ts** %tstate to i8*, !dbg !2889
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !2889
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2888

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct._ts* @PyGILState_GetThisThreadState() #3

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_get_frame(%struct._frame* %pyframe, %struct.frame_t* %frame) #0 {
entry:
  %pyframe.addr = alloca %struct._frame*, align 8
  %frame.addr = alloca %struct.frame_t*, align 8
  %code = alloca %struct.PyCodeObject*, align 8
  %filename = alloca %struct._object*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._frame* %pyframe, %struct._frame** %pyframe.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct._frame** %pyframe.addr, metadata !896, metadata !1049), !dbg !2891
  store %struct.frame_t* %frame, %struct.frame_t** %frame.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata %struct.frame_t** %frame.addr, metadata !897, metadata !1049), !dbg !2892
  %0 = bitcast %struct.PyCodeObject** %code to i8*, !dbg !2893
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2893
  call void @llvm.dbg.declare(metadata %struct.PyCodeObject** %code, metadata !898, metadata !1049), !dbg !2894
  %1 = bitcast %struct._object** %filename to i8*, !dbg !2895
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2895
  call void @llvm.dbg.declare(metadata %struct._object** %filename, metadata !899, metadata !1049), !dbg !2896
  %2 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !2897
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2897
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry1, metadata !900, metadata !1049), !dbg !2898
  %3 = load %struct._object*, %struct._object** @unknown_filename, align 8, !dbg !2899, !tbaa !1053
  %4 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !2900, !tbaa !1053
  %filename2 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %4, i32 0, i32 0, !dbg !2901
  store %struct._object* %3, %struct._object** %filename2, align 1, !dbg !2902, !tbaa !1148
  %5 = load %struct._frame*, %struct._frame** %pyframe.addr, align 8, !dbg !2903, !tbaa !1053
  %call = call i32 @PyFrame_GetLineNumber(%struct._frame* %5), !dbg !2904
  %6 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !2905, !tbaa !1053
  %lineno = getelementptr inbounds %struct.frame_t, %struct.frame_t* %6, i32 0, i32 1, !dbg !2906
  store i32 %call, i32* %lineno, align 1, !dbg !2907, !tbaa !1151
  %7 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !2908, !tbaa !1053
  %lineno3 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %7, i32 0, i32 1, !dbg !2910
  %8 = load i32, i32* %lineno3, align 1, !dbg !2910, !tbaa !1151
  %cmp = icmp slt i32 %8, 0, !dbg !2911
  br i1 %cmp, label %if.then, label %if.end, !dbg !2912

if.then:                                          ; preds = %entry
  %9 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !2913, !tbaa !1053
  %lineno4 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %9, i32 0, i32 1, !dbg !2914
  store i32 0, i32* %lineno4, align 1, !dbg !2915, !tbaa !1151
  br label %if.end, !dbg !2913

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._frame*, %struct._frame** %pyframe.addr, align 8, !dbg !2916, !tbaa !1053
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %10, i32 0, i32 2, !dbg !2917
  %11 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8, !dbg !2917, !tbaa !2918
  store %struct.PyCodeObject* %11, %struct.PyCodeObject** %code, align 8, !dbg !2919, !tbaa !1053
  %12 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8, !dbg !2920, !tbaa !1053
  %cmp5 = icmp eq %struct.PyCodeObject* %12, null, !dbg !2922
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2923

if.then.6:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2924

if.end.7:                                         ; preds = %if.end
  %13 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8, !dbg !2926, !tbaa !1053
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %13, i32 0, i32 13, !dbg !2928
  %14 = load %struct._object*, %struct._object** %co_filename, align 8, !dbg !2928, !tbaa !2929
  %cmp8 = icmp eq %struct._object* %14, null, !dbg !2931
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2932

if.then.9:                                        ; preds = %if.end.7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2933

if.end.10:                                        ; preds = %if.end.7
  %15 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8, !dbg !2935, !tbaa !1053
  %co_filename11 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %15, i32 0, i32 13, !dbg !2936
  %16 = load %struct._object*, %struct._object** %co_filename11, align 8, !dbg !2936, !tbaa !2929
  store %struct._object* %16, %struct._object** %filename, align 8, !dbg !2937, !tbaa !1053
  %17 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2938, !tbaa !1053
  %cmp12 = icmp eq %struct._object* %17, null, !dbg !2940
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !2941

if.then.13:                                       ; preds = %if.end.10
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2942

if.end.14:                                        ; preds = %if.end.10
  %18 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2943, !tbaa !1053
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !2945
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2945, !tbaa !1252
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19, !dbg !2946
  %20 = load i64, i64* %tp_flags, align 8, !dbg !2946, !tbaa !1687
  %and = and i64 %20, 268435456, !dbg !2947
  %cmp15 = icmp ne i64 %and, 0, !dbg !2948
  br i1 %cmp15, label %if.end.17, label %if.then.16, !dbg !2949

if.then.16:                                       ; preds = %if.end.14
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2950

if.end.17:                                        ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2952, !tbaa !1053
  %22 = bitcast %struct._object* %21 to %struct.PyASCIIObject*, !dbg !2954
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %22, i32 0, i32 3, !dbg !2955
  %23 = bitcast %struct.anon.1* %state to i32*, !dbg !2956
  %bf.load = load i32, i32* %23, align 4, !dbg !2956
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2956
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2956
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2957
  br i1 %tobool, label %if.end.19, label %if.then.18, !dbg !2958

if.then.18:                                       ; preds = %if.end.17
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2959

if.end.19:                                        ; preds = %if.end.17
  %24 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !2961, !tbaa !1053
  %25 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2962, !tbaa !1053
  %26 = bitcast %struct._object* %25 to i8*, !dbg !2962
  %call20 = call %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %24, i8* %26), !dbg !2963
  store %struct._Py_hashtable_entry_t* %call20, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !2964, !tbaa !1053
  %27 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !2965, !tbaa !1053
  %cmp21 = icmp ne %struct._Py_hashtable_entry_t* %27, null, !dbg !2966
  br i1 %cmp21, label %if.then.22, label %if.else, !dbg !2967

if.then.22:                                       ; preds = %if.end.19
  %28 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !2968, !tbaa !1053
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %28, i32 0, i32 1, !dbg !2970
  %29 = load i8*, i8** %key, align 8, !dbg !2970, !tbaa !1855
  %30 = bitcast i8* %29 to %struct._object*, !dbg !2971
  store %struct._object* %30, %struct._object** %filename, align 8, !dbg !2972, !tbaa !1053
  br label %if.end.33, !dbg !2973

if.else:                                          ; preds = %if.end.19
  %31 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2974, !tbaa !1053
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !2975
  %32 = load i64, i64* %ob_refcnt, align 8, !dbg !2976, !tbaa !1243
  %inc = add i64 %32, 1, !dbg !2976
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2976, !tbaa !1243
  %33 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !2977, !tbaa !1053
  %34 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2978, !tbaa !1053
  %35 = bitcast %struct._object* %34 to i8*, !dbg !2978
  %call23 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %33, i8* %35, i8* null, i64 0), !dbg !2979
  %cmp24 = icmp slt i32 %call23, 0, !dbg !2980
  br i1 %cmp24, label %if.then.25, label %if.end.32, !dbg !2981

if.then.25:                                       ; preds = %if.else
  br label %do.body, !dbg !2982

do.body:                                          ; preds = %if.then.25
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2983
  call void @llvm.lifetime.start(i64 8, i8* %36) #1, !dbg !2983
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !901, metadata !1049), !dbg !2985
  %37 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2986, !tbaa !1053
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8, !dbg !2985, !tbaa !1053
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2987, !tbaa !1053
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !2989
  %39 = load i64, i64* %ob_refcnt26, align 8, !dbg !2990, !tbaa !1243
  %dec = add i64 %39, -1, !dbg !2990
  store i64 %dec, i64* %ob_refcnt26, align 8, !dbg !2990, !tbaa !1243
  %cmp27 = icmp ne i64 %dec, 0, !dbg !2991
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !2992

if.then.28:                                       ; preds = %do.body
  br label %if.end.31, !dbg !2993

if.else.29:                                       ; preds = %do.body
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2995, !tbaa !1053
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !2997
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !2997, !tbaa !1252
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !2998
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2998, !tbaa !1254
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2999, !tbaa !1053
  call void %42(%struct._object* %43), !dbg !3000
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  %44 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3001
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !3001
  br label %do.cond, !dbg !3003

do.cond:                                          ; preds = %if.end.31
  br label %do.end, !dbg !3004

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3006

if.end.32:                                        ; preds = %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.22
  %45 = load %struct._object*, %struct._object** %filename, align 8, !dbg !3007, !tbaa !1053
  %46 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8, !dbg !3008, !tbaa !1053
  %filename34 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %46, i32 0, i32 0, !dbg !3009
  store %struct._object* %45, %struct._object** %filename34, align 1, !dbg !3010, !tbaa !1148
  store i32 0, i32* %cleanup.dest.slot, !dbg !3011
  br label %cleanup, !dbg !3011

cleanup:                                          ; preds = %if.end.33, %do.end, %if.then.18, %if.then.16, %if.then.13, %if.then.9, %if.then.6
  %47 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !3012
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !3012
  %48 = bitcast %struct._object** %filename to i8*, !dbg !3012
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !3012
  %49 = bitcast %struct.PyCodeObject** %code to i8*, !dbg !3012
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !3012
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3011

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @PyFrame_GetLineNumber(%struct._frame*) #3

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_remove_trace(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %trace = alloca %struct.trace_t, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !919, metadata !1049), !dbg !3014
  %0 = bitcast %struct.trace_t* %trace to i8*, !dbg !3015
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !3015
  call void @llvm.dbg.declare(metadata %struct.trace_t* %trace, metadata !920, metadata !1049), !dbg !3016
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !3017, !tbaa !1053
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3019, !tbaa !1053
  %3 = bitcast %struct.trace_t* %trace to i8*, !dbg !3020
  %call = call i32 @_Py_hashtable_pop(%struct._Py_hashtable_t* %1, i8* %2, i8* %3, i64 16), !dbg !3021
  %tobool = icmp ne i32 %call, 0, !dbg !3021
  br i1 %tobool, label %if.then, label %if.end, !dbg !3022

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i32 0, i32 0, !dbg !3023
  %4 = load i64, i64* %size, align 8, !dbg !3023, !tbaa !2027
  %5 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !3025, !tbaa !1188
  %sub = sub i64 %5, %4, !dbg !3025
  store i64 %sub, i64* @tracemalloc_traced_memory, align 8, !dbg !3025, !tbaa !1188
  br label %if.end, !dbg !3026

if.end:                                           ; preds = %if.then, %entry
  %6 = bitcast %struct.trace_t* %trace to i8*, !dbg !3027
  call void @llvm.lifetime.end(i64 16, i8* %6) #1, !dbg !3027
  ret void, !dbg !3027
}

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_realloc(i8* %ctx, i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  %ptr2 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !923, metadata !1049), !dbg !3028
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1053
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !924, metadata !1049), !dbg !3029
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !1188
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !925, metadata !1049), !dbg !3030
  %0 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !3031
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3031
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %alloc, metadata !926, metadata !1049), !dbg !3032
  %1 = load i8*, i8** %ctx.addr, align 8, !dbg !3033, !tbaa !1053
  %2 = bitcast i8* %1 to %struct.PyMemAllocator*, !dbg !3034
  store %struct.PyMemAllocator* %2, %struct.PyMemAllocator** %alloc, align 8, !dbg !3032, !tbaa !1053
  %3 = bitcast i8** %ptr2 to i8*, !dbg !3035
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3035
  call void @llvm.dbg.declare(metadata i8** %ptr2, metadata !927, metadata !1049), !dbg !3036
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !3037, !tbaa !1053
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 2, !dbg !3038
  %5 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %realloc, align 8, !dbg !3038, !tbaa !1426
  %6 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !3039, !tbaa !1053
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %6, i32 0, i32 0, !dbg !3040
  %7 = load i8*, i8** %ctx1, align 8, !dbg !3040, !tbaa !1432
  %8 = load i8*, i8** %ptr.addr, align 8, !dbg !3041, !tbaa !1053
  %9 = load i64, i64* %new_size.addr, align 8, !dbg !3042, !tbaa !1188
  %call = call i8* %5(i8* %7, i8* %8, i64 %9), !dbg !3037
  store i8* %call, i8** %ptr2, align 8, !dbg !3043, !tbaa !1053
  %10 = load i8*, i8** %ptr2, align 8, !dbg !3044, !tbaa !1053
  %cmp = icmp eq i8* %10, null, !dbg !3046
  br i1 %cmp, label %if.then, label %if.end, !dbg !3047

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !3048
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3048

if.end:                                           ; preds = %entry
  %11 = load i8*, i8** %ptr.addr, align 8, !dbg !3049, !tbaa !1053
  %cmp2 = icmp ne i8* %11, null, !dbg !3051
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3052

if.then.3:                                        ; preds = %if.end
  %12 = load i8*, i8** @tables_lock, align 8, !dbg !3053, !tbaa !1053
  %call4 = call i32 @PyThread_acquire_lock(i8* %12, i32 1), !dbg !3055
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !3056, !tbaa !1053
  call void @tracemalloc_remove_trace(i8* %13), !dbg !3057
  %14 = load i8*, i8** %ptr2, align 8, !dbg !3058, !tbaa !1053
  %15 = load i64, i64* %new_size.addr, align 8, !dbg !3060, !tbaa !1188
  %call5 = call i32 @tracemalloc_add_trace(i8* %14, i64 %15), !dbg !3061
  %cmp6 = icmp slt i32 %call5, 0, !dbg !3062
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !3063

if.then.7:                                        ; preds = %if.then.3
  br label %if.end.8, !dbg !3064

if.end.8:                                         ; preds = %if.then.7, %if.then.3
  %16 = load i8*, i8** @tables_lock, align 8, !dbg !3066, !tbaa !1053
  call void @PyThread_release_lock(i8* %16), !dbg !3067
  br label %if.end.15, !dbg !3068

if.else:                                          ; preds = %if.end
  %17 = load i8*, i8** @tables_lock, align 8, !dbg !3069, !tbaa !1053
  %call9 = call i32 @PyThread_acquire_lock(i8* %17, i32 1), !dbg !3071
  %18 = load i8*, i8** %ptr2, align 8, !dbg !3072, !tbaa !1053
  %19 = load i64, i64* %new_size.addr, align 8, !dbg !3074, !tbaa !1188
  %call10 = call i32 @tracemalloc_add_trace(i8* %18, i64 %19), !dbg !3075
  %cmp11 = icmp slt i32 %call10, 0, !dbg !3076
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !3077

if.then.12:                                       ; preds = %if.else
  %20 = load i8*, i8** @tables_lock, align 8, !dbg !3078, !tbaa !1053
  call void @PyThread_release_lock(i8* %20), !dbg !3080
  %21 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !3081, !tbaa !1053
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %21, i32 0, i32 3, !dbg !3082
  %22 = load void (i8*, i8*)*, void (i8*, i8*)** %free, align 8, !dbg !3082, !tbaa !1429
  %23 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8, !dbg !3083, !tbaa !1053
  %ctx13 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %23, i32 0, i32 0, !dbg !3084
  %24 = load i8*, i8** %ctx13, align 8, !dbg !3084, !tbaa !1432
  %25 = load i8*, i8** %ptr2, align 8, !dbg !3085, !tbaa !1053
  call void %22(i8* %24, i8* %25), !dbg !3081
  store i8* null, i8** %retval, !dbg !3086
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3086

if.end.14:                                        ; preds = %if.else
  %26 = load i8*, i8** @tables_lock, align 8, !dbg !3087, !tbaa !1053
  call void @PyThread_release_lock(i8* %26), !dbg !3088
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.8
  %27 = load i8*, i8** %ptr2, align 8, !dbg !3089, !tbaa !1053
  store i8* %27, i8** %retval, !dbg !3090
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3090

cleanup:                                          ; preds = %if.end.15, %if.then.12, %if.then
  %28 = bitcast i8** %ptr2 to i8*, !dbg !3091
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !3091
  %29 = bitcast %struct.PyMemAllocator** %alloc to i8*, !dbg !3091
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !3091
  %30 = load i8*, i8** %retval, !dbg !3091
  ret i8* %30, !dbg !3091
}

declare i32 @_Py_hashtable_pop(%struct._Py_hashtable_t*, i8*, i8*, i64) #3

declare void @PyThread_free_lock(i8*) #3

declare void @PyThread_delete_key(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1045, !1046}
!llvm.ident = !{!1047}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !26, subprograms: !454, globals: !957)
!1 = !DIFile(filename: "_tracemalloc.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !15, !21}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5, file: !4, line: 32, size: 32, align: 32, elements: !11)
!4 = !DIFile(filename: "./Modules/_tracemalloc.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 29, size: 96, align: 32, elements: !6)
!6 = !{!7, !8, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5, file: !4, line: 36, baseType: !3, size: 32, align: 32)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !5, file: !4, line: 40, baseType: !9, size: 32, align: 32, offset: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "max_nframe", scope: !5, file: !4, line: 44, baseType: !9, size: 32, align: 32, offset: 64)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "TRACEMALLOC_NOT_INITIALIZED", value: 0)
!13 = !DIEnumerator(name: "TRACEMALLOC_INITIALIZED", value: 1)
!14 = !DIEnumerator(name: "TRACEMALLOC_FINALIZED", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 117, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "Include/pymem.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "PYMEM_DOMAIN_RAW", value: 0)
!19 = !DIEnumerator(name: "PYMEM_DOMAIN_MEM", value: 1)
!20 = !DIEnumerator(name: "PYMEM_DOMAIN_OBJ", value: 2)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 190, size: 32, align: 32, elements: !23)
!22 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "PyGILState_LOCKED", value: 0)
!25 = !DIEnumerator(name: "PyGILState_UNLOCKED", value: 1)
!26 = !{!27, !9, !28, !365, !379, !74, !385, !393, !394, !401, !370, !418, !435}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !30, line: 109, baseType: !31)
!30 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !30, line: 105, size: 128, align: 64, elements: !32)
!32 = !{!33, !41}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !31, file: !30, line: 107, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !35, line: 177, baseType: !36)
!35 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 102, baseType: !38)
!37 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !39, line: 181, baseType: !40)
!39 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!40 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !31, file: !30, line: 108, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !30, line: 334, size: 3200, align: 64, elements: !44)
!44 = !{!45, !51, !55, !56, !57, !62, !124, !129, !134, !135, !140, !192, !223, !235, !241, !242, !243, !245, !247, !278, !279, !280, !289, !290, !295, !296, !298, !300, !310, !313, !331, !332, !333, !335, !337, !338, !340, !345, !350, !355, !356, !357, !358, !359, !360, !361, !362, !364}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !43, file: !30, line: 335, baseType: !46, size: 192, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !30, line: 114, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 111, size: 192, align: 64, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !47, file: !30, line: 112, baseType: !29, size: 128, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !47, file: !30, line: 113, baseType: !34, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !43, file: !30, line: 336, baseType: !52, size: 64, align: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !43, file: !30, line: 337, baseType: !34, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !43, file: !30, line: 337, baseType: !34, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !43, file: !30, line: 341, baseType: !58, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !30, line: 308, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !28}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !43, file: !30, line: 342, baseType: !63, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !30, line: 314, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!9, !28, !67, !9}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !37, line: 48, baseType: !69)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !70, line: 246, size: 1728, align: 64, elements: !71)
!70 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!71 = !{!72, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !93, !94, !95, !96, !98, !100, !102, !106, !109, !111, !112, !113, !114, !115, !119, !120}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !69, file: !70, line: 247, baseType: !9, size: 32, align: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !69, file: !70, line: 252, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !69, file: !70, line: 253, baseType: !74, size: 64, align: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !69, file: !70, line: 254, baseType: !74, size: 64, align: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !69, file: !70, line: 255, baseType: !74, size: 64, align: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !69, file: !70, line: 256, baseType: !74, size: 64, align: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !69, file: !70, line: 257, baseType: !74, size: 64, align: 64, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !69, file: !70, line: 258, baseType: !74, size: 64, align: 64, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !69, file: !70, line: 259, baseType: !74, size: 64, align: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !69, file: !70, line: 261, baseType: !74, size: 64, align: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !69, file: !70, line: 262, baseType: !74, size: 64, align: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !69, file: !70, line: 263, baseType: !74, size: 64, align: 64, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !69, file: !70, line: 265, baseType: !86, size: 64, align: 64, offset: 768)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !70, line: 161, size: 192, align: 64, elements: !88)
!88 = !{!89, !90, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !87, file: !70, line: 162, baseType: !86, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !87, file: !70, line: 163, baseType: !91, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !87, file: !70, line: 167, baseType: !9, size: 32, align: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !69, file: !70, line: 267, baseType: !91, size: 64, align: 64, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !69, file: !70, line: 269, baseType: !9, size: 32, align: 32, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !69, file: !70, line: 273, baseType: !9, size: 32, align: 32, offset: 928)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !69, file: !70, line: 275, baseType: !97, size: 64, align: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !39, line: 140, baseType: !40)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !69, file: !70, line: 279, baseType: !99, size: 16, align: 16, offset: 1024)
!99 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !69, file: !70, line: 280, baseType: !101, size: 8, align: 8, offset: 1040)
!101 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !69, file: !70, line: 281, baseType: !103, size: 8, align: 8, offset: 1048)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 1)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !69, file: !70, line: 285, baseType: !107, size: 64, align: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !70, line: 155, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !69, file: !70, line: 294, baseType: !110, size: 64, align: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !39, line: 141, baseType: !40)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !69, file: !70, line: 303, baseType: !27, size: 64, align: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !69, file: !70, line: 304, baseType: !27, size: 64, align: 64, offset: 1280)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !69, file: !70, line: 305, baseType: !27, size: 64, align: 64, offset: 1344)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !69, file: !70, line: 306, baseType: !27, size: 64, align: 64, offset: 1408)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !69, file: !70, line: 307, baseType: !116, size: 64, align: 64, offset: 1472)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 62, baseType: !118)
!117 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!118 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !69, file: !70, line: 309, baseType: !9, size: 32, align: 32, offset: 1536)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !69, file: !70, line: 311, baseType: !121, size: 160, align: 8, offset: 1568)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, align: 8, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 20)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !43, file: !30, line: 343, baseType: !125, size: 64, align: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !30, line: 316, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!28, !28, !74}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !43, file: !30, line: 344, baseType: !130, size: 64, align: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !30, line: 318, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!9, !28, !74, !28}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !43, file: !30, line: 345, baseType: !27, size: 64, align: 64, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !43, file: !30, line: 346, baseType: !136, size: 64, align: 64, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !30, line: 320, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!28, !28}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !43, file: !30, line: 350, baseType: !141, size: 64, align: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !30, line: 278, baseType: !143)
!143 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 236, size: 2176, align: 64, elements: !144)
!144 = !{!145, !150, !151, !152, !153, !154, !159, !161, !162, !163, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !143, file: !30, line: 241, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !30, line: 166, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!28, !28, !28}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !143, file: !30, line: 242, baseType: !146, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !143, file: !30, line: 243, baseType: !146, size: 64, align: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !143, file: !30, line: 244, baseType: !146, size: 64, align: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !143, file: !30, line: 245, baseType: !146, size: 64, align: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !143, file: !30, line: 246, baseType: !155, size: 64, align: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !30, line: 167, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!28, !28, !28, !28}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !143, file: !30, line: 247, baseType: !160, size: 64, align: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !30, line: 165, baseType: !137)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !143, file: !30, line: 248, baseType: !160, size: 64, align: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !143, file: !30, line: 249, baseType: !160, size: 64, align: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !143, file: !30, line: 250, baseType: !164, size: 64, align: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !30, line: 168, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!9, !28}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !143, file: !30, line: 251, baseType: !160, size: 64, align: 64, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !143, file: !30, line: 252, baseType: !146, size: 64, align: 64, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !143, file: !30, line: 253, baseType: !146, size: 64, align: 64, offset: 768)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !143, file: !30, line: 254, baseType: !146, size: 64, align: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !143, file: !30, line: 255, baseType: !146, size: 64, align: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !143, file: !30, line: 256, baseType: !146, size: 64, align: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !143, file: !30, line: 257, baseType: !160, size: 64, align: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !143, file: !30, line: 258, baseType: !27, size: 64, align: 64, offset: 1088)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !143, file: !30, line: 259, baseType: !160, size: 64, align: 64, offset: 1152)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !143, file: !30, line: 261, baseType: !146, size: 64, align: 64, offset: 1216)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !143, file: !30, line: 262, baseType: !146, size: 64, align: 64, offset: 1280)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !143, file: !30, line: 263, baseType: !146, size: 64, align: 64, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !143, file: !30, line: 264, baseType: !146, size: 64, align: 64, offset: 1408)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !143, file: !30, line: 265, baseType: !155, size: 64, align: 64, offset: 1472)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !143, file: !30, line: 266, baseType: !146, size: 64, align: 64, offset: 1536)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !143, file: !30, line: 267, baseType: !146, size: 64, align: 64, offset: 1600)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !143, file: !30, line: 268, baseType: !146, size: 64, align: 64, offset: 1664)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !143, file: !30, line: 269, baseType: !146, size: 64, align: 64, offset: 1728)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !143, file: !30, line: 270, baseType: !146, size: 64, align: 64, offset: 1792)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !143, file: !30, line: 272, baseType: !146, size: 64, align: 64, offset: 1856)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !143, file: !30, line: 273, baseType: !146, size: 64, align: 64, offset: 1920)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !143, file: !30, line: 274, baseType: !146, size: 64, align: 64, offset: 1984)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !143, file: !30, line: 275, baseType: !146, size: 64, align: 64, offset: 2048)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !143, file: !30, line: 277, baseType: !160, size: 64, align: 64, offset: 2112)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !43, file: !30, line: 351, baseType: !193, size: 64, align: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !30, line: 292, baseType: !195)
!195 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 280, size: 640, align: 64, elements: !196)
!196 = !{!197, !202, !203, !208, !209, !210, !215, !216, !221, !222}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !195, file: !30, line: 281, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !30, line: 169, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!34, !28}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !195, file: !30, line: 282, baseType: !146, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !195, file: !30, line: 283, baseType: !204, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !30, line: 170, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!28, !28, !34}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !195, file: !30, line: 284, baseType: !204, size: 64, align: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !195, file: !30, line: 285, baseType: !27, size: 64, align: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !195, file: !30, line: 286, baseType: !211, size: 64, align: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !30, line: 172, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!9, !28, !34, !28}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !195, file: !30, line: 287, baseType: !27, size: 64, align: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !195, file: !30, line: 288, baseType: !217, size: 64, align: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !30, line: 231, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!9, !28, !28}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !195, file: !30, line: 290, baseType: !146, size: 64, align: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !195, file: !30, line: 291, baseType: !204, size: 64, align: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !43, file: !30, line: 352, baseType: !224, size: 64, align: 64, offset: 896)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !30, line: 298, baseType: !226)
!226 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 294, size: 192, align: 64, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !226, file: !30, line: 295, baseType: !198, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !226, file: !30, line: 296, baseType: !146, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !226, file: !30, line: 297, baseType: !231, size: 64, align: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !30, line: 174, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!9, !28, !28, !28}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !43, file: !30, line: 356, baseType: !236, size: 64, align: 64, offset: 960)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !30, line: 321, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !28}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !35, line: 186, baseType: !34)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !43, file: !30, line: 357, baseType: !155, size: 64, align: 64, offset: 1024)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !43, file: !30, line: 358, baseType: !136, size: 64, align: 64, offset: 1088)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !43, file: !30, line: 359, baseType: !244, size: 64, align: 64, offset: 1152)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !30, line: 317, baseType: !147)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !43, file: !30, line: 360, baseType: !246, size: 64, align: 64, offset: 1216)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !30, line: 319, baseType: !232)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !43, file: !30, line: 363, baseType: !248, size: 64, align: 64, offset: 1280)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !30, line: 304, baseType: !250)
!250 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 301, size: 128, align: 64, elements: !251)
!251 = !{!252, !273}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !250, file: !30, line: 302, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !30, line: 193, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!9, !28, !257, !9}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !30, line: 191, baseType: !259)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !30, line: 178, size: 640, align: 64, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !270, !271, !272}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !259, file: !30, line: 179, baseType: !27, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !259, file: !30, line: 180, baseType: !28, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !259, file: !30, line: 181, baseType: !34, size: 64, align: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !259, file: !30, line: 182, baseType: !34, size: 64, align: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !259, file: !30, line: 184, baseType: !9, size: 32, align: 32, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !259, file: !30, line: 185, baseType: !9, size: 32, align: 32, offset: 288)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !259, file: !30, line: 186, baseType: !74, size: 64, align: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !259, file: !30, line: 187, baseType: !269, size: 64, align: 64, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !259, file: !30, line: 188, baseType: !269, size: 64, align: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !259, file: !30, line: 189, baseType: !269, size: 64, align: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !259, file: !30, line: 190, baseType: !27, size: 64, align: 64, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !250, file: !30, line: 303, baseType: !274, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !30, line: 194, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !28, !257}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !43, file: !30, line: 366, baseType: !118, size: 64, align: 64, offset: 1344)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !43, file: !30, line: 368, baseType: !52, size: 64, align: 64, offset: 1408)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !43, file: !30, line: 372, baseType: !281, size: 64, align: 64, offset: 1472)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !30, line: 233, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!9, !28, !285, !27}
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !30, line: 232, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!9, !28, !27}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !43, file: !30, line: 375, baseType: !164, size: 64, align: 64, offset: 1536)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !43, file: !30, line: 379, baseType: !291, size: 64, align: 64, offset: 1600)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !30, line: 322, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!28, !28, !28, !9}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !43, file: !30, line: 382, baseType: !34, size: 64, align: 64, offset: 1664)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !43, file: !30, line: 385, baseType: !297, size: 64, align: 64, offset: 1728)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !30, line: 323, baseType: !137)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !43, file: !30, line: 386, baseType: !299, size: 64, align: 64, offset: 1792)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !30, line: 324, baseType: !137)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !43, file: !30, line: 389, baseType: !301, size: 64, align: 64, offset: 1856)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !303, line: 40, size: 256, align: 64, elements: !304)
!303 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!304 = !{!305, !306, !308, !309}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !302, file: !303, line: 41, baseType: !52, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !302, file: !303, line: 42, baseType: !307, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !303, line: 18, baseType: !147)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !302, file: !303, line: 43, baseType: !9, size: 32, align: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !302, file: !303, line: 45, baseType: !52, size: 64, align: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !43, file: !30, line: 390, baseType: !311, size: 64, align: 64, offset: 1920)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !30, line: 390, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !43, file: !30, line: 391, baseType: !314, size: 64, align: 64, offset: 1984)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !316, line: 11, size: 320, align: 64, elements: !317)
!316 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!317 = !{!318, !319, !324, !329, !330}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !316, line: 12, baseType: !74, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !315, file: !316, line: 13, baseType: !320, size: 64, align: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !316, line: 8, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!28, !28, !27}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !315, file: !316, line: 14, baseType: !325, size: 64, align: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !316, line: 9, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!9, !28, !28, !27}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !315, file: !316, line: 15, baseType: !74, size: 64, align: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !315, file: !316, line: 16, baseType: !27, size: 64, align: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !43, file: !30, line: 392, baseType: !42, size: 64, align: 64, offset: 2048)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !43, file: !30, line: 393, baseType: !28, size: 64, align: 64, offset: 2112)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !43, file: !30, line: 394, baseType: !334, size: 64, align: 64, offset: 2176)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !30, line: 325, baseType: !156)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !43, file: !30, line: 395, baseType: !336, size: 64, align: 64, offset: 2240)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !30, line: 326, baseType: !232)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !43, file: !30, line: 396, baseType: !34, size: 64, align: 64, offset: 2304)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !43, file: !30, line: 397, baseType: !339, size: 64, align: 64, offset: 2368)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !30, line: 327, baseType: !232)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !43, file: !30, line: 398, baseType: !341, size: 64, align: 64, offset: 2432)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !30, line: 329, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!28, !42, !34}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !43, file: !30, line: 399, baseType: !346, size: 64, align: 64, offset: 2496)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !30, line: 328, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!28, !42, !28, !28}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !43, file: !30, line: 400, baseType: !351, size: 64, align: 64, offset: 2560)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !30, line: 307, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !27}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !43, file: !30, line: 401, baseType: !164, size: 64, align: 64, offset: 2624)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !43, file: !30, line: 402, baseType: !28, size: 64, align: 64, offset: 2688)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !43, file: !30, line: 403, baseType: !28, size: 64, align: 64, offset: 2752)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !43, file: !30, line: 404, baseType: !28, size: 64, align: 64, offset: 2816)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !43, file: !30, line: 405, baseType: !28, size: 64, align: 64, offset: 2880)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !43, file: !30, line: 406, baseType: !28, size: 64, align: 64, offset: 2944)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !43, file: !30, line: 407, baseType: !58, size: 64, align: 64, offset: 3008)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !43, file: !30, line: 410, baseType: !363, size: 32, align: 32, offset: 3072)
!363 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !43, file: !30, line: 412, baseType: !58, size: 64, align: 64, offset: 3136)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "traceback_t", file: !4, line: 79, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 75, size: 192, align: 64, elements: !368)
!368 = !{!369, !371, !372}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !367, file: !4, line: 76, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uhash_t", file: !35, line: 189, baseType: !116)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "nframe", scope: !367, file: !4, line: 77, baseType: !9, size: 32, align: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !367, file: !4, line: 78, baseType: !373, size: 96, align: 8, offset: 96)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 96, align: 8, elements: !104)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "frame_t", file: !4, line: 73, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 64, size: 96, align: 8, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !375, file: !4, line: 71, baseType: !28, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !375, file: !4, line: 72, baseType: !9, size: 32, align: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_t", file: !4, line: 97, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 91, size: 128, align: 64, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !381, file: !4, line: 93, baseType: !116, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "traceback", scope: !381, file: !4, line: 96, baseType: !365, size: 64, align: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !387, line: 33, baseType: !388)
!387 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!388 = !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 25, size: 256, align: 64, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !388, file: !387, line: 26, baseType: !46, size: 192, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !388, file: !387, line: 27, baseType: !392, size: 64, align: 64, offset: 192)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, align: 64, elements: !104)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_hash_func", file: !395, line: 41, baseType: !396)
!395 = !DIFile(filename: "./Modules/hashtable.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!370, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_compare_func", file: !395, line: 42, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!9, !399, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_entry_t", file: !395, line: 27, baseType: !408)
!408 = !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 19, size: 192, align: 64, elements: !409)
!409 = !{!410, !416, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_Py_slist_item", scope: !408, file: !395, line: 21, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_slist_item_t", file: !395, line: 9, baseType: !412)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_slist_item_s", file: !395, line: 7, size: 64, align: 64, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !395, line: 8, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !408, file: !395, line: 23, baseType: !399, size: 64, align: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "key_hash", scope: !408, file: !395, line: 24, baseType: !370, size: 64, align: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemAllocator", file: !16, line: 140, baseType: !420)
!420 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 128, size: 256, align: 64, elements: !421)
!421 = !{!422, !423, !427, !431}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !420, file: !16, line: 130, baseType: !27, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !420, file: !16, line: 133, baseType: !424, size: 64, align: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!27, !27, !116}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !420, file: !16, line: 136, baseType: !428, size: 64, align: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!27, !27, !27, !116}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !420, file: !16, line: 139, baseType: !432, size: 64, align: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !27, !27}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !437, line: 351, baseType: !438)
!437 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!438 = !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 217, size: 384, align: 64, elements: !439)
!439 = !{!440, !441, !442, !443, !451}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !438, file: !437, line: 291, baseType: !29, size: 128, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !438, file: !437, line: 292, baseType: !34, size: 64, align: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !438, file: !437, line: 293, baseType: !240, size: 64, align: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !438, file: !437, line: 349, baseType: !444, size: 32, align: 32, offset: 256)
!444 = !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !437, line: 294, size: 32, align: 32, elements: !445)
!445 = !{!446, !447, !448, !449, !450}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !444, file: !437, line: 303, baseType: !363, size: 2, align: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !444, file: !437, line: 331, baseType: !363, size: 3, align: 32, offset: 2)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !444, file: !437, line: 336, baseType: !363, size: 1, align: 32, offset: 5)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !444, file: !437, line: 340, baseType: !363, size: 1, align: 32, offset: 6)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !444, file: !437, line: 345, baseType: !363, size: 1, align: 32, offset: 7)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !438, file: !437, line: 350, baseType: !452, size: 64, align: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !117, line: 90, baseType: !9)
!454 = !{!455, !460, !478, !482, !485, !488, !493, !494, !502, !505, !512, !567, !574, !585, !602, !624, !636, !641, !648, !658, !664, !667, !668, !671, !676, !683, !684, !688, !694, !706, !716, !723, !730, !733, !743, !746, !752, !761, !771, !892, !907, !917, !921, !928, !933, !941, !950}
!455 = !DISubprogram(name: "PyInit__tracemalloc", scope: !4, file: !4, line: 1322, type: !456, isLocal: false, isDefinition: true, scopeLine: 1323, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__tracemalloc, variables: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{!28}
!458 = !{!459}
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !455, file: !4, line: 1324, type: !28)
!460 = !DISubprogram(name: "_PyTraceMalloc_Init", scope: !4, file: !4, line: 1364, type: !461, isLocal: false, isDefinition: true, scopeLine: 1365, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyTraceMalloc_Init, variables: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!9}
!463 = !{!464, !465, !466, !469, !470, !472, !473, !474, !476}
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !460, file: !4, line: 1366, type: !74)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nframe", scope: !460, file: !4, line: 1367, type: !9)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endptr", scope: !467, file: !4, line: 1374, type: !74)
!467 = distinct !DILexicalBlock(scope: !468, file: !4, line: 1373, column: 100)
!468 = distinct !DILexicalBlock(scope: !460, file: !4, line: 1373, column: 9)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !467, file: !4, line: 1375, type: !40)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xoptions", scope: !471, file: !4, line: 1391, type: !28)
!471 = distinct !DILexicalBlock(scope: !468, file: !4, line: 1390, column: 10)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !471, file: !4, line: 1391, type: !28)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !471, file: !4, line: 1391, type: !28)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !475, file: !4, line: 1402, type: !28)
!475 = distinct !DILexicalBlock(scope: !471, file: !4, line: 1402, column: 12)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !477, file: !4, line: 1412, type: !28)
!477 = distinct !DILexicalBlock(scope: !471, file: !4, line: 1412, column: 12)
!478 = !DISubprogram(name: "_PyTraceMalloc_Fini", scope: !4, file: !4, line: 1422, type: !479, isLocal: false, isDefinition: true, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyTraceMalloc_Fini, variables: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{null}
!481 = !{}
!482 = !DISubprogram(name: "py_tracemalloc_is_tracing", scope: !4, file: !4, line: 928, type: !138, isLocal: true, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @py_tracemalloc_is_tracing, variables: !483)
!483 = !{!484}
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !482, file: !4, line: 928, type: !28)
!485 = !DISubprogram(name: "py_tracemalloc_clear_traces", scope: !4, file: !4, line: 939, type: !138, isLocal: true, isDefinition: true, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @py_tracemalloc_clear_traces, variables: !486)
!486 = !{!487}
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !485, file: !4, line: 939, type: !28)
!488 = !DISubprogram(name: "set_reentrant", scope: !4, file: !4, line: 167, type: !489, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @set_reentrant, variables: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !9}
!491 = !{!492}
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reentrant", arg: 1, scope: !488, file: !4, line: 167, type: !9)
!493 = !DISubprogram(name: "tracemalloc_clear_traces", scope: !4, file: !4, line: 704, type: !479, isLocal: true, isDefinition: true, scopeLine: 705, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @tracemalloc_clear_traces, variables: !481)
!494 = !DISubprogram(name: "traceback_free_traceback", scope: !4, file: !4, line: 695, type: !495, isLocal: true, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_entry_t*, i8*)* @traceback_free_traceback, variables: !498)
!495 = !DISubroutineType(types: !496)
!496 = !{!9, !497, !27}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!498 = !{!499, !500, !501}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 1, scope: !494, file: !4, line: 695, type: !497)
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 2, scope: !494, file: !4, line: 695, type: !27)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !494, file: !4, line: 697, type: !365)
!502 = !DISubprogram(name: "raw_free", scope: !4, file: !4, line: 228, type: !353, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @raw_free, variables: !503)
!503 = !{!504}
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !502, file: !4, line: 228, type: !27)
!505 = !DISubprogram(name: "tracemalloc_clear_filename", scope: !4, file: !4, line: 687, type: !495, isLocal: true, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_clear_filename, variables: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 1, scope: !505, file: !4, line: 687, type: !497)
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 2, scope: !505, file: !4, line: 687, type: !27)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !505, file: !4, line: 689, type: !28)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !511, file: !4, line: 690, type: !28)
!511 = distinct !DILexicalBlock(scope: !505, file: !4, line: 690, column: 8)
!512 = !DISubprogram(name: "py_tracemalloc_get_traces", scope: !4, file: !4, line: 1087, type: !148, isLocal: true, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_tracemalloc_get_traces, variables: !513)
!513 = !{!514, !515, !516, !560, !561, !563}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !512, file: !4, line: 1087, type: !28)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !512, file: !4, line: 1087, type: !28)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "get_traces", scope: !512, file: !4, line: 1089, type: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_traces_t", file: !4, line: 1045, baseType: !518)
!518 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1041, size: 192, align: 64, elements: !519)
!519 = !{!520, !558, !559}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "traces", scope: !518, file: !4, line: 1042, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_t", file: !395, line: 67, baseType: !523)
!523 = !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 55, size: 704, align: 64, elements: !524)
!524 = !{!525, !526, !527, !534, !535, !536, !537, !542, !544, !549}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !523, file: !395, line: 56, baseType: !116, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !523, file: !395, line: 57, baseType: !116, size: 64, align: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !523, file: !395, line: 58, baseType: !528, size: 64, align: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_slist_t", file: !395, line: 13, baseType: !530)
!530 = !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 11, size: 64, align: 64, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !530, file: !395, line: 12, baseType: !533, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !523, file: !395, line: 59, baseType: !116, size: 64, align: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "hash_func", scope: !523, file: !395, line: 61, baseType: !394, size: 64, align: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "compare_func", scope: !523, file: !395, line: 62, baseType: !401, size: 64, align: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "copy_data_func", scope: !523, file: !395, line: 63, baseType: !538, size: 64, align: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_copy_data_func", file: !395, line: 43, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!27, !27}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "free_data_func", scope: !523, file: !395, line: 64, baseType: !543, size: 64, align: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_free_data_func", file: !395, line: 44, baseType: !352)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "get_data_size_func", scope: !523, file: !395, line: 65, baseType: !545, size: 64, align: 64, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_get_data_size_func", file: !395, line: 45, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!116, !27}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !523, file: !395, line: 66, baseType: !550, size: 128, align: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_allocator_t", file: !395, line: 53, baseType: !551)
!551 = !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 47, size: 128, align: 64, elements: !552)
!552 = !{!553, !557}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !551, file: !395, line: 49, baseType: !554, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!27, !116}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !551, file: !395, line: 52, baseType: !352, size: 64, align: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tracebacks", scope: !518, file: !4, line: 1043, baseType: !521, size: 64, align: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !518, file: !4, line: 1044, baseType: !28, size: 64, align: 64, offset: 128)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !512, file: !4, line: 1090, type: !9)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !562, file: !4, line: 1130, type: !28)
!562 = distinct !DILexicalBlock(scope: !512, file: !4, line: 1130, column: 8)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !564, file: !4, line: 1130, type: !28)
!564 = distinct !DILexicalBlock(scope: !565, file: !4, line: 1130, column: 125)
!565 = distinct !DILexicalBlock(scope: !566, file: !4, line: 1130, column: 88)
!566 = distinct !DILexicalBlock(scope: !562, file: !4, line: 1130, column: 65)
!567 = !DISubprogram(name: "hashtable_new", scope: !4, file: !4, line: 212, type: !568, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Py_hashtable_t* (i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*)* @hashtable_new, variables: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{!521, !116, !394, !401}
!570 = !{!571, !572, !573}
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 1, scope: !567, file: !4, line: 212, type: !116)
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash_func", arg: 2, scope: !567, file: !4, line: 213, type: !394)
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compare_func", arg: 3, scope: !567, file: !4, line: 214, type: !401)
!574 = !DISubprogram(name: "tracemalloc_get_traces_fill", scope: !4, file: !4, line: 1048, type: !495, isLocal: true, isDefinition: true, scopeLine: 1049, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_get_traces_fill, variables: !575)
!575 = !{!576, !577, !578, !580, !581, !582, !583}
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 1, scope: !574, file: !4, line: 1048, type: !497)
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 2, scope: !574, file: !4, line: 1048, type: !27)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "get_traces", scope: !574, file: !4, line: 1050, type: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !574, file: !4, line: 1051, type: !379)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracemalloc_obj", scope: !574, file: !4, line: 1052, type: !28)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !574, file: !4, line: 1053, type: !9)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !4, line: 1062, type: !28)
!584 = distinct !DILexicalBlock(scope: !574, file: !4, line: 1062, column: 8)
!585 = !DISubprogram(name: "trace_to_pyobject", scope: !4, file: !4, line: 1015, type: !586, isLocal: true, isDefinition: true, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.trace_t*, %struct._Py_hashtable_t*)* @trace_to_pyobject, variables: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!28, !379, !521}
!588 = !{!589, !590, !591, !592, !593, !594, !598}
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "trace", arg: 1, scope: !585, file: !4, line: 1015, type: !379)
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "intern_tracebacks", arg: 2, scope: !585, file: !4, line: 1015, type: !521)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace_obj", scope: !585, file: !4, line: 1017, type: !28)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !585, file: !4, line: 1018, type: !28)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !585, file: !4, line: 1018, type: !28)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !595, file: !4, line: 1026, type: !28)
!595 = distinct !DILexicalBlock(scope: !596, file: !4, line: 1026, column: 12)
!596 = distinct !DILexicalBlock(scope: !597, file: !4, line: 1025, column: 29)
!597 = distinct !DILexicalBlock(scope: !585, file: !4, line: 1025, column: 9)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !4, line: 1033, type: !28)
!599 = distinct !DILexicalBlock(scope: !600, file: !4, line: 1033, column: 12)
!600 = distinct !DILexicalBlock(scope: !601, file: !4, line: 1032, column: 34)
!601 = distinct !DILexicalBlock(scope: !585, file: !4, line: 1032, column: 9)
!602 = !DISubprogram(name: "traceback_to_pyobject", scope: !4, file: !4, line: 977, type: !603, isLocal: true, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.traceback_t*, %struct._Py_hashtable_t*)* @traceback_to_pyobject, variables: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!28, !365, !521}
!605 = !{!606, !607, !608, !609, !610, !611, !618}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback", arg: 1, scope: !602, file: !4, line: 977, type: !365)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "intern_table", arg: 2, scope: !602, file: !4, line: 977, type: !521)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !602, file: !4, line: 979, type: !9)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frames", scope: !602, file: !4, line: 980, type: !28)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame", scope: !602, file: !4, line: 980, type: !28)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !612, file: !4, line: 996, type: !28)
!612 = distinct !DILexicalBlock(scope: !613, file: !4, line: 996, column: 16)
!613 = distinct !DILexicalBlock(scope: !614, file: !4, line: 995, column: 34)
!614 = distinct !DILexicalBlock(scope: !615, file: !4, line: 995, column: 13)
!615 = distinct !DILexicalBlock(scope: !616, file: !4, line: 993, column: 43)
!616 = distinct !DILexicalBlock(scope: !617, file: !4, line: 993, column: 5)
!617 = distinct !DILexicalBlock(scope: !602, file: !4, line: 993, column: 5)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !619, file: !4, line: 1004, type: !28)
!619 = distinct !DILexicalBlock(scope: !620, file: !4, line: 1004, column: 16)
!620 = distinct !DILexicalBlock(scope: !621, file: !4, line: 1003, column: 88)
!621 = distinct !DILexicalBlock(scope: !622, file: !4, line: 1003, column: 13)
!622 = distinct !DILexicalBlock(scope: !623, file: !4, line: 1002, column: 37)
!623 = distinct !DILexicalBlock(scope: !602, file: !4, line: 1002, column: 9)
!624 = !DISubprogram(name: "frame_to_pyobject", scope: !4, file: !4, line: 952, type: !625, isLocal: true, isDefinition: true, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.frame_t*)* @frame_to_pyobject, variables: !628)
!625 = !DISubroutineType(types: !626)
!626 = !{!28, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!628 = !{!629, !630, !631, !632}
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "frame", arg: 1, scope: !624, file: !4, line: 952, type: !627)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame_obj", scope: !624, file: !4, line: 954, type: !28)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno_obj", scope: !624, file: !4, line: 954, type: !28)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !633, file: !4, line: 968, type: !28)
!633 = distinct !DILexicalBlock(scope: !634, file: !4, line: 968, column: 12)
!634 = distinct !DILexicalBlock(scope: !635, file: !4, line: 967, column: 35)
!635 = distinct !DILexicalBlock(scope: !624, file: !4, line: 967, column: 9)
!636 = !DISubprogram(name: "lineno_as_obj", scope: !4, file: !4, line: 913, type: !637, isLocal: true, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32)* @lineno_as_obj, variables: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!28, !9}
!639 = !{!640}
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 1, scope: !636, file: !4, line: 913, type: !9)
!641 = !DISubprogram(name: "tracemalloc_pyobject_decref_cb", scope: !4, file: !4, line: 1070, type: !495, isLocal: true, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_pyobject_decref_cb, variables: !642)
!642 = !{!643, !644, !645, !646}
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 1, scope: !641, file: !4, line: 1070, type: !497)
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 2, scope: !641, file: !4, line: 1070, type: !27)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !641, file: !4, line: 1072, type: !28)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !647, file: !4, line: 1073, type: !28)
!647 = distinct !DILexicalBlock(scope: !641, file: !4, line: 1073, column: 8)
!648 = !DISubprogram(name: "py_tracemalloc_get_object_traceback", scope: !4, file: !4, line: 1154, type: !148, isLocal: true, isDefinition: true, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_tracemalloc_get_object_traceback, variables: !649)
!649 = !{!650, !651, !652, !655, !656, !657}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !648, file: !4, line: 1154, type: !28)
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !648, file: !4, line: 1154, type: !28)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !648, file: !4, line: 1156, type: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !30, line: 422, baseType: !43)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !648, file: !4, line: 1157, type: !27)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !648, file: !4, line: 1158, type: !380)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !648, file: !4, line: 1159, type: !9)
!658 = !DISubprogram(name: "py_tracemalloc_start", scope: !4, file: !4, line: 1187, type: !148, isLocal: true, isDefinition: true, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_tracemalloc_start, variables: !659)
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !658, file: !4, line: 1187, type: !28)
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !658, file: !4, line: 1187, type: !28)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nframe", scope: !658, file: !4, line: 1189, type: !34)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nframe_int", scope: !658, file: !4, line: 1190, type: !9)
!664 = !DISubprogram(name: "py_tracemalloc_stop", scope: !4, file: !4, line: 1216, type: !138, isLocal: true, isDefinition: true, scopeLine: 1217, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @py_tracemalloc_stop, variables: !665)
!665 = !{!666}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !664, file: !4, line: 1216, type: !28)
!667 = !DISubprogram(name: "tracemalloc_stop", scope: !4, file: !4, line: 887, type: !479, isLocal: true, isDefinition: true, scopeLine: 888, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @tracemalloc_stop, variables: !481)
!668 = !DISubprogram(name: "py_tracemalloc_get_traceback_limit", scope: !4, file: !4, line: 1232, type: !138, isLocal: true, isDefinition: true, scopeLine: 1233, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @py_tracemalloc_get_traceback_limit, variables: !669)
!669 = !{!670}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !668, file: !4, line: 1232, type: !28)
!671 = !DISubprogram(name: "tracemalloc_get_tracemalloc_memory", scope: !4, file: !4, line: 1244, type: !138, isLocal: true, isDefinition: true, scopeLine: 1245, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @tracemalloc_get_tracemalloc_memory, variables: !672)
!672 = !{!673, !674, !675}
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !671, file: !4, line: 1244, type: !28)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !671, file: !4, line: 1246, type: !116)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size_obj", scope: !671, file: !4, line: 1247, type: !28)
!676 = !DISubprogram(name: "tracemalloc_get_traced_memory", scope: !4, file: !4, line: 1267, type: !138, isLocal: true, isDefinition: true, scopeLine: 1268, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @tracemalloc_get_traced_memory, variables: !677)
!677 = !{!678, !679, !680, !681, !682}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !676, file: !4, line: 1267, type: !28)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !676, file: !4, line: 1269, type: !34)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "peak_size", scope: !676, file: !4, line: 1269, type: !34)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size_obj", scope: !676, file: !4, line: 1270, type: !28)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "peak_size_obj", scope: !676, file: !4, line: 1270, type: !28)
!683 = !DISubprogram(name: "tracemalloc_init", scope: !4, file: !4, line: 729, type: !461, isLocal: true, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @tracemalloc_init, variables: !481)
!684 = !DISubprogram(name: "hashtable_compare_unicode", scope: !4, file: !4, line: 201, type: !403, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_unicode, variables: !685)
!685 = !{!686, !687}
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !684, file: !4, line: 201, type: !399)
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 2, scope: !684, file: !4, line: 201, type: !405)
!688 = !DISubprogram(name: "hashtable_hash_traceback", scope: !4, file: !4, line: 234, type: !397, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*)* @hashtable_hash_traceback, variables: !689)
!689 = !{!690, !691}
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !688, file: !4, line: 234, type: !399)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !688, file: !4, line: 236, type: !692)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!694 = !DISubprogram(name: "hashtable_compare_traceback", scope: !4, file: !4, line: 241, type: !695, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.traceback_t*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_traceback, variables: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!9, !692, !405}
!697 = !{!698, !699, !700, !701, !704, !705}
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback1", arg: 1, scope: !694, file: !4, line: 241, type: !692)
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "he", arg: 2, scope: !694, file: !4, line: 242, type: !405)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback2", scope: !694, file: !4, line: 244, type: !692)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame1", scope: !694, file: !4, line: 245, type: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame2", scope: !694, file: !4, line: 245, type: !702)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !694, file: !4, line: 246, type: !9)
!706 = !DISubprogram(name: "traceback_hash", scope: !4, file: !4, line: 337, type: !707, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.traceback_t*)* @traceback_hash, variables: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{!370, !365}
!709 = !{!710, !711, !712, !713, !714, !715}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback", arg: 1, scope: !706, file: !4, line: 337, type: !365)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !706, file: !4, line: 340, type: !370)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !706, file: !4, line: 340, type: !370)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !706, file: !4, line: 341, type: !9)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mult", scope: !706, file: !4, line: 342, type: !370)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame", scope: !706, file: !4, line: 343, type: !627)
!716 = !DISubprogram(name: "parse_sys_xoptions", scope: !4, file: !4, line: 1336, type: !166, isLocal: true, isDefinition: true, scopeLine: 1337, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @parse_sys_xoptions, variables: !717)
!717 = !{!718, !719, !720, !721}
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 1, scope: !716, file: !4, line: 1336, type: !28)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "valuelong", scope: !716, file: !4, line: 1338, type: !28)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nframe", scope: !716, file: !4, line: 1339, type: !40)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !722, file: !4, line: 1353, type: !28)
!722 = distinct !DILexicalBlock(scope: !716, file: !4, line: 1353, column: 8)
!723 = !DISubprogram(name: "tracemalloc_start", scope: !4, file: !4, line: 832, type: !724, isLocal: true, isDefinition: true, scopeLine: 833, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @tracemalloc_start, variables: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!9, !9}
!726 = !{!727, !728, !729}
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max_nframe", arg: 1, scope: !723, file: !4, line: 832, type: !9)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !723, file: !4, line: 834, type: !419)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !723, file: !4, line: 835, type: !116)
!730 = !DISubprogram(name: "raw_malloc", scope: !4, file: !4, line: 222, type: !555, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64)* @raw_malloc, variables: !731)
!731 = !{!732}
!732 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !730, file: !4, line: 222, type: !116)
!733 = !DISubprogram(name: "tracemalloc_raw_malloc", scope: !4, file: !4, line: 617, type: !425, isLocal: true, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @tracemalloc_raw_malloc, variables: !734)
!734 = !{!735, !736, !737, !739, !740}
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !733, file: !4, line: 617, type: !27)
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !733, file: !4, line: 617, type: !116)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gil_state", scope: !733, file: !4, line: 620, type: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGILState_STATE", file: !22, line: 191, baseType: !21)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !733, file: !4, line: 622, type: !27)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !741, file: !4, line: 625, type: !418)
!741 = distinct !DILexicalBlock(scope: !742, file: !4, line: 624, column: 26)
!742 = distinct !DILexicalBlock(scope: !733, file: !4, line: 624, column: 9)
!743 = !DISubprogram(name: "get_reentrant", scope: !4, file: !4, line: 155, type: !461, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @get_reentrant, variables: !744)
!744 = !{!745}
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !743, file: !4, line: 157, type: !27)
!746 = !DISubprogram(name: "tracemalloc_malloc", scope: !4, file: !4, line: 479, type: !425, isLocal: true, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @tracemalloc_malloc, variables: !747)
!747 = !{!748, !749, !750, !751}
!748 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !746, file: !4, line: 479, type: !27)
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !746, file: !4, line: 479, type: !116)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !746, file: !4, line: 481, type: !418)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !746, file: !4, line: 482, type: !27)
!752 = !DISubprogram(name: "tracemalloc_add_trace", scope: !4, file: !4, line: 439, type: !753, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64)* @tracemalloc_add_trace, variables: !755)
!753 = !DISubroutineType(types: !754)
!754 = !{!9, !27, !116}
!755 = !{!756, !757, !758, !759, !760}
!756 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !752, file: !4, line: 439, type: !27)
!757 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !752, file: !4, line: 439, type: !116)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !752, file: !4, line: 441, type: !365)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !752, file: !4, line: 442, type: !380)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !752, file: !4, line: 443, type: !9)
!761 = !DISubprogram(name: "traceback_new", scope: !4, file: !4, line: 389, type: !762, isLocal: true, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, function: %struct.traceback_t* ()* @traceback_new, variables: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{!365}
!764 = !{!765, !766, !767, !770}
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !761, file: !4, line: 391, type: !365)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !761, file: !4, line: 392, type: !497)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "copy", scope: !768, file: !4, line: 412, type: !365)
!768 = distinct !DILexicalBlock(scope: !769, file: !4, line: 411, column: 10)
!769 = distinct !DILexicalBlock(scope: !761, file: !4, line: 408, column: 9)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback_size", scope: !768, file: !4, line: 413, type: !116)
!771 = !DISubprogram(name: "traceback_get_frames", scope: !4, file: !4, line: 361, type: !772, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.traceback_t*)* @traceback_get_frames, variables: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !365}
!774 = !{!775, !776, !889}
!775 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback", arg: 1, scope: !771, file: !4, line: 361, type: !365)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !771, file: !4, line: 363, type: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !22, line: 139, baseType: !779)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !22, line: 69, size: 1536, align: 64, elements: !780)
!780 = !{!781, !783, !784, !804, !862, !863, !864, !865, !866, !867, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !779, file: !22, line: 72, baseType: !782, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64, align: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !22, line: 73, baseType: !782, size: 64, align: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !779, file: !22, line: 74, baseType: !785, size: 64, align: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !22, line: 44, baseType: !787)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !22, line: 19, size: 832, align: 64, elements: !788)
!788 = !{!789, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !787, file: !22, line: 21, baseType: !790, size: 64, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !787, file: !22, line: 22, baseType: !782, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !787, file: !22, line: 24, baseType: !28, size: 64, align: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !787, file: !22, line: 25, baseType: !28, size: 64, align: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !787, file: !22, line: 26, baseType: !28, size: 64, align: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !787, file: !22, line: 27, baseType: !28, size: 64, align: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !787, file: !22, line: 28, baseType: !28, size: 64, align: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !787, file: !22, line: 30, baseType: !28, size: 64, align: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !787, file: !22, line: 31, baseType: !28, size: 64, align: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !787, file: !22, line: 32, baseType: !28, size: 64, align: 64, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !787, file: !22, line: 33, baseType: !9, size: 32, align: 32, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !787, file: !22, line: 34, baseType: !9, size: 32, align: 32, offset: 672)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !787, file: !22, line: 37, baseType: !9, size: 32, align: 32, offset: 704)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !787, file: !22, line: 43, baseType: !28, size: 64, align: 64, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !779, file: !22, line: 76, baseType: !805, size: 64, align: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64, align: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !807, line: 17, size: 3072, align: 64, elements: !808)
!807 = !DIFile(filename: "Include/frameobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!808 = !{!809, !810, !811, !838, !839, !840, !841, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !861}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !806, file: !807, line: 18, baseType: !46, size: 192, align: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !806, file: !807, line: 19, baseType: !805, size: 64, align: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !806, file: !807, line: 20, baseType: !812, size: 64, align: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !814, line: 33, baseType: !815)
!814 = !DIFile(filename: "Include/code.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!815 = !DICompositeType(tag: DW_TAG_structure_type, file: !814, line: 11, size: 1152, align: 64, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !832, !833, !834, !835, !836, !837}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !815, file: !814, line: 12, baseType: !29, size: 128, align: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !815, file: !814, line: 13, baseType: !9, size: 32, align: 32, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !815, file: !814, line: 14, baseType: !9, size: 32, align: 32, offset: 160)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !815, file: !814, line: 15, baseType: !9, size: 32, align: 32, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !815, file: !814, line: 16, baseType: !9, size: 32, align: 32, offset: 224)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !815, file: !814, line: 17, baseType: !9, size: 32, align: 32, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !815, file: !814, line: 18, baseType: !28, size: 64, align: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !815, file: !814, line: 19, baseType: !28, size: 64, align: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !815, file: !814, line: 20, baseType: !28, size: 64, align: 64, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !815, file: !814, line: 21, baseType: !28, size: 64, align: 64, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !815, file: !814, line: 22, baseType: !28, size: 64, align: 64, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !815, file: !814, line: 23, baseType: !28, size: 64, align: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !815, file: !814, line: 25, baseType: !830, size: 64, align: 64, offset: 704)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64, align: 64)
!831 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !815, file: !814, line: 26, baseType: !28, size: 64, align: 64, offset: 768)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !815, file: !814, line: 27, baseType: !28, size: 64, align: 64, offset: 832)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !815, file: !814, line: 28, baseType: !9, size: 32, align: 32, offset: 896)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !815, file: !814, line: 29, baseType: !28, size: 64, align: 64, offset: 960)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !815, file: !814, line: 31, baseType: !27, size: 64, align: 64, offset: 1024)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !815, file: !814, line: 32, baseType: !28, size: 64, align: 64, offset: 1088)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !806, file: !807, line: 21, baseType: !28, size: 64, align: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !806, file: !807, line: 22, baseType: !28, size: 64, align: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !806, file: !807, line: 23, baseType: !28, size: 64, align: 64, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "f_valuestack", scope: !806, file: !807, line: 24, baseType: !842, size: 64, align: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "f_stacktop", scope: !806, file: !807, line: 28, baseType: !842, size: 64, align: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !806, file: !807, line: 29, baseType: !28, size: 64, align: 64, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_type", scope: !806, file: !807, line: 38, baseType: !28, size: 64, align: 64, offset: 704)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_value", scope: !806, file: !807, line: 38, baseType: !28, size: 64, align: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_traceback", scope: !806, file: !807, line: 38, baseType: !28, size: 64, align: 64, offset: 832)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "f_gen", scope: !806, file: !807, line: 40, baseType: !28, size: 64, align: 64, offset: 896)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "f_lasti", scope: !806, file: !807, line: 42, baseType: !9, size: 32, align: 32, offset: 960)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !806, file: !807, line: 48, baseType: !9, size: 32, align: 32, offset: 992)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "f_iblock", scope: !806, file: !807, line: 49, baseType: !9, size: 32, align: 32, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "f_executing", scope: !806, file: !807, line: 50, baseType: !54, size: 8, align: 8, offset: 1056)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "f_blockstack", scope: !806, file: !807, line: 51, baseType: !854, size: 1920, align: 32, offset: 1088)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 1920, align: 32, elements: !122)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTryBlock", file: !807, line: 15, baseType: !856)
!856 = !DICompositeType(tag: DW_TAG_structure_type, file: !807, line: 11, size: 96, align: 32, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "b_type", scope: !856, file: !807, line: 12, baseType: !9, size: 32, align: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "b_handler", scope: !856, file: !807, line: 13, baseType: !9, size: 32, align: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "b_level", scope: !856, file: !807, line: 14, baseType: !9, size: 32, align: 32, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "f_localsplus", scope: !806, file: !807, line: 52, baseType: !392, size: 64, align: 64, offset: 3008)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !779, file: !22, line: 77, baseType: !9, size: 32, align: 32, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !779, file: !22, line: 78, baseType: !54, size: 8, align: 8, offset: 288)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !779, file: !22, line: 80, baseType: !54, size: 8, align: 8, offset: 296)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !779, file: !22, line: 85, baseType: !9, size: 32, align: 32, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !779, file: !22, line: 86, baseType: !9, size: 32, align: 32, offset: 352)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !779, file: !22, line: 88, baseType: !868, size: 64, align: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !22, line: 54, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64, align: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!9, !28, !805, !9, !28}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !779, file: !22, line: 89, baseType: !868, size: 64, align: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !779, file: !22, line: 90, baseType: !28, size: 64, align: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !779, file: !22, line: 91, baseType: !28, size: 64, align: 64, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !779, file: !22, line: 93, baseType: !28, size: 64, align: 64, offset: 640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !779, file: !22, line: 94, baseType: !28, size: 64, align: 64, offset: 704)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !779, file: !22, line: 95, baseType: !28, size: 64, align: 64, offset: 768)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !779, file: !22, line: 97, baseType: !28, size: 64, align: 64, offset: 832)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !779, file: !22, line: 98, baseType: !28, size: 64, align: 64, offset: 896)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !779, file: !22, line: 99, baseType: !28, size: 64, align: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !779, file: !22, line: 101, baseType: !28, size: 64, align: 64, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !779, file: !22, line: 103, baseType: !9, size: 32, align: 32, offset: 1088)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !779, file: !22, line: 105, baseType: !28, size: 64, align: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !779, file: !22, line: 106, baseType: !40, size: 64, align: 64, offset: 1216)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !779, file: !22, line: 108, baseType: !9, size: 32, align: 32, offset: 1280)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !779, file: !22, line: 109, baseType: !28, size: 64, align: 64, offset: 1344)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !779, file: !22, line: 134, baseType: !352, size: 64, align: 64, offset: 1408)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !779, file: !22, line: 135, baseType: !27, size: 64, align: 64, offset: 1472)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pyframe", scope: !771, file: !4, line: 364, type: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64, align: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFrameObject", file: !807, line: 53, baseType: !806)
!892 = !DISubprogram(name: "tracemalloc_get_frame", scope: !4, file: !4, line: 267, type: !893, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._frame*, %struct.frame_t*)* @tracemalloc_get_frame, variables: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !890, !627}
!895 = !{!896, !897, !898, !899, !900, !901}
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pyframe", arg: 1, scope: !892, file: !4, line: 267, type: !890)
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "frame", arg: 2, scope: !892, file: !4, line: 267, type: !627)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !892, file: !4, line: 269, type: !812)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !892, file: !4, line: 270, type: !28)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !892, file: !4, line: 271, type: !497)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !902, file: !4, line: 324, type: !28)
!902 = distinct !DILexicalBlock(scope: !903, file: !4, line: 324, column: 16)
!903 = distinct !DILexicalBlock(scope: !904, file: !4, line: 323, column: 84)
!904 = distinct !DILexicalBlock(scope: !905, file: !4, line: 323, column: 13)
!905 = distinct !DILexicalBlock(scope: !906, file: !4, line: 319, column: 10)
!906 = distinct !DILexicalBlock(scope: !892, file: !4, line: 316, column: 9)
!907 = !DISubprogram(name: "tracemalloc_raw_realloc", scope: !4, file: !4, line: 647, type: !429, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @tracemalloc_raw_realloc, variables: !908)
!908 = !{!909, !910, !911, !912, !913, !914}
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !907, file: !4, line: 647, type: !27)
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !907, file: !4, line: 647, type: !27)
!911 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 3, scope: !907, file: !4, line: 647, type: !116)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gil_state", scope: !907, file: !4, line: 650, type: !738)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr2", scope: !907, file: !4, line: 652, type: !27)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !915, file: !4, line: 656, type: !418)
!915 = distinct !DILexicalBlock(scope: !916, file: !4, line: 654, column: 26)
!916 = distinct !DILexicalBlock(scope: !907, file: !4, line: 654, column: 9)
!917 = !DISubprogram(name: "tracemalloc_remove_trace", scope: !4, file: !4, line: 468, type: !353, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @tracemalloc_remove_trace, variables: !918)
!918 = !{!919, !920}
!919 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !917, file: !4, line: 468, type: !27)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !917, file: !4, line: 470, type: !380)
!921 = !DISubprogram(name: "tracemalloc_realloc", scope: !4, file: !4, line: 500, type: !429, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @tracemalloc_realloc, variables: !922)
!922 = !{!923, !924, !925, !926, !927}
!923 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !921, file: !4, line: 500, type: !27)
!924 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !921, file: !4, line: 500, type: !27)
!925 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 3, scope: !921, file: !4, line: 500, type: !116)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !921, file: !4, line: 502, type: !418)
!927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr2", scope: !921, file: !4, line: 503, type: !27)
!928 = !DISubprogram(name: "tracemalloc_free", scope: !4, file: !4, line: 545, type: !433, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @tracemalloc_free, variables: !929)
!929 = !{!930, !931, !932}
!930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !928, file: !4, line: 545, type: !27)
!931 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !928, file: !4, line: 545, type: !27)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !928, file: !4, line: 547, type: !418)
!933 = !DISubprogram(name: "tracemalloc_malloc_gil", scope: !4, file: !4, line: 563, type: !425, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @tracemalloc_malloc_gil, variables: !934)
!934 = !{!935, !936, !937, !938}
!935 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !933, file: !4, line: 563, type: !27)
!936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !933, file: !4, line: 563, type: !116)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !933, file: !4, line: 565, type: !27)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !939, file: !4, line: 568, type: !418)
!939 = distinct !DILexicalBlock(scope: !940, file: !4, line: 567, column: 26)
!940 = distinct !DILexicalBlock(scope: !933, file: !4, line: 567, column: 9)
!941 = !DISubprogram(name: "tracemalloc_realloc_gil", scope: !4, file: !4, line: 584, type: !429, isLocal: true, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @tracemalloc_realloc_gil, variables: !942)
!942 = !{!943, !944, !945, !946, !947}
!943 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !941, file: !4, line: 584, type: !27)
!944 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !941, file: !4, line: 584, type: !27)
!945 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 3, scope: !941, file: !4, line: 584, type: !116)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr2", scope: !941, file: !4, line: 586, type: !27)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !948, file: !4, line: 593, type: !418)
!948 = distinct !DILexicalBlock(scope: !949, file: !4, line: 588, column: 26)
!949 = distinct !DILexicalBlock(scope: !941, file: !4, line: 588, column: 9)
!950 = !DISubprogram(name: "tracemalloc_deinit", scope: !4, file: !4, line: 804, type: !479, isLocal: true, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @tracemalloc_deinit, variables: !951)
!951 = !{!952, !954}
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !953, file: !4, line: 828, type: !28)
!953 = distinct !DILexicalBlock(scope: !950, file: !4, line: 828, column: 8)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !955, file: !4, line: 828, type: !28)
!955 = distinct !DILexicalBlock(scope: !956, file: !4, line: 828, column: 108)
!956 = distinct !DILexicalBlock(scope: !953, file: !4, line: 828, column: 74)
!957 = !{!958, !981, !985, !989, !990, !994, !995, !998, !999, !1000, !1001, !1002, !1008, !1009, !1013, !1014, !1018, !1022, !1026, !1027, !1031, !1035, !1039, !1043, !1044}
!958 = !DIGlobalVariable(name: "module_def", scope: !0, file: !4, line: 1312, type: !959, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @module_def)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !960, line: 47, size: 832, align: 64, elements: !961)
!960 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!961 = !{!962, !971, !972, !973, !974, !977, !978, !979, !980}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !959, file: !960, line: 48, baseType: !963, size: 320, align: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !960, line: 38, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !960, line: 33, size: 320, align: 64, elements: !965)
!965 = !{!966, !967, !969, !970}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !964, file: !960, line: 34, baseType: !29, size: 128, align: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !964, file: !960, line: 35, baseType: !968, size: 64, align: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !964, file: !960, line: 36, baseType: !34, size: 64, align: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !964, file: !960, line: 37, baseType: !28, size: 64, align: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !959, file: !960, line: 49, baseType: !52, size: 64, align: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !959, file: !960, line: 50, baseType: !52, size: 64, align: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !959, file: !960, line: 51, baseType: !34, size: 64, align: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !959, file: !960, line: 52, baseType: !975, size: 64, align: 64, offset: 512)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64, align: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !303, line: 47, baseType: !302)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !959, file: !960, line: 53, baseType: !164, size: 64, align: 64, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !959, file: !960, line: 54, baseType: !281, size: 64, align: 64, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !959, file: !960, line: 55, baseType: !164, size: 64, align: 64, offset: 704)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !959, file: !960, line: 56, baseType: !351, size: 64, align: 64, offset: 768)
!981 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !4, line: 1309, type: !982, isLocal: true, isDefinition: true, variable: [57 x i8]* @module_doc)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 456, align: 8, elements: !983)
!983 = !{!984}
!984 = !DISubrange(count: 57)
!985 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !4, line: 1285, type: !986, isLocal: true, isDefinition: true, variable: [10 x %struct.PyMethodDef]* @module_methods)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 2560, align: 64, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 10)
!989 = !DIGlobalVariable(name: "tracemalloc_config", scope: !0, file: !4, line: 45, type: !5, isLocal: true, isDefinition: true, variable: %struct.anon* @tracemalloc_config)
!990 = !DIGlobalVariable(name: "tracemalloc_is_tracing_doc", scope: !0, file: !4, line: 921, type: !991, isLocal: true, isDefinition: true, variable: [106 x i8]* @tracemalloc_is_tracing_doc)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 848, align: 8, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 106)
!994 = !DIGlobalVariable(name: "tracemalloc_reentrant_key", scope: !0, file: !4, line: 149, type: !9, isLocal: true, isDefinition: true, variable: i32* @tracemalloc_reentrant_key)
!995 = !DIGlobalVariable(name: "tables_lock", scope: !0, file: !4, line: 51, type: !996, isLocal: true, isDefinition: true, variable: i8** @tables_lock)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !997, line: 5, baseType: !27)
!997 = !DIFile(filename: "Include/pythread.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!998 = !DIGlobalVariable(name: "tracemalloc_traces", scope: !0, file: !4, line: 123, type: !521, isLocal: true, isDefinition: true, variable: %struct._Py_hashtable_t** @tracemalloc_traces)
!999 = !DIGlobalVariable(name: "tracemalloc_traced_memory", scope: !0, file: !4, line: 101, type: !116, isLocal: true, isDefinition: true, variable: i64* @tracemalloc_traced_memory)
!1000 = !DIGlobalVariable(name: "tracemalloc_peak_traced_memory", scope: !0, file: !4, line: 105, type: !116, isLocal: true, isDefinition: true, variable: i64* @tracemalloc_peak_traced_memory)
!1001 = !DIGlobalVariable(name: "tracemalloc_tracebacks", scope: !0, file: !4, line: 119, type: !521, isLocal: true, isDefinition: true, variable: %struct._Py_hashtable_t** @tracemalloc_tracebacks)
!1002 = !DIGlobalVariable(name: "allocators", scope: !0, file: !4, line: 27, type: !1003, isLocal: true, isDefinition: true, variable: %struct.anon.0* @allocators)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 23, size: 768, align: 64, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1003, file: !4, line: 24, baseType: !419, size: 256, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1003, file: !4, line: 25, baseType: !419, size: 256, align: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !1003, file: !4, line: 26, baseType: !419, size: 256, align: 64, offset: 512)
!1008 = !DIGlobalVariable(name: "tracemalloc_filenames", scope: !0, file: !4, line: 110, type: !521, isLocal: true, isDefinition: true, variable: %struct._Py_hashtable_t** @tracemalloc_filenames)
!1009 = !DIGlobalVariable(name: "tracemalloc_clear_traces_doc", scope: !0, file: !4, line: 933, type: !1010, isLocal: true, isDefinition: true, variable: [67 x i8]* @tracemalloc_clear_traces_doc)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 536, align: 8, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 67)
!1013 = !DIGlobalVariable(name: "hashtable_alloc", scope: !0, file: !4, line: 209, type: !550, isLocal: true, isDefinition: true, variable: %struct._Py_hashtable_allocator_t* @hashtable_alloc)
!1014 = !DIGlobalVariable(name: "tracemalloc_get_traces_doc", scope: !0, file: !4, line: 1077, type: !1015, isLocal: true, isDefinition: true, variable: [253 x i8]* @tracemalloc_get_traces_doc)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2024, align: 8, elements: !1016)
!1016 = !{!1017}
!1017 = !DISubrange(count: 253)
!1018 = !DIGlobalVariable(name: "tracemalloc_get_object_traceback_doc", scope: !0, file: !4, line: 1144, type: !1019, isLocal: true, isDefinition: true, variable: [242 x i8]* @tracemalloc_get_object_traceback_doc)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1936, align: 8, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 242)
!1022 = !DIGlobalVariable(name: "tracemalloc_start_doc", scope: !0, file: !4, line: 1180, type: !1023, isLocal: true, isDefinition: true, variable: [148 x i8]* @tracemalloc_start_doc)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1184, align: 8, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 148)
!1026 = !DIGlobalVariable(name: "tracemalloc_traceback", scope: !0, file: !4, line: 114, type: !365, isLocal: true, isDefinition: true, variable: %struct.traceback_t** @tracemalloc_traceback)
!1027 = !DIGlobalVariable(name: "tracemalloc_stop_doc", scope: !0, file: !4, line: 1209, type: !1028, isLocal: true, isDefinition: true, variable: [102 x i8]* @tracemalloc_stop_doc)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 816, align: 8, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 102)
!1031 = !DIGlobalVariable(name: "tracemalloc_get_traceback_limit_doc", scope: !0, file: !4, line: 1222, type: !1032, isLocal: true, isDefinition: true, variable: [200 x i8]* @tracemalloc_get_traceback_limit_doc)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1600, align: 8, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 200)
!1035 = !DIGlobalVariable(name: "tracemalloc_get_tracemalloc_memory_doc", scope: !0, file: !4, line: 1237, type: !1036, isLocal: true, isDefinition: true, variable: [134 x i8]* @tracemalloc_get_tracemalloc_memory_doc)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1072, align: 8, elements: !1037)
!1037 = !{!1038}
!1038 = !DISubrange(count: 134)
!1039 = !DIGlobalVariable(name: "tracemalloc_get_traced_memory_doc", scope: !0, file: !4, line: 1260, type: !1040, isLocal: true, isDefinition: true, variable: [159 x i8]* @tracemalloc_get_traced_memory_doc)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1272, align: 8, elements: !1041)
!1041 = !{!1042}
!1042 = !DISubrange(count: 159)
!1043 = !DIGlobalVariable(name: "unknown_filename", scope: !0, file: !4, line: 87, type: !28, isLocal: true, isDefinition: true, variable: %struct._object** @unknown_filename)
!1044 = !DIGlobalVariable(name: "tracemalloc_empty_traceback", scope: !0, file: !4, line: 88, type: !366, isLocal: true, isDefinition: true, variable: %struct.traceback_t* @tracemalloc_empty_traceback)
!1045 = !{i32 2, !"Dwarf Version", i32 4}
!1046 = !{i32 2, !"Debug Info Version", i32 3}
!1047 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1048 = !DILocation(line: 1324, column: 5, scope: !455)
!1049 = !DIExpression()
!1050 = !DILocation(line: 1324, column: 15, scope: !455)
!1051 = !DILocation(line: 1325, column: 9, scope: !455)
!1052 = !DILocation(line: 1325, column: 7, scope: !455)
!1053 = !{!1054, !1054, i64 0}
!1054 = !{!"any pointer", !1055, i64 0}
!1055 = !{!"omnipotent char", !1056, i64 0}
!1056 = !{!"Simple C/C++ TBAA"}
!1057 = !DILocation(line: 1326, column: 9, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !455, file: !4, line: 1326, column: 9)
!1059 = !DILocation(line: 1326, column: 11, scope: !1058)
!1060 = !DILocation(line: 1326, column: 9, scope: !455)
!1061 = !DILocation(line: 1327, column: 9, scope: !1058)
!1062 = !DILocation(line: 1329, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !455, file: !4, line: 1329, column: 9)
!1064 = !DILocation(line: 1329, column: 28, scope: !1063)
!1065 = !DILocation(line: 1329, column: 9, scope: !455)
!1066 = !DILocation(line: 1330, column: 9, scope: !1063)
!1067 = !DILocation(line: 1332, column: 12, scope: !455)
!1068 = !DILocation(line: 1332, column: 5, scope: !455)
!1069 = !DILocation(line: 1333, column: 1, scope: !455)
!1070 = !DILocation(line: 731, column: 28, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !683, file: !4, line: 731, column: 9)
!1072 = !{!1073, !1055, i64 0}
!1073 = !{!"", !1055, i64 0, !1074, i64 4, !1074, i64 8}
!1074 = !{!"int", !1055, i64 0}
!1075 = !DILocation(line: 731, column: 40, scope: !1071)
!1076 = !DILocation(line: 731, column: 9, scope: !683)
!1077 = !DILocation(line: 732, column: 25, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1071, file: !4, line: 731, column: 66)
!1079 = !DILocation(line: 732, column: 9, scope: !1078)
!1080 = !DILocation(line: 734, column: 9, scope: !1078)
!1081 = !DILocation(line: 737, column: 28, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !683, file: !4, line: 737, column: 9)
!1083 = !DILocation(line: 737, column: 40, scope: !1082)
!1084 = !DILocation(line: 737, column: 9, scope: !683)
!1085 = !DILocation(line: 738, column: 9, scope: !1082)
!1086 = !DILocation(line: 740, column: 5, scope: !683)
!1087 = !DILocation(line: 743, column: 33, scope: !683)
!1088 = !DILocation(line: 743, column: 31, scope: !683)
!1089 = !{!1074, !1074, i64 0}
!1090 = !DILocation(line: 744, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !683, file: !4, line: 744, column: 9)
!1092 = !DILocation(line: 744, column: 35, scope: !1091)
!1093 = !DILocation(line: 744, column: 9, scope: !683)
!1094 = !DILocation(line: 748, column: 28, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !4, line: 744, column: 42)
!1096 = !DILocation(line: 748, column: 9, scope: !1095)
!1097 = !DILocation(line: 750, column: 9, scope: !1095)
!1098 = !DILocation(line: 755, column: 9, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !683, file: !4, line: 755, column: 9)
!1100 = !DILocation(line: 755, column: 21, scope: !1099)
!1101 = !DILocation(line: 755, column: 9, scope: !683)
!1102 = !DILocation(line: 756, column: 23, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !4, line: 755, column: 36)
!1104 = !DILocation(line: 756, column: 21, scope: !1103)
!1105 = !DILocation(line: 757, column: 13, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !4, line: 757, column: 13)
!1107 = !DILocation(line: 757, column: 25, scope: !1106)
!1108 = !DILocation(line: 757, column: 13, scope: !1103)
!1109 = !DILocation(line: 758, column: 29, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !4, line: 757, column: 40)
!1111 = !DILocation(line: 758, column: 13, scope: !1110)
!1112 = !DILocation(line: 759, column: 13, scope: !1110)
!1113 = !DILocation(line: 761, column: 5, scope: !1103)
!1114 = !DILocation(line: 764, column: 29, scope: !683)
!1115 = !DILocation(line: 764, column: 27, scope: !683)
!1116 = !DILocation(line: 768, column: 30, scope: !683)
!1117 = !DILocation(line: 768, column: 28, scope: !683)
!1118 = !DILocation(line: 772, column: 26, scope: !683)
!1119 = !DILocation(line: 772, column: 24, scope: !683)
!1120 = !DILocation(line: 776, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !683, file: !4, line: 776, column: 9)
!1122 = !DILocation(line: 776, column: 31, scope: !1121)
!1123 = !DILocation(line: 776, column: 45, scope: !1121)
!1124 = !DILocation(line: 776, column: 48, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1121, file: !4, discriminator: 1)
!1126 = !DILocation(line: 776, column: 71, scope: !1121)
!1127 = !DILocation(line: 777, column: 9, scope: !1121)
!1128 = !DILocation(line: 777, column: 12, scope: !1125)
!1129 = !DILocation(line: 777, column: 31, scope: !1121)
!1130 = !DILocation(line: 776, column: 9, scope: !683)
!1131 = !DILocation(line: 779, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1121, file: !4, line: 778, column: 5)
!1133 = !DILocation(line: 780, column: 9, scope: !1132)
!1134 = !DILocation(line: 783, column: 24, scope: !683)
!1135 = !DILocation(line: 783, column: 22, scope: !683)
!1136 = !DILocation(line: 784, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !683, file: !4, line: 784, column: 9)
!1138 = !DILocation(line: 784, column: 26, scope: !1137)
!1139 = !DILocation(line: 784, column: 9, scope: !683)
!1140 = !DILocation(line: 785, column: 9, scope: !1137)
!1141 = !DILocation(line: 786, column: 5, scope: !683)
!1142 = !DILocation(line: 788, column: 40, scope: !683)
!1143 = !{!1144, !1074, i64 8}
!1144 = !{!"", !1145, i64 0, !1074, i64 8, !1055, i64 12}
!1145 = !{!"long", !1055, i64 0}
!1146 = !DILocation(line: 790, column: 54, scope: !683)
!1147 = !DILocation(line: 790, column: 52, scope: !683)
!1148 = !{!1149, !1054, i64 0}
!1149 = !{!"", !1054, i64 0, !1074, i64 8}
!1150 = !DILocation(line: 791, column: 50, scope: !683)
!1151 = !{!1149, !1074, i64 8}
!1152 = !DILocation(line: 792, column: 40, scope: !683)
!1153 = !DILocation(line: 792, column: 38, scope: !683)
!1154 = !{!1144, !1145, i64 0}
!1155 = !DILocation(line: 797, column: 5, scope: !683)
!1156 = !DILocation(line: 799, column: 36, scope: !683)
!1157 = !DILocation(line: 800, column: 5, scope: !683)
!1158 = !DILocation(line: 801, column: 1, scope: !683)
!1159 = !DILocation(line: 1366, column: 5, scope: !460)
!1160 = !DILocation(line: 1366, column: 11, scope: !460)
!1161 = !DILocation(line: 1367, column: 5, scope: !460)
!1162 = !DILocation(line: 1367, column: 9, scope: !460)
!1163 = !DILocation(line: 1373, column: 15, scope: !468)
!1164 = !DILocation(line: 1373, column: 15, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !468, file: !4, discriminator: 1)
!1166 = !DILocation(line: 1373, column: 55, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !468, file: !4, discriminator: 2)
!1168 = !DILocation(line: 1373, column: 12, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !4, discriminator: 4)
!1170 = !DILexicalBlockFile(scope: !468, file: !4, discriminator: 3)
!1171 = !DILocation(line: 1373, column: 85, scope: !468)
!1172 = !DILocation(line: 1373, column: 89, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !468, file: !4, discriminator: 5)
!1174 = !DILocation(line: 1373, column: 88, scope: !468)
!1175 = !{!1055, !1055, i64 0}
!1176 = !DILocation(line: 1373, column: 91, scope: !468)
!1177 = !DILocation(line: 1373, column: 9, scope: !460)
!1178 = !DILocation(line: 1374, column: 9, scope: !467)
!1179 = !DILocation(line: 1374, column: 15, scope: !467)
!1180 = !DILocation(line: 1374, column: 24, scope: !467)
!1181 = !DILocation(line: 1375, column: 9, scope: !467)
!1182 = !DILocation(line: 1375, column: 14, scope: !467)
!1183 = !DILocation(line: 1377, column: 11, scope: !467)
!1184 = !DILocation(line: 1377, column: 32, scope: !467)
!1185 = !DILocation(line: 1378, column: 24, scope: !467)
!1186 = !DILocation(line: 1378, column: 17, scope: !467)
!1187 = !DILocation(line: 1378, column: 15, scope: !467)
!1188 = !{!1145, !1145, i64 0}
!1189 = !DILocation(line: 1379, column: 14, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !467, file: !4, line: 1379, column: 13)
!1191 = !DILocation(line: 1379, column: 13, scope: !1190)
!1192 = !DILocation(line: 1379, column: 21, scope: !1190)
!1193 = !DILocation(line: 1380, column: 13, scope: !1190)
!1194 = !DILocation(line: 1380, column: 16, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1190, file: !4, discriminator: 1)
!1196 = !DILocation(line: 1380, column: 22, scope: !1190)
!1197 = !DILocation(line: 1381, column: 13, scope: !1190)
!1198 = !DILocation(line: 1381, column: 16, scope: !1195)
!1199 = !DILocation(line: 1381, column: 22, scope: !1190)
!1200 = !DILocation(line: 1382, column: 13, scope: !1190)
!1201 = !DILocation(line: 1382, column: 18, scope: !1195)
!1202 = !DILocation(line: 1382, column: 17, scope: !1190)
!1203 = !DILocation(line: 1382, column: 39, scope: !1190)
!1204 = !DILocation(line: 1379, column: 13, scope: !467)
!1205 = !DILocation(line: 1384, column: 13, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1190, file: !4, line: 1383, column: 9)
!1207 = !DILocation(line: 1388, column: 23, scope: !467)
!1208 = !DILocation(line: 1388, column: 18, scope: !467)
!1209 = !DILocation(line: 1388, column: 16, scope: !467)
!1210 = !DILocation(line: 1389, column: 5, scope: !468)
!1211 = !DILocation(line: 1389, column: 5, scope: !467)
!1212 = !DILocation(line: 1391, column: 9, scope: !471)
!1213 = !DILocation(line: 1391, column: 19, scope: !471)
!1214 = !DILocation(line: 1391, column: 30, scope: !471)
!1215 = !DILocation(line: 1391, column: 36, scope: !471)
!1216 = !DILocation(line: 1393, column: 20, scope: !471)
!1217 = !DILocation(line: 1393, column: 18, scope: !471)
!1218 = !DILocation(line: 1394, column: 13, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !471, file: !4, line: 1394, column: 13)
!1220 = !DILocation(line: 1394, column: 22, scope: !1219)
!1221 = !DILocation(line: 1394, column: 13, scope: !471)
!1222 = !DILocation(line: 1395, column: 13, scope: !1219)
!1223 = !DILocation(line: 1397, column: 15, scope: !471)
!1224 = !DILocation(line: 1397, column: 13, scope: !471)
!1225 = !DILocation(line: 1398, column: 13, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !471, file: !4, line: 1398, column: 13)
!1227 = !DILocation(line: 1398, column: 17, scope: !1226)
!1228 = !DILocation(line: 1398, column: 13, scope: !471)
!1229 = !DILocation(line: 1399, column: 13, scope: !1226)
!1230 = !DILocation(line: 1401, column: 41, scope: !471)
!1231 = !DILocation(line: 1401, column: 51, scope: !471)
!1232 = !DILocation(line: 1401, column: 17, scope: !471)
!1233 = !DILocation(line: 1401, column: 15, scope: !471)
!1234 = !DILocation(line: 1402, column: 9, scope: !471)
!1235 = !DILocation(line: 1402, column: 14, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !475, file: !4, discriminator: 1)
!1237 = !DILocation(line: 1402, column: 24, scope: !475)
!1238 = !DILocation(line: 1402, column: 54, scope: !475)
!1239 = !DILocation(line: 1402, column: 68, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !475, file: !4, line: 1402, column: 65)
!1241 = !DILocation(line: 1402, column: 85, scope: !1240)
!1242 = !DILocation(line: 1402, column: 65, scope: !1240)
!1243 = !{!1244, !1145, i64 0}
!1244 = !{!"_object", !1145, i64 0, !1054, i64 8}
!1245 = !DILocation(line: 1402, column: 95, scope: !1240)
!1246 = !DILocation(line: 1402, column: 65, scope: !475)
!1247 = !DILocation(line: 1402, column: 65, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !475, file: !4, discriminator: 2)
!1249 = !DILocation(line: 1402, column: 126, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1240, file: !4, discriminator: 3)
!1251 = !DILocation(line: 1402, column: 144, scope: !1240)
!1252 = !{!1244, !1054, i64 8}
!1253 = !DILocation(line: 1402, column: 154, scope: !1240)
!1254 = !{!1255, !1054, i64 48}
!1255 = !{!"_typeobject", !1256, i64 0, !1054, i64 24, !1145, i64 32, !1145, i64 40, !1054, i64 48, !1054, i64 56, !1054, i64 64, !1054, i64 72, !1054, i64 80, !1054, i64 88, !1054, i64 96, !1054, i64 104, !1054, i64 112, !1054, i64 120, !1054, i64 128, !1054, i64 136, !1054, i64 144, !1054, i64 152, !1054, i64 160, !1145, i64 168, !1054, i64 176, !1054, i64 184, !1054, i64 192, !1054, i64 200, !1145, i64 208, !1054, i64 216, !1054, i64 224, !1054, i64 232, !1054, i64 240, !1054, i64 248, !1054, i64 256, !1054, i64 264, !1054, i64 272, !1054, i64 280, !1145, i64 288, !1054, i64 296, !1054, i64 304, !1054, i64 312, !1054, i64 320, !1054, i64 328, !1054, i64 336, !1054, i64 344, !1054, i64 352, !1054, i64 360, !1054, i64 368, !1054, i64 376, !1074, i64 384, !1054, i64 392}
!1256 = !{!"", !1244, i64 0, !1145, i64 16}
!1257 = !DILocation(line: 1402, column: 179, scope: !1240)
!1258 = !DILocation(line: 1402, column: 110, scope: !1240)
!1259 = !DILocation(line: 1402, column: 198, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !471, file: !4, discriminator: 4)
!1261 = !DILocation(line: 1402, column: 198, scope: !475)
!1262 = !DILocation(line: 1402, column: 198, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !475, file: !4, discriminator: 5)
!1264 = !DILocation(line: 1403, column: 13, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !471, file: !4, line: 1403, column: 13)
!1266 = !DILocation(line: 1403, column: 19, scope: !1265)
!1267 = !DILocation(line: 1403, column: 13, scope: !471)
!1268 = !DILocation(line: 1404, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !4, line: 1404, column: 17)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !4, line: 1403, column: 34)
!1271 = !DILocation(line: 1404, column: 17, scope: !1270)
!1272 = !DILocation(line: 1405, column: 17, scope: !1269)
!1273 = !DILocation(line: 1408, column: 13, scope: !1270)
!1274 = !DILocation(line: 1411, column: 37, scope: !471)
!1275 = !DILocation(line: 1411, column: 18, scope: !471)
!1276 = !DILocation(line: 1411, column: 16, scope: !471)
!1277 = !DILocation(line: 1412, column: 9, scope: !471)
!1278 = !DILocation(line: 1412, column: 14, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !477, file: !4, discriminator: 1)
!1280 = !DILocation(line: 1412, column: 24, scope: !477)
!1281 = !DILocation(line: 1412, column: 54, scope: !477)
!1282 = !DILocation(line: 1412, column: 70, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !477, file: !4, line: 1412, column: 67)
!1284 = !DILocation(line: 1412, column: 87, scope: !1283)
!1285 = !DILocation(line: 1412, column: 67, scope: !1283)
!1286 = !DILocation(line: 1412, column: 97, scope: !1283)
!1287 = !DILocation(line: 1412, column: 67, scope: !477)
!1288 = !DILocation(line: 1412, column: 67, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !477, file: !4, discriminator: 2)
!1290 = !DILocation(line: 1412, column: 128, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1283, file: !4, discriminator: 3)
!1292 = !DILocation(line: 1412, column: 146, scope: !1283)
!1293 = !DILocation(line: 1412, column: 156, scope: !1283)
!1294 = !DILocation(line: 1412, column: 181, scope: !1283)
!1295 = !DILocation(line: 1412, column: 112, scope: !1283)
!1296 = !DILocation(line: 1412, column: 200, scope: !1260)
!1297 = !DILocation(line: 1412, column: 200, scope: !477)
!1298 = !DILocation(line: 1412, column: 200, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !477, file: !4, discriminator: 5)
!1300 = !DILocation(line: 1413, column: 13, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !471, file: !4, line: 1413, column: 13)
!1302 = !DILocation(line: 1413, column: 20, scope: !1301)
!1303 = !DILocation(line: 1413, column: 13, scope: !471)
!1304 = !DILocation(line: 1414, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !4, line: 1413, column: 25)
!1306 = !DILocation(line: 1416, column: 5, scope: !468)
!1307 = !DILocation(line: 1416, column: 5, scope: !1165)
!1308 = !DILocation(line: 1418, column: 30, scope: !460)
!1309 = !DILocation(line: 1418, column: 12, scope: !460)
!1310 = !DILocation(line: 1418, column: 5, scope: !460)
!1311 = !DILocation(line: 1419, column: 1, scope: !460)
!1312 = !DILocation(line: 1336, column: 30, scope: !716)
!1313 = !DILocation(line: 1338, column: 5, scope: !716)
!1314 = !DILocation(line: 1338, column: 15, scope: !716)
!1315 = !DILocation(line: 1339, column: 5, scope: !716)
!1316 = !DILocation(line: 1339, column: 10, scope: !716)
!1317 = !DILocation(line: 1341, column: 9, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !716, file: !4, line: 1341, column: 9)
!1319 = !DILocation(line: 1341, column: 15, scope: !1318)
!1320 = !DILocation(line: 1341, column: 9, scope: !716)
!1321 = !DILocation(line: 1342, column: 9, scope: !1318)
!1322 = !DILocation(line: 1345, column: 29, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !716, file: !4, line: 1345, column: 9)
!1324 = !DILocation(line: 1345, column: 9, scope: !1323)
!1325 = !DILocation(line: 1345, column: 36, scope: !1323)
!1326 = !DILocation(line: 1345, column: 9, scope: !716)
!1327 = !DILocation(line: 1346, column: 9, scope: !1323)
!1328 = !DILocation(line: 1348, column: 42, scope: !716)
!1329 = !DILocation(line: 1348, column: 17, scope: !716)
!1330 = !DILocation(line: 1348, column: 15, scope: !716)
!1331 = !DILocation(line: 1349, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !716, file: !4, line: 1349, column: 9)
!1333 = !DILocation(line: 1349, column: 19, scope: !1332)
!1334 = !DILocation(line: 1349, column: 9, scope: !716)
!1335 = !DILocation(line: 1350, column: 9, scope: !1332)
!1336 = !DILocation(line: 1352, column: 28, scope: !716)
!1337 = !DILocation(line: 1352, column: 14, scope: !716)
!1338 = !DILocation(line: 1352, column: 12, scope: !716)
!1339 = !DILocation(line: 1353, column: 5, scope: !716)
!1340 = !DILocation(line: 1353, column: 10, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !722, file: !4, discriminator: 1)
!1342 = !DILocation(line: 1353, column: 20, scope: !722)
!1343 = !DILocation(line: 1353, column: 50, scope: !722)
!1344 = !DILocation(line: 1353, column: 70, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !722, file: !4, line: 1353, column: 67)
!1346 = !DILocation(line: 1353, column: 87, scope: !1345)
!1347 = !DILocation(line: 1353, column: 67, scope: !1345)
!1348 = !DILocation(line: 1353, column: 97, scope: !1345)
!1349 = !DILocation(line: 1353, column: 67, scope: !722)
!1350 = !DILocation(line: 1353, column: 67, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !722, file: !4, discriminator: 2)
!1352 = !DILocation(line: 1353, column: 128, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1345, file: !4, discriminator: 3)
!1354 = !DILocation(line: 1353, column: 146, scope: !1345)
!1355 = !DILocation(line: 1353, column: 156, scope: !1345)
!1356 = !DILocation(line: 1353, column: 181, scope: !1345)
!1357 = !DILocation(line: 1353, column: 112, scope: !1345)
!1358 = !DILocation(line: 1353, column: 200, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !716, file: !4, discriminator: 4)
!1360 = !DILocation(line: 1353, column: 200, scope: !722)
!1361 = !DILocation(line: 1353, column: 200, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !722, file: !4, discriminator: 5)
!1363 = !DILocation(line: 1354, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !716, file: !4, line: 1354, column: 9)
!1365 = !DILocation(line: 1354, column: 16, scope: !1364)
!1366 = !DILocation(line: 1354, column: 22, scope: !1364)
!1367 = !DILocation(line: 1354, column: 25, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1364, file: !4, discriminator: 1)
!1369 = !DILocation(line: 1354, column: 9, scope: !716)
!1370 = !DILocation(line: 1355, column: 9, scope: !1364)
!1371 = !DILocation(line: 1357, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !716, file: !4, line: 1357, column: 9)
!1373 = !DILocation(line: 1357, column: 16, scope: !1372)
!1374 = !DILocation(line: 1357, column: 20, scope: !1372)
!1375 = !DILocation(line: 1357, column: 23, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1372, file: !4, discriminator: 1)
!1377 = !DILocation(line: 1357, column: 30, scope: !1372)
!1378 = !DILocation(line: 1357, column: 9, scope: !716)
!1379 = !DILocation(line: 1358, column: 9, scope: !1372)
!1380 = !DILocation(line: 1360, column: 18, scope: !716)
!1381 = !DILocation(line: 1360, column: 12, scope: !716)
!1382 = !DILocation(line: 1360, column: 5, scope: !716)
!1383 = !DILocation(line: 1361, column: 1, scope: !716)
!1384 = !DILocation(line: 832, column: 23, scope: !723)
!1385 = !DILocation(line: 834, column: 5, scope: !723)
!1386 = !DILocation(line: 834, column: 20, scope: !723)
!1387 = !DILocation(line: 835, column: 5, scope: !723)
!1388 = !DILocation(line: 835, column: 12, scope: !723)
!1389 = !DILocation(line: 837, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !723, file: !4, line: 837, column: 9)
!1391 = !DILocation(line: 837, column: 28, scope: !1390)
!1392 = !DILocation(line: 837, column: 9, scope: !723)
!1393 = !DILocation(line: 838, column: 9, scope: !1390)
!1394 = !DILocation(line: 840, column: 28, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !723, file: !4, line: 840, column: 9)
!1396 = !{!1073, !1074, i64 4}
!1397 = !DILocation(line: 840, column: 9, scope: !1395)
!1398 = !DILocation(line: 840, column: 9, scope: !723)
!1399 = !DILocation(line: 842, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !4, line: 840, column: 37)
!1401 = !DILocation(line: 846, column: 37, scope: !723)
!1402 = !DILocation(line: 846, column: 35, scope: !723)
!1403 = !{!1073, !1074, i64 8}
!1404 = !DILocation(line: 849, column: 54, scope: !723)
!1405 = !DILocation(line: 849, column: 65, scope: !723)
!1406 = !DILocation(line: 849, column: 53, scope: !723)
!1407 = !DILocation(line: 849, column: 51, scope: !723)
!1408 = !DILocation(line: 849, column: 33, scope: !723)
!1409 = !DILocation(line: 849, column: 10, scope: !723)
!1410 = !DILocation(line: 851, column: 40, scope: !723)
!1411 = !DILocation(line: 851, column: 29, scope: !723)
!1412 = !DILocation(line: 851, column: 27, scope: !723)
!1413 = !DILocation(line: 852, column: 9, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !723, file: !4, line: 852, column: 9)
!1415 = !DILocation(line: 852, column: 31, scope: !1414)
!1416 = !DILocation(line: 852, column: 9, scope: !723)
!1417 = !DILocation(line: 853, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !4, line: 852, column: 46)
!1419 = !DILocation(line: 854, column: 9, scope: !1418)
!1420 = !DILocation(line: 858, column: 11, scope: !723)
!1421 = !DILocation(line: 858, column: 18, scope: !723)
!1422 = !{!1423, !1054, i64 8}
!1423 = !{!"", !1054, i64 0, !1054, i64 8, !1054, i64 16, !1054, i64 24}
!1424 = !DILocation(line: 859, column: 11, scope: !723)
!1425 = !DILocation(line: 859, column: 19, scope: !723)
!1426 = !{!1423, !1054, i64 16}
!1427 = !DILocation(line: 860, column: 11, scope: !723)
!1428 = !DILocation(line: 860, column: 16, scope: !723)
!1429 = !{!1423, !1054, i64 24}
!1430 = !DILocation(line: 862, column: 11, scope: !723)
!1431 = !DILocation(line: 862, column: 15, scope: !723)
!1432 = !{!1423, !1054, i64 0}
!1433 = !DILocation(line: 863, column: 5, scope: !723)
!1434 = !DILocation(line: 864, column: 5, scope: !723)
!1435 = !DILocation(line: 867, column: 11, scope: !723)
!1436 = !DILocation(line: 867, column: 18, scope: !723)
!1437 = !DILocation(line: 868, column: 11, scope: !723)
!1438 = !DILocation(line: 868, column: 19, scope: !723)
!1439 = !DILocation(line: 869, column: 11, scope: !723)
!1440 = !DILocation(line: 869, column: 16, scope: !723)
!1441 = !DILocation(line: 871, column: 11, scope: !723)
!1442 = !DILocation(line: 871, column: 15, scope: !723)
!1443 = !DILocation(line: 872, column: 5, scope: !723)
!1444 = !DILocation(line: 873, column: 5, scope: !723)
!1445 = !DILocation(line: 875, column: 11, scope: !723)
!1446 = !DILocation(line: 875, column: 15, scope: !723)
!1447 = !DILocation(line: 876, column: 5, scope: !723)
!1448 = !DILocation(line: 877, column: 5, scope: !723)
!1449 = !DILocation(line: 880, column: 32, scope: !723)
!1450 = !DILocation(line: 881, column: 5, scope: !723)
!1451 = !DILocation(line: 883, column: 5, scope: !723)
!1452 = !DILocation(line: 884, column: 1, scope: !723)
!1453 = !DILocation(line: 1427, column: 5, scope: !478)
!1454 = !DILocation(line: 1428, column: 1, scope: !478)
!1455 = !DILocation(line: 806, column: 28, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !950, file: !4, line: 806, column: 9)
!1457 = !DILocation(line: 806, column: 40, scope: !1456)
!1458 = !DILocation(line: 806, column: 9, scope: !950)
!1459 = !DILocation(line: 807, column: 9, scope: !1456)
!1460 = !DILocation(line: 808, column: 36, scope: !950)
!1461 = !DILocation(line: 810, column: 5, scope: !950)
!1462 = !DILocation(line: 813, column: 27, scope: !950)
!1463 = !DILocation(line: 813, column: 5, scope: !950)
!1464 = !DILocation(line: 814, column: 27, scope: !950)
!1465 = !DILocation(line: 814, column: 5, scope: !950)
!1466 = !DILocation(line: 815, column: 27, scope: !950)
!1467 = !DILocation(line: 815, column: 5, scope: !950)
!1468 = !DILocation(line: 818, column: 9, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !950, file: !4, line: 818, column: 9)
!1470 = !DILocation(line: 818, column: 21, scope: !1469)
!1471 = !DILocation(line: 818, column: 9, scope: !950)
!1472 = !DILocation(line: 819, column: 28, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !4, line: 818, column: 36)
!1474 = !DILocation(line: 819, column: 9, scope: !1473)
!1475 = !DILocation(line: 820, column: 21, scope: !1473)
!1476 = !DILocation(line: 821, column: 5, scope: !1473)
!1477 = !DILocation(line: 825, column: 25, scope: !950)
!1478 = !DILocation(line: 825, column: 5, scope: !950)
!1479 = !DILocation(line: 828, column: 5, scope: !950)
!1480 = !DILocation(line: 828, column: 10, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !953, file: !4, discriminator: 1)
!1482 = !DILocation(line: 828, column: 20, scope: !953)
!1483 = !DILocation(line: 828, column: 51, scope: !953)
!1484 = !DILocation(line: 828, column: 74, scope: !956)
!1485 = !DILocation(line: 828, column: 90, scope: !956)
!1486 = !DILocation(line: 828, column: 74, scope: !953)
!1487 = !DILocation(line: 828, column: 105, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !956, file: !4, discriminator: 2)
!1489 = !DILocation(line: 828, column: 110, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !955, file: !4, discriminator: 4)
!1491 = !DILocation(line: 828, column: 120, scope: !955)
!1492 = !DILocation(line: 828, column: 150, scope: !955)
!1493 = !DILocation(line: 828, column: 176, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !955, file: !4, line: 828, column: 173)
!1495 = !DILocation(line: 828, column: 193, scope: !1494)
!1496 = !DILocation(line: 828, column: 173, scope: !1494)
!1497 = !DILocation(line: 828, column: 203, scope: !1494)
!1498 = !DILocation(line: 828, column: 173, scope: !955)
!1499 = !DILocation(line: 828, column: 173, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !955, file: !4, discriminator: 5)
!1501 = !DILocation(line: 828, column: 234, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1494, file: !4, discriminator: 6)
!1503 = !DILocation(line: 828, column: 252, scope: !1494)
!1504 = !DILocation(line: 828, column: 262, scope: !1494)
!1505 = !DILocation(line: 828, column: 287, scope: !1494)
!1506 = !DILocation(line: 828, column: 218, scope: !1494)
!1507 = !DILocation(line: 828, column: 306, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !956, file: !4, discriminator: 7)
!1509 = !DILocation(line: 828, column: 306, scope: !955)
!1510 = !DILocation(line: 828, column: 306, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !955, file: !4, discriminator: 8)
!1512 = !DILocation(line: 828, column: 306, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !955, file: !4, discriminator: 9)
!1514 = !DILocation(line: 828, column: 319, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !4, discriminator: 10)
!1516 = !DILexicalBlockFile(scope: !950, file: !4, discriminator: 3)
!1517 = !DILocation(line: 828, column: 319, scope: !953)
!1518 = !DILocation(line: 829, column: 1, scope: !950)
!1519 = !DILocation(line: 928, column: 37, scope: !482)
!1520 = !DILocation(line: 930, column: 47, scope: !482)
!1521 = !DILocation(line: 930, column: 28, scope: !482)
!1522 = !DILocation(line: 930, column: 12, scope: !482)
!1523 = !DILocation(line: 930, column: 5, scope: !482)
!1524 = !DILocation(line: 939, column: 39, scope: !485)
!1525 = !DILocation(line: 941, column: 29, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !485, file: !4, line: 941, column: 9)
!1527 = !DILocation(line: 941, column: 10, scope: !1526)
!1528 = !DILocation(line: 941, column: 9, scope: !485)
!1529 = !DILocation(line: 942, column: 62, scope: !1526)
!1530 = !DILocation(line: 942, column: 9, scope: !1526)
!1531 = !DILocation(line: 944, column: 5, scope: !485)
!1532 = !DILocation(line: 945, column: 5, scope: !485)
!1533 = !DILocation(line: 946, column: 5, scope: !485)
!1534 = !DILocation(line: 948, column: 58, scope: !485)
!1535 = !DILocation(line: 948, column: 5, scope: !485)
!1536 = !DILocation(line: 949, column: 1, scope: !485)
!1537 = !DILocation(line: 1087, column: 37, scope: !512)
!1538 = !DILocation(line: 1087, column: 53, scope: !512)
!1539 = !DILocation(line: 1089, column: 5, scope: !512)
!1540 = !DILocation(line: 1089, column: 18, scope: !512)
!1541 = !DILocation(line: 1090, column: 5, scope: !512)
!1542 = !DILocation(line: 1090, column: 9, scope: !512)
!1543 = !DILocation(line: 1092, column: 16, scope: !512)
!1544 = !DILocation(line: 1092, column: 23, scope: !512)
!1545 = !{!1546, !1054, i64 0}
!1546 = !{!"", !1054, i64 0, !1054, i64 8, !1054, i64 16}
!1547 = !DILocation(line: 1093, column: 16, scope: !512)
!1548 = !DILocation(line: 1093, column: 27, scope: !512)
!1549 = !{!1546, !1054, i64 8}
!1550 = !DILocation(line: 1094, column: 23, scope: !512)
!1551 = !DILocation(line: 1094, column: 16, scope: !512)
!1552 = !DILocation(line: 1094, column: 21, scope: !512)
!1553 = !{!1546, !1054, i64 16}
!1554 = !DILocation(line: 1095, column: 20, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !512, file: !4, line: 1095, column: 9)
!1556 = !DILocation(line: 1095, column: 25, scope: !1555)
!1557 = !DILocation(line: 1095, column: 9, scope: !512)
!1558 = !DILocation(line: 1096, column: 9, scope: !1555)
!1559 = !DILocation(line: 1098, column: 29, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !512, file: !4, line: 1098, column: 9)
!1561 = !DILocation(line: 1098, column: 10, scope: !1560)
!1562 = !DILocation(line: 1098, column: 9, scope: !512)
!1563 = !DILocation(line: 1099, column: 27, scope: !1560)
!1564 = !DILocation(line: 1099, column: 9, scope: !1560)
!1565 = !DILocation(line: 1103, column: 29, scope: !512)
!1566 = !DILocation(line: 1103, column: 16, scope: !512)
!1567 = !DILocation(line: 1103, column: 27, scope: !512)
!1568 = !DILocation(line: 1106, column: 20, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !512, file: !4, line: 1106, column: 9)
!1570 = !DILocation(line: 1106, column: 31, scope: !1569)
!1571 = !DILocation(line: 1106, column: 9, scope: !512)
!1572 = !DILocation(line: 1107, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !4, line: 1106, column: 46)
!1574 = !DILocation(line: 1108, column: 9, scope: !1573)
!1575 = !DILocation(line: 1111, column: 27, scope: !512)
!1576 = !DILocation(line: 1111, column: 5, scope: !512)
!1577 = !DILocation(line: 1112, column: 44, scope: !512)
!1578 = !DILocation(line: 1112, column: 25, scope: !512)
!1579 = !DILocation(line: 1112, column: 16, scope: !512)
!1580 = !DILocation(line: 1112, column: 23, scope: !512)
!1581 = !DILocation(line: 1113, column: 27, scope: !512)
!1582 = !DILocation(line: 1113, column: 5, scope: !512)
!1583 = !DILocation(line: 1115, column: 20, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !512, file: !4, line: 1115, column: 9)
!1585 = !DILocation(line: 1115, column: 27, scope: !1584)
!1586 = !DILocation(line: 1115, column: 9, scope: !512)
!1587 = !DILocation(line: 1116, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !4, line: 1115, column: 42)
!1589 = !DILocation(line: 1117, column: 9, scope: !1588)
!1590 = !DILocation(line: 1120, column: 5, scope: !512)
!1591 = !DILocation(line: 1121, column: 44, scope: !512)
!1592 = !DILocation(line: 1122, column: 62, scope: !512)
!1593 = !DILocation(line: 1121, column: 11, scope: !512)
!1594 = !DILocation(line: 1121, column: 9, scope: !512)
!1595 = !DILocation(line: 1123, column: 5, scope: !512)
!1596 = !DILocation(line: 1124, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !512, file: !4, line: 1124, column: 9)
!1598 = !DILocation(line: 1124, column: 9, scope: !512)
!1599 = !DILocation(line: 1125, column: 9, scope: !1597)
!1600 = !DILocation(line: 1127, column: 5, scope: !512)
!1601 = !DILocation(line: 1130, column: 5, scope: !512)
!1602 = !DILocation(line: 1130, column: 10, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !562, file: !4, discriminator: 1)
!1604 = !DILocation(line: 1130, column: 20, scope: !562)
!1605 = !DILocation(line: 1130, column: 54, scope: !562)
!1606 = !DILocation(line: 1130, column: 65, scope: !566)
!1607 = !DILocation(line: 1130, column: 73, scope: !566)
!1608 = !DILocation(line: 1130, column: 65, scope: !562)
!1609 = !DILocation(line: 1130, column: 102, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !565, file: !4, discriminator: 2)
!1611 = !DILocation(line: 1130, column: 108, scope: !565)
!1612 = !DILocation(line: 1130, column: 122, scope: !565)
!1613 = !DILocation(line: 1130, column: 127, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !564, file: !4, discriminator: 4)
!1615 = !DILocation(line: 1130, column: 137, scope: !564)
!1616 = !DILocation(line: 1130, column: 167, scope: !564)
!1617 = !DILocation(line: 1130, column: 185, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !564, file: !4, line: 1130, column: 182)
!1619 = !DILocation(line: 1130, column: 202, scope: !1618)
!1620 = !DILocation(line: 1130, column: 182, scope: !1618)
!1621 = !DILocation(line: 1130, column: 212, scope: !1618)
!1622 = !DILocation(line: 1130, column: 182, scope: !564)
!1623 = !DILocation(line: 1130, column: 182, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !564, file: !4, discriminator: 5)
!1625 = !DILocation(line: 1130, column: 243, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1618, file: !4, discriminator: 6)
!1627 = !DILocation(line: 1130, column: 261, scope: !1618)
!1628 = !DILocation(line: 1130, column: 271, scope: !1618)
!1629 = !DILocation(line: 1130, column: 296, scope: !1618)
!1630 = !DILocation(line: 1130, column: 227, scope: !1618)
!1631 = !DILocation(line: 1130, column: 315, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !565, file: !4, discriminator: 7)
!1633 = !DILocation(line: 1130, column: 315, scope: !564)
!1634 = !DILocation(line: 1130, column: 315, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !564, file: !4, discriminator: 8)
!1636 = !DILocation(line: 1130, column: 328, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !565, file: !4, discriminator: 9)
!1638 = !DILocation(line: 1130, column: 330, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1640, file: !4, discriminator: 10)
!1640 = !DILexicalBlockFile(scope: !512, file: !4, discriminator: 3)
!1641 = !DILocation(line: 1130, column: 330, scope: !562)
!1642 = !DILocation(line: 1130, column: 330, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !562, file: !4, discriminator: 11)
!1644 = !DILocation(line: 1130, column: 330, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !562, file: !4, discriminator: 12)
!1646 = !DILocation(line: 1133, column: 20, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !512, file: !4, line: 1133, column: 9)
!1648 = !DILocation(line: 1133, column: 31, scope: !1647)
!1649 = !DILocation(line: 1133, column: 9, scope: !512)
!1650 = !DILocation(line: 1134, column: 42, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !4, line: 1133, column: 46)
!1652 = !DILocation(line: 1134, column: 9, scope: !1651)
!1653 = !DILocation(line: 1136, column: 42, scope: !1651)
!1654 = !DILocation(line: 1136, column: 9, scope: !1651)
!1655 = !DILocation(line: 1137, column: 5, scope: !1651)
!1656 = !DILocation(line: 1138, column: 20, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !512, file: !4, line: 1138, column: 9)
!1658 = !DILocation(line: 1138, column: 27, scope: !1657)
!1659 = !DILocation(line: 1138, column: 9, scope: !512)
!1660 = !DILocation(line: 1139, column: 42, scope: !1657)
!1661 = !DILocation(line: 1139, column: 9, scope: !1657)
!1662 = !DILocation(line: 1141, column: 23, scope: !512)
!1663 = !DILocation(line: 1141, column: 5, scope: !512)
!1664 = !DILocation(line: 1142, column: 1, scope: !512)
!1665 = !DILocation(line: 1154, column: 47, scope: !648)
!1666 = !DILocation(line: 1154, column: 63, scope: !648)
!1667 = !DILocation(line: 1156, column: 5, scope: !648)
!1668 = !DILocation(line: 1156, column: 19, scope: !648)
!1669 = !DILocation(line: 1157, column: 5, scope: !648)
!1670 = !DILocation(line: 1157, column: 11, scope: !648)
!1671 = !DILocation(line: 1158, column: 5, scope: !648)
!1672 = !DILocation(line: 1158, column: 13, scope: !648)
!1673 = !DILocation(line: 1159, column: 5, scope: !648)
!1674 = !DILocation(line: 1159, column: 9, scope: !648)
!1675 = !DILocation(line: 1161, column: 29, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !648, file: !4, line: 1161, column: 9)
!1677 = !DILocation(line: 1161, column: 10, scope: !1676)
!1678 = !DILocation(line: 1161, column: 9, scope: !648)
!1679 = !DILocation(line: 1162, column: 62, scope: !1676)
!1680 = !DILocation(line: 1162, column: 9, scope: !1676)
!1681 = !DILocation(line: 1164, column: 26, scope: !648)
!1682 = !DILocation(line: 1164, column: 33, scope: !648)
!1683 = !DILocation(line: 1164, column: 10, scope: !648)
!1684 = !DILocation(line: 1165, column: 13, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !648, file: !4, line: 1165, column: 9)
!1686 = !DILocation(line: 1165, column: 21, scope: !1685)
!1687 = !{!1255, !1145, i64 168}
!1688 = !DILocation(line: 1165, column: 30, scope: !1685)
!1689 = !DILocation(line: 1165, column: 47, scope: !1685)
!1690 = !DILocation(line: 1165, column: 9, scope: !648)
!1691 = !DILocation(line: 1166, column: 32, scope: !1685)
!1692 = !DILocation(line: 1166, column: 24, scope: !1685)
!1693 = !DILocation(line: 1166, column: 36, scope: !1685)
!1694 = !DILocation(line: 1166, column: 13, scope: !1685)
!1695 = !DILocation(line: 1166, column: 9, scope: !1685)
!1696 = !DILocation(line: 1168, column: 23, scope: !1685)
!1697 = !DILocation(line: 1168, column: 15, scope: !1685)
!1698 = !DILocation(line: 1168, column: 13, scope: !1685)
!1699 = !DILocation(line: 1170, column: 27, scope: !648)
!1700 = !DILocation(line: 1170, column: 5, scope: !648)
!1701 = !DILocation(line: 1171, column: 31, scope: !648)
!1702 = !DILocation(line: 1171, column: 51, scope: !648)
!1703 = !DILocation(line: 1171, column: 56, scope: !648)
!1704 = !DILocation(line: 1171, column: 13, scope: !648)
!1705 = !DILocation(line: 1171, column: 11, scope: !648)
!1706 = !DILocation(line: 1172, column: 27, scope: !648)
!1707 = !DILocation(line: 1172, column: 5, scope: !648)
!1708 = !DILocation(line: 1174, column: 10, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !648, file: !4, line: 1174, column: 9)
!1710 = !DILocation(line: 1174, column: 9, scope: !648)
!1711 = !DILocation(line: 1175, column: 62, scope: !1709)
!1712 = !DILocation(line: 1175, column: 9, scope: !1709)
!1713 = !DILocation(line: 1177, column: 40, scope: !648)
!1714 = !{!1715, !1054, i64 8}
!1715 = !{!"", !1145, i64 0, !1054, i64 8}
!1716 = !DILocation(line: 1177, column: 12, scope: !648)
!1717 = !DILocation(line: 1177, column: 5, scope: !648)
!1718 = !DILocation(line: 1178, column: 1, scope: !648)
!1719 = !DILocation(line: 1187, column: 32, scope: !658)
!1720 = !DILocation(line: 1187, column: 48, scope: !658)
!1721 = !DILocation(line: 1189, column: 5, scope: !658)
!1722 = !DILocation(line: 1189, column: 16, scope: !658)
!1723 = !DILocation(line: 1190, column: 5, scope: !658)
!1724 = !DILocation(line: 1190, column: 9, scope: !658)
!1725 = !DILocation(line: 1192, column: 27, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !658, file: !4, line: 1192, column: 9)
!1727 = !DILocation(line: 1192, column: 10, scope: !1726)
!1728 = !DILocation(line: 1192, column: 9, scope: !658)
!1729 = !DILocation(line: 1193, column: 9, scope: !1726)
!1730 = !DILocation(line: 1195, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !658, file: !4, line: 1195, column: 9)
!1732 = !DILocation(line: 1195, column: 16, scope: !1731)
!1733 = !DILocation(line: 1195, column: 20, scope: !1731)
!1734 = !DILocation(line: 1195, column: 23, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1731, file: !4, discriminator: 1)
!1736 = !DILocation(line: 1195, column: 30, scope: !1731)
!1737 = !DILocation(line: 1195, column: 9, scope: !658)
!1738 = !DILocation(line: 1196, column: 22, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1731, file: !4, line: 1195, column: 92)
!1740 = !DILocation(line: 1196, column: 9, scope: !1739)
!1741 = !DILocation(line: 1199, column: 9, scope: !1739)
!1742 = !DILocation(line: 1201, column: 24, scope: !658)
!1743 = !DILocation(line: 1201, column: 18, scope: !658)
!1744 = !DILocation(line: 1201, column: 16, scope: !658)
!1745 = !DILocation(line: 1203, column: 27, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !658, file: !4, line: 1203, column: 9)
!1747 = !DILocation(line: 1203, column: 9, scope: !1746)
!1748 = !DILocation(line: 1203, column: 39, scope: !1746)
!1749 = !DILocation(line: 1203, column: 9, scope: !658)
!1750 = !DILocation(line: 1204, column: 9, scope: !1746)
!1751 = !DILocation(line: 1206, column: 58, scope: !658)
!1752 = !DILocation(line: 1206, column: 5, scope: !658)
!1753 = !DILocation(line: 1207, column: 1, scope: !658)
!1754 = !DILocation(line: 1216, column: 31, scope: !664)
!1755 = !DILocation(line: 1218, column: 5, scope: !664)
!1756 = !DILocation(line: 1219, column: 58, scope: !664)
!1757 = !DILocation(line: 1219, column: 5, scope: !664)
!1758 = !DILocation(line: 1232, column: 46, scope: !668)
!1759 = !DILocation(line: 1234, column: 47, scope: !668)
!1760 = !DILocation(line: 1234, column: 28, scope: !668)
!1761 = !DILocation(line: 1234, column: 12, scope: !668)
!1762 = !DILocation(line: 1234, column: 5, scope: !668)
!1763 = !DILocation(line: 1244, column: 46, scope: !671)
!1764 = !DILocation(line: 1246, column: 5, scope: !671)
!1765 = !DILocation(line: 1246, column: 12, scope: !671)
!1766 = !DILocation(line: 1247, column: 5, scope: !671)
!1767 = !DILocation(line: 1247, column: 15, scope: !671)
!1768 = !DILocation(line: 1249, column: 31, scope: !671)
!1769 = !DILocation(line: 1249, column: 12, scope: !671)
!1770 = !DILocation(line: 1249, column: 10, scope: !671)
!1771 = !DILocation(line: 1250, column: 32, scope: !671)
!1772 = !DILocation(line: 1250, column: 13, scope: !671)
!1773 = !DILocation(line: 1250, column: 10, scope: !671)
!1774 = !DILocation(line: 1252, column: 27, scope: !671)
!1775 = !DILocation(line: 1252, column: 5, scope: !671)
!1776 = !DILocation(line: 1253, column: 32, scope: !671)
!1777 = !DILocation(line: 1253, column: 13, scope: !671)
!1778 = !DILocation(line: 1253, column: 10, scope: !671)
!1779 = !DILocation(line: 1254, column: 27, scope: !671)
!1780 = !DILocation(line: 1254, column: 5, scope: !671)
!1781 = !DILocation(line: 1256, column: 34, scope: !671)
!1782 = !DILocation(line: 1256, column: 16, scope: !671)
!1783 = !DILocation(line: 1256, column: 14, scope: !671)
!1784 = !DILocation(line: 1257, column: 31, scope: !671)
!1785 = !DILocation(line: 1257, column: 12, scope: !671)
!1786 = !DILocation(line: 1258, column: 1, scope: !671)
!1787 = !DILocation(line: 1257, column: 5, scope: !671)
!1788 = !DILocation(line: 1267, column: 41, scope: !676)
!1789 = !DILocation(line: 1269, column: 5, scope: !676)
!1790 = !DILocation(line: 1269, column: 16, scope: !676)
!1791 = !DILocation(line: 1269, column: 22, scope: !676)
!1792 = !DILocation(line: 1270, column: 5, scope: !676)
!1793 = !DILocation(line: 1270, column: 15, scope: !676)
!1794 = !DILocation(line: 1270, column: 26, scope: !676)
!1795 = !DILocation(line: 1272, column: 29, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !676, file: !4, line: 1272, column: 9)
!1797 = !DILocation(line: 1272, column: 10, scope: !1796)
!1798 = !DILocation(line: 1272, column: 9, scope: !676)
!1799 = !DILocation(line: 1273, column: 16, scope: !1796)
!1800 = !DILocation(line: 1273, column: 9, scope: !1796)
!1801 = !DILocation(line: 1275, column: 27, scope: !676)
!1802 = !DILocation(line: 1275, column: 5, scope: !676)
!1803 = !DILocation(line: 1276, column: 12, scope: !676)
!1804 = !DILocation(line: 1276, column: 10, scope: !676)
!1805 = !DILocation(line: 1277, column: 17, scope: !676)
!1806 = !DILocation(line: 1277, column: 15, scope: !676)
!1807 = !DILocation(line: 1278, column: 27, scope: !676)
!1808 = !DILocation(line: 1278, column: 5, scope: !676)
!1809 = !DILocation(line: 1280, column: 34, scope: !676)
!1810 = !DILocation(line: 1280, column: 16, scope: !676)
!1811 = !DILocation(line: 1280, column: 14, scope: !676)
!1812 = !DILocation(line: 1281, column: 39, scope: !676)
!1813 = !DILocation(line: 1281, column: 21, scope: !676)
!1814 = !DILocation(line: 1281, column: 19, scope: !676)
!1815 = !DILocation(line: 1282, column: 32, scope: !676)
!1816 = !DILocation(line: 1282, column: 42, scope: !676)
!1817 = !DILocation(line: 1282, column: 12, scope: !676)
!1818 = !DILocation(line: 1282, column: 5, scope: !676)
!1819 = !DILocation(line: 1283, column: 1, scope: !676)
!1820 = !DILocation(line: 167, column: 19, scope: !488)
!1821 = !DILocation(line: 170, column: 9, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !488, file: !4, line: 170, column: 9)
!1823 = !DILocation(line: 170, column: 9, scope: !488)
!1824 = !DILocation(line: 172, column: 32, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !4, line: 170, column: 20)
!1826 = !DILocation(line: 172, column: 9, scope: !1825)
!1827 = !DILocation(line: 173, column: 5, scope: !1825)
!1828 = !DILocation(line: 176, column: 32, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1822, file: !4, line: 174, column: 10)
!1830 = !DILocation(line: 176, column: 9, scope: !1829)
!1831 = !DILocation(line: 178, column: 1, scope: !488)
!1832 = !DILocation(line: 715, column: 27, scope: !493)
!1833 = !DILocation(line: 715, column: 5, scope: !493)
!1834 = !DILocation(line: 716, column: 25, scope: !493)
!1835 = !DILocation(line: 716, column: 5, scope: !493)
!1836 = !DILocation(line: 717, column: 31, scope: !493)
!1837 = !DILocation(line: 718, column: 36, scope: !493)
!1838 = !DILocation(line: 719, column: 27, scope: !493)
!1839 = !DILocation(line: 719, column: 5, scope: !493)
!1840 = !DILocation(line: 721, column: 27, scope: !493)
!1841 = !DILocation(line: 721, column: 5, scope: !493)
!1842 = !DILocation(line: 722, column: 25, scope: !493)
!1843 = !DILocation(line: 722, column: 5, scope: !493)
!1844 = !DILocation(line: 724, column: 27, scope: !493)
!1845 = !DILocation(line: 724, column: 5, scope: !493)
!1846 = !DILocation(line: 725, column: 25, scope: !493)
!1847 = !DILocation(line: 725, column: 5, scope: !493)
!1848 = !DILocation(line: 726, column: 1, scope: !493)
!1849 = !DILocation(line: 695, column: 49, scope: !494)
!1850 = !DILocation(line: 695, column: 62, scope: !494)
!1851 = !DILocation(line: 697, column: 5, scope: !494)
!1852 = !DILocation(line: 697, column: 18, scope: !494)
!1853 = !DILocation(line: 697, column: 45, scope: !494)
!1854 = !DILocation(line: 697, column: 52, scope: !494)
!1855 = !{!1856, !1054, i64 8}
!1856 = !{!"", !1857, i64 0, !1054, i64 8, !1145, i64 16}
!1857 = !{!"_Py_slist_item_s", !1054, i64 0}
!1858 = !DILocation(line: 697, column: 30, scope: !494)
!1859 = !DILocation(line: 698, column: 14, scope: !494)
!1860 = !DILocation(line: 698, column: 5, scope: !494)
!1861 = !DILocation(line: 700, column: 1, scope: !494)
!1862 = !DILocation(line: 699, column: 5, scope: !494)
!1863 = !DILocation(line: 687, column: 51, scope: !505)
!1864 = !DILocation(line: 687, column: 64, scope: !505)
!1865 = !DILocation(line: 689, column: 5, scope: !505)
!1866 = !DILocation(line: 689, column: 15, scope: !505)
!1867 = !DILocation(line: 689, column: 38, scope: !505)
!1868 = !DILocation(line: 689, column: 45, scope: !505)
!1869 = !DILocation(line: 689, column: 26, scope: !505)
!1870 = !DILocation(line: 690, column: 5, scope: !505)
!1871 = !DILocation(line: 690, column: 10, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !511, file: !4, discriminator: 1)
!1873 = !DILocation(line: 690, column: 20, scope: !511)
!1874 = !DILocation(line: 690, column: 50, scope: !511)
!1875 = !DILocation(line: 690, column: 69, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !511, file: !4, line: 690, column: 66)
!1877 = !DILocation(line: 690, column: 86, scope: !1876)
!1878 = !DILocation(line: 690, column: 66, scope: !1876)
!1879 = !DILocation(line: 690, column: 96, scope: !1876)
!1880 = !DILocation(line: 690, column: 66, scope: !511)
!1881 = !DILocation(line: 690, column: 66, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !511, file: !4, discriminator: 2)
!1883 = !DILocation(line: 690, column: 127, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1876, file: !4, discriminator: 3)
!1885 = !DILocation(line: 690, column: 145, scope: !1876)
!1886 = !DILocation(line: 690, column: 155, scope: !1876)
!1887 = !DILocation(line: 690, column: 180, scope: !1876)
!1888 = !DILocation(line: 690, column: 111, scope: !1876)
!1889 = !DILocation(line: 690, column: 199, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !505, file: !4, discriminator: 4)
!1891 = !DILocation(line: 690, column: 199, scope: !511)
!1892 = !DILocation(line: 690, column: 199, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !511, file: !4, discriminator: 5)
!1894 = !DILocation(line: 692, column: 1, scope: !505)
!1895 = !DILocation(line: 691, column: 5, scope: !505)
!1896 = !DILocation(line: 228, column: 16, scope: !502)
!1897 = !DILocation(line: 230, column: 20, scope: !502)
!1898 = !{!1899, !1054, i64 56}
!1899 = !{!"", !1423, i64 0, !1423, i64 32, !1423, i64 64}
!1900 = !DILocation(line: 230, column: 40, scope: !502)
!1901 = !{!1899, !1054, i64 32}
!1902 = !DILocation(line: 230, column: 45, scope: !502)
!1903 = !DILocation(line: 230, column: 5, scope: !502)
!1904 = !DILocation(line: 231, column: 1, scope: !502)
!1905 = !DILocation(line: 212, column: 22, scope: !567)
!1906 = !DILocation(line: 213, column: 39, scope: !567)
!1907 = !DILocation(line: 214, column: 42, scope: !567)
!1908 = !DILocation(line: 216, column: 35, scope: !567)
!1909 = !DILocation(line: 217, column: 35, scope: !567)
!1910 = !DILocation(line: 217, column: 46, scope: !567)
!1911 = !DILocation(line: 216, column: 12, scope: !567)
!1912 = !DILocation(line: 216, column: 5, scope: !567)
!1913 = !DILocation(line: 1048, column: 52, scope: !574)
!1914 = !DILocation(line: 1048, column: 65, scope: !574)
!1915 = !DILocation(line: 1050, column: 5, scope: !574)
!1916 = !DILocation(line: 1050, column: 19, scope: !574)
!1917 = !DILocation(line: 1050, column: 32, scope: !574)
!1918 = !DILocation(line: 1051, column: 5, scope: !574)
!1919 = !DILocation(line: 1051, column: 14, scope: !574)
!1920 = !DILocation(line: 1052, column: 5, scope: !574)
!1921 = !DILocation(line: 1052, column: 15, scope: !574)
!1922 = !DILocation(line: 1053, column: 5, scope: !574)
!1923 = !DILocation(line: 1053, column: 9, scope: !574)
!1924 = !DILocation(line: 1055, column: 34, scope: !574)
!1925 = !DILocation(line: 1055, column: 25, scope: !574)
!1926 = !DILocation(line: 1055, column: 41, scope: !574)
!1927 = !DILocation(line: 1055, column: 13, scope: !574)
!1928 = !DILocation(line: 1055, column: 11, scope: !574)
!1929 = !DILocation(line: 1057, column: 41, scope: !574)
!1930 = !DILocation(line: 1057, column: 48, scope: !574)
!1931 = !DILocation(line: 1057, column: 60, scope: !574)
!1932 = !DILocation(line: 1057, column: 23, scope: !574)
!1933 = !DILocation(line: 1057, column: 21, scope: !574)
!1934 = !DILocation(line: 1058, column: 9, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !574, file: !4, line: 1058, column: 9)
!1936 = !DILocation(line: 1058, column: 25, scope: !1935)
!1937 = !DILocation(line: 1058, column: 9, scope: !574)
!1938 = !DILocation(line: 1059, column: 9, scope: !1935)
!1939 = !DILocation(line: 1061, column: 25, scope: !574)
!1940 = !DILocation(line: 1061, column: 37, scope: !574)
!1941 = !DILocation(line: 1061, column: 43, scope: !574)
!1942 = !DILocation(line: 1061, column: 11, scope: !574)
!1943 = !DILocation(line: 1061, column: 9, scope: !574)
!1944 = !DILocation(line: 1062, column: 5, scope: !574)
!1945 = !DILocation(line: 1062, column: 10, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !584, file: !4, discriminator: 1)
!1947 = !DILocation(line: 1062, column: 20, scope: !584)
!1948 = !DILocation(line: 1062, column: 50, scope: !584)
!1949 = !DILocation(line: 1062, column: 76, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !584, file: !4, line: 1062, column: 73)
!1951 = !DILocation(line: 1062, column: 93, scope: !1950)
!1952 = !DILocation(line: 1062, column: 73, scope: !1950)
!1953 = !DILocation(line: 1062, column: 103, scope: !1950)
!1954 = !DILocation(line: 1062, column: 73, scope: !584)
!1955 = !DILocation(line: 1062, column: 73, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !584, file: !4, discriminator: 2)
!1957 = !DILocation(line: 1062, column: 134, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1950, file: !4, discriminator: 3)
!1959 = !DILocation(line: 1062, column: 152, scope: !1950)
!1960 = !DILocation(line: 1062, column: 162, scope: !1950)
!1961 = !DILocation(line: 1062, column: 187, scope: !1950)
!1962 = !DILocation(line: 1062, column: 118, scope: !1950)
!1963 = !DILocation(line: 1062, column: 206, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !574, file: !4, discriminator: 4)
!1965 = !DILocation(line: 1062, column: 206, scope: !584)
!1966 = !DILocation(line: 1062, column: 206, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !584, file: !4, discriminator: 5)
!1968 = !DILocation(line: 1063, column: 9, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !574, file: !4, line: 1063, column: 9)
!1970 = !DILocation(line: 1063, column: 13, scope: !1969)
!1971 = !DILocation(line: 1063, column: 9, scope: !574)
!1972 = !DILocation(line: 1064, column: 9, scope: !1969)
!1973 = !DILocation(line: 1066, column: 5, scope: !574)
!1974 = !DILocation(line: 1067, column: 1, scope: !574)
!1975 = !DILocation(line: 1070, column: 55, scope: !641)
!1976 = !DILocation(line: 1070, column: 68, scope: !641)
!1977 = !DILocation(line: 1072, column: 5, scope: !641)
!1978 = !DILocation(line: 1072, column: 15, scope: !641)
!1979 = !DILocation(line: 1072, column: 54, scope: !641)
!1980 = !DILocation(line: 1072, column: 45, scope: !641)
!1981 = !DILocation(line: 1072, column: 61, scope: !641)
!1982 = !DILocation(line: 1072, column: 35, scope: !641)
!1983 = !DILocation(line: 1072, column: 34, scope: !641)
!1984 = !DILocation(line: 1072, column: 21, scope: !641)
!1985 = !DILocation(line: 1073, column: 5, scope: !641)
!1986 = !DILocation(line: 1073, column: 10, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !647, file: !4, discriminator: 1)
!1988 = !DILocation(line: 1073, column: 20, scope: !647)
!1989 = !DILocation(line: 1073, column: 50, scope: !647)
!1990 = !DILocation(line: 1073, column: 64, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !647, file: !4, line: 1073, column: 61)
!1992 = !DILocation(line: 1073, column: 81, scope: !1991)
!1993 = !DILocation(line: 1073, column: 61, scope: !1991)
!1994 = !DILocation(line: 1073, column: 91, scope: !1991)
!1995 = !DILocation(line: 1073, column: 61, scope: !647)
!1996 = !DILocation(line: 1073, column: 61, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !647, file: !4, discriminator: 2)
!1998 = !DILocation(line: 1073, column: 122, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1991, file: !4, discriminator: 3)
!2000 = !DILocation(line: 1073, column: 140, scope: !1991)
!2001 = !DILocation(line: 1073, column: 150, scope: !1991)
!2002 = !DILocation(line: 1073, column: 175, scope: !1991)
!2003 = !DILocation(line: 1073, column: 106, scope: !1991)
!2004 = !DILocation(line: 1073, column: 194, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !641, file: !4, discriminator: 4)
!2006 = !DILocation(line: 1073, column: 194, scope: !647)
!2007 = !DILocation(line: 1073, column: 194, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !647, file: !4, discriminator: 5)
!2009 = !DILocation(line: 1075, column: 1, scope: !641)
!2010 = !DILocation(line: 1074, column: 5, scope: !641)
!2011 = !DILocation(line: 1015, column: 28, scope: !585)
!2012 = !DILocation(line: 1015, column: 52, scope: !585)
!2013 = !DILocation(line: 1017, column: 5, scope: !585)
!2014 = !DILocation(line: 1017, column: 15, scope: !585)
!2015 = !DILocation(line: 1018, column: 5, scope: !585)
!2016 = !DILocation(line: 1018, column: 15, scope: !585)
!2017 = !DILocation(line: 1018, column: 22, scope: !585)
!2018 = !DILocation(line: 1020, column: 17, scope: !585)
!2019 = !DILocation(line: 1020, column: 15, scope: !585)
!2020 = !DILocation(line: 1021, column: 9, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !585, file: !4, line: 1021, column: 9)
!2022 = !DILocation(line: 1021, column: 19, scope: !2021)
!2023 = !DILocation(line: 1021, column: 9, scope: !585)
!2024 = !DILocation(line: 1022, column: 9, scope: !2021)
!2025 = !DILocation(line: 1024, column: 30, scope: !585)
!2026 = !DILocation(line: 1024, column: 37, scope: !585)
!2027 = !{!1715, !1145, i64 0}
!2028 = !DILocation(line: 1024, column: 12, scope: !585)
!2029 = !DILocation(line: 1024, column: 10, scope: !585)
!2030 = !DILocation(line: 1025, column: 9, scope: !597)
!2031 = !DILocation(line: 1025, column: 14, scope: !597)
!2032 = !DILocation(line: 1025, column: 9, scope: !585)
!2033 = !DILocation(line: 1026, column: 9, scope: !596)
!2034 = !DILocation(line: 1026, column: 14, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !595, file: !4, discriminator: 1)
!2036 = !DILocation(line: 1026, column: 24, scope: !595)
!2037 = !DILocation(line: 1026, column: 54, scope: !595)
!2038 = !DILocation(line: 1026, column: 74, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !595, file: !4, line: 1026, column: 71)
!2040 = !DILocation(line: 1026, column: 91, scope: !2039)
!2041 = !DILocation(line: 1026, column: 71, scope: !2039)
!2042 = !DILocation(line: 1026, column: 101, scope: !2039)
!2043 = !DILocation(line: 1026, column: 71, scope: !595)
!2044 = !DILocation(line: 1026, column: 71, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !595, file: !4, discriminator: 2)
!2046 = !DILocation(line: 1026, column: 132, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2039, file: !4, discriminator: 3)
!2048 = !DILocation(line: 1026, column: 150, scope: !2039)
!2049 = !DILocation(line: 1026, column: 160, scope: !2039)
!2050 = !DILocation(line: 1026, column: 185, scope: !2039)
!2051 = !DILocation(line: 1026, column: 116, scope: !2039)
!2052 = !DILocation(line: 1026, column: 204, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !596, file: !4, discriminator: 4)
!2054 = !DILocation(line: 1026, column: 204, scope: !595)
!2055 = !DILocation(line: 1026, column: 204, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !595, file: !4, discriminator: 5)
!2057 = !DILocation(line: 1027, column: 9, scope: !596)
!2058 = !DILocation(line: 1029, column: 51, scope: !585)
!2059 = !DILocation(line: 1029, column: 25, scope: !585)
!2060 = !DILocation(line: 1029, column: 7, scope: !585)
!2061 = !DILocation(line: 1029, column: 38, scope: !585)
!2062 = !DILocation(line: 1029, column: 6, scope: !585)
!2063 = !DILocation(line: 1029, column: 49, scope: !585)
!2064 = !DILocation(line: 1031, column: 39, scope: !585)
!2065 = !DILocation(line: 1031, column: 46, scope: !585)
!2066 = !DILocation(line: 1031, column: 57, scope: !585)
!2067 = !DILocation(line: 1031, column: 17, scope: !585)
!2068 = !DILocation(line: 1031, column: 15, scope: !585)
!2069 = !DILocation(line: 1032, column: 9, scope: !601)
!2070 = !DILocation(line: 1032, column: 19, scope: !601)
!2071 = !DILocation(line: 1032, column: 9, scope: !585)
!2072 = !DILocation(line: 1033, column: 9, scope: !600)
!2073 = !DILocation(line: 1033, column: 14, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 1)
!2075 = !DILocation(line: 1033, column: 24, scope: !599)
!2076 = !DILocation(line: 1033, column: 54, scope: !599)
!2077 = !DILocation(line: 1033, column: 74, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !599, file: !4, line: 1033, column: 71)
!2079 = !DILocation(line: 1033, column: 91, scope: !2078)
!2080 = !DILocation(line: 1033, column: 71, scope: !2078)
!2081 = !DILocation(line: 1033, column: 101, scope: !2078)
!2082 = !DILocation(line: 1033, column: 71, scope: !599)
!2083 = !DILocation(line: 1033, column: 71, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 2)
!2085 = !DILocation(line: 1033, column: 132, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2078, file: !4, discriminator: 3)
!2087 = !DILocation(line: 1033, column: 150, scope: !2078)
!2088 = !DILocation(line: 1033, column: 160, scope: !2078)
!2089 = !DILocation(line: 1033, column: 185, scope: !2078)
!2090 = !DILocation(line: 1033, column: 116, scope: !2078)
!2091 = !DILocation(line: 1033, column: 204, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !600, file: !4, discriminator: 4)
!2093 = !DILocation(line: 1033, column: 204, scope: !599)
!2094 = !DILocation(line: 1033, column: 204, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 5)
!2096 = !DILocation(line: 1034, column: 9, scope: !600)
!2097 = !DILocation(line: 1036, column: 51, scope: !585)
!2098 = !DILocation(line: 1036, column: 25, scope: !585)
!2099 = !DILocation(line: 1036, column: 7, scope: !585)
!2100 = !DILocation(line: 1036, column: 38, scope: !585)
!2101 = !DILocation(line: 1036, column: 6, scope: !585)
!2102 = !DILocation(line: 1036, column: 49, scope: !585)
!2103 = !DILocation(line: 1038, column: 12, scope: !585)
!2104 = !DILocation(line: 1038, column: 5, scope: !585)
!2105 = !DILocation(line: 1039, column: 1, scope: !585)
!2106 = !DILocation(line: 977, column: 36, scope: !602)
!2107 = !DILocation(line: 977, column: 64, scope: !602)
!2108 = !DILocation(line: 979, column: 5, scope: !602)
!2109 = !DILocation(line: 979, column: 9, scope: !602)
!2110 = !DILocation(line: 980, column: 5, scope: !602)
!2111 = !DILocation(line: 980, column: 15, scope: !602)
!2112 = !DILocation(line: 980, column: 24, scope: !602)
!2113 = !DILocation(line: 982, column: 9, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !602, file: !4, line: 982, column: 9)
!2115 = !DILocation(line: 982, column: 22, scope: !2114)
!2116 = !DILocation(line: 982, column: 9, scope: !602)
!2117 = !DILocation(line: 983, column: 31, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !4, line: 983, column: 13)
!2119 = distinct !DILexicalBlock(scope: !2114, file: !4, line: 982, column: 37)
!2120 = !DILocation(line: 983, column: 45, scope: !2118)
!2121 = !DILocation(line: 983, column: 56, scope: !2118)
!2122 = !DILocation(line: 983, column: 13, scope: !2118)
!2123 = !DILocation(line: 983, column: 13, scope: !2119)
!2124 = !DILocation(line: 984, column: 29, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2118, file: !4, line: 983, column: 84)
!2126 = !DILocation(line: 984, column: 39, scope: !2125)
!2127 = !DILocation(line: 984, column: 48, scope: !2125)
!2128 = !DILocation(line: 985, column: 20, scope: !2125)
!2129 = !DILocation(line: 985, column: 13, scope: !2125)
!2130 = !DILocation(line: 987, column: 5, scope: !2119)
!2131 = !DILocation(line: 989, column: 26, scope: !602)
!2132 = !DILocation(line: 989, column: 37, scope: !602)
!2133 = !DILocation(line: 989, column: 14, scope: !602)
!2134 = !DILocation(line: 989, column: 12, scope: !602)
!2135 = !DILocation(line: 990, column: 9, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !602, file: !4, line: 990, column: 9)
!2137 = !DILocation(line: 990, column: 16, scope: !2136)
!2138 = !DILocation(line: 990, column: 9, scope: !602)
!2139 = !DILocation(line: 991, column: 9, scope: !2136)
!2140 = !DILocation(line: 993, column: 11, scope: !617)
!2141 = !DILocation(line: 993, column: 10, scope: !617)
!2142 = !DILocation(line: 993, column: 15, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2144, file: !4, discriminator: 2)
!2144 = !DILexicalBlockFile(scope: !616, file: !4, discriminator: 1)
!2145 = !DILocation(line: 993, column: 19, scope: !616)
!2146 = !DILocation(line: 993, column: 30, scope: !616)
!2147 = !DILocation(line: 993, column: 17, scope: !616)
!2148 = !DILocation(line: 993, column: 5, scope: !617)
!2149 = !DILocation(line: 994, column: 54, scope: !615)
!2150 = !DILocation(line: 994, column: 36, scope: !615)
!2151 = !DILocation(line: 994, column: 47, scope: !615)
!2152 = !DILocation(line: 994, column: 17, scope: !615)
!2153 = !DILocation(line: 994, column: 15, scope: !615)
!2154 = !DILocation(line: 995, column: 13, scope: !614)
!2155 = !DILocation(line: 995, column: 19, scope: !614)
!2156 = !DILocation(line: 995, column: 13, scope: !615)
!2157 = !DILocation(line: 996, column: 13, scope: !613)
!2158 = !DILocation(line: 996, column: 18, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !612, file: !4, discriminator: 1)
!2160 = !DILocation(line: 996, column: 28, scope: !612)
!2161 = !DILocation(line: 996, column: 58, scope: !612)
!2162 = !DILocation(line: 996, column: 75, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !612, file: !4, line: 996, column: 72)
!2164 = !DILocation(line: 996, column: 92, scope: !2163)
!2165 = !DILocation(line: 996, column: 72, scope: !2163)
!2166 = !DILocation(line: 996, column: 102, scope: !2163)
!2167 = !DILocation(line: 996, column: 72, scope: !612)
!2168 = !DILocation(line: 996, column: 72, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !612, file: !4, discriminator: 2)
!2170 = !DILocation(line: 996, column: 133, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2163, file: !4, discriminator: 3)
!2172 = !DILocation(line: 996, column: 151, scope: !2163)
!2173 = !DILocation(line: 996, column: 161, scope: !2163)
!2174 = !DILocation(line: 996, column: 186, scope: !2163)
!2175 = !DILocation(line: 996, column: 117, scope: !2163)
!2176 = !DILocation(line: 996, column: 205, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !613, file: !4, discriminator: 4)
!2178 = !DILocation(line: 996, column: 205, scope: !612)
!2179 = !DILocation(line: 996, column: 205, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !612, file: !4, discriminator: 5)
!2181 = !DILocation(line: 997, column: 13, scope: !613)
!2182 = !DILocation(line: 999, column: 52, scope: !615)
!2183 = !DILocation(line: 999, column: 47, scope: !615)
!2184 = !DILocation(line: 999, column: 10, scope: !615)
!2185 = !DILocation(line: 999, column: 29, scope: !615)
!2186 = !DILocation(line: 999, column: 11, scope: !615)
!2187 = !DILocation(line: 999, column: 39, scope: !615)
!2188 = !DILocation(line: 999, column: 50, scope: !615)
!2189 = !DILocation(line: 1000, column: 5, scope: !615)
!2190 = !DILocation(line: 993, column: 39, scope: !616)
!2191 = !DILocation(line: 993, column: 5, scope: !616)
!2192 = !DILocation(line: 1002, column: 9, scope: !623)
!2193 = !DILocation(line: 1002, column: 22, scope: !623)
!2194 = !DILocation(line: 1002, column: 9, scope: !602)
!2195 = !DILocation(line: 1003, column: 31, scope: !621)
!2196 = !DILocation(line: 1003, column: 45, scope: !621)
!2197 = !DILocation(line: 1003, column: 56, scope: !621)
!2198 = !DILocation(line: 1003, column: 13, scope: !621)
!2199 = !DILocation(line: 1003, column: 83, scope: !621)
!2200 = !DILocation(line: 1003, column: 13, scope: !622)
!2201 = !DILocation(line: 1004, column: 13, scope: !620)
!2202 = !DILocation(line: 1004, column: 18, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !619, file: !4, discriminator: 1)
!2204 = !DILocation(line: 1004, column: 28, scope: !619)
!2205 = !DILocation(line: 1004, column: 58, scope: !619)
!2206 = !DILocation(line: 1004, column: 75, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !619, file: !4, line: 1004, column: 72)
!2208 = !DILocation(line: 1004, column: 92, scope: !2207)
!2209 = !DILocation(line: 1004, column: 72, scope: !2207)
!2210 = !DILocation(line: 1004, column: 102, scope: !2207)
!2211 = !DILocation(line: 1004, column: 72, scope: !619)
!2212 = !DILocation(line: 1004, column: 72, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !619, file: !4, discriminator: 2)
!2214 = !DILocation(line: 1004, column: 133, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2207, file: !4, discriminator: 3)
!2216 = !DILocation(line: 1004, column: 151, scope: !2207)
!2217 = !DILocation(line: 1004, column: 161, scope: !2207)
!2218 = !DILocation(line: 1004, column: 186, scope: !2207)
!2219 = !DILocation(line: 1004, column: 117, scope: !2207)
!2220 = !DILocation(line: 1004, column: 205, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !620, file: !4, discriminator: 4)
!2222 = !DILocation(line: 1004, column: 205, scope: !619)
!2223 = !DILocation(line: 1004, column: 205, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !619, file: !4, discriminator: 5)
!2225 = !DILocation(line: 1005, column: 13, scope: !620)
!2226 = !DILocation(line: 1006, column: 13, scope: !620)
!2227 = !DILocation(line: 1009, column: 25, scope: !622)
!2228 = !DILocation(line: 1009, column: 35, scope: !622)
!2229 = !DILocation(line: 1009, column: 44, scope: !622)
!2230 = !DILocation(line: 1010, column: 5, scope: !622)
!2231 = !DILocation(line: 1011, column: 12, scope: !602)
!2232 = !DILocation(line: 1011, column: 5, scope: !602)
!2233 = !DILocation(line: 1012, column: 1, scope: !602)
!2234 = !DILocation(line: 952, column: 28, scope: !624)
!2235 = !DILocation(line: 954, column: 5, scope: !624)
!2236 = !DILocation(line: 954, column: 15, scope: !624)
!2237 = !DILocation(line: 954, column: 27, scope: !624)
!2238 = !DILocation(line: 956, column: 17, scope: !624)
!2239 = !DILocation(line: 956, column: 15, scope: !624)
!2240 = !DILocation(line: 957, column: 9, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !624, file: !4, line: 957, column: 9)
!2242 = !DILocation(line: 957, column: 19, scope: !2241)
!2243 = !DILocation(line: 957, column: 9, scope: !624)
!2244 = !DILocation(line: 958, column: 9, scope: !2241)
!2245 = !DILocation(line: 960, column: 9, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !624, file: !4, line: 960, column: 9)
!2247 = !DILocation(line: 960, column: 16, scope: !2246)
!2248 = !DILocation(line: 960, column: 25, scope: !2246)
!2249 = !DILocation(line: 960, column: 9, scope: !624)
!2250 = !DILocation(line: 961, column: 9, scope: !2246)
!2251 = !DILocation(line: 961, column: 16, scope: !2246)
!2252 = !DILocation(line: 961, column: 25, scope: !2246)
!2253 = !DILocation(line: 962, column: 21, scope: !624)
!2254 = !DILocation(line: 962, column: 28, scope: !624)
!2255 = !DILocation(line: 962, column: 40, scope: !624)
!2256 = !DILocation(line: 962, column: 49, scope: !624)
!2257 = !DILocation(line: 963, column: 51, scope: !624)
!2258 = !DILocation(line: 963, column: 58, scope: !624)
!2259 = !DILocation(line: 963, column: 25, scope: !624)
!2260 = !DILocation(line: 963, column: 7, scope: !624)
!2261 = !DILocation(line: 963, column: 38, scope: !624)
!2262 = !DILocation(line: 963, column: 6, scope: !624)
!2263 = !DILocation(line: 963, column: 49, scope: !624)
!2264 = !DILocation(line: 966, column: 32, scope: !624)
!2265 = !DILocation(line: 966, column: 39, scope: !624)
!2266 = !DILocation(line: 966, column: 18, scope: !624)
!2267 = !DILocation(line: 966, column: 16, scope: !624)
!2268 = !DILocation(line: 967, column: 9, scope: !635)
!2269 = !DILocation(line: 967, column: 20, scope: !635)
!2270 = !DILocation(line: 967, column: 9, scope: !624)
!2271 = !DILocation(line: 968, column: 9, scope: !634)
!2272 = !DILocation(line: 968, column: 14, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !633, file: !4, discriminator: 1)
!2274 = !DILocation(line: 968, column: 24, scope: !633)
!2275 = !DILocation(line: 968, column: 54, scope: !633)
!2276 = !DILocation(line: 968, column: 74, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !633, file: !4, line: 968, column: 71)
!2278 = !DILocation(line: 968, column: 91, scope: !2277)
!2279 = !DILocation(line: 968, column: 71, scope: !2277)
!2280 = !DILocation(line: 968, column: 101, scope: !2277)
!2281 = !DILocation(line: 968, column: 71, scope: !633)
!2282 = !DILocation(line: 968, column: 71, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !633, file: !4, discriminator: 2)
!2284 = !DILocation(line: 968, column: 132, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2277, file: !4, discriminator: 3)
!2286 = !DILocation(line: 968, column: 150, scope: !2277)
!2287 = !DILocation(line: 968, column: 160, scope: !2277)
!2288 = !DILocation(line: 968, column: 185, scope: !2277)
!2289 = !DILocation(line: 968, column: 116, scope: !2277)
!2290 = !DILocation(line: 968, column: 204, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !634, file: !4, discriminator: 4)
!2292 = !DILocation(line: 968, column: 204, scope: !633)
!2293 = !DILocation(line: 968, column: 204, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !633, file: !4, discriminator: 5)
!2295 = !DILocation(line: 969, column: 9, scope: !634)
!2296 = !DILocation(line: 971, column: 51, scope: !624)
!2297 = !DILocation(line: 971, column: 25, scope: !624)
!2298 = !DILocation(line: 971, column: 7, scope: !624)
!2299 = !DILocation(line: 971, column: 38, scope: !624)
!2300 = !DILocation(line: 971, column: 6, scope: !624)
!2301 = !DILocation(line: 971, column: 49, scope: !624)
!2302 = !DILocation(line: 973, column: 12, scope: !624)
!2303 = !DILocation(line: 973, column: 5, scope: !624)
!2304 = !DILocation(line: 974, column: 1, scope: !624)
!2305 = !DILocation(line: 913, column: 19, scope: !636)
!2306 = !DILocation(line: 915, column: 9, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !636, file: !4, line: 915, column: 9)
!2308 = !DILocation(line: 915, column: 16, scope: !2307)
!2309 = !DILocation(line: 915, column: 9, scope: !636)
!2310 = !DILocation(line: 916, column: 32, scope: !2307)
!2311 = !DILocation(line: 916, column: 16, scope: !2307)
!2312 = !DILocation(line: 916, column: 9, scope: !2307)
!2313 = !DILocation(line: 918, column: 62, scope: !2307)
!2314 = !DILocation(line: 918, column: 9, scope: !2307)
!2315 = !DILocation(line: 919, column: 1, scope: !636)
!2316 = !DILocation(line: 889, column: 29, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !667, file: !4, line: 889, column: 9)
!2318 = !DILocation(line: 889, column: 10, scope: !2317)
!2319 = !DILocation(line: 889, column: 9, scope: !667)
!2320 = !DILocation(line: 890, column: 9, scope: !2317)
!2321 = !DILocation(line: 893, column: 32, scope: !667)
!2322 = !DILocation(line: 897, column: 5, scope: !667)
!2323 = !DILocation(line: 901, column: 5, scope: !667)
!2324 = !DILocation(line: 903, column: 5, scope: !667)
!2325 = !DILocation(line: 904, column: 5, scope: !667)
!2326 = !DILocation(line: 907, column: 5, scope: !667)
!2327 = !DILocation(line: 908, column: 14, scope: !667)
!2328 = !DILocation(line: 908, column: 5, scope: !667)
!2329 = !DILocation(line: 909, column: 27, scope: !667)
!2330 = !DILocation(line: 910, column: 1, scope: !667)
!2331 = !DILocation(line: 910, column: 1, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !667, file: !4, discriminator: 1)
!2333 = !DILocation(line: 201, column: 39, scope: !684)
!2334 = !DILocation(line: 201, column: 73, scope: !684)
!2335 = !DILocation(line: 203, column: 9, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !684, file: !4, line: 203, column: 9)
!2337 = !DILocation(line: 203, column: 13, scope: !2336)
!2338 = !DILocation(line: 203, column: 27, scope: !2336)
!2339 = !DILocation(line: 203, column: 30, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2336, file: !4, discriminator: 1)
!2341 = !DILocation(line: 203, column: 37, scope: !2336)
!2342 = !DILocation(line: 203, column: 41, scope: !2336)
!2343 = !DILocation(line: 203, column: 9, scope: !684)
!2344 = !DILocation(line: 204, column: 47, scope: !2336)
!2345 = !DILocation(line: 204, column: 35, scope: !2336)
!2346 = !DILocation(line: 204, column: 64, scope: !2336)
!2347 = !DILocation(line: 204, column: 71, scope: !2336)
!2348 = !DILocation(line: 204, column: 52, scope: !2336)
!2349 = !DILocation(line: 204, column: 17, scope: !2336)
!2350 = !DILocation(line: 204, column: 76, scope: !2336)
!2351 = !DILocation(line: 204, column: 9, scope: !2336)
!2352 = !DILocation(line: 206, column: 16, scope: !2336)
!2353 = !DILocation(line: 206, column: 23, scope: !2336)
!2354 = !DILocation(line: 206, column: 30, scope: !2336)
!2355 = !DILocation(line: 206, column: 20, scope: !2336)
!2356 = !DILocation(line: 206, column: 9, scope: !2336)
!2357 = !DILocation(line: 207, column: 1, scope: !684)
!2358 = !DILocation(line: 234, column: 38, scope: !688)
!2359 = !DILocation(line: 236, column: 5, scope: !688)
!2360 = !DILocation(line: 236, column: 24, scope: !688)
!2361 = !DILocation(line: 236, column: 36, scope: !688)
!2362 = !DILocation(line: 237, column: 12, scope: !688)
!2363 = !DILocation(line: 237, column: 23, scope: !688)
!2364 = !DILocation(line: 238, column: 1, scope: !688)
!2365 = !DILocation(line: 237, column: 5, scope: !688)
!2366 = !DILocation(line: 241, column: 48, scope: !694)
!2367 = !DILocation(line: 242, column: 58, scope: !694)
!2368 = !DILocation(line: 244, column: 5, scope: !694)
!2369 = !DILocation(line: 244, column: 24, scope: !694)
!2370 = !DILocation(line: 244, column: 37, scope: !694)
!2371 = !DILocation(line: 244, column: 41, scope: !694)
!2372 = !DILocation(line: 245, column: 5, scope: !694)
!2373 = !DILocation(line: 245, column: 20, scope: !694)
!2374 = !DILocation(line: 245, column: 29, scope: !694)
!2375 = !DILocation(line: 246, column: 5, scope: !694)
!2376 = !DILocation(line: 246, column: 9, scope: !694)
!2377 = !DILocation(line: 248, column: 9, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !694, file: !4, line: 248, column: 9)
!2379 = !DILocation(line: 248, column: 21, scope: !2378)
!2380 = !DILocation(line: 248, column: 31, scope: !2378)
!2381 = !DILocation(line: 248, column: 43, scope: !2378)
!2382 = !DILocation(line: 248, column: 28, scope: !2378)
!2383 = !DILocation(line: 248, column: 9, scope: !694)
!2384 = !DILocation(line: 249, column: 9, scope: !2378)
!2385 = !DILocation(line: 251, column: 11, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !694, file: !4, line: 251, column: 5)
!2387 = !DILocation(line: 251, column: 10, scope: !2386)
!2388 = !DILocation(line: 251, column: 15, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2390, file: !4, discriminator: 2)
!2390 = !DILexicalBlockFile(scope: !2391, file: !4, discriminator: 1)
!2391 = distinct !DILexicalBlock(scope: !2386, file: !4, line: 251, column: 5)
!2392 = !DILocation(line: 251, column: 19, scope: !2391)
!2393 = !DILocation(line: 251, column: 31, scope: !2391)
!2394 = !DILocation(line: 251, column: 17, scope: !2391)
!2395 = !DILocation(line: 251, column: 5, scope: !2386)
!2396 = !DILocation(line: 252, column: 38, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2391, file: !4, line: 251, column: 44)
!2398 = !DILocation(line: 252, column: 19, scope: !2397)
!2399 = !DILocation(line: 252, column: 31, scope: !2397)
!2400 = !DILocation(line: 252, column: 16, scope: !2397)
!2401 = !DILocation(line: 253, column: 38, scope: !2397)
!2402 = !DILocation(line: 253, column: 19, scope: !2397)
!2403 = !DILocation(line: 253, column: 31, scope: !2397)
!2404 = !DILocation(line: 253, column: 16, scope: !2397)
!2405 = !DILocation(line: 255, column: 13, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 255, column: 13)
!2407 = !DILocation(line: 255, column: 21, scope: !2406)
!2408 = !DILocation(line: 255, column: 31, scope: !2406)
!2409 = !DILocation(line: 255, column: 39, scope: !2406)
!2410 = !DILocation(line: 255, column: 28, scope: !2406)
!2411 = !DILocation(line: 255, column: 13, scope: !2397)
!2412 = !DILocation(line: 256, column: 13, scope: !2406)
!2413 = !DILocation(line: 258, column: 13, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 258, column: 13)
!2415 = !DILocation(line: 258, column: 21, scope: !2414)
!2416 = !DILocation(line: 258, column: 33, scope: !2414)
!2417 = !DILocation(line: 258, column: 41, scope: !2414)
!2418 = !DILocation(line: 258, column: 30, scope: !2414)
!2419 = !DILocation(line: 258, column: 13, scope: !2397)
!2420 = !DILocation(line: 260, column: 13, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2414, file: !4, line: 258, column: 51)
!2422 = !DILocation(line: 262, column: 5, scope: !2397)
!2423 = !DILocation(line: 251, column: 40, scope: !2391)
!2424 = !DILocation(line: 251, column: 5, scope: !2391)
!2425 = !DILocation(line: 263, column: 5, scope: !694)
!2426 = !DILocation(line: 264, column: 1, scope: !694)
!2427 = !DILocation(line: 337, column: 29, scope: !706)
!2428 = !DILocation(line: 340, column: 5, scope: !706)
!2429 = !DILocation(line: 340, column: 16, scope: !706)
!2430 = !DILocation(line: 340, column: 19, scope: !706)
!2431 = !DILocation(line: 341, column: 5, scope: !706)
!2432 = !DILocation(line: 341, column: 9, scope: !706)
!2433 = !DILocation(line: 341, column: 15, scope: !706)
!2434 = !DILocation(line: 341, column: 26, scope: !706)
!2435 = !DILocation(line: 342, column: 5, scope: !706)
!2436 = !DILocation(line: 342, column: 16, scope: !706)
!2437 = !DILocation(line: 343, column: 5, scope: !706)
!2438 = !DILocation(line: 343, column: 14, scope: !706)
!2439 = !DILocation(line: 345, column: 7, scope: !706)
!2440 = !DILocation(line: 346, column: 13, scope: !706)
!2441 = !DILocation(line: 346, column: 24, scope: !706)
!2442 = !DILocation(line: 346, column: 11, scope: !706)
!2443 = !DILocation(line: 347, column: 5, scope: !706)
!2444 = !DILocation(line: 347, column: 12, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2446, file: !4, discriminator: 2)
!2446 = !DILexicalBlockFile(scope: !706, file: !4, discriminator: 1)
!2447 = !DILocation(line: 347, column: 18, scope: !706)
!2448 = !DILocation(line: 348, column: 39, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !706, file: !4, line: 347, column: 24)
!2450 = !DILocation(line: 348, column: 46, scope: !2449)
!2451 = !DILocation(line: 348, column: 25, scope: !2449)
!2452 = !DILocation(line: 348, column: 11, scope: !2449)
!2453 = !DILocation(line: 349, column: 26, scope: !2449)
!2454 = !DILocation(line: 349, column: 33, scope: !2449)
!2455 = !DILocation(line: 349, column: 14, scope: !2449)
!2456 = !DILocation(line: 349, column: 11, scope: !2449)
!2457 = !DILocation(line: 350, column: 14, scope: !2449)
!2458 = !DILocation(line: 352, column: 14, scope: !2449)
!2459 = !DILocation(line: 352, column: 18, scope: !2449)
!2460 = !DILocation(line: 352, column: 16, scope: !2449)
!2461 = !DILocation(line: 352, column: 23, scope: !2449)
!2462 = !DILocation(line: 352, column: 21, scope: !2449)
!2463 = !DILocation(line: 352, column: 11, scope: !2449)
!2464 = !DILocation(line: 354, column: 40, scope: !2449)
!2465 = !DILocation(line: 354, column: 38, scope: !2449)
!2466 = !DILocation(line: 354, column: 46, scope: !2449)
!2467 = !DILocation(line: 354, column: 44, scope: !2449)
!2468 = !DILocation(line: 354, column: 14, scope: !2449)
!2469 = !DILocation(line: 356, column: 7, scope: !706)
!2470 = !DILocation(line: 357, column: 12, scope: !706)
!2471 = !DILocation(line: 358, column: 1, scope: !706)
!2472 = !DILocation(line: 357, column: 5, scope: !706)
!2473 = !DILocation(line: 222, column: 19, scope: !730)
!2474 = !DILocation(line: 224, column: 27, scope: !730)
!2475 = !{!1899, !1054, i64 40}
!2476 = !DILocation(line: 224, column: 49, scope: !730)
!2477 = !DILocation(line: 224, column: 54, scope: !730)
!2478 = !DILocation(line: 224, column: 12, scope: !730)
!2479 = !DILocation(line: 224, column: 5, scope: !730)
!2480 = !DILocation(line: 617, column: 30, scope: !733)
!2481 = !DILocation(line: 617, column: 42, scope: !733)
!2482 = !DILocation(line: 620, column: 5, scope: !733)
!2483 = !DILocation(line: 620, column: 22, scope: !733)
!2484 = !DILocation(line: 622, column: 5, scope: !733)
!2485 = !DILocation(line: 622, column: 11, scope: !733)
!2486 = !DILocation(line: 624, column: 9, scope: !742)
!2487 = !DILocation(line: 624, column: 9, scope: !733)
!2488 = !DILocation(line: 625, column: 9, scope: !741)
!2489 = !DILocation(line: 625, column: 25, scope: !741)
!2490 = !DILocation(line: 625, column: 51, scope: !741)
!2491 = !DILocation(line: 625, column: 33, scope: !741)
!2492 = !DILocation(line: 626, column: 16, scope: !741)
!2493 = !DILocation(line: 626, column: 23, scope: !741)
!2494 = !DILocation(line: 626, column: 30, scope: !741)
!2495 = !DILocation(line: 626, column: 37, scope: !741)
!2496 = !DILocation(line: 626, column: 42, scope: !741)
!2497 = !DILocation(line: 626, column: 9, scope: !741)
!2498 = !DILocation(line: 627, column: 5, scope: !742)
!2499 = !DILocation(line: 632, column: 5, scope: !733)
!2500 = !DILocation(line: 635, column: 17, scope: !733)
!2501 = !DILocation(line: 635, column: 15, scope: !733)
!2502 = !DILocation(line: 636, column: 30, scope: !733)
!2503 = !DILocation(line: 636, column: 35, scope: !733)
!2504 = !DILocation(line: 636, column: 11, scope: !733)
!2505 = !DILocation(line: 636, column: 9, scope: !733)
!2506 = !DILocation(line: 637, column: 24, scope: !733)
!2507 = !DILocation(line: 637, column: 5, scope: !733)
!2508 = !DILocation(line: 642, column: 5, scope: !733)
!2509 = !DILocation(line: 643, column: 12, scope: !733)
!2510 = !DILocation(line: 643, column: 5, scope: !733)
!2511 = !DILocation(line: 644, column: 1, scope: !733)
!2512 = !DILocation(line: 647, column: 31, scope: !907)
!2513 = !DILocation(line: 647, column: 42, scope: !907)
!2514 = !DILocation(line: 647, column: 54, scope: !907)
!2515 = !DILocation(line: 650, column: 5, scope: !907)
!2516 = !DILocation(line: 650, column: 22, scope: !907)
!2517 = !DILocation(line: 652, column: 5, scope: !907)
!2518 = !DILocation(line: 652, column: 11, scope: !907)
!2519 = !DILocation(line: 654, column: 9, scope: !916)
!2520 = !DILocation(line: 654, column: 9, scope: !907)
!2521 = !DILocation(line: 656, column: 9, scope: !915)
!2522 = !DILocation(line: 656, column: 25, scope: !915)
!2523 = !DILocation(line: 656, column: 51, scope: !915)
!2524 = !DILocation(line: 656, column: 33, scope: !915)
!2525 = !DILocation(line: 658, column: 16, scope: !915)
!2526 = !DILocation(line: 658, column: 23, scope: !915)
!2527 = !DILocation(line: 658, column: 31, scope: !915)
!2528 = !DILocation(line: 658, column: 38, scope: !915)
!2529 = !DILocation(line: 658, column: 43, scope: !915)
!2530 = !DILocation(line: 658, column: 48, scope: !915)
!2531 = !DILocation(line: 658, column: 14, scope: !915)
!2532 = !DILocation(line: 660, column: 13, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !915, file: !4, line: 660, column: 13)
!2534 = !DILocation(line: 660, column: 18, scope: !2533)
!2535 = !DILocation(line: 660, column: 32, scope: !2533)
!2536 = !DILocation(line: 660, column: 35, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2533, file: !4, discriminator: 1)
!2538 = !DILocation(line: 660, column: 39, scope: !2533)
!2539 = !DILocation(line: 660, column: 13, scope: !915)
!2540 = !DILocation(line: 661, column: 35, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2533, file: !4, line: 660, column: 54)
!2542 = !DILocation(line: 661, column: 13, scope: !2541)
!2543 = !DILocation(line: 662, column: 38, scope: !2541)
!2544 = !DILocation(line: 662, column: 13, scope: !2541)
!2545 = !DILocation(line: 663, column: 35, scope: !2541)
!2546 = !DILocation(line: 663, column: 13, scope: !2541)
!2547 = !DILocation(line: 664, column: 9, scope: !2541)
!2548 = !DILocation(line: 665, column: 16, scope: !915)
!2549 = !DILocation(line: 665, column: 9, scope: !915)
!2550 = !DILocation(line: 666, column: 5, scope: !916)
!2551 = !DILocation(line: 671, column: 5, scope: !907)
!2552 = !DILocation(line: 674, column: 17, scope: !907)
!2553 = !DILocation(line: 674, column: 15, scope: !907)
!2554 = !DILocation(line: 675, column: 32, scope: !907)
!2555 = !DILocation(line: 675, column: 37, scope: !907)
!2556 = !DILocation(line: 675, column: 42, scope: !907)
!2557 = !DILocation(line: 675, column: 12, scope: !907)
!2558 = !DILocation(line: 675, column: 10, scope: !907)
!2559 = !DILocation(line: 676, column: 24, scope: !907)
!2560 = !DILocation(line: 676, column: 5, scope: !907)
!2561 = !DILocation(line: 681, column: 5, scope: !907)
!2562 = !DILocation(line: 682, column: 12, scope: !907)
!2563 = !DILocation(line: 682, column: 5, scope: !907)
!2564 = !DILocation(line: 683, column: 1, scope: !907)
!2565 = !DILocation(line: 545, column: 24, scope: !928)
!2566 = !DILocation(line: 545, column: 35, scope: !928)
!2567 = !DILocation(line: 547, column: 5, scope: !928)
!2568 = !DILocation(line: 547, column: 21, scope: !928)
!2569 = !DILocation(line: 547, column: 47, scope: !928)
!2570 = !DILocation(line: 547, column: 29, scope: !928)
!2571 = !DILocation(line: 549, column: 9, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !928, file: !4, line: 549, column: 9)
!2573 = !DILocation(line: 549, column: 13, scope: !2572)
!2574 = !DILocation(line: 549, column: 9, scope: !928)
!2575 = !DILocation(line: 550, column: 9, scope: !2572)
!2576 = !DILocation(line: 555, column: 5, scope: !928)
!2577 = !DILocation(line: 555, column: 12, scope: !928)
!2578 = !DILocation(line: 555, column: 17, scope: !928)
!2579 = !DILocation(line: 555, column: 24, scope: !928)
!2580 = !DILocation(line: 555, column: 29, scope: !928)
!2581 = !DILocation(line: 557, column: 27, scope: !928)
!2582 = !DILocation(line: 557, column: 5, scope: !928)
!2583 = !DILocation(line: 558, column: 30, scope: !928)
!2584 = !DILocation(line: 558, column: 5, scope: !928)
!2585 = !DILocation(line: 559, column: 27, scope: !928)
!2586 = !DILocation(line: 559, column: 5, scope: !928)
!2587 = !DILocation(line: 560, column: 1, scope: !928)
!2588 = !DILocation(line: 560, column: 1, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !928, file: !4, discriminator: 1)
!2590 = !DILocation(line: 563, column: 30, scope: !933)
!2591 = !DILocation(line: 563, column: 42, scope: !933)
!2592 = !DILocation(line: 565, column: 5, scope: !933)
!2593 = !DILocation(line: 565, column: 11, scope: !933)
!2594 = !DILocation(line: 567, column: 9, scope: !940)
!2595 = !DILocation(line: 567, column: 9, scope: !933)
!2596 = !DILocation(line: 568, column: 9, scope: !939)
!2597 = !DILocation(line: 568, column: 25, scope: !939)
!2598 = !DILocation(line: 568, column: 51, scope: !939)
!2599 = !DILocation(line: 568, column: 33, scope: !939)
!2600 = !DILocation(line: 569, column: 16, scope: !939)
!2601 = !DILocation(line: 569, column: 23, scope: !939)
!2602 = !DILocation(line: 569, column: 30, scope: !939)
!2603 = !DILocation(line: 569, column: 37, scope: !939)
!2604 = !DILocation(line: 569, column: 42, scope: !939)
!2605 = !DILocation(line: 569, column: 9, scope: !939)
!2606 = !DILocation(line: 570, column: 5, scope: !940)
!2607 = !DILocation(line: 575, column: 5, scope: !933)
!2608 = !DILocation(line: 577, column: 30, scope: !933)
!2609 = !DILocation(line: 577, column: 35, scope: !933)
!2610 = !DILocation(line: 577, column: 11, scope: !933)
!2611 = !DILocation(line: 577, column: 9, scope: !933)
!2612 = !DILocation(line: 579, column: 5, scope: !933)
!2613 = !DILocation(line: 580, column: 12, scope: !933)
!2614 = !DILocation(line: 580, column: 5, scope: !933)
!2615 = !DILocation(line: 581, column: 1, scope: !933)
!2616 = !DILocation(line: 584, column: 31, scope: !941)
!2617 = !DILocation(line: 584, column: 42, scope: !941)
!2618 = !DILocation(line: 584, column: 54, scope: !941)
!2619 = !DILocation(line: 586, column: 5, scope: !941)
!2620 = !DILocation(line: 586, column: 11, scope: !941)
!2621 = !DILocation(line: 588, column: 9, scope: !949)
!2622 = !DILocation(line: 588, column: 9, scope: !941)
!2623 = !DILocation(line: 593, column: 9, scope: !948)
!2624 = !DILocation(line: 593, column: 25, scope: !948)
!2625 = !DILocation(line: 593, column: 51, scope: !948)
!2626 = !DILocation(line: 593, column: 33, scope: !948)
!2627 = !DILocation(line: 595, column: 16, scope: !948)
!2628 = !DILocation(line: 595, column: 23, scope: !948)
!2629 = !DILocation(line: 595, column: 31, scope: !948)
!2630 = !DILocation(line: 595, column: 38, scope: !948)
!2631 = !DILocation(line: 595, column: 43, scope: !948)
!2632 = !DILocation(line: 595, column: 48, scope: !948)
!2633 = !DILocation(line: 595, column: 14, scope: !948)
!2634 = !DILocation(line: 596, column: 13, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !948, file: !4, line: 596, column: 13)
!2636 = !DILocation(line: 596, column: 18, scope: !2635)
!2637 = !DILocation(line: 596, column: 32, scope: !2635)
!2638 = !DILocation(line: 596, column: 35, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2635, file: !4, discriminator: 1)
!2640 = !DILocation(line: 596, column: 39, scope: !2635)
!2641 = !DILocation(line: 596, column: 13, scope: !948)
!2642 = !DILocation(line: 597, column: 35, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2635, file: !4, line: 596, column: 54)
!2644 = !DILocation(line: 597, column: 13, scope: !2643)
!2645 = !DILocation(line: 598, column: 38, scope: !2643)
!2646 = !DILocation(line: 598, column: 13, scope: !2643)
!2647 = !DILocation(line: 599, column: 35, scope: !2643)
!2648 = !DILocation(line: 599, column: 13, scope: !2643)
!2649 = !DILocation(line: 600, column: 9, scope: !2643)
!2650 = !DILocation(line: 601, column: 16, scope: !948)
!2651 = !DILocation(line: 601, column: 9, scope: !948)
!2652 = !DILocation(line: 602, column: 5, scope: !949)
!2653 = !DILocation(line: 607, column: 5, scope: !941)
!2654 = !DILocation(line: 609, column: 32, scope: !941)
!2655 = !DILocation(line: 609, column: 37, scope: !941)
!2656 = !DILocation(line: 609, column: 42, scope: !941)
!2657 = !DILocation(line: 609, column: 12, scope: !941)
!2658 = !DILocation(line: 609, column: 10, scope: !941)
!2659 = !DILocation(line: 611, column: 5, scope: !941)
!2660 = !DILocation(line: 612, column: 12, scope: !941)
!2661 = !DILocation(line: 612, column: 5, scope: !941)
!2662 = !DILocation(line: 613, column: 1, scope: !941)
!2663 = !DILocation(line: 157, column: 5, scope: !743)
!2664 = !DILocation(line: 157, column: 11, scope: !743)
!2665 = !DILocation(line: 157, column: 40, scope: !743)
!2666 = !DILocation(line: 157, column: 17, scope: !743)
!2667 = !DILocation(line: 158, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !743, file: !4, line: 158, column: 9)
!2669 = !DILocation(line: 158, column: 13, scope: !2668)
!2670 = !DILocation(line: 158, column: 9, scope: !743)
!2671 = !DILocation(line: 160, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2668, file: !4, line: 158, column: 28)
!2673 = !DILocation(line: 163, column: 9, scope: !2668)
!2674 = !DILocation(line: 164, column: 1, scope: !743)
!2675 = !DILocation(line: 479, column: 26, scope: !746)
!2676 = !DILocation(line: 479, column: 38, scope: !746)
!2677 = !DILocation(line: 481, column: 5, scope: !746)
!2678 = !DILocation(line: 481, column: 21, scope: !746)
!2679 = !DILocation(line: 481, column: 47, scope: !746)
!2680 = !DILocation(line: 481, column: 29, scope: !746)
!2681 = !DILocation(line: 482, column: 5, scope: !746)
!2682 = !DILocation(line: 482, column: 11, scope: !746)
!2683 = !DILocation(line: 484, column: 11, scope: !746)
!2684 = !DILocation(line: 484, column: 18, scope: !746)
!2685 = !DILocation(line: 484, column: 25, scope: !746)
!2686 = !DILocation(line: 484, column: 32, scope: !746)
!2687 = !DILocation(line: 484, column: 37, scope: !746)
!2688 = !DILocation(line: 484, column: 9, scope: !746)
!2689 = !DILocation(line: 485, column: 9, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !746, file: !4, line: 485, column: 9)
!2691 = !DILocation(line: 485, column: 13, scope: !2690)
!2692 = !DILocation(line: 485, column: 9, scope: !746)
!2693 = !DILocation(line: 486, column: 9, scope: !2690)
!2694 = !DILocation(line: 488, column: 27, scope: !746)
!2695 = !DILocation(line: 488, column: 5, scope: !746)
!2696 = !DILocation(line: 489, column: 31, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !746, file: !4, line: 489, column: 9)
!2698 = !DILocation(line: 489, column: 36, scope: !2697)
!2699 = !DILocation(line: 489, column: 9, scope: !2697)
!2700 = !DILocation(line: 489, column: 42, scope: !2697)
!2701 = !DILocation(line: 489, column: 9, scope: !746)
!2702 = !DILocation(line: 491, column: 31, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2697, file: !4, line: 489, column: 47)
!2704 = !DILocation(line: 491, column: 9, scope: !2703)
!2705 = !DILocation(line: 492, column: 9, scope: !2703)
!2706 = !DILocation(line: 492, column: 16, scope: !2703)
!2707 = !DILocation(line: 492, column: 21, scope: !2703)
!2708 = !DILocation(line: 492, column: 28, scope: !2703)
!2709 = !DILocation(line: 492, column: 33, scope: !2703)
!2710 = !DILocation(line: 493, column: 9, scope: !2703)
!2711 = !DILocation(line: 495, column: 27, scope: !746)
!2712 = !DILocation(line: 495, column: 5, scope: !746)
!2713 = !DILocation(line: 496, column: 12, scope: !746)
!2714 = !DILocation(line: 496, column: 5, scope: !746)
!2715 = !DILocation(line: 497, column: 1, scope: !746)
!2716 = !DILocation(line: 439, column: 29, scope: !752)
!2717 = !DILocation(line: 439, column: 41, scope: !752)
!2718 = !DILocation(line: 441, column: 5, scope: !752)
!2719 = !DILocation(line: 441, column: 18, scope: !752)
!2720 = !DILocation(line: 442, column: 5, scope: !752)
!2721 = !DILocation(line: 442, column: 13, scope: !752)
!2722 = !DILocation(line: 443, column: 5, scope: !752)
!2723 = !DILocation(line: 443, column: 9, scope: !752)
!2724 = !DILocation(line: 449, column: 17, scope: !752)
!2725 = !DILocation(line: 449, column: 15, scope: !752)
!2726 = !DILocation(line: 450, column: 9, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !752, file: !4, line: 450, column: 9)
!2728 = !DILocation(line: 450, column: 19, scope: !2727)
!2729 = !DILocation(line: 450, column: 9, scope: !752)
!2730 = !DILocation(line: 451, column: 9, scope: !2727)
!2731 = !DILocation(line: 453, column: 18, scope: !752)
!2732 = !DILocation(line: 453, column: 11, scope: !752)
!2733 = !DILocation(line: 453, column: 16, scope: !752)
!2734 = !DILocation(line: 454, column: 23, scope: !752)
!2735 = !DILocation(line: 454, column: 11, scope: !752)
!2736 = !DILocation(line: 454, column: 21, scope: !752)
!2737 = !DILocation(line: 456, column: 29, scope: !752)
!2738 = !DILocation(line: 456, column: 49, scope: !752)
!2739 = !DILocation(line: 456, column: 54, scope: !752)
!2740 = !DILocation(line: 456, column: 11, scope: !752)
!2741 = !DILocation(line: 456, column: 9, scope: !752)
!2742 = !DILocation(line: 457, column: 9, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !752, file: !4, line: 457, column: 9)
!2744 = !DILocation(line: 457, column: 13, scope: !2743)
!2745 = !DILocation(line: 457, column: 9, scope: !752)
!2746 = !DILocation(line: 459, column: 38, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !4, line: 457, column: 19)
!2748 = !DILocation(line: 459, column: 35, scope: !2747)
!2749 = !DILocation(line: 460, column: 13, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2747, file: !4, line: 460, column: 13)
!2751 = !DILocation(line: 460, column: 41, scope: !2750)
!2752 = !DILocation(line: 460, column: 39, scope: !2750)
!2753 = !DILocation(line: 460, column: 13, scope: !2747)
!2754 = !DILocation(line: 461, column: 46, scope: !2750)
!2755 = !DILocation(line: 461, column: 44, scope: !2750)
!2756 = !DILocation(line: 461, column: 13, scope: !2750)
!2757 = !DILocation(line: 462, column: 5, scope: !2747)
!2758 = !DILocation(line: 464, column: 12, scope: !752)
!2759 = !DILocation(line: 464, column: 5, scope: !752)
!2760 = !DILocation(line: 465, column: 1, scope: !752)
!2761 = !DILocation(line: 391, column: 5, scope: !761)
!2762 = !DILocation(line: 391, column: 18, scope: !761)
!2763 = !DILocation(line: 392, column: 5, scope: !761)
!2764 = !DILocation(line: 392, column: 28, scope: !761)
!2765 = !DILocation(line: 399, column: 17, scope: !761)
!2766 = !DILocation(line: 399, column: 15, scope: !761)
!2767 = !DILocation(line: 400, column: 5, scope: !761)
!2768 = !DILocation(line: 400, column: 16, scope: !761)
!2769 = !DILocation(line: 400, column: 23, scope: !761)
!2770 = !DILocation(line: 401, column: 26, scope: !761)
!2771 = !DILocation(line: 401, column: 5, scope: !761)
!2772 = !DILocation(line: 402, column: 9, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !761, file: !4, line: 402, column: 9)
!2774 = !DILocation(line: 402, column: 20, scope: !2773)
!2775 = !DILocation(line: 402, column: 27, scope: !2773)
!2776 = !DILocation(line: 402, column: 9, scope: !761)
!2777 = !DILocation(line: 403, column: 9, scope: !2773)
!2778 = !DILocation(line: 404, column: 38, scope: !761)
!2779 = !DILocation(line: 404, column: 23, scope: !761)
!2780 = !DILocation(line: 404, column: 5, scope: !761)
!2781 = !DILocation(line: 404, column: 16, scope: !761)
!2782 = !DILocation(line: 404, column: 21, scope: !761)
!2783 = !DILocation(line: 407, column: 37, scope: !761)
!2784 = !DILocation(line: 407, column: 61, scope: !761)
!2785 = !DILocation(line: 407, column: 13, scope: !761)
!2786 = !DILocation(line: 407, column: 11, scope: !761)
!2787 = !DILocation(line: 408, column: 9, scope: !769)
!2788 = !DILocation(line: 408, column: 15, scope: !769)
!2789 = !DILocation(line: 408, column: 9, scope: !761)
!2790 = !DILocation(line: 409, column: 36, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !769, file: !4, line: 408, column: 30)
!2792 = !DILocation(line: 409, column: 43, scope: !2791)
!2793 = !DILocation(line: 409, column: 21, scope: !2791)
!2794 = !DILocation(line: 409, column: 19, scope: !2791)
!2795 = !DILocation(line: 410, column: 5, scope: !2791)
!2796 = !DILocation(line: 412, column: 9, scope: !768)
!2797 = !DILocation(line: 412, column: 22, scope: !768)
!2798 = !DILocation(line: 413, column: 9, scope: !768)
!2799 = !DILocation(line: 413, column: 16, scope: !768)
!2800 = !DILocation(line: 415, column: 68, scope: !768)
!2801 = !DILocation(line: 415, column: 79, scope: !768)
!2802 = !DILocation(line: 415, column: 86, scope: !768)
!2803 = !DILocation(line: 415, column: 67, scope: !768)
!2804 = !DILocation(line: 415, column: 65, scope: !768)
!2805 = !DILocation(line: 415, column: 47, scope: !768)
!2806 = !DILocation(line: 415, column: 24, scope: !768)
!2807 = !DILocation(line: 417, column: 27, scope: !768)
!2808 = !DILocation(line: 417, column: 16, scope: !768)
!2809 = !DILocation(line: 417, column: 14, scope: !768)
!2810 = !DILocation(line: 418, column: 13, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !768, file: !4, line: 418, column: 13)
!2812 = !DILocation(line: 418, column: 18, scope: !2811)
!2813 = !DILocation(line: 418, column: 13, scope: !768)
!2814 = !DILocation(line: 422, column: 13, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !4, line: 418, column: 33)
!2816 = !DILocation(line: 424, column: 16, scope: !768)
!2817 = !DILocation(line: 424, column: 9, scope: !768)
!2818 = !DILocation(line: 424, column: 22, scope: !768)
!2819 = !DILocation(line: 424, column: 33, scope: !768)
!2820 = !DILocation(line: 426, column: 31, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !768, file: !4, line: 426, column: 13)
!2822 = !DILocation(line: 426, column: 55, scope: !2821)
!2823 = !DILocation(line: 426, column: 13, scope: !2821)
!2824 = !DILocation(line: 426, column: 76, scope: !2821)
!2825 = !DILocation(line: 426, column: 13, scope: !768)
!2826 = !DILocation(line: 427, column: 22, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2821, file: !4, line: 426, column: 81)
!2828 = !DILocation(line: 427, column: 13, scope: !2827)
!2829 = !DILocation(line: 431, column: 13, scope: !2827)
!2830 = !DILocation(line: 433, column: 21, scope: !768)
!2831 = !DILocation(line: 433, column: 19, scope: !768)
!2832 = !DILocation(line: 434, column: 5, scope: !769)
!2833 = !DILocation(line: 434, column: 5, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !769, file: !4, discriminator: 1)
!2835 = !DILocation(line: 435, column: 12, scope: !761)
!2836 = !DILocation(line: 435, column: 5, scope: !761)
!2837 = !DILocation(line: 436, column: 1, scope: !761)
!2838 = !DILocation(line: 361, column: 35, scope: !771)
!2839 = !DILocation(line: 363, column: 5, scope: !771)
!2840 = !DILocation(line: 363, column: 20, scope: !771)
!2841 = !DILocation(line: 364, column: 5, scope: !771)
!2842 = !DILocation(line: 364, column: 20, scope: !771)
!2843 = !DILocation(line: 367, column: 14, scope: !771)
!2844 = !DILocation(line: 367, column: 12, scope: !771)
!2845 = !DILocation(line: 371, column: 9, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !771, file: !4, line: 371, column: 9)
!2847 = !DILocation(line: 371, column: 16, scope: !2846)
!2848 = !DILocation(line: 371, column: 9, scope: !771)
!2849 = !DILocation(line: 375, column: 9, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2846, file: !4, line: 371, column: 31)
!2851 = !DILocation(line: 378, column: 20, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !771, file: !4, line: 378, column: 5)
!2853 = !DILocation(line: 378, column: 28, scope: !2852)
!2854 = !{!2855, !1054, i64 24}
!2855 = !{!"_ts", !1054, i64 0, !1054, i64 8, !1054, i64 16, !1054, i64 24, !1074, i64 32, !1055, i64 36, !1055, i64 37, !1074, i64 40, !1074, i64 44, !1054, i64 48, !1054, i64 56, !1054, i64 64, !1054, i64 72, !1054, i64 80, !1054, i64 88, !1054, i64 96, !1054, i64 104, !1054, i64 112, !1054, i64 120, !1054, i64 128, !1074, i64 136, !1054, i64 144, !1145, i64 152, !1074, i64 160, !1054, i64 168, !1054, i64 176, !1054, i64 184}
!2856 = !DILocation(line: 378, column: 18, scope: !2852)
!2857 = !DILocation(line: 378, column: 10, scope: !2852)
!2858 = !DILocation(line: 378, column: 35, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2860, file: !4, discriminator: 2)
!2860 = !DILexicalBlockFile(scope: !2861, file: !4, discriminator: 1)
!2861 = distinct !DILexicalBlock(scope: !2852, file: !4, line: 378, column: 5)
!2862 = !DILocation(line: 378, column: 43, scope: !2861)
!2863 = !DILocation(line: 378, column: 5, scope: !2852)
!2864 = !DILocation(line: 379, column: 31, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !4, line: 378, column: 85)
!2866 = !DILocation(line: 379, column: 59, scope: !2865)
!2867 = !DILocation(line: 379, column: 70, scope: !2865)
!2868 = !DILocation(line: 379, column: 41, scope: !2865)
!2869 = !DILocation(line: 379, column: 52, scope: !2865)
!2870 = !DILocation(line: 379, column: 9, scope: !2865)
!2871 = !DILocation(line: 382, column: 9, scope: !2865)
!2872 = !DILocation(line: 382, column: 20, scope: !2865)
!2873 = !DILocation(line: 382, column: 26, scope: !2865)
!2874 = !DILocation(line: 383, column: 13, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2865, file: !4, line: 383, column: 13)
!2876 = !DILocation(line: 383, column: 24, scope: !2875)
!2877 = !DILocation(line: 383, column: 53, scope: !2875)
!2878 = !DILocation(line: 383, column: 31, scope: !2875)
!2879 = !DILocation(line: 383, column: 13, scope: !2865)
!2880 = !DILocation(line: 384, column: 13, scope: !2875)
!2881 = !DILocation(line: 385, column: 5, scope: !2865)
!2882 = !DILocation(line: 378, column: 68, scope: !2861)
!2883 = !DILocation(line: 378, column: 77, scope: !2861)
!2884 = !{!2885, !1054, i64 24}
!2885 = !{!"_frame", !1256, i64 0, !1054, i64 24, !1054, i64 32, !1054, i64 40, !1054, i64 48, !1054, i64 56, !1054, i64 64, !1054, i64 72, !1054, i64 80, !1054, i64 88, !1054, i64 96, !1054, i64 104, !1054, i64 112, !1074, i64 120, !1074, i64 124, !1074, i64 128, !1055, i64 132, !1055, i64 136, !1055, i64 376}
!2886 = !DILocation(line: 378, column: 66, scope: !2861)
!2887 = !DILocation(line: 378, column: 5, scope: !2861)
!2888 = !DILocation(line: 386, column: 1, scope: !771)
!2889 = !DILocation(line: 386, column: 1, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !771, file: !4, discriminator: 1)
!2891 = !DILocation(line: 267, column: 38, scope: !892)
!2892 = !DILocation(line: 267, column: 56, scope: !892)
!2893 = !DILocation(line: 269, column: 5, scope: !892)
!2894 = !DILocation(line: 269, column: 19, scope: !892)
!2895 = !DILocation(line: 270, column: 5, scope: !892)
!2896 = !DILocation(line: 270, column: 15, scope: !892)
!2897 = !DILocation(line: 271, column: 5, scope: !892)
!2898 = !DILocation(line: 271, column: 28, scope: !892)
!2899 = !DILocation(line: 273, column: 23, scope: !892)
!2900 = !DILocation(line: 273, column: 5, scope: !892)
!2901 = !DILocation(line: 273, column: 12, scope: !892)
!2902 = !DILocation(line: 273, column: 21, scope: !892)
!2903 = !DILocation(line: 274, column: 43, scope: !892)
!2904 = !DILocation(line: 274, column: 21, scope: !892)
!2905 = !DILocation(line: 274, column: 5, scope: !892)
!2906 = !DILocation(line: 274, column: 12, scope: !892)
!2907 = !DILocation(line: 274, column: 19, scope: !892)
!2908 = !DILocation(line: 276, column: 9, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !892, file: !4, line: 276, column: 9)
!2910 = !DILocation(line: 276, column: 16, scope: !2909)
!2911 = !DILocation(line: 276, column: 23, scope: !2909)
!2912 = !DILocation(line: 276, column: 9, scope: !892)
!2913 = !DILocation(line: 277, column: 9, scope: !2909)
!2914 = !DILocation(line: 277, column: 16, scope: !2909)
!2915 = !DILocation(line: 277, column: 23, scope: !2909)
!2916 = !DILocation(line: 279, column: 12, scope: !892)
!2917 = !DILocation(line: 279, column: 21, scope: !892)
!2918 = !{!2885, !1054, i64 32}
!2919 = !DILocation(line: 279, column: 10, scope: !892)
!2920 = !DILocation(line: 280, column: 9, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !892, file: !4, line: 280, column: 9)
!2922 = !DILocation(line: 280, column: 14, scope: !2921)
!2923 = !DILocation(line: 280, column: 9, scope: !892)
!2924 = !DILocation(line: 284, column: 9, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !4, line: 280, column: 29)
!2926 = !DILocation(line: 287, column: 9, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !892, file: !4, line: 287, column: 9)
!2928 = !DILocation(line: 287, column: 15, scope: !2927)
!2929 = !{!2930, !1054, i64 96}
!2930 = !{!"", !1244, i64 0, !1074, i64 16, !1074, i64 20, !1074, i64 24, !1074, i64 28, !1074, i64 32, !1054, i64 40, !1054, i64 48, !1054, i64 56, !1054, i64 64, !1054, i64 72, !1054, i64 80, !1054, i64 88, !1054, i64 96, !1054, i64 104, !1074, i64 112, !1054, i64 120, !1054, i64 128, !1054, i64 136}
!2931 = !DILocation(line: 287, column: 27, scope: !2927)
!2932 = !DILocation(line: 287, column: 9, scope: !892)
!2933 = !DILocation(line: 291, column: 9, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2927, file: !4, line: 287, column: 42)
!2935 = !DILocation(line: 294, column: 16, scope: !892)
!2936 = !DILocation(line: 294, column: 22, scope: !892)
!2937 = !DILocation(line: 294, column: 14, scope: !892)
!2938 = !DILocation(line: 296, column: 9, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !892, file: !4, line: 296, column: 9)
!2940 = !DILocation(line: 296, column: 18, scope: !2939)
!2941 = !DILocation(line: 296, column: 9, scope: !892)
!2942 = !DILocation(line: 297, column: 9, scope: !2939)
!2943 = !DILocation(line: 299, column: 27, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !892, file: !4, line: 299, column: 9)
!2945 = !DILocation(line: 299, column: 39, scope: !2944)
!2946 = !DILocation(line: 299, column: 50, scope: !2944)
!2947 = !DILocation(line: 299, column: 59, scope: !2944)
!2948 = !DILocation(line: 299, column: 76, scope: !2944)
!2949 = !DILocation(line: 299, column: 9, scope: !892)
!2950 = !DILocation(line: 303, column: 9, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2944, file: !4, line: 299, column: 83)
!2952 = !DILocation(line: 305, column: 28, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !892, file: !4, line: 305, column: 9)
!2954 = !DILocation(line: 305, column: 12, scope: !2953)
!2955 = !DILocation(line: 305, column: 39, scope: !2953)
!2956 = !DILocation(line: 305, column: 45, scope: !2953)
!2957 = !DILocation(line: 305, column: 10, scope: !2953)
!2958 = !DILocation(line: 305, column: 9, scope: !892)
!2959 = !DILocation(line: 311, column: 9, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2953, file: !4, line: 305, column: 53)
!2961 = !DILocation(line: 315, column: 37, scope: !892)
!2962 = !DILocation(line: 315, column: 60, scope: !892)
!2963 = !DILocation(line: 315, column: 13, scope: !892)
!2964 = !DILocation(line: 315, column: 11, scope: !892)
!2965 = !DILocation(line: 316, column: 9, scope: !906)
!2966 = !DILocation(line: 316, column: 15, scope: !906)
!2967 = !DILocation(line: 316, column: 9, scope: !892)
!2968 = !DILocation(line: 317, column: 32, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !906, file: !4, line: 316, column: 30)
!2970 = !DILocation(line: 317, column: 39, scope: !2969)
!2971 = !DILocation(line: 317, column: 20, scope: !2969)
!2972 = !DILocation(line: 317, column: 18, scope: !2969)
!2973 = !DILocation(line: 318, column: 5, scope: !2969)
!2974 = !DILocation(line: 322, column: 25, scope: !905)
!2975 = !DILocation(line: 322, column: 37, scope: !905)
!2976 = !DILocation(line: 322, column: 46, scope: !905)
!2977 = !DILocation(line: 323, column: 31, scope: !904)
!2978 = !DILocation(line: 323, column: 54, scope: !904)
!2979 = !DILocation(line: 323, column: 13, scope: !904)
!2980 = !DILocation(line: 323, column: 79, scope: !904)
!2981 = !DILocation(line: 323, column: 13, scope: !905)
!2982 = !DILocation(line: 324, column: 13, scope: !903)
!2983 = !DILocation(line: 324, column: 18, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !902, file: !4, discriminator: 1)
!2985 = !DILocation(line: 324, column: 28, scope: !902)
!2986 = !DILocation(line: 324, column: 58, scope: !902)
!2987 = !DILocation(line: 324, column: 77, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !902, file: !4, line: 324, column: 74)
!2989 = !DILocation(line: 324, column: 94, scope: !2988)
!2990 = !DILocation(line: 324, column: 74, scope: !2988)
!2991 = !DILocation(line: 324, column: 104, scope: !2988)
!2992 = !DILocation(line: 324, column: 74, scope: !902)
!2993 = !DILocation(line: 324, column: 74, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !902, file: !4, discriminator: 2)
!2995 = !DILocation(line: 324, column: 135, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2988, file: !4, discriminator: 3)
!2997 = !DILocation(line: 324, column: 153, scope: !2988)
!2998 = !DILocation(line: 324, column: 163, scope: !2988)
!2999 = !DILocation(line: 324, column: 188, scope: !2988)
!3000 = !DILocation(line: 324, column: 119, scope: !2988)
!3001 = !DILocation(line: 324, column: 207, scope: !3002)
!3002 = !DILexicalBlockFile(scope: !903, file: !4, discriminator: 4)
!3003 = !DILocation(line: 324, column: 207, scope: !902)
!3004 = !DILocation(line: 324, column: 207, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !902, file: !4, discriminator: 5)
!3006 = !DILocation(line: 328, column: 13, scope: !903)
!3007 = !DILocation(line: 333, column: 23, scope: !892)
!3008 = !DILocation(line: 333, column: 5, scope: !892)
!3009 = !DILocation(line: 333, column: 12, scope: !892)
!3010 = !DILocation(line: 333, column: 21, scope: !892)
!3011 = !DILocation(line: 334, column: 1, scope: !892)
!3012 = !DILocation(line: 334, column: 1, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !892, file: !4, discriminator: 1)
!3014 = !DILocation(line: 468, column: 32, scope: !917)
!3015 = !DILocation(line: 470, column: 5, scope: !917)
!3016 = !DILocation(line: 470, column: 13, scope: !917)
!3017 = !DILocation(line: 472, column: 27, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !917, file: !4, line: 472, column: 9)
!3019 = !DILocation(line: 472, column: 47, scope: !3018)
!3020 = !DILocation(line: 472, column: 52, scope: !3018)
!3021 = !DILocation(line: 472, column: 9, scope: !3018)
!3022 = !DILocation(line: 472, column: 9, scope: !917)
!3023 = !DILocation(line: 474, column: 44, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3018, file: !4, line: 472, column: 76)
!3025 = !DILocation(line: 474, column: 35, scope: !3024)
!3026 = !DILocation(line: 475, column: 5, scope: !3024)
!3027 = !DILocation(line: 476, column: 1, scope: !917)
!3028 = !DILocation(line: 500, column: 27, scope: !921)
!3029 = !DILocation(line: 500, column: 38, scope: !921)
!3030 = !DILocation(line: 500, column: 50, scope: !921)
!3031 = !DILocation(line: 502, column: 5, scope: !921)
!3032 = !DILocation(line: 502, column: 21, scope: !921)
!3033 = !DILocation(line: 502, column: 47, scope: !921)
!3034 = !DILocation(line: 502, column: 29, scope: !921)
!3035 = !DILocation(line: 503, column: 5, scope: !921)
!3036 = !DILocation(line: 503, column: 11, scope: !921)
!3037 = !DILocation(line: 505, column: 12, scope: !921)
!3038 = !DILocation(line: 505, column: 19, scope: !921)
!3039 = !DILocation(line: 505, column: 27, scope: !921)
!3040 = !DILocation(line: 505, column: 34, scope: !921)
!3041 = !DILocation(line: 505, column: 39, scope: !921)
!3042 = !DILocation(line: 505, column: 44, scope: !921)
!3043 = !DILocation(line: 505, column: 10, scope: !921)
!3044 = !DILocation(line: 506, column: 9, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !921, file: !4, line: 506, column: 9)
!3046 = !DILocation(line: 506, column: 14, scope: !3045)
!3047 = !DILocation(line: 506, column: 9, scope: !921)
!3048 = !DILocation(line: 507, column: 9, scope: !3045)
!3049 = !DILocation(line: 509, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !921, file: !4, line: 509, column: 9)
!3051 = !DILocation(line: 509, column: 13, scope: !3050)
!3052 = !DILocation(line: 509, column: 9, scope: !921)
!3053 = !DILocation(line: 512, column: 31, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !4, line: 509, column: 28)
!3055 = !DILocation(line: 512, column: 9, scope: !3054)
!3056 = !DILocation(line: 513, column: 34, scope: !3054)
!3057 = !DILocation(line: 513, column: 9, scope: !3054)
!3058 = !DILocation(line: 515, column: 35, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3054, file: !4, line: 515, column: 13)
!3060 = !DILocation(line: 515, column: 41, scope: !3059)
!3061 = !DILocation(line: 515, column: 13, scope: !3059)
!3062 = !DILocation(line: 515, column: 51, scope: !3059)
!3063 = !DILocation(line: 515, column: 13, scope: !3054)
!3064 = !DILocation(line: 526, column: 9, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3059, file: !4, line: 515, column: 56)
!3066 = !DILocation(line: 527, column: 31, scope: !3054)
!3067 = !DILocation(line: 527, column: 9, scope: !3054)
!3068 = !DILocation(line: 528, column: 5, scope: !3054)
!3069 = !DILocation(line: 532, column: 31, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3050, file: !4, line: 529, column: 10)
!3071 = !DILocation(line: 532, column: 9, scope: !3070)
!3072 = !DILocation(line: 533, column: 35, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3070, file: !4, line: 533, column: 13)
!3074 = !DILocation(line: 533, column: 41, scope: !3073)
!3075 = !DILocation(line: 533, column: 13, scope: !3073)
!3076 = !DILocation(line: 533, column: 51, scope: !3073)
!3077 = !DILocation(line: 533, column: 13, scope: !3070)
!3078 = !DILocation(line: 535, column: 35, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3073, file: !4, line: 533, column: 56)
!3080 = !DILocation(line: 535, column: 13, scope: !3079)
!3081 = !DILocation(line: 536, column: 13, scope: !3079)
!3082 = !DILocation(line: 536, column: 20, scope: !3079)
!3083 = !DILocation(line: 536, column: 25, scope: !3079)
!3084 = !DILocation(line: 536, column: 32, scope: !3079)
!3085 = !DILocation(line: 536, column: 37, scope: !3079)
!3086 = !DILocation(line: 537, column: 13, scope: !3079)
!3087 = !DILocation(line: 539, column: 31, scope: !3070)
!3088 = !DILocation(line: 539, column: 9, scope: !3070)
!3089 = !DILocation(line: 541, column: 12, scope: !921)
!3090 = !DILocation(line: 541, column: 5, scope: !921)
!3091 = !DILocation(line: 542, column: 1, scope: !921)
