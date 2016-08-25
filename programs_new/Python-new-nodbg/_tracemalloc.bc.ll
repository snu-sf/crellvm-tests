; ModuleID = './_tracemalloc.bc'
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
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @module_def, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @tracemalloc_init()
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_init() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  call void @PyMem_GetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1))
  %call = call i32 @PyThread_create_key()
  store i32 %call, i32* @tracemalloc_reentrant_key, align 4
  %3 = load i32, i32* @tracemalloc_reentrant_key, align 4
  %cmp4 = icmp eq i32 %3, -1
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4)
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %5 = load i8*, i8** @tables_lock, align 8
  %cmp8 = icmp eq i8* %5, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i8* @PyThread_allocate_lock()
  store i8* %call10, i8** @tables_lock, align 8
  %6 = load i8*, i8** @tables_lock, align 8
  %cmp11 = icmp eq i8* %6, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.7
  %call15 = call %struct._Py_hashtable_t* @hashtable_new(i64 0, i64 (i8*)* bitcast (i64 (%struct._object*)* @PyObject_Hash to i64 (i8*)*), i32 (i8*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_unicode)
  store %struct._Py_hashtable_t* %call15, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8
  %call16 = call %struct._Py_hashtable_t* @hashtable_new(i64 0, i64 (i8*)* @hashtable_hash_traceback, i32 (i8*, %struct._Py_hashtable_entry_t*)* bitcast (i32 (%struct.traceback_t*, %struct._Py_hashtable_entry_t*)* @hashtable_compare_traceback to i32 (i8*, %struct._Py_hashtable_entry_t*)*))
  store %struct._Py_hashtable_t* %call16, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8
  %call17 = call %struct._Py_hashtable_t* @hashtable_new(i64 16, i64 (i8*)* @_Py_hashtable_hash_ptr, i32 (i8*, %struct._Py_hashtable_entry_t*)* @_Py_hashtable_compare_direct)
  store %struct._Py_hashtable_t* %call17, %struct._Py_hashtable_t** @tracemalloc_traces, align 8
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8
  %cmp18 = icmp eq %struct._Py_hashtable_t* %8, null
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %9 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8
  %cmp19 = icmp eq %struct._Py_hashtable_t* %9, null
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8
  %cmp21 = icmp eq %struct._Py_hashtable_t* %10, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false, %if.end.14
  %call23 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false.20
  %call25 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0))
  store %struct._object* %call25, %struct._object** @unknown_filename, align 8
  %11 = load %struct._object*, %struct._object** @unknown_filename, align 8
  %cmp26 = icmp eq %struct._object* %11, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  call void @PyUnicode_InternInPlace(%struct._object** @unknown_filename)
  store i32 1, i32* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i32 0, i32 1), align 4
  %12 = load %struct._object*, %struct._object** @unknown_filename, align 8
  store %struct._object* %12, %struct._object** getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i32 0, i32 2, i64 0, i32 0), align 1
  store i32 0, i32* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i32 0, i32 2, i64 0, i32 1), align 1
  %call29 = call i64 @traceback_hash(%struct.traceback_t* @tracemalloc_empty_traceback)
  store i64 %call29, i64* getelementptr inbounds (%struct.traceback_t, %struct.traceback_t* @tracemalloc_empty_traceback, i32 0, i32 0), align 8
  call void @set_reentrant(i32 1)
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.27, %if.then.22, %if.then.12, %if.then.5, %if.then.2, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %0 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %tobool1 = icmp ne i8* %cond, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %p, align 8
  store i8* %3, i8** %endptr, align 8
  %call3 = call i32* @__errno_location() #6
  store i32 0, i32* %call3, align 4
  %4 = load i8*, i8** %p, align 8
  %call4 = call i64 @strtol(i8* %4, i8** %endptr, i32 10) #5
  store i64 %call4, i64* %value, align 8
  %5 = load i8*, i8** %endptr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i64, i64* %value, align 8
  %cmp8 = icmp slt i64 %7, 1
  br i1 %cmp8, label %if.then.17, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %8 = load i64, i64* %value, align 8
  %cmp11 = icmp ugt i64 %8, 178956969
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %call14 = call i32* @__errno_location() #6
  %9 = load i32, i32* %call14, align 4
  %cmp15 = icmp eq i32 %9, 34
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.10, %lor.lhs.false, %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false.13
  %10 = load i64, i64* %value, align 8
  %conv18 = trunc i64 %10 to i32
  store i32 %conv18, i32* %nframe, align 4
  br label %if.end.61

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %call20 = call %struct._object* @PySys_GetXOptions()
  store %struct._object* %call20, %struct._object** %xoptions, align 8
  %11 = load %struct._object*, %struct._object** %xoptions, align 8
  %cmp21 = icmp eq %struct._object* %11, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.else
  %call25 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* %call25, %struct._object** %key, align 8
  %12 = load %struct._object*, %struct._object** %key, align 8
  %cmp26 = icmp eq %struct._object* %12, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.24
  %13 = load %struct._object*, %struct._object** %xoptions, align 8
  %14 = load %struct._object*, %struct._object** %key, align 8
  %call30 = call %struct._object* @PyDict_GetItemWithError(%struct._object* %13, %struct._object* %14)
  store %struct._object* %call30, %struct._object** %value19, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %15 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body
  br label %if.end.35

if.else.34:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end

do.end:                                           ; preds = %if.end.35
  %22 = load %struct._object*, %struct._object** %value19, align 8
  %cmp36 = icmp eq %struct._object* %22, null
  br i1 %cmp36, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %do.end
  %call39 = call %struct._object* @PyErr_Occurred()
  %tobool40 = icmp ne %struct._object* %call39, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.38
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %do.end
  %23 = load %struct._object*, %struct._object** %value19, align 8
  %call44 = call i32 @parse_sys_xoptions(%struct._object* %23)
  store i32 %call44, i32* %nframe, align 4
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.43
  %24 = load %struct._object*, %struct._object** %value19, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp46, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %26, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.45
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.45
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %29(%struct._object* %30)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %31 = load i32, i32* %nframe, align 4
  %cmp57 = icmp slt i32 %31, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %do.end.56
  call void @Py_FatalError(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0)) #7
  unreachable

if.end.60:                                        ; preds = %do.end.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  %32 = load i32, i32* %nframe, align 4
  %call62 = call i32 @tracemalloc_start(i32 %32)
  store i32 %call62, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.end.42, %if.then.41, %if.then.28, %if.then.23
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

declare %struct._object* @PySys_GetXOptions() #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyDict_GetItemWithError(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_sys_xoptions(%struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._object*, align 8
  %valuelong = alloca %struct._object*, align 8
  %nframe = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i64 @PyUnicode_GetLength(%struct._object* %1)
  %cmp1 = icmp eq i64 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %value.addr, align 8
  %call4 = call %struct._object* @PyLong_FromUnicodeObject(%struct._object* %2, i32 10)
  store %struct._object* %call4, %struct._object** %valuelong, align 8
  %3 = load %struct._object*, %struct._object** %valuelong, align 8
  %cmp5 = icmp eq %struct._object* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** %valuelong, align 8
  %call8 = call i64 @PyLong_AsLong(%struct._object* %4)
  store i64 %call8, i64* %nframe, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %5 = load %struct._object*, %struct._object** %valuelong, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %12 = load i64, i64* %nframe, align 8
  %cmp12 = icmp eq i64 %12, -1
  br i1 %cmp12, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %do.end
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call13, null
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %do.end
  %13 = load i64, i64* %nframe, align 8
  %cmp16 = icmp slt i64 %13, 1
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %14 = load i64, i64* %nframe, align 8
  %cmp17 = icmp ugt i64 %14, 178956969
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  %15 = load i64, i64* %nframe, align 8
  %conv = trunc i64 %15 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.14, %if.then.6, %if.then.2, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_start(i32 %max_nframe) #0 {
