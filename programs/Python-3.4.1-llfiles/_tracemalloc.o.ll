; ModuleID = '_tracemalloc.o.bc'
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
@tracemalloc_config.0 = internal unnamed_addr global i32 0
@tracemalloc_config.1 = internal unnamed_addr global i1 false
@tracemalloc_config.2 = internal unnamed_addr global i32 1
@_Py_NoneStruct = external global %struct._object, align 8
@tracemalloc_reentrant_key = internal unnamed_addr global i32 0, align 4
@_Py_TrueStruct = external global %struct._longobject, align 8
@tables_lock = internal unnamed_addr global i8* null, align 8
@tracemalloc_traces = internal unnamed_addr global %struct._Py_hashtable_t* null, align 8
@tracemalloc_traced_memory = internal unnamed_addr global i64 0, align 8
@tracemalloc_peak_traced_memory = internal unnamed_addr global i64 0, align 8
@tracemalloc_tracebacks = internal unnamed_addr global %struct._Py_hashtable_t* null, align 8
@tracemalloc_filenames = internal unnamed_addr global %struct._Py_hashtable_t* null, align 8
@allocators = internal global %struct.anon.0 zeroinitializer, align 8
@hashtable_alloc = internal global %struct._Py_hashtable_allocator_t { i8* (i64)* @malloc, void (i8*)* @free }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"|n:start\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"the number of frames must be in range [1; %i]\00", align 1
@tracemalloc_traceback = internal unnamed_addr global %struct.traceback_t* null, align 8
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
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @module_def, i32 1013) #1, !dbg !1047
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !458, metadata !1048), !dbg !1049
  %cmp = icmp eq %struct._object* %call, null, !dbg !1050
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1052

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @tracemalloc_init(), !dbg !1053
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1055
  %.call = select i1 %cmp2, %struct._object* null, %struct._object* %call, !dbg !1056
  br label %cleanup, !dbg !1056

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %.call, %if.end ]
  ret %struct._object* %retval.0, !dbg !1057
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tracemalloc_init() #0 {
entry:
  %0 = load i32, i32* @tracemalloc_config.0, align 4, !dbg !1058, !tbaa !1060
  switch i32 %0, label %if.end.3 [
    i32 2, label %if.then
    i32 1, label %return
  ], !dbg !1065

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1066, !tbaa !1068
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0)) #1, !dbg !1070
  br label %return, !dbg !1071

if.end.3:                                         ; preds = %entry
  tail call void @PyMem_GetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1)) #1, !dbg !1072
  %call = tail call i32 @PyThread_create_key() #1, !dbg !1073
  store i32 %call, i32* @tracemalloc_reentrant_key, align 4, !dbg !1074, !tbaa !1075
  %cmp4 = icmp eq i32 %call, -1, !dbg !1076
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !1078

if.then.5:                                        ; preds = %if.end.3
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1079, !tbaa !1068
  %call6 = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %2) #1, !dbg !1081
  br label %return, !dbg !1082

if.end.7:                                         ; preds = %if.end.3
  %3 = load i8*, i8** @tables_lock, align 8, !dbg !1083, !tbaa !1068
  %cmp8 = icmp eq i8* %3, null, !dbg !1085
  br i1 %cmp8, label %if.then.9, label %if.end.14, !dbg !1086

if.then.9:                                        ; preds = %if.end.7
  %call10 = tail call i8* @PyThread_allocate_lock() #1, !dbg !1087
  store i8* %call10, i8** @tables_lock, align 8, !dbg !1089, !tbaa !1068
  %cmp11 = icmp eq i8* %call10, null, !dbg !1090
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !1092

if.then.12:                                       ; preds = %if.then.9
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1093, !tbaa !1068
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #1, !dbg !1095
  br label %return, !dbg !1096

if.end.14:                                        ; preds = %if.then.9, %if.end.7
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !570, metadata !1048) #1, !dbg !1097
  tail call void @llvm.dbg.value(metadata i64 (i8*)* bitcast (i64 (%struct._object*)* @PyObject_Hash to i64 (i8*)*), i64 0, metadata !571, metadata !1048) #1, !dbg !1099
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_unicode, i64 0, metadata !572, metadata !1048) #1, !dbg !1100
  %call.i = tail call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 0, i64 0, i64 (i8*)* bitcast (i64 (%struct._object*)* @PyObject_Hash to i64 (i8*)*), i32 (i8*, %struct._Py_hashtable_entry_t*)* nonnull @hashtable_compare_unicode, i8* (i8*)* null, void (i8*)* null, i64 (i8*)* null, %struct._Py_hashtable_allocator_t* nonnull @hashtable_alloc) #1, !dbg !1101
  store %struct._Py_hashtable_t* %call.i, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1102, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !570, metadata !1048) #1, !dbg !1103
  tail call void @llvm.dbg.value(metadata i64 (i8*)* @hashtable_hash_traceback, i64 0, metadata !571, metadata !1048) #1, !dbg !1105
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)* bitcast (i32 (%struct.traceback_t*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_traceback to i32 (i8*, %struct._Py_hashtable_entry_t*)*), i64 0, metadata !572, metadata !1048) #1, !dbg !1106
  %call.i.31 = tail call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 0, i64 0, i64 (i8*)* nonnull @hashtable_hash_traceback, i32 (i8*, %struct._Py_hashtable_entry_t*)* bitcast (i32 (%struct.traceback_t*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_traceback to i32 (i8*, %struct._Py_hashtable_entry_t*)*), i8* (i8*)* null, void (i8*)* null, i64 (i8*)* null, %struct._Py_hashtable_allocator_t* nonnull @hashtable_alloc) #1, !dbg !1107
  store %struct._Py_hashtable_t* %call.i.31, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1108, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !570, metadata !1048) #1, !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 (i8*)* @_Py_hashtable_hash_ptr, i64 0, metadata !571, metadata !1048) #1, !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)* @_Py_hashtable_compare_direct, i64 0, metadata !572, metadata !1048) #1, !dbg !1112
  %call.i.32 = tail call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 16, i64 0, i64 (i8*)* nonnull @_Py_hashtable_hash_ptr, i32 (i8*, %struct._Py_hashtable_entry_t*)* nonnull @_Py_hashtable_compare_direct, i8* (i8*)* null, void (i8*)* null, i64 (i8*)* null, %struct._Py_hashtable_allocator_t* nonnull @hashtable_alloc) #1, !dbg !1113
  store %struct._Py_hashtable_t* %call.i.32, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1114, !tbaa !1068
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1115, !tbaa !1068
  %cmp18 = icmp eq %struct._Py_hashtable_t* %5, null, !dbg !1117
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8
  %cmp19 = icmp eq %struct._Py_hashtable_t* %6, null, !dbg !1118
  %or.cond = or i1 %cmp18, %cmp19, !dbg !1119
  %cmp21 = icmp eq %struct._Py_hashtable_t* %call.i.32, null, !dbg !1120
  %or.cond30 = or i1 %cmp21, %or.cond, !dbg !1119
  br i1 %or.cond30, label %if.then.22, label %if.end.24, !dbg !1119

if.then.22:                                       ; preds = %if.end.14
  %call23 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !1121
  br label %return, !dbg !1123

if.end.24:                                        ; preds = %if.end.14
  %call25 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #1, !dbg !1124
  store %struct._object* %call25, %struct._object** @unknown_filename, align 8, !dbg !1125, !tbaa !1068
  %cmp26 = icmp eq %struct._object* %call25, null, !dbg !1126
  br i1 %cmp26, label %return, label %if.end.28, !dbg !1128

if.end.28:                                        ; preds = %if.end.24
  tail call void @PyUnicode_InternInPlace(%struct._object** nonnull @unknown_filename) #1, !dbg !1129
  store i32 1, i32* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i64 0, i32 1), align 8, !dbg !1130, !tbaa !1131
  %7 = load i64, i64* bitcast (%struct._object** @unknown_filename to i64*), align 8, !dbg !1134, !tbaa !1068
  store i64 %7, i64* bitcast (%struct._object** getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i64 0, i32 2, i64 0, i32 0) to i64*), align 4, !dbg !1135, !tbaa !1136
  store i32 0, i32* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i64 0, i32 2, i64 0, i32 1), align 4, !dbg !1138, !tbaa !1139
  tail call void @llvm.dbg.value(metadata %struct.traceback_t* @tracemalloc_empty_traceback, i64 0, metadata !709, metadata !1048) #1, !dbg !1140
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !712, metadata !1048) #1, !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 1000003, i64 0, metadata !713, metadata !1048) #1, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 3430008, i64 0, metadata !710, metadata !1048) #1, !dbg !1144
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !712, metadata !1048) #1, !dbg !1142
  %8 = inttoptr i64 %7 to %struct._object*, !dbg !1145
  %call.i.33 = tail call i64 @PyObject_Hash(%struct._object* %8) #1, !dbg !1147
  tail call void @llvm.dbg.value(metadata i64 %call.i.33, i64 0, metadata !711, metadata !1048) #1, !dbg !1148
  %9 = load i32, i32* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i64 0, i32 2, i64 0, i32 1), align 4, !dbg !1149, !tbaa !1139
  %conv.i = sext i32 %9 to i64, !dbg !1150
  %xor.i = xor i64 %call.i.33, 3430008, !dbg !1151
  %xor1.i = xor i64 %xor.i, %conv.i, !dbg !1152
  %mul.i = mul i64 %xor1.i, 1000003, !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 %mul.i, i64 0, metadata !710, metadata !1048) #1, !dbg !1144
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !712, metadata !1048) #1, !dbg !1142
  %phitmp.i = add i64 %mul.i, 97531, !dbg !1154
  tail call void @llvm.dbg.value(metadata i64 %phitmp.i, i64 0, metadata !710, metadata !1048) #1, !dbg !1144
  store i64 %phitmp.i, i64* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i64 0, i32 0), align 8, !dbg !1155, !tbaa !1156
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !491, metadata !1048) #1, !dbg !1157
  %10 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1159, !tbaa !1075
  %call.i.34 = tail call i32 @PyThread_set_key_value(i32 %10, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)) #1, !dbg !1162
  store i32 1, i32* @tracemalloc_config.0, align 4, !dbg !1163, !tbaa !1060
  br label %return, !dbg !1164

return:                                           ; preds = %if.end.24, %entry, %if.end.28, %if.then.22, %if.then.12, %if.then.5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then.5 ], [ -1, %if.then.12 ], [ -1, %if.then.22 ], [ 0, %if.end.28 ], [ 0, %entry ], [ -1, %if.end.24 ]
  ret i32 %retval.0, !dbg !1165
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @_PyTraceMalloc_Init() #0 {
entry:
  %endptr = alloca i8*, align 8
  %0 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4, !dbg !1166, !tbaa !1075
  %tobool = icmp eq i32 %0, 0, !dbg !1166
  br i1 %tobool, label %cond.end, label %if.else, !dbg !1166

cond.end:                                         ; preds = %entry
  %call = tail call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #1, !dbg !1167
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !463, metadata !1048), !dbg !1169
  %tobool1 = icmp eq i8* %call, null, !dbg !1170
  br i1 %tobool1, label %if.else, label %land.lhs.true, !dbg !1173

land.lhs.true:                                    ; preds = %cond.end
  %1 = load i8, i8* %call, align 1, !dbg !1174, !tbaa !1175
  %cmp = icmp eq i8 %1, 0, !dbg !1176
  br i1 %cmp, label %if.else, label %if.then, !dbg !1177

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast i8** %endptr to i8*, !dbg !1178
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1178
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !465, metadata !1048), !dbg !1179
  store i8* %call, i8** %endptr, align 8, !dbg !1179, !tbaa !1068
  %call3 = tail call i32* @__errno_location() #8, !dbg !1180
  store i32 0, i32* %call3, align 4, !dbg !1181, !tbaa !1075
  tail call void @llvm.dbg.value(metadata i8** %endptr, i64 0, metadata !465, metadata !1048), !dbg !1179
  %call4 = call i64 @strtol(i8* %call, i8** nonnull %endptr, i32 10) #1, !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 %call4, i64 0, metadata !468, metadata !1048), !dbg !1183
  tail call void @llvm.dbg.value(metadata i8** %endptr, i64 0, metadata !465, metadata !1048), !dbg !1179
  %3 = load i8*, i8** %endptr, align 8, !dbg !1184, !tbaa !1068
  %4 = load i8, i8* %3, align 1, !dbg !1186, !tbaa !1175
  %cmp6 = icmp ne i8 %4, 0, !dbg !1187
  %cmp8 = icmp slt i64 %call4, 1, !dbg !1188
  %or.cond = or i1 %cmp8, %cmp6, !dbg !1189
  %cmp11 = icmp ugt i64 %call4, 178956969, !dbg !1190
  %or.cond69 = or i1 %cmp11, %or.cond, !dbg !1189
  br i1 %or.cond69, label %if.then.17, label %lor.lhs.false.13, !dbg !1189

lor.lhs.false.13:                                 ; preds = %if.then
  %5 = load i32, i32* %call3, align 4, !dbg !1191, !tbaa !1075
  %cmp15 = icmp eq i32 %5, 34, !dbg !1193
  br i1 %cmp15, label %if.then.17, label %if.end, !dbg !1194

if.then.17:                                       ; preds = %lor.lhs.false.13, %if.then
  tail call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !1195
  unreachable, !dbg !1195

if.end:                                           ; preds = %lor.lhs.false.13
  %conv18 = trunc i64 %call4 to i32, !dbg !1197
  tail call void @llvm.dbg.value(metadata i32 %conv18, i64 0, metadata !464, metadata !1048), !dbg !1198
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1199
  br label %if.end.64, !dbg !1200

if.else:                                          ; preds = %entry, %land.lhs.true, %cond.end
  %call20 = tail call %struct._object* @PySys_GetXOptions() #1, !dbg !1201
  tail call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !469, metadata !1048), !dbg !1202
  %cmp21 = icmp eq %struct._object* %call20, null, !dbg !1203
  br i1 %cmp21, label %cleanup.66, label %if.end.24, !dbg !1205

if.end.24:                                        ; preds = %if.else
  %call25 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)) #1, !dbg !1206
  tail call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !471, metadata !1048), !dbg !1207
  %cmp26 = icmp eq %struct._object* %call25, null, !dbg !1208
  br i1 %cmp26, label %cleanup.66, label %if.end.29, !dbg !1210

if.end.29:                                        ; preds = %if.end.24
  %call30 = tail call %struct._object* @PyDict_GetItemWithError(%struct._object* %call20, %struct._object* %call25) #1, !dbg !1211
  tail call void @llvm.dbg.value(metadata %struct._object* %call30, i64 0, metadata !472, metadata !1048), !dbg !1212
  tail call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !473, metadata !1048), !dbg !1213
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 0, !dbg !1215
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1215, !tbaa !1217
  %dec = add i64 %6, -1, !dbg !1215
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1215, !tbaa !1217
  %cmp31 = icmp eq i64 %dec, 0, !dbg !1215
  br i1 %cmp31, label %if.else.34, label %if.end.35, !dbg !1219

if.else.34:                                       ; preds = %if.end.29
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 1, !dbg !1220
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1220, !tbaa !1222
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1220
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1220, !tbaa !1223
  tail call void %8(%struct._object* %call25) #1, !dbg !1220
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.29, %if.else.34
  %cmp36 = icmp eq %struct._object* %call30, null, !dbg !1226
  br i1 %cmp36, label %if.then.38, label %if.end.43, !dbg !1228

if.then.38:                                       ; preds = %if.end.35
  %call39 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1229
  %not.tobool40 = icmp ne %struct._object* %call39, null, !dbg !1232
  %. = sext i1 %not.tobool40 to i32, !dbg !1232
  br label %cleanup.66, !dbg !1232

if.end.43:                                        ; preds = %if.end.35
  tail call void @llvm.dbg.value(metadata %struct._object* %call30, i64 0, metadata !717, metadata !1048) #1, !dbg !1233
  %cmp.i = icmp eq %struct._object* %call30, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !1235
  br i1 %cmp.i, label %parse_sys_xoptions.exit, label %if.end.i, !dbg !1237

if.end.i:                                         ; preds = %if.end.43
  %call.i = tail call i64 @PyUnicode_GetLength(%struct._object* %call30) #1, !dbg !1238
  %cmp1.i = icmp eq i64 %call.i, 0, !dbg !1240
  br i1 %cmp1.i, label %parse_sys_xoptions.exit, label %if.end.3.i, !dbg !1241

if.end.3.i:                                       ; preds = %if.end.i
  %call4.i = tail call %struct._object* @PyLong_FromUnicodeObject(%struct._object* %call30, i32 10) #1, !dbg !1242
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !718, metadata !1048) #1, !dbg !1243
  %cmp5.i = icmp eq %struct._object* %call4.i, null, !dbg !1244
  br i1 %cmp5.i, label %parse_sys_xoptions.exit, label %if.end.7.i, !dbg !1246

if.end.7.i:                                       ; preds = %if.end.3.i
  %call8.i = tail call i64 @PyLong_AsLong(%struct._object* %call4.i) #1, !dbg !1247
  tail call void @llvm.dbg.value(metadata i64 %call8.i, i64 0, metadata !719, metadata !1048) #1, !dbg !1248
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !720, metadata !1048) #1, !dbg !1249
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call4.i, i64 0, i32 0, !dbg !1251
  %9 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1251, !tbaa !1217
  %dec.i = add i64 %9, -1, !dbg !1251
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1251, !tbaa !1217
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !1251
  br i1 %cmp9.i, label %if.else.i, label %if.end.11.i, !dbg !1253

if.else.i:                                        ; preds = %if.end.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call4.i, i64 0, i32 1, !dbg !1254
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1254, !tbaa !1222
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1254
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1254, !tbaa !1223
  tail call void %11(%struct._object* %call4.i) #1, !dbg !1254
  br label %if.end.11.i, !dbg !1256

if.end.11.i:                                      ; preds = %if.else.i, %if.end.7.i
  %cmp12.i = icmp eq i64 %call8.i, -1, !dbg !1257
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end.15.i, !dbg !1259

land.lhs.true.i:                                  ; preds = %if.end.11.i
  %call13.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1260
  %tobool.i = icmp eq %struct._object* %call13.i, null, !dbg !1260
  br i1 %tobool.i, label %if.end.15.i, label %parse_sys_xoptions.exit, !dbg !1262

if.end.15.i:                                      ; preds = %land.lhs.true.i, %if.end.11.i
  %cmp16.i = icmp slt i64 %call8.i, 1, !dbg !1263
  %cmp17.i = icmp ugt i64 %call8.i, 178956969, !dbg !1265
  %or.cond.i = or i1 %cmp16.i, %cmp17.i, !dbg !1266
  %conv.i = trunc i64 %call8.i to i32, !dbg !1267
  %.conv.i = select i1 %or.cond.i, i32 -1, i32 %conv.i, !dbg !1266
  br label %parse_sys_xoptions.exit, !dbg !1266

parse_sys_xoptions.exit:                          ; preds = %if.end.43, %if.end.i, %if.end.3.i, %land.lhs.true.i, %if.end.15.i
  %call4492 = phi i32 [ %.conv.i, %if.end.15.i ], [ 1, %if.end.43 ], [ -1, %if.end.i ], [ -1, %if.end.3.i ], [ -1, %land.lhs.true.i ]
  tail call void @llvm.dbg.value(metadata i32 %call4492, i64 0, metadata !464, metadata !1048), !dbg !1198
  tail call void @llvm.dbg.value(metadata %struct._object* %call30, i64 0, metadata !475, metadata !1048), !dbg !1268
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %call30, i64 0, i32 0, !dbg !1270
  %12 = load i64, i64* %ob_refcnt47, align 8, !dbg !1270, !tbaa !1217
  %dec48 = add i64 %12, -1, !dbg !1270
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !1270, !tbaa !1217
  %cmp49 = icmp eq i64 %dec48, 0, !dbg !1270
  br i1 %cmp49, label %if.else.52, label %if.end.55, !dbg !1272

if.else.52:                                       ; preds = %parse_sys_xoptions.exit
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %call30, i64 0, i32 1, !dbg !1273
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !1273, !tbaa !1222
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1273
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !1273, !tbaa !1223
  tail call void %14(%struct._object* %call30) #1, !dbg !1273
  br label %if.end.55

if.end.55:                                        ; preds = %parse_sys_xoptions.exit, %if.else.52
  %cmp58 = icmp slt i32 %call4492, 0, !dbg !1275
  br i1 %cmp58, label %if.then.60, label %if.end.64, !dbg !1277

if.then.60:                                       ; preds = %if.end.55
  tail call void @Py_FatalError(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1278
  unreachable, !dbg !1278

if.end.64:                                        ; preds = %if.end.55, %if.end
  %nframe.1 = phi i32 [ %conv18, %if.end ], [ %call4492, %if.end.55 ]
  %call65 = tail call fastcc i32 @tracemalloc_start(i32 %nframe.1), !dbg !1280
  br label %cleanup.66, !dbg !1281

cleanup.66:                                       ; preds = %if.then.38, %if.end.24, %if.else, %if.end.64
  %retval.1 = phi i32 [ %call65, %if.end.64 ], [ %., %if.then.38 ], [ -1, %if.end.24 ], [ -1, %if.else ]
  ret i32 %retval.1, !dbg !1282
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #5

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

declare %struct._object* @PySys_GetXOptions() #2

declare %struct._object* @PyUnicode_FromString(i8*) #2

declare %struct._object* @PyDict_GetItemWithError(%struct._object*, %struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tracemalloc_start(i32 %max_nframe) #0 {
entry:
  %alloc = alloca %struct.PyMemAllocator, align 8
  tail call void @llvm.dbg.value(metadata i32 %max_nframe, i64 0, metadata !726, metadata !1048), !dbg !1283
  %0 = bitcast %struct.PyMemAllocator* %alloc to i8*, !dbg !1284
  call void @llvm.lifetime.start(i64 32, i8* %0) #1, !dbg !1284
  %call = tail call fastcc i32 @tracemalloc_init(), !dbg !1285
  %cmp = icmp slt i32 %call, 0, !dbg !1287
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1288

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @tracemalloc_config.1, align 1
  br i1 %.b, label %cleanup, label %if.end.2, !dbg !1289

if.end.2:                                         ; preds = %if.end
  store i32 %max_nframe, i32* @tracemalloc_config.2, align 4, !dbg !1290, !tbaa !1291
  %sub = add i32 %max_nframe, -1, !dbg !1292
  %conv = sext i32 %sub to i64, !dbg !1292
  %mul = mul nsw i64 %conv, 12, !dbg !1292
  %add = add i64 %mul, 24, !dbg !1292
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !728, metadata !1048), !dbg !1293
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !731, metadata !1048) #1, !dbg !1294
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 1), align 8, !dbg !1296, !tbaa !1297
  %2 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 0), align 8, !dbg !1300, !tbaa !1301
  %call.i = tail call i8* %1(i8* %2, i64 %add) #1, !dbg !1302
  store i8* %call.i, i8** bitcast (%struct.traceback_t** @tracemalloc_traceback to i8**), align 8, !dbg !1303, !tbaa !1068
  %cmp4 = icmp eq i8* %call.i, null, !dbg !1304
  br i1 %cmp4, label %if.then.6, label %if.end.8, !dbg !1306

if.then.6:                                        ; preds = %if.end.2
  %call7 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !1307
  br label %cleanup, !dbg !1309

if.end.8:                                         ; preds = %if.end.2
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i64 0, i32 1, !dbg !1310
  store i8* (i8*, i64)* @tracemalloc_raw_malloc, i8* (i8*, i64)** %malloc, align 8, !dbg !1311, !tbaa !1312
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i64 0, i32 2, !dbg !1313
  store i8* (i8*, i8*, i64)* @tracemalloc_raw_realloc, i8* (i8*, i8*, i64)** %realloc, align 8, !dbg !1314, !tbaa !1315
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i64 0, i32 3, !dbg !1316
  store void (i8*, i8*)* @tracemalloc_free, void (i8*, i8*)** %free, align 8, !dbg !1317, !tbaa !1318
  %ctx = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i64 0, i32 0, !dbg !1319
  store i8* bitcast (%struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1) to i8*), i8** %ctx, align 8, !dbg !1320, !tbaa !1321
  tail call void @PyMem_GetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1)) #1, !dbg !1322
  tail call void @llvm.dbg.value(metadata %struct.PyMemAllocator* %alloc, i64 0, metadata !727, metadata !1048), !dbg !1323
  call void @PyMem_SetAllocator(i32 0, %struct.PyMemAllocator* nonnull %alloc) #1, !dbg !1324
  store i8* (i8*, i64)* @tracemalloc_malloc_gil, i8* (i8*, i64)** %malloc, align 8, !dbg !1325, !tbaa !1312
  store i8* (i8*, i8*, i64)* @tracemalloc_realloc_gil, i8* (i8*, i8*, i64)** %realloc, align 8, !dbg !1326, !tbaa !1315
  store void (i8*, i8*)* @tracemalloc_free, void (i8*, i8*)** %free, align 8, !dbg !1327, !tbaa !1318
  store i8* bitcast (%struct.anon.0* @allocators to i8*), i8** %ctx, align 8, !dbg !1328, !tbaa !1321
  call void @PyMem_GetAllocator(i32 1, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 0)) #1, !dbg !1329
  call void @llvm.dbg.value(metadata %struct.PyMemAllocator* %alloc, i64 0, metadata !727, metadata !1048), !dbg !1323
  call void @PyMem_SetAllocator(i32 1, %struct.PyMemAllocator* nonnull %alloc) #1, !dbg !1330
  store i8* bitcast (%struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 2) to i8*), i8** %ctx, align 8, !dbg !1331, !tbaa !1321
  call void @PyMem_GetAllocator(i32 2, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 2)) #1, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.PyMemAllocator* %alloc, i64 0, metadata !727, metadata !1048), !dbg !1323
  call void @PyMem_SetAllocator(i32 2, %struct.PyMemAllocator* nonnull %alloc) #1, !dbg !1333
  store i1 true, i1* @tracemalloc_config.1, align 1
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !491, metadata !1048) #1, !dbg !1334
  %3 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1336, !tbaa !1075
  %call1.i = call i32 @PyThread_set_key_value(i32 %3, i8* null) #1, !dbg !1337
  br label %cleanup, !dbg !1339

cleanup:                                          ; preds = %if.end, %entry, %if.end.8, %if.then.6
  %retval.0 = phi i32 [ -1, %if.then.6 ], [ 0, %if.end.8 ], [ -1, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end(i64 32, i8* %0) #1, !dbg !1340
  ret i32 %retval.0, !dbg !1340
}

; Function Attrs: nounwind uwtable
define void @_PyTraceMalloc_Fini() #0 {
entry:
  %0 = load i32, i32* @tracemalloc_config.0, align 4, !dbg !1341, !tbaa !1060
  %cmp.i = icmp eq i32 %0, 1, !dbg !1344
  br i1 %cmp.i, label %if.end.i, label %tracemalloc_deinit.exit, !dbg !1345

if.end.i:                                         ; preds = %entry
  store i32 2, i32* @tracemalloc_config.0, align 4, !dbg !1346, !tbaa !1060
  %.b.i.i = load i1, i1* @tracemalloc_config.1, align 1, !dbg !1347
  br i1 %.b.i.i, label %if.end.i.i, label %tracemalloc_stop.exit.i, !dbg !1348

if.end.i.i:                                       ; preds = %if.end.i
  store i1 false, i1* @tracemalloc_config.1, align 1, !dbg !1347
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !491, metadata !1048) #1, !dbg !1350
  %1 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1352, !tbaa !1075
  %call.i.i.i = tail call i32 @PyThread_set_key_value(i32 %1, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)) #1, !dbg !1353
  tail call void @PyMem_SetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1)) #1, !dbg !1354
  tail call void @PyMem_SetAllocator(i32 1, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 0)) #1, !dbg !1355
  tail call void @PyMem_SetAllocator(i32 2, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 2)) #1, !dbg !1356
  %2 = load i8*, i8** @tables_lock, align 8, !dbg !1357, !tbaa !1068
  %call.i.i = tail call i32 @PyThread_acquire_lock(i8* %2, i32 1) #1, !dbg !1357
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1359, !tbaa !1068
  tail call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %3) #1, !dbg !1360
  store i64 0, i64* @tracemalloc_traced_memory, align 8, !dbg !1361, !tbaa !1362
  store i64 0, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !1363, !tbaa !1362
  %4 = load i8*, i8** @tables_lock, align 8, !dbg !1364, !tbaa !1068
  tail call void @PyThread_release_lock(i8* %4) #1, !dbg !1364
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1365, !tbaa !1068
  %call1.i.i = tail call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %5, i32 (%struct._Py_hashtable_entry_t*, i8*)* nonnull @traceback_free_traceback, i8* null) #1, !dbg !1366
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1367, !tbaa !1068
  tail call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %6) #1, !dbg !1368
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1369, !tbaa !1068
  %call2.i.i = tail call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %7, i32 (%struct._Py_hashtable_entry_t*, i8*)* nonnull @tracemalloc_clear_filename, i8* null) #1, !dbg !1370
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1371, !tbaa !1068
  tail call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %8) #1, !dbg !1372
  %9 = load i8*, i8** bitcast (%struct.traceback_t** @tracemalloc_traceback to i8**), align 8, !dbg !1373, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !503, metadata !1048) #1, !dbg !1374
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 3), align 8, !dbg !1376, !tbaa !1377
  %11 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 0), align 8, !dbg !1378, !tbaa !1301
  tail call void %10(i8* %11, i8* %9) #1, !dbg !1379
  store %struct.traceback_t* null, %struct.traceback_t** @tracemalloc_traceback, align 8, !dbg !1380, !tbaa !1068
  br label %tracemalloc_stop.exit.i, !dbg !1381

tracemalloc_stop.exit.i:                          ; preds = %if.end.i.i, %if.end.i
  %12 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1382, !tbaa !1068
  tail call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %12) #1, !dbg !1383
  %13 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1384, !tbaa !1068
  tail call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %13) #1, !dbg !1385
  %14 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1386, !tbaa !1068
  tail call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %14) #1, !dbg !1387
  %15 = load i8*, i8** @tables_lock, align 8, !dbg !1388, !tbaa !1068
  %cmp1.i = icmp eq i8* %15, null, !dbg !1390
  br i1 %cmp1.i, label %if.end.3.i, label %if.then.2.i, !dbg !1391

if.then.2.i:                                      ; preds = %tracemalloc_stop.exit.i
  tail call void @PyThread_free_lock(i8* %15) #1, !dbg !1392
  store i8* null, i8** @tables_lock, align 8, !dbg !1394, !tbaa !1068
  br label %if.end.3.i, !dbg !1395

if.end.3.i:                                       ; preds = %if.then.2.i, %tracemalloc_stop.exit.i
  %16 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1396, !tbaa !1075
  tail call void @PyThread_delete_key(i32 %16) #1, !dbg !1397
  %17 = load %struct._object*, %struct._object** @unknown_filename, align 8, !dbg !1398, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !951, metadata !1048) #1, !dbg !1398
  %cmp4.i = icmp eq %struct._object* %17, null, !dbg !1400
  br i1 %cmp4.i, label %tracemalloc_deinit.exit, label %do.body.6.i, !dbg !1401

do.body.6.i:                                      ; preds = %if.end.3.i
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !953, metadata !1048) #1, !dbg !1402
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !1404
  %18 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1404, !tbaa !1217
  %dec.i = add i64 %18, -1, !dbg !1404
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1404, !tbaa !1217
  %cmp7.i = icmp eq i64 %dec.i, 0, !dbg !1404
  br i1 %cmp7.i, label %if.else.i, label %tracemalloc_deinit.exit, !dbg !1406

if.else.i:                                        ; preds = %do.body.6.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !1407
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1407, !tbaa !1222
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !1407
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1407, !tbaa !1223
  tail call void %20(%struct._object* %17) #1, !dbg !1407
  br label %tracemalloc_deinit.exit, !dbg !1409

tracemalloc_deinit.exit:                          ; preds = %entry, %if.end.3.i, %do.body.6.i, %if.else.i
  ret void, !dbg !1410
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_is_tracing(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !483, metadata !1048), !dbg !1411
  %.b = load i1, i1* @tracemalloc_config.1, align 1
  %conv = zext i1 %.b to i64, !dbg !1412
  %call = tail call %struct._object* @PyBool_FromLong(i64 %conv) #1, !dbg !1413
  ret %struct._object* %call, !dbg !1414
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_clear_traces(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !486, metadata !1048), !dbg !1415
  %.b = load i1, i1* @tracemalloc_config.1, align 1
  br i1 %.b, label %if.end, label %return, !dbg !1416

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !491, metadata !1048) #1, !dbg !1417
  %0 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1419, !tbaa !1075
  %call.i = tail call i32 @PyThread_set_key_value(i32 %0, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)) #1, !dbg !1420
  %1 = load i8*, i8** @tables_lock, align 8, !dbg !1421, !tbaa !1068
  %call.i.2 = tail call i32 @PyThread_acquire_lock(i8* %1, i32 1) #1, !dbg !1421
  %2 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1423, !tbaa !1068
  tail call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %2) #1, !dbg !1424
  store i64 0, i64* @tracemalloc_traced_memory, align 8, !dbg !1425, !tbaa !1362
  store i64 0, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !1426, !tbaa !1362
  %3 = load i8*, i8** @tables_lock, align 8, !dbg !1427, !tbaa !1068
  tail call void @PyThread_release_lock(i8* %3) #1, !dbg !1427
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1428, !tbaa !1068
  %call1.i = tail call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %4, i32 (%struct._Py_hashtable_entry_t*, i8*)* nonnull @traceback_free_traceback, i8* null) #1, !dbg !1429
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1430, !tbaa !1068
  tail call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %5) #1, !dbg !1431
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1432, !tbaa !1068
  %call2.i = tail call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %6, i32 (%struct._Py_hashtable_entry_t*, i8*)* nonnull @tracemalloc_clear_filename, i8* null) #1, !dbg !1433
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1434, !tbaa !1068
  tail call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %7) #1, !dbg !1435
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !491, metadata !1048) #1, !dbg !1436
  %8 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1438, !tbaa !1075
  %call1.i.3 = tail call i32 @PyThread_set_key_value(i32 %8, i8* null) #1, !dbg !1439
  br label %return, !dbg !1440

return:                                           ; preds = %entry, %if.end
  %storemerge.in = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1441
  %storemerge = add i64 %storemerge.in, 1, !dbg !1441
  store i64 %storemerge, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1440, !tbaa !1217
  ret %struct._object* @_Py_NoneStruct, !dbg !1443
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_get_traces(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %obj) #0 {
entry:
  %get_traces = alloca %struct.get_traces_t, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !513, metadata !1048), !dbg !1444
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !514, metadata !1048), !dbg !1445
  %0 = bitcast %struct.get_traces_t* %get_traces to i8*, !dbg !1446
  call void @llvm.lifetime.start(i64 24, i8* %0) #1, !dbg !1446
  %traces = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i64 0, i32 0, !dbg !1447
  %tracebacks = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i64 0, i32 1, !dbg !1448
  %1 = bitcast %struct.get_traces_t* %get_traces to i8*, !dbg !1449
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false), !dbg !1450
  %call = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !1449
  %list = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i64 0, i32 2, !dbg !1451
  store %struct._object* %call, %struct._object** %list, align 8, !dbg !1452, !tbaa !1453
  %cmp = icmp eq %struct._object* %call, null, !dbg !1455
  br i1 %cmp, label %finally, label %if.end, !dbg !1457

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @tracemalloc_config.1, align 1
  br i1 %.b, label %if.end.4, label %cleanup, !dbg !1458

