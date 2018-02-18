; ModuleID = './_lsprof.bc'
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
%struct.ProfilerObject = type { %struct._object, %struct.rotating_node_s*, %struct._ProfilerContext*, %struct._ProfilerContext*, i32, %struct._object*, double }
%struct.rotating_node_s = type { i8*, %struct.rotating_node_s*, %struct.rotating_node_s* }
%struct._ProfilerContext = type { i64, i64, %struct._ProfilerContext*, %struct._ProfilerEntry* }
%struct._ProfilerEntry = type { %struct.rotating_node_s, %struct._object*, i64, i64, i64, i64, i64, %struct.rotating_node_s* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct._ProfilerSubEntry = type { %struct.rotating_node_s, i64, i64, i64, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.statscollector_t = type { %struct._object*, %struct._object*, double }
%struct.PyCFunctionObject = type { %struct._object, %struct.PyMethodDef*, %struct._object*, %struct._object* }

@_lsprofmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([1 x %struct.PyMethodDef], [1 x %struct.PyMethodDef]* @moduleMethods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyProfiler_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.ProfilerObject*)* @profiler_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([359 x i8], [359 x i8]* @profiler_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @profiler_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.ProfilerObject*, %struct._object*, %struct._object*)* @profiler_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"Profiler\00", align 1
@initialized = internal global i32 0, align 4
@StatsEntryType = internal global %struct._typeobject zeroinitializer, align 8
@profiler_entry_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8* null, %struct.PyStructSequence_Field* getelementptr inbounds ([7 x %struct.PyStructSequence_Field], [7 x %struct.PyStructSequence_Field]* @profiler_entry_fields, i32 0, i32 0), i32 6 }, align 8
@StatsSubEntryType = internal global %struct._typeobject zeroinitializer, align 8
@profiler_subentry_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0), i8* null, %struct.PyStructSequence_Field* getelementptr inbounds ([6 x %struct.PyStructSequence_Field], [6 x %struct.PyStructSequence_Field]* @profiler_subentry_fields, i32 0, i32 0), i32 5 }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"profiler_entry\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"profiler_subentry\00", align 1
@empty_tuple = internal global %struct._object* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"_lsprof\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Fast profiler\00", align 1
@moduleMethods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [17 x i8] c"_lsprof.Profiler\00", align 1
@profiler_doc = internal global [359 x i8] c"Profiler(custom_timer=None, time_unit=None, subcalls=True, builtins=True)\0A\0A    Builds a profiler object using the specified timer function.\0A    The default timer is a fast built-in one based on real time.\0A    For custom timer functions returning integers, time_unit can\0A    be a float specifying a scale (i.e. how long each integer unit\0A    is, in seconds).\0A\00", align 16
@profiler_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.ProfilerObject*, %struct._object*)* @profiler_getstats to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([773 x i8], [773 x i8]* @getstats_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.ProfilerObject*, %struct._object*, %struct._object*)* @profiler_enable to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([285 x i8], [285 x i8]* @enable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.ProfilerObject*, %struct._object*)* @profiler_disable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @disable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.ProfilerObject*, %struct._object*)* @profiler_clear to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @clear_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [9 x i8] c"getstats\00", align 1
@getstats_doc = internal global [773 x i8] c"getstats() -> list of profiler_entry objects\0A\0AReturn all information collected by the profiler.\0AEach profiler_entry is a tuple-like object with the\0Afollowing attributes:\0A\0A    code          code object\0A    callcount     how many times this was called\0A    reccallcount  how many times called recursively\0A    totaltime     total time in this entry\0A    inlinetime    inline time in this entry (not in subcalls)\0A    calls         details of the calls\0A\0AThe calls attribute is either None or a list of\0Aprofiler_subentry objects:\0A\0A    code          called code object\0A    callcount     how many times this is called\0A    reccallcount  how many times this is called recursively\0A    totaltime     total time spent in this call\0A    inlinetime    inline time (not in further subcalls)\0A\00", align 16
@.str.7 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@enable_doc = internal global [285 x i8] c"enable(subcalls=True, builtins=True)\0A\0AStart collecting profiling information.\0AIf 'subcalls' is True, also records for each function\0Astatistics separated according to its current caller.\0AIf 'builtins' is True, records the time spent in\0Abuilt-in functions separately from their caller.\0A\00", align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@disable_doc = internal global [51 x i8] c"disable()\0A\0AStop collecting profiling information.\0A\00", align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@clear_doc = internal global [60 x i8] c"clear()\0A\0AClear all profiling information collected so far.\0A\00", align 16
@PyExc_MemoryError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"memory was exhausted while profiling\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"((OllddO))\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"((Olldd))\00", align 1
@profiler_enable.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"subcalls\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"|ii:enable\00", align 1
@PyCFunction_Type = external global %struct._typeobject, align 8
@PyModule_Type = external global %struct._typeobject, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"<%U.%s>\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"<built-in method %s>\00", align 1
@profiler_init.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"timeunit\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"|Odii:Profiler\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"_lsprof.profiler_entry\00", align 1
@profiler_entry_fields = internal global [7 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"code object or built-in function name\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"callcount\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"how many times this was called\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"reccallcount\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"how many times called recursively\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"totaltime\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"total time in this entry\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"inlinetime\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"inline time in this entry (not in subcalls)\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"calls\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"details of the calls\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"_lsprof.profiler_subentry\00", align 1
@profiler_subentry_fields = internal global [6 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [45 x i8] c"called code object or built-in function name\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"how many times this is called\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"how many times this is called recursively\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"total time spent in this call\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"inline time (not in further subcalls)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__lsprof() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_lsprofmodule, i32 1013)
  store %struct._object* %call, %struct._object** %module, align 8
  %0 = load %struct._object*, %struct._object** %module, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %module, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %d, align 8
  %call2 = call i32 @PyType_Ready(%struct._typeobject* @PyProfiler_Type)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %d, align 8
  %call6 = call i32 @PyDict_SetItemString(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyProfiler_Type, i32 0, i32 0, i32 0))
  %3 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.16, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %call8 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StatsEntryType, %struct.PyStructSequence_Desc* @profiler_entry_desc)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  %call12 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StatsSubEntryType, %struct.PyStructSequence_Desc* @profiler_subentry_desc)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.5
  %4 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsEntryType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsEntryType, i32 0, i32 0, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsSubEntryType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc17 = add i64 %5, 1
  store i64 %inc17, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsSubEntryType, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load %struct._object*, %struct._object** %module, align 8
  %call18 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsEntryType, i32 0, i32 0, i32 0))
  %7 = load %struct._object*, %struct._object** %module, align 8
  %call19 = call i32 @PyModule_AddObject(%struct._object* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsSubEntryType, i32 0, i32 0, i32 0))
  %call20 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call20, %struct._object** @empty_tuple, align 8
  store i32 1, i32* @initialized, align 4
  %8 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then.10, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyTuple_New(i64) #1

; Function Attrs: nounwind uwtable
define internal void @profiler_dealloc(%struct.ProfilerObject* %op) #0 {
entry:
  %op.addr = alloca %struct.ProfilerObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %op, %struct.ProfilerObject** %op.addr, align 8
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, %struct._object* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8
  call void @flush_unmatched(%struct.ProfilerObject* %2)
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8
  call void @clearEntries(%struct.ProfilerObject* %3)
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %4, i32 0, i32 5
  %5 = load %struct._object*, %struct._object** %externalTimer, align 8
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.5