entry:
  %retval = alloca i32, align 4
  %max_nframe.addr = alloca i32, align 4
  %alloc = alloca %struct.PyMemAllocator, align 8
  %size = alloca i64, align 8
  store i32 %max_nframe, i32* %max_nframe.addr, align 4
  %call = call i32 @tracemalloc_init()
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %1 = load i32, i32* %max_nframe.addr, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 2), align 4
  %2 = load i32, i32* %max_nframe.addr, align 4
  %sub = sub i32 %2, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 12, %conv
  %add = add i64 24, %mul
  store i64 %add, i64* %size, align 8
  %3 = load i64, i64* %size, align 8
  %call3 = call i8* @raw_malloc(i64 %3)
  %4 = bitcast i8* %call3 to %struct.traceback_t*
  store %struct.traceback_t* %4, %struct.traceback_t** @tracemalloc_traceback, align 8
  %5 = load %struct.traceback_t*, %struct.traceback_t** @tracemalloc_traceback, align 8
  %cmp4 = icmp eq %struct.traceback_t* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.2
  %call7 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.2
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 1
  store i8* (i8*, i64)* @tracemalloc_raw_malloc, i8* (i8*, i64)** %malloc, align 8
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 2
  store i8* (i8*, i8*, i64)* @tracemalloc_raw_realloc, i8* (i8*, i8*, i64)** %realloc, align 8
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 3
  store void (i8*, i8*)* @tracemalloc_free, void (i8*, i8*)** %free, align 8
  %ctx = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 0
  store i8* bitcast (%struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1) to i8*), i8** %ctx, align 8
  call void @PyMem_GetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1))
  call void @PyMem_SetAllocator(i32 0, %struct.PyMemAllocator* %alloc)
  %malloc9 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 1
  store i8* (i8*, i64)* @tracemalloc_malloc_gil, i8* (i8*, i64)** %malloc9, align 8
  %realloc10 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 2
  store i8* (i8*, i8*, i64)* @tracemalloc_realloc_gil, i8* (i8*, i8*, i64)** %realloc10, align 8
  %free11 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 3
  store void (i8*, i8*)* @tracemalloc_free, void (i8*, i8*)** %free11, align 8
  %ctx12 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 0
  store i8* bitcast (%struct.anon.0* @allocators to i8*), i8** %ctx12, align 8
  call void @PyMem_GetAllocator(i32 1, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 0))
  call void @PyMem_SetAllocator(i32 1, %struct.PyMemAllocator* %alloc)
  %ctx13 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 0
  store i8* bitcast (%struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 2) to i8*), i8** %ctx13, align 8
  call void @PyMem_GetAllocator(i32 2, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 2))
  call void @PyMem_SetAllocator(i32 2, %struct.PyMemAllocator* %alloc)
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4
  call void @set_reentrant(i32 0)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.1, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @_PyTraceMalloc_Fini() #0 {
entry:
  call void @tracemalloc_deinit()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_deinit() #0 {
entry:
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end.11

if.end:                                           ; preds = %entry
  store i32 2, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 0), align 4
  call void @tracemalloc_stop()
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %1)
  %2 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %2)
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %3)
  %4 = load i8*, i8** @tables_lock, align 8
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_free_lock(i8* %5)
  store i8* null, i8** @tables_lock, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* @tracemalloc_reentrant_key, align 4
  call void @PyThread_delete_key(i32 %6)
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** @unknown_filename, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp4 = icmp ne %struct._object* %8, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9

if.else:                                          ; preds = %do.body.6
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.then, %if.end.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_is_tracing(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_clear_traces(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @set_reentrant(i32 1)
  call void @tracemalloc_clear_traces()
  call void @set_reentrant(i32 0)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc1 = add i64 %2, 1
  store i64 %inc1, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_get_traces(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %get_traces = alloca %struct.get_traces_t, align 8
  %err = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %traces = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %traces, align 8
  %tracebacks = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %tracebacks, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  %list = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2
  store %struct._object* %call, %struct._object** %list, align 8
  %list1 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2
  %0 = load %struct._object*, %struct._object** %list1, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %list3 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %list3, align 8
  store %struct._object* %2, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._Py_hashtable_t* @hashtable_new(i64 8, i64 (i8*)* @_Py_hashtable_hash_ptr, i32 (i8*, %struct._Py_hashtable_entry_t*)* @_Py_hashtable_compare_direct)
  %tracebacks6 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1
  store %struct._Py_hashtable_t* %call5, %struct._Py_hashtable_t** %tracebacks6, align 8
  %tracebacks7 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks7, align 8
  %cmp8 = icmp eq %struct._Py_hashtable_t* %3, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.4
  %call10 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.11:                                        ; preds = %if.end.4
  %4 = load i8*, i8** @tables_lock, align 8
  %call12 = call i32 @PyThread_acquire_lock(i8* %4, i32 1)
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8
  %call13 = call %struct._Py_hashtable_t* @_Py_hashtable_copy(%struct._Py_hashtable_t* %5)
  %traces14 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0
  store %struct._Py_hashtable_t* %call13, %struct._Py_hashtable_t** %traces14, align 8
  %6 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %6)
  %traces15 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %traces15, align 8
  %cmp16 = icmp eq %struct._Py_hashtable_t* %7, null
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.11
  %call18 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.19:                                        ; preds = %if.end.11
  call void @set_reentrant(i32 1)
  %traces20 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %traces20, align 8
  %9 = bitcast %struct.get_traces_t* %get_traces to i8*
  %call21 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %8, i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_get_traces_fill, i8* %9)
  store i32 %call21, i32* %err, align 4
  call void @set_reentrant(i32 0)
  %10 = load i32, i32* %err, align 4
  %tobool22 = icmp ne i32 %10, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  br label %error

if.end.24:                                        ; preds = %if.end.19
  br label %finally

error:                                            ; preds = %if.then.23, %if.then.17, %if.then.9, %if.then
  br label %do.body

do.body:                                          ; preds = %error
  %list25 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %list25, align 8
  store %struct._object* %11, %struct._object** %_py_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp26 = icmp ne %struct._object* %12, null
  br i1 %cmp26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %do.body
  %list28 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2
  store %struct._object* null, %struct._object** %list28, align 8
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.27
  %13 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.32

if.else:                                          ; preds = %do.body.29
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.32
  br label %if.end.33

if.end.33:                                        ; preds = %do.end, %do.body
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %finally

finally:                                          ; preds = %do.end.34, %if.end.24
  %tracebacks35 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1
  %20 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks35, align 8
  %cmp36 = icmp ne %struct._Py_hashtable_t* %20, null
  br i1 %cmp36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %finally
  %tracebacks38 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1
  %21 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks38, align 8
  %call39 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %21, i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_pyobject_decref_cb, i8* null)
  %tracebacks40 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 1
  %22 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks40, align 8
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %22)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %finally
  %traces42 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0
  %23 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %traces42, align 8
  %cmp43 = icmp ne %struct._Py_hashtable_t* %23, null
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.41
  %traces45 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 0
  %24 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %traces45, align 8
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %24)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.41
  %list47 = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %get_traces, i32 0, i32 2
  %25 = load %struct._object*, %struct._object** %list47, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.2
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %3, %struct._typeobject** %type, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 16384
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %7 = bitcast %struct._object* %6 to i8*
  %add.ptr = getelementptr i8, i8* %7, i64 -24
  store i8* %add.ptr, i8** %ptr, align 8
  br label %if.end.2