if.end.4:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !570, metadata !1048) #1, !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 (i8*)* @_Py_hashtable_hash_ptr, i64 0, metadata !571, metadata !1048) #1, !dbg !1461
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)* @_Py_hashtable_compare_direct, i64 0, metadata !572, metadata !1048) #1, !dbg !1462
  %call.i = tail call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 8, i64 0, i64 (i8*)* nonnull @_Py_hashtable_hash_ptr, i32 (i8*, %struct._Py_hashtable_entry_t*)* nonnull @_Py_hashtable_compare_direct, i8* (i8*)* null, void (i8*)* null, i64 (i8*)* null, %struct._Py_hashtable_allocator_t* nonnull @hashtable_alloc) #1, !dbg !1463
  store %struct._Py_hashtable_t* %call.i, %struct._Py_hashtable_t** %tracebacks, align 8, !dbg !1464, !tbaa !1465
  %cmp8 = icmp eq %struct._Py_hashtable_t* %call.i, null, !dbg !1466
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !1468

if.then.9:                                        ; preds = %if.end.4
  %call10 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !1469
  br label %if.then.27, !dbg !1471

if.end.11:                                        ; preds = %if.end.4
  %2 = load i8*, i8** @tables_lock, align 8, !dbg !1472, !tbaa !1068
  %call12 = tail call i32 @PyThread_acquire_lock(i8* %2, i32 1) #1, !dbg !1472
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1473, !tbaa !1068
  %call13 = tail call %struct._Py_hashtable_t* @_Py_hashtable_copy(%struct._Py_hashtable_t* %3) #1, !dbg !1474
  store %struct._Py_hashtable_t* %call13, %struct._Py_hashtable_t** %traces, align 8, !dbg !1475, !tbaa !1476
  %4 = load i8*, i8** @tables_lock, align 8, !dbg !1477, !tbaa !1068
  tail call void @PyThread_release_lock(i8* %4) #1, !dbg !1477
  %cmp16 = icmp eq %struct._Py_hashtable_t* %call13, null, !dbg !1478
  br i1 %cmp16, label %if.then.17, label %if.end.19, !dbg !1480

if.then.17:                                       ; preds = %if.end.11
  %call18 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !1481
  br label %if.then.27, !dbg !1483

if.end.19:                                        ; preds = %if.end.11
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !491, metadata !1048) #1, !dbg !1484
  %5 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1486, !tbaa !1075
  %call.i.56 = tail call i32 @PyThread_set_key_value(i32 %5, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)) #1, !dbg !1487
  %call21 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %call13, i32 (%struct._Py_hashtable_entry_t*, i8*)* nonnull @tracemalloc_get_traces_fill, i8* %0) #1, !dbg !1488
  call void @llvm.dbg.value(metadata i32 %call21, i64 0, metadata !559, metadata !1048), !dbg !1489
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !491, metadata !1048) #1, !dbg !1490
  %6 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1492, !tbaa !1075
  %call1.i = call i32 @PyThread_set_key_value(i32 %6, i8* null) #1, !dbg !1493
  %tobool22 = icmp eq i32 %call21, 0, !dbg !1494
  br i1 %tobool22, label %finally, label %do.body, !dbg !1496

do.body:                                          ; preds = %if.end.19
  %.pr.pre = load %struct._object*, %struct._object** %list, align 8, !dbg !1497, !tbaa !1453
  call void @llvm.dbg.value(metadata %struct._object* %.pr.pre, i64 0, metadata !560, metadata !1048), !dbg !1497
  %cmp26 = icmp eq %struct._object* %.pr.pre, null, !dbg !1499
  br i1 %cmp26, label %finally, label %if.then.27, !dbg !1500

if.then.27:                                       ; preds = %if.then.17, %if.then.9, %do.body
  %.pr60 = phi %struct._object* [ %.pr.pre, %do.body ], [ %call, %if.then.9 ], [ %call, %if.then.17 ]
  store %struct._object* null, %struct._object** %list, align 8, !dbg !1501, !tbaa !1453
  call void @llvm.dbg.value(metadata %struct._object* %.pr.pre, i64 0, metadata !562, metadata !1048), !dbg !1503
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr60, i64 0, i32 0, !dbg !1505
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1505, !tbaa !1217
  %dec = add i64 %7, -1, !dbg !1505
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1505, !tbaa !1217
  %cmp30 = icmp eq i64 %dec, 0, !dbg !1505
  br i1 %cmp30, label %if.else, label %finally, !dbg !1507

if.else:                                          ; preds = %if.then.27
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr60, i64 0, i32 1, !dbg !1508
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1508, !tbaa !1222
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1508
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1508, !tbaa !1223
  call void %9(%struct._object* %.pr60) #1, !dbg !1508
  br label %finally

finally:                                          ; preds = %entry, %do.body, %if.then.27, %if.else, %if.end.19
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks, align 8, !dbg !1510, !tbaa !1465
  %cmp37 = icmp eq %struct._Py_hashtable_t* %10, null, !dbg !1512
  br i1 %cmp37, label %if.end.42, label %if.then.38, !dbg !1513

if.then.38:                                       ; preds = %finally
  %call40 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %10, i32 (%struct._Py_hashtable_entry_t*, i8*)* nonnull @tracemalloc_pyobject_decref_cb, i8* null) #1, !dbg !1514
  %11 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks, align 8, !dbg !1516, !tbaa !1465
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %11) #1, !dbg !1517
  br label %if.end.42, !dbg !1518

if.end.42:                                        ; preds = %finally, %if.then.38
  %12 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %traces, align 8, !dbg !1519, !tbaa !1476
  %cmp44 = icmp eq %struct._Py_hashtable_t* %12, null, !dbg !1521
  br i1 %cmp44, label %if.end.47, label %if.then.45, !dbg !1522

if.then.45:                                       ; preds = %if.end.42
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %12) #1, !dbg !1523
  br label %if.end.47, !dbg !1523

if.end.47:                                        ; preds = %if.end.42, %if.then.45
  %13 = load %struct._object*, %struct._object** %list, align 8, !dbg !1524, !tbaa !1453
  br label %cleanup, !dbg !1525

cleanup:                                          ; preds = %if.end, %if.end.47
  %retval.0 = phi %struct._object* [ %13, %if.end.47 ], [ %call, %if.end ]
  call void @llvm.lifetime.end(i64 24, i8* %0) #1, !dbg !1526
  ret %struct._object* %retval.0, !dbg !1526
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_get_object_traceback(%struct._object* nocapture readnone %self, %struct._object* %obj) #0 {
entry:
  %trace = alloca %struct.trace_t, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !649, metadata !1048), !dbg !1527
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !650, metadata !1048), !dbg !1528
  %0 = bitcast %struct.trace_t* %trace to i8*, !dbg !1529
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !1529
  %.b = load i1, i1* @tracemalloc_config.1, align 1
  br i1 %.b, label %if.end, label %if.then, !dbg !1530

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1531, !tbaa !1217
  %inc = add i64 %1, 1, !dbg !1531
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1531, !tbaa !1217
  br label %cleanup, !dbg !1531

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1533
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1533, !tbaa !1222
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %2, i64 0, metadata !651, metadata !1048), !dbg !1534
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !1535
  %3 = load i64, i64* %tp_flags, align 8, !dbg !1535, !tbaa !1537
  %and = and i64 %3, 16384, !dbg !1535
  %cmp = icmp eq i64 %and, 0, !dbg !1535
  %add.ptr = getelementptr %struct._object, %struct._object* %obj, i64 -2, i32 1, !dbg !1538
  %4 = bitcast %struct._typeobject** %add.ptr to i8*, !dbg !1538
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !654, metadata !1048), !dbg !1539
  %5 = bitcast %struct._object* %obj to i8*, !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !654, metadata !1048), !dbg !1539
  %ptr.0 = select i1 %cmp, i8* %5, i8* %4, !dbg !1541
  %6 = load i8*, i8** @tables_lock, align 8, !dbg !1542, !tbaa !1068
  %call = tail call i32 @PyThread_acquire_lock(i8* %6, i32 1) #1, !dbg !1542
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1543, !tbaa !1068
  %call3 = call i32 @_Py_hashtable_get(%struct._Py_hashtable_t* %7, i8* %ptr.0, i8* %0, i64 16) #1, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %call3, i64 0, metadata !656, metadata !1048), !dbg !1544
  %8 = load i8*, i8** @tables_lock, align 8, !dbg !1545, !tbaa !1068
  call void @PyThread_release_lock(i8* %8) #1, !dbg !1545
  %tobool4 = icmp eq i32 %call3, 0, !dbg !1546
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !1548

if.then.5:                                        ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1549, !tbaa !1217
  %inc6 = add i64 %9, 1, !dbg !1549
  store i64 %inc6, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1549, !tbaa !1217
  br label %cleanup, !dbg !1549

if.end.7:                                         ; preds = %if.end
  %traceback = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i64 0, i32 1, !dbg !1550
  %10 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8, !dbg !1550, !tbaa !1551
  %call8 = call fastcc %struct._object* @traceback_to_pyobject(%struct.traceback_t* %10, %struct._Py_hashtable_t* null), !dbg !1553
  br label %cleanup, !dbg !1554

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ %call8, %if.end.7 ], [ @_Py_NoneStruct, %if.then.5 ], [ @_Py_NoneStruct, %if.then ]
  call void @llvm.lifetime.end(i64 16, i8* %0) #1, !dbg !1555
  ret %struct._object* %retval.0, !dbg !1555
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_start(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %nframe = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !659, metadata !1048), !dbg !1556
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !660, metadata !1048), !dbg !1557
  %0 = bitcast i64* %nframe to i8*, !dbg !1558
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !661, metadata !1048), !dbg !1559
  store i64 1, i64* %nframe, align 8, !dbg !1559, !tbaa !1362
  tail call void @llvm.dbg.value(metadata i64* %nframe, i64 0, metadata !661, metadata !1048), !dbg !1559
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i64* nonnull %nframe) #1, !dbg !1560
  %tobool = icmp eq i32 %call, 0, !dbg !1560
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1562

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64* %nframe, i64 0, metadata !661, metadata !1048), !dbg !1559
  %1 = load i64, i64* %nframe, align 8, !dbg !1563, !tbaa !1362
  %cmp = icmp slt i64 %1, 1, !dbg !1565
  %cmp1 = icmp ugt i64 %1, 178956969, !dbg !1566
  %or.cond = or i1 %cmp, %cmp1, !dbg !1567
  br i1 %or.cond, label %if.then.2, label %if.end.4, !dbg !1567

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1568, !tbaa !1068
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 178956969) #1, !dbg !1570
  br label %cleanup, !dbg !1571

if.end.4:                                         ; preds = %if.end
  %conv = trunc i64 %1 to i32, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !662, metadata !1048), !dbg !1573
  %call5 = call fastcc i32 @tracemalloc_start(i32 %conv), !dbg !1574
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1576
  br i1 %cmp6, label %cleanup, label %if.end.9, !dbg !1577

if.end.9:                                         ; preds = %if.end.4
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1578, !tbaa !1217
  %inc = add i64 %3, 1, !dbg !1578
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1578, !tbaa !1217
  br label %cleanup, !dbg !1578

cleanup:                                          ; preds = %if.end.4, %entry, %if.end.9, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ @_Py_NoneStruct, %if.end.9 ], [ null, %entry ], [ null, %if.end.4 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1579
  ret %struct._object* %retval.0, !dbg !1579
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_stop(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !665, metadata !1048), !dbg !1580
  %.b.i = load i1, i1* @tracemalloc_config.1, align 1, !dbg !1581
  br i1 %.b.i, label %if.end.i, label %tracemalloc_stop.exit, !dbg !1582

if.end.i:                                         ; preds = %entry
  store i1 false, i1* @tracemalloc_config.1, align 1, !dbg !1581
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !491, metadata !1048) #1, !dbg !1584
  %0 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1586, !tbaa !1075
  %call.i.i = tail call i32 @PyThread_set_key_value(i32 %0, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)) #1, !dbg !1587
  tail call void @PyMem_SetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1)) #1, !dbg !1588
  tail call void @PyMem_SetAllocator(i32 1, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 0)) #1, !dbg !1589
  tail call void @PyMem_SetAllocator(i32 2, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 2)) #1, !dbg !1590
  %1 = load i8*, i8** @tables_lock, align 8, !dbg !1591, !tbaa !1068
  %call.i = tail call i32 @PyThread_acquire_lock(i8* %1, i32 1) #1, !dbg !1591
  %2 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1593, !tbaa !1068
  tail call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %2) #1, !dbg !1594
  store i64 0, i64* @tracemalloc_traced_memory, align 8, !dbg !1595, !tbaa !1362
  store i64 0, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !1596, !tbaa !1362
  %3 = load i8*, i8** @tables_lock, align 8, !dbg !1597, !tbaa !1068
  tail call void @PyThread_release_lock(i8* %3) #1, !dbg !1597
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1598, !tbaa !1068
  %call1.i = tail call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %4, i32 (%struct._Py_hashtable_entry_t*, i8*)* nonnull @traceback_free_traceback, i8* null) #1, !dbg !1599
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1600, !tbaa !1068
  tail call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %5) #1, !dbg !1601
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1602, !tbaa !1068
  %call2.i = tail call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %6, i32 (%struct._Py_hashtable_entry_t*, i8*)* nonnull @tracemalloc_clear_filename, i8* null) #1, !dbg !1603
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1604, !tbaa !1068
  tail call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %7) #1, !dbg !1605
  %8 = load i8*, i8** bitcast (%struct.traceback_t** @tracemalloc_traceback to i8**), align 8, !dbg !1606, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !503, metadata !1048) #1, !dbg !1607
  %9 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 3), align 8, !dbg !1609, !tbaa !1377
  %10 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 0), align 8, !dbg !1610, !tbaa !1301
  tail call void %9(i8* %10, i8* %8) #1, !dbg !1611
  store %struct.traceback_t* null, %struct.traceback_t** @tracemalloc_traceback, align 8, !dbg !1612, !tbaa !1068
  br label %tracemalloc_stop.exit, !dbg !1613

tracemalloc_stop.exit:                            ; preds = %entry, %if.end.i
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1614, !tbaa !1217
  %inc = add i64 %11, 1, !dbg !1614
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1614, !tbaa !1217
  ret %struct._object* @_Py_NoneStruct, !dbg !1614
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_get_traceback_limit(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !669, metadata !1048), !dbg !1615
  %0 = load i32, i32* @tracemalloc_config.2, align 4, !dbg !1616, !tbaa !1291
  %conv = sext i32 %0 to i64, !dbg !1617
  %call = tail call %struct._object* @PyLong_FromLong(i64 %conv) #1, !dbg !1618
  ret %struct._object* %call, !dbg !1619
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tracemalloc_get_tracemalloc_memory(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !672, metadata !1048), !dbg !1620
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !1621, !tbaa !1068
  %call = tail call i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %0) #1, !dbg !1622
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !673, metadata !1048), !dbg !1623
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !1624, !tbaa !1068
  %call1 = tail call i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %1) #1, !dbg !1625
  %add = add i64 %call1, %call, !dbg !1626
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !673, metadata !1048), !dbg !1623
  %2 = load i8*, i8** @tables_lock, align 8, !dbg !1627, !tbaa !1068
  %call2 = tail call i32 @PyThread_acquire_lock(i8* %2, i32 1) #1, !dbg !1627
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1628, !tbaa !1068
  %call3 = tail call i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %3) #1, !dbg !1629
  %add4 = add i64 %add, %call3, !dbg !1630
  tail call void @llvm.dbg.value(metadata i64 %add4, i64 0, metadata !673, metadata !1048), !dbg !1623
  %4 = load i8*, i8** @tables_lock, align 8, !dbg !1631, !tbaa !1068
  tail call void @PyThread_release_lock(i8* %4) #1, !dbg !1631
  %call5 = tail call %struct._object* @PyLong_FromSize_t(i64 %add4) #1, !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !674, metadata !1048), !dbg !1633
  %call6 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %struct._object* %call5) #1, !dbg !1634
  ret %struct._object* %call6, !dbg !1635
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tracemalloc_get_traced_memory(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !677, metadata !1048), !dbg !1636
  %.b = load i1, i1* @tracemalloc_config.1, align 1
  br i1 %.b, label %if.end, label %if.then, !dbg !1637

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 0, i32 0) #1, !dbg !1638
  br label %cleanup, !dbg !1640

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @tables_lock, align 8, !dbg !1641, !tbaa !1068
  %call1 = tail call i32 @PyThread_acquire_lock(i8* %0, i32 1) #1, !dbg !1641
  %1 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !1642, !tbaa !1362
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !678, metadata !1048), !dbg !1643
  %2 = load i64, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !1644, !tbaa !1362
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !679, metadata !1048), !dbg !1645
  %3 = load i8*, i8** @tables_lock, align 8, !dbg !1646, !tbaa !1068
  tail call void @PyThread_release_lock(i8* %3) #1, !dbg !1646
  %call2 = tail call %struct._object* @PyLong_FromSize_t(i64 %1) #1, !dbg !1647
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !680, metadata !1048), !dbg !1648
  %call3 = tail call %struct._object* @PyLong_FromSize_t(i64 %2) #1, !dbg !1649
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !681, metadata !1048), !dbg !1650
  %call4 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), %struct._object* %call2, %struct._object* %call3) #1, !dbg !1651
  br label %cleanup, !dbg !1652

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call4, %if.end ], [ %call, %if.then ]
  ret %struct._object* %retval.0, !dbg !1653
}

declare %struct._object* @PyBool_FromLong(i64) #2

declare i32 @PyThread_set_key_value(i32, i8*) #2

declare i32 @PyThread_acquire_lock(i8*, i32) #2

declare void @_Py_hashtable_clear(%struct._Py_hashtable_t*) #2

declare void @PyThread_release_lock(i8*) #2

declare i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t*, i32 (%struct._Py_hashtable_entry_t*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @traceback_free_traceback(%struct._Py_hashtable_entry_t* nocapture readonly %entry1, i8* nocapture readnone %user_data) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %entry1, i64 0, metadata !498, metadata !1048), !dbg !1654
  tail call void @llvm.dbg.value(metadata i8* %user_data, i64 0, metadata !499, metadata !1048), !dbg !1655
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1, i64 0, i32 1, !dbg !1656
  %0 = load i8*, i8** %key, align 8, !dbg !1656, !tbaa !1657
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !503, metadata !1048) #1, !dbg !1660
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 3), align 8, !dbg !1662, !tbaa !1377
  %2 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 0), align 8, !dbg !1663, !tbaa !1301
  tail call void %1(i8* %2, i8* %0) #1, !dbg !1664
  ret i32 0, !dbg !1665
}

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_clear_filename(%struct._Py_hashtable_entry_t* nocapture readonly %entry1, i8* nocapture readnone %user_data) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %entry1, i64 0, metadata !506, metadata !1048), !dbg !1666
  tail call void @llvm.dbg.value(metadata i8* %user_data, i64 0, metadata !507, metadata !1048), !dbg !1667
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1, i64 0, i32 1, !dbg !1668
  %0 = bitcast i8** %key to %struct._object**, !dbg !1668
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1668, !tbaa !1657
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !508, metadata !1048), !dbg !1669
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !509, metadata !1048), !dbg !1670
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1672
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1672, !tbaa !1217
  %dec = add i64 %2, -1, !dbg !1672
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1672, !tbaa !1217
  %cmp = icmp eq i64 %dec, 0, !dbg !1672
  br i1 %cmp, label %if.else, label %if.end, !dbg !1674

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1675
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1675, !tbaa !1222
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1675
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1675, !tbaa !1223
  tail call void %4(%struct._object* %1) #1, !dbg !1675
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  ret i32 0, !dbg !1677
}

declare %struct._object* @PyList_New(i64) #2

declare i64 @_Py_hashtable_hash_ptr(i8*) #2

declare i32 @_Py_hashtable_compare_direct(i8*, %struct._Py_hashtable_entry_t*) #2

declare %struct._object* @PyErr_NoMemory() #2

declare %struct._Py_hashtable_t* @_Py_hashtable_copy(%struct._Py_hashtable_t*) #2

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_get_traces_fill(%struct._Py_hashtable_entry_t* nocapture readonly %entry1, i8* nocapture readonly %user_data) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %entry1, i64 0, metadata !575, metadata !1048), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8* %user_data, i64 0, metadata !576, metadata !1048), !dbg !1679
  %tracebacks = getelementptr inbounds i8, i8* %user_data, i64 8, !dbg !1680
  %0 = bitcast i8* %tracebacks to %struct._Py_hashtable_t**, !dbg !1680
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %0, align 8, !dbg !1680, !tbaa !1465
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %1, i64 0, metadata !589, metadata !1048) #1, !dbg !1681
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !590, metadata !1048) #1, !dbg !1683
  %call.i = tail call %struct._object* @PyTuple_New(i64 2) #1, !dbg !1684
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !590, metadata !1048) #1, !dbg !1683
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1685
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !1687

if.end.i:                                         ; preds = %entry
  %add.ptr22 = getelementptr %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1, i64 1, !dbg !1688
  %size1.i = bitcast %struct._Py_hashtable_entry_t* %add.ptr22 to i64*, !dbg !1689
  %2 = load i64, i64* %size1.i, align 8, !dbg !1689, !tbaa !1690
  %call2.i = tail call %struct._object* @PyLong_FromSize_t(i64 %2) #1, !dbg !1691
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !591, metadata !1048) #1, !dbg !1692
  %cmp3.i = icmp eq %struct._object* %call2.i, null, !dbg !1693
  br i1 %cmp3.i, label %do.body.i, label %if.end.8.i, !dbg !1694

do.body.i:                                        ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !593, metadata !1048) #1, !dbg !1695
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1697
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1697, !tbaa !1217
  %dec.i = add i64 %3, -1, !dbg !1697
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1697, !tbaa !1217
  %cmp5.i = icmp eq i64 %dec.i, 0, !dbg !1697
  br i1 %cmp5.i, label %if.else.i, label %cleanup, !dbg !1699

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1700
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1700, !tbaa !1222
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1700
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1700, !tbaa !1223
  tail call void %5(%struct._object* %call.i) #1, !dbg !1700
  br label %cleanup, !dbg !1702

if.end.8.i:                                       ; preds = %if.end.i
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1703
  %arrayidx.i = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !1703
  store %struct._object* %call2.i, %struct._object** %arrayidx.i, align 8, !dbg !1703, !tbaa !1068
  %traceback9.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1, i64 1, i32 1, !dbg !1704
  %6 = bitcast i8** %traceback9.i to %struct.traceback_t**, !dbg !1704
  %7 = load %struct.traceback_t*, %struct.traceback_t** %6, align 8, !dbg !1704, !tbaa !1551
  %call10.i = tail call fastcc %struct._object* @traceback_to_pyobject(%struct.traceback_t* %7, %struct._Py_hashtable_t* %1) #1, !dbg !1705
  tail call void @llvm.dbg.value(metadata %struct._object* %call10.i, i64 0, metadata !592, metadata !1048) #1, !dbg !1706
  %cmp11.i = icmp eq %struct._object* %call10.i, null, !dbg !1707
  br i1 %cmp11.i, label %do.body.13.i, label %if.end, !dbg !1708

do.body.13.i:                                     ; preds = %if.end.8.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !597, metadata !1048) #1, !dbg !1709
  %ob_refcnt15.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1711
  %8 = load i64, i64* %ob_refcnt15.i, align 8, !dbg !1711, !tbaa !1217
  %dec16.i = add i64 %8, -1, !dbg !1711
  store i64 %dec16.i, i64* %ob_refcnt15.i, align 8, !dbg !1711, !tbaa !1217
  %cmp17.i = icmp eq i64 %dec16.i, 0, !dbg !1711
  br i1 %cmp17.i, label %if.else.19.i, label %cleanup, !dbg !1713

if.else.19.i:                                     ; preds = %do.body.13.i
  %ob_type20.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1714
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type20.i, align 8, !dbg !1714, !tbaa !1222
  %tp_dealloc21.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1714
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21.i, align 8, !dbg !1714, !tbaa !1223
  tail call void %10(%struct._object* %call.i) #1, !dbg !1714
  br label %cleanup, !dbg !1702

if.end:                                           ; preds = %if.end.8.i
  %arrayidx27.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 1, !dbg !1716
  %11 = bitcast %struct._typeobject** %arrayidx27.i to %struct._object**, !dbg !1716
  store %struct._object* %call10.i, %struct._object** %11, align 8, !dbg !1716, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !580, metadata !1048), !dbg !1717
  %list = getelementptr inbounds i8, i8* %user_data, i64 16, !dbg !1718
  %12 = bitcast i8* %list to %struct._object**, !dbg !1718
  %13 = load %struct._object*, %struct._object** %12, align 8, !dbg !1718, !tbaa !1453
  %call2 = tail call i32 @PyList_Append(%struct._object* %13, %struct._object* %call.i) #1, !dbg !1719
  tail call void @llvm.dbg.value(metadata i32 %call2, i64 0, metadata !581, metadata !1048), !dbg !1720
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !582, metadata !1048), !dbg !1721
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1723
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !1723, !tbaa !1217
  %dec = add i64 %14, -1, !dbg !1723
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1723, !tbaa !1217
  %cmp3 = icmp eq i64 %dec, 0, !dbg !1723
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !1725

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1726
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1726, !tbaa !1222
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1726
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1726, !tbaa !1223
  tail call void %16(%struct._object* %call.i) #1, !dbg !1726
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.else
  %call2.lobit = lshr i32 %call2, 31, !dbg !1728
  br label %cleanup, !dbg !1728

cleanup:                                          ; preds = %if.else.19.i, %do.body.13.i, %if.else.i, %do.body.i, %entry, %if.end.5
  %retval.0 = phi i32 [ %call2.lobit, %if.end.5 ], [ 1, %entry ], [ 1, %do.body.i ], [ 1, %if.else.i ], [ 1, %do.body.13.i ], [ 1, %if.else.19.i ]
  ret i32 %retval.0, !dbg !1730
}

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_pyobject_decref_cb(%struct._Py_hashtable_entry_t* nocapture readonly %entry1, i8* nocapture readnone %user_data) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %entry1, i64 0, metadata !642, metadata !1048), !dbg !1731
  tail call void @llvm.dbg.value(metadata i8* %user_data, i64 0, metadata !643, metadata !1048), !dbg !1732
  %add.ptr6 = getelementptr %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1, i64 1, !dbg !1733
  %0 = bitcast %struct._Py_hashtable_entry_t* %add.ptr6 to %struct._object**, !dbg !1733
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1733, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !644, metadata !1048), !dbg !1734
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !645, metadata !1048), !dbg !1735
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1737
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1737, !tbaa !1217
  %dec = add i64 %2, -1, !dbg !1737
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1737, !tbaa !1217
  %cmp = icmp eq i64 %dec, 0, !dbg !1737
  br i1 %cmp, label %if.else, label %if.end, !dbg !1739

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1740
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1740, !tbaa !1222
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1740
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1740, !tbaa !1223
  tail call void %4(%struct._object* %1) #1, !dbg !1740
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  ret i32 0, !dbg !1742
}

declare void @_Py_hashtable_destroy(%struct._Py_hashtable_t*) #2

declare %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64, i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*, i8* (i8*)*, void (i8*)*, i64 (i8*)*, %struct._Py_hashtable_allocator_t*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare void @free(i8* nocapture) #5

declare i32 @PyList_Append(%struct._object*, %struct._object*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare %struct._object* @PyLong_FromSize_t(i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @traceback_to_pyobject(%struct.traceback_t* %traceback, %struct._Py_hashtable_t* %intern_table) #0 {
entry:
  %frames = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.traceback_t* %traceback, i64 0, metadata !605, metadata !1048), !dbg !1743
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %intern_table, i64 0, metadata !606, metadata !1048), !dbg !1744
  %0 = bitcast %struct._object** %frames to i8*, !dbg !1745
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1745
  %cmp = icmp ne %struct._Py_hashtable_t* %intern_table, null, !dbg !1746
  br i1 %cmp, label %if.then, label %if.end.2, !dbg !1748

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.traceback_t* %traceback to i8*, !dbg !1749
  %call = call i32 @_Py_hashtable_get(%struct._Py_hashtable_t* %intern_table, i8* %1, i8* %0, i64 8) #1, !dbg !1749
  %tobool = icmp eq i32 %call, 0, !dbg !1749
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !1752

if.then.1:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct._object** %frames, i64 0, metadata !608, metadata !1048), !dbg !1753
  %2 = load %struct._object*, %struct._object** %frames, align 8, !dbg !1754, !tbaa !1068
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !1754
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1754, !tbaa !1217
  %inc = add i64 %3, 1, !dbg !1754
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1754, !tbaa !1217
  call void @llvm.dbg.value(metadata %struct._object** %frames, i64 0, metadata !608, metadata !1048), !dbg !1753
  br label %cleanup, !dbg !1756

if.end.2:                                         ; preds = %if.then, %entry
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %traceback, i64 0, i32 1, !dbg !1757
  %4 = load i32, i32* %nframe, align 4, !dbg !1757, !tbaa !1131
  %conv = sext i32 %4 to i64, !dbg !1758
  %call3 = call %struct._object* @PyTuple_New(i64 %conv) #1, !dbg !1759
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !608, metadata !1048), !dbg !1753
  store %struct._object* %call3, %struct._object** %frames, align 8, !dbg !1760, !tbaa !1068
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !1761
  br i1 %cmp4, label %cleanup, label %for.cond.preheader, !dbg !1763

for.cond.preheader:                               ; preds = %if.end.2
  %5 = load i32, i32* %nframe, align 4, !dbg !1764, !tbaa !1131
  %cmp9.73 = icmp sgt i32 %5, 0, !dbg !1765
  br i1 %cmp9.73, label %for.body.lr.ph, label %for.end, !dbg !1766

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = bitcast %struct._object** %frames to %struct.PyTupleObject**, !dbg !1767
  br label %for.body, !dbg !1766

for.body:                                         ; preds = %for.body.lr.ph, %if.end.21
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %if.end.21 ]
  %idxprom = sext i32 %i.074 to i64, !dbg !1768
  %call.i = call %struct._object* @PyTuple_New(i64 2) #1, !dbg !1769
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !629, metadata !1048) #1, !dbg !1771
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1772
  br i1 %cmp.i, label %do.body.loopexit, label %if.end.i, !dbg !1774

if.end.i:                                         ; preds = %for.body
  %filename.i = getelementptr %struct.traceback_t, %struct.traceback_t* %traceback, i64 0, i32 2, i64 %idxprom, i32 0, !dbg !1775
  %7 = load %struct._object*, %struct._object** %filename.i, align 1, !dbg !1775, !tbaa !1136
  %cmp1.i = icmp eq %struct._object* %7, null, !dbg !1777
  %8 = ptrtoint %struct._object* %7 to i64, !dbg !1778
  br i1 %cmp1.i, label %if.then.2.i, label %if.end.4.i, !dbg !1778

if.then.2.i:                                      ; preds = %if.end.i
  store %struct._object* @_Py_NoneStruct, %struct._object** %filename.i, align 1, !dbg !1779, !tbaa !1136
  br label %if.end.4.i, !dbg !1780

if.end.4.i:                                       ; preds = %if.then.2.i, %if.end.i
  %9 = phi i64 [ ptrtoint (%struct._object* @_Py_NoneStruct to i64), %if.then.2.i ], [ %8, %if.end.i ], !dbg !1781
  %10 = phi %struct._object* [ @_Py_NoneStruct, %if.then.2.i ], [ %7, %if.end.i ], !dbg !1782
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1782
  %11 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1782, !tbaa !1217
  %inc.i = add i64 %11, 1, !dbg !1782
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1782, !tbaa !1217
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1781
  %12 = bitcast %struct._typeobject** %ob_item.i to i64*, !dbg !1781
  store i64 %9, i64* %12, align 8, !dbg !1781, !tbaa !1068
  %lineno.i = getelementptr %struct.traceback_t, %struct.traceback_t* %traceback, i64 0, i32 2, i64 %idxprom, i32 1, !dbg !1783
  %13 = load i32, i32* %lineno.i, align 1, !dbg !1783, !tbaa !1139
  call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !639, metadata !1048) #1, !dbg !1784
  %cmp.i.i = icmp sgt i32 %13, -1, !dbg !1786
  br i1 %cmp.i.i, label %lineno_as_obj.exit.i, label %lineno_as_obj.exit.thread.i, !dbg !1788

lineno_as_obj.exit.thread.i:                      ; preds = %if.end.4.i
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1789, !tbaa !1217
  %inc.i.i = add i64 %14, 1, !dbg !1789
  store i64 %inc.i.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1789, !tbaa !1217
  br label %if.end.21, !dbg !1790

lineno_as_obj.exit.i:                             ; preds = %if.end.4.i
  %conv.i.i = sext i32 %13 to i64, !dbg !1791
  %call.i.i = call %struct._object* @PyLong_FromLong(i64 %conv.i.i) #1, !dbg !1792
  %cmp8.i = icmp eq %struct._object* %call.i.i, null, !dbg !1793
  br i1 %cmp8.i, label %do.body.i, label %if.end.21, !dbg !1790

do.body.i:                                        ; preds = %lineno_as_obj.exit.i
  %call.i.lcssa83 = phi %struct._object* [ %call.i, %lineno_as_obj.exit.i ]
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !631, metadata !1048) #1, !dbg !1794
  %ob_refcnt10.i = getelementptr inbounds %struct._object, %struct._object* %call.i.lcssa83, i64 0, i32 0, !dbg !1796
  %15 = load i64, i64* %ob_refcnt10.i, align 8, !dbg !1796, !tbaa !1217
  %dec.i = add i64 %15, -1, !dbg !1796
  store i64 %dec.i, i64* %ob_refcnt10.i, align 8, !dbg !1796, !tbaa !1217
  %cmp11.i = icmp eq i64 %dec.i, 0, !dbg !1796
  br i1 %cmp11.i, label %if.else.i, label %do.body, !dbg !1798

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i.lcssa83, i64 0, i32 1, !dbg !1799
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1799, !tbaa !1222
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1799
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1799, !tbaa !1223
  call void %17(%struct._object* %call.i.lcssa83) #1, !dbg !1799
  br label %do.body, !dbg !1801

do.body.loopexit:                                 ; preds = %for.body
  br label %do.body, !dbg !1802

do.body:                                          ; preds = %do.body.loopexit, %do.body.i, %if.else.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !609, metadata !1048), !dbg !1802
  call void @llvm.dbg.value(metadata %struct._object** %frames, i64 0, metadata !608, metadata !1048), !dbg !1753
  %18 = load %struct._object*, %struct._object** %frames, align 8, !dbg !1803, !tbaa !1068
  call void @llvm.dbg.value(metadata %struct._object* %18, i64 0, metadata !610, metadata !1048), !dbg !1803
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 0, !dbg !1805
  %19 = load i64, i64* %ob_refcnt16, align 8, !dbg !1805, !tbaa !1217
  %dec = add i64 %19, -1, !dbg !1805
  store i64 %dec, i64* %ob_refcnt16, align 8, !dbg !1805, !tbaa !1217
  %cmp17 = icmp eq i64 %dec, 0, !dbg !1805
  br i1 %cmp17, label %if.else, label %cleanup, !dbg !1807

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 1, !dbg !1808
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1808, !tbaa !1222
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1808
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1808, !tbaa !1223
  call void %21(%struct._object* %18) #1, !dbg !1808
  br label %cleanup