if.else:                                          ; preds = %do.body.2
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %14 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8
  %15 = bitcast %struct.ProfilerObject* %14 to %struct._object*
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 38
  %17 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %18 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8
  %19 = bitcast %struct.ProfilerObject* %18 to i8*
  call void %17(i8* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @profiler_init(%struct.ProfilerObject* %pObj, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %timer = alloca %struct._object*, align 8
  %timeunit = alloca double, align 8
  %subcalls = alloca i32, align 4
  %builtins = alloca i32, align 4
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %timer, align 8
  store double 0.000000e+00, double* %timeunit, align 8
  store i32 1, i32* %subcalls, align 4
  store i32 1, i32* %builtins, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @profiler_init.kwlist, i32 0, i32 0), %struct._object** %timer, double* %timeunit, i32* %subcalls, i32* %builtins)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %3 = load i32, i32* %subcalls, align 4
  %call1 = call i32 @setSubcalls(%struct.ProfilerObject* %2, i32 %3)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %5 = load i32, i32* %builtins, align 4
  %call2 = call i32 @setBuiltins(%struct.ProfilerObject* %4, i32 %5)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %6 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %6, i32 0, i32 5
  %7 = load %struct._object*, %struct._object** %externalTimer, align 8
  store %struct._object* %7, %struct._object** %o, align 8
  %8 = load %struct._object*, %struct._object** %timer, align 8
  %9 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimer6 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %9, i32 0, i32 5
  store %struct._object* %8, %struct._object** %externalTimer6, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %timer, align 8
  store %struct._object* %10, %struct._object** %_py_xincref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp7 = icmp ne %struct._object* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %do.body.10

do.body.10:                                       ; preds = %do.end
  %14 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %15, null
  br i1 %cmp11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %do.body.10
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt14, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt14, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body.13
  br label %if.end.17

if.else:                                          ; preds = %do.body.13
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %do.body.10
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %23 = load double, double* %timeunit, align 8
  %24 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimerUnit = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %24, i32 0, i32 6
  store double %23, double* %externalTimerUnit, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.20, %if.then.4, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare void @PyObject_Free(i8*) #1

declare void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @flush_unmatched(%struct.ProfilerObject* %pObj) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %pContext = alloca %struct._ProfilerContext*, align 8
  %profEntry = alloca %struct._ProfilerEntry*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %entry
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 2
  %1 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext, align 8
  %tobool = icmp ne %struct._ProfilerContext* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %currentProfilerContext1 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 2
  %3 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext1, align 8
  store %struct._ProfilerContext* %3, %struct._ProfilerContext** %pContext, align 8
  %4 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %ctxEntry = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %4, i32 0, i32 3
  %5 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %ctxEntry, align 8
  store %struct._ProfilerEntry* %5, %struct._ProfilerEntry** %profEntry, align 8
  %6 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8
  %tobool2 = icmp ne %struct._ProfilerEntry* %6, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %8 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %9 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8
  call void @Stop(%struct.ProfilerObject* %7, %struct._ProfilerContext* %8, %struct._ProfilerEntry* %9)
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %10, i32 0, i32 2
  %11 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8
  %12 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %currentProfilerContext3 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %12, i32 0, i32 2
  store %struct._ProfilerContext* %11, %struct._ProfilerContext** %currentProfilerContext3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %tobool4 = icmp ne %struct._ProfilerContext* %13, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %14 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %15 = bitcast %struct._ProfilerContext* %14 to i8*
  call void @PyMem_Free(i8* %15)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clearEntries(%struct.ProfilerObject* %pObj) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %c = alloca %struct._ProfilerContext*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %profilerEntries = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 1
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %profilerEntries, align 8
  %call = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %1, i32 (%struct.rotating_node_s*, i8*)* @freeEntry, i8* null)
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %profilerEntries1 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 1
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %profilerEntries1, align 8
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %3, i32 0, i32 2
  %4 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext, align 8
  %tobool = icmp ne %struct._ProfilerContext* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %currentProfilerContext2 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %5, i32 0, i32 2
  %6 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext2, align 8
  %7 = bitcast %struct._ProfilerContext* %6 to i8*
  call void @PyMem_Free(i8* %7)
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %currentProfilerContext3 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %8, i32 0, i32 2
  store %struct._ProfilerContext* null, %struct._ProfilerContext** %currentProfilerContext3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %freelistProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %9, i32 0, i32 3
  %10 = load %struct._ProfilerContext*, %struct._ProfilerContext** %freelistProfilerContext, align 8
  %tobool4 = icmp ne %struct._ProfilerContext* %10, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %freelistProfilerContext5 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %11, i32 0, i32 3
  %12 = load %struct._ProfilerContext*, %struct._ProfilerContext** %freelistProfilerContext5, align 8
  store %struct._ProfilerContext* %12, %struct._ProfilerContext** %c, align 8
  %13 = load %struct._ProfilerContext*, %struct._ProfilerContext** %c, align 8
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %13, i32 0, i32 2
  %14 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8
  %15 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %freelistProfilerContext6 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %15, i32 0, i32 3
  store %struct._ProfilerContext* %14, %struct._ProfilerContext** %freelistProfilerContext6, align 8
  %16 = load %struct._ProfilerContext*, %struct._ProfilerContext** %c, align 8
  %17 = bitcast %struct._ProfilerContext* %16 to i8*
  call void @PyMem_Free(i8* %17)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %freelistProfilerContext7 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %18, i32 0, i32 3
  store %struct._ProfilerContext* null, %struct._ProfilerContext** %freelistProfilerContext7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Stop(%struct.ProfilerObject* %pObj, %struct._ProfilerContext* %self, %struct._ProfilerEntry* %entry1) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %self.addr = alloca %struct._ProfilerContext*, align 8
  %entry.addr = alloca %struct._ProfilerEntry*, align 8
  %tt = alloca i64, align 8
  %it = alloca i64, align 8
  %caller = alloca %struct._ProfilerEntry*, align 8
  %subentry = alloca %struct._ProfilerSubEntry*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store %struct._ProfilerContext* %self, %struct._ProfilerContext** %self.addr, align 8
  store %struct._ProfilerEntry* %entry1, %struct._ProfilerEntry** %entry.addr, align 8
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %externalTimer, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %call = call i64 @CallExternalTimer(%struct.ProfilerObject* %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @hpTimer()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call2, %cond.false ]
  %3 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %t0 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %3, i32 0, i32 0
  %4 = load i64, i64* %t0, align 8
  %sub = sub i64 %cond, %4
  store i64 %sub, i64* %tt, align 8
  %5 = load i64, i64* %tt, align 8
  %6 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %subt = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %6, i32 0, i32 1
  %7 = load i64, i64* %subt, align 8
  %sub3 = sub i64 %5, %7
  store i64 %sub3, i64* %it, align 8
  %8 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %8, i32 0, i32 2
  %9 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8
  %tobool4 = icmp ne %struct._ProfilerContext* %9, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load i64, i64* %tt, align 8
  %11 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %previous5 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %11, i32 0, i32 2
  %12 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous5, align 8
  %subt6 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %12, i32 0, i32 1
  %13 = load i64, i64* %subt6, align 8
  %add = add i64 %13, %10
  store i64 %add, i64* %subt6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %14 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %previous7 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %14, i32 0, i32 2
  %15 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous7, align 8
  %16 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %16, i32 0, i32 2
  store %struct._ProfilerContext* %15, %struct._ProfilerContext** %currentProfilerContext, align 8
  %17 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %recursionLevel = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %17, i32 0, i32 6
  %18 = load i64, i64* %recursionLevel, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %recursionLevel, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %19 = load i64, i64* %tt, align 8
  %20 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %tt9 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %20, i32 0, i32 2
  %21 = load i64, i64* %tt9, align 8
  %add10 = add i64 %21, %19
  store i64 %add10, i64* %tt9, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %22 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %recursivecallcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %22, i32 0, i32 5
  %23 = load i64, i64* %recursivecallcount, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %recursivecallcount, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %24 = load i64, i64* %it, align 8
  %25 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %it12 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %25, i32 0, i32 3
  %26 = load i64, i64* %it12, align 8
  %add13 = add i64 %26, %24
  store i64 %add13, i64* %it12, align 8
  %27 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %callcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %27, i32 0, i32 4
  %28 = load i64, i64* %callcount, align 8
  %inc14 = add i64 %28, 1
  store i64 %inc14, i64* %callcount, align 8
  %29 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %29, i32 0, i32 4
  %30 = load i32, i32* %flags, align 4
  %and = and i32 %30, 2
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.end.11
  %31 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %previous16 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %31, i32 0, i32 2
  %32 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous16, align 8
  %tobool17 = icmp ne %struct._ProfilerContext* %32, null
  br i1 %tobool17, label %if.then.18, label %if.end.38