if.else:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %9 = bitcast %struct._object* %8 to i8*
  store i8* %9, i8** %ptr, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %10 = load i8*, i8** @tables_lock, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %10, i32 1)
  %11 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8
  %12 = load i8*, i8** %ptr, align 8
  %13 = bitcast %struct.trace_t* %trace to i8*
  %call3 = call i32 @_Py_hashtable_get(%struct._Py_hashtable_t* %11, i8* %12, i8* %13, i64 16)
  store i32 %call3, i32* %found, align 4
  %14 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %14)
  %15 = load i32, i32* %found, align 4
  %tobool4 = icmp ne i32 %15, 0
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc6 = add i64 %16, 1
  store i64 %inc6, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %traceback = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i32 0, i32 1
  %17 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %call8 = call %struct._object* @traceback_to_pyobject(%struct.traceback_t* %17, %struct._Py_hashtable_t* null)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_start(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %nframe = alloca i64, align 8
  %nframe_int = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 1, i64* %nframe, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64* %nframe)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %nframe, align 8
  %cmp = icmp slt i64 %1, 1
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %nframe, align 8
  %cmp1 = icmp ugt i64 %2, 178956969
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i32 178956969)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i64, i64* %nframe, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %nframe_int, align 4
  %5 = load i32, i32* %nframe_int, align 4
  %call5 = call i32 @tracemalloc_start(i32 %5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_stop(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  call void @tracemalloc_stop()
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_tracemalloc_get_traceback_limit(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 2), align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tracemalloc_get_tracemalloc_memory(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %size_obj = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8
  %call = call i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %0)
  store i64 %call, i64* %size, align 8
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8
  %call1 = call i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %1)
  %2 = load i64, i64* %size, align 8
  %add = add i64 %2, %call1
  store i64 %add, i64* %size, align 8
  %3 = load i8*, i8** @tables_lock, align 8
  %call2 = call i32 @PyThread_acquire_lock(i8* %3, i32 1)
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8
  %call3 = call i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %4)
  %5 = load i64, i64* %size, align 8
  %add4 = add i64 %5, %call3
  store i64 %add4, i64* %size, align 8
  %6 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %6)
  %7 = load i64, i64* %size, align 8
  %call5 = call %struct._object* @PyLong_FromSize_t(i64 %7)
  store %struct._object* %call5, %struct._object** %size_obj, align 8
  %8 = load %struct._object*, %struct._object** %size_obj, align 8
  %call6 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %struct._object* %8)
  ret %struct._object* %call6
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @tables_lock, align 8
  %call1 = call i32 @PyThread_acquire_lock(i8* %1, i32 1)
  %2 = load i64, i64* @tracemalloc_traced_memory, align 8
  store i64 %2, i64* %size, align 8
  %3 = load i64, i64* @tracemalloc_peak_traced_memory, align 8
  store i64 %3, i64* %peak_size, align 8
  %4 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %4)
  %5 = load i64, i64* %size, align 8
  %call2 = call %struct._object* @PyLong_FromSize_t(i64 %5)
  store %struct._object* %call2, %struct._object** %size_obj, align 8
  %6 = load i64, i64* %peak_size, align 8
  %call3 = call %struct._object* @PyLong_FromSize_t(i64 %6)
  store %struct._object* %call3, %struct._object** %peak_size_obj, align 8
  %7 = load %struct._object*, %struct._object** %size_obj, align 8
  %8 = load %struct._object*, %struct._object** %peak_size_obj, align 8
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct._object* %7, %struct._object* %8)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

declare %struct._object* @PyBool_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_reentrant(i32 %reentrant) #0 {
entry:
  %reentrant.addr = alloca i32, align 4
  store i32 %reentrant, i32* %reentrant.addr, align 4
  %0 = load i32, i32* %reentrant.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @tracemalloc_reentrant_key, align 4
  %call = call i32 @PyThread_set_key_value(i32 %1, i8* bitcast (%struct._longobject* @_Py_TrueStruct to i8*))
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @tracemalloc_reentrant_key, align 4
  %call1 = call i32 @PyThread_set_key_value(i32 %2, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_clear_traces() #0 {
entry:
  %0 = load i8*, i8** @tables_lock, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %0, i32 1)
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8
  call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %1)
  store i64 0, i64* @tracemalloc_traced_memory, align 8
  store i64 0, i64* @tracemalloc_peak_traced_memory, align 8
  %2 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %2)
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8
  %call1 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %3, i32 (%struct._Py_hashtable_entry_t*, i8*)* @traceback_free_traceback, i8* null)
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8
  call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %4)
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8
  %call2 = call i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %5, i32 (%struct._Py_hashtable_entry_t*, i8*)* @tracemalloc_clear_filename, i8* null)
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8
  call void @_Py_hashtable_clear(%struct._Py_hashtable_t* %6)
  ret void
}

declare i32 @PyThread_set_key_value(i32, i8*) #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

declare void @_Py_hashtable_clear(%struct._Py_hashtable_t*) #1

declare void @PyThread_release_lock(i8*) #1

declare i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t*, i32 (%struct._Py_hashtable_entry_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @traceback_free_traceback(%struct._Py_hashtable_entry_t* %entry1, i8* %user_data) #0 {
entry:
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  %user_data.addr = alloca i8*, align 8
  %traceback = alloca %struct.traceback_t*, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %0, i32 0, i32 1
  %1 = load i8*, i8** %key, align 8
  %2 = bitcast i8* %1 to %struct.traceback_t*
  store %struct.traceback_t* %2, %struct.traceback_t** %traceback, align 8
  %3 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %4 = bitcast %struct.traceback_t* %3 to i8*
  call void @raw_free(i8* %4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_clear_filename(%struct._Py_hashtable_entry_t* %entry1, i8* %user_data) #0 {
entry:
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  %user_data.addr = alloca i8*, align 8
  %filename = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %0, i32 0, i32 1
  %1 = load i8*, i8** %key, align 8
  %2 = bitcast i8* %1 to %struct._object*
  store %struct._object* %2, %struct._object** %filename, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @raw_free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1, i32 3), align 8
  %1 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1, i32 0), align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  call void %0(i8* %1, i8* %2)
  ret void
}

declare %struct._object* @PyList_New(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._Py_hashtable_t* @hashtable_new(i64 %data_size, i64 (i8*)* %hash_func, i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func) #0 {
entry:
  %data_size.addr = alloca i64, align 8
  %hash_func.addr = alloca i64 (i8*)*, align 8
  %compare_func.addr = alloca i32 (i8*, %struct._Py_hashtable_entry_t*)*, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64 (i8*)* %hash_func, i64 (i8*)** %hash_func.addr, align 8
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8
  %0 = load i64, i64* %data_size.addr, align 8
  %1 = load i64 (i8*)*, i64 (i8*)** %hash_func.addr, align 8
  %2 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8
  %call = call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 %0, i64 0, i64 (i8*)* %1, i32 (i8*, %struct._Py_hashtable_entry_t*)* %2, i8* (i8*)* null, void (i8*)* null, i64 (i8*)* null, %struct._Py_hashtable_allocator_t* @hashtable_alloc)
  ret %struct._Py_hashtable_t* %call
}

declare i64 @_Py_hashtable_hash_ptr(i8*) #1

declare i32 @_Py_hashtable_compare_direct(i8*, %struct._Py_hashtable_entry_t*) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._Py_hashtable_t* @_Py_hashtable_copy(%struct._Py_hashtable_t*) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.get_traces_t*
  store %struct.get_traces_t* %1, %struct.get_traces_t** %get_traces, align 8
  %2 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %3 = bitcast %struct._Py_hashtable_entry_t* %2 to i8*
  %add.ptr = getelementptr i8, i8* %3, i64 24
  %4 = bitcast i8* %add.ptr to %struct.trace_t*
  store %struct.trace_t* %4, %struct.trace_t** %trace, align 8
  %5 = load %struct.trace_t*, %struct.trace_t** %trace, align 8
  %6 = load %struct.get_traces_t*, %struct.get_traces_t** %get_traces, align 8
  %tracebacks = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %6, i32 0, i32 1
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %tracebacks, align 8
  %call = call %struct._object* @trace_to_pyobject(%struct.trace_t* %5, %struct._Py_hashtable_t* %7)
  store %struct._object* %call, %struct._object** %tracemalloc_obj, align 8
  %8 = load %struct._object*, %struct._object** %tracemalloc_obj, align 8
  %cmp = icmp eq %struct._object* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.get_traces_t*, %struct.get_traces_t** %get_traces, align 8
  %list = getelementptr inbounds %struct.get_traces_t, %struct.get_traces_t* %9, i32 0, i32 2
  %10 = load %struct._object*, %struct._object** %list, align 8
  %11 = load %struct._object*, %struct._object** %tracemalloc_obj, align 8
  %call2 = call i32 @PyList_Append(%struct._object* %10, %struct._object* %11)
  store i32 %call2, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %tracemalloc_obj, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %19 = load i32, i32* %res, align 4
  %cmp6 = icmp slt i32 %19, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_pyobject_decref_cb(%struct._Py_hashtable_entry_t* %entry1, i8* %user_data) #0 {