if.end.21:                                        ; preds = %lineno_as_obj.exit.i, %lineno_as_obj.exit.thread.i
  %retval.0.i33.i = phi %struct._object* [ @_Py_NoneStruct, %lineno_as_obj.exit.thread.i ], [ %call.i.i, %lineno_as_obj.exit.i ], !dbg !1801
  %arrayidx16.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 1, !dbg !1810
  %22 = bitcast %struct._typeobject** %arrayidx16.i to %struct._object**, !dbg !1810
  store %struct._object* %retval.0.i33.i, %struct._object** %22, align 8, !dbg !1810, !tbaa !1068
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !609, metadata !1048), !dbg !1802
  call void @llvm.dbg.value(metadata %struct._object** %frames, i64 0, metadata !608, metadata !1048), !dbg !1753
  %23 = load %struct.PyTupleObject*, %struct.PyTupleObject** %6, align 8, !dbg !1767, !tbaa !1068
  %arrayidx23 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %23, i64 0, i32 1, i64 %idxprom, !dbg !1767
  store %struct._object* %call.i, %struct._object** %arrayidx23, align 8, !dbg !1767, !tbaa !1068
  %inc24 = add i32 %i.074, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %inc24, i64 0, metadata !607, metadata !1048), !dbg !1812
  %24 = load i32, i32* %nframe, align 4, !dbg !1764, !tbaa !1131
  %cmp9 = icmp slt i32 %inc24, %24, !dbg !1765
  br i1 %cmp9, label %for.body, label %for.end.loopexit, !dbg !1766

for.end.loopexit:                                 ; preds = %if.end.21
  br label %for.end, !dbg !1813

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  br i1 %cmp, label %if.then.27, label %for.end.if.end.49_crit_edge, !dbg !1813

for.end.if.end.49_crit_edge:                      ; preds = %for.end
  %.pre = load %struct._object*, %struct._object** %frames, align 8, !dbg !1814, !tbaa !1068
  br label %cleanup, !dbg !1813

if.then.27:                                       ; preds = %for.end
  %25 = bitcast %struct.traceback_t* %traceback to i8*, !dbg !1815
  %call28 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %intern_table, i8* %25, i8* %0, i64 8) #1, !dbg !1815
  %cmp29 = icmp slt i32 %call28, 0, !dbg !1816
  call void @llvm.dbg.value(metadata %struct._object** %frames, i64 0, metadata !608, metadata !1048), !dbg !1753
  %26 = load %struct._object*, %struct._object** %frames, align 8, !dbg !1817, !tbaa !1068
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %26, i64 0, i32 0, !dbg !1819
  %27 = load i64, i64* %ob_refcnt34, align 8, !dbg !1819, !tbaa !1217
  br i1 %cmp29, label %do.body.32, label %if.end.46, !dbg !1821

do.body.32:                                       ; preds = %if.then.27
  call void @llvm.dbg.value(metadata %struct._object* %26, i64 0, metadata !617, metadata !1048), !dbg !1817
  %dec35 = add i64 %27, -1, !dbg !1819
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !1819, !tbaa !1217
  %cmp36 = icmp eq i64 %dec35, 0, !dbg !1819
  br i1 %cmp36, label %if.else.39, label %if.end.42, !dbg !1822

if.else.39:                                       ; preds = %do.body.32
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %26, i64 0, i32 1, !dbg !1823
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1823, !tbaa !1222
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !1823
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1823, !tbaa !1223
  call void %29(%struct._object* %26) #1, !dbg !1823
  br label %if.end.42

if.end.42:                                        ; preds = %do.body.32, %if.else.39
  %call45 = call %struct._object* @PyErr_NoMemory() #1, !dbg !1825
  br label %cleanup, !dbg !1826

if.end.46:                                        ; preds = %if.then.27
  %inc48 = add i64 %27, 1, !dbg !1827
  store i64 %inc48, i64* %ob_refcnt34, align 8, !dbg !1827, !tbaa !1217
  br label %cleanup, !dbg !1828

cleanup:                                          ; preds = %if.end.46, %for.end.if.end.49_crit_edge, %if.else, %do.body, %if.end.2, %if.end.42, %if.then.1
  %retval.0 = phi %struct._object* [ %2, %if.then.1 ], [ null, %if.end.42 ], [ null, %if.end.2 ], [ null, %do.body ], [ null, %if.else ], [ %.pre, %for.end.if.end.49_crit_edge ], [ %26, %if.end.46 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1829
  ret %struct._object* %retval.0, !dbg !1829
}

declare i32 @_Py_hashtable_get(%struct._Py_hashtable_t*, i8*, i8*, i64) #2

declare i32 @_Py_hashtable_set(%struct._Py_hashtable_t*, i8*, i8*, i64) #2

declare %struct._object* @PyLong_FromLong(i64) #2

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare void @PyMem_SetAllocator(i32, %struct.PyMemAllocator*) #2

declare i64 @_Py_hashtable_size(%struct._Py_hashtable_t*) #2

declare %struct._object* @Py_BuildValue(i8*, ...) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare void @PyMem_GetAllocator(i32, %struct.PyMemAllocator*) #2

declare i32 @PyThread_create_key() #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #2

declare i8* @PyThread_allocate_lock() #2

declare i64 @PyObject_Hash(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hashtable_compare_unicode(i8* %key, %struct._Py_hashtable_entry_t* nocapture readonly %entry1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !685, metadata !1048), !dbg !1830
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %entry1, i64 0, metadata !686, metadata !1048), !dbg !1831
  %cmp = icmp eq i8* %key, null, !dbg !1832
  %key6.phi.trans.insert = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1, i64 0, i32 1, !dbg !1834
  %.pre = load i8*, i8** %key6.phi.trans.insert, align 8, !dbg !1834, !tbaa !1657
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1835

land.lhs.true:                                    ; preds = %entry
  %cmp3 = icmp eq i8* %.pre, null, !dbg !1836
  br i1 %cmp3, label %if.else, label %if.then, !dbg !1837

if.then:                                          ; preds = %land.lhs.true
  %0 = bitcast i8* %key to %struct._object*, !dbg !1838
  %1 = bitcast i8* %.pre to %struct._object*, !dbg !1839
  %call = tail call i32 @PyUnicode_Compare(%struct._object* %0, %struct._object* %1) #1, !dbg !1840
  %cmp5 = icmp eq i32 %call, 0, !dbg !1841
  br label %return, !dbg !1842

if.else:                                          ; preds = %entry, %land.lhs.true
  %2 = phi i8* [ null, %land.lhs.true ], [ %.pre, %entry ], !dbg !1834
  %cmp7 = icmp eq i8* %2, %key, !dbg !1843
  br label %return, !dbg !1844

return:                                           ; preds = %if.else, %if.then
  %cmp5.sink = phi i1 [ %cmp5, %if.then ], [ %cmp7, %if.else ]
  %conv = zext i1 %cmp5.sink to i32, !dbg !1841
  ret i32 %conv, !dbg !1845
}

; Function Attrs: nounwind readonly uwtable
define internal i64 @hashtable_hash_traceback(i8* nocapture readonly %key) #7 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !689, metadata !1048), !dbg !1846
  %hash = bitcast i8* %key to i64*, !dbg !1847
  %0 = load i64, i64* %hash, align 8, !dbg !1847, !tbaa !1156
  ret i64 %0, !dbg !1848
}

; Function Attrs: nounwind readonly uwtable
define internal i32 @hashtable_compare_traceback(%struct.traceback_t* nocapture readonly %traceback1, %struct._Py_hashtable_entry_t* nocapture readonly %he) #7 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.traceback_t* %traceback1, i64 0, metadata !697, metadata !1048), !dbg !1849
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %he, i64 0, metadata !698, metadata !1048), !dbg !1850
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %he, i64 0, i32 1, !dbg !1851
  %0 = bitcast i8** %key to %struct.traceback_t**, !dbg !1851
  %1 = load %struct.traceback_t*, %struct.traceback_t** %0, align 8, !dbg !1851, !tbaa !1657
  tail call void @llvm.dbg.value(metadata %struct.traceback_t* %1, i64 0, metadata !699, metadata !1048), !dbg !1852
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %traceback1, i64 0, i32 1, !dbg !1853
  %2 = load i32, i32* %nframe, align 4, !dbg !1855, !tbaa !1131
  %nframe1 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %1, i64 0, i32 1, !dbg !1858
  %3 = load i32, i32* %nframe1, align 4, !dbg !1858, !tbaa !1131
  %cmp = icmp eq i32 %2, %3, !dbg !1859
  br i1 %cmp, label %for.cond.preheader, label %cleanup, !dbg !1860

for.cond.preheader:                               ; preds = %entry
  %cmp3.30 = icmp sgt i32 %2, 0, !dbg !1861
  br i1 %cmp3.30, label %for.body.preheader, label %cleanup, !dbg !1862

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !1863

for.cond:                                         ; preds = %if.end.10
  %cmp3 = icmp slt i32 %inc, %2, !dbg !1861
  br i1 %cmp3, label %for.body, label %cleanup.loopexit, !dbg !1862

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.031 = phi i32 [ %inc, %for.cond ], [ 0, %for.body.preheader ]
  %idxprom = sext i32 %i.031 to i64, !dbg !1863
  %lineno = getelementptr %struct.traceback_t, %struct.traceback_t* %traceback1, i64 0, i32 2, i64 %idxprom, i32 1, !dbg !1865
  %4 = load i32, i32* %lineno, align 1, !dbg !1865, !tbaa !1139
  %lineno7 = getelementptr %struct.traceback_t, %struct.traceback_t* %1, i64 0, i32 2, i64 %idxprom, i32 1, !dbg !1867
  %5 = load i32, i32* %lineno7, align 1, !dbg !1867, !tbaa !1139
  %cmp8 = icmp eq i32 %4, %5, !dbg !1868
  br i1 %cmp8, label %if.end.10, label %cleanup.loopexit, !dbg !1869

if.end.10:                                        ; preds = %for.body
  %filename = getelementptr %struct.traceback_t, %struct.traceback_t* %traceback1, i64 0, i32 2, i64 %idxprom, i32 0, !dbg !1870
  %6 = load %struct._object*, %struct._object** %filename, align 1, !dbg !1870, !tbaa !1136
  %filename11 = getelementptr %struct.traceback_t, %struct.traceback_t* %1, i64 0, i32 2, i64 %idxprom, i32 0, !dbg !1872
  %7 = load %struct._object*, %struct._object** %filename11, align 1, !dbg !1872, !tbaa !1136
  %cmp12 = icmp eq %struct._object* %6, %7, !dbg !1873
  %inc = add i32 %i.031, 1, !dbg !1874
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !704, metadata !1048), !dbg !1875
  br i1 %cmp12, label %for.cond, label %cleanup.loopexit, !dbg !1876

cleanup.loopexit:                                 ; preds = %for.cond, %if.end.10, %for.body
  %retval.0.ph = phi i32 [ 1, %for.cond ], [ 0, %if.end.10 ], [ 0, %for.body ]
  br label %cleanup, !dbg !1877

cleanup:                                          ; preds = %cleanup.loopexit, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ %retval.0.ph, %cleanup.loopexit ]
  ret i32 %retval.0, !dbg !1877
}

declare void @PyUnicode_InternInPlace(%struct._object**) #2

declare i32 @PyUnicode_Compare(%struct._object*, %struct._object*) #2

declare i64 @PyUnicode_GetLength(%struct._object*) #2

declare %struct._object* @PyLong_FromUnicodeObject(%struct._object*, i32) #2

declare i64 @PyLong_AsLong(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_raw_malloc(i8* nocapture readonly %ctx, i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !734, metadata !1048), !dbg !1878
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !735, metadata !1048), !dbg !1879
  %0 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1880, !tbaa !1075
  %call.i = tail call i8* @PyThread_get_key_value(i32 %0) #1, !dbg !1882
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !744, metadata !1048) #1, !dbg !1883
  %not.cmp.i = icmp eq i8* %call.i, null, !dbg !1884
  br i1 %not.cmp.i, label %if.end, label %if.then, !dbg !1886

if.then:                                          ; preds = %entry
  %malloc = getelementptr inbounds i8, i8* %ctx, i64 8, !dbg !1887
  %1 = bitcast i8* %malloc to i8* (i8*, i64)**, !dbg !1887
  %2 = load i8* (i8*, i64)*, i8* (i8*, i64)** %1, align 8, !dbg !1887, !tbaa !1312
  %ctx1 = bitcast i8* %ctx to i8**, !dbg !1888
  %3 = load i8*, i8** %ctx1, align 8, !dbg !1888, !tbaa !1321
  %call2 = tail call i8* %2(i8* %3, i64 %size) #1, !dbg !1889
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !491, metadata !1048) #1, !dbg !1890
  %4 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1892, !tbaa !1075
  %call.i.12 = tail call i32 @PyThread_set_key_value(i32 %4, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)) #1, !dbg !1893
  %call3 = tail call i32 @PyGILState_Ensure() #1, !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %call3, i64 0, metadata !736, metadata !1048), !dbg !1895
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !747, metadata !1048) #1, !dbg !1896
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !748, metadata !1048) #1, !dbg !1898
  %malloc.i = getelementptr inbounds i8, i8* %ctx, i64 8, !dbg !1899
  %5 = bitcast i8* %malloc.i to i8* (i8*, i64)**, !dbg !1899
  %6 = load i8* (i8*, i64)*, i8* (i8*, i64)** %5, align 8, !dbg !1899, !tbaa !1312
  %ctx1.i = bitcast i8* %ctx to i8**, !dbg !1900
  %7 = load i8*, i8** %ctx1.i, align 8, !dbg !1900, !tbaa !1321
  %call.i.13 = tail call i8* %6(i8* %7, i64 %size) #1, !dbg !1901
  tail call void @llvm.dbg.value(metadata i8* %call.i.13, i64 0, metadata !750, metadata !1048) #1, !dbg !1902
  %cmp.i = icmp eq i8* %call.i.13, null, !dbg !1903
  br i1 %cmp.i, label %tracemalloc_malloc.exit, label %if.end.i, !dbg !1905

if.end.i:                                         ; preds = %if.end
  %8 = load i8*, i8** @tables_lock, align 8, !dbg !1906, !tbaa !1068
  %call2.i = tail call i32 @PyThread_acquire_lock(i8* %8, i32 1) #1, !dbg !1906
  %call3.i = tail call fastcc i32 @tracemalloc_add_trace(i8* %call.i.13, i64 %size) #1, !dbg !1907
  %cmp4.i = icmp slt i32 %call3.i, 0, !dbg !1909
  %9 = load i8*, i8** @tables_lock, align 8, !dbg !1910, !tbaa !1068
  tail call void @PyThread_release_lock(i8* %9) #1, !dbg !1910
  br i1 %cmp4.i, label %if.then.5.i, label %tracemalloc_malloc.exit, !dbg !1912

if.then.5.i:                                      ; preds = %if.end.i
  %free.i = getelementptr inbounds i8, i8* %ctx, i64 24, !dbg !1913
  %10 = bitcast i8* %free.i to void (i8*, i8*)**, !dbg !1913
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8, !dbg !1913, !tbaa !1318
  %12 = load i8*, i8** %ctx1.i, align 8, !dbg !1914, !tbaa !1321
  tail call void %11(i8* %12, i8* %call.i.13) #1, !dbg !1915
  br label %tracemalloc_malloc.exit, !dbg !1916

tracemalloc_malloc.exit:                          ; preds = %if.end, %if.end.i, %if.then.5.i
  %retval.0.i = phi i8* [ null, %if.then.5.i ], [ null, %if.end ], [ %call.i.13, %if.end.i ], !dbg !1917
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i, i64 0, metadata !738, metadata !1048), !dbg !1918
  tail call void @PyGILState_Release(i32 %call3) #1, !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !491, metadata !1048) #1, !dbg !1920
  %13 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1922, !tbaa !1075
  %call1.i = tail call i32 @PyThread_set_key_value(i32 %13, i8* null) #1, !dbg !1923
  br label %cleanup, !dbg !1924

cleanup:                                          ; preds = %tracemalloc_malloc.exit, %if.then
  %retval.0 = phi i8* [ %call2, %if.then ], [ %retval.0.i, %tracemalloc_malloc.exit ]
  ret i8* %retval.0, !dbg !1925
}

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_raw_realloc(i8* nocapture readonly %ctx, i8* %ptr, i64 %new_size) #0 {
entry:
  %trace.i = alloca %struct.trace_t, align 8
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !908, metadata !1048), !dbg !1926
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !909, metadata !1048), !dbg !1927
  tail call void @llvm.dbg.value(metadata i64 %new_size, i64 0, metadata !910, metadata !1048), !dbg !1928
  %0 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1929, !tbaa !1075
  %call.i = tail call i8* @PyThread_get_key_value(i32 %0) #1, !dbg !1931
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !744, metadata !1048) #1, !dbg !1932
  %not.cmp.i = icmp eq i8* %call.i, null, !dbg !1933
  br i1 %not.cmp.i, label %if.end.6, label %if.then, !dbg !1934

if.then:                                          ; preds = %entry
  %realloc = getelementptr inbounds i8, i8* %ctx, i64 16, !dbg !1935
  %1 = bitcast i8* %realloc to i8* (i8*, i8*, i64)**, !dbg !1935
  %2 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %1, align 8, !dbg !1935, !tbaa !1315
  %ctx1 = bitcast i8* %ctx to i8**, !dbg !1936
  %3 = load i8*, i8** %ctx1, align 8, !dbg !1936, !tbaa !1321
  %call2 = tail call i8* %2(i8* %3, i8* %ptr, i64 %new_size) #1, !dbg !1937
  tail call void @llvm.dbg.value(metadata i8* %call2, i64 0, metadata !912, metadata !1048), !dbg !1938
  %cmp = icmp ne i8* %call2, null, !dbg !1939
  %cmp3 = icmp ne i8* %ptr, null, !dbg !1941
  %or.cond = and i1 %cmp3, %cmp, !dbg !1942
  br i1 %or.cond, label %if.then.4, label %cleanup, !dbg !1942

if.then.4:                                        ; preds = %if.then
  %4 = load i8*, i8** @tables_lock, align 8, !dbg !1943, !tbaa !1068
  %call5 = tail call i32 @PyThread_acquire_lock(i8* %4, i32 1) #1, !dbg !1943
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !918, metadata !1048) #1, !dbg !1945
  %5 = bitcast %struct.trace_t* %trace.i to i8*, !dbg !1947
  call void @llvm.lifetime.start(i64 16, i8* %5) #1, !dbg !1947
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1948, !tbaa !1068
  %call.i.21 = call i32 @_Py_hashtable_pop(%struct._Py_hashtable_t* %6, i8* %ptr, i8* %5, i64 16) #1, !dbg !1950
  %tobool.i = icmp eq i32 %call.i.21, 0, !dbg !1950
  br i1 %tobool.i, label %tracemalloc_remove_trace.exit, label %if.then.i, !dbg !1951

if.then.i:                                        ; preds = %if.then.4
  %size.i = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace.i, i64 0, i32 0, !dbg !1952
  %7 = load i64, i64* %size.i, align 8, !dbg !1952, !tbaa !1690
  %8 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !1954, !tbaa !1362
  %sub.i = sub i64 %8, %7, !dbg !1954
  store i64 %sub.i, i64* @tracemalloc_traced_memory, align 8, !dbg !1954, !tbaa !1362
  br label %tracemalloc_remove_trace.exit, !dbg !1955

tracemalloc_remove_trace.exit:                    ; preds = %if.then.4, %if.then.i
  call void @llvm.lifetime.end(i64 16, i8* %5) #1, !dbg !1956
  %9 = load i8*, i8** @tables_lock, align 8, !dbg !1957, !tbaa !1068
  call void @PyThread_release_lock(i8* %9) #1, !dbg !1957
  br label %cleanup, !dbg !1958

if.end.6:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !491, metadata !1048) #1, !dbg !1959
  %10 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1961, !tbaa !1075
  %call.i.22 = tail call i32 @PyThread_set_key_value(i32 %10, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)) #1, !dbg !1962
  %call7 = tail call i32 @PyGILState_Ensure() #1, !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 %call7, i64 0, metadata !911, metadata !1048), !dbg !1964
  %call8 = tail call fastcc i8* @tracemalloc_realloc(i8* %ctx, i8* %ptr, i64 %new_size), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8* %call8, i64 0, metadata !912, metadata !1048), !dbg !1938
  tail call void @PyGILState_Release(i32 %call7) #1, !dbg !1966
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !491, metadata !1048) #1, !dbg !1967
  %11 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1969, !tbaa !1075
  %call1.i = tail call i32 @PyThread_set_key_value(i32 %11, i8* null) #1, !dbg !1970
  br label %cleanup, !dbg !1971

cleanup:                                          ; preds = %if.then, %tracemalloc_remove_trace.exit, %if.end.6
  %retval.0 = phi i8* [ %call8, %if.end.6 ], [ %call2, %tracemalloc_remove_trace.exit ], [ %call2, %if.then ]
  ret i8* %retval.0, !dbg !1972
}

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_free(i8* nocapture readonly %ctx, i8* %ptr) #0 {
entry:
  %trace.i = alloca %struct.trace_t, align 8
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !929, metadata !1048), !dbg !1973
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !930, metadata !1048), !dbg !1974
  %cmp = icmp eq i8* %ptr, null, !dbg !1975
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1977

if.end:                                           ; preds = %entry
  %free = getelementptr inbounds i8, i8* %ctx, i64 24, !dbg !1978
  %0 = bitcast i8* %free to void (i8*, i8*)**, !dbg !1978
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %0, align 8, !dbg !1978, !tbaa !1318
  %ctx1 = bitcast i8* %ctx to i8**, !dbg !1979
  %2 = load i8*, i8** %ctx1, align 8, !dbg !1979, !tbaa !1321
  tail call void %1(i8* %2, i8* %ptr) #1, !dbg !1980
  %3 = load i8*, i8** @tables_lock, align 8, !dbg !1981, !tbaa !1068
  %call = tail call i32 @PyThread_acquire_lock(i8* %3, i32 1) #1, !dbg !1981
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !918, metadata !1048) #1, !dbg !1982
  %4 = bitcast %struct.trace_t* %trace.i to i8*, !dbg !1984
  call void @llvm.lifetime.start(i64 16, i8* %4) #1, !dbg !1984
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !1985, !tbaa !1068
  %call.i = call i32 @_Py_hashtable_pop(%struct._Py_hashtable_t* %5, i8* %ptr, i8* %4, i64 16) #1, !dbg !1986
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1986
  br i1 %tobool.i, label %tracemalloc_remove_trace.exit, label %if.then.i, !dbg !1987

if.then.i:                                        ; preds = %if.end
  %size.i = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace.i, i64 0, i32 0, !dbg !1988
  %6 = load i64, i64* %size.i, align 8, !dbg !1988, !tbaa !1690
  %7 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !1989, !tbaa !1362
  %sub.i = sub i64 %7, %6, !dbg !1989
  store i64 %sub.i, i64* @tracemalloc_traced_memory, align 8, !dbg !1989, !tbaa !1362
  br label %tracemalloc_remove_trace.exit, !dbg !1990

tracemalloc_remove_trace.exit:                    ; preds = %if.end, %if.then.i
  call void @llvm.lifetime.end(i64 16, i8* %4) #1, !dbg !1991
  %8 = load i8*, i8** @tables_lock, align 8, !dbg !1992, !tbaa !1068
  call void @PyThread_release_lock(i8* %8) #1, !dbg !1992
  br label %cleanup, !dbg !1993

cleanup:                                          ; preds = %entry, %tracemalloc_remove_trace.exit
  ret void, !dbg !1993
}

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_malloc_gil(i8* nocapture readonly %ctx, i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !934, metadata !1048), !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !935, metadata !1048), !dbg !1995
  %0 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !1996, !tbaa !1075
  %call.i = tail call i8* @PyThread_get_key_value(i32 %0) #1, !dbg !1998
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !744, metadata !1048) #1, !dbg !1999
  %not.cmp.i = icmp eq i8* %call.i, null, !dbg !2000
  br i1 %not.cmp.i, label %if.end, label %if.then, !dbg !2001

if.then:                                          ; preds = %entry
  %malloc = getelementptr inbounds i8, i8* %ctx, i64 8, !dbg !2002
  %1 = bitcast i8* %malloc to i8* (i8*, i64)**, !dbg !2002
  %2 = load i8* (i8*, i64)*, i8* (i8*, i64)** %1, align 8, !dbg !2002, !tbaa !1312
  %ctx1 = bitcast i8* %ctx to i8**, !dbg !2003
  %3 = load i8*, i8** %ctx1, align 8, !dbg !2003, !tbaa !1321
  %call2 = tail call i8* %2(i8* %3, i64 %size) #1, !dbg !2004
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !491, metadata !1048) #1, !dbg !2005
  %4 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !2007, !tbaa !1075
  %call.i.9 = tail call i32 @PyThread_set_key_value(i32 %4, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)) #1, !dbg !2008
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !747, metadata !1048) #1, !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !748, metadata !1048) #1, !dbg !2011
  %malloc.i = getelementptr inbounds i8, i8* %ctx, i64 8, !dbg !2012
  %5 = bitcast i8* %malloc.i to i8* (i8*, i64)**, !dbg !2012
  %6 = load i8* (i8*, i64)*, i8* (i8*, i64)** %5, align 8, !dbg !2012, !tbaa !1312
  %ctx1.i = bitcast i8* %ctx to i8**, !dbg !2013
  %7 = load i8*, i8** %ctx1.i, align 8, !dbg !2013, !tbaa !1321
  %call.i.10 = tail call i8* %6(i8* %7, i64 %size) #1, !dbg !2014
  tail call void @llvm.dbg.value(metadata i8* %call.i.10, i64 0, metadata !750, metadata !1048) #1, !dbg !2015
  %cmp.i = icmp eq i8* %call.i.10, null, !dbg !2016
  br i1 %cmp.i, label %tracemalloc_malloc.exit, label %if.end.i, !dbg !2017

if.end.i:                                         ; preds = %if.end
  %8 = load i8*, i8** @tables_lock, align 8, !dbg !2018, !tbaa !1068
  %call2.i = tail call i32 @PyThread_acquire_lock(i8* %8, i32 1) #1, !dbg !2018
  %call3.i = tail call fastcc i32 @tracemalloc_add_trace(i8* %call.i.10, i64 %size) #1, !dbg !2019
  %cmp4.i = icmp slt i32 %call3.i, 0, !dbg !2020
  %9 = load i8*, i8** @tables_lock, align 8, !dbg !2021, !tbaa !1068
  tail call void @PyThread_release_lock(i8* %9) #1, !dbg !2021
  br i1 %cmp4.i, label %if.then.5.i, label %tracemalloc_malloc.exit, !dbg !2022

if.then.5.i:                                      ; preds = %if.end.i
  %free.i = getelementptr inbounds i8, i8* %ctx, i64 24, !dbg !2023
  %10 = bitcast i8* %free.i to void (i8*, i8*)**, !dbg !2023
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8, !dbg !2023, !tbaa !1318
  %12 = load i8*, i8** %ctx1.i, align 8, !dbg !2024, !tbaa !1321
  tail call void %11(i8* %12, i8* %call.i.10) #1, !dbg !2025
  br label %tracemalloc_malloc.exit, !dbg !2026

tracemalloc_malloc.exit:                          ; preds = %if.end, %if.end.i, %if.then.5.i
  %retval.0.i = phi i8* [ null, %if.then.5.i ], [ null, %if.end ], [ %call.i.10, %if.end.i ], !dbg !2027
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i, i64 0, metadata !936, metadata !1048), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !491, metadata !1048) #1, !dbg !2029
  %13 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !2031, !tbaa !1075
  %call1.i = tail call i32 @PyThread_set_key_value(i32 %13, i8* null) #1, !dbg !2032
  br label %cleanup, !dbg !2033

cleanup:                                          ; preds = %tracemalloc_malloc.exit, %if.then
  %retval.0 = phi i8* [ %call2, %if.then ], [ %retval.0.i, %tracemalloc_malloc.exit ]
  ret i8* %retval.0, !dbg !2034
}

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_realloc_gil(i8* nocapture readonly %ctx, i8* %ptr, i64 %new_size) #0 {
entry:
  %trace.i = alloca %struct.trace_t, align 8
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !942, metadata !1048), !dbg !2035
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !943, metadata !1048), !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 %new_size, i64 0, metadata !944, metadata !1048), !dbg !2037
  %0 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !2038, !tbaa !1075
  %call.i = tail call i8* @PyThread_get_key_value(i32 %0) #1, !dbg !2040
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !744, metadata !1048) #1, !dbg !2041
  %not.cmp.i = icmp eq i8* %call.i, null, !dbg !2042
  br i1 %not.cmp.i, label %if.end.6, label %if.then, !dbg !2043

if.then:                                          ; preds = %entry
  %realloc = getelementptr inbounds i8, i8* %ctx, i64 16, !dbg !2044
  %1 = bitcast i8* %realloc to i8* (i8*, i8*, i64)**, !dbg !2044
  %2 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %1, align 8, !dbg !2044, !tbaa !1315
  %ctx1 = bitcast i8* %ctx to i8**, !dbg !2045
  %3 = load i8*, i8** %ctx1, align 8, !dbg !2045, !tbaa !1321
  %call2 = tail call i8* %2(i8* %3, i8* %ptr, i64 %new_size) #1, !dbg !2046
  tail call void @llvm.dbg.value(metadata i8* %call2, i64 0, metadata !945, metadata !1048), !dbg !2047
  %cmp = icmp ne i8* %call2, null, !dbg !2048
  %cmp3 = icmp ne i8* %ptr, null, !dbg !2050
  %or.cond = and i1 %cmp3, %cmp, !dbg !2051
  br i1 %or.cond, label %if.then.4, label %cleanup, !dbg !2051

if.then.4:                                        ; preds = %if.then
  %4 = load i8*, i8** @tables_lock, align 8, !dbg !2052, !tbaa !1068
  %call5 = tail call i32 @PyThread_acquire_lock(i8* %4, i32 1) #1, !dbg !2052
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !918, metadata !1048) #1, !dbg !2054
  %5 = bitcast %struct.trace_t* %trace.i to i8*, !dbg !2056
  call void @llvm.lifetime.start(i64 16, i8* %5) #1, !dbg !2056
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !2057, !tbaa !1068
  %call.i.18 = call i32 @_Py_hashtable_pop(%struct._Py_hashtable_t* %6, i8* %ptr, i8* %5, i64 16) #1, !dbg !2058
  %tobool.i = icmp eq i32 %call.i.18, 0, !dbg !2058
  br i1 %tobool.i, label %tracemalloc_remove_trace.exit, label %if.then.i, !dbg !2059

if.then.i:                                        ; preds = %if.then.4
  %size.i = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace.i, i64 0, i32 0, !dbg !2060
  %7 = load i64, i64* %size.i, align 8, !dbg !2060, !tbaa !1690
  %8 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !2061, !tbaa !1362
  %sub.i = sub i64 %8, %7, !dbg !2061
  store i64 %sub.i, i64* @tracemalloc_traced_memory, align 8, !dbg !2061, !tbaa !1362
  br label %tracemalloc_remove_trace.exit, !dbg !2062

tracemalloc_remove_trace.exit:                    ; preds = %if.then.4, %if.then.i
  call void @llvm.lifetime.end(i64 16, i8* %5) #1, !dbg !2063
  %9 = load i8*, i8** @tables_lock, align 8, !dbg !2064, !tbaa !1068
  call void @PyThread_release_lock(i8* %9) #1, !dbg !2064
  br label %cleanup, !dbg !2065

if.end.6:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !491, metadata !1048) #1, !dbg !2066
  %10 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !2068, !tbaa !1075
  %call.i.19 = tail call i32 @PyThread_set_key_value(i32 %10, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*)) #1, !dbg !2069
  %call7 = tail call fastcc i8* @tracemalloc_realloc(i8* %ctx, i8* %ptr, i64 %new_size), !dbg !2070
  tail call void @llvm.dbg.value(metadata i8* %call7, i64 0, metadata !945, metadata !1048), !dbg !2047
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !491, metadata !1048) #1, !dbg !2071
  %11 = load i32, i32* @tracemalloc_reentrant_key, align 4, !dbg !2073, !tbaa !1075
  %call1.i = tail call i32 @PyThread_set_key_value(i32 %11, i8* null) #1, !dbg !2074
  br label %cleanup, !dbg !2075

cleanup:                                          ; preds = %if.then, %tracemalloc_remove_trace.exit, %if.end.6
  %retval.0 = phi i8* [ %call7, %if.end.6 ], [ %call2, %tracemalloc_remove_trace.exit ], [ %call2, %if.then ]
  ret i8* %retval.0, !dbg !2076
}

declare i32 @PyGILState_Ensure() #2

declare void @PyGILState_Release(i32) #2

declare i8* @PyThread_get_key_value(i32) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tracemalloc_add_trace(i8* %ptr, i64 %size) #0 {
entry:
  %trace = alloca %struct.trace_t, align 8
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !755, metadata !1048), !dbg !2077
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !756, metadata !1048), !dbg !2078
  %0 = bitcast %struct.trace_t* %trace to i8*, !dbg !2079
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !2079
  %1 = load %struct.traceback_t*, %struct.traceback_t** @tracemalloc_traceback, align 8, !dbg !2080, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct.traceback_t* %1, i64 0, metadata !764, metadata !1048) #1, !dbg !2082
  %nframe.i = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %1, i64 0, i32 1, !dbg !2083
  store i32 0, i32* %nframe.i, align 4, !dbg !2084, !tbaa !1131
  tail call void @llvm.dbg.value(metadata %struct.traceback_t* %1, i64 0, metadata !774, metadata !1048) #1, !dbg !2085
  %call.i.i = tail call %struct._ts* @PyGILState_GetThisThreadState() #1, !dbg !2087
  tail call void @llvm.dbg.value(metadata %struct._ts* %call.i.i, i64 0, metadata !775, metadata !1048) #1, !dbg !2088
  %cmp.i.i = icmp eq %struct._ts* %call.i.i, null, !dbg !2089
  br i1 %cmp.i.i, label %traceback_get_frames.exitthread-pre-split.i, label %if.end.i.i, !dbg !2091

if.end.i.i:                                       ; preds = %entry
  %frame.i.i = getelementptr inbounds %struct._ts, %struct._ts* %call.i.i, i64 0, i32 3, !dbg !2092
  %pyframe.0.16.i.i = load %struct._frame*, %struct._frame** %frame.i.i, align 8, !dbg !2092
  %cmp1.17.i.i = icmp eq %struct._frame* %pyframe.0.16.i.i, null, !dbg !2094
  br i1 %cmp1.17.i.i, label %traceback_get_frames.exitthread-pre-split.i, label %for.body.lr.ph.i.i, !dbg !2096

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %.pre.i.i = load i32, i32* %nframe.i, align 4, !dbg !2097, !tbaa !1131
  br label %for.body.i.i, !dbg !2096