if.then.18:                                       ; preds = %land.lhs.true
  %33 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %previous19 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %33, i32 0, i32 2
  %34 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous19, align 8
  %ctxEntry = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %34, i32 0, i32 3
  %35 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %ctxEntry, align 8
  store %struct._ProfilerEntry* %35, %struct._ProfilerEntry** %caller, align 8
  %36 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %37 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller, align 8
  %38 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %call20 = call %struct._ProfilerSubEntry* @getSubEntry(%struct.ProfilerObject* %36, %struct._ProfilerEntry* %37, %struct._ProfilerEntry* %38)
  store %struct._ProfilerSubEntry* %call20, %struct._ProfilerSubEntry** %subentry, align 8
  %39 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %tobool21 = icmp ne %struct._ProfilerSubEntry* %39, null
  br i1 %tobool21, label %if.then.22, label %if.end.37

if.then.22:                                       ; preds = %if.then.18
  %40 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %recursionLevel23 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %40, i32 0, i32 5
  %41 = load i64, i64* %recursionLevel23, align 8
  %dec24 = add i64 %41, -1
  store i64 %dec24, i64* %recursionLevel23, align 8
  %cmp25 = icmp eq i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.then.22
  %42 = load i64, i64* %tt, align 8
  %43 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %tt27 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %43, i32 0, i32 1
  %44 = load i64, i64* %tt27, align 8
  %add28 = add i64 %44, %42
  store i64 %add28, i64* %tt27, align 8
  br label %if.end.32

if.else.29:                                       ; preds = %if.then.22
  %45 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %recursivecallcount30 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %45, i32 0, i32 4
  %46 = load i64, i64* %recursivecallcount30, align 8
  %inc31 = add i64 %46, 1
  store i64 %inc31, i64* %recursivecallcount30, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.26
  %47 = load i64, i64* %it, align 8
  %48 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %it33 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %48, i32 0, i32 2
  %49 = load i64, i64* %it33, align 8
  %add34 = add i64 %49, %47
  store i64 %add34, i64* %it33, align 8
  %50 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %callcount35 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %50, i32 0, i32 3
  %51 = load i64, i64* %callcount35, align 8
  %inc36 = add i64 %51, 1
  store i64 %inc36, i64* %callcount35, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.32, %if.then.18
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %if.end.11
  ret void
}

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @CallExternalTimer(%struct.ProfilerObject* %pObj) #0 {
entry:
  %retval = alloca i64, align 8
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %result = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  %val = alloca double, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %externalTimer, align 8
  %2 = load %struct._object*, %struct._object** @empty_tuple, align 8
  %call = call %struct._object* @PyObject_Call(%struct._object* %1, %struct._object* %2, %struct._object* null)
  store %struct._object* %call, %struct._object** %o, align 8
  %3 = load %struct._object*, %struct._object** %o, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimer1 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %4, i32 0, i32 5
  %5 = load %struct._object*, %struct._object** %externalTimer1, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %5)
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimerUnit = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %6, i32 0, i32 6
  %7 = load double, double* %externalTimerUnit, align 8
  %cmp2 = fcmp ogt double %7, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %o, align 8
  %call4 = call i64 @PyLong_AsLongLong(%struct._object* %8)
  store i64 %call4, i64* %result, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %o, align 8
  %call5 = call double @PyFloat_AsDouble(%struct._object* %9)
  store double %call5, double* %val, align 8
  %10 = load double, double* %val, align 8
  %mul = fmul double %10, 0x41F0000000000000
  %conv = fptosi double %mul to i64
  store i64 %conv, i64* %result, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call12, null
  br i1 %tobool, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %18 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimer14 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %18, i32 0, i32 5
  %19 = load %struct._object*, %struct._object** %externalTimer14, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %19)
  store i64 0, i64* %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  %20 = load i64, i64* %result, align 8
  store i64 %20, i64* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.then
  %21 = load i64, i64* %retval
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define internal i64 @hpTimer() #0 {
entry:
  %tv = alloca %struct.timeval, align 8
  %ret = alloca i64, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #3
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  store i64 %0, i64* %ret, align 8
  %1 = load i64, i64* %ret, align 8
  %mul = mul i64 %1, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %2 = load i64, i64* %tv_usec, align 8
  %add = add i64 %mul, %2
  store i64 %add, i64* %ret, align 8
  %3 = load i64, i64* %ret, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal %struct._ProfilerSubEntry* @getSubEntry(%struct.ProfilerObject* %pObj, %struct._ProfilerEntry* %caller, %struct._ProfilerEntry* %entry1) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %caller.addr = alloca %struct._ProfilerEntry*, align 8
  %entry.addr = alloca %struct._ProfilerEntry*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store %struct._ProfilerEntry* %caller, %struct._ProfilerEntry** %caller.addr, align 8
  store %struct._ProfilerEntry* %entry1, %struct._ProfilerEntry** %entry.addr, align 8
  %0 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller.addr, align 8
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %0, i32 0, i32 7
  %1 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %2 = bitcast %struct._ProfilerEntry* %1 to i8*
  %call = call %struct.rotating_node_s* @RotatingTree_Get(%struct.rotating_node_s** %calls, i8* %2)
  %3 = bitcast %struct.rotating_node_s* %call to %struct._ProfilerSubEntry*
  ret %struct._ProfilerSubEntry* %3
}

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

declare i64 @PyLong_AsLongLong(%struct._object*) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare %struct.rotating_node_s* @RotatingTree_Get(%struct.rotating_node_s**, i8*) #1