entry:
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  %user_data.addr = alloca i8*, align 8
  %obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %1 = bitcast %struct._Py_hashtable_entry_t* %0 to i8*
  %add.ptr = getelementptr i8, i8* %1, i64 24
  %2 = bitcast i8* %add.ptr to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = bitcast i8* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %obj, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  ret i32 0
}

declare void @_Py_hashtable_destroy(%struct._Py_hashtable_t*) #1

declare %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64, i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*, i8* (i8*)*, void (i8*)*, i64 (i8*)*, %struct._Py_hashtable_allocator_t*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @trace_to_pyobject(%struct.trace_t* %trace, %struct._Py_hashtable_t* %intern_tracebacks) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %trace.addr = alloca %struct.trace_t*, align 8
  %intern_tracebacks.addr = alloca %struct._Py_hashtable_t*, align 8
  %trace_obj = alloca %struct._object*, align 8
  %size = alloca %struct._object*, align 8
  %traceback = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct.trace_t* %trace, %struct.trace_t** %trace.addr, align 8
  store %struct._Py_hashtable_t* %intern_tracebacks, %struct._Py_hashtable_t** %intern_tracebacks.addr, align 8
  store %struct._object* null, %struct._object** %trace_obj, align 8
  %call = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call, %struct._object** %trace_obj, align 8
  %0 = load %struct._object*, %struct._object** %trace_obj, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.trace_t*, %struct.trace_t** %trace.addr, align 8
  %size1 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %1, i32 0, i32 0
  %2 = load i64, i64* %size1, align 8
  %call2 = call %struct._object* @PyLong_FromSize_t(i64 %2)
  store %struct._object* %call2, %struct._object** %size, align 8
  %3 = load %struct._object*, %struct._object** %size, align 8
  %cmp3 = icmp eq %struct._object* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %4 = load %struct._object*, %struct._object** %trace_obj, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %size, align 8
  %12 = load %struct._object*, %struct._object** %trace_obj, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %11, %struct._object** %arrayidx, align 8
  %14 = load %struct.trace_t*, %struct.trace_t** %trace.addr, align 8
  %traceback9 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %14, i32 0, i32 1
  %15 = load %struct.traceback_t*, %struct.traceback_t** %traceback9, align 8
  %16 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_tracebacks.addr, align 8
  %call10 = call %struct._object* @traceback_to_pyobject(%struct.traceback_t* %15, %struct._Py_hashtable_t* %16)
  store %struct._object* %call10, %struct._object** %traceback, align 8
  %17 = load %struct._object*, %struct._object** %traceback, align 8
  %cmp11 = icmp eq %struct._object* %17, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %if.end.8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %18 = load %struct._object*, %struct._object** %trace_obj, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp14, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %20, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %23(%struct._object* %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.8
  %25 = load %struct._object*, %struct._object** %traceback, align 8
  %26 = load %struct._object*, %struct._object** %trace_obj, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item25 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx26 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item25, i32 0, i64 1
  store %struct._object* %25, %struct._object** %arrayidx26, align 8
  %28 = load %struct._object*, %struct._object** %trace_obj, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %do.end.23, %do.end, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyLong_FromSize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @traceback_to_pyobject(%struct.traceback_t* %traceback, %struct._Py_hashtable_t* %intern_table) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %traceback.addr = alloca %struct.traceback_t*, align 8
  %intern_table.addr = alloca %struct._Py_hashtable_t*, align 8
  %i = alloca i32, align 4
  %frames = alloca %struct._object*, align 8
  %frame = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.traceback_t* %traceback, %struct.traceback_t** %traceback.addr, align 8
  store %struct._Py_hashtable_t* %intern_table, %struct._Py_hashtable_t** %intern_table.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_table.addr, align 8
  %cmp = icmp ne %struct._Py_hashtable_t* %0, null
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_table.addr, align 8
  %2 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %3 = bitcast %struct.traceback_t* %2 to i8*
  %4 = bitcast %struct._object** %frames to i8*
  %call = call i32 @_Py_hashtable_get(%struct._Py_hashtable_t* %1, i8* %3, i8* %4, i64 8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %frames, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %frames, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %8 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %8, i32 0, i32 1
  %9 = load i32, i32* %nframe, align 4
  %conv = sext i32 %9 to i64
  %call3 = call %struct._object* @PyTuple_New(i64 %conv)
  store %struct._object* %call3, %struct._object** %frames, align 8
  %10 = load %struct._object*, %struct._object** %frames, align 8
  %cmp4 = icmp eq %struct._object* %10, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %nframe8 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %12, i32 0, i32 1
  %13 = load i32, i32* %nframe8, align 4
  %cmp9 = icmp slt i32 %11, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %frames11 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %15, i32 0, i32 2
  %arrayidx = getelementptr [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames11, i32 0, i64 %idxprom
  %call12 = call %struct._object* @frame_to_pyobject(%struct.frame_t* %arrayidx)
  store %struct._object* %call12, %struct._object** %frame, align 8
  %16 = load %struct._object*, %struct._object** %frame, align 8
  %cmp13 = icmp eq %struct._object* %16, null
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %17 = load %struct._object*, %struct._object** %frames, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt16, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt16, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %for.body
  %24 = load %struct._object*, %struct._object** %frame, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load %struct._object*, %struct._object** %frames, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom22
  store %struct._object* %24, %struct._object** %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %28 = load i32, i32* %i, align 4
  %inc24 = add i32 %28, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_table.addr, align 8
  %cmp25 = icmp ne %struct._Py_hashtable_t* %29, null
  br i1 %cmp25, label %if.then.27, label %if.end.48

if.then.27:                                       ; preds = %for.end
  %30 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %intern_table.addr, align 8
  %31 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %32 = bitcast %struct.traceback_t* %31 to i8*
  %33 = bitcast %struct._object** %frames to i8*
  %call28 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %30, i8* %32, i8* %33, i64 8)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.45

if.then.31:                                       ; preds = %if.then.27
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %34 = load %struct._object*, %struct._object** %frames, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp33, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %36, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.32
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.32
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %39(%struct._object* %40)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %call44 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.27
  %41 = load %struct._object*, %struct._object** %frames, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt46, align 8
  %inc47 = add i64 %42, 1
  store i64 %inc47, i64* %ob_refcnt46, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.45, %for.end
  %43 = load %struct._object*, %struct._object** %frames, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.48, %do.end.43, %do.end, %if.then.6, %if.then.1
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

declare i32 @_Py_hashtable_get(%struct._Py_hashtable_t*, i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @frame_to_pyobject(%struct.frame_t* %frame) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %frame.addr = alloca %struct.frame_t*, align 8
  %frame_obj = alloca %struct._object*, align 8
  %lineno_obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.frame_t* %frame, %struct.frame_t** %frame.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call, %struct._object** %frame_obj, align 8
  %0 = load %struct._object*, %struct._object** %frame_obj, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %filename = getelementptr inbounds %struct.frame_t, %struct.frame_t* %1, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %filename, align 1
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %filename3 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %3, i32 0, i32 0
  store %struct._object* @_Py_NoneStruct, %struct._object** %filename3, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %4 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %filename5 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %4, i32 0, i32 0
  %5 = load %struct._object*, %struct._object** %filename5, align 1
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %filename6 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %7, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %filename6, align 1
  %9 = load %struct._object*, %struct._object** %frame_obj, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %8, %struct._object** %arrayidx, align 8
  %11 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %lineno = getelementptr inbounds %struct.frame_t, %struct.frame_t* %11, i32 0, i32 1
  %12 = load i32, i32* %lineno, align 1
  %call7 = call %struct._object* @lineno_as_obj(i32 %12)
  store %struct._object* %call7, %struct._object** %lineno_obj, align 8
  %13 = load %struct._object*, %struct._object** %lineno_obj, align 8
  %cmp8 = icmp eq %struct._object* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %14 = load %struct._object*, %struct._object** %frame_obj, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt10, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt10, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.4
  %21 = load %struct._object*, %struct._object** %lineno_obj, align 8
  %22 = load %struct._object*, %struct._object** %frame_obj, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyTupleObject*
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 1
  store %struct._object* %21, %struct._object** %arrayidx16, align 8
  %24 = load %struct._object*, %struct._object** %frame_obj, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %do.end, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

declare i32 @_Py_hashtable_set(%struct._Py_hashtable_t*, i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @lineno_as_obj(i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load i32, i32* %lineno.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %lineno.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_stop() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 1), align 4
  call void @set_reentrant(i32 1)
  call void @PyMem_SetAllocator(i32 0, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1))
  call void @PyMem_SetAllocator(i32 1, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 0))
  call void @PyMem_SetAllocator(i32 2, %struct.PyMemAllocator* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 2))
  call void @tracemalloc_clear_traces()
  %1 = load %struct.traceback_t*, %struct.traceback_t** @tracemalloc_traceback, align 8
  %2 = bitcast %struct.traceback_t* %1 to i8*
  call void @raw_free(i8* %2)
  store %struct.traceback_t* null, %struct.traceback_t** @tracemalloc_traceback, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @PyMem_SetAllocator(i32, %struct.PyMemAllocator*) #1

declare i64 @_Py_hashtable_size(%struct._Py_hashtable_t*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare void @PyMem_GetAllocator(i32, %struct.PyMemAllocator*) #1

declare i32 @PyThread_create_key() #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare i8* @PyThread_allocate_lock() #1

declare i64 @PyObject_Hash(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @hashtable_compare_unicode(i8* %key, %struct._Py_hashtable_entry_t* %entry1) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %key2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %1, i32 0, i32 1
  %2 = load i8*, i8** %key2, align 8
  %cmp3 = icmp ne i8* %2, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %key.addr, align 8
  %4 = bitcast i8* %3 to %struct._object*
  %5 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %key4 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %5, i32 0, i32 1
  %6 = load i8*, i8** %key4, align 8
  %7 = bitcast i8* %6 to %struct._object*
  %call = call i32 @PyUnicode_Compare(%struct._object* %4, %struct._object* %7)
  %cmp5 = icmp eq i32 %call, 0
  %conv = zext i1 %cmp5 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load i8*, i8** %key.addr, align 8
  %9 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %key6 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %9, i32 0, i32 1
  %10 = load i8*, i8** %key6, align 8
  %cmp7 = icmp eq i8* %8, %10
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i64 @hashtable_hash_traceback(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %traceback = alloca %struct.traceback_t*, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %1 = bitcast i8* %0 to %struct.traceback_t*
  store %struct.traceback_t* %1, %struct.traceback_t** %traceback, align 8
  %2 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %hash = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %2, i32 0, i32 0
  %3 = load i64, i64* %hash, align 8
  ret i64 %3
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
  store %struct.traceback_t* %traceback1, %struct.traceback_t** %traceback1.addr, align 8
  store %struct._Py_hashtable_entry_t* %he, %struct._Py_hashtable_entry_t** %he.addr, align 8
  %0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %he.addr, align 8
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %0, i32 0, i32 1
  %1 = load i8*, i8** %key, align 8
  %2 = bitcast i8* %1 to %struct.traceback_t*
  store %struct.traceback_t* %2, %struct.traceback_t** %traceback2, align 8
  %3 = load %struct.traceback_t*, %struct.traceback_t** %traceback1.addr, align 8
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %3, i32 0, i32 1
  %4 = load i32, i32* %nframe, align 4
  %5 = load %struct.traceback_t*, %struct.traceback_t** %traceback2, align 8
  %nframe1 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %5, i32 0, i32 1
  %6 = load i32, i32* %nframe1, align 4
  %cmp = icmp ne i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.traceback_t*, %struct.traceback_t** %traceback1.addr, align 8
  %nframe2 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %8, i32 0, i32 1
  %9 = load i32, i32* %nframe2, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.traceback_t*, %struct.traceback_t** %traceback1.addr, align 8
  %frames = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %11, i32 0, i32 2
  %arrayidx = getelementptr [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames, i32 0, i64 %idxprom
  store %struct.frame_t* %arrayidx, %struct.frame_t** %frame1, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.traceback_t*, %struct.traceback_t** %traceback2, align 8
  %frames5 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %13, i32 0, i32 2
  %arrayidx6 = getelementptr [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames5, i32 0, i64 %idxprom4
  store %struct.frame_t* %arrayidx6, %struct.frame_t** %frame2, align 8
  %14 = load %struct.frame_t*, %struct.frame_t** %frame1, align 8
  %lineno = getelementptr inbounds %struct.frame_t, %struct.frame_t* %14, i32 0, i32 1
  %15 = load i32, i32* %lineno, align 1
  %16 = load %struct.frame_t*, %struct.frame_t** %frame2, align 8
  %lineno7 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %16, i32 0, i32 1
  %17 = load i32, i32* %lineno7, align 1
  %cmp8 = icmp ne i32 %15, %17
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %for.body
  %18 = load %struct.frame_t*, %struct.frame_t** %frame1, align 8
  %filename = getelementptr inbounds %struct.frame_t, %struct.frame_t* %18, i32 0, i32 0
  %19 = load %struct._object*, %struct._object** %filename, align 1
  %20 = load %struct.frame_t*, %struct.frame_t** %frame2, align 8
  %filename11 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %20, i32 0, i32 0
  %21 = load %struct._object*, %struct._object** %filename11, align 1
  %cmp12 = icmp ne %struct._object* %19, %21
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %22 = load i32, i32* %i, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.13, %if.then.9, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @PyUnicode_InternInPlace(%struct._object**) #1

; Function Attrs: nounwind uwtable
define internal i64 @traceback_hash(%struct.traceback_t* %traceback) #0 {
entry:
  %traceback.addr = alloca %struct.traceback_t*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %len = alloca i32, align 4
  %mult = alloca i64, align 8
  %frame = alloca %struct.frame_t*, align 8
  store %struct.traceback_t* %traceback, %struct.traceback_t** %traceback.addr, align 8
  %0 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %0, i32 0, i32 1
  %1 = load i32, i32* %nframe, align 4
  store i32 %1, i32* %len, align 4
  store i64 1000003, i64* %mult, align 8
  store i64 3430008, i64* %x, align 8
  %2 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %frames = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames, i32 0, i32 0
  store %struct.frame_t* %arraydecay, %struct.frame_t** %frame, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %len, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %len, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.frame_t*, %struct.frame_t** %frame, align 8
  %filename = getelementptr inbounds %struct.frame_t, %struct.frame_t* %4, i32 0, i32 0
  %5 = load %struct._object*, %struct._object** %filename, align 1
  %call = call i64 @PyObject_Hash(%struct._object* %5)
  store i64 %call, i64* %y, align 8
  %6 = load %struct.frame_t*, %struct.frame_t** %frame, align 8
  %lineno = getelementptr inbounds %struct.frame_t, %struct.frame_t* %6, i32 0, i32 1
  %7 = load i32, i32* %lineno, align 1
  %conv = sext i32 %7 to i64
  %8 = load i64, i64* %y, align 8
  %xor = xor i64 %8, %conv
  store i64 %xor, i64* %y, align 8
  %9 = load %struct.frame_t*, %struct.frame_t** %frame, align 8
  %incdec.ptr = getelementptr %struct.frame_t, %struct.frame_t* %9, i32 1
  store %struct.frame_t* %incdec.ptr, %struct.frame_t** %frame, align 8
  %10 = load i64, i64* %x, align 8
  %11 = load i64, i64* %y, align 8
  %xor1 = xor i64 %10, %11
  %12 = load i64, i64* %mult, align 8
  %mul = mul i64 %xor1, %12
  store i64 %mul, i64* %x, align 8
  %13 = load i32, i32* %len, align 4
  %conv2 = sext i32 %13 to i64
  %add = add i64 82520, %conv2
  %14 = load i32, i32* %len, align 4
  %conv3 = sext i32 %14 to i64
  %add4 = add i64 %add, %conv3
  %15 = load i64, i64* %mult, align 8
  %add5 = add i64 %15, %add4
  store i64 %add5, i64* %mult, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i64, i64* %x, align 8
  %add6 = add i64 %16, 97531
  store i64 %add6, i64* %x, align 8
  %17 = load i64, i64* %x, align 8
  ret i64 %17
}

declare i32 @PyUnicode_Compare(%struct._object*, %struct._object*) #1

declare i64 @PyUnicode_GetLength(%struct._object*) #1

declare %struct._object* @PyLong_FromUnicodeObject(%struct._object*, i32) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i8* @raw_malloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1, i32 1), align 8
  %1 = load i8*, i8** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @allocators, i32 0, i32 1, i32 0), align 8
  %2 = load i64, i64* %size.addr, align 8
  %call = call i8* %0(i8* %1, i64 %2)
  ret i8* %call
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
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call i32 @get_reentrant()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.PyMemAllocator*
  store %struct.PyMemAllocator* %1, %struct.PyMemAllocator** %alloc, align 8
  %2 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %2, i32 0, i32 1
  %3 = load i8* (i8*, i64)*, i8* (i8*, i64)** %malloc, align 8
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 0
  %5 = load i8*, i8** %ctx1, align 8
  %6 = load i64, i64* %size.addr, align 8
  %call2 = call i8* %3(i8* %5, i64 %6)
  store i8* %call2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @set_reentrant(i32 1)
  %call3 = call i32 @PyGILState_Ensure()
  store i32 %call3, i32* %gil_state, align 4
  %7 = load i8*, i8** %ctx.addr, align 8
  %8 = load i64, i64* %size.addr, align 8
  %call4 = call i8* @tracemalloc_malloc(i8* %7, i64 %8)
  store i8* %call4, i8** %ptr, align 8
  %9 = load i32, i32* %gil_state, align 4
  call void @PyGILState_Release(i32 %9)
  call void @set_reentrant(i32 0)
  %10 = load i8*, i8** %ptr, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
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
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  %call = call i32 @get_reentrant()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.PyMemAllocator*
  store %struct.PyMemAllocator* %1, %struct.PyMemAllocator** %alloc, align 8
  %2 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %2, i32 0, i32 2
  %3 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %realloc, align 8
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 0
  %5 = load i8*, i8** %ctx1, align 8
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i64, i64* %new_size.addr, align 8
  %call2 = call i8* %3(i8* %5, i8* %6, i64 %7)
  store i8* %call2, i8** %ptr2, align 8
  %8 = load i8*, i8** %ptr2, align 8
  %cmp = icmp ne i8* %8, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load i8*, i8** %ptr.addr, align 8
  %cmp3 = icmp ne i8* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** @tables_lock, align 8
  %call5 = call i32 @PyThread_acquire_lock(i8* %10, i32 1)
  %11 = load i8*, i8** %ptr.addr, align 8
  call void @tracemalloc_remove_trace(i8* %11)
  %12 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %13 = load i8*, i8** %ptr2, align 8
  store i8* %13, i8** %retval
  br label %return

if.end.6:                                         ; preds = %entry
  call void @set_reentrant(i32 1)
  %call7 = call i32 @PyGILState_Ensure()
  store i32 %call7, i32* %gil_state, align 4
  %14 = load i8*, i8** %ctx.addr, align 8
  %15 = load i8*, i8** %ptr.addr, align 8
  %16 = load i64, i64* %new_size.addr, align 8
  %call8 = call i8* @tracemalloc_realloc(i8* %14, i8* %15, i64 %16)
  store i8* %call8, i8** %ptr2, align 8
  %17 = load i32, i32* %gil_state, align 4
  call void @PyGILState_Release(i32 %17)
  call void @set_reentrant(i32 0)
  %18 = load i8*, i8** %ptr2, align 8
  store i8* %18, i8** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.end
  %19 = load i8*, i8** %retval
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_free(i8* %ctx, i8* %ptr) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.PyMemAllocator*
  store %struct.PyMemAllocator* %1, %struct.PyMemAllocator** %alloc, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %3, i32 0, i32 3
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %free, align 8
  %5 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %5, i32 0, i32 0
  %6 = load i8*, i8** %ctx1, align 8
  %7 = load i8*, i8** %ptr.addr, align 8
  call void %4(i8* %6, i8* %7)
  %8 = load i8*, i8** @tables_lock, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %8, i32 1)
  %9 = load i8*, i8** %ptr.addr, align 8
  call void @tracemalloc_remove_trace(i8* %9)
  %10 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_malloc_gil(i8* %ctx, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call i32 @get_reentrant()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.PyMemAllocator*
  store %struct.PyMemAllocator* %1, %struct.PyMemAllocator** %alloc, align 8
  %2 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %2, i32 0, i32 1
  %3 = load i8* (i8*, i64)*, i8* (i8*, i64)** %malloc, align 8
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 0
  %5 = load i8*, i8** %ctx1, align 8
  %6 = load i64, i64* %size.addr, align 8
  %call2 = call i8* %3(i8* %5, i64 %6)
  store i8* %call2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @set_reentrant(i32 1)
  %7 = load i8*, i8** %ctx.addr, align 8
  %8 = load i64, i64* %size.addr, align 8
  %call3 = call i8* @tracemalloc_malloc(i8* %7, i64 %8)
  store i8* %call3, i8** %ptr, align 8
  call void @set_reentrant(i32 0)
  %9 = load i8*, i8** %ptr, align 8
  store i8* %9, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
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
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  %call = call i32 @get_reentrant()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.PyMemAllocator*
  store %struct.PyMemAllocator* %1, %struct.PyMemAllocator** %alloc, align 8
  %2 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %2, i32 0, i32 2
  %3 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %realloc, align 8
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 0
  %5 = load i8*, i8** %ctx1, align 8
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i64, i64* %new_size.addr, align 8
  %call2 = call i8* %3(i8* %5, i8* %6, i64 %7)
  store i8* %call2, i8** %ptr2, align 8
  %8 = load i8*, i8** %ptr2, align 8
  %cmp = icmp ne i8* %8, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load i8*, i8** %ptr.addr, align 8
  %cmp3 = icmp ne i8* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** @tables_lock, align 8
  %call5 = call i32 @PyThread_acquire_lock(i8* %10, i32 1)
  %11 = load i8*, i8** %ptr.addr, align 8
  call void @tracemalloc_remove_trace(i8* %11)
  %12 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %13 = load i8*, i8** %ptr2, align 8
  store i8* %13, i8** %retval
  br label %return

if.end.6:                                         ; preds = %entry
  call void @set_reentrant(i32 1)
  %14 = load i8*, i8** %ctx.addr, align 8
  %15 = load i8*, i8** %ptr.addr, align 8
  %16 = load i64, i64* %new_size.addr, align 8
  %call7 = call i8* @tracemalloc_realloc(i8* %14, i8* %15, i64 %16)
  store i8* %call7, i8** %ptr2, align 8
  call void @set_reentrant(i32 0)
  %17 = load i8*, i8** %ptr2, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.end
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal i32 @get_reentrant() #0 {
entry:
  %retval = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %0 = load i32, i32* @tracemalloc_reentrant_key, align 4
  %call = call i8* @PyThread_get_key_value(i32 %0)
  store i8* %call, i8** %ptr, align 8
  %1 = load i8*, i8** %ptr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare i32 @PyGILState_Ensure() #1

; Function Attrs: nounwind uwtable
define internal i8* @tracemalloc_malloc(i8* %ctx, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %alloc = alloca %struct.PyMemAllocator*, align 8
  %ptr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.PyMemAllocator*
  store %struct.PyMemAllocator* %1, %struct.PyMemAllocator** %alloc, align 8
  %2 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %2, i32 0, i32 1
  %3 = load i8* (i8*, i64)*, i8* (i8*, i64)** %malloc, align 8
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 0
  %5 = load i8*, i8** %ctx1, align 8
  %6 = load i64, i64* %size.addr, align 8
  %call = call i8* %3(i8* %5, i64 %6)
  store i8* %call, i8** %ptr, align 8
  %7 = load i8*, i8** %ptr, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** @tables_lock, align 8
  %call2 = call i32 @PyThread_acquire_lock(i8* %8, i32 1)
  %9 = load i8*, i8** %ptr, align 8
  %10 = load i64, i64* %size.addr, align 8
  %call3 = call i32 @tracemalloc_add_trace(i8* %9, i64 %10)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %11)
  %12 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %12, i32 0, i32 3
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** %free, align 8
  %14 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %ctx6 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %14, i32 0, i32 0
  %15 = load i8*, i8** %ctx6, align 8
  %16 = load i8*, i8** %ptr, align 8
  call void %13(i8* %15, i8* %16)
  store i8* null, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %17 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %17)
  %18 = load i8*, i8** %ptr, align 8
  store i8* %18, i8** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %19 = load i8*, i8** %retval
  ret i8* %19
}

declare void @PyGILState_Release(i32) #1

declare i8* @PyThread_get_key_value(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @tracemalloc_add_trace(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %traceback = alloca %struct.traceback_t*, align 8
  %trace = alloca %struct.trace_t, align 8
  %res = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call %struct.traceback_t* @traceback_new()
  store %struct.traceback_t* %call, %struct.traceback_t** %traceback, align 8
  %0 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %cmp = icmp eq %struct.traceback_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %size1 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i32 0, i32 0
  store i64 %1, i64* %size1, align 8
  %2 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %traceback2 = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i32 0, i32 1
  store %struct.traceback_t* %2, %struct.traceback_t** %traceback2, align 8
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = bitcast %struct.trace_t* %trace to i8*
  %call3 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %3, i8* %4, i8* %5, i64 16)
  store i32 %call3, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %7 = load i64, i64* %size.addr, align 8
  %8 = load i64, i64* @tracemalloc_traced_memory, align 8
  %add = add i64 %8, %7
  store i64 %add, i64* @tracemalloc_traced_memory, align 8
  %9 = load i64, i64* @tracemalloc_traced_memory, align 8
  %10 = load i64, i64* @tracemalloc_peak_traced_memory, align 8
  %cmp6 = icmp ugt i64 %9, %10
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %11 = load i64, i64* @tracemalloc_traced_memory, align 8
  store i64 %11, i64* @tracemalloc_peak_traced_memory, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %12 = load i32, i32* %res, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct.traceback_t* @traceback_new() #0 {
entry:
  %retval = alloca %struct.traceback_t*, align 8
  %traceback = alloca %struct.traceback_t*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %copy = alloca %struct.traceback_t*, align 8
  %traceback_size = alloca i64, align 8
  %0 = load %struct.traceback_t*, %struct.traceback_t** @tracemalloc_traceback, align 8
  store %struct.traceback_t* %0, %struct.traceback_t** %traceback, align 8
  %1 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %1, i32 0, i32 1
  store i32 0, i32* %nframe, align 4
  %2 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  call void @traceback_get_frames(%struct.traceback_t* %2)
  %3 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %nframe2 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %3, i32 0, i32 1
  %4 = load i32, i32* %nframe2, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.traceback_t* @tracemalloc_empty_traceback, %struct.traceback_t** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %call = call i64 @traceback_hash(%struct.traceback_t* %5)
  %6 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %hash = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %6, i32 0, i32 0
  store i64 %call, i64* %hash, align 8
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8
  %8 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %9 = bitcast %struct.traceback_t* %8 to i8*
  %call3 = call %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %7, i8* %9)
  store %struct._Py_hashtable_entry_t* %call3, %struct._Py_hashtable_entry_t** %entry1, align 8
  %10 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %cmp4 = icmp ne %struct._Py_hashtable_entry_t* %10, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %11, i32 0, i32 1
  %12 = load i8*, i8** %key, align 8
  %13 = bitcast i8* %12 to %struct.traceback_t*
  store %struct.traceback_t* %13, %struct.traceback_t** %traceback, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %14 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %nframe6 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %14, i32 0, i32 1
  %15 = load i32, i32* %nframe6, align 4
  %sub = sub i32 %15, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 12, %conv
  %add = add i64 24, %mul
  store i64 %add, i64* %traceback_size, align 8
  %16 = load i64, i64* %traceback_size, align 8
  %call7 = call i8* @raw_malloc(i64 %16)
  %17 = bitcast i8* %call7 to %struct.traceback_t*
  store %struct.traceback_t* %17, %struct.traceback_t** %copy, align 8
  %18 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8
  %cmp8 = icmp eq %struct.traceback_t* %18, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else
  store %struct.traceback_t* null, %struct.traceback_t** %retval
  br label %return

if.end.11:                                        ; preds = %if.else
  %19 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8
  %20 = bitcast %struct.traceback_t* %19 to i8*
  %21 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  %22 = bitcast %struct.traceback_t* %21 to i8*
  %23 = load i64, i64* %traceback_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %22, i64 %23, i32 8, i1 false)
  %24 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_tracebacks, align 8
  %25 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8
  %26 = bitcast %struct.traceback_t* %25 to i8*
  %call12 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %24, i8* %26, i8* null, i64 0)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %27 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8
  %28 = bitcast %struct.traceback_t* %27 to i8*
  call void @raw_free(i8* %28)
  store %struct.traceback_t* null, %struct.traceback_t** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %29 = load %struct.traceback_t*, %struct.traceback_t** %copy, align 8
  store %struct.traceback_t* %29, %struct.traceback_t** %traceback, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.5
  %30 = load %struct.traceback_t*, %struct.traceback_t** %traceback, align 8
  store %struct.traceback_t* %30, %struct.traceback_t** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.15, %if.then.10, %if.then
  %31 = load %struct.traceback_t*, %struct.traceback_t** %retval
  ret %struct.traceback_t* %31
}