for.cond.i.i:                                     ; preds = %tracemalloc_get_frame.exit.i.i
  %f_back.i.i = getelementptr inbounds %struct._frame, %struct._frame* %pyframe.018.i.i, i64 0, i32 1, !dbg !2099
  %pyframe.0.i.i = load %struct._frame*, %struct._frame** %f_back.i.i, align 8, !dbg !2092
  %cmp1.i.i = icmp eq %struct._frame* %pyframe.0.i.i, null, !dbg !2094
  br i1 %cmp1.i.i, label %traceback_get_frames.exitthread-pre-split.i.loopexit, label %for.body.i.i, !dbg !2096

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %2 = phi i32 [ %.pre.i.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i ], !dbg !2097
  %pyframe.018.i.i = phi %struct._frame* [ %pyframe.0.16.i.i, %for.body.lr.ph.i.i ], [ %pyframe.0.i.i, %for.cond.i.i ], !dbg !2100
  %idxprom.i.i = sext i32 %2 to i64, !dbg !2101
  %arrayidx.i.i = getelementptr %struct.traceback_t, %struct.traceback_t* %1, i64 0, i32 2, i64 %idxprom.i.i, !dbg !2101
  tail call void @llvm.dbg.value(metadata %struct.frame_t* %arrayidx.i.i, i64 0, metadata !896, metadata !1048) #1, !dbg !2102
  %3 = load i64, i64* bitcast (%struct._object** @unknown_filename to i64*), align 8, !dbg !2104, !tbaa !1068
  %filename2.i.i.i = getelementptr inbounds %struct.frame_t, %struct.frame_t* %arrayidx.i.i, i64 0, i32 0, !dbg !2105
  %4 = bitcast %struct.frame_t* %arrayidx.i.i to i64*, !dbg !2106
  store i64 %3, i64* %4, align 1, !dbg !2106, !tbaa !1136
  %call.i.i.i = tail call i32 @PyFrame_GetLineNumber(%struct._frame* %pyframe.018.i.i) #1, !dbg !2107
  %lineno.i.i.i = getelementptr %struct.traceback_t, %struct.traceback_t* %1, i64 0, i32 2, i64 %idxprom.i.i, i32 1, !dbg !2108
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0, !dbg !2109
  %.call.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %call.i.i.i, !dbg !2111
  store i32 %.call.i.i.i, i32* %lineno.i.i.i, align 1, !dbg !2112, !tbaa !1139
  %f_code.i.i.i = getelementptr inbounds %struct._frame, %struct._frame* %pyframe.018.i.i, i64 0, i32 2, !dbg !2113
  %5 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code.i.i.i, align 8, !dbg !2113, !tbaa !2114
  tail call void @llvm.dbg.value(metadata %struct.PyCodeObject* %5, i64 0, metadata !897, metadata !1048) #1, !dbg !2116
  %cmp5.i.i.i = icmp eq %struct.PyCodeObject* %5, null, !dbg !2117
  br i1 %cmp5.i.i.i, label %tracemalloc_get_frame.exit.i.i, label %if.end.7.i.i.i, !dbg !2119

if.end.7.i.i.i:                                   ; preds = %for.body.i.i
  %co_filename.i.i.i = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %5, i64 0, i32 13, !dbg !2120
  %6 = load %struct._object*, %struct._object** %co_filename.i.i.i, align 8, !dbg !2120, !tbaa !2122
  %cmp8.i.i.i = icmp eq %struct._object* %6, null, !dbg !2124
  br i1 %cmp8.i.i.i, label %tracemalloc_get_frame.exit.i.i, label %if.end.14.i.i.i, !dbg !2125

if.end.14.i.i.i:                                  ; preds = %if.end.7.i.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !898, metadata !1048) #1, !dbg !2126
  %ob_type.i.i.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !2127
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i.i, align 8, !dbg !2127, !tbaa !1222
  %tp_flags.i.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 19, !dbg !2127
  %8 = load i64, i64* %tp_flags.i.i.i, align 8, !dbg !2127, !tbaa !1537
  %and.i.i.i = and i64 %8, 268435456, !dbg !2127
  %cmp15.i.i.i = icmp eq i64 %and.i.i.i, 0, !dbg !2127
  br i1 %cmp15.i.i.i, label %tracemalloc_get_frame.exit.i.i, label %if.end.17.i.i.i, !dbg !2129

if.end.17.i.i.i:                                  ; preds = %if.end.14.i.i.i
  %state.i.i.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 2, !dbg !2130
  %9 = bitcast %struct._object* %state.i.i.i to i32*, !dbg !2130
  %bf.load.i.i.i = load i32, i32* %9, align 4, !dbg !2130
  %bf.clear.i.i.i = and i32 %bf.load.i.i.i, 128, !dbg !2130
  %tobool.i.i.i = icmp eq i32 %bf.clear.i.i.i, 0, !dbg !2130
  br i1 %tobool.i.i.i, label %tracemalloc_get_frame.exit.i.i, label %if.end.19.i.i.i, !dbg !2132

if.end.19.i.i.i:                                  ; preds = %if.end.17.i.i.i
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !2133, !tbaa !1068
  %11 = bitcast %struct._object* %6 to i8*, !dbg !2134
  %call20.i.i.i = tail call %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %10, i8* %11) #1, !dbg !2135
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %call20.i.i.i, i64 0, metadata !899, metadata !1048) #1, !dbg !2136
  %cmp21.i.i.i = icmp eq %struct._Py_hashtable_entry_t* %call20.i.i.i, null, !dbg !2137
  br i1 %cmp21.i.i.i, label %if.else.i.i.i, label %if.then.22.i.i.i, !dbg !2138

if.then.22.i.i.i:                                 ; preds = %if.end.19.i.i.i
  %key.i.i.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %call20.i.i.i, i64 0, i32 1, !dbg !2139
  %12 = bitcast i8** %key.i.i.i to %struct._object**, !dbg !2139
  %13 = load %struct._object*, %struct._object** %12, align 8, !dbg !2139, !tbaa !1657
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !898, metadata !1048) #1, !dbg !2126
  br label %if.end.33.i.i.i, !dbg !2141

if.else.i.i.i:                                    ; preds = %if.end.19.i.i.i
  %ob_refcnt.i.i.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !2142
  %14 = load i64, i64* %ob_refcnt.i.i.i, align 8, !dbg !2142, !tbaa !1217
  %inc.i.i.i = add i64 %14, 1, !dbg !2142
  store i64 %inc.i.i.i, i64* %ob_refcnt.i.i.i, align 8, !dbg !2142, !tbaa !1217
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8, !dbg !2143, !tbaa !1068
  %call23.i.i.i = tail call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %15, i8* %11, i8* null, i64 0) #1, !dbg !2144
  %cmp24.i.i.i = icmp slt i32 %call23.i.i.i, 0, !dbg !2145
  br i1 %cmp24.i.i.i, label %do.body.i.i.i, label %if.end.33.i.i.i, !dbg !2146

do.body.i.i.i:                                    ; preds = %if.else.i.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !900, metadata !1048) #1, !dbg !2147
  %16 = load i64, i64* %ob_refcnt.i.i.i, align 8, !dbg !2149, !tbaa !1217
  %dec.i.i.i = add i64 %16, -1, !dbg !2149
  store i64 %dec.i.i.i, i64* %ob_refcnt.i.i.i, align 8, !dbg !2149, !tbaa !1217
  %cmp27.i.i.i = icmp eq i64 %dec.i.i.i, 0, !dbg !2149
  br i1 %cmp27.i.i.i, label %if.else.29.i.i.i, label %tracemalloc_get_frame.exit.i.i, !dbg !2151

if.else.29.i.i.i:                                 ; preds = %do.body.i.i.i
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i.i, align 8, !dbg !2152, !tbaa !1222
  %tp_dealloc.i.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2152
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i.i, align 8, !dbg !2152, !tbaa !1223
  tail call void %18(%struct._object* %6) #1, !dbg !2152
  br label %tracemalloc_get_frame.exit.i.i, !dbg !2154

if.end.33.i.i.i:                                  ; preds = %if.else.i.i.i, %if.then.22.i.i.i
  %filename.0.i.i.i = phi %struct._object* [ %13, %if.then.22.i.i.i ], [ %6, %if.else.i.i.i ], !dbg !2154
  store %struct._object* %filename.0.i.i.i, %struct._object** %filename2.i.i.i, align 1, !dbg !2155, !tbaa !1136
  br label %tracemalloc_get_frame.exit.i.i, !dbg !2156

tracemalloc_get_frame.exit.i.i:                   ; preds = %if.end.33.i.i.i, %if.else.29.i.i.i, %do.body.i.i.i, %if.end.17.i.i.i, %if.end.14.i.i.i, %if.end.7.i.i.i, %for.body.i.i
  %19 = load i32, i32* %nframe.i, align 4, !dbg !2157, !tbaa !1131
  %inc.i.i = add i32 %19, 1, !dbg !2157
  store i32 %inc.i.i, i32* %nframe.i, align 4, !dbg !2157, !tbaa !1131
  %20 = load i32, i32* @tracemalloc_config.2, align 4, !dbg !2158, !tbaa !1291
  %cmp4.i.i = icmp eq i32 %inc.i.i, %20, !dbg !2160
  br i1 %cmp4.i.i, label %traceback_get_frames.exit.i.loopexit, label %for.cond.i.i, !dbg !2161

traceback_get_frames.exitthread-pre-split.i.loopexit: ; preds = %for.cond.i.i
  br label %traceback_get_frames.exitthread-pre-split.i, !dbg !2162

traceback_get_frames.exitthread-pre-split.i:      ; preds = %traceback_get_frames.exitthread-pre-split.i.loopexit, %if.end.i.i, %entry
  %.pr.i = load i32, i32* %nframe.i, align 4, !dbg !2162, !tbaa !1131
  br label %traceback_get_frames.exit.i, !dbg !2162

traceback_get_frames.exit.i.loopexit:             ; preds = %tracemalloc_get_frame.exit.i.i
  %inc.i.i.lcssa = phi i32 [ %inc.i.i, %tracemalloc_get_frame.exit.i.i ]
  br label %traceback_get_frames.exit.i, !dbg !2164

traceback_get_frames.exit.i:                      ; preds = %traceback_get_frames.exit.i.loopexit, %traceback_get_frames.exitthread-pre-split.i
  %21 = phi i32 [ %.pr.i, %traceback_get_frames.exitthread-pre-split.i ], [ %inc.i.i.lcssa, %traceback_get_frames.exit.i.loopexit ], !dbg !2162
  %cmp.i = icmp eq i32 %21, 0, !dbg !2164
  br i1 %cmp.i, label %if.end, label %if.end.i, !dbg !2165

if.end.i:                                         ; preds = %traceback_get_frames.exit.i
  tail call void @llvm.dbg.value(metadata %struct.traceback_t* %1, i64 0, metadata !709, metadata !1048) #1, !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !712, metadata !1048) #1, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 1000003, i64 0, metadata !713, metadata !1048) #1, !dbg !2169
  tail call void @llvm.dbg.value(metadata i64 3430008, i64 0, metadata !710, metadata !1048) #1, !dbg !2170
  %dec.21.i.i = add i32 %21, -1, !dbg !2171
  tail call void @llvm.dbg.value(metadata i32 %dec.21.i.i, i64 0, metadata !712, metadata !1048) #1, !dbg !2168
  %cmp.22.i.i = icmp sgt i32 %dec.21.i.i, -1, !dbg !2174
  br i1 %cmp.22.i.i, label %while.body.lr.ph.i.i, label %traceback_hash.exit.i, !dbg !2175

while.body.lr.ph.i.i:                             ; preds = %if.end.i
  %arraydecay.i.i = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %1, i64 0, i32 2, i64 0, !dbg !2176
  %22 = sext i32 %dec.21.i.i to i64, !dbg !2175
  br label %while.body.i.i, !dbg !2175

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %22, %while.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %while.body.i.i ], !dbg !2177
  %frame.025.i.i = phi %struct.frame_t* [ %arraydecay.i.i, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %while.body.i.i ], !dbg !2177
  %mult.024.i.i = phi i64 [ 1000003, %while.body.lr.ph.i.i ], [ %add5.i.i, %while.body.i.i ], !dbg !2177
  %x.023.i.i = phi i64 [ 3430008, %while.body.lr.ph.i.i ], [ %mul.i.i, %while.body.i.i ], !dbg !2177
  %filename.i.i = getelementptr inbounds %struct.frame_t, %struct.frame_t* %frame.025.i.i, i64 0, i32 0, !dbg !2178
  %23 = load %struct._object*, %struct._object** %filename.i.i, align 1, !dbg !2178, !tbaa !1136
  %call.i.39.i = tail call i64 @PyObject_Hash(%struct._object* %23) #1, !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %call.i.39.i, i64 0, metadata !711, metadata !1048) #1, !dbg !2180
  %lineno.i.i = getelementptr inbounds %struct.frame_t, %struct.frame_t* %frame.025.i.i, i64 0, i32 1, !dbg !2181
  %24 = load i32, i32* %lineno.i.i, align 1, !dbg !2181, !tbaa !1139
  %conv.i.i = sext i32 %24 to i64, !dbg !2182
  %incdec.ptr.i.i = getelementptr %struct.frame_t, %struct.frame_t* %frame.025.i.i, i64 1, !dbg !2183
  tail call void @llvm.dbg.value(metadata %struct.frame_t* %incdec.ptr.i.i, i64 0, metadata !714, metadata !1048) #1, !dbg !2184
  %xor.i.i = xor i64 %call.i.39.i, %x.023.i.i, !dbg !2185
  %xor1.i.i = xor i64 %xor.i.i, %conv.i.i, !dbg !2186
  %mul.i.i = mul i64 %xor1.i.i, %mult.024.i.i, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %mul.i.i, i64 0, metadata !710, metadata !1048) #1, !dbg !2170
  %factor.i.i = shl i64 %indvars.iv.i.i, 1, !dbg !2177
  %add4.i.i = add i64 %factor.i.i, 82520, !dbg !2188
  %add5.i.i = add i64 %add4.i.i, %mult.024.i.i, !dbg !2189
  tail call void @llvm.dbg.value(metadata i64 %add5.i.i, i64 0, metadata !713, metadata !1048) #1, !dbg !2169
  %25 = trunc i64 %indvars.iv.i.i to i32, !dbg !2171
  %dec.i.i = add i32 %25, -1, !dbg !2171
  tail call void @llvm.dbg.value(metadata i32 %dec.i.i, i64 0, metadata !712, metadata !1048) #1, !dbg !2168
  %cmp.i.40.i = icmp sgt i32 %dec.i.i, -1, !dbg !2174
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1, !dbg !2175
  br i1 %cmp.i.40.i, label %while.body.i.i, label %while.cond.while.end_crit_edge.i.i, !dbg !2175

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  %mul.i.i.lcssa = phi i64 [ %mul.i.i, %while.body.i.i ]
  %phitmp.i.i = add i64 %mul.i.i.lcssa, 97531, !dbg !2175
  br label %traceback_hash.exit.i, !dbg !2175

traceback_hash.exit.i:                            ; preds = %while.cond.while.end_crit_edge.i.i, %if.end.i
  %x.0.lcssa.i.i = phi i64 [ %phitmp.i.i, %while.cond.while.end_crit_edge.i.i ], [ 3527539, %if.end.i ], !dbg !2177
  tail call void @llvm.dbg.value(metadata i64 %x.0.lcssa.i.i, i64 0, metadata !710, metadata !1048) #1, !dbg !2170
  %hash.i = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %1, i64 0, i32 0, !dbg !2190
  store i64 %x.0.lcssa.i.i, i64* %hash.i, align 8, !dbg !2191, !tbaa !1156
  %26 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !2192, !tbaa !1068
  %27 = bitcast %struct.traceback_t* %1 to i8*, !dbg !2193
  %call3.i = tail call %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %26, i8* %27) #1, !dbg !2194
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %call3.i, i64 0, metadata !765, metadata !1048) #1, !dbg !2195
  %cmp4.i = icmp eq %struct._Py_hashtable_entry_t* %call3.i, null, !dbg !2196
  br i1 %cmp4.i, label %if.else.i, label %if.then.5.i, !dbg !2197

if.then.5.i:                                      ; preds = %traceback_hash.exit.i
  %key.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %call3.i, i64 0, i32 1, !dbg !2198
  %28 = bitcast i8** %key.i to %struct.traceback_t**, !dbg !2198
  %29 = load %struct.traceback_t*, %struct.traceback_t** %28, align 8, !dbg !2198, !tbaa !1657
  tail call void @llvm.dbg.value(metadata %struct.traceback_t* %29, i64 0, metadata !764, metadata !1048) #1, !dbg !2082
  br label %traceback_new.exit, !dbg !2200

if.else.i:                                        ; preds = %traceback_hash.exit.i
  %30 = load i32, i32* %nframe.i, align 4, !dbg !2201, !tbaa !1131
  %sub.i = add i32 %30, -1, !dbg !2201
  %conv.i = sext i32 %sub.i to i64, !dbg !2201
  %mul.i = mul nsw i64 %conv.i, 12, !dbg !2201
  %add.i = add i64 %mul.i, 24, !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !769, metadata !1048) #1, !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !731, metadata !1048) #1, !dbg !2203
  %31 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 1), align 8, !dbg !2205, !tbaa !1297
  %32 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 0), align 8, !dbg !2206, !tbaa !1301
  %call.i.41.i = tail call i8* %31(i8* %32, i64 %add.i) #1, !dbg !2207
  %cmp8.i = icmp eq i8* %call.i.41.i, null, !dbg !2208
  br i1 %cmp8.i, label %cleanup, label %if.end.11.i, !dbg !2210

if.end.11.i:                                      ; preds = %if.else.i
  %33 = bitcast i8* %call.i.41.i to %struct.traceback_t*, !dbg !2211
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i.41.i, i8* %27, i64 %add.i, i32 8, i1 false) #1, !dbg !2212
  %34 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8, !dbg !2213, !tbaa !1068
  %call12.i = tail call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %34, i8* %call.i.41.i, i8* null, i64 0) #1, !dbg !2215
  %cmp13.i = icmp slt i32 %call12.i, 0, !dbg !2216
  br i1 %cmp13.i, label %if.then.15.i, label %traceback_new.exit, !dbg !2217

if.then.15.i:                                     ; preds = %if.end.11.i
  tail call void @llvm.dbg.value(metadata i8* %call.i.41.i, i64 0, metadata !503, metadata !1048) #1, !dbg !2218
  %35 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 3), align 8, !dbg !2221, !tbaa !1377
  %36 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i64 0, i32 1, i32 0), align 8, !dbg !2222, !tbaa !1301
  tail call void %35(i8* %36, i8* %call.i.41.i) #1, !dbg !2223
  br label %cleanup, !dbg !2224

traceback_new.exit:                               ; preds = %if.then.5.i, %if.end.11.i
  %retval.1.i = phi %struct.traceback_t* [ %29, %if.then.5.i ], [ %33, %if.end.11.i ], !dbg !2225
  tail call void @llvm.dbg.value(metadata %struct.traceback_t* %retval.1.i, i64 0, metadata !757, metadata !1048), !dbg !2226
  %cmp = icmp eq %struct.traceback_t* %retval.1.i, null, !dbg !2227
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2229

if.end:                                           ; preds = %traceback_get_frames.exit.i, %traceback_new.exit
  %retval.1.i20 = phi %struct.traceback_t* [ %retval.1.i, %traceback_new.exit ], [ @tracemalloc_empty_traceback, %traceback_get_frames.exit.i ]
  %size1 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i64 0, i32 0, !dbg !2230
  store i64 %size, i64* %size1, align 8, !dbg !2231, !tbaa !1690
  %traceback2 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i64 0, i32 1, !dbg !2232
  store %struct.traceback_t* %retval.1.i20, %struct.traceback_t** %traceback2, align 8, !dbg !2233, !tbaa !1551
  %37 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !2234, !tbaa !1068
  %call3 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %37, i8* %ptr, i8* %0, i64 16) #1, !dbg !2234
  call void @llvm.dbg.value(metadata i32 %call3, i64 0, metadata !759, metadata !1048), !dbg !2235
  %cmp4 = icmp eq i32 %call3, 0, !dbg !2236
  br i1 %cmp4, label %if.then.5, label %cleanup, !dbg !2238

if.then.5:                                        ; preds = %if.end
  %38 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !2239, !tbaa !1362
  %add = add i64 %38, %size, !dbg !2239
  store i64 %add, i64* @tracemalloc_traced_memory, align 8, !dbg !2239, !tbaa !1362
  %39 = load i64, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !2241, !tbaa !1362
  %cmp6 = icmp ugt i64 %add, %39, !dbg !2243
  br i1 %cmp6, label %if.then.7, label %cleanup, !dbg !2244

if.then.7:                                        ; preds = %if.then.5
  store i64 %add, i64* @tracemalloc_peak_traced_memory, align 8, !dbg !2245, !tbaa !1362
  br label %cleanup, !dbg !2246

cleanup:                                          ; preds = %if.else.i, %if.then.15.i, %if.end, %if.then.7, %if.then.5, %traceback_new.exit
  %retval.0 = phi i32 [ -1, %traceback_new.exit ], [ 0, %if.then.5 ], [ 0, %if.then.7 ], [ %call3, %if.end ], [ -1, %if.then.15.i ], [ -1, %if.else.i ]
  call void @llvm.lifetime.end(i64 16, i8* %0) #1, !dbg !2247
  ret i32 %retval.0, !dbg !2247
}

declare %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct._ts* @PyGILState_GetThisThreadState() #2

declare i32 @PyFrame_GetLineNumber(%struct._frame*) #2

; Function Attrs: nounwind uwtable
define internal fastcc i8* @tracemalloc_realloc(i8* nocapture readonly %ctx, i8* %ptr, i64 %new_size) #0 {
entry:
  %trace.i = alloca %struct.trace_t, align 8
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !922, metadata !1048), !dbg !2248
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !923, metadata !1048), !dbg !2249
  tail call void @llvm.dbg.value(metadata i64 %new_size, i64 0, metadata !924, metadata !1048), !dbg !2250
  %realloc = getelementptr inbounds i8, i8* %ctx, i64 16, !dbg !2251
  %0 = bitcast i8* %realloc to i8* (i8*, i8*, i64)**, !dbg !2251
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %0, align 8, !dbg !2251, !tbaa !1315
  %ctx1 = bitcast i8* %ctx to i8**, !dbg !2252
  %2 = load i8*, i8** %ctx1, align 8, !dbg !2252, !tbaa !1321
  %call = tail call i8* %1(i8* %2, i8* %ptr, i64 %new_size) #1, !dbg !2253
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !926, metadata !1048), !dbg !2254
  %cmp = icmp eq i8* %call, null, !dbg !2255
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2257

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i8* %ptr, null, !dbg !2258
  %3 = load i8*, i8** @tables_lock, align 8, !dbg !2260, !tbaa !1068
  %call4 = tail call i32 @PyThread_acquire_lock(i8* %3, i32 1) #1, !dbg !2260
  br i1 %cmp2, label %if.else, label %if.then.3, !dbg !2262

if.then.3:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !918, metadata !1048) #1, !dbg !2263
  %4 = bitcast %struct.trace_t* %trace.i to i8*, !dbg !2265
  call void @llvm.lifetime.start(i64 16, i8* %4) #1, !dbg !2265
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8, !dbg !2266, !tbaa !1068
  %call.i = call i32 @_Py_hashtable_pop(%struct._Py_hashtable_t* %5, i8* %ptr, i8* %4, i64 16) #1, !dbg !2267
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !2267
  br i1 %tobool.i, label %tracemalloc_remove_trace.exit, label %if.then.i, !dbg !2268

if.then.i:                                        ; preds = %if.then.3
  %size.i = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace.i, i64 0, i32 0, !dbg !2269
  %6 = load i64, i64* %size.i, align 8, !dbg !2269, !tbaa !1690
  %7 = load i64, i64* @tracemalloc_traced_memory, align 8, !dbg !2270, !tbaa !1362
  %sub.i = sub i64 %7, %6, !dbg !2270
  store i64 %sub.i, i64* @tracemalloc_traced_memory, align 8, !dbg !2270, !tbaa !1362
  br label %tracemalloc_remove_trace.exit, !dbg !2271

tracemalloc_remove_trace.exit:                    ; preds = %if.then.3, %if.then.i
  call void @llvm.lifetime.end(i64 16, i8* %4) #1, !dbg !2272
  %call5 = call fastcc i32 @tracemalloc_add_trace(i8* %call, i64 %new_size), !dbg !2273
  %8 = load i8*, i8** @tables_lock, align 8, !dbg !2275, !tbaa !1068
  call void @PyThread_release_lock(i8* %8) #1, !dbg !2275
  br label %cleanup, !dbg !2276

if.else:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @tracemalloc_add_trace(i8* %call, i64 %new_size), !dbg !2277
  %cmp11 = icmp slt i32 %call10, 0, !dbg !2280
  %9 = load i8*, i8** @tables_lock, align 8, !dbg !2281, !tbaa !1068
  tail call void @PyThread_release_lock(i8* %9) #1, !dbg !2281
  br i1 %cmp11, label %if.then.12, label %cleanup, !dbg !2283

if.then.12:                                       ; preds = %if.else
  %free = getelementptr inbounds i8, i8* %ctx, i64 24, !dbg !2284
  %10 = bitcast i8* %free to void (i8*, i8*)**, !dbg !2284
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8, !dbg !2284, !tbaa !1318
  %12 = load i8*, i8** %ctx1, align 8, !dbg !2285, !tbaa !1321
  tail call void %11(i8* %12, i8* %call) #1, !dbg !2286
  br label %cleanup, !dbg !2287

cleanup:                                          ; preds = %tracemalloc_remove_trace.exit, %if.else, %entry, %if.then.12
  %retval.0 = phi i8* [ null, %if.then.12 ], [ null, %entry ], [ %call, %if.else ], [ %call, %tracemalloc_remove_trace.exit ]
  ret i8* %retval.0, !dbg !2288
}

declare i32 @_Py_hashtable_pop(%struct._Py_hashtable_t*, i8*, i8*, i64) #2

declare void @PyThread_free_lock(i8*) #2