declare i32 @RotatingTree_Enum(%struct.rotating_node_s*, i32 (%struct.rotating_node_s*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @freeEntry(%struct.rotating_node_s* %header, i8* %arg) #0 {
entry:
  %header.addr = alloca %struct.rotating_node_s*, align 8
  %arg.addr = alloca i8*, align 8
  %entry1 = alloca %struct._ProfilerEntry*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rotating_node_s* %header, %struct.rotating_node_s** %header.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.rotating_node_s*, %struct.rotating_node_s** %header.addr, align 8
  %1 = bitcast %struct.rotating_node_s* %0 to %struct._ProfilerEntry*
  store %struct._ProfilerEntry* %1, %struct._ProfilerEntry** %entry1, align 8
  %2 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %2, i32 0, i32 7
  %3 = load %struct.rotating_node_s*, %struct.rotating_node_s** %calls, align 8
  %call = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %3, i32 (%struct.rotating_node_s*, i8*)* @freeSubEntry, i8* null)
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %userObj = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %userObj, align 8
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
  %12 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %13 = bitcast %struct._ProfilerEntry* %12 to i8*
  call void @PyMem_Free(i8* %13)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @freeSubEntry(%struct.rotating_node_s* %header, i8* %arg) #0 {
entry:
  %header.addr = alloca %struct.rotating_node_s*, align 8
  %arg.addr = alloca i8*, align 8
  %subentry = alloca %struct._ProfilerSubEntry*, align 8
  store %struct.rotating_node_s* %header, %struct.rotating_node_s** %header.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.rotating_node_s*, %struct.rotating_node_s** %header.addr, align 8
  %1 = bitcast %struct.rotating_node_s* %0 to %struct._ProfilerSubEntry*
  store %struct._ProfilerSubEntry* %1, %struct._ProfilerSubEntry** %subentry, align 8
  %2 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %3 = bitcast %struct._ProfilerSubEntry* %2 to i8*
  call void @PyMem_Free(i8* %3)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @profiler_getstats(%struct.ProfilerObject* %pObj, %struct._object* %noarg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  %collect = alloca %struct.statscollector_t, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %call = call i32 @pending_exception(%struct.ProfilerObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %1, i32 0, i32 5
  %2 = load %struct._object*, %struct._object** %externalTimer, align 8
  %tobool1 = icmp ne %struct._object* %2, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call double @hpTimerUnit()
  %factor = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 2
  store double %call3, double* %factor, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimerUnit = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %3, i32 0, i32 6
  %4 = load double, double* %externalTimerUnit, align 8
  %cmp = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.else
  %5 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimerUnit5 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %5, i32 0, i32 6
  %6 = load double, double* %externalTimerUnit5, align 8
  %factor6 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 2
  store double %6, double* %factor6, align 8
  br label %if.end.9

if.else.7:                                        ; preds = %if.else
  %factor8 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 2
  store double 0x3DF0000000000000, double* %factor8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.2
  %call11 = call %struct._object* @PyList_New(i64 0)
  %list = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 0
  store %struct._object* %call11, %struct._object** %list, align 8
  %list12 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 0
  %7 = load %struct._object*, %struct._object** %list12, align 8
  %cmp13 = icmp eq %struct._object* %7, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %profilerEntries = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %8, i32 0, i32 1
  %9 = load %struct.rotating_node_s*, %struct.rotating_node_s** %profilerEntries, align 8
  %10 = bitcast %struct.statscollector_t* %collect to i8*
  %call16 = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %9, i32 (%struct.rotating_node_s*, i8*)* @statsForEntry, i8* %10)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %list19 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 0
  %11 = load %struct._object*, %struct._object** %list19, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body
  br label %if.end.23

if.else.22:                                       ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.15
  %list25 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 0
  %18 = load %struct._object*, %struct._object** %list25, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %do.end, %if.then.14, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @profiler_enable(%struct.ProfilerObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.ProfilerObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %subcalls = alloca i32, align 4
  %builtins = alloca i32, align 4
  store %struct.ProfilerObject* %self, %struct.ProfilerObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 -1, i32* %subcalls, align 4
  store i32 -1, i32* %builtins, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @profiler_enable.kwlist, i32 0, i32 0), i32* %subcalls, i32* %builtins)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8
  %3 = load i32, i32* %subcalls, align 4
  %call1 = call i32 @setSubcalls(%struct.ProfilerObject* %2, i32 %3)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8
  %5 = load i32, i32* %builtins, align 4
  %call2 = call i32 @setBuiltins(%struct.ProfilerObject* %4, i32 %5)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %6 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8
  %7 = bitcast %struct.ProfilerObject* %6 to %struct._object*
  call void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* @profiler_callback, %struct._object* %7)
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %8, i32 0, i32 4
  %9 = load i32, i32* %flags, align 4
  %or = or i32 %9, 1
  store i32 %or, i32* %flags, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @profiler_disable(%struct.ProfilerObject* %self, %struct._object* %noarg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.ProfilerObject*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %self, %struct.ProfilerObject** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, -2
  store i32 %and, i32* %flags, align 4
  call void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, %struct._object* null)
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8
  call void @flush_unmatched(%struct.ProfilerObject* %2)
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8
  %call = call i32 @pending_exception(%struct.ProfilerObject* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @profiler_clear(%struct.ProfilerObject* %pObj, %struct._object* %noarg) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  call void @clearEntries(%struct.ProfilerObject* %0)
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal i32 @pending_exception(%struct.ProfilerObject* %pObj) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags1 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 4
  %3 = load i32, i32* %flags1, align 4
  %sub = sub i32 %3, 256
  store i32 %sub, i32* %flags1, align 4
  %4 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal double @hpTimerUnit() #0 {
entry:
  ret double 1.000000e-06
}