; Function Attrs: nounwind uwtable
define internal void @traceback_get_frames(%struct.traceback_t* %traceback) #0 {
entry:
  %traceback.addr = alloca %struct.traceback_t*, align 8
  %tstate = alloca %struct._ts*, align 8
  %pyframe = alloca %struct._frame*, align 8
  store %struct.traceback_t* %traceback, %struct.traceback_t** %traceback.addr, align 8
  %call = call %struct._ts* @PyGILState_GetThisThreadState()
  store %struct._ts* %call, %struct._ts** %tstate, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp = icmp eq %struct._ts* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct._ts*, %struct._ts** %tstate, align 8
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %1, i32 0, i32 3
  %2 = load %struct._frame*, %struct._frame** %frame, align 8
  store %struct._frame* %2, %struct._frame** %pyframe, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct._frame*, %struct._frame** %pyframe, align 8
  %cmp1 = icmp ne %struct._frame* %3, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._frame*, %struct._frame** %pyframe, align 8
  %5 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %nframe = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %5, i32 0, i32 1
  %6 = load i32, i32* %nframe, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %frames = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %7, i32 0, i32 2
  %arrayidx = getelementptr [1 x %struct.frame_t], [1 x %struct.frame_t]* %frames, i32 0, i64 %idxprom
  call void @tracemalloc_get_frame(%struct._frame* %4, %struct.frame_t* %arrayidx)
  %8 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %nframe2 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %8, i32 0, i32 1
  %9 = load i32, i32* %nframe2, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %nframe2, align 4
  %10 = load %struct.traceback_t*, %struct.traceback_t** %traceback.addr, align 8
  %nframe3 = getelementptr inbounds %struct.traceback_t, %struct.traceback_t* %10, i32 0, i32 1
  %11 = load i32, i32* %nframe3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @tracemalloc_config, i32 0, i32 2), align 4
  %cmp4 = icmp eq i32 %11, %12
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %for.end

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %13 = load %struct._frame*, %struct._frame** %pyframe, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %13, i32 0, i32 1
  %14 = load %struct._frame*, %struct._frame** %f_back, align 8
  store %struct._frame* %14, %struct._frame** %pyframe, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.5, %for.cond
  ret void
}