declare void @PyThread_delete_key(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #8

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1044, !1045}
!llvm.ident = !{!1046}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !25, subprograms: !453, globals: !956)
!1 = !DIFile(filename: "./Modules/_tracemalloc.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !14, !20}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !4, file: !1, line: 32, size: 32, align: 32, elements: !10)
!4 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 29, size: 96, align: 32, elements: !5)
!5 = !{!6, !7, !9}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4, file: !1, line: 36, baseType: !3, size: 32, align: 32)
!7 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !4, file: !1, line: 40, baseType: !8, size: 32, align: 32, offset: 32)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "max_nframe", scope: !4, file: !1, line: 44, baseType: !8, size: 32, align: 32, offset: 64)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "TRACEMALLOC_NOT_INITIALIZED", value: 0)
!12 = !DIEnumerator(name: "TRACEMALLOC_INITIALIZED", value: 1)
!13 = !DIEnumerator(name: "TRACEMALLOC_FINALIZED", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 117, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "Include/pymem.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "PYMEM_DOMAIN_RAW", value: 0)
!18 = !DIEnumerator(name: "PYMEM_DOMAIN_MEM", value: 1)
!19 = !DIEnumerator(name: "PYMEM_DOMAIN_OBJ", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 190, size: 32, align: 32, elements: !22)
!21 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "PyGILState_LOCKED", value: 0)
!24 = !DIEnumerator(name: "PyGILState_UNLOCKED", value: 1)
!25 = !{!26, !8, !27, !364, !378, !73, !384, !392, !393, !400, !369, !417, !434}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !29, line: 109, baseType: !30)
!29 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !29, line: 105, size: 128, align: 64, elements: !31)
!31 = !{!32, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !30, file: !29, line: 107, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !34, line: 177, baseType: !35)
!34 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !36, line: 102, baseType: !37)
!36 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !38, line: 181, baseType: !39)
!38 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!39 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !30, file: !29, line: 108, baseType: !41, size: 64, align: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !29, line: 334, size: 3200, align: 64, elements: !43)
!43 = !{!44, !50, !54, !55, !56, !61, !123, !128, !133, !134, !139, !191, !222, !234, !240, !241, !242, !244, !246, !277, !278, !279, !288, !289, !294, !295, !297, !299, !309, !312, !330, !331, !332, !334, !336, !337, !339, !344, !349, !354, !355, !356, !357, !358, !359, !360, !361, !363}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !42, file: !29, line: 335, baseType: !45, size: 192, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !29, line: 114, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 111, size: 192, align: 64, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !46, file: !29, line: 112, baseType: !28, size: 128, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !46, file: !29, line: 113, baseType: !33, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !42, file: !29, line: 336, baseType: !51, size: 64, align: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !42, file: !29, line: 337, baseType: !33, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !42, file: !29, line: 337, baseType: !33, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !42, file: !29, line: 341, baseType: !57, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !29, line: 308, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !27}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !42, file: !29, line: 342, baseType: !62, size: 64, align: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !29, line: 314, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!8, !27, !66, !8}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !36, line: 48, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !69, line: 246, size: 1728, align: 64, elements: !70)
!69 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!70 = !{!71, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !92, !93, !94, !95, !97, !99, !101, !105, !108, !110, !111, !112, !113, !114, !118, !119}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !68, file: !69, line: 247, baseType: !8, size: 32, align: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !68, file: !69, line: 252, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !68, file: !69, line: 253, baseType: !73, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !68, file: !69, line: 254, baseType: !73, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !68, file: !69, line: 255, baseType: !73, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !68, file: !69, line: 256, baseType: !73, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !68, file: !69, line: 257, baseType: !73, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !68, file: !69, line: 258, baseType: !73, size: 64, align: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !68, file: !69, line: 259, baseType: !73, size: 64, align: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !68, file: !69, line: 261, baseType: !73, size: 64, align: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !68, file: !69, line: 262, baseType: !73, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !68, file: !69, line: 263, baseType: !73, size: 64, align: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !68, file: !69, line: 265, baseType: !85, size: 64, align: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !69, line: 161, size: 192, align: 64, elements: !87)
!87 = !{!88, !89, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !86, file: !69, line: 162, baseType: !85, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !86, file: !69, line: 163, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !86, file: !69, line: 167, baseType: !8, size: 32, align: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !68, file: !69, line: 267, baseType: !90, size: 64, align: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !68, file: !69, line: 269, baseType: !8, size: 32, align: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !68, file: !69, line: 273, baseType: !8, size: 32, align: 32, offset: 928)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !68, file: !69, line: 275, baseType: !96, size: 64, align: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !38, line: 140, baseType: !39)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !68, file: !69, line: 279, baseType: !98, size: 16, align: 16, offset: 1024)
!98 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !68, file: !69, line: 280, baseType: !100, size: 8, align: 8, offset: 1040)
!100 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !68, file: !69, line: 281, baseType: !102, size: 8, align: 8, offset: 1048)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8, align: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !68, file: !69, line: 285, baseType: !106, size: 64, align: 64, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !69, line: 155, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !68, file: !69, line: 294, baseType: !109, size: 64, align: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !38, line: 141, baseType: !39)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !68, file: !69, line: 303, baseType: !26, size: 64, align: 64, offset: 1216)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !68, file: !69, line: 304, baseType: !26, size: 64, align: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !68, file: !69, line: 305, baseType: !26, size: 64, align: 64, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !68, file: !69, line: 306, baseType: !26, size: 64, align: 64, offset: 1408)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !68, file: !69, line: 307, baseType: !115, size: 64, align: 64, offset: 1472)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 62, baseType: !117)
!116 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!117 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !68, file: !69, line: 309, baseType: !8, size: 32, align: 32, offset: 1536)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !68, file: !69, line: 311, baseType: !120, size: 160, align: 8, offset: 1568)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, align: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 20)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !42, file: !29, line: 343, baseType: !124, size: 64, align: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !29, line: 316, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!27, !27, !73}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !42, file: !29, line: 344, baseType: !129, size: 64, align: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !29, line: 318, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!8, !27, !73, !27}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !42, file: !29, line: 345, baseType: !26, size: 64, align: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !42, file: !29, line: 346, baseType: !135, size: 64, align: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !29, line: 320, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!27, !27}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !42, file: !29, line: 350, baseType: !140, size: 64, align: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !29, line: 278, baseType: !142)
!142 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 236, size: 2176, align: 64, elements: !143)
!143 = !{!144, !149, !150, !151, !152, !153, !158, !160, !161, !162, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !142, file: !29, line: 241, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !29, line: 166, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!27, !27, !27}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !142, file: !29, line: 242, baseType: !145, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !142, file: !29, line: 243, baseType: !145, size: 64, align: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !142, file: !29, line: 244, baseType: !145, size: 64, align: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !142, file: !29, line: 245, baseType: !145, size: 64, align: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !142, file: !29, line: 246, baseType: !154, size: 64, align: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !29, line: 167, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!27, !27, !27, !27}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !142, file: !29, line: 247, baseType: !159, size: 64, align: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !29, line: 165, baseType: !136)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !142, file: !29, line: 248, baseType: !159, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !142, file: !29, line: 249, baseType: !159, size: 64, align: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !142, file: !29, line: 250, baseType: !163, size: 64, align: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !29, line: 168, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!8, !27}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !142, file: !29, line: 251, baseType: !159, size: 64, align: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !142, file: !29, line: 252, baseType: !145, size: 64, align: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !142, file: !29, line: 253, baseType: !145, size: 64, align: 64, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !142, file: !29, line: 254, baseType: !145, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !142, file: !29, line: 255, baseType: !145, size: 64, align: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !142, file: !29, line: 256, baseType: !145, size: 64, align: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !142, file: !29, line: 257, baseType: !159, size: 64, align: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !142, file: !29, line: 258, baseType: !26, size: 64, align: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !142, file: !29, line: 259, baseType: !159, size: 64, align: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !142, file: !29, line: 261, baseType: !145, size: 64, align: 64, offset: 1216)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !142, file: !29, line: 262, baseType: !145, size: 64, align: 64, offset: 1280)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !142, file: !29, line: 263, baseType: !145, size: 64, align: 64, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !142, file: !29, line: 264, baseType: !145, size: 64, align: 64, offset: 1408)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !142, file: !29, line: 265, baseType: !154, size: 64, align: 64, offset: 1472)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !142, file: !29, line: 266, baseType: !145, size: 64, align: 64, offset: 1536)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !142, file: !29, line: 267, baseType: !145, size: 64, align: 64, offset: 1600)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !142, file: !29, line: 268, baseType: !145, size: 64, align: 64, offset: 1664)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !142, file: !29, line: 269, baseType: !145, size: 64, align: 64, offset: 1728)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !142, file: !29, line: 270, baseType: !145, size: 64, align: 64, offset: 1792)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !142, file: !29, line: 272, baseType: !145, size: 64, align: 64, offset: 1856)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !142, file: !29, line: 273, baseType: !145, size: 64, align: 64, offset: 1920)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !142, file: !29, line: 274, baseType: !145, size: 64, align: 64, offset: 1984)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !142, file: !29, line: 275, baseType: !145, size: 64, align: 64, offset: 2048)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !142, file: !29, line: 277, baseType: !159, size: 64, align: 64, offset: 2112)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !42, file: !29, line: 351, baseType: !192, size: 64, align: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !29, line: 292, baseType: !194)
!194 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 280, size: 640, align: 64, elements: !195)
!195 = !{!196, !201, !202, !207, !208, !209, !214, !215, !220, !221}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !194, file: !29, line: 281, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !29, line: 169, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!33, !27}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !194, file: !29, line: 282, baseType: !145, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !194, file: !29, line: 283, baseType: !203, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !29, line: 170, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!27, !27, !33}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !194, file: !29, line: 284, baseType: !203, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !194, file: !29, line: 285, baseType: !26, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !194, file: !29, line: 286, baseType: !210, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !29, line: 172, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!8, !27, !33, !27}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !194, file: !29, line: 287, baseType: !26, size: 64, align: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !194, file: !29, line: 288, baseType: !216, size: 64, align: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !29, line: 231, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!8, !27, !27}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !194, file: !29, line: 290, baseType: !145, size: 64, align: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !194, file: !29, line: 291, baseType: !203, size: 64, align: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !42, file: !29, line: 352, baseType: !223, size: 64, align: 64, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !29, line: 298, baseType: !225)
!225 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 294, size: 192, align: 64, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !225, file: !29, line: 295, baseType: !197, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !225, file: !29, line: 296, baseType: !145, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !225, file: !29, line: 297, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !29, line: 174, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!8, !27, !27, !27}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !42, file: !29, line: 356, baseType: !235, size: 64, align: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !29, line: 321, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !27}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !34, line: 186, baseType: !33)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !42, file: !29, line: 357, baseType: !154, size: 64, align: 64, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !42, file: !29, line: 358, baseType: !135, size: 64, align: 64, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !42, file: !29, line: 359, baseType: !243, size: 64, align: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !29, line: 317, baseType: !146)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !42, file: !29, line: 360, baseType: !245, size: 64, align: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !29, line: 319, baseType: !231)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !42, file: !29, line: 363, baseType: !247, size: 64, align: 64, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !29, line: 304, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 301, size: 128, align: 64, elements: !250)
!250 = !{!251, !272}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !249, file: !29, line: 302, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !29, line: 193, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!8, !27, !256, !8}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !29, line: 191, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !29, line: 178, size: 640, align: 64, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !269, !270, !271}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !258, file: !29, line: 179, baseType: !26, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !258, file: !29, line: 180, baseType: !27, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !258, file: !29, line: 181, baseType: !33, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !258, file: !29, line: 182, baseType: !33, size: 64, align: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !258, file: !29, line: 184, baseType: !8, size: 32, align: 32, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !258, file: !29, line: 185, baseType: !8, size: 32, align: 32, offset: 288)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !258, file: !29, line: 186, baseType: !73, size: 64, align: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !258, file: !29, line: 187, baseType: !268, size: 64, align: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !258, file: !29, line: 188, baseType: !268, size: 64, align: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !258, file: !29, line: 189, baseType: !268, size: 64, align: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !258, file: !29, line: 190, baseType: !26, size: 64, align: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !249, file: !29, line: 303, baseType: !273, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !29, line: 194, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !27, !256}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !42, file: !29, line: 366, baseType: !117, size: 64, align: 64, offset: 1344)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !42, file: !29, line: 368, baseType: !51, size: 64, align: 64, offset: 1408)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !42, file: !29, line: 372, baseType: !280, size: 64, align: 64, offset: 1472)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !29, line: 233, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!8, !27, !284, !26}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !29, line: 232, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!8, !27, !26}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !42, file: !29, line: 375, baseType: !163, size: 64, align: 64, offset: 1536)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !42, file: !29, line: 379, baseType: !290, size: 64, align: 64, offset: 1600)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !29, line: 322, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!27, !27, !27, !8}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !42, file: !29, line: 382, baseType: !33, size: 64, align: 64, offset: 1664)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !42, file: !29, line: 385, baseType: !296, size: 64, align: 64, offset: 1728)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !29, line: 323, baseType: !136)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !42, file: !29, line: 386, baseType: !298, size: 64, align: 64, offset: 1792)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !29, line: 324, baseType: !136)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !42, file: !29, line: 389, baseType: !300, size: 64, align: 64, offset: 1856)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !302, line: 40, size: 256, align: 64, elements: !303)
!302 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!303 = !{!304, !305, !307, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !301, file: !302, line: 41, baseType: !51, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !301, file: !302, line: 42, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !302, line: 18, baseType: !146)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !301, file: !302, line: 43, baseType: !8, size: 32, align: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !301, file: !302, line: 45, baseType: !51, size: 64, align: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !42, file: !29, line: 390, baseType: !310, size: 64, align: 64, offset: 1920)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !29, line: 390, flags: DIFlagFwdDecl)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !42, file: !29, line: 391, baseType: !313, size: 64, align: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !315, line: 11, size: 320, align: 64, elements: !316)
!315 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!316 = !{!317, !318, !323, !328, !329}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !315, line: 12, baseType: !73, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !314, file: !315, line: 13, baseType: !319, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !315, line: 8, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!27, !27, !26}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !314, file: !315, line: 14, baseType: !324, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !315, line: 9, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!8, !27, !27, !26}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !314, file: !315, line: 15, baseType: !73, size: 64, align: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !314, file: !315, line: 16, baseType: !26, size: 64, align: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !42, file: !29, line: 392, baseType: !41, size: 64, align: 64, offset: 2048)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !42, file: !29, line: 393, baseType: !27, size: 64, align: 64, offset: 2112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !42, file: !29, line: 394, baseType: !333, size: 64, align: 64, offset: 2176)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !29, line: 325, baseType: !155)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !42, file: !29, line: 395, baseType: !335, size: 64, align: 64, offset: 2240)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !29, line: 326, baseType: !231)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !42, file: !29, line: 396, baseType: !33, size: 64, align: 64, offset: 2304)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !42, file: !29, line: 397, baseType: !338, size: 64, align: 64, offset: 2368)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !29, line: 327, baseType: !231)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !42, file: !29, line: 398, baseType: !340, size: 64, align: 64, offset: 2432)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !29, line: 329, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!27, !41, !33}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !42, file: !29, line: 399, baseType: !345, size: 64, align: 64, offset: 2496)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !29, line: 328, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!27, !41, !27, !27}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !42, file: !29, line: 400, baseType: !350, size: 64, align: 64, offset: 2560)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !29, line: 307, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !26}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !42, file: !29, line: 401, baseType: !163, size: 64, align: 64, offset: 2624)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !42, file: !29, line: 402, baseType: !27, size: 64, align: 64, offset: 2688)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !42, file: !29, line: 403, baseType: !27, size: 64, align: 64, offset: 2752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !42, file: !29, line: 404, baseType: !27, size: 64, align: 64, offset: 2816)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !42, file: !29, line: 405, baseType: !27, size: 64, align: 64, offset: 2880)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !42, file: !29, line: 406, baseType: !27, size: 64, align: 64, offset: 2944)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !42, file: !29, line: 407, baseType: !57, size: 64, align: 64, offset: 3008)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !42, file: !29, line: 410, baseType: !362, size: 32, align: 32, offset: 3072)
!362 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !42, file: !29, line: 412, baseType: !57, size: 64, align: 64, offset: 3136)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "traceback_t", file: !1, line: 79, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 75, size: 192, align: 64, elements: !367)
!367 = !{!368, !370, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !366, file: !1, line: 76, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uhash_t", file: !34, line: 189, baseType: !115)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "nframe", scope: !366, file: !1, line: 77, baseType: !8, size: 32, align: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !366, file: !1, line: 78, baseType: !372, size: 96, align: 8, offset: 96)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 96, align: 8, elements: !103)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "frame_t", file: !1, line: 73, baseType: !374)
!374 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 64, size: 96, align: 8, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !374, file: !1, line: 71, baseType: !27, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !374, file: !1, line: 72, baseType: !8, size: 32, align: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_t", file: !1, line: 97, baseType: !380)
!380 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 91, size: 128, align: 64, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !380, file: !1, line: 93, baseType: !115, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "traceback", scope: !380, file: !1, line: 96, baseType: !364, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !386, line: 33, baseType: !387)
!386 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!387 = !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 25, size: 256, align: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !387, file: !386, line: 26, baseType: !45, size: 192, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !387, file: !386, line: 27, baseType: !391, size: 64, align: 64, offset: 192)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, align: 64, elements: !103)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_hash_func", file: !394, line: 41, baseType: !395)
!394 = !DIFile(filename: "./Modules/hashtable.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!369, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_compare_func", file: !394, line: 42, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!8, !398, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_entry_t", file: !394, line: 27, baseType: !407)
!407 = !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 19, size: 192, align: 64, elements: !408)
!408 = !{!409, !415, !416}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_Py_slist_item", scope: !407, file: !394, line: 21, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_slist_item_t", file: !394, line: 9, baseType: !411)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_slist_item_s", file: !394, line: 7, size: 64, align: 64, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !394, line: 8, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !407, file: !394, line: 23, baseType: !398, size: 64, align: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "key_hash", scope: !407, file: !394, line: 24, baseType: !369, size: 64, align: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemAllocator", file: !15, line: 140, baseType: !419)
!419 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 128, size: 256, align: 64, elements: !420)
!420 = !{!421, !422, !426, !430}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !419, file: !15, line: 130, baseType: !26, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !419, file: !15, line: 133, baseType: !423, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!26, !26, !115}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !419, file: !15, line: 136, baseType: !427, size: 64, align: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!26, !26, !26, !115}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !419, file: !15, line: 139, baseType: !431, size: 64, align: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !26, !26}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !436, line: 351, baseType: !437)
!436 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!437 = !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 217, size: 384, align: 64, elements: !438)
!438 = !{!439, !440, !441, !442, !450}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !437, file: !436, line: 291, baseType: !28, size: 128, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !437, file: !436, line: 292, baseType: !33, size: 64, align: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !437, file: !436, line: 293, baseType: !239, size: 64, align: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !437, file: !436, line: 349, baseType: !443, size: 32, align: 32, offset: 256)
!443 = !DICompositeType(tag: DW_TAG_structure_type, scope: !437, file: !436, line: 294, size: 32, align: 32, elements: !444)
!444 = !{!445, !446, !447, !448, !449}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !443, file: !436, line: 303, baseType: !362, size: 2, align: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !443, file: !436, line: 331, baseType: !362, size: 3, align: 32, offset: 2)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !443, file: !436, line: 336, baseType: !362, size: 1, align: 32, offset: 5)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !443, file: !436, line: 340, baseType: !362, size: 1, align: 32, offset: 6)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !443, file: !436, line: 345, baseType: !362, size: 1, align: 32, offset: 7)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !437, file: !436, line: 350, baseType: !451, size: 64, align: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !116, line: 90, baseType: !8)
!453 = !{!454, !459, !477, !481, !484, !487, !492, !493, !501, !504, !511, !566, !573, !584, !601, !623, !635, !640, !647, !657, !663, !666, !667, !670, !675, !682, !683, !687, !693, !705, !715, !722, !729, !732, !742, !745, !751, !760, !770, !891, !906, !916, !920, !927, !932, !940, !949}
!454 = !DISubprogram(name: "PyInit__tracemalloc", scope: !1, file: !1, line: 1322, type: !455, isLocal: false, isDefinition: true, scopeLine: 1323, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__tracemalloc, variables: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!27}
!457 = !{!458}
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !454, file: !1, line: 1324, type: !27)
!459 = !DISubprogram(name: "_PyTraceMalloc_Init", scope: !1, file: !1, line: 1364, type: !460, isLocal: false, isDefinition: true, scopeLine: 1365, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyTraceMalloc_Init, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!8}
!462 = !{!463, !464, !465, !468, !469, !471, !472, !473, !475}
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !459, file: !1, line: 1366, type: !73)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nframe", scope: !459, file: !1, line: 1367, type: !8)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endptr", scope: !466, file: !1, line: 1374, type: !73)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 1373, column: 61)
!467 = distinct !DILexicalBlock(scope: !459, file: !1, line: 1373, column: 9)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !466, file: !1, line: 1375, type: !39)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xoptions", scope: !470, file: !1, line: 1391, type: !27)
!470 = distinct !DILexicalBlock(scope: !467, file: !1, line: 1390, column: 10)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !470, file: !1, line: 1391, type: !27)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !470, file: !1, line: 1391, type: !27)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !474, file: !1, line: 1402, type: !27)
!474 = distinct !DILexicalBlock(scope: !470, file: !1, line: 1402, column: 9)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !476, file: !1, line: 1412, type: !27)
!476 = distinct !DILexicalBlock(scope: !470, file: !1, line: 1412, column: 9)
!477 = !DISubprogram(name: "_PyTraceMalloc_Fini", scope: !1, file: !1, line: 1422, type: !478, isLocal: false, isDefinition: true, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyTraceMalloc_Fini, variables: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{null}
!480 = !{}
!481 = !DISubprogram(name: "py_tracemalloc_is_tracing", scope: !1, file: !1, line: 928, type: !137, isLocal: true, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @py_tracemalloc_is_tracing, variables: !482)
!482 = !{!483}
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !481, file: !1, line: 928, type: !27)
!484 = !DISubprogram(name: "py_tracemalloc_clear_traces", scope: !1, file: !1, line: 939, type: !137, isLocal: true, isDefinition: true, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @py_tracemalloc_clear_traces, variables: !485)
!485 = !{!486}
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !484, file: !1, line: 939, type: !27)
!487 = !DISubprogram(name: "set_reentrant", scope: !1, file: !1, line: 167, type: !488, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, variables: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !8}
!490 = !{!491}
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reentrant", arg: 1, scope: !487, file: !1, line: 167, type: !8)
!492 = !DISubprogram(name: "tracemalloc_clear_traces", scope: !1, file: !1, line: 704, type: !478, isLocal: true, isDefinition: true, scopeLine: 705, flags: DIFlagPrototyped, isOptimized: true, variables: !480)
!493 = !DISubprogram(name: "traceback_free_traceback", scope: !1, file: !1, line: 695, type: !494, isLocal: true, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_entry_t*, i8*)* @traceback_free_traceback, variables: !497)
!494 = !DISubroutineType(types: !495)
!495 = !{!8, !496, !26}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!497 = !{!498, !499, !500}
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 1, scope: !493, file: !1, line: 695, type: !496)
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 2, scope: !493, file: !1, line: 695, type: !26)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !493, file: !1, line: 697, type: !364)
!501 = !DISubprogram(name: "raw_free", scope: !1, file: !1, line: 228, type: !352, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, variables: !502)
!502 = !{!503}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !501, file: !1, line: 228, type: !26)
!504 = !DISubprogram(name: "tracemalloc_clear_filename", scope: !1, file: !1, line: 687, type: !494, isLocal: true, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_clear_filename, variables: !505)
!505 = !{!506, !507, !508, !509}
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 1, scope: !504, file: !1, line: 687, type: !496)
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 2, scope: !504, file: !1, line: 687, type: !26)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !504, file: !1, line: 689, type: !27)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !510, file: !1, line: 690, type: !27)
!510 = distinct !DILexicalBlock(scope: !504, file: !1, line: 690, column: 5)
!511 = !DISubprogram(name: "py_tracemalloc_get_traces", scope: !1, file: !1, line: 1087, type: !147, isLocal: true, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_tracemalloc_get_traces, variables: !512)
!512 = !{!513, !514, !515, !559, !560, !562}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !511, file: !1, line: 1087, type: !27)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !511, file: !1, line: 1087, type: !27)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "get_traces", scope: !511, file: !1, line: 1089, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_traces_t", file: !1, line: 1045, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 1041, size: 192, align: 64, elements: !518)
!518 = !{!519, !557, !558}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "traces", scope: !517, file: !1, line: 1042, baseType: !520, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_t", file: !394, line: 67, baseType: !522)
!522 = !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 55, size: 704, align: 64, elements: !523)
!523 = !{!524, !525, !526, !533, !534, !535, !536, !541, !543, !548}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !522, file: !394, line: 56, baseType: !115, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !522, file: !394, line: 57, baseType: !115, size: 64, align: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !522, file: !394, line: 58, baseType: !527, size: 64, align: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_slist_t", file: !394, line: 13, baseType: !529)
!529 = !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 11, size: 64, align: 64, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !529, file: !394, line: 12, baseType: !532, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !522, file: !394, line: 59, baseType: !115, size: 64, align: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "hash_func", scope: !522, file: !394, line: 61, baseType: !393, size: 64, align: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "compare_func", scope: !522, file: !394, line: 62, baseType: !400, size: 64, align: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "copy_data_func", scope: !522, file: !394, line: 63, baseType: !537, size: 64, align: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_copy_data_func", file: !394, line: 43, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!26, !26}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "free_data_func", scope: !522, file: !394, line: 64, baseType: !542, size: 64, align: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_free_data_func", file: !394, line: 44, baseType: !351)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "get_data_size_func", scope: !522, file: !394, line: 65, baseType: !544, size: 64, align: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_get_data_size_func", file: !394, line: 45, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!115, !26}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !522, file: !394, line: 66, baseType: !549, size: 128, align: 64, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_allocator_t", file: !394, line: 53, baseType: !550)
!550 = !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 47, size: 128, align: 64, elements: !551)
!551 = !{!552, !556}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !550, file: !394, line: 49, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!26, !115}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !550, file: !394, line: 52, baseType: !351, size: 64, align: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tracebacks", scope: !517, file: !1, line: 1043, baseType: !520, size: 64, align: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !517, file: !1, line: 1044, baseType: !27, size: 64, align: 64, offset: 128)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !511, file: !1, line: 1090, type: !8)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !561, file: !1, line: 1130, type: !27)
!561 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1130, column: 5)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !563, file: !1, line: 1130, type: !27)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 1130, column: 5)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 1130, column: 5)
!565 = distinct !DILexicalBlock(scope: !561, file: !1, line: 1130, column: 5)
!566 = !DISubprogram(name: "hashtable_new", scope: !1, file: !1, line: 212, type: !567, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, variables: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!520, !115, !393, !400}
!569 = !{!570, !571, !572}
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 1, scope: !566, file: !1, line: 212, type: !115)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash_func", arg: 2, scope: !566, file: !1, line: 213, type: !393)
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compare_func", arg: 3, scope: !566, file: !1, line: 214, type: !400)
!573 = !DISubprogram(name: "tracemalloc_get_traces_fill", scope: !1, file: !1, line: 1048, type: !494, isLocal: true, isDefinition: true, scopeLine: 1049, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_get_traces_fill, variables: !574)
!574 = !{!575, !576, !577, !579, !580, !581, !582}
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 1, scope: !573, file: !1, line: 1048, type: !496)
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 2, scope: !573, file: !1, line: 1048, type: !26)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "get_traces", scope: !573, file: !1, line: 1050, type: !578)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !573, file: !1, line: 1051, type: !378)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracemalloc_obj", scope: !573, file: !1, line: 1052, type: !27)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !573, file: !1, line: 1053, type: !8)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !583, file: !1, line: 1062, type: !27)
!583 = distinct !DILexicalBlock(scope: !573, file: !1, line: 1062, column: 5)
!584 = !DISubprogram(name: "trace_to_pyobject", scope: !1, file: !1, line: 1015, type: !585, isLocal: true, isDefinition: true, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true, variables: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!27, !378, !520}
!587 = !{!588, !589, !590, !591, !592, !593, !597}
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "trace", arg: 1, scope: !584, file: !1, line: 1015, type: !378)
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "intern_tracebacks", arg: 2, scope: !584, file: !1, line: 1015, type: !520)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace_obj", scope: !584, file: !1, line: 1017, type: !27)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !584, file: !1, line: 1018, type: !27)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !584, file: !1, line: 1018, type: !27)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !594, file: !1, line: 1026, type: !27)
!594 = distinct !DILexicalBlock(scope: !595, file: !1, line: 1026, column: 9)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 1025, column: 23)
!596 = distinct !DILexicalBlock(scope: !584, file: !1, line: 1025, column: 9)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !598, file: !1, line: 1033, type: !27)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 1033, column: 9)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 1032, column: 28)
!600 = distinct !DILexicalBlock(scope: !584, file: !1, line: 1032, column: 9)
!601 = !DISubprogram(name: "traceback_to_pyobject", scope: !1, file: !1, line: 977, type: !602, isLocal: true, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.traceback_t*, %struct._Py_hashtable_t*)* @traceback_to_pyobject, variables: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!27, !364, !520}
!604 = !{!605, !606, !607, !608, !609, !610, !617}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback", arg: 1, scope: !601, file: !1, line: 977, type: !364)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "intern_table", arg: 2, scope: !601, file: !1, line: 977, type: !520)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !601, file: !1, line: 979, type: !8)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frames", scope: !601, file: !1, line: 980, type: !27)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame", scope: !601, file: !1, line: 980, type: !27)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !611, file: !1, line: 996, type: !27)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 996, column: 13)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 995, column: 28)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 995, column: 13)
!614 = distinct !DILexicalBlock(scope: !615, file: !1, line: 993, column: 43)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 993, column: 5)
!616 = distinct !DILexicalBlock(scope: !601, file: !1, line: 993, column: 5)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !618, file: !1, line: 1004, type: !27)
!618 = distinct !DILexicalBlock(scope: !619, file: !1, line: 1004, column: 13)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 1003, column: 69)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 1003, column: 13)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 1002, column: 31)
!622 = distinct !DILexicalBlock(scope: !601, file: !1, line: 1002, column: 9)
!623 = !DISubprogram(name: "frame_to_pyobject", scope: !1, file: !1, line: 952, type: !624, isLocal: true, isDefinition: true, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true, variables: !627)
!624 = !DISubroutineType(types: !625)
!625 = !{!27, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!627 = !{!628, !629, !630, !631}
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "frame", arg: 1, scope: !623, file: !1, line: 952, type: !626)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame_obj", scope: !623, file: !1, line: 954, type: !27)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno_obj", scope: !623, file: !1, line: 954, type: !27)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !632, file: !1, line: 968, type: !27)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 968, column: 9)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 967, column: 29)
!634 = distinct !DILexicalBlock(scope: !623, file: !1, line: 967, column: 9)
!635 = !DISubprogram(name: "lineno_as_obj", scope: !1, file: !1, line: 913, type: !636, isLocal: true, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: true, variables: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!27, !8}
!638 = !{!639}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 1, scope: !635, file: !1, line: 913, type: !8)
!640 = !DISubprogram(name: "tracemalloc_pyobject_decref_cb", scope: !1, file: !1, line: 1070, type: !494, isLocal: true, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_pyobject_decref_cb, variables: !641)
!641 = !{!642, !643, !644, !645}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 1, scope: !640, file: !1, line: 1070, type: !496)
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 2, scope: !640, file: !1, line: 1070, type: !26)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !640, file: !1, line: 1072, type: !27)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !646, file: !1, line: 1073, type: !27)
!646 = distinct !DILexicalBlock(scope: !640, file: !1, line: 1073, column: 5)
!647 = !DISubprogram(name: "py_tracemalloc_get_object_traceback", scope: !1, file: !1, line: 1154, type: !147, isLocal: true, isDefinition: true, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_tracemalloc_get_object_traceback, variables: !648)
!648 = !{!649, !650, !651, !654, !655, !656}
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !647, file: !1, line: 1154, type: !27)
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !647, file: !1, line: 1154, type: !27)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !647, file: !1, line: 1156, type: !652)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !29, line: 422, baseType: !42)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !647, file: !1, line: 1157, type: !26)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !647, file: !1, line: 1158, type: !379)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !647, file: !1, line: 1159, type: !8)
!657 = !DISubprogram(name: "py_tracemalloc_start", scope: !1, file: !1, line: 1187, type: !147, isLocal: true, isDefinition: true, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_tracemalloc_start, variables: !658)
!658 = !{!659, !660, !661, !662}
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !657, file: !1, line: 1187, type: !27)
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !657, file: !1, line: 1187, type: !27)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nframe", scope: !657, file: !1, line: 1189, type: !33)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nframe_int", scope: !657, file: !1, line: 1190, type: !8)
!663 = !DISubprogram(name: "py_tracemalloc_stop", scope: !1, file: !1, line: 1216, type: !137, isLocal: true, isDefinition: true, scopeLine: 1217, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @py_tracemalloc_stop, variables: !664)
!664 = !{!665}
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !663, file: !1, line: 1216, type: !27)
!666 = !DISubprogram(name: "tracemalloc_stop", scope: !1, file: !1, line: 887, type: !478, isLocal: true, isDefinition: true, scopeLine: 888, flags: DIFlagPrototyped, isOptimized: true, variables: !480)
!667 = !DISubprogram(name: "py_tracemalloc_get_traceback_limit", scope: !1, file: !1, line: 1232, type: !137, isLocal: true, isDefinition: true, scopeLine: 1233, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @py_tracemalloc_get_traceback_limit, variables: !668)
!668 = !{!669}
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !667, file: !1, line: 1232, type: !27)
!670 = !DISubprogram(name: "tracemalloc_get_tracemalloc_memory", scope: !1, file: !1, line: 1244, type: !137, isLocal: true, isDefinition: true, scopeLine: 1245, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @tracemalloc_get_tracemalloc_memory, variables: !671)
!671 = !{!672, !673, !674}
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !670, file: !1, line: 1244, type: !27)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !670, file: !1, line: 1246, type: !115)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size_obj", scope: !670, file: !1, line: 1247, type: !27)
!675 = !DISubprogram(name: "tracemalloc_get_traced_memory", scope: !1, file: !1, line: 1267, type: !137, isLocal: true, isDefinition: true, scopeLine: 1268, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @tracemalloc_get_traced_memory, variables: !676)
!676 = !{!677, !678, !679, !680, !681}
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !675, file: !1, line: 1267, type: !27)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !675, file: !1, line: 1269, type: !33)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "peak_size", scope: !675, file: !1, line: 1269, type: !33)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size_obj", scope: !675, file: !1, line: 1270, type: !27)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "peak_size_obj", scope: !675, file: !1, line: 1270, type: !27)
!682 = !DISubprogram(name: "tracemalloc_init", scope: !1, file: !1, line: 729, type: !460, isLocal: true, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @tracemalloc_init, variables: !480)
!683 = !DISubprogram(name: "hashtable_compare_unicode", scope: !1, file: !1, line: 201, type: !402, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_unicode, variables: !684)
!684 = !{!685, !686}
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !683, file: !1, line: 201, type: !398)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 2, scope: !683, file: !1, line: 201, type: !404)
!687 = !DISubprogram(name: "hashtable_hash_traceback", scope: !1, file: !1, line: 234, type: !396, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*)* @hashtable_hash_traceback, variables: !688)
!688 = !{!689, !690}
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !687, file: !1, line: 234, type: !398)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !687, file: !1, line: 236, type: !691)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64, align: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!693 = !DISubprogram(name: "hashtable_compare_traceback", scope: !1, file: !1, line: 241, type: !694, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.traceback_t*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_traceback, variables: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{!8, !691, !404}
!696 = !{!697, !698, !699, !700, !703, !704}
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback1", arg: 1, scope: !693, file: !1, line: 241, type: !691)
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "he", arg: 2, scope: !693, file: !1, line: 242, type: !404)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback2", scope: !693, file: !1, line: 244, type: !691)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame1", scope: !693, file: !1, line: 245, type: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame2", scope: !693, file: !1, line: 245, type: !701)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !693, file: !1, line: 246, type: !8)
!705 = !DISubprogram(name: "traceback_hash", scope: !1, file: !1, line: 337, type: !706, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, variables: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!369, !364}
!708 = !{!709, !710, !711, !712, !713, !714}
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback", arg: 1, scope: !705, file: !1, line: 337, type: !364)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !705, file: !1, line: 340, type: !369)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !705, file: !1, line: 340, type: !369)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !705, file: !1, line: 341, type: !8)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mult", scope: !705, file: !1, line: 342, type: !369)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame", scope: !705, file: !1, line: 343, type: !626)
!715 = !DISubprogram(name: "parse_sys_xoptions", scope: !1, file: !1, line: 1336, type: !165, isLocal: true, isDefinition: true, scopeLine: 1337, flags: DIFlagPrototyped, isOptimized: true, variables: !716)
!716 = !{!717, !718, !719, !720}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 1, scope: !715, file: !1, line: 1336, type: !27)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "valuelong", scope: !715, file: !1, line: 1338, type: !27)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nframe", scope: !715, file: !1, line: 1339, type: !39)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !721, file: !1, line: 1353, type: !27)
!721 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1353, column: 5)
!722 = !DISubprogram(name: "tracemalloc_start", scope: !1, file: !1, line: 832, type: !723, isLocal: true, isDefinition: true, scopeLine: 833, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @tracemalloc_start, variables: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!8, !8}
!725 = !{!726, !727, !728}
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max_nframe", arg: 1, scope: !722, file: !1, line: 832, type: !8)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !722, file: !1, line: 834, type: !418)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !722, file: !1, line: 835, type: !115)
!729 = !DISubprogram(name: "raw_malloc", scope: !1, file: !1, line: 222, type: !554, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, variables: !730)
!730 = !{!731}
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !729, file: !1, line: 222, type: !115)
!732 = !DISubprogram(name: "tracemalloc_raw_malloc", scope: !1, file: !1, line: 617, type: !424, isLocal: true, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @tracemalloc_raw_malloc, variables: !733)
!733 = !{!734, !735, !736, !738, !739}
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !732, file: !1, line: 617, type: !26)
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !732, file: !1, line: 617, type: !115)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gil_state", scope: !732, file: !1, line: 620, type: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGILState_STATE", file: !21, line: 191, baseType: !20)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !732, file: !1, line: 622, type: !26)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !740, file: !1, line: 625, type: !417)
!740 = distinct !DILexicalBlock(scope: !741, file: !1, line: 624, column: 26)
!741 = distinct !DILexicalBlock(scope: !732, file: !1, line: 624, column: 9)
!742 = !DISubprogram(name: "get_reentrant", scope: !1, file: !1, line: 155, type: !460, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, variables: !743)
!743 = !{!744}
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !742, file: !1, line: 157, type: !26)
!745 = !DISubprogram(name: "tracemalloc_malloc", scope: !1, file: !1, line: 479, type: !424, isLocal: true, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, variables: !746)
!746 = !{!747, !748, !749, !750}
!747 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !745, file: !1, line: 479, type: !26)
!748 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !745, file: !1, line: 479, type: !115)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !745, file: !1, line: 481, type: !417)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !745, file: !1, line: 482, type: !26)
!751 = !DISubprogram(name: "tracemalloc_add_trace", scope: !1, file: !1, line: 439, type: !752, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64)* @tracemalloc_add_trace, variables: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{!8, !26, !115}
!754 = !{!755, !756, !757, !758, !759}
!755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !751, file: !1, line: 439, type: !26)
!756 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !751, file: !1, line: 439, type: !115)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !751, file: !1, line: 441, type: !364)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !751, file: !1, line: 442, type: !379)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !751, file: !1, line: 443, type: !8)
!760 = !DISubprogram(name: "traceback_new", scope: !1, file: !1, line: 389, type: !761, isLocal: true, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, variables: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!364}
!763 = !{!764, !765, !766, !769}
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !760, file: !1, line: 391, type: !364)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !760, file: !1, line: 392, type: !496)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "copy", scope: !767, file: !1, line: 412, type: !364)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 411, column: 10)
!768 = distinct !DILexicalBlock(scope: !760, file: !1, line: 408, column: 9)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback_size", scope: !767, file: !1, line: 413, type: !115)
!770 = !DISubprogram(name: "traceback_get_frames", scope: !1, file: !1, line: 361, type: !771, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, variables: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !364}
!773 = !{!774, !775, !888}
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback", arg: 1, scope: !770, file: !1, line: 361, type: !364)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !770, file: !1, line: 363, type: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64, align: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !21, line: 139, baseType: !778)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !21, line: 69, size: 1536, align: 64, elements: !779)
!779 = !{!780, !782, !783, !803, !861, !862, !863, !864, !865, !866, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !778, file: !21, line: 72, baseType: !781, size: 64, align: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !778, file: !21, line: 73, baseType: !781, size: 64, align: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !778, file: !21, line: 74, baseType: !784, size: 64, align: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !21, line: 44, baseType: !786)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !21, line: 19, size: 832, align: 64, elements: !787)
!787 = !{!788, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !786, file: !21, line: 21, baseType: !789, size: 64, align: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !786, file: !21, line: 22, baseType: !781, size: 64, align: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !786, file: !21, line: 24, baseType: !27, size: 64, align: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !786, file: !21, line: 25, baseType: !27, size: 64, align: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !786, file: !21, line: 26, baseType: !27, size: 64, align: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !786, file: !21, line: 27, baseType: !27, size: 64, align: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !786, file: !21, line: 28, baseType: !27, size: 64, align: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !786, file: !21, line: 30, baseType: !27, size: 64, align: 64, offset: 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !786, file: !21, line: 31, baseType: !27, size: 64, align: 64, offset: 512)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !786, file: !21, line: 32, baseType: !27, size: 64, align: 64, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !786, file: !21, line: 33, baseType: !8, size: 32, align: 32, offset: 640)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !786, file: !21, line: 34, baseType: !8, size: 32, align: 32, offset: 672)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !786, file: !21, line: 37, baseType: !8, size: 32, align: 32, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !786, file: !21, line: 43, baseType: !27, size: 64, align: 64, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !778, file: !21, line: 76, baseType: !804, size: 64, align: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64, align: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !806, line: 17, size: 3072, align: 64, elements: !807)
!806 = !DIFile(filename: "Include/frameobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!807 = !{!808, !809, !810, !837, !838, !839, !840, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !860}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !805, file: !806, line: 18, baseType: !45, size: 192, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !805, file: !806, line: 19, baseType: !804, size: 64, align: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !805, file: !806, line: 20, baseType: !811, size: 64, align: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !813, line: 33, baseType: !814)
!813 = !DIFile(filename: "Include/code.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!814 = !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 11, size: 1152, align: 64, elements: !815)
!815 = !{!816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !831, !832, !833, !834, !835, !836}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !814, file: !813, line: 12, baseType: !28, size: 128, align: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !814, file: !813, line: 13, baseType: !8, size: 32, align: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !814, file: !813, line: 14, baseType: !8, size: 32, align: 32, offset: 160)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !814, file: !813, line: 15, baseType: !8, size: 32, align: 32, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !814, file: !813, line: 16, baseType: !8, size: 32, align: 32, offset: 224)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !814, file: !813, line: 17, baseType: !8, size: 32, align: 32, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !814, file: !813, line: 18, baseType: !27, size: 64, align: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !814, file: !813, line: 19, baseType: !27, size: 64, align: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !814, file: !813, line: 20, baseType: !27, size: 64, align: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !814, file: !813, line: 21, baseType: !27, size: 64, align: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !814, file: !813, line: 22, baseType: !27, size: 64, align: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !814, file: !813, line: 23, baseType: !27, size: 64, align: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !814, file: !813, line: 25, baseType: !829, size: 64, align: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64, align: 64)
!830 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !814, file: !813, line: 26, baseType: !27, size: 64, align: 64, offset: 768)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !814, file: !813, line: 27, baseType: !27, size: 64, align: 64, offset: 832)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !814, file: !813, line: 28, baseType: !8, size: 32, align: 32, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !814, file: !813, line: 29, baseType: !27, size: 64, align: 64, offset: 960)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !814, file: !813, line: 31, baseType: !26, size: 64, align: 64, offset: 1024)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !814, file: !813, line: 32, baseType: !27, size: 64, align: 64, offset: 1088)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !805, file: !806, line: 21, baseType: !27, size: 64, align: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !805, file: !806, line: 22, baseType: !27, size: 64, align: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !805, file: !806, line: 23, baseType: !27, size: 64, align: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "f_valuestack", scope: !805, file: !806, line: 24, baseType: !841, size: 64, align: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "f_stacktop", scope: !805, file: !806, line: 28, baseType: !841, size: 64, align: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !805, file: !806, line: 29, baseType: !27, size: 64, align: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_type", scope: !805, file: !806, line: 38, baseType: !27, size: 64, align: 64, offset: 704)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_value", scope: !805, file: !806, line: 38, baseType: !27, size: 64, align: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_traceback", scope: !805, file: !806, line: 38, baseType: !27, size: 64, align: 64, offset: 832)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "f_gen", scope: !805, file: !806, line: 40, baseType: !27, size: 64, align: 64, offset: 896)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "f_lasti", scope: !805, file: !806, line: 42, baseType: !8, size: 32, align: 32, offset: 960)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !805, file: !806, line: 48, baseType: !8, size: 32, align: 32, offset: 992)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "f_iblock", scope: !805, file: !806, line: 49, baseType: !8, size: 32, align: 32, offset: 1024)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "f_executing", scope: !805, file: !806, line: 50, baseType: !53, size: 8, align: 8, offset: 1056)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "f_blockstack", scope: !805, file: !806, line: 51, baseType: !853, size: 1920, align: 32, offset: 1088)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 1920, align: 32, elements: !121)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTryBlock", file: !806, line: 15, baseType: !855)
!855 = !DICompositeType(tag: DW_TAG_structure_type, file: !806, line: 11, size: 96, align: 32, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "b_type", scope: !855, file: !806, line: 12, baseType: !8, size: 32, align: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "b_handler", scope: !855, file: !806, line: 13, baseType: !8, size: 32, align: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "b_level", scope: !855, file: !806, line: 14, baseType: !8, size: 32, align: 32, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "f_localsplus", scope: !805, file: !806, line: 52, baseType: !391, size: 64, align: 64, offset: 3008)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !778, file: !21, line: 77, baseType: !8, size: 32, align: 32, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !778, file: !21, line: 78, baseType: !53, size: 8, align: 8, offset: 288)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !778, file: !21, line: 80, baseType: !53, size: 8, align: 8, offset: 296)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !778, file: !21, line: 85, baseType: !8, size: 32, align: 32, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !778, file: !21, line: 86, baseType: !8, size: 32, align: 32, offset: 352)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !778, file: !21, line: 88, baseType: !867, size: 64, align: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !21, line: 54, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64, align: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!8, !27, !804, !8, !27}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !778, file: !21, line: 89, baseType: !867, size: 64, align: 64, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !778, file: !21, line: 90, baseType: !27, size: 64, align: 64, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !778, file: !21, line: 91, baseType: !27, size: 64, align: 64, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !778, file: !21, line: 93, baseType: !27, size: 64, align: 64, offset: 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !778, file: !21, line: 94, baseType: !27, size: 64, align: 64, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !778, file: !21, line: 95, baseType: !27, size: 64, align: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !778, file: !21, line: 97, baseType: !27, size: 64, align: 64, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !778, file: !21, line: 98, baseType: !27, size: 64, align: 64, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !778, file: !21, line: 99, baseType: !27, size: 64, align: 64, offset: 960)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !778, file: !21, line: 101, baseType: !27, size: 64, align: 64, offset: 1024)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !778, file: !21, line: 103, baseType: !8, size: 32, align: 32, offset: 1088)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !778, file: !21, line: 105, baseType: !27, size: 64, align: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !778, file: !21, line: 106, baseType: !39, size: 64, align: 64, offset: 1216)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !778, file: !21, line: 108, baseType: !8, size: 32, align: 32, offset: 1280)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !778, file: !21, line: 109, baseType: !27, size: 64, align: 64, offset: 1344)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !778, file: !21, line: 134, baseType: !351, size: 64, align: 64, offset: 1408)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !778, file: !21, line: 135, baseType: !26, size: 64, align: 64, offset: 1472)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pyframe", scope: !770, file: !1, line: 364, type: !889)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFrameObject", file: !806, line: 53, baseType: !805)
!891 = !DISubprogram(name: "tracemalloc_get_frame", scope: !1, file: !1, line: 267, type: !892, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, variables: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !889, !626}
!894 = !{!895, !896, !897, !898, !899, !900}
!895 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pyframe", arg: 1, scope: !891, file: !1, line: 267, type: !889)
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "frame", arg: 2, scope: !891, file: !1, line: 267, type: !626)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !891, file: !1, line: 269, type: !811)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !891, file: !1, line: 270, type: !27)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !891, file: !1, line: 271, type: !496)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !901, file: !1, line: 324, type: !27)
!901 = distinct !DILexicalBlock(scope: !902, file: !1, line: 324, column: 13)
!902 = distinct !DILexicalBlock(scope: !903, file: !1, line: 323, column: 78)
!903 = distinct !DILexicalBlock(scope: !904, file: !1, line: 323, column: 13)
!904 = distinct !DILexicalBlock(scope: !905, file: !1, line: 319, column: 10)
!905 = distinct !DILexicalBlock(scope: !891, file: !1, line: 316, column: 9)
!906 = !DISubprogram(name: "tracemalloc_raw_realloc", scope: !1, file: !1, line: 647, type: !428, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @tracemalloc_raw_realloc, variables: !907)
!907 = !{!908, !909, !910, !911, !912, !913}
!908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !906, file: !1, line: 647, type: !26)
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !906, file: !1, line: 647, type: !26)
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 3, scope: !906, file: !1, line: 647, type: !115)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gil_state", scope: !906, file: !1, line: 650, type: !737)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr2", scope: !906, file: !1, line: 652, type: !26)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !914, file: !1, line: 656, type: !417)
!914 = distinct !DILexicalBlock(scope: !915, file: !1, line: 654, column: 26)
!915 = distinct !DILexicalBlock(scope: !906, file: !1, line: 654, column: 9)
!916 = !DISubprogram(name: "tracemalloc_remove_trace", scope: !1, file: !1, line: 468, type: !352, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, variables: !917)
!917 = !{!918, !919}
!918 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !916, file: !1, line: 468, type: !26)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !916, file: !1, line: 470, type: !379)
!920 = !DISubprogram(name: "tracemalloc_realloc", scope: !1, file: !1, line: 500, type: !428, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @tracemalloc_realloc, variables: !921)
!921 = !{!922, !923, !924, !925, !926}
!922 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !920, file: !1, line: 500, type: !26)
!923 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !920, file: !1, line: 500, type: !26)
!924 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 3, scope: !920, file: !1, line: 500, type: !115)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !920, file: !1, line: 502, type: !417)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr2", scope: !920, file: !1, line: 503, type: !26)
!927 = !DISubprogram(name: "tracemalloc_free", scope: !1, file: !1, line: 545, type: !432, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @tracemalloc_free, variables: !928)
!928 = !{!929, !930, !931}
!929 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !927, file: !1, line: 545, type: !26)
!930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !927, file: !1, line: 545, type: !26)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !927, file: !1, line: 547, type: !417)
!932 = !DISubprogram(name: "tracemalloc_malloc_gil", scope: !1, file: !1, line: 563, type: !424, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @tracemalloc_malloc_gil, variables: !933)
!933 = !{!934, !935, !936, !937}
!934 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !932, file: !1, line: 563, type: !26)
!935 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !932, file: !1, line: 563, type: !115)
!936 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !932, file: !1, line: 565, type: !26)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !938, file: !1, line: 568, type: !417)
!938 = distinct !DILexicalBlock(scope: !939, file: !1, line: 567, column: 26)
!939 = distinct !DILexicalBlock(scope: !932, file: !1, line: 567, column: 9)
!940 = !DISubprogram(name: "tracemalloc_realloc_gil", scope: !1, file: !1, line: 584, type: !428, isLocal: true, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @tracemalloc_realloc_gil, variables: !941)
!941 = !{!942, !943, !944, !945, !946}
!942 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !940, file: !1, line: 584, type: !26)
!943 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !940, file: !1, line: 584, type: !26)
!944 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 3, scope: !940, file: !1, line: 584, type: !115)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr2", scope: !940, file: !1, line: 586, type: !26)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !947, file: !1, line: 593, type: !417)
!947 = distinct !DILexicalBlock(scope: !948, file: !1, line: 588, column: 26)
!948 = distinct !DILexicalBlock(scope: !940, file: !1, line: 588, column: 9)
!949 = !DISubprogram(name: "tracemalloc_deinit", scope: !1, file: !1, line: 804, type: !478, isLocal: true, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, variables: !950)
!950 = !{!951, !953}
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !952, file: !1, line: 828, type: !27)
!952 = distinct !DILexicalBlock(scope: !949, file: !1, line: 828, column: 5)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !954, file: !1, line: 828, type: !27)
!954 = distinct !DILexicalBlock(scope: !955, file: !1, line: 828, column: 5)
!955 = distinct !DILexicalBlock(scope: !952, file: !1, line: 828, column: 5)
!956 = !{!957, !980, !984, !988, !989, !993, !994, !997, !998, !999, !1000, !1001, !1007, !1008, !1012, !1013, !1017, !1021, !1025, !1026, !1030, !1034, !1038, !1042, !1043}
!957 = !DIGlobalVariable(name: "module_def", scope: !0, file: !1, line: 1312, type: !958, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @module_def)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !959, line: 47, size: 832, align: 64, elements: !960)
!959 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!960 = !{!961, !970, !971, !972, !973, !976, !977, !978, !979}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !958, file: !959, line: 48, baseType: !962, size: 320, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !959, line: 38, baseType: !963)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !959, line: 33, size: 320, align: 64, elements: !964)
!964 = !{!965, !966, !968, !969}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !963, file: !959, line: 34, baseType: !28, size: 128, align: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !963, file: !959, line: 35, baseType: !967, size: 64, align: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !963, file: !959, line: 36, baseType: !33, size: 64, align: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !963, file: !959, line: 37, baseType: !27, size: 64, align: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !958, file: !959, line: 49, baseType: !51, size: 64, align: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !958, file: !959, line: 50, baseType: !51, size: 64, align: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !958, file: !959, line: 51, baseType: !33, size: 64, align: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !958, file: !959, line: 52, baseType: !974, size: 64, align: 64, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !302, line: 47, baseType: !301)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !958, file: !959, line: 53, baseType: !163, size: 64, align: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !958, file: !959, line: 54, baseType: !280, size: 64, align: 64, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !958, file: !959, line: 55, baseType: !163, size: 64, align: 64, offset: 704)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !958, file: !959, line: 56, baseType: !350, size: 64, align: 64, offset: 768)
!980 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !1, line: 1309, type: !981, isLocal: true, isDefinition: true, variable: [57 x i8]* @module_doc)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 456, align: 8, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 57)
!984 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !1, line: 1285, type: !985, isLocal: true, isDefinition: true, variable: [10 x %struct.PyMethodDef]* @module_methods)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 2560, align: 64, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 10)
!988 = !DIGlobalVariable(name: "tracemalloc_config", scope: !0, file: !1, line: 45, type: !4, isLocal: true, isDefinition: true)
!989 = !DIGlobalVariable(name: "tracemalloc_is_tracing_doc", scope: !0, file: !1, line: 921, type: !990, isLocal: true, isDefinition: true, variable: [106 x i8]* @tracemalloc_is_tracing_doc)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 848, align: 8, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 106)
!993 = !DIGlobalVariable(name: "tracemalloc_reentrant_key", scope: !0, file: !1, line: 149, type: !8, isLocal: true, isDefinition: true, variable: i32* @tracemalloc_reentrant_key)
!994 = !DIGlobalVariable(name: "tables_lock", scope: !0, file: !1, line: 51, type: !995, isLocal: true, isDefinition: true, variable: i8** @tables_lock)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !996, line: 5, baseType: !26)
!996 = !DIFile(filename: "Include/pythread.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!997 = !DIGlobalVariable(name: "tracemalloc_traces", scope: !0, file: !1, line: 123, type: !520, isLocal: true, isDefinition: true, variable: %struct._Py_hashtable_t** @tracemalloc_traces)
!998 = !DIGlobalVariable(name: "tracemalloc_traced_memory", scope: !0, file: !1, line: 101, type: !115, isLocal: true, isDefinition: true, variable: i64* @tracemalloc_traced_memory)
!999 = !DIGlobalVariable(name: "tracemalloc_peak_traced_memory", scope: !0, file: !1, line: 105, type: !115, isLocal: true, isDefinition: true, variable: i64* @tracemalloc_peak_traced_memory)
!1000 = !DIGlobalVariable(name: "tracemalloc_tracebacks", scope: !0, file: !1, line: 119, type: !520, isLocal: true, isDefinition: true, variable: %struct._Py_hashtable_t** @tracemalloc_tracebacks)
!1001 = !DIGlobalVariable(name: "allocators", scope: !0, file: !1, line: 27, type: !1002, isLocal: true, isDefinition: true, variable: %struct.anon.0* @allocators)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 23, size: 768, align: 64, elements: !1003)
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1002, file: !1, line: 24, baseType: !418, size: 256, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1002, file: !1, line: 25, baseType: !418, size: 256, align: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !1002, file: !1, line: 26, baseType: !418, size: 256, align: 64, offset: 512)
!1007 = !DIGlobalVariable(name: "tracemalloc_filenames", scope: !0, file: !1, line: 110, type: !520, isLocal: true, isDefinition: true, variable: %struct._Py_hashtable_t** @tracemalloc_filenames)
!1008 = !DIGlobalVariable(name: "tracemalloc_clear_traces_doc", scope: !0, file: !1, line: 933, type: !1009, isLocal: true, isDefinition: true, variable: [67 x i8]* @tracemalloc_clear_traces_doc)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 536, align: 8, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 67)
!1012 = !DIGlobalVariable(name: "hashtable_alloc", scope: !0, file: !1, line: 209, type: !549, isLocal: true, isDefinition: true, variable: %struct._Py_hashtable_allocator_t* @hashtable_alloc)
!1013 = !DIGlobalVariable(name: "tracemalloc_get_traces_doc", scope: !0, file: !1, line: 1077, type: !1014, isLocal: true, isDefinition: true, variable: [253 x i8]* @tracemalloc_get_traces_doc)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2024, align: 8, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 253)
!1017 = !DIGlobalVariable(name: "tracemalloc_get_object_traceback_doc", scope: !0, file: !1, line: 1144, type: !1018, isLocal: true, isDefinition: true, variable: [242 x i8]* @tracemalloc_get_object_traceback_doc)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1936, align: 8, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 242)
!1021 = !DIGlobalVariable(name: "tracemalloc_start_doc", scope: !0, file: !1, line: 1180, type: !1022, isLocal: true, isDefinition: true, variable: [148 x i8]* @tracemalloc_start_doc)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1184, align: 8, elements: !1023)
!1023 = !{!1024}
!1024 = !DISubrange(count: 148)
!1025 = !DIGlobalVariable(name: "tracemalloc_traceback", scope: !0, file: !1, line: 114, type: !364, isLocal: true, isDefinition: true, variable: %struct.traceback_t** @tracemalloc_traceback)
!1026 = !DIGlobalVariable(name: "tracemalloc_stop_doc", scope: !0, file: !1, line: 1209, type: !1027, isLocal: true, isDefinition: true, variable: [102 x i8]* @tracemalloc_stop_doc)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 816, align: 8, elements: !1028)
!1028 = !{!1029}
!1029 = !DISubrange(count: 102)
!1030 = !DIGlobalVariable(name: "tracemalloc_get_traceback_limit_doc", scope: !0, file: !1, line: 1222, type: !1031, isLocal: true, isDefinition: true, variable: [200 x i8]* @tracemalloc_get_traceback_limit_doc)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1600, align: 8, elements: !1032)
!1032 = !{!1033}
!1033 = !DISubrange(count: 200)
!1034 = !DIGlobalVariable(name: "tracemalloc_get_tracemalloc_memory_doc", scope: !0, file: !1, line: 1237, type: !1035, isLocal: true, isDefinition: true, variable: [134 x i8]* @tracemalloc_get_tracemalloc_memory_doc)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1072, align: 8, elements: !1036)
!1036 = !{!1037}
!1037 = !DISubrange(count: 134)
!1038 = !DIGlobalVariable(name: "tracemalloc_get_traced_memory_doc", scope: !0, file: !1, line: 1260, type: !1039, isLocal: true, isDefinition: true, variable: [159 x i8]* @tracemalloc_get_traced_memory_doc)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1272, align: 8, elements: !1040)
!1040 = !{!1041}
!1041 = !DISubrange(count: 159)
!1042 = !DIGlobalVariable(name: "unknown_filename", scope: !0, file: !1, line: 87, type: !27, isLocal: true, isDefinition: true, variable: %struct._object** @unknown_filename)
!1043 = !DIGlobalVariable(name: "tracemalloc_empty_traceback", scope: !0, file: !1, line: 88, type: !365, isLocal: true, isDefinition: true, variable: %struct.traceback_t* @tracemalloc_empty_traceback)
!1044 = !{i32 2, !"Dwarf Version", i32 4}
!1045 = !{i32 2, !"Debug Info Version", i32 3}
!1046 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1047 = !DILocation(line: 1325, column: 9, scope: !454)
!1048 = !DIExpression()
!1049 = !DILocation(line: 1324, column: 15, scope: !454)
!1050 = !DILocation(line: 1326, column: 11, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !454, file: !1, line: 1326, column: 9)
!1052 = !DILocation(line: 1326, column: 9, scope: !454)
!1053 = !DILocation(line: 1329, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !454, file: !1, line: 1329, column: 9)
!1055 = !DILocation(line: 1329, column: 28, scope: !1054)
!1056 = !DILocation(line: 1330, column: 9, scope: !1054)
!1057 = !DILocation(line: 1333, column: 1, scope: !454)
!1058 = !DILocation(line: 731, column: 28, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !682, file: !1, line: 731, column: 9)
!1060 = !{!1061, !1062, i64 0}
!1061 = !{!"", !1062, i64 0, !1064, i64 4, !1064, i64 8}
!1062 = !{!"omnipotent char", !1063, i64 0}
!1063 = !{!"Simple C/C++ TBAA"}
!1064 = !{!"int", !1062, i64 0}
!1065 = !DILocation(line: 731, column: 9, scope: !682)
!1066 = !DILocation(line: 732, column: 25, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 731, column: 66)
!1068 = !{!1069, !1069, i64 0}
!1069 = !{!"any pointer", !1062, i64 0}
!1070 = !DILocation(line: 732, column: 9, scope: !1067)
!1071 = !DILocation(line: 734, column: 9, scope: !1067)
!1072 = !DILocation(line: 740, column: 5, scope: !682)
!1073 = !DILocation(line: 743, column: 33, scope: !682)
!1074 = !DILocation(line: 743, column: 31, scope: !682)
!1075 = !{!1064, !1064, i64 0}
!1076 = !DILocation(line: 744, column: 35, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !682, file: !1, line: 744, column: 9)
!1078 = !DILocation(line: 744, column: 9, scope: !682)
!1079 = !DILocation(line: 748, column: 28, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 744, column: 42)
!1081 = !DILocation(line: 748, column: 9, scope: !1080)
!1082 = !DILocation(line: 750, column: 9, scope: !1080)
!1083 = !DILocation(line: 755, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !682, file: !1, line: 755, column: 9)
!1085 = !DILocation(line: 755, column: 21, scope: !1084)
!1086 = !DILocation(line: 755, column: 9, scope: !682)
!1087 = !DILocation(line: 756, column: 23, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 755, column: 30)
!1089 = !DILocation(line: 756, column: 21, scope: !1088)
!1090 = !DILocation(line: 757, column: 25, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 757, column: 13)
!1092 = !DILocation(line: 757, column: 13, scope: !1088)
!1093 = !DILocation(line: 758, column: 29, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 757, column: 34)
!1095 = !DILocation(line: 758, column: 13, scope: !1094)
!1096 = !DILocation(line: 759, column: 13, scope: !1094)
!1097 = !DILocation(line: 212, column: 22, scope: !566, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 764, column: 29, scope: !682)
!1099 = !DILocation(line: 213, column: 39, scope: !566, inlinedAt: !1098)
!1100 = !DILocation(line: 214, column: 42, scope: !566, inlinedAt: !1098)
!1101 = !DILocation(line: 216, column: 12, scope: !566, inlinedAt: !1098)
!1102 = !DILocation(line: 764, column: 27, scope: !682)
!1103 = !DILocation(line: 212, column: 22, scope: !566, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 768, column: 30, scope: !682)
!1105 = !DILocation(line: 213, column: 39, scope: !566, inlinedAt: !1104)
!1106 = !DILocation(line: 214, column: 42, scope: !566, inlinedAt: !1104)
!1107 = !DILocation(line: 216, column: 12, scope: !566, inlinedAt: !1104)
!1108 = !DILocation(line: 768, column: 28, scope: !682)
!1109 = !DILocation(line: 212, column: 22, scope: !566, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 772, column: 26, scope: !682)
!1111 = !DILocation(line: 213, column: 39, scope: !566, inlinedAt: !1110)
!1112 = !DILocation(line: 214, column: 42, scope: !566, inlinedAt: !1110)
!1113 = !DILocation(line: 216, column: 12, scope: !566, inlinedAt: !1110)
!1114 = !DILocation(line: 772, column: 24, scope: !682)
!1115 = !DILocation(line: 776, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !682, file: !1, line: 776, column: 9)
!1117 = !DILocation(line: 776, column: 31, scope: !1116)
!1118 = !DILocation(line: 776, column: 65, scope: !1116)
!1119 = !DILocation(line: 776, column: 39, scope: !1116)
!1120 = !DILocation(line: 777, column: 31, scope: !1116)
!1121 = !DILocation(line: 779, column: 9, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 778, column: 5)
!1123 = !DILocation(line: 780, column: 9, scope: !1122)
!1124 = !DILocation(line: 783, column: 24, scope: !682)
!1125 = !DILocation(line: 783, column: 22, scope: !682)
!1126 = !DILocation(line: 784, column: 26, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !682, file: !1, line: 784, column: 9)
!1128 = !DILocation(line: 784, column: 9, scope: !682)
!1129 = !DILocation(line: 786, column: 5, scope: !682)
!1130 = !DILocation(line: 788, column: 40, scope: !682)
!1131 = !{!1132, !1064, i64 8}
!1132 = !{!"", !1133, i64 0, !1064, i64 8, !1062, i64 12}
!1133 = !{!"long", !1062, i64 0}
!1134 = !DILocation(line: 790, column: 54, scope: !682)
!1135 = !DILocation(line: 790, column: 52, scope: !682)
!1136 = !{!1137, !1069, i64 0}
!1137 = !{!"", !1069, i64 0, !1064, i64 8}
!1138 = !DILocation(line: 791, column: 50, scope: !682)
!1139 = !{!1137, !1064, i64 8}
!1140 = !DILocation(line: 337, column: 29, scope: !705, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 792, column: 40, scope: !682)
!1142 = !DILocation(line: 341, column: 9, scope: !705, inlinedAt: !1141)
!1143 = !DILocation(line: 342, column: 16, scope: !705, inlinedAt: !1141)
!1144 = !DILocation(line: 340, column: 16, scope: !705, inlinedAt: !1141)
!1145 = !DILocation(line: 348, column: 46, scope: !1146, inlinedAt: !1141)
!1146 = distinct !DILexicalBlock(scope: !705, file: !1, line: 347, column: 24)
!1147 = !DILocation(line: 348, column: 25, scope: !1146, inlinedAt: !1141)
!1148 = !DILocation(line: 340, column: 19, scope: !705, inlinedAt: !1141)
!1149 = !DILocation(line: 349, column: 33, scope: !1146, inlinedAt: !1141)
!1150 = !DILocation(line: 349, column: 14, scope: !1146, inlinedAt: !1141)
!1151 = !DILocation(line: 349, column: 11, scope: !1146, inlinedAt: !1141)
!1152 = !DILocation(line: 352, column: 16, scope: !1146, inlinedAt: !1141)
!1153 = !DILocation(line: 352, column: 21, scope: !1146, inlinedAt: !1141)
!1154 = !DILocation(line: 347, column: 5, scope: !705, inlinedAt: !1141)
!1155 = !DILocation(line: 792, column: 38, scope: !682)
!1156 = !{!1132, !1133, i64 0}
!1157 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 797, column: 5, scope: !682)
!1159 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1158)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 170, column: 20)
!1161 = distinct !DILexicalBlock(scope: !487, file: !1, line: 170, column: 9)
!1162 = !DILocation(line: 172, column: 9, scope: !1160, inlinedAt: !1158)
!1163 = !DILocation(line: 799, column: 36, scope: !682)
!1164 = !DILocation(line: 800, column: 5, scope: !682)
!1165 = !DILocation(line: 801, column: 1, scope: !682)
!1166 = !DILocation(line: 1373, column: 14, scope: !467)
!1167 = !DILocation(line: 1373, column: 14, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 2)
!1169 = !DILocation(line: 1366, column: 11, scope: !459)
!1170 = !DILocation(line: 1373, column: 12, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1172, file: !1, discriminator: 4)
!1172 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 3)
!1173 = !DILocation(line: 1373, column: 46, scope: !467)
!1174 = !DILocation(line: 1373, column: 49, scope: !467)
!1175 = !{!1062, !1062, i64 0}
!1176 = !DILocation(line: 1373, column: 52, scope: !467)
!1177 = !DILocation(line: 1373, column: 9, scope: !459)
!1178 = !DILocation(line: 1374, column: 9, scope: !466)
!1179 = !DILocation(line: 1374, column: 15, scope: !466)
!1180 = !DILocation(line: 1377, column: 9, scope: !466)
!1181 = !DILocation(line: 1377, column: 15, scope: !466)
!1182 = !DILocation(line: 1378, column: 17, scope: !466)
!1183 = !DILocation(line: 1375, column: 14, scope: !466)
!1184 = !DILocation(line: 1379, column: 14, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !466, file: !1, line: 1379, column: 13)
!1186 = !DILocation(line: 1379, column: 13, scope: !1185)
!1187 = !DILocation(line: 1379, column: 21, scope: !1185)
!1188 = !DILocation(line: 1380, column: 22, scope: !1185)
!1189 = !DILocation(line: 1380, column: 13, scope: !1185)
!1190 = !DILocation(line: 1381, column: 22, scope: !1185)
!1191 = !DILocation(line: 1382, column: 16, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1185, file: !1, discriminator: 1)
!1193 = !DILocation(line: 1382, column: 22, scope: !1185)
!1194 = !DILocation(line: 1379, column: 13, scope: !466)
!1195 = !DILocation(line: 1384, column: 13, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 1383, column: 9)
!1197 = !DILocation(line: 1388, column: 18, scope: !466)
!1198 = !DILocation(line: 1367, column: 9, scope: !459)
!1199 = !DILocation(line: 1389, column: 5, scope: !467)
!1200 = !DILocation(line: 1389, column: 5, scope: !466)
!1201 = !DILocation(line: 1393, column: 20, scope: !470)
!1202 = !DILocation(line: 1391, column: 19, scope: !470)
!1203 = !DILocation(line: 1394, column: 22, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !470, file: !1, line: 1394, column: 13)
!1205 = !DILocation(line: 1394, column: 13, scope: !470)
!1206 = !DILocation(line: 1397, column: 15, scope: !470)
!1207 = !DILocation(line: 1391, column: 30, scope: !470)
!1208 = !DILocation(line: 1398, column: 17, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !470, file: !1, line: 1398, column: 13)
!1210 = !DILocation(line: 1398, column: 13, scope: !470)
!1211 = !DILocation(line: 1401, column: 17, scope: !470)
!1212 = !DILocation(line: 1391, column: 36, scope: !470)
!1213 = !DILocation(line: 1402, column: 9, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !474, file: !1, discriminator: 1)
!1215 = !DILocation(line: 1402, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !474, file: !1, line: 1402, column: 9)
!1217 = !{!1218, !1133, i64 0}
!1218 = !{!"_object", !1133, i64 0, !1069, i64 8}
!1219 = !DILocation(line: 1402, column: 9, scope: !474)
!1220 = !DILocation(line: 1402, column: 9, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1216, file: !1, discriminator: 3)
!1222 = !{!1218, !1069, i64 8}
!1223 = !{!1224, !1069, i64 48}
!1224 = !{!"_typeobject", !1225, i64 0, !1069, i64 24, !1133, i64 32, !1133, i64 40, !1069, i64 48, !1069, i64 56, !1069, i64 64, !1069, i64 72, !1069, i64 80, !1069, i64 88, !1069, i64 96, !1069, i64 104, !1069, i64 112, !1069, i64 120, !1069, i64 128, !1069, i64 136, !1069, i64 144, !1069, i64 152, !1069, i64 160, !1133, i64 168, !1069, i64 176, !1069, i64 184, !1069, i64 192, !1069, i64 200, !1133, i64 208, !1069, i64 216, !1069, i64 224, !1069, i64 232, !1069, i64 240, !1069, i64 248, !1069, i64 256, !1069, i64 264, !1069, i64 272, !1069, i64 280, !1133, i64 288, !1069, i64 296, !1069, i64 304, !1069, i64 312, !1069, i64 320, !1069, i64 328, !1069, i64 336, !1069, i64 344, !1069, i64 352, !1069, i64 360, !1069, i64 368, !1069, i64 376, !1064, i64 384, !1069, i64 392}
!1225 = !{!"", !1218, i64 0, !1133, i64 16}
!1226 = !DILocation(line: 1403, column: 19, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !470, file: !1, line: 1403, column: 13)
!1228 = !DILocation(line: 1403, column: 13, scope: !470)
!1229 = !DILocation(line: 1404, column: 17, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !1, line: 1404, column: 17)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 1403, column: 28)
!1232 = !DILocation(line: 1408, column: 13, scope: !1231)
!1233 = !DILocation(line: 1336, column: 30, scope: !715, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 1411, column: 18, scope: !470)
!1235 = !DILocation(line: 1341, column: 15, scope: !1236, inlinedAt: !1234)
!1236 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1341, column: 9)
!1237 = !DILocation(line: 1341, column: 9, scope: !715, inlinedAt: !1234)
!1238 = !DILocation(line: 1345, column: 9, scope: !1239, inlinedAt: !1234)
!1239 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1345, column: 9)
!1240 = !DILocation(line: 1345, column: 36, scope: !1239, inlinedAt: !1234)
!1241 = !DILocation(line: 1345, column: 9, scope: !715, inlinedAt: !1234)
!1242 = !DILocation(line: 1348, column: 17, scope: !715, inlinedAt: !1234)
!1243 = !DILocation(line: 1338, column: 15, scope: !715, inlinedAt: !1234)
!1244 = !DILocation(line: 1349, column: 19, scope: !1245, inlinedAt: !1234)
!1245 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1349, column: 9)
!1246 = !DILocation(line: 1349, column: 9, scope: !715, inlinedAt: !1234)
!1247 = !DILocation(line: 1352, column: 14, scope: !715, inlinedAt: !1234)
!1248 = !DILocation(line: 1339, column: 10, scope: !715, inlinedAt: !1234)
!1249 = !DILocation(line: 1353, column: 5, scope: !1250, inlinedAt: !1234)
!1250 = !DILexicalBlockFile(scope: !721, file: !1, discriminator: 1)
!1251 = !DILocation(line: 1353, column: 5, scope: !1252, inlinedAt: !1234)
!1252 = distinct !DILexicalBlock(scope: !721, file: !1, line: 1353, column: 5)
!1253 = !DILocation(line: 1353, column: 5, scope: !721, inlinedAt: !1234)
!1254 = !DILocation(line: 1353, column: 5, scope: !1255, inlinedAt: !1234)
!1255 = !DILexicalBlockFile(scope: !1252, file: !1, discriminator: 3)
!1256 = !DILocation(line: 1411, column: 18, scope: !470)
!1257 = !DILocation(line: 1354, column: 16, scope: !1258, inlinedAt: !1234)
!1258 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1354, column: 9)
!1259 = !DILocation(line: 1354, column: 22, scope: !1258, inlinedAt: !1234)
!1260 = !DILocation(line: 1354, column: 25, scope: !1261, inlinedAt: !1234)
!1261 = !DILexicalBlockFile(scope: !1258, file: !1, discriminator: 1)
!1262 = !DILocation(line: 1354, column: 9, scope: !715, inlinedAt: !1234)
!1263 = !DILocation(line: 1357, column: 16, scope: !1264, inlinedAt: !1234)
!1264 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1357, column: 9)
!1265 = !DILocation(line: 1357, column: 30, scope: !1264, inlinedAt: !1234)
!1266 = !DILocation(line: 1357, column: 20, scope: !1264, inlinedAt: !1234)
!1267 = !DILocation(line: 1360, column: 12, scope: !715, inlinedAt: !1234)
!1268 = !DILocation(line: 1412, column: 9, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!1270 = !DILocation(line: 1412, column: 9, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !476, file: !1, line: 1412, column: 9)
!1272 = !DILocation(line: 1412, column: 9, scope: !476)
!1273 = !DILocation(line: 1412, column: 9, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1271, file: !1, discriminator: 3)
!1275 = !DILocation(line: 1413, column: 20, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !470, file: !1, line: 1413, column: 13)
!1277 = !DILocation(line: 1413, column: 13, scope: !470)
!1278 = !DILocation(line: 1414, column: 13, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 1413, column: 25)
!1280 = !DILocation(line: 1418, column: 12, scope: !459)
!1281 = !DILocation(line: 1418, column: 5, scope: !459)
!1282 = !DILocation(line: 1419, column: 1, scope: !459)
!1283 = !DILocation(line: 832, column: 23, scope: !722)
!1284 = !DILocation(line: 834, column: 5, scope: !722)
!1285 = !DILocation(line: 837, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !722, file: !1, line: 837, column: 9)
!1287 = !DILocation(line: 837, column: 28, scope: !1286)
!1288 = !DILocation(line: 837, column: 9, scope: !722)
!1289 = !DILocation(line: 840, column: 9, scope: !722)
!1290 = !DILocation(line: 846, column: 35, scope: !722)
!1291 = !{!1061, !1064, i64 8}
!1292 = !DILocation(line: 849, column: 12, scope: !722)
!1293 = !DILocation(line: 835, column: 12, scope: !722)
!1294 = !DILocation(line: 222, column: 19, scope: !729, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 851, column: 29, scope: !722)
!1296 = !DILocation(line: 224, column: 27, scope: !729, inlinedAt: !1295)
!1297 = !{!1298, !1069, i64 40}
!1298 = !{!"", !1299, i64 0, !1299, i64 32, !1299, i64 64}
!1299 = !{!"", !1069, i64 0, !1069, i64 8, !1069, i64 16, !1069, i64 24}
!1300 = !DILocation(line: 224, column: 49, scope: !729, inlinedAt: !1295)
!1301 = !{!1298, !1069, i64 32}
!1302 = !DILocation(line: 224, column: 12, scope: !729, inlinedAt: !1295)
!1303 = !DILocation(line: 851, column: 27, scope: !722)
!1304 = !DILocation(line: 852, column: 31, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !722, file: !1, line: 852, column: 9)
!1306 = !DILocation(line: 852, column: 9, scope: !722)
!1307 = !DILocation(line: 853, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 852, column: 40)
!1309 = !DILocation(line: 854, column: 9, scope: !1308)
!1310 = !DILocation(line: 858, column: 11, scope: !722)
!1311 = !DILocation(line: 858, column: 18, scope: !722)
!1312 = !{!1299, !1069, i64 8}
!1313 = !DILocation(line: 859, column: 11, scope: !722)
!1314 = !DILocation(line: 859, column: 19, scope: !722)
!1315 = !{!1299, !1069, i64 16}
!1316 = !DILocation(line: 860, column: 11, scope: !722)
!1317 = !DILocation(line: 860, column: 16, scope: !722)
!1318 = !{!1299, !1069, i64 24}
!1319 = !DILocation(line: 862, column: 11, scope: !722)
!1320 = !DILocation(line: 862, column: 15, scope: !722)
!1321 = !{!1299, !1069, i64 0}
!1322 = !DILocation(line: 863, column: 5, scope: !722)
!1323 = !DILocation(line: 834, column: 20, scope: !722)
!1324 = !DILocation(line: 864, column: 5, scope: !722)
!1325 = !DILocation(line: 867, column: 18, scope: !722)
!1326 = !DILocation(line: 868, column: 19, scope: !722)
!1327 = !DILocation(line: 869, column: 16, scope: !722)
!1328 = !DILocation(line: 871, column: 15, scope: !722)
!1329 = !DILocation(line: 872, column: 5, scope: !722)
!1330 = !DILocation(line: 873, column: 5, scope: !722)
!1331 = !DILocation(line: 875, column: 15, scope: !722)
!1332 = !DILocation(line: 876, column: 5, scope: !722)
!1333 = !DILocation(line: 877, column: 5, scope: !722)
!1334 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 881, column: 5, scope: !722)
!1336 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1335)
!1337 = !DILocation(line: 176, column: 9, scope: !1338, inlinedAt: !1335)
!1338 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 174, column: 10)
!1339 = !DILocation(line: 883, column: 5, scope: !722)
!1340 = !DILocation(line: 884, column: 1, scope: !722)
!1341 = !DILocation(line: 806, column: 28, scope: !1342, inlinedAt: !1343)
!1342 = distinct !DILexicalBlock(scope: !949, file: !1, line: 806, column: 9)
!1343 = distinct !DILocation(line: 1427, column: 5, scope: !477)
!1344 = !DILocation(line: 806, column: 40, scope: !1342, inlinedAt: !1343)
!1345 = !DILocation(line: 806, column: 9, scope: !949, inlinedAt: !1343)
!1346 = !DILocation(line: 808, column: 36, scope: !949, inlinedAt: !1343)
!1347 = !DILocation(line: 810, column: 5, scope: !949, inlinedAt: !1343)
!1348 = !DILocation(line: 889, column: 9, scope: !666, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 810, column: 5, scope: !949, inlinedAt: !1343)
!1350 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 897, column: 5, scope: !666, inlinedAt: !1349)
!1352 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1351)
!1353 = !DILocation(line: 172, column: 9, scope: !1160, inlinedAt: !1351)
!1354 = !DILocation(line: 901, column: 5, scope: !666, inlinedAt: !1349)
!1355 = !DILocation(line: 903, column: 5, scope: !666, inlinedAt: !1349)
!1356 = !DILocation(line: 904, column: 5, scope: !666, inlinedAt: !1349)
!1357 = !DILocation(line: 715, column: 5, scope: !492, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 907, column: 5, scope: !666, inlinedAt: !1349)
!1359 = !DILocation(line: 716, column: 25, scope: !492, inlinedAt: !1358)
!1360 = !DILocation(line: 716, column: 5, scope: !492, inlinedAt: !1358)
!1361 = !DILocation(line: 717, column: 31, scope: !492, inlinedAt: !1358)
!1362 = !{!1133, !1133, i64 0}
!1363 = !DILocation(line: 718, column: 36, scope: !492, inlinedAt: !1358)
!1364 = !DILocation(line: 719, column: 5, scope: !492, inlinedAt: !1358)
!1365 = !DILocation(line: 721, column: 27, scope: !492, inlinedAt: !1358)
!1366 = !DILocation(line: 721, column: 5, scope: !492, inlinedAt: !1358)
!1367 = !DILocation(line: 722, column: 25, scope: !492, inlinedAt: !1358)
!1368 = !DILocation(line: 722, column: 5, scope: !492, inlinedAt: !1358)
!1369 = !DILocation(line: 724, column: 27, scope: !492, inlinedAt: !1358)
!1370 = !DILocation(line: 724, column: 5, scope: !492, inlinedAt: !1358)
!1371 = !DILocation(line: 725, column: 25, scope: !492, inlinedAt: !1358)
!1372 = !DILocation(line: 725, column: 5, scope: !492, inlinedAt: !1358)
!1373 = !DILocation(line: 908, column: 14, scope: !666, inlinedAt: !1349)
!1374 = !DILocation(line: 228, column: 16, scope: !501, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 908, column: 5, scope: !666, inlinedAt: !1349)
!1376 = !DILocation(line: 230, column: 20, scope: !501, inlinedAt: !1375)
!1377 = !{!1298, !1069, i64 56}
!1378 = !DILocation(line: 230, column: 40, scope: !501, inlinedAt: !1375)
!1379 = !DILocation(line: 230, column: 5, scope: !501, inlinedAt: !1375)
!1380 = !DILocation(line: 909, column: 27, scope: !666, inlinedAt: !1349)
!1381 = !DILocation(line: 910, column: 1, scope: !666, inlinedAt: !1349)
!1382 = !DILocation(line: 813, column: 27, scope: !949, inlinedAt: !1343)
!1383 = !DILocation(line: 813, column: 5, scope: !949, inlinedAt: !1343)
!1384 = !DILocation(line: 814, column: 27, scope: !949, inlinedAt: !1343)
!1385 = !DILocation(line: 814, column: 5, scope: !949, inlinedAt: !1343)
!1386 = !DILocation(line: 815, column: 27, scope: !949, inlinedAt: !1343)
!1387 = !DILocation(line: 815, column: 5, scope: !949, inlinedAt: !1343)
!1388 = !DILocation(line: 818, column: 9, scope: !1389, inlinedAt: !1343)
!1389 = distinct !DILexicalBlock(scope: !949, file: !1, line: 818, column: 9)
!1390 = !DILocation(line: 818, column: 21, scope: !1389, inlinedAt: !1343)
!1391 = !DILocation(line: 818, column: 9, scope: !949, inlinedAt: !1343)
!1392 = !DILocation(line: 819, column: 9, scope: !1393, inlinedAt: !1343)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 818, column: 30)
!1394 = !DILocation(line: 820, column: 21, scope: !1393, inlinedAt: !1343)
!1395 = !DILocation(line: 821, column: 5, scope: !1393, inlinedAt: !1343)
!1396 = !DILocation(line: 825, column: 25, scope: !949, inlinedAt: !1343)
!1397 = !DILocation(line: 825, column: 5, scope: !949, inlinedAt: !1343)
!1398 = !DILocation(line: 828, column: 5, scope: !1399, inlinedAt: !1343)
!1399 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 1)
!1400 = !DILocation(line: 828, column: 5, scope: !955, inlinedAt: !1343)
!1401 = !DILocation(line: 828, column: 5, scope: !952, inlinedAt: !1343)
!1402 = !DILocation(line: 828, column: 5, scope: !1403, inlinedAt: !1343)
!1403 = !DILexicalBlockFile(scope: !954, file: !1, discriminator: 4)
!1404 = !DILocation(line: 828, column: 5, scope: !1405, inlinedAt: !1343)
!1405 = distinct !DILexicalBlock(scope: !954, file: !1, line: 828, column: 5)
!1406 = !DILocation(line: 828, column: 5, scope: !954, inlinedAt: !1343)
!1407 = !DILocation(line: 828, column: 5, scope: !1408, inlinedAt: !1343)
!1408 = !DILexicalBlockFile(scope: !1405, file: !1, discriminator: 6)
!1409 = !DILocation(line: 1427, column: 5, scope: !477)
!1410 = !DILocation(line: 1428, column: 1, scope: !477)
!1411 = !DILocation(line: 928, column: 37, scope: !481)
!1412 = !DILocation(line: 930, column: 28, scope: !481)
!1413 = !DILocation(line: 930, column: 12, scope: !481)
!1414 = !DILocation(line: 930, column: 5, scope: !481)
!1415 = !DILocation(line: 939, column: 39, scope: !484)
!1416 = !DILocation(line: 941, column: 9, scope: !484)
!1417 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 944, column: 5, scope: !484)
!1419 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1418)
!1420 = !DILocation(line: 172, column: 9, scope: !1160, inlinedAt: !1418)
!1421 = !DILocation(line: 715, column: 5, scope: !492, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 945, column: 5, scope: !484)
!1423 = !DILocation(line: 716, column: 25, scope: !492, inlinedAt: !1422)
!1424 = !DILocation(line: 716, column: 5, scope: !492, inlinedAt: !1422)
!1425 = !DILocation(line: 717, column: 31, scope: !492, inlinedAt: !1422)
!1426 = !DILocation(line: 718, column: 36, scope: !492, inlinedAt: !1422)
!1427 = !DILocation(line: 719, column: 5, scope: !492, inlinedAt: !1422)
!1428 = !DILocation(line: 721, column: 27, scope: !492, inlinedAt: !1422)
!1429 = !DILocation(line: 721, column: 5, scope: !492, inlinedAt: !1422)
!1430 = !DILocation(line: 722, column: 25, scope: !492, inlinedAt: !1422)
!1431 = !DILocation(line: 722, column: 5, scope: !492, inlinedAt: !1422)
!1432 = !DILocation(line: 724, column: 27, scope: !492, inlinedAt: !1422)
!1433 = !DILocation(line: 724, column: 5, scope: !492, inlinedAt: !1422)
!1434 = !DILocation(line: 725, column: 25, scope: !492, inlinedAt: !1422)
!1435 = !DILocation(line: 725, column: 5, scope: !492, inlinedAt: !1422)
!1436 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 946, column: 5, scope: !484)
!1438 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1437)
!1439 = !DILocation(line: 176, column: 9, scope: !1338, inlinedAt: !1437)
!1440 = !DILocation(line: 948, column: 5, scope: !484)
!1441 = !DILocation(line: 942, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !484, file: !1, line: 941, column: 9)
!1443 = !DILocation(line: 949, column: 1, scope: !484)
!1444 = !DILocation(line: 1087, column: 37, scope: !511)
!1445 = !DILocation(line: 1087, column: 53, scope: !511)
!1446 = !DILocation(line: 1089, column: 5, scope: !511)
!1447 = !DILocation(line: 1092, column: 16, scope: !511)
!1448 = !DILocation(line: 1093, column: 16, scope: !511)
!1449 = !DILocation(line: 1094, column: 23, scope: !511)
!1450 = !DILocation(line: 1093, column: 27, scope: !511)
!1451 = !DILocation(line: 1094, column: 16, scope: !511)
!1452 = !DILocation(line: 1094, column: 21, scope: !511)
!1453 = !{!1454, !1069, i64 16}
!1454 = !{!"", !1069, i64 0, !1069, i64 8, !1069, i64 16}
!1455 = !DILocation(line: 1095, column: 25, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1095, column: 9)
!1457 = !DILocation(line: 1095, column: 9, scope: !511)
!1458 = !DILocation(line: 1098, column: 9, scope: !511)
!1459 = !DILocation(line: 212, column: 22, scope: !566, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 1103, column: 29, scope: !511)
!1461 = !DILocation(line: 213, column: 39, scope: !566, inlinedAt: !1460)
!1462 = !DILocation(line: 214, column: 42, scope: !566, inlinedAt: !1460)
!1463 = !DILocation(line: 216, column: 12, scope: !566, inlinedAt: !1460)
!1464 = !DILocation(line: 1103, column: 27, scope: !511)
!1465 = !{!1454, !1069, i64 8}
!1466 = !DILocation(line: 1106, column: 31, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1106, column: 9)
!1468 = !DILocation(line: 1106, column: 9, scope: !511)
!1469 = !DILocation(line: 1107, column: 9, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 1106, column: 40)
!1471 = !DILocation(line: 1108, column: 9, scope: !1470)
!1472 = !DILocation(line: 1111, column: 5, scope: !511)
!1473 = !DILocation(line: 1112, column: 44, scope: !511)
!1474 = !DILocation(line: 1121, column: 44, scope: !511)
!1475 = !DILocation(line: 1112, column: 23, scope: !511)
!1476 = !{!1454, !1069, i64 0}
!1477 = !DILocation(line: 1113, column: 5, scope: !511)
!1478 = !DILocation(line: 1115, column: 27, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1115, column: 9)
!1480 = !DILocation(line: 1115, column: 9, scope: !511)
!1481 = !DILocation(line: 1116, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 1115, column: 36)
!1483 = !DILocation(line: 1117, column: 9, scope: !1482)
!1484 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 1120, column: 5, scope: !511)
!1486 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1485)
!1487 = !DILocation(line: 172, column: 9, scope: !1160, inlinedAt: !1485)
!1488 = !DILocation(line: 1121, column: 11, scope: !511)
!1489 = !DILocation(line: 1090, column: 9, scope: !511)
!1490 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 1123, column: 5, scope: !511)
!1492 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1491)
!1493 = !DILocation(line: 176, column: 9, scope: !1338, inlinedAt: !1491)
!1494 = !DILocation(line: 1124, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1124, column: 9)
!1496 = !DILocation(line: 1124, column: 9, scope: !511)
!1497 = !DILocation(line: 1130, column: 5, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 1)
!1499 = !DILocation(line: 1130, column: 5, scope: !565)
!1500 = !DILocation(line: 1130, column: 5, scope: !561)
!1501 = !DILocation(line: 1130, column: 5, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !564, file: !1, discriminator: 2)
!1503 = !DILocation(line: 1130, column: 5, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !563, file: !1, discriminator: 4)
!1505 = !DILocation(line: 1130, column: 5, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !563, file: !1, line: 1130, column: 5)
!1507 = !DILocation(line: 1130, column: 5, scope: !563)
!1508 = !DILocation(line: 1130, column: 5, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1506, file: !1, discriminator: 6)
!1510 = !DILocation(line: 1133, column: 20, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1133, column: 9)
!1512 = !DILocation(line: 1133, column: 31, scope: !1511)
!1513 = !DILocation(line: 1133, column: 9, scope: !511)
!1514 = !DILocation(line: 1134, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 1133, column: 40)
!1516 = !DILocation(line: 1136, column: 42, scope: !1515)
!1517 = !DILocation(line: 1136, column: 9, scope: !1515)
!1518 = !DILocation(line: 1137, column: 5, scope: !1515)
!1519 = !DILocation(line: 1138, column: 20, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1138, column: 9)
!1521 = !DILocation(line: 1138, column: 27, scope: !1520)
!1522 = !DILocation(line: 1138, column: 9, scope: !511)
!1523 = !DILocation(line: 1139, column: 9, scope: !1520)
!1524 = !DILocation(line: 1141, column: 23, scope: !511)
!1525 = !DILocation(line: 1141, column: 5, scope: !511)
!1526 = !DILocation(line: 1142, column: 1, scope: !511)
!1527 = !DILocation(line: 1154, column: 47, scope: !647)
!1528 = !DILocation(line: 1154, column: 63, scope: !647)
!1529 = !DILocation(line: 1158, column: 5, scope: !647)
!1530 = !DILocation(line: 1161, column: 9, scope: !647)
!1531 = !DILocation(line: 1162, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !647, file: !1, line: 1161, column: 9)
!1533 = !DILocation(line: 1164, column: 12, scope: !647)
!1534 = !DILocation(line: 1156, column: 19, scope: !647)
!1535 = !DILocation(line: 1165, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !647, file: !1, line: 1165, column: 9)
!1537 = !{!1224, !1133, i64 168}
!1538 = !DILocation(line: 1166, column: 36, scope: !1536)
!1539 = !DILocation(line: 1157, column: 11, scope: !647)
!1540 = !DILocation(line: 1166, column: 24, scope: !1536)
!1541 = !DILocation(line: 1165, column: 9, scope: !647)
!1542 = !DILocation(line: 1170, column: 5, scope: !647)
!1543 = !DILocation(line: 1171, column: 13, scope: !647)
!1544 = !DILocation(line: 1159, column: 9, scope: !647)
!1545 = !DILocation(line: 1172, column: 5, scope: !647)
!1546 = !DILocation(line: 1174, column: 10, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !647, file: !1, line: 1174, column: 9)
!1548 = !DILocation(line: 1174, column: 9, scope: !647)
!1549 = !DILocation(line: 1175, column: 9, scope: !1547)
!1550 = !DILocation(line: 1177, column: 40, scope: !647)
!1551 = !{!1552, !1069, i64 8}
!1552 = !{!"", !1133, i64 0, !1069, i64 8}
!1553 = !DILocation(line: 1177, column: 12, scope: !647)
!1554 = !DILocation(line: 1177, column: 5, scope: !647)
!1555 = !DILocation(line: 1178, column: 1, scope: !647)
!1556 = !DILocation(line: 1187, column: 32, scope: !657)
!1557 = !DILocation(line: 1187, column: 48, scope: !657)
!1558 = !DILocation(line: 1189, column: 5, scope: !657)
!1559 = !DILocation(line: 1189, column: 16, scope: !657)
!1560 = !DILocation(line: 1192, column: 10, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !657, file: !1, line: 1192, column: 9)
!1562 = !DILocation(line: 1192, column: 9, scope: !657)
!1563 = !DILocation(line: 1195, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !657, file: !1, line: 1195, column: 9)
!1565 = !DILocation(line: 1195, column: 16, scope: !1564)
!1566 = !DILocation(line: 1195, column: 30, scope: !1564)
!1567 = !DILocation(line: 1195, column: 20, scope: !1564)
!1568 = !DILocation(line: 1196, column: 22, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 1195, column: 44)
!1570 = !DILocation(line: 1196, column: 9, scope: !1569)
!1571 = !DILocation(line: 1199, column: 9, scope: !1569)
!1572 = !DILocation(line: 1201, column: 18, scope: !657)
!1573 = !DILocation(line: 1190, column: 9, scope: !657)
!1574 = !DILocation(line: 1203, column: 9, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !657, file: !1, line: 1203, column: 9)
!1576 = !DILocation(line: 1203, column: 39, scope: !1575)
!1577 = !DILocation(line: 1203, column: 9, scope: !657)
!1578 = !DILocation(line: 1206, column: 5, scope: !657)
!1579 = !DILocation(line: 1207, column: 1, scope: !657)
!1580 = !DILocation(line: 1216, column: 31, scope: !663)
!1581 = !DILocation(line: 1218, column: 5, scope: !663)
!1582 = !DILocation(line: 889, column: 9, scope: !666, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 1218, column: 5, scope: !663)
!1584 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 897, column: 5, scope: !666, inlinedAt: !1583)
!1586 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1585)
!1587 = !DILocation(line: 172, column: 9, scope: !1160, inlinedAt: !1585)
!1588 = !DILocation(line: 901, column: 5, scope: !666, inlinedAt: !1583)
!1589 = !DILocation(line: 903, column: 5, scope: !666, inlinedAt: !1583)
!1590 = !DILocation(line: 904, column: 5, scope: !666, inlinedAt: !1583)
!1591 = !DILocation(line: 715, column: 5, scope: !492, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 907, column: 5, scope: !666, inlinedAt: !1583)
!1593 = !DILocation(line: 716, column: 25, scope: !492, inlinedAt: !1592)
!1594 = !DILocation(line: 716, column: 5, scope: !492, inlinedAt: !1592)
!1595 = !DILocation(line: 717, column: 31, scope: !492, inlinedAt: !1592)
!1596 = !DILocation(line: 718, column: 36, scope: !492, inlinedAt: !1592)
!1597 = !DILocation(line: 719, column: 5, scope: !492, inlinedAt: !1592)
!1598 = !DILocation(line: 721, column: 27, scope: !492, inlinedAt: !1592)
!1599 = !DILocation(line: 721, column: 5, scope: !492, inlinedAt: !1592)
!1600 = !DILocation(line: 722, column: 25, scope: !492, inlinedAt: !1592)
!1601 = !DILocation(line: 722, column: 5, scope: !492, inlinedAt: !1592)
!1602 = !DILocation(line: 724, column: 27, scope: !492, inlinedAt: !1592)
!1603 = !DILocation(line: 724, column: 5, scope: !492, inlinedAt: !1592)
!1604 = !DILocation(line: 725, column: 25, scope: !492, inlinedAt: !1592)
!1605 = !DILocation(line: 725, column: 5, scope: !492, inlinedAt: !1592)
!1606 = !DILocation(line: 908, column: 14, scope: !666, inlinedAt: !1583)
!1607 = !DILocation(line: 228, column: 16, scope: !501, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 908, column: 5, scope: !666, inlinedAt: !1583)
!1609 = !DILocation(line: 230, column: 20, scope: !501, inlinedAt: !1608)
!1610 = !DILocation(line: 230, column: 40, scope: !501, inlinedAt: !1608)
!1611 = !DILocation(line: 230, column: 5, scope: !501, inlinedAt: !1608)
!1612 = !DILocation(line: 909, column: 27, scope: !666, inlinedAt: !1583)
!1613 = !DILocation(line: 910, column: 1, scope: !666, inlinedAt: !1583)
!1614 = !DILocation(line: 1219, column: 5, scope: !663)
!1615 = !DILocation(line: 1232, column: 46, scope: !667)
!1616 = !DILocation(line: 1234, column: 47, scope: !667)
!1617 = !DILocation(line: 1234, column: 28, scope: !667)
!1618 = !DILocation(line: 1234, column: 12, scope: !667)
!1619 = !DILocation(line: 1234, column: 5, scope: !667)
!1620 = !DILocation(line: 1244, column: 46, scope: !670)
!1621 = !DILocation(line: 1249, column: 31, scope: !670)
!1622 = !DILocation(line: 1249, column: 12, scope: !670)
!1623 = !DILocation(line: 1246, column: 12, scope: !670)
!1624 = !DILocation(line: 1250, column: 32, scope: !670)
!1625 = !DILocation(line: 1250, column: 13, scope: !670)
!1626 = !DILocation(line: 1250, column: 10, scope: !670)
!1627 = !DILocation(line: 1252, column: 5, scope: !670)
!1628 = !DILocation(line: 1253, column: 32, scope: !670)
!1629 = !DILocation(line: 1253, column: 13, scope: !670)
!1630 = !DILocation(line: 1253, column: 10, scope: !670)
!1631 = !DILocation(line: 1254, column: 5, scope: !670)
!1632 = !DILocation(line: 1256, column: 16, scope: !670)
!1633 = !DILocation(line: 1247, column: 15, scope: !670)
!1634 = !DILocation(line: 1257, column: 12, scope: !670)
!1635 = !DILocation(line: 1257, column: 5, scope: !670)
!1636 = !DILocation(line: 1267, column: 41, scope: !675)
!1637 = !DILocation(line: 1272, column: 9, scope: !675)
!1638 = !DILocation(line: 1273, column: 16, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !675, file: !1, line: 1272, column: 9)
!1640 = !DILocation(line: 1273, column: 9, scope: !1639)
!1641 = !DILocation(line: 1275, column: 5, scope: !675)
!1642 = !DILocation(line: 1276, column: 12, scope: !675)
!1643 = !DILocation(line: 1269, column: 16, scope: !675)
!1644 = !DILocation(line: 1277, column: 17, scope: !675)
!1645 = !DILocation(line: 1269, column: 22, scope: !675)
!1646 = !DILocation(line: 1278, column: 5, scope: !675)
!1647 = !DILocation(line: 1280, column: 16, scope: !675)
!1648 = !DILocation(line: 1270, column: 15, scope: !675)
!1649 = !DILocation(line: 1281, column: 21, scope: !675)
!1650 = !DILocation(line: 1270, column: 26, scope: !675)
!1651 = !DILocation(line: 1282, column: 12, scope: !675)
!1652 = !DILocation(line: 1282, column: 5, scope: !675)
!1653 = !DILocation(line: 1283, column: 1, scope: !675)
!1654 = !DILocation(line: 695, column: 49, scope: !493)
!1655 = !DILocation(line: 695, column: 62, scope: !493)
!1656 = !DILocation(line: 697, column: 52, scope: !493)
!1657 = !{!1658, !1069, i64 8}
!1658 = !{!"", !1659, i64 0, !1069, i64 8, !1133, i64 16}
!1659 = !{!"_Py_slist_item_s", !1069, i64 0}
!1660 = !DILocation(line: 228, column: 16, scope: !501, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 698, column: 5, scope: !493)
!1662 = !DILocation(line: 230, column: 20, scope: !501, inlinedAt: !1661)
!1663 = !DILocation(line: 230, column: 40, scope: !501, inlinedAt: !1661)
!1664 = !DILocation(line: 230, column: 5, scope: !501, inlinedAt: !1661)
!1665 = !DILocation(line: 699, column: 5, scope: !493)
!1666 = !DILocation(line: 687, column: 51, scope: !504)
!1667 = !DILocation(line: 687, column: 64, scope: !504)
!1668 = !DILocation(line: 689, column: 45, scope: !504)
!1669 = !DILocation(line: 689, column: 15, scope: !504)
!1670 = !DILocation(line: 690, column: 5, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !510, file: !1, discriminator: 1)
!1672 = !DILocation(line: 690, column: 5, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !510, file: !1, line: 690, column: 5)
!1674 = !DILocation(line: 690, column: 5, scope: !510)
!1675 = !DILocation(line: 690, column: 5, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1673, file: !1, discriminator: 3)
!1677 = !DILocation(line: 691, column: 5, scope: !504)
!1678 = !DILocation(line: 1048, column: 52, scope: !573)
!1679 = !DILocation(line: 1048, column: 65, scope: !573)
!1680 = !DILocation(line: 1057, column: 60, scope: !573)
!1681 = !DILocation(line: 1015, column: 52, scope: !584, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 1057, column: 23, scope: !573)
!1683 = !DILocation(line: 1017, column: 15, scope: !584, inlinedAt: !1682)
!1684 = !DILocation(line: 1020, column: 17, scope: !584, inlinedAt: !1682)
!1685 = !DILocation(line: 1021, column: 19, scope: !1686, inlinedAt: !1682)
!1686 = distinct !DILexicalBlock(scope: !584, file: !1, line: 1021, column: 9)
!1687 = !DILocation(line: 1021, column: 9, scope: !584, inlinedAt: !1682)
!1688 = !DILocation(line: 1055, column: 24, scope: !573)
!1689 = !DILocation(line: 1024, column: 37, scope: !584, inlinedAt: !1682)
!1690 = !{!1552, !1133, i64 0}
!1691 = !DILocation(line: 1024, column: 12, scope: !584, inlinedAt: !1682)
!1692 = !DILocation(line: 1018, column: 15, scope: !584, inlinedAt: !1682)
!1693 = !DILocation(line: 1025, column: 14, scope: !596, inlinedAt: !1682)
!1694 = !DILocation(line: 1025, column: 9, scope: !584, inlinedAt: !1682)
!1695 = !DILocation(line: 1026, column: 9, scope: !1696, inlinedAt: !1682)
!1696 = !DILexicalBlockFile(scope: !594, file: !1, discriminator: 1)
!1697 = !DILocation(line: 1026, column: 9, scope: !1698, inlinedAt: !1682)
!1698 = distinct !DILexicalBlock(scope: !594, file: !1, line: 1026, column: 9)
!1699 = !DILocation(line: 1026, column: 9, scope: !594, inlinedAt: !1682)
!1700 = !DILocation(line: 1026, column: 9, scope: !1701, inlinedAt: !1682)
!1701 = !DILexicalBlockFile(scope: !1698, file: !1, discriminator: 3)
!1702 = !DILocation(line: 1057, column: 23, scope: !573)
!1703 = !DILocation(line: 1029, column: 5, scope: !584, inlinedAt: !1682)
!1704 = !DILocation(line: 1031, column: 46, scope: !584, inlinedAt: !1682)
!1705 = !DILocation(line: 1031, column: 17, scope: !584, inlinedAt: !1682)
!1706 = !DILocation(line: 1018, column: 22, scope: !584, inlinedAt: !1682)
!1707 = !DILocation(line: 1032, column: 19, scope: !600, inlinedAt: !1682)
!1708 = !DILocation(line: 1032, column: 9, scope: !584, inlinedAt: !1682)
!1709 = !DILocation(line: 1033, column: 9, scope: !1710, inlinedAt: !1682)
!1710 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 1)
!1711 = !DILocation(line: 1033, column: 9, scope: !1712, inlinedAt: !1682)
!1712 = distinct !DILexicalBlock(scope: !598, file: !1, line: 1033, column: 9)
!1713 = !DILocation(line: 1033, column: 9, scope: !598, inlinedAt: !1682)
!1714 = !DILocation(line: 1033, column: 9, scope: !1715, inlinedAt: !1682)
!1715 = !DILexicalBlockFile(scope: !1712, file: !1, discriminator: 3)
!1716 = !DILocation(line: 1036, column: 5, scope: !584, inlinedAt: !1682)
!1717 = !DILocation(line: 1052, column: 15, scope: !573)
!1718 = !DILocation(line: 1061, column: 37, scope: !573)
!1719 = !DILocation(line: 1061, column: 11, scope: !573)
!1720 = !DILocation(line: 1053, column: 9, scope: !573)
!1721 = !DILocation(line: 1062, column: 5, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !583, file: !1, discriminator: 1)
!1723 = !DILocation(line: 1062, column: 5, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !583, file: !1, line: 1062, column: 5)
!1725 = !DILocation(line: 1062, column: 5, scope: !583)
!1726 = !DILocation(line: 1062, column: 5, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1724, file: !1, discriminator: 3)
!1728 = !DILocation(line: 1064, column: 9, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !573, file: !1, line: 1063, column: 9)
!1730 = !DILocation(line: 1067, column: 1, scope: !573)
!1731 = !DILocation(line: 1070, column: 55, scope: !640)
!1732 = !DILocation(line: 1070, column: 68, scope: !640)
!1733 = !DILocation(line: 1072, column: 33, scope: !640)
!1734 = !DILocation(line: 1072, column: 15, scope: !640)
!1735 = !DILocation(line: 1073, column: 5, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !646, file: !1, discriminator: 1)
!1737 = !DILocation(line: 1073, column: 5, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !646, file: !1, line: 1073, column: 5)
!1739 = !DILocation(line: 1073, column: 5, scope: !646)
!1740 = !DILocation(line: 1073, column: 5, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1738, file: !1, discriminator: 3)
!1742 = !DILocation(line: 1074, column: 5, scope: !640)
!1743 = !DILocation(line: 977, column: 36, scope: !601)
!1744 = !DILocation(line: 977, column: 64, scope: !601)
!1745 = !DILocation(line: 980, column: 5, scope: !601)
!1746 = !DILocation(line: 982, column: 22, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !601, file: !1, line: 982, column: 9)
!1748 = !DILocation(line: 982, column: 9, scope: !601)
!1749 = !DILocation(line: 983, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !1, line: 983, column: 13)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 982, column: 31)
!1752 = !DILocation(line: 983, column: 13, scope: !1751)
!1753 = !DILocation(line: 980, column: 15, scope: !601)
!1754 = !DILocation(line: 984, column: 13, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !1, line: 983, column: 65)
!1756 = !DILocation(line: 985, column: 13, scope: !1755)
!1757 = !DILocation(line: 989, column: 37, scope: !601)
!1758 = !DILocation(line: 989, column: 26, scope: !601)
!1759 = !DILocation(line: 989, column: 14, scope: !601)
!1760 = !DILocation(line: 989, column: 12, scope: !601)
!1761 = !DILocation(line: 990, column: 16, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !601, file: !1, line: 990, column: 9)
!1763 = !DILocation(line: 990, column: 9, scope: !601)
!1764 = !DILocation(line: 993, column: 30, scope: !615)
!1765 = !DILocation(line: 993, column: 17, scope: !615)
!1766 = !DILocation(line: 993, column: 5, scope: !616)
!1767 = !DILocation(line: 999, column: 9, scope: !614)
!1768 = !DILocation(line: 994, column: 36, scope: !614)
!1769 = !DILocation(line: 956, column: 17, scope: !623, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 994, column: 17, scope: !614)
!1771 = !DILocation(line: 954, column: 15, scope: !623, inlinedAt: !1770)
!1772 = !DILocation(line: 957, column: 19, scope: !1773, inlinedAt: !1770)
!1773 = distinct !DILexicalBlock(scope: !623, file: !1, line: 957, column: 9)
!1774 = !DILocation(line: 957, column: 9, scope: !623, inlinedAt: !1770)
!1775 = !DILocation(line: 960, column: 16, scope: !1776, inlinedAt: !1770)
!1776 = distinct !DILexicalBlock(scope: !623, file: !1, line: 960, column: 9)
!1777 = !DILocation(line: 960, column: 25, scope: !1776, inlinedAt: !1770)
!1778 = !DILocation(line: 960, column: 9, scope: !623, inlinedAt: !1770)
!1779 = !DILocation(line: 961, column: 25, scope: !1776, inlinedAt: !1770)
!1780 = !DILocation(line: 961, column: 9, scope: !1776, inlinedAt: !1770)
!1781 = !DILocation(line: 963, column: 5, scope: !623, inlinedAt: !1770)
!1782 = !DILocation(line: 962, column: 5, scope: !623, inlinedAt: !1770)
!1783 = !DILocation(line: 966, column: 39, scope: !623, inlinedAt: !1770)
!1784 = !DILocation(line: 913, column: 19, scope: !635, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 966, column: 18, scope: !623, inlinedAt: !1770)
!1786 = !DILocation(line: 915, column: 16, scope: !1787, inlinedAt: !1785)
!1787 = distinct !DILexicalBlock(scope: !635, file: !1, line: 915, column: 9)
!1788 = !DILocation(line: 915, column: 9, scope: !635, inlinedAt: !1785)
!1789 = !DILocation(line: 918, column: 9, scope: !1787, inlinedAt: !1785)
!1790 = !DILocation(line: 967, column: 9, scope: !623, inlinedAt: !1770)
!1791 = !DILocation(line: 916, column: 32, scope: !1787, inlinedAt: !1785)
!1792 = !DILocation(line: 916, column: 16, scope: !1787, inlinedAt: !1785)
!1793 = !DILocation(line: 967, column: 20, scope: !634, inlinedAt: !1770)
!1794 = !DILocation(line: 968, column: 9, scope: !1795, inlinedAt: !1770)
!1795 = !DILexicalBlockFile(scope: !632, file: !1, discriminator: 1)
!1796 = !DILocation(line: 968, column: 9, scope: !1797, inlinedAt: !1770)
!1797 = distinct !DILexicalBlock(scope: !632, file: !1, line: 968, column: 9)
!1798 = !DILocation(line: 968, column: 9, scope: !632, inlinedAt: !1770)
!1799 = !DILocation(line: 968, column: 9, scope: !1800, inlinedAt: !1770)
!1800 = !DILexicalBlockFile(scope: !1797, file: !1, discriminator: 3)
!1801 = !DILocation(line: 994, column: 17, scope: !614)
!1802 = !DILocation(line: 980, column: 24, scope: !601)
!1803 = !DILocation(line: 996, column: 13, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !611, file: !1, discriminator: 1)
!1805 = !DILocation(line: 996, column: 13, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !611, file: !1, line: 996, column: 13)
!1807 = !DILocation(line: 996, column: 13, scope: !611)
!1808 = !DILocation(line: 996, column: 13, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1806, file: !1, discriminator: 3)
!1810 = !DILocation(line: 971, column: 5, scope: !623, inlinedAt: !1770)
!1811 = !DILocation(line: 993, column: 39, scope: !615)
!1812 = !DILocation(line: 979, column: 9, scope: !601)
!1813 = !DILocation(line: 1002, column: 9, scope: !601)
!1814 = !DILocation(line: 1011, column: 12, scope: !601)
!1815 = !DILocation(line: 1003, column: 13, scope: !620)
!1816 = !DILocation(line: 1003, column: 64, scope: !620)
!1817 = !DILocation(line: 1004, column: 13, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 1)
!1819 = !DILocation(line: 1004, column: 13, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !618, file: !1, line: 1004, column: 13)
!1821 = !DILocation(line: 1003, column: 13, scope: !621)
!1822 = !DILocation(line: 1004, column: 13, scope: !618)
!1823 = !DILocation(line: 1004, column: 13, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1820, file: !1, discriminator: 3)
!1825 = !DILocation(line: 1005, column: 13, scope: !619)
!1826 = !DILocation(line: 1006, column: 13, scope: !619)
!1827 = !DILocation(line: 1009, column: 9, scope: !621)
!1828 = !DILocation(line: 1010, column: 5, scope: !621)
!1829 = !DILocation(line: 1012, column: 1, scope: !601)
!1830 = !DILocation(line: 201, column: 39, scope: !683)
!1831 = !DILocation(line: 201, column: 73, scope: !683)
!1832 = !DILocation(line: 203, column: 13, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !683, file: !1, line: 203, column: 9)
!1834 = !DILocation(line: 206, column: 30, scope: !1833)
!1835 = !DILocation(line: 203, column: 21, scope: !1833)
!1836 = !DILocation(line: 203, column: 35, scope: !1833)
!1837 = !DILocation(line: 203, column: 9, scope: !683)
!1838 = !DILocation(line: 204, column: 35, scope: !1833)
!1839 = !DILocation(line: 204, column: 52, scope: !1833)
!1840 = !DILocation(line: 204, column: 17, scope: !1833)
!1841 = !DILocation(line: 204, column: 76, scope: !1833)
!1842 = !DILocation(line: 204, column: 9, scope: !1833)
!1843 = !DILocation(line: 206, column: 20, scope: !1833)
!1844 = !DILocation(line: 206, column: 9, scope: !1833)
!1845 = !DILocation(line: 207, column: 1, scope: !683)
!1846 = !DILocation(line: 234, column: 38, scope: !687)
!1847 = !DILocation(line: 237, column: 23, scope: !687)
!1848 = !DILocation(line: 237, column: 5, scope: !687)
!1849 = !DILocation(line: 241, column: 48, scope: !693)
!1850 = !DILocation(line: 242, column: 58, scope: !693)
!1851 = !DILocation(line: 244, column: 41, scope: !693)
!1852 = !DILocation(line: 244, column: 24, scope: !693)
!1853 = !DILocation(line: 248, column: 21, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !693, file: !1, line: 248, column: 9)
!1855 = !DILocation(line: 251, column: 31, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !1, line: 251, column: 5)
!1857 = distinct !DILexicalBlock(scope: !693, file: !1, line: 251, column: 5)
!1858 = !DILocation(line: 248, column: 43, scope: !1854)
!1859 = !DILocation(line: 248, column: 28, scope: !1854)
!1860 = !DILocation(line: 248, column: 9, scope: !693)
!1861 = !DILocation(line: 251, column: 17, scope: !1856)
!1862 = !DILocation(line: 251, column: 5, scope: !1857)
!1863 = !DILocation(line: 252, column: 19, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1856, file: !1, line: 251, column: 44)
!1865 = !DILocation(line: 255, column: 21, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 255, column: 13)
!1867 = !DILocation(line: 255, column: 39, scope: !1866)
!1868 = !DILocation(line: 255, column: 28, scope: !1866)
!1869 = !DILocation(line: 255, column: 13, scope: !1864)
!1870 = !DILocation(line: 258, column: 21, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 258, column: 13)
!1872 = !DILocation(line: 258, column: 41, scope: !1871)
!1873 = !DILocation(line: 258, column: 30, scope: !1871)
!1874 = !DILocation(line: 251, column: 40, scope: !1856)
!1875 = !DILocation(line: 246, column: 9, scope: !693)
!1876 = !DILocation(line: 258, column: 13, scope: !1864)
!1877 = !DILocation(line: 264, column: 1, scope: !693)
!1878 = !DILocation(line: 617, column: 30, scope: !732)
!1879 = !DILocation(line: 617, column: 42, scope: !732)
!1880 = !DILocation(line: 157, column: 40, scope: !742, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 624, column: 9, scope: !741)
!1882 = !DILocation(line: 157, column: 17, scope: !742, inlinedAt: !1881)
!1883 = !DILocation(line: 157, column: 11, scope: !742, inlinedAt: !1881)
!1884 = !DILocation(line: 163, column: 9, scope: !1885, inlinedAt: !1881)
!1885 = distinct !DILexicalBlock(scope: !742, file: !1, line: 158, column: 9)
!1886 = !DILocation(line: 624, column: 9, scope: !732)
!1887 = !DILocation(line: 626, column: 23, scope: !740)
!1888 = !DILocation(line: 626, column: 37, scope: !740)
!1889 = !DILocation(line: 626, column: 16, scope: !740)
!1890 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 632, column: 5, scope: !732)
!1892 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1891)
!1893 = !DILocation(line: 172, column: 9, scope: !1160, inlinedAt: !1891)
!1894 = !DILocation(line: 635, column: 17, scope: !732)
!1895 = !DILocation(line: 620, column: 22, scope: !732)
!1896 = !DILocation(line: 479, column: 26, scope: !745, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 636, column: 11, scope: !732)
!1898 = !DILocation(line: 479, column: 38, scope: !745, inlinedAt: !1897)
!1899 = !DILocation(line: 484, column: 18, scope: !745, inlinedAt: !1897)
!1900 = !DILocation(line: 484, column: 32, scope: !745, inlinedAt: !1897)
!1901 = !DILocation(line: 484, column: 11, scope: !745, inlinedAt: !1897)
!1902 = !DILocation(line: 482, column: 11, scope: !745, inlinedAt: !1897)
!1903 = !DILocation(line: 485, column: 13, scope: !1904, inlinedAt: !1897)
!1904 = distinct !DILexicalBlock(scope: !745, file: !1, line: 485, column: 9)
!1905 = !DILocation(line: 485, column: 9, scope: !745, inlinedAt: !1897)
!1906 = !DILocation(line: 488, column: 5, scope: !745, inlinedAt: !1897)
!1907 = !DILocation(line: 489, column: 9, scope: !1908, inlinedAt: !1897)
!1908 = distinct !DILexicalBlock(scope: !745, file: !1, line: 489, column: 9)
!1909 = !DILocation(line: 489, column: 42, scope: !1908, inlinedAt: !1897)
!1910 = !DILocation(line: 491, column: 9, scope: !1911, inlinedAt: !1897)
!1911 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 489, column: 47)
!1912 = !DILocation(line: 489, column: 9, scope: !745, inlinedAt: !1897)
!1913 = !DILocation(line: 492, column: 16, scope: !1911, inlinedAt: !1897)
!1914 = !DILocation(line: 492, column: 28, scope: !1911, inlinedAt: !1897)
!1915 = !DILocation(line: 492, column: 9, scope: !1911, inlinedAt: !1897)
!1916 = !DILocation(line: 493, column: 9, scope: !1911, inlinedAt: !1897)
!1917 = !DILocation(line: 636, column: 11, scope: !732)
!1918 = !DILocation(line: 622, column: 11, scope: !732)
!1919 = !DILocation(line: 637, column: 5, scope: !732)
!1920 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 642, column: 5, scope: !732)
!1922 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1921)
!1923 = !DILocation(line: 176, column: 9, scope: !1338, inlinedAt: !1921)
!1924 = !DILocation(line: 643, column: 5, scope: !732)
!1925 = !DILocation(line: 644, column: 1, scope: !732)
!1926 = !DILocation(line: 647, column: 31, scope: !906)
!1927 = !DILocation(line: 647, column: 42, scope: !906)
!1928 = !DILocation(line: 647, column: 54, scope: !906)
!1929 = !DILocation(line: 157, column: 40, scope: !742, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 654, column: 9, scope: !915)
!1931 = !DILocation(line: 157, column: 17, scope: !742, inlinedAt: !1930)
!1932 = !DILocation(line: 157, column: 11, scope: !742, inlinedAt: !1930)
!1933 = !DILocation(line: 163, column: 9, scope: !1885, inlinedAt: !1930)
!1934 = !DILocation(line: 654, column: 9, scope: !906)
!1935 = !DILocation(line: 658, column: 23, scope: !914)
!1936 = !DILocation(line: 658, column: 38, scope: !914)
!1937 = !DILocation(line: 658, column: 16, scope: !914)
!1938 = !DILocation(line: 652, column: 11, scope: !906)
!1939 = !DILocation(line: 660, column: 18, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !914, file: !1, line: 660, column: 13)
!1941 = !DILocation(line: 660, column: 33, scope: !1940)
!1942 = !DILocation(line: 660, column: 26, scope: !1940)
!1943 = !DILocation(line: 661, column: 13, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 660, column: 42)
!1945 = !DILocation(line: 468, column: 32, scope: !916, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 662, column: 13, scope: !1944)
!1947 = !DILocation(line: 470, column: 5, scope: !916, inlinedAt: !1946)
!1948 = !DILocation(line: 472, column: 27, scope: !1949, inlinedAt: !1946)
!1949 = distinct !DILexicalBlock(scope: !916, file: !1, line: 472, column: 9)
!1950 = !DILocation(line: 472, column: 9, scope: !1949, inlinedAt: !1946)
!1951 = !DILocation(line: 472, column: 9, scope: !916, inlinedAt: !1946)
!1952 = !DILocation(line: 474, column: 44, scope: !1953, inlinedAt: !1946)
!1953 = distinct !DILexicalBlock(scope: !1949, file: !1, line: 472, column: 76)
!1954 = !DILocation(line: 474, column: 35, scope: !1953, inlinedAt: !1946)
!1955 = !DILocation(line: 475, column: 5, scope: !1953, inlinedAt: !1946)
!1956 = !DILocation(line: 476, column: 1, scope: !916, inlinedAt: !1946)
!1957 = !DILocation(line: 663, column: 13, scope: !1944)
!1958 = !DILocation(line: 664, column: 9, scope: !1944)
!1959 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 671, column: 5, scope: !906)
!1961 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1960)
!1962 = !DILocation(line: 172, column: 9, scope: !1160, inlinedAt: !1960)
!1963 = !DILocation(line: 674, column: 17, scope: !906)
!1964 = !DILocation(line: 650, column: 22, scope: !906)
!1965 = !DILocation(line: 675, column: 12, scope: !906)
!1966 = !DILocation(line: 676, column: 5, scope: !906)
!1967 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 681, column: 5, scope: !906)
!1969 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !1968)
!1970 = !DILocation(line: 176, column: 9, scope: !1338, inlinedAt: !1968)
!1971 = !DILocation(line: 682, column: 5, scope: !906)
!1972 = !DILocation(line: 683, column: 1, scope: !906)
!1973 = !DILocation(line: 545, column: 24, scope: !927)
!1974 = !DILocation(line: 545, column: 35, scope: !927)
!1975 = !DILocation(line: 549, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !927, file: !1, line: 549, column: 9)
!1977 = !DILocation(line: 549, column: 9, scope: !927)
!1978 = !DILocation(line: 555, column: 12, scope: !927)
!1979 = !DILocation(line: 555, column: 24, scope: !927)
!1980 = !DILocation(line: 555, column: 5, scope: !927)
!1981 = !DILocation(line: 557, column: 5, scope: !927)
!1982 = !DILocation(line: 468, column: 32, scope: !916, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 558, column: 5, scope: !927)
!1984 = !DILocation(line: 470, column: 5, scope: !916, inlinedAt: !1983)
!1985 = !DILocation(line: 472, column: 27, scope: !1949, inlinedAt: !1983)
!1986 = !DILocation(line: 472, column: 9, scope: !1949, inlinedAt: !1983)
!1987 = !DILocation(line: 472, column: 9, scope: !916, inlinedAt: !1983)
!1988 = !DILocation(line: 474, column: 44, scope: !1953, inlinedAt: !1983)
!1989 = !DILocation(line: 474, column: 35, scope: !1953, inlinedAt: !1983)
!1990 = !DILocation(line: 475, column: 5, scope: !1953, inlinedAt: !1983)
!1991 = !DILocation(line: 476, column: 1, scope: !916, inlinedAt: !1983)
!1992 = !DILocation(line: 559, column: 5, scope: !927)
!1993 = !DILocation(line: 560, column: 1, scope: !927)
!1994 = !DILocation(line: 563, column: 30, scope: !932)
!1995 = !DILocation(line: 563, column: 42, scope: !932)
!1996 = !DILocation(line: 157, column: 40, scope: !742, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 567, column: 9, scope: !939)
!1998 = !DILocation(line: 157, column: 17, scope: !742, inlinedAt: !1997)
!1999 = !DILocation(line: 157, column: 11, scope: !742, inlinedAt: !1997)
!2000 = !DILocation(line: 163, column: 9, scope: !1885, inlinedAt: !1997)
!2001 = !DILocation(line: 567, column: 9, scope: !932)
!2002 = !DILocation(line: 569, column: 23, scope: !938)
!2003 = !DILocation(line: 569, column: 37, scope: !938)
!2004 = !DILocation(line: 569, column: 16, scope: !938)
!2005 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 575, column: 5, scope: !932)
!2007 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !2006)
!2008 = !DILocation(line: 172, column: 9, scope: !1160, inlinedAt: !2006)
!2009 = !DILocation(line: 479, column: 26, scope: !745, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 577, column: 11, scope: !932)
!2011 = !DILocation(line: 479, column: 38, scope: !745, inlinedAt: !2010)
!2012 = !DILocation(line: 484, column: 18, scope: !745, inlinedAt: !2010)
!2013 = !DILocation(line: 484, column: 32, scope: !745, inlinedAt: !2010)
!2014 = !DILocation(line: 484, column: 11, scope: !745, inlinedAt: !2010)
!2015 = !DILocation(line: 482, column: 11, scope: !745, inlinedAt: !2010)
!2016 = !DILocation(line: 485, column: 13, scope: !1904, inlinedAt: !2010)
!2017 = !DILocation(line: 485, column: 9, scope: !745, inlinedAt: !2010)
!2018 = !DILocation(line: 488, column: 5, scope: !745, inlinedAt: !2010)
!2019 = !DILocation(line: 489, column: 9, scope: !1908, inlinedAt: !2010)
!2020 = !DILocation(line: 489, column: 42, scope: !1908, inlinedAt: !2010)
!2021 = !DILocation(line: 491, column: 9, scope: !1911, inlinedAt: !2010)
!2022 = !DILocation(line: 489, column: 9, scope: !745, inlinedAt: !2010)
!2023 = !DILocation(line: 492, column: 16, scope: !1911, inlinedAt: !2010)
!2024 = !DILocation(line: 492, column: 28, scope: !1911, inlinedAt: !2010)
!2025 = !DILocation(line: 492, column: 9, scope: !1911, inlinedAt: !2010)
!2026 = !DILocation(line: 493, column: 9, scope: !1911, inlinedAt: !2010)
!2027 = !DILocation(line: 577, column: 11, scope: !932)
!2028 = !DILocation(line: 565, column: 11, scope: !932)
!2029 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 579, column: 5, scope: !932)
!2031 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !2030)
!2032 = !DILocation(line: 176, column: 9, scope: !1338, inlinedAt: !2030)
!2033 = !DILocation(line: 580, column: 5, scope: !932)
!2034 = !DILocation(line: 581, column: 1, scope: !932)
!2035 = !DILocation(line: 584, column: 31, scope: !940)
!2036 = !DILocation(line: 584, column: 42, scope: !940)
!2037 = !DILocation(line: 584, column: 54, scope: !940)
!2038 = !DILocation(line: 157, column: 40, scope: !742, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 588, column: 9, scope: !948)
!2040 = !DILocation(line: 157, column: 17, scope: !742, inlinedAt: !2039)
!2041 = !DILocation(line: 157, column: 11, scope: !742, inlinedAt: !2039)
!2042 = !DILocation(line: 163, column: 9, scope: !1885, inlinedAt: !2039)
!2043 = !DILocation(line: 588, column: 9, scope: !940)
!2044 = !DILocation(line: 595, column: 23, scope: !947)
!2045 = !DILocation(line: 595, column: 38, scope: !947)
!2046 = !DILocation(line: 595, column: 16, scope: !947)
!2047 = !DILocation(line: 586, column: 11, scope: !940)
!2048 = !DILocation(line: 596, column: 18, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !947, file: !1, line: 596, column: 13)
!2050 = !DILocation(line: 596, column: 33, scope: !2049)
!2051 = !DILocation(line: 596, column: 26, scope: !2049)
!2052 = !DILocation(line: 597, column: 13, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !1, line: 596, column: 42)
!2054 = !DILocation(line: 468, column: 32, scope: !916, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 598, column: 13, scope: !2053)
!2056 = !DILocation(line: 470, column: 5, scope: !916, inlinedAt: !2055)
!2057 = !DILocation(line: 472, column: 27, scope: !1949, inlinedAt: !2055)
!2058 = !DILocation(line: 472, column: 9, scope: !1949, inlinedAt: !2055)
!2059 = !DILocation(line: 472, column: 9, scope: !916, inlinedAt: !2055)
!2060 = !DILocation(line: 474, column: 44, scope: !1953, inlinedAt: !2055)
!2061 = !DILocation(line: 474, column: 35, scope: !1953, inlinedAt: !2055)
!2062 = !DILocation(line: 475, column: 5, scope: !1953, inlinedAt: !2055)
!2063 = !DILocation(line: 476, column: 1, scope: !916, inlinedAt: !2055)
!2064 = !DILocation(line: 599, column: 13, scope: !2053)
!2065 = !DILocation(line: 600, column: 9, scope: !2053)
!2066 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 607, column: 5, scope: !940)
!2068 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !2067)
!2069 = !DILocation(line: 172, column: 9, scope: !1160, inlinedAt: !2067)
!2070 = !DILocation(line: 609, column: 12, scope: !940)
!2071 = !DILocation(line: 167, column: 19, scope: !487, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 611, column: 5, scope: !940)
!2073 = !DILocation(line: 172, column: 32, scope: !1160, inlinedAt: !2072)
!2074 = !DILocation(line: 176, column: 9, scope: !1338, inlinedAt: !2072)
!2075 = !DILocation(line: 612, column: 5, scope: !940)
!2076 = !DILocation(line: 613, column: 1, scope: !940)
!2077 = !DILocation(line: 439, column: 29, scope: !751)
!2078 = !DILocation(line: 439, column: 41, scope: !751)
!2079 = !DILocation(line: 442, column: 5, scope: !751)
!2080 = !DILocation(line: 399, column: 17, scope: !760, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 449, column: 17, scope: !751)
!2082 = !DILocation(line: 391, column: 18, scope: !760, inlinedAt: !2081)
!2083 = !DILocation(line: 400, column: 16, scope: !760, inlinedAt: !2081)
!2084 = !DILocation(line: 400, column: 23, scope: !760, inlinedAt: !2081)
!2085 = !DILocation(line: 361, column: 35, scope: !770, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 401, column: 5, scope: !760, inlinedAt: !2081)
!2087 = !DILocation(line: 367, column: 14, scope: !770, inlinedAt: !2086)
!2088 = !DILocation(line: 363, column: 20, scope: !770, inlinedAt: !2086)
!2089 = !DILocation(line: 371, column: 16, scope: !2090, inlinedAt: !2086)
!2090 = distinct !DILexicalBlock(scope: !770, file: !1, line: 371, column: 9)
!2091 = !DILocation(line: 371, column: 9, scope: !770, inlinedAt: !2086)
!2092 = !DILocation(line: 378, column: 28, scope: !2093, inlinedAt: !2086)
!2093 = distinct !DILexicalBlock(scope: !770, file: !1, line: 378, column: 5)
!2094 = !DILocation(line: 378, column: 43, scope: !2095, inlinedAt: !2086)
!2095 = distinct !DILexicalBlock(scope: !2093, file: !1, line: 378, column: 5)
!2096 = !DILocation(line: 378, column: 5, scope: !2093, inlinedAt: !2086)
!2097 = !DILocation(line: 379, column: 70, scope: !2098, inlinedAt: !2086)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !1, line: 378, column: 79)
!2099 = !DILocation(line: 378, column: 71, scope: !2095, inlinedAt: !2086)
!2100 = !DILocation(line: 401, column: 5, scope: !760, inlinedAt: !2081)
!2101 = !DILocation(line: 379, column: 41, scope: !2098, inlinedAt: !2086)
!2102 = !DILocation(line: 267, column: 56, scope: !891, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 379, column: 9, scope: !2098, inlinedAt: !2086)
!2104 = !DILocation(line: 273, column: 23, scope: !891, inlinedAt: !2103)
!2105 = !DILocation(line: 273, column: 12, scope: !891, inlinedAt: !2103)
!2106 = !DILocation(line: 273, column: 21, scope: !891, inlinedAt: !2103)
!2107 = !DILocation(line: 274, column: 21, scope: !891, inlinedAt: !2103)
!2108 = !DILocation(line: 274, column: 12, scope: !891, inlinedAt: !2103)
!2109 = !DILocation(line: 276, column: 23, scope: !2110, inlinedAt: !2103)
!2110 = distinct !DILexicalBlock(scope: !891, file: !1, line: 276, column: 9)
!2111 = !DILocation(line: 276, column: 9, scope: !891, inlinedAt: !2103)
!2112 = !DILocation(line: 274, column: 19, scope: !891, inlinedAt: !2103)
!2113 = !DILocation(line: 279, column: 21, scope: !891, inlinedAt: !2103)
!2114 = !{!2115, !1069, i64 32}
!2115 = !{!"_frame", !1225, i64 0, !1069, i64 24, !1069, i64 32, !1069, i64 40, !1069, i64 48, !1069, i64 56, !1069, i64 64, !1069, i64 72, !1069, i64 80, !1069, i64 88, !1069, i64 96, !1069, i64 104, !1069, i64 112, !1064, i64 120, !1064, i64 124, !1064, i64 128, !1062, i64 132, !1062, i64 136, !1062, i64 376}
!2116 = !DILocation(line: 269, column: 19, scope: !891, inlinedAt: !2103)
!2117 = !DILocation(line: 280, column: 14, scope: !2118, inlinedAt: !2103)
!2118 = distinct !DILexicalBlock(scope: !891, file: !1, line: 280, column: 9)
!2119 = !DILocation(line: 280, column: 9, scope: !891, inlinedAt: !2103)
!2120 = !DILocation(line: 287, column: 15, scope: !2121, inlinedAt: !2103)
!2121 = distinct !DILexicalBlock(scope: !891, file: !1, line: 287, column: 9)
!2122 = !{!2123, !1069, i64 96}
!2123 = !{!"", !1218, i64 0, !1064, i64 16, !1064, i64 20, !1064, i64 24, !1064, i64 28, !1064, i64 32, !1069, i64 40, !1069, i64 48, !1069, i64 56, !1069, i64 64, !1069, i64 72, !1069, i64 80, !1069, i64 88, !1069, i64 96, !1069, i64 104, !1064, i64 112, !1069, i64 120, !1069, i64 128, !1069, i64 136}
!2124 = !DILocation(line: 287, column: 27, scope: !2121, inlinedAt: !2103)
!2125 = !DILocation(line: 287, column: 9, scope: !891, inlinedAt: !2103)
!2126 = !DILocation(line: 270, column: 15, scope: !891, inlinedAt: !2103)
!2127 = !DILocation(line: 299, column: 10, scope: !2128, inlinedAt: !2103)
!2128 = distinct !DILexicalBlock(scope: !891, file: !1, line: 299, column: 9)
!2129 = !DILocation(line: 299, column: 9, scope: !891, inlinedAt: !2103)
!2130 = !DILocation(line: 305, column: 10, scope: !2131, inlinedAt: !2103)
!2131 = distinct !DILexicalBlock(scope: !891, file: !1, line: 305, column: 9)
!2132 = !DILocation(line: 305, column: 9, scope: !891, inlinedAt: !2103)
!2133 = !DILocation(line: 315, column: 37, scope: !891, inlinedAt: !2103)
!2134 = !DILocation(line: 315, column: 60, scope: !891, inlinedAt: !2103)
!2135 = !DILocation(line: 315, column: 13, scope: !891, inlinedAt: !2103)
!2136 = !DILocation(line: 271, column: 28, scope: !891, inlinedAt: !2103)
!2137 = !DILocation(line: 316, column: 15, scope: !905, inlinedAt: !2103)
!2138 = !DILocation(line: 316, column: 9, scope: !891, inlinedAt: !2103)
!2139 = !DILocation(line: 317, column: 39, scope: !2140, inlinedAt: !2103)
!2140 = distinct !DILexicalBlock(scope: !905, file: !1, line: 316, column: 24)
!2141 = !DILocation(line: 318, column: 5, scope: !2140, inlinedAt: !2103)
!2142 = !DILocation(line: 322, column: 9, scope: !904, inlinedAt: !2103)
!2143 = !DILocation(line: 323, column: 31, scope: !903, inlinedAt: !2103)
!2144 = !DILocation(line: 323, column: 13, scope: !903, inlinedAt: !2103)
!2145 = !DILocation(line: 323, column: 73, scope: !903, inlinedAt: !2103)
!2146 = !DILocation(line: 323, column: 13, scope: !904, inlinedAt: !2103)
!2147 = !DILocation(line: 324, column: 13, scope: !2148, inlinedAt: !2103)
!2148 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 1)
!2149 = !DILocation(line: 324, column: 13, scope: !2150, inlinedAt: !2103)
!2150 = distinct !DILexicalBlock(scope: !901, file: !1, line: 324, column: 13)
!2151 = !DILocation(line: 324, column: 13, scope: !901, inlinedAt: !2103)
!2152 = !DILocation(line: 324, column: 13, scope: !2153, inlinedAt: !2103)
!2153 = !DILexicalBlockFile(scope: !2150, file: !1, discriminator: 3)
!2154 = !DILocation(line: 379, column: 9, scope: !2098, inlinedAt: !2086)
!2155 = !DILocation(line: 333, column: 21, scope: !891, inlinedAt: !2103)
!2156 = !DILocation(line: 334, column: 1, scope: !891, inlinedAt: !2103)
!2157 = !DILocation(line: 382, column: 26, scope: !2098, inlinedAt: !2086)
!2158 = !DILocation(line: 383, column: 53, scope: !2159, inlinedAt: !2086)
!2159 = distinct !DILexicalBlock(scope: !2098, file: !1, line: 383, column: 13)
!2160 = !DILocation(line: 383, column: 31, scope: !2159, inlinedAt: !2086)
!2161 = !DILocation(line: 383, column: 13, scope: !2098, inlinedAt: !2086)
!2162 = !DILocation(line: 402, column: 20, scope: !2163, inlinedAt: !2081)
!2163 = distinct !DILexicalBlock(scope: !760, file: !1, line: 402, column: 9)
!2164 = !DILocation(line: 402, column: 27, scope: !2163, inlinedAt: !2081)
!2165 = !DILocation(line: 402, column: 9, scope: !760, inlinedAt: !2081)
!2166 = !DILocation(line: 337, column: 29, scope: !705, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 404, column: 23, scope: !760, inlinedAt: !2081)
!2168 = !DILocation(line: 341, column: 9, scope: !705, inlinedAt: !2167)
!2169 = !DILocation(line: 342, column: 16, scope: !705, inlinedAt: !2167)
!2170 = !DILocation(line: 340, column: 16, scope: !705, inlinedAt: !2167)
!2171 = !DILocation(line: 347, column: 12, scope: !2172, inlinedAt: !2167)
!2172 = !DILexicalBlockFile(scope: !2173, file: !1, discriminator: 2)
!2173 = !DILexicalBlockFile(scope: !705, file: !1, discriminator: 1)
!2174 = !DILocation(line: 347, column: 18, scope: !705, inlinedAt: !2167)
!2175 = !DILocation(line: 347, column: 5, scope: !705, inlinedAt: !2167)
!2176 = !DILocation(line: 346, column: 13, scope: !705, inlinedAt: !2167)
!2177 = !DILocation(line: 404, column: 23, scope: !760, inlinedAt: !2081)
!2178 = !DILocation(line: 348, column: 46, scope: !1146, inlinedAt: !2167)
!2179 = !DILocation(line: 348, column: 25, scope: !1146, inlinedAt: !2167)
!2180 = !DILocation(line: 340, column: 19, scope: !705, inlinedAt: !2167)
!2181 = !DILocation(line: 349, column: 33, scope: !1146, inlinedAt: !2167)
!2182 = !DILocation(line: 349, column: 14, scope: !1146, inlinedAt: !2167)
!2183 = !DILocation(line: 350, column: 14, scope: !1146, inlinedAt: !2167)
!2184 = !DILocation(line: 343, column: 14, scope: !705, inlinedAt: !2167)
!2185 = !DILocation(line: 349, column: 11, scope: !1146, inlinedAt: !2167)
!2186 = !DILocation(line: 352, column: 16, scope: !1146, inlinedAt: !2167)
!2187 = !DILocation(line: 352, column: 21, scope: !1146, inlinedAt: !2167)
!2188 = !DILocation(line: 354, column: 44, scope: !1146, inlinedAt: !2167)
!2189 = !DILocation(line: 354, column: 14, scope: !1146, inlinedAt: !2167)
!2190 = !DILocation(line: 404, column: 16, scope: !760, inlinedAt: !2081)
!2191 = !DILocation(line: 404, column: 21, scope: !760, inlinedAt: !2081)
!2192 = !DILocation(line: 407, column: 37, scope: !760, inlinedAt: !2081)
!2193 = !DILocation(line: 407, column: 61, scope: !760, inlinedAt: !2081)
!2194 = !DILocation(line: 407, column: 13, scope: !760, inlinedAt: !2081)
!2195 = !DILocation(line: 392, column: 28, scope: !760, inlinedAt: !2081)
!2196 = !DILocation(line: 408, column: 15, scope: !768, inlinedAt: !2081)
!2197 = !DILocation(line: 408, column: 9, scope: !760, inlinedAt: !2081)
!2198 = !DILocation(line: 409, column: 43, scope: !2199, inlinedAt: !2081)
!2199 = distinct !DILexicalBlock(scope: !768, file: !1, line: 408, column: 24)
!2200 = !DILocation(line: 410, column: 5, scope: !2199, inlinedAt: !2081)
!2201 = !DILocation(line: 415, column: 26, scope: !767, inlinedAt: !2081)
!2202 = !DILocation(line: 413, column: 16, scope: !767, inlinedAt: !2081)
!2203 = !DILocation(line: 222, column: 19, scope: !729, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 417, column: 16, scope: !767, inlinedAt: !2081)
!2205 = !DILocation(line: 224, column: 27, scope: !729, inlinedAt: !2204)
!2206 = !DILocation(line: 224, column: 49, scope: !729, inlinedAt: !2204)
!2207 = !DILocation(line: 224, column: 12, scope: !729, inlinedAt: !2204)
!2208 = !DILocation(line: 418, column: 18, scope: !2209, inlinedAt: !2081)
!2209 = distinct !DILexicalBlock(scope: !767, file: !1, line: 418, column: 13)
!2210 = !DILocation(line: 418, column: 13, scope: !767, inlinedAt: !2081)
!2211 = !DILocation(line: 417, column: 16, scope: !767, inlinedAt: !2081)
!2212 = !DILocation(line: 424, column: 9, scope: !767, inlinedAt: !2081)
!2213 = !DILocation(line: 426, column: 31, scope: !2214, inlinedAt: !2081)
!2214 = distinct !DILexicalBlock(scope: !767, file: !1, line: 426, column: 13)
!2215 = !DILocation(line: 426, column: 13, scope: !2214, inlinedAt: !2081)
!2216 = !DILocation(line: 426, column: 70, scope: !2214, inlinedAt: !2081)
!2217 = !DILocation(line: 426, column: 13, scope: !767, inlinedAt: !2081)
!2218 = !DILocation(line: 228, column: 16, scope: !501, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 427, column: 13, scope: !2220, inlinedAt: !2081)
!2220 = distinct !DILexicalBlock(scope: !2214, file: !1, line: 426, column: 75)
!2221 = !DILocation(line: 230, column: 20, scope: !501, inlinedAt: !2219)
!2222 = !DILocation(line: 230, column: 40, scope: !501, inlinedAt: !2219)
!2223 = !DILocation(line: 230, column: 5, scope: !501, inlinedAt: !2219)
!2224 = !DILocation(line: 431, column: 13, scope: !2220, inlinedAt: !2081)
!2225 = !DILocation(line: 449, column: 17, scope: !751)
!2226 = !DILocation(line: 441, column: 18, scope: !751)
!2227 = !DILocation(line: 450, column: 19, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !751, file: !1, line: 450, column: 9)
!2229 = !DILocation(line: 450, column: 9, scope: !751)
!2230 = !DILocation(line: 453, column: 11, scope: !751)
!2231 = !DILocation(line: 453, column: 16, scope: !751)
!2232 = !DILocation(line: 454, column: 11, scope: !751)
!2233 = !DILocation(line: 454, column: 21, scope: !751)
!2234 = !DILocation(line: 456, column: 11, scope: !751)
!2235 = !DILocation(line: 443, column: 9, scope: !751)
!2236 = !DILocation(line: 457, column: 13, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !751, file: !1, line: 457, column: 9)
!2238 = !DILocation(line: 457, column: 9, scope: !751)
!2239 = !DILocation(line: 459, column: 35, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 457, column: 19)
!2241 = !DILocation(line: 460, column: 41, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2240, file: !1, line: 460, column: 13)
!2243 = !DILocation(line: 460, column: 39, scope: !2242)
!2244 = !DILocation(line: 460, column: 13, scope: !2240)
!2245 = !DILocation(line: 461, column: 44, scope: !2242)
!2246 = !DILocation(line: 461, column: 13, scope: !2242)
!2247 = !DILocation(line: 465, column: 1, scope: !751)
!2248 = !DILocation(line: 500, column: 27, scope: !920)
!2249 = !DILocation(line: 500, column: 38, scope: !920)
!2250 = !DILocation(line: 500, column: 50, scope: !920)
!2251 = !DILocation(line: 505, column: 19, scope: !920)
!2252 = !DILocation(line: 505, column: 34, scope: !920)
!2253 = !DILocation(line: 505, column: 12, scope: !920)
!2254 = !DILocation(line: 503, column: 11, scope: !920)
!2255 = !DILocation(line: 506, column: 14, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !920, file: !1, line: 506, column: 9)
!2257 = !DILocation(line: 506, column: 9, scope: !920)
!2258 = !DILocation(line: 509, column: 13, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !920, file: !1, line: 509, column: 9)
!2260 = !DILocation(line: 512, column: 9, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 509, column: 22)
!2262 = !DILocation(line: 509, column: 9, scope: !920)
!2263 = !DILocation(line: 468, column: 32, scope: !916, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 513, column: 9, scope: !2261)
!2265 = !DILocation(line: 470, column: 5, scope: !916, inlinedAt: !2264)
!2266 = !DILocation(line: 472, column: 27, scope: !1949, inlinedAt: !2264)
!2267 = !DILocation(line: 472, column: 9, scope: !1949, inlinedAt: !2264)
!2268 = !DILocation(line: 472, column: 9, scope: !916, inlinedAt: !2264)
!2269 = !DILocation(line: 474, column: 44, scope: !1953, inlinedAt: !2264)
!2270 = !DILocation(line: 474, column: 35, scope: !1953, inlinedAt: !2264)
!2271 = !DILocation(line: 475, column: 5, scope: !1953, inlinedAt: !2264)
!2272 = !DILocation(line: 476, column: 1, scope: !916, inlinedAt: !2264)
!2273 = !DILocation(line: 515, column: 13, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2261, file: !1, line: 515, column: 13)
!2275 = !DILocation(line: 527, column: 9, scope: !2261)
!2276 = !DILocation(line: 528, column: 5, scope: !2261)
!2277 = !DILocation(line: 533, column: 13, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 533, column: 13)
!2279 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 529, column: 10)
!2280 = !DILocation(line: 533, column: 51, scope: !2278)
!2281 = !DILocation(line: 535, column: 13, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !1, line: 533, column: 56)
!2283 = !DILocation(line: 533, column: 13, scope: !2279)
!2284 = !DILocation(line: 536, column: 20, scope: !2282)
!2285 = !DILocation(line: 536, column: 32, scope: !2282)
!2286 = !DILocation(line: 536, column: 13, scope: !2282)
!2287 = !DILocation(line: 537, column: 13, scope: !2282)
!2288 = !DILocation(line: 542, column: 1, scope: !920)