declare %struct._object* @PyList_New(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @statsForEntry(%struct.rotating_node_s* %node, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.rotating_node_s*, align 8
  %arg.addr = alloca i8*, align 8
  %entry1 = alloca %struct._ProfilerEntry*, align 8
  %collect = alloca %struct.statscollector_t*, align 8
  %info = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  store %struct.rotating_node_s* %node, %struct.rotating_node_s** %node.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8
  %1 = bitcast %struct.rotating_node_s* %0 to %struct._ProfilerEntry*
  store %struct._ProfilerEntry* %1, %struct._ProfilerEntry** %entry1, align 8
  %2 = load i8*, i8** %arg.addr, align 8
  %3 = bitcast i8* %2 to %struct.statscollector_t*
  store %struct.statscollector_t* %3, %struct.statscollector_t** %collect, align 8
  %4 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %callcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %4, i32 0, i32 4
  %5 = load i64, i64* %callcount, align 8
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %6, i32 0, i32 7
  %7 = load %struct.rotating_node_s*, %struct.rotating_node_s** %calls, align 8
  %cmp2 = icmp ne %struct.rotating_node_s* %7, null
  br i1 %cmp2, label %if.then.3, label %if.else.17

if.then.3:                                        ; preds = %if.end
  %call = call %struct._object* @PyList_New(i64 0)
  %8 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %sublist = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %8, i32 0, i32 1
  store %struct._object* %call, %struct._object** %sublist, align 8
  %9 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %sublist4 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %sublist4, align 8
  %cmp5 = icmp eq %struct._object* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %11 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %calls8 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %11, i32 0, i32 7
  %12 = load %struct.rotating_node_s*, %struct.rotating_node_s** %calls8, align 8
  %13 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %14 = bitcast %struct.statscollector_t* %13 to i8*
  %call9 = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %12, i32 (%struct.rotating_node_s*, i8*)* @statsForSubEntry, i8* %14)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %15 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %sublist12 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %sublist12, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.7
  br label %if.end.19

if.else.17:                                       ; preds = %if.end
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %24 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %sublist18 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %24, i32 0, i32 1
  store %struct._object* @_Py_NoneStruct, %struct._object** %sublist18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.end.16
  %25 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %userObj = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %25, i32 0, i32 1
  %26 = load %struct._object*, %struct._object** %userObj, align 8
  %27 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %callcount20 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %27, i32 0, i32 4
  %28 = load i64, i64* %callcount20, align 8
  %29 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %recursivecallcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %29, i32 0, i32 5
  %30 = load i64, i64* %recursivecallcount, align 8
  %31 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %factor = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %31, i32 0, i32 2
  %32 = load double, double* %factor, align 8
  %33 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %tt = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %33, i32 0, i32 2
  %34 = load i64, i64* %tt, align 8
  %conv = sitofp i64 %34 to double
  %mul = fmul double %32, %conv
  %35 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %factor21 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %35, i32 0, i32 2
  %36 = load double, double* %factor21, align 8
  %37 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %it = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %37, i32 0, i32 3
  %38 = load i64, i64* %it, align 8
  %conv22 = sitofp i64 %38 to double
  %mul23 = fmul double %36, %conv22
  %39 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %sublist24 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %39, i32 0, i32 1
  %40 = load %struct._object*, %struct._object** %sublist24, align 8
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsEntryType, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %struct._object* %26, i64 %28, i64 %30, double %mul, double %mul23, %struct._object* %40)
  store %struct._object* %call25, %struct._object** %info, align 8
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.19
  %41 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %sublist28 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %41, i32 0, i32 1
  %42 = load %struct._object*, %struct._object** %sublist28, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp27, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %44, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.26
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.26
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %47(%struct._object* %48)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %49 = load %struct._object*, %struct._object** %info, align 8
  %cmp39 = icmp eq %struct._object* %49, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.38
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %do.end.38
  %50 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %list = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %50, i32 0, i32 0
  %51 = load %struct._object*, %struct._object** %list, align 8
  %52 = load %struct._object*, %struct._object** %info, align 8
  %call43 = call i32 @PyList_Append(%struct._object* %51, %struct._object* %52)
  store i32 %call43, i32* %err, align 4
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.42
  %53 = load %struct._object*, %struct._object** %info, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp45, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %55, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.44
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.44
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %58(%struct._object* %59)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %60 = load i32, i32* %err, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %do.end.55, %if.then.41, %do.end, %if.then.6, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @statsForSubEntry(%struct.rotating_node_s* %node, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.rotating_node_s*, align 8
  %arg.addr = alloca i8*, align 8
  %sentry = alloca %struct._ProfilerSubEntry*, align 8
  %collect = alloca %struct.statscollector_t*, align 8
  %entry1 = alloca %struct._ProfilerEntry*, align 8
  %err = alloca i32, align 4
  %sinfo = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rotating_node_s* %node, %struct.rotating_node_s** %node.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8
  %1 = bitcast %struct.rotating_node_s* %0 to %struct._ProfilerSubEntry*
  store %struct._ProfilerSubEntry* %1, %struct._ProfilerSubEntry** %sentry, align 8
  %2 = load i8*, i8** %arg.addr, align 8
  %3 = bitcast i8* %2 to %struct.statscollector_t*
  store %struct.statscollector_t* %3, %struct.statscollector_t** %collect, align 8
  %4 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8
  %header = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %4, i32 0, i32 0
  %key = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %header, i32 0, i32 0
  %5 = load i8*, i8** %key, align 8
  %6 = bitcast i8* %5 to %struct._ProfilerEntry*
  store %struct._ProfilerEntry* %6, %struct._ProfilerEntry** %entry1, align 8
  %7 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8
  %userObj = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %userObj, align 8
  %9 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8
  %callcount = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %9, i32 0, i32 3
  %10 = load i64, i64* %callcount, align 8
  %11 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8
  %recursivecallcount = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %11, i32 0, i32 4
  %12 = load i64, i64* %recursivecallcount, align 8
  %13 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %factor = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %13, i32 0, i32 2
  %14 = load double, double* %factor, align 8
  %15 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8
  %tt = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %15, i32 0, i32 1
  %16 = load i64, i64* %tt, align 8
  %conv = sitofp i64 %16 to double
  %mul = fmul double %14, %conv
  %17 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %factor2 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %17, i32 0, i32 2
  %18 = load double, double* %factor2, align 8
  %19 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8
  %it = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %19, i32 0, i32 2
  %20 = load i64, i64* %it, align 8
  %conv3 = sitofp i64 %20 to double
  %mul4 = fmul double %18, %conv3
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsSubEntryType, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), %struct._object* %8, i64 %10, i64 %12, double %mul, double %mul4)
  store %struct._object* %call, %struct._object** %sinfo, align 8
  %21 = load %struct._object*, %struct._object** %sinfo, align 8
  %cmp = icmp eq %struct._object* %21, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %22 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8
  %sublist = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %sublist, align 8
  %24 = load %struct._object*, %struct._object** %sinfo, align 8
  %call6 = call i32 @PyList_Append(%struct._object* %23, %struct._object* %24)
  store i32 %call6, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %25 = load %struct._object*, %struct._object** %sinfo, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %32 = load i32, i32* %err, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @setSubcalls(%struct.ProfilerObject* %pObj, i32 %nvalue) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %nvalue.addr = alloca i32, align 4
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store i32 %nvalue, i32* %nvalue.addr, align 4
  %0 = load i32, i32* %nvalue.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %1, i32 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, -3
  store i32 %and, i32* %flags, align 4
  br label %if.end.4

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %nvalue.addr, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags3 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %4, i32 0, i32 4
  %5 = load i32, i32* %flags3, align 4
  %or = or i32 %5, 2
  store i32 %or, i32* %flags3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @setBuiltins(%struct.ProfilerObject* %pObj, i32 %nvalue) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %nvalue.addr = alloca i32, align 4
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store i32 %nvalue, i32* %nvalue.addr, align 4
  %0 = load i32, i32* %nvalue.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %1, i32 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, -5
  store i32 %and, i32* %flags, align 4
  br label %if.end.4

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %nvalue.addr, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags3 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %4, i32 0, i32 4
  %5 = load i32, i32* %flags3, align 4
  %or = or i32 %5, 4
  store i32 %or, i32* %flags3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @profiler_callback(%struct._object* %self, %struct._frame* %frame, i32 %what, %struct._object* %arg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %frame.addr = alloca %struct._frame*, align 8
  %what.addr = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._frame* %frame, %struct._frame** %frame.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.4
    i32 6, label %sw.bb.5
    i32 5, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %2 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %2, i32 0, i32 2
  %3 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  %4 = bitcast %struct.PyCodeObject* %3 to i8*
  %5 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_code1 = getelementptr inbounds %struct._frame, %struct._frame* %5, i32 0, i32 2
  %6 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code1, align 8
  %7 = bitcast %struct.PyCodeObject* %6 to %struct._object*
  call void @ptrace_enter_call(%struct._object* %1, i8* %4, %struct._object* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %9 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_code3 = getelementptr inbounds %struct._frame, %struct._frame* %9, i32 0, i32 2
  %10 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code3, align 8
  %11 = bitcast %struct.PyCodeObject* %10 to i8*
  call void @ptrace_leave_call(%struct._object* %8, i8* %11)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %12 = load %struct._object*, %struct._object** %self.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.ProfilerObject*
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %13, i32 0, i32 4
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.4
  %15 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %16, @PyCFunction_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct._object*, %struct._object** %self.addr, align 8
  %18 = load %struct._object*, %struct._object** %arg.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyCFunctionObject*
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %19, i32 0, i32 1
  %20 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %21 = bitcast %struct.PyMethodDef* %20 to i8*
  %22 = load %struct._object*, %struct._object** %arg.addr, align 8
  call void @ptrace_enter_call(%struct._object* %17, i8* %21, %struct._object* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb.4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry, %entry
  %23 = load %struct._object*, %struct._object** %self.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.ProfilerObject*
  %flags6 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %24, i32 0, i32 4
  %25 = load i32, i32* %flags6, align 4
  %and7 = and i32 %25, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.14

land.lhs.true.9:                                  ; preds = %sw.bb.5
  %26 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %27, @PyCFunction_Type
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true.9
  %28 = load %struct._object*, %struct._object** %self.addr, align 8
  %29 = load %struct._object*, %struct._object** %arg.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyCFunctionObject*
  %m_ml13 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %30, i32 0, i32 1
  %31 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml13, align 8
  %32 = bitcast %struct.PyMethodDef* %31 to i8*
  call void @ptrace_leave_call(%struct._object* %28, i8* %32)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true.9, %sw.bb.5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.14, %if.end, %sw.bb.2, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @ptrace_enter_call(%struct._object* %self, i8* %key, %struct._object* %userObj) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %userObj.addr = alloca %struct._object*, align 8
  %pObj = alloca %struct.ProfilerObject*, align 8
  %profEntry = alloca %struct._ProfilerEntry*, align 8
  %pContext = alloca %struct._ProfilerContext*, align 8
  %last_type = alloca %struct._object*, align 8
  %last_value = alloca %struct._object*, align 8
  %last_tb = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._object* %userObj, %struct._object** %userObj.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.ProfilerObject*
  store %struct.ProfilerObject* %1, %struct.ProfilerObject** %pObj, align 8
  call void @PyErr_Fetch(%struct._object** %last_type, %struct._object** %last_value, %struct._object** %last_tb)
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %call = call %struct._ProfilerEntry* @getEntry(%struct.ProfilerObject* %2, i8* %3)
  store %struct._ProfilerEntry* %call, %struct._ProfilerEntry** %profEntry, align 8
  %4 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8
  %cmp = icmp eq %struct._ProfilerEntry* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %5 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %6 = load i8*, i8** %key.addr, align 8
  %7 = load %struct._object*, %struct._object** %userObj.addr, align 8
  %call1 = call %struct._ProfilerEntry* @newProfilerEntry(%struct.ProfilerObject* %5, i8* %6, %struct._object* %7)
  store %struct._ProfilerEntry* %call1, %struct._ProfilerEntry** %profEntry, align 8
  %8 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8
  %cmp2 = icmp eq %struct._ProfilerEntry* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %restorePyerr

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %freelistProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %9, i32 0, i32 3
  %10 = load %struct._ProfilerContext*, %struct._ProfilerContext** %freelistProfilerContext, align 8
  store %struct._ProfilerContext* %10, %struct._ProfilerContext** %pContext, align 8
  %11 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %tobool = icmp ne %struct._ProfilerContext* %11, null
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.4
  %12 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %12, i32 0, i32 2
  %13 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8
  %14 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %freelistProfilerContext6 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %14, i32 0, i32 3
  store %struct._ProfilerContext* %13, %struct._ProfilerContext** %freelistProfilerContext6, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end.4
  %call7 = call i8* @PyMem_Malloc(i64 32)
  %15 = bitcast i8* %call7 to %struct._ProfilerContext*
  store %struct._ProfilerContext* %15, %struct._ProfilerContext** %pContext, align 8
  %16 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %cmp8 = icmp eq %struct._ProfilerContext* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  %17 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %17, i32 0, i32 4
  %18 = load i32, i32* %flags, align 4
  %or = or i32 %18, 256
  store i32 %or, i32* %flags, align 4
  br label %restorePyerr

if.end.10:                                        ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.5
  %19 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %20 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %21 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8
  call void @initContext(%struct.ProfilerObject* %19, %struct._ProfilerContext* %20, %struct._ProfilerEntry* %21)
  br label %restorePyerr

restorePyerr:                                     ; preds = %if.end.11, %if.then.9, %if.then.3
  %22 = load %struct._object*, %struct._object** %last_type, align 8
  %23 = load %struct._object*, %struct._object** %last_value, align 8
  %24 = load %struct._object*, %struct._object** %last_tb, align 8
  call void @PyErr_Restore(%struct._object* %22, %struct._object* %23, %struct._object* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ptrace_leave_call(%struct._object* %self, i8* %key) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %pObj = alloca %struct.ProfilerObject*, align 8
  %profEntry = alloca %struct._ProfilerEntry*, align 8
  %pContext = alloca %struct._ProfilerContext*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.ProfilerObject*
  store %struct.ProfilerObject* %1, %struct.ProfilerObject** %pObj, align 8
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 2
  %3 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext, align 8
  store %struct._ProfilerContext* %3, %struct._ProfilerContext** %pContext, align 8
  %4 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %cmp = icmp eq %struct._ProfilerContext* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %6 = load i8*, i8** %key.addr, align 8
  %call = call %struct._ProfilerEntry* @getEntry(%struct.ProfilerObject* %5, i8* %6)
  store %struct._ProfilerEntry* %call, %struct._ProfilerEntry** %profEntry, align 8
  %7 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8
  %tobool = icmp ne %struct._ProfilerEntry* %7, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %9 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %10 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8
  call void @Stop(%struct.ProfilerObject* %8, %struct._ProfilerContext* %9, %struct._ProfilerEntry* %10)
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %11 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %11, i32 0, i32 2
  %12 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8
  %13 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %currentProfilerContext2 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %13, i32 0, i32 2
  store %struct._ProfilerContext* %12, %struct._ProfilerContext** %currentProfilerContext2, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1
  %14 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %freelistProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %14, i32 0, i32 3
  %15 = load %struct._ProfilerContext*, %struct._ProfilerContext** %freelistProfilerContext, align 8
  %16 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %previous4 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %16, i32 0, i32 2
  store %struct._ProfilerContext* %15, %struct._ProfilerContext** %previous4, align 8
  %17 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8
  %18 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8
  %freelistProfilerContext5 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %18, i32 0, i32 3
  store %struct._ProfilerContext* %17, %struct._ProfilerContext** %freelistProfilerContext5, align 8
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

; Function Attrs: nounwind uwtable
define internal %struct._ProfilerEntry* @getEntry(%struct.ProfilerObject* %pObj, i8* %key) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %profilerEntries = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 1
  %1 = load i8*, i8** %key.addr, align 8
  %call = call %struct.rotating_node_s* @RotatingTree_Get(%struct.rotating_node_s** %profilerEntries, i8* %1)
  %2 = bitcast %struct.rotating_node_s* %call to %struct._ProfilerEntry*
  ret %struct._ProfilerEntry* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._ProfilerEntry* @newProfilerEntry(%struct.ProfilerObject* %pObj, i8* %key, %struct._object* %userObj) #0 {
entry:
  %retval = alloca %struct._ProfilerEntry*, align 8
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %key.addr = alloca i8*, align 8
  %userObj.addr = alloca %struct._object*, align 8
  %self = alloca %struct._ProfilerEntry*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._object* %userObj, %struct._object** %userObj.addr, align 8
  %call = call i8* @PyMem_Malloc(i64 80)
  %0 = bitcast i8* %call to %struct._ProfilerEntry*
  store %struct._ProfilerEntry* %0, %struct._ProfilerEntry** %self, align 8
  %1 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %cmp = icmp eq %struct._ProfilerEntry* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 4
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 256
  store i32 %or, i32* %flags, align 4
  store %struct._ProfilerEntry* null, %struct._ProfilerEntry** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %userObj.addr, align 8
  %call1 = call %struct._object* @normalizeUserObj(%struct._object* %4)
  store %struct._object* %call1, %struct._object** %userObj.addr, align 8
  %5 = load %struct._object*, %struct._object** %userObj.addr, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  call void @PyErr_Clear()
  %6 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %7 = bitcast %struct._ProfilerEntry* %6 to i8*
  call void @PyMem_Free(i8* %7)
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags4 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %8, i32 0, i32 4
  %9 = load i32, i32* %flags4, align 4
  %or5 = or i32 %9, 256
  store i32 %or5, i32* %flags4, align 4
  store %struct._ProfilerEntry* null, %struct._ProfilerEntry** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load i8*, i8** %key.addr, align 8
  %11 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %header = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %11, i32 0, i32 0
  %key7 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %header, i32 0, i32 0
  store i8* %10, i8** %key7, align 8
  %12 = load %struct._object*, %struct._object** %userObj.addr, align 8
  %13 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %userObj8 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %13, i32 0, i32 1
  store %struct._object* %12, %struct._object** %userObj8, align 8
  %14 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %tt = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %14, i32 0, i32 2
  store i64 0, i64* %tt, align 8
  %15 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %it = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %15, i32 0, i32 3
  store i64 0, i64* %it, align 8
  %16 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %callcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %16, i32 0, i32 4
  store i64 0, i64* %callcount, align 8
  %17 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %recursivecallcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %17, i32 0, i32 5
  store i64 0, i64* %recursivecallcount, align 8
  %18 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %recursionLevel = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %18, i32 0, i32 6
  store i64 0, i64* %recursionLevel, align 8
  %19 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %19, i32 0, i32 7
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %calls, align 8
  %20 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %profilerEntries = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %20, i32 0, i32 1
  %21 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  %header9 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %21, i32 0, i32 0
  call void @RotatingTree_Add(%struct.rotating_node_s** %profilerEntries, %struct.rotating_node_s* %header9)
  %22 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8
  store %struct._ProfilerEntry* %22, %struct._ProfilerEntry** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3, %if.then
  %23 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %retval
  ret %struct._ProfilerEntry* %23
}

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @initContext(%struct.ProfilerObject* %pObj, %struct._ProfilerContext* %self, %struct._ProfilerEntry* %entry1) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %self.addr = alloca %struct._ProfilerContext*, align 8
  %entry.addr = alloca %struct._ProfilerEntry*, align 8
  %caller = alloca %struct._ProfilerEntry*, align 8
  %subentry = alloca %struct._ProfilerSubEntry*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store %struct._ProfilerContext* %self, %struct._ProfilerContext** %self.addr, align 8
  store %struct._ProfilerEntry* %entry1, %struct._ProfilerEntry** %entry.addr, align 8
  %0 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %1 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %ctxEntry = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %1, i32 0, i32 3
  store %struct._ProfilerEntry* %0, %struct._ProfilerEntry** %ctxEntry, align 8
  %2 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %subt = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %2, i32 0, i32 1
  store i64 0, i64* %subt, align 8
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %3, i32 0, i32 2
  %4 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext, align 8
  %5 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %5, i32 0, i32 2
  store %struct._ProfilerContext* %4, %struct._ProfilerContext** %previous, align 8
  %6 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %7 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %currentProfilerContext2 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %7, i32 0, i32 2
  store %struct._ProfilerContext* %6, %struct._ProfilerContext** %currentProfilerContext2, align 8
  %8 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %recursionLevel = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %8, i32 0, i32 6
  %9 = load i64, i64* %recursionLevel, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %recursionLevel, align 8
  %10 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %10, i32 0, i32 4
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %previous3 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %12, i32 0, i32 2
  %13 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous3, align 8
  %tobool4 = icmp ne %struct._ProfilerContext* %13, null
  br i1 %tobool4, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %previous5 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %14, i32 0, i32 2
  %15 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous5, align 8
  %ctxEntry6 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %15, i32 0, i32 3
  %16 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %ctxEntry6, align 8
  store %struct._ProfilerEntry* %16, %struct._ProfilerEntry** %caller, align 8
  %17 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %18 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller, align 8
  %19 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %call = call %struct._ProfilerSubEntry* @getSubEntry(%struct.ProfilerObject* %17, %struct._ProfilerEntry* %18, %struct._ProfilerEntry* %19)
  store %struct._ProfilerSubEntry* %call, %struct._ProfilerSubEntry** %subentry, align 8
  %20 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %cmp = icmp eq %struct._ProfilerSubEntry* %20, null
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %21 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %22 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller, align 8
  %23 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %call8 = call %struct._ProfilerSubEntry* @newSubEntry(%struct.ProfilerObject* %21, %struct._ProfilerEntry* %22, %struct._ProfilerEntry* %23)
  store %struct._ProfilerSubEntry* %call8, %struct._ProfilerSubEntry** %subentry, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %24 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %tobool9 = icmp ne %struct._ProfilerSubEntry* %24, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %25 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8
  %recursionLevel11 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %25, i32 0, i32 5
  %26 = load i64, i64* %recursionLevel11, align 8
  %inc12 = add i64 %26, 1
  store i64 %inc12, i64* %recursionLevel11, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %entry
  %27 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %27, i32 0, i32 5
  %28 = load %struct._object*, %struct._object** %externalTimer, align 8
  %tobool15 = icmp ne %struct._object* %28, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %29 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %call16 = call i64 @CallExternalTimer(%struct.ProfilerObject* %29)
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  %call17 = call i64 @hpTimer()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call16, %cond.true ], [ %call17, %cond.false ]
  %30 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8
  %t0 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %30, i32 0, i32 0
  store i64 %cond, i64* %t0, align 8
  ret void
}

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @normalizeUserObj(%struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %fn = alloca %struct.PyCFunctionObject*, align 8
  %mod = alloca %struct._object*, align 8
  %modname = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %mo = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyCFunction_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyCFunctionObject*
  store %struct.PyCFunctionObject* %6, %struct.PyCFunctionObject** %fn, align 8
  %7 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %7, i32 0, i32 2
  %8 = load %struct._object*, %struct._object** %m_self, align 8
  %cmp1 = icmp eq %struct._object* %8, null
  br i1 %cmp1, label %if.then.2, label %if.else.49

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %9, i32 0, i32 3
  %10 = load %struct._object*, %struct._object** %m_module, align 8
  store %struct._object* %10, %struct._object** %mod, align 8
  store %struct._object* null, %struct._object** %modname, align 8
  %11 = load %struct._object*, %struct._object** %mod, align 8
  %cmp3 = icmp ne %struct._object* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end.20

if.then.4:                                        ; preds = %if.then.2
  %12 = load %struct._object*, %struct._object** %mod, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags, align 8
  %and = and i64 %14, 268435456
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %15 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %15, %struct._object** %modname, align 8
  %16 = load %struct._object*, %struct._object** %modname, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt8, align 8
  %inc9 = add i64 %17, 1
  store i64 %inc9, i64* %ob_refcnt8, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.then.4
  %18 = load %struct._object*, %struct._object** %mod, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %19, @PyModule_Type
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %20 = load %struct._object*, %struct._object** %mod, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %21, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %lor.lhs.false, %if.else
  %22 = load %struct._object*, %struct._object** %mod, align 8
  %call14 = call %struct._object* @PyModule_GetNameObject(%struct._object* %22)
  store %struct._object* %call14, %struct._object** %modname, align 8
  %23 = load %struct._object*, %struct._object** %modname, align 8
  %cmp15 = icmp eq %struct._object* %23, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  call void @PyErr_Clear()
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %lor.lhs.false
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.7
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.2
  %24 = load %struct._object*, %struct._object** %modname, align 8
  %cmp21 = icmp ne %struct._object* %24, null
  br i1 %cmp21, label %if.then.22, label %if.end.45

if.then.22:                                       ; preds = %if.end.20
  %25 = load %struct._object*, %struct._object** %modname, align 8
  %call23 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0))
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.then.22
  %26 = load %struct._object*, %struct._object** %modname, align 8
  %27 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %27, i32 0, i32 1
  %28 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %28, i32 0, i32 0
  %29 = load i8*, i8** %ml_name, align 8
  %call26 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct._object* %26, i8* %29)
  store %struct._object* %call26, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.25
  %30 = load %struct._object*, %struct._object** %modname, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt27, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt27, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body
  br label %if.end.32