declare %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._ts* @PyGILState_GetThisThreadState() #1

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_get_frame(%struct._frame* %pyframe, %struct.frame_t* %frame) #0 {
entry:
  %pyframe.addr = alloca %struct._frame*, align 8
  %frame.addr = alloca %struct.frame_t*, align 8
  %code = alloca %struct.PyCodeObject*, align 8
  %filename = alloca %struct._object*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._frame* %pyframe, %struct._frame** %pyframe.addr, align 8
  store %struct.frame_t* %frame, %struct.frame_t** %frame.addr, align 8
  %0 = load %struct._object*, %struct._object** @unknown_filename, align 8
  %1 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %filename2 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %1, i32 0, i32 0
  store %struct._object* %0, %struct._object** %filename2, align 1
  %2 = load %struct._frame*, %struct._frame** %pyframe.addr, align 8
  %call = call i32 @PyFrame_GetLineNumber(%struct._frame* %2)
  %3 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %lineno = getelementptr inbounds %struct.frame_t, %struct.frame_t* %3, i32 0, i32 1
  store i32 %call, i32* %lineno, align 1
  %4 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %lineno3 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %4, i32 0, i32 1
  %5 = load i32, i32* %lineno3, align 1
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %lineno4 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %6, i32 0, i32 1
  store i32 0, i32* %lineno4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._frame*, %struct._frame** %pyframe.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %7, i32 0, i32 2
  %8 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  store %struct.PyCodeObject* %8, %struct.PyCodeObject** %code, align 8
  %9 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %cmp5 = icmp eq %struct.PyCodeObject* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %10, i32 0, i32 13
  %11 = load %struct._object*, %struct._object** %co_filename, align 8
  %cmp8 = icmp eq %struct._object* %11, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %12 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_filename11 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %12, i32 0, i32 13
  %13 = load %struct._object*, %struct._object** %co_filename11, align 8
  store %struct._object* %13, %struct._object** %filename, align 8
  %14 = load %struct._object*, %struct._object** %filename, align 8
  %cmp12 = icmp eq %struct._object* %14, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %15 = load %struct._object*, %struct._object** %filename, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags, align 8
  %and = and i64 %17, 268435456
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %18 = load %struct._object*, %struct._object** %filename, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 3
  %20 = bitcast %struct.anon.1* %state to i32*
  %bf.load = load i32, i32* %20, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.17
  br label %return