if.else.30:                                       ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.32
  %37 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %37, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.22
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %38 = load %struct._object*, %struct._object** %modname, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp35, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %40, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %43(%struct._object* %44)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %if.end.20
  %45 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8
  %m_ml46 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %45, i32 0, i32 1
  %46 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml46, align 8
  %ml_name47 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %46, i32 0, i32 0
  %47 = load i8*, i8** %ml_name47, align 8
  %call48 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* %47)
  store %struct._object* %call48, %struct._object** %retval
  br label %return

if.else.49:                                       ; preds = %if.end
  %48 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8
  %m_self50 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %48, i32 0, i32 2
  %49 = load %struct._object*, %struct._object** %m_self50, align 8
  store %struct._object* %49, %struct._object** %self, align 8
  %50 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8
  %m_ml51 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %50, i32 0, i32 1
  %51 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml51, align 8
  %ml_name52 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %51, i32 0, i32 0
  %52 = load i8*, i8** %ml_name52, align 8
  %call53 = call %struct._object* @PyUnicode_FromString(i8* %52)
  store %struct._object* %call53, %struct._object** %name, align 8
  %53 = load %struct._object*, %struct._object** %name, align 8
  %cmp54 = icmp ne %struct._object* %53, null
  br i1 %cmp54, label %if.then.55, label %if.end.94

if.then.55:                                       ; preds = %if.else.49
  %54 = load %struct._object*, %struct._object** %self, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %56 = load %struct._object*, %struct._object** %name, align 8
  %call57 = call %struct._object* @_PyType_Lookup(%struct._typeobject* %55, %struct._object* %56)
  store %struct._object* %call57, %struct._object** %mo, align 8
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.55
  %57 = load %struct._object*, %struct._object** %mo, align 8
  store %struct._object* %57, %struct._object** %_py_xincref_tmp, align 8
  %58 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp59 = icmp ne %struct._object* %58, null
  br i1 %cmp59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %do.body.58
  %59 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt61, align 8
  %inc62 = add i64 %60, 1
  store i64 %inc62, i64* %ob_refcnt61, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %do.body.58
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.64
  %61 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp66, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %63, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.65
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.65
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %66(%struct._object* %67)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %68 = load %struct._object*, %struct._object** %mo, align 8
  %cmp76 = icmp ne %struct._object* %68, null
  br i1 %cmp76, label %if.then.77, label %if.end.93

if.then.77:                                       ; preds = %do.end.75
  %69 = load %struct._object*, %struct._object** %mo, align 8
  %call78 = call %struct._object* @PyObject_Repr(%struct._object* %69)
  store %struct._object* %call78, %struct._object** %res, align 8
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.77
  %70 = load %struct._object*, %struct._object** %mo, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp80, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %72, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88