if.end.19:                                        ; preds = %if.end.17
  %21 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8
  %22 = load %struct._object*, %struct._object** %filename, align 8
  %23 = bitcast %struct._object* %22 to i8*
  %call20 = call %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %21, i8* %23)
  store %struct._Py_hashtable_entry_t* %call20, %struct._Py_hashtable_entry_t** %entry1, align 8
  %24 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %cmp21 = icmp ne %struct._Py_hashtable_entry_t* %24, null
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.19
  %25 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %25, i32 0, i32 1
  %26 = load i8*, i8** %key, align 8
  %27 = bitcast i8* %26 to %struct._object*
  store %struct._object* %27, %struct._object** %filename, align 8
  br label %if.end.33

if.else:                                          ; preds = %if.end.19
  %28 = load %struct._object*, %struct._object** %filename, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %30 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_filenames, align 8
  %31 = load %struct._object*, %struct._object** %filename, align 8
  %32 = bitcast %struct._object* %31 to i8*
  %call23 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %30, i8* %32, i8* null, i64 0)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.25
  %33 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt26, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt26, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body
  br label %if.end.31

if.else.29:                                       ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.31
  br label %return

if.end.32:                                        ; preds = %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.22
  %40 = load %struct._object*, %struct._object** %filename, align 8
  %41 = load %struct.frame_t*, %struct.frame_t** %frame.addr, align 8
  %filename34 = getelementptr inbounds %struct.frame_t, %struct.frame_t* %41, i32 0, i32 0
  store %struct._object* %40, %struct._object** %filename34, align 1
  br label %return