if.else.85:                                       ; preds = %do.body.79
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  call void %75(%struct._object* %76)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  %77 = load %struct._object*, %struct._object** %res, align 8
  %cmp90 = icmp ne %struct._object* %77, null
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %do.end.89
  %78 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %78, %struct._object** %retval
  br label %return

if.end.92:                                        ; preds = %do.end.89
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %do.end.75
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.else.49
  call void @PyErr_Clear()
  %79 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8
  %m_ml95 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %79, i32 0, i32 1
  %80 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml95, align 8
  %ml_name96 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %80, i32 0, i32 0
  %81 = load i8*, i8** %ml_name96, align 8
  %call97 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i8* %81)
  store %struct._object* %call97, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.then.91, %if.end.45, %do.end, %if.then
  %82 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %82
}

declare void @PyErr_Clear() #1

declare void @RotatingTree_Add(%struct.rotating_node_s**, %struct.rotating_node_s*) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyModule_GetNameObject(%struct._object*) #1

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @_PyType_Lookup(%struct._typeobject*, %struct._object*) #1

declare %struct._object* @PyObject_Repr(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._ProfilerSubEntry* @newSubEntry(%struct.ProfilerObject* %pObj, %struct._ProfilerEntry* %caller, %struct._ProfilerEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._ProfilerSubEntry*, align 8
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %caller.addr = alloca %struct._ProfilerEntry*, align 8
  %entry.addr = alloca %struct._ProfilerEntry*, align 8
  %self = alloca %struct._ProfilerSubEntry*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8
  store %struct._ProfilerEntry* %caller, %struct._ProfilerEntry** %caller.addr, align 8
  store %struct._ProfilerEntry* %entry1, %struct._ProfilerEntry** %entry.addr, align 8
  %call = call i8* @PyMem_Malloc(i64 64)
  %0 = bitcast i8* %call to %struct._ProfilerSubEntry*
  store %struct._ProfilerSubEntry* %0, %struct._ProfilerSubEntry** %self, align 8
  %1 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8
  %cmp = icmp eq %struct._ProfilerSubEntry* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 4
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 256
  store i32 %or, i32* %flags, align 4
  store %struct._ProfilerSubEntry* null, %struct._ProfilerSubEntry** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8
  %5 = bitcast %struct._ProfilerEntry* %4 to i8*
  %6 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8
  %header = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %6, i32 0, i32 0
  %key = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %header, i32 0, i32 0
  store i8* %5, i8** %key, align 8
  %7 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8
  %tt = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %7, i32 0, i32 1
  store i64 0, i64* %tt, align 8
  %8 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8
  %it = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %8, i32 0, i32 2
  store i64 0, i64* %it, align 8
  %9 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8
  %callcount = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %9, i32 0, i32 3
  store i64 0, i64* %callcount, align 8
  %10 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8
  %recursivecallcount = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %10, i32 0, i32 4
  store i64 0, i64* %recursivecallcount, align 8
  %11 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8
  %recursionLevel = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %11, i32 0, i32 5
  store i64 0, i64* %recursionLevel, align 8
  %12 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller.addr, align 8
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %12, i32 0, i32 7
  %13 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8
  %header2 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %13, i32 0, i32 0
  call void @RotatingTree_Add(%struct.rotating_node_s** %calls, %struct.rotating_node_s* %header2)
  %14 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8
  store %struct._ProfilerSubEntry* %14, %struct._ProfilerSubEntry** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %retval
  ret %struct._ProfilerSubEntry* %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