return:                                           ; preds = %if.end.33, %do.end, %if.then.18, %if.then.16, %if.then.13, %if.then.9, %if.then.6
  ret void
}

declare i32 @PyFrame_GetLineNumber(%struct._frame*) #1

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_remove_trace(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %trace = alloca %struct.trace_t, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** @tracemalloc_traces, align 8
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = bitcast %struct.trace_t* %trace to i8*
  %call = call i32 @_Py_hashtable_pop(%struct._Py_hashtable_t* %0, i8* %1, i8* %2, i64 16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.trace_t, %struct.trace_t* %trace, i32 0, i32 0
  %3 = load i64, i64* %size, align 8
  %4 = load i64, i64* @tracemalloc_traced_memory, align 8
  %sub = sub i64 %4, %3
  store i64 %sub, i64* @tracemalloc_traced_memory, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
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
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.PyMemAllocator*
  store %struct.PyMemAllocator* %1, %struct.PyMemAllocator** %alloc, align 8
  %2 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %2, i32 0, i32 2
  %3 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %realloc, align 8
  %4 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %ctx1 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %4, i32 0, i32 0
  %5 = load i8*, i8** %ctx1, align 8
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i64, i64* %new_size.addr, align 8
  %call = call i8* %3(i8* %5, i8* %6, i64 %7)
  store i8* %call, i8** %ptr2, align 8
  %8 = load i8*, i8** %ptr2, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %ptr.addr, align 8
  %cmp2 = icmp ne i8* %9, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %10 = load i8*, i8** @tables_lock, align 8
  %call4 = call i32 @PyThread_acquire_lock(i8* %10, i32 1)
  %11 = load i8*, i8** %ptr.addr, align 8
  call void @tracemalloc_remove_trace(i8* %11)
  %12 = load i8*, i8** %ptr2, align 8
  %13 = load i64, i64* %new_size.addr, align 8
  %call5 = call i32 @tracemalloc_add_trace(i8* %12, i64 %13)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.3
  %14 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %14)
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %15 = load i8*, i8** @tables_lock, align 8
  %call9 = call i32 @PyThread_acquire_lock(i8* %15, i32 1)
  %16 = load i8*, i8** %ptr2, align 8
  %17 = load i64, i64* %new_size.addr, align 8
  %call10 = call i32 @tracemalloc_add_trace(i8* %16, i64 %17)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.else
  %18 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %18)
  %19 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %19, i32 0, i32 3
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %free, align 8
  %21 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %alloc, align 8
  %ctx13 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %21, i32 0, i32 0
  %22 = load i8*, i8** %ctx13, align 8
  %23 = load i8*, i8** %ptr2, align 8
  call void %20(i8* %22, i8* %23)
  store i8* null, i8** %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  %24 = load i8*, i8** @tables_lock, align 8
  call void @PyThread_release_lock(i8* %24)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.8
  %25 = load i8*, i8** %ptr2, align 8
  store i8* %25, i8** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.12, %if.then
  %26 = load i8*, i8** %retval
  ret i8* %26
}

declare i32 @_Py_hashtable_pop(%struct._Py_hashtable_t*, i8*, i8*, i64) #1

declare void @PyThread_free_lock(i8*) #1

declare void @PyThread_delete_key(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
