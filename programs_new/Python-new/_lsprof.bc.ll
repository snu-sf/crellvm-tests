; ModuleID = 'programs_new/Python-new/_lsprof.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %module to i8*, !dbg !839
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !839
  call void @llvm.dbg.declare(metadata %struct._object** %module, metadata !424, metadata !840), !dbg !841
  %1 = bitcast %struct._object** %d to i8*, !dbg !839
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !839
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !425, metadata !840), !dbg !842
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_lsprofmodule, i32 1013), !dbg !843
  store %struct._object* %call, %struct._object** %module, align 8, !dbg !844, !tbaa !845
  %2 = load %struct._object*, %struct._object** %module, align 8, !dbg !849, !tbaa !845
  %cmp = icmp eq %struct._object* %2, null, !dbg !851
  br i1 %cmp, label %if.then, label %if.end, !dbg !852

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !853
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !853

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %module, align 8, !dbg !854, !tbaa !845
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %3), !dbg !855
  store %struct._object* %call1, %struct._object** %d, align 8, !dbg !856, !tbaa !845
  %call2 = call i32 @PyType_Ready(%struct._typeobject* @PyProfiler_Type), !dbg !857
  %cmp3 = icmp slt i32 %call2, 0, !dbg !859
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !860

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !861
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !861

if.end.5:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %d, align 8, !dbg !862, !tbaa !845
  %call6 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyProfiler_Type, i32 0, i32 0, i32 0)), !dbg !863
  %5 = load i32, i32* @initialized, align 4, !dbg !864, !tbaa !866
  %tobool = icmp ne i32 %5, 0, !dbg !864
  br i1 %tobool, label %if.end.16, label %if.then.7, !dbg !868

if.then.7:                                        ; preds = %if.end.5
  %call8 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StatsEntryType, %struct.PyStructSequence_Desc* @profiler_entry_desc), !dbg !869
  %cmp9 = icmp slt i32 %call8, 0, !dbg !872
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !873

if.then.10:                                       ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval, !dbg !874
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !874

if.end.11:                                        ; preds = %if.then.7
  %call12 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StatsSubEntryType, %struct.PyStructSequence_Desc* @profiler_subentry_desc), !dbg !875
  %cmp13 = icmp slt i32 %call12, 0, !dbg !877
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !878

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval, !dbg !879
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !879

if.end.15:                                        ; preds = %if.end.11
  br label %if.end.16, !dbg !880

if.end.16:                                        ; preds = %if.end.15, %if.end.5
  %6 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsEntryType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !881, !tbaa !882
  %inc = add i64 %6, 1, !dbg !881
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsEntryType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !881, !tbaa !882
  %7 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsSubEntryType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !885, !tbaa !882
  %inc17 = add i64 %7, 1, !dbg !885
  store i64 %inc17, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsSubEntryType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !885, !tbaa !882
  %8 = load %struct._object*, %struct._object** %module, align 8, !dbg !886, !tbaa !845
  %call18 = call i32 @PyModule_AddObject(%struct._object* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsEntryType, i32 0, i32 0, i32 0)), !dbg !887
  %9 = load %struct._object*, %struct._object** %module, align 8, !dbg !888, !tbaa !845
  %call19 = call i32 @PyModule_AddObject(%struct._object* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsSubEntryType, i32 0, i32 0, i32 0)), !dbg !889
  %call20 = call %struct._object* @PyTuple_New(i64 0), !dbg !890
  store %struct._object* %call20, %struct._object** @empty_tuple, align 8, !dbg !891, !tbaa !845
  store i32 1, i32* @initialized, align 4, !dbg !892, !tbaa !866
  %10 = load %struct._object*, %struct._object** %module, align 8, !dbg !893, !tbaa !845
  store %struct._object* %10, %struct._object** %retval, !dbg !894
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !894

cleanup:                                          ; preds = %if.end.16, %if.then.14, %if.then.10, %if.then.4, %if.then
  %11 = bitcast %struct._object** %d to i8*, !dbg !895
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !895
  %12 = bitcast %struct._object** %module to i8*, !dbg !895
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !895
  %13 = load %struct._object*, %struct._object** %retval, !dbg !895
  ret %struct._object* %13, !dbg !895
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyTuple_New(i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @profiler_dealloc(%struct.ProfilerObject* %op) #0 {
entry:
  %op.addr = alloca %struct.ProfilerObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %op, %struct.ProfilerObject** %op.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %op.addr, metadata !430, metadata !840), !dbg !896
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8, !dbg !897, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 4, !dbg !899
  %1 = load i32, i32* %flags, align 4, !dbg !899, !tbaa !900
  %and = and i32 %1, 1, !dbg !903
  %tobool = icmp ne i32 %and, 0, !dbg !903
  br i1 %tobool, label %if.then, label %if.end, !dbg !904

if.then:                                          ; preds = %entry
  call void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, %struct._object* null), !dbg !905
  br label %if.end, !dbg !905

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8, !dbg !906, !tbaa !845
  call void @flush_unmatched(%struct.ProfilerObject* %2), !dbg !907
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8, !dbg !908, !tbaa !845
  call void @clearEntries(%struct.ProfilerObject* %3), !dbg !909
  br label %do.body, !dbg !910

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !911
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !911
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !431, metadata !840), !dbg !913
  %5 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8, !dbg !914, !tbaa !845
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %5, i32 0, i32 5, !dbg !915
  %6 = load %struct._object*, %struct._object** %externalTimer, align 8, !dbg !915, !tbaa !916
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8, !dbg !913, !tbaa !845
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !917, !tbaa !845
  %cmp = icmp ne %struct._object* %7, null, !dbg !918
  br i1 %cmp, label %if.then.1, label %if.end.6, !dbg !919

if.then.1:                                        ; preds = %do.body
  br label %do.body.2, !dbg !920

do.body.2:                                        ; preds = %if.then.1
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !922
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !922
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !433, metadata !840), !dbg !924
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !925, !tbaa !845
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !924, !tbaa !845
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !926, !tbaa !845
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !928
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !929, !tbaa !882
  %dec = add i64 %11, -1, !dbg !929
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !929, !tbaa !882
  %cmp3 = icmp ne i64 %dec, 0, !dbg !930
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !931

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.5, !dbg !932

if.else:                                          ; preds = %do.body.2
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !934, !tbaa !845
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !936
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !936, !tbaa !937
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !938
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !938, !tbaa !939
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !942, !tbaa !845
  call void %14(%struct._object* %15), !dbg !943
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !944
  br label %do.cond, !dbg !946

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !947

do.end:                                           ; preds = %do.cond
  br label %if.end.6, !dbg !949

if.end.6:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !951
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !951
  br label %do.end.8, !dbg !954

do.end.8:                                         ; preds = %if.end.6
  %18 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8, !dbg !955, !tbaa !845
  %19 = bitcast %struct.ProfilerObject* %18 to %struct._object*, !dbg !956
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !957
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !957, !tbaa !937
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 38, !dbg !958
  %21 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !958, !tbaa !959
  %22 = load %struct.ProfilerObject*, %struct.ProfilerObject** %op.addr, align 8, !dbg !960, !tbaa !845
  %23 = bitcast %struct.ProfilerObject* %22 to i8*, !dbg !960
  call void %21(i8* %23), !dbg !961
  ret void, !dbg !962
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
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !736, metadata !840), !dbg !963
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !737, metadata !840), !dbg !964
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !738, metadata !840), !dbg !965
  %0 = bitcast %struct._object** %o to i8*, !dbg !966
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !966
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !739, metadata !840), !dbg !967
  %1 = bitcast %struct._object** %timer to i8*, !dbg !968
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !968
  call void @llvm.dbg.declare(metadata %struct._object** %timer, metadata !740, metadata !840), !dbg !969
  store %struct._object* null, %struct._object** %timer, align 8, !dbg !969, !tbaa !845
  %2 = bitcast double* %timeunit to i8*, !dbg !970
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !970
  call void @llvm.dbg.declare(metadata double* %timeunit, metadata !741, metadata !840), !dbg !971
  store double 0.000000e+00, double* %timeunit, align 8, !dbg !971, !tbaa !972
  %3 = bitcast i32* %subcalls to i8*, !dbg !973
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !973
  call void @llvm.dbg.declare(metadata i32* %subcalls, metadata !742, metadata !840), !dbg !974
  store i32 1, i32* %subcalls, align 4, !dbg !974, !tbaa !866
  %4 = bitcast i32* %builtins to i8*, !dbg !975
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !975
  call void @llvm.dbg.declare(metadata i32* %builtins, metadata !743, metadata !840), !dbg !976
  store i32 1, i32* %builtins, align 4, !dbg !976, !tbaa !866
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !977, !tbaa !845
  %6 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !979, !tbaa !845
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %5, %struct._object* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @profiler_init.kwlist, i32 0, i32 0), %struct._object** %timer, double* %timeunit, i32* %subcalls, i32* %builtins), !dbg !980
  %tobool = icmp ne i32 %call, 0, !dbg !980
  br i1 %tobool, label %if.end, label %if.then, !dbg !981

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !982
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !982

if.end:                                           ; preds = %entry
  %7 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !983, !tbaa !845
  %8 = load i32, i32* %subcalls, align 4, !dbg !985, !tbaa !866
  %call1 = call i32 @setSubcalls(%struct.ProfilerObject* %7, i32 %8), !dbg !986
  %cmp = icmp slt i32 %call1, 0, !dbg !987
  br i1 %cmp, label %if.then.4, label %lor.lhs.false, !dbg !988

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !989, !tbaa !845
  %10 = load i32, i32* %builtins, align 4, !dbg !991, !tbaa !866
  %call2 = call i32 @setBuiltins(%struct.ProfilerObject* %9, i32 %10), !dbg !992
  %cmp3 = icmp slt i32 %call2, 0, !dbg !993
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !994

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval, !dbg !995
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !995

if.end.5:                                         ; preds = %lor.lhs.false
  %11 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !996, !tbaa !845
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %11, i32 0, i32 5, !dbg !997
  %12 = load %struct._object*, %struct._object** %externalTimer, align 8, !dbg !997, !tbaa !916
  store %struct._object* %12, %struct._object** %o, align 8, !dbg !998, !tbaa !845
  %13 = load %struct._object*, %struct._object** %timer, align 8, !dbg !999, !tbaa !845
  %14 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1000, !tbaa !845
  %externalTimer6 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %14, i32 0, i32 5, !dbg !1001
  store %struct._object* %13, %struct._object** %externalTimer6, align 8, !dbg !1002, !tbaa !916
  br label %do.body, !dbg !1003

do.body:                                          ; preds = %if.end.5
  %15 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1004
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !1004
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !744, metadata !840), !dbg !1006
  %16 = load %struct._object*, %struct._object** %timer, align 8, !dbg !1007, !tbaa !845
  store %struct._object* %16, %struct._object** %_py_xincref_tmp, align 8, !dbg !1006, !tbaa !845
  %17 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1008, !tbaa !845
  %cmp7 = icmp ne %struct._object* %17, null, !dbg !1010
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !1011

if.then.8:                                        ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1012, !tbaa !845
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1014
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !1015, !tbaa !882
  %inc = add i64 %19, 1, !dbg !1015
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1015, !tbaa !882
  br label %if.end.9, !dbg !1016

if.end.9:                                         ; preds = %if.then.8, %do.body
  %20 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1017
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1017
  br label %do.cond, !dbg !1020

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1021

do.end:                                           ; preds = %do.cond
  br label %do.body.10, !dbg !1023

do.body.10:                                       ; preds = %do.end
  %21 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1024
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !1024
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !746, metadata !840), !dbg !1026
  %22 = load %struct._object*, %struct._object** %o, align 8, !dbg !1027, !tbaa !845
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1026, !tbaa !845
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1028, !tbaa !845
  %cmp11 = icmp ne %struct._object* %23, null, !dbg !1029
  br i1 %cmp11, label %if.then.12, label %if.end.20, !dbg !1030

if.then.12:                                       ; preds = %do.body.10
  br label %do.body.13, !dbg !1031

do.body.13:                                       ; preds = %if.then.12
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1033
  call void @llvm.lifetime.start(i64 8, i8* %24) #1, !dbg !1033
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !748, metadata !840), !dbg !1035
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1036, !tbaa !845
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8, !dbg !1035, !tbaa !845
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1037, !tbaa !845
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1039
  %27 = load i64, i64* %ob_refcnt14, align 8, !dbg !1040, !tbaa !882
  %dec = add i64 %27, -1, !dbg !1040
  store i64 %dec, i64* %ob_refcnt14, align 8, !dbg !1040, !tbaa !882
  %cmp15 = icmp ne i64 %dec, 0, !dbg !1041
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !1042

if.then.16:                                       ; preds = %do.body.13
  br label %if.end.17, !dbg !1043

if.else:                                          ; preds = %do.body.13
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1045, !tbaa !845
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1047
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1047, !tbaa !937
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !1048
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1048, !tbaa !939
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1049, !tbaa !845
  call void %30(%struct._object* %31), !dbg !1050
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1051
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !1051
  br label %do.cond.18, !dbg !1053

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !1054

do.end.19:                                        ; preds = %do.cond.18
  br label %if.end.20, !dbg !1056

if.end.20:                                        ; preds = %do.end.19, %do.body.10
  %33 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1058
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !1058
  br label %do.cond.21, !dbg !1060

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !1061

do.end.22:                                        ; preds = %do.cond.21
  %34 = load double, double* %timeunit, align 8, !dbg !1063, !tbaa !972
  %35 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1064, !tbaa !845
  %externalTimerUnit = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %35, i32 0, i32 6, !dbg !1065
  store double %34, double* %externalTimerUnit, align 8, !dbg !1066, !tbaa !1067
  store i32 0, i32* %retval, !dbg !1068
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1068

cleanup:                                          ; preds = %do.end.22, %if.then.4, %if.then
  %36 = bitcast i32* %builtins to i8*, !dbg !1069
  call void @llvm.lifetime.end(i64 4, i8* %36) #1, !dbg !1069
  %37 = bitcast i32* %subcalls to i8*, !dbg !1069
  call void @llvm.lifetime.end(i64 4, i8* %37) #1, !dbg !1069
  %38 = bitcast double* %timeunit to i8*, !dbg !1069
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !1069
  %39 = bitcast %struct._object** %timer to i8*, !dbg !1069
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !1069
  %40 = bitcast %struct._object** %o to i8*, !dbg !1069
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !1069
  %41 = load i32, i32* %retval, !dbg !1069
  ret i32 %41, !dbg !1069
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare void @PyObject_Free(i8*) #3

declare void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @flush_unmatched(%struct.ProfilerObject* %pObj) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %pContext = alloca %struct._ProfilerContext*, align 8
  %profEntry = alloca %struct._ProfilerEntry*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !438, metadata !840), !dbg !1070
  br label %while.cond, !dbg !1071

while.cond:                                       ; preds = %if.end.6, %entry
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1072, !tbaa !845
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 2, !dbg !1075
  %1 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext, align 8, !dbg !1075, !tbaa !1076
  %tobool = icmp ne %struct._ProfilerContext* %1, null, !dbg !1071
  br i1 %tobool, label %while.body, label %while.end, !dbg !1071

while.body:                                       ; preds = %while.cond
  %2 = bitcast %struct._ProfilerContext** %pContext to i8*, !dbg !1077
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1077
  call void @llvm.dbg.declare(metadata %struct._ProfilerContext** %pContext, metadata !439, metadata !840), !dbg !1078
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1079, !tbaa !845
  %currentProfilerContext1 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %3, i32 0, i32 2, !dbg !1080
  %4 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext1, align 8, !dbg !1080, !tbaa !1076
  store %struct._ProfilerContext* %4, %struct._ProfilerContext** %pContext, align 8, !dbg !1078, !tbaa !845
  %5 = bitcast %struct._ProfilerEntry** %profEntry to i8*, !dbg !1081
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1081
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %profEntry, metadata !441, metadata !840), !dbg !1082
  %6 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1083, !tbaa !845
  %ctxEntry = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %6, i32 0, i32 3, !dbg !1084
  %7 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %ctxEntry, align 8, !dbg !1084, !tbaa !1085
  store %struct._ProfilerEntry* %7, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1082, !tbaa !845
  %8 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1088, !tbaa !845
  %tobool2 = icmp ne %struct._ProfilerEntry* %8, null, !dbg !1088
  br i1 %tobool2, label %if.then, label %if.else, !dbg !1090

if.then:                                          ; preds = %while.body
  %9 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1091, !tbaa !845
  %10 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1092, !tbaa !845
  %11 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1093, !tbaa !845
  call void @Stop(%struct.ProfilerObject* %9, %struct._ProfilerContext* %10, %struct._ProfilerEntry* %11), !dbg !1094
  br label %if.end, !dbg !1094

if.else:                                          ; preds = %while.body
  %12 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1095, !tbaa !845
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %12, i32 0, i32 2, !dbg !1096
  %13 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8, !dbg !1096, !tbaa !1097
  %14 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1098, !tbaa !845
  %currentProfilerContext3 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %14, i32 0, i32 2, !dbg !1099
  store %struct._ProfilerContext* %13, %struct._ProfilerContext** %currentProfilerContext3, align 8, !dbg !1100, !tbaa !1076
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1101, !tbaa !845
  %tobool4 = icmp ne %struct._ProfilerContext* %15, null, !dbg !1101
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !1103

if.then.5:                                        ; preds = %if.end
  %16 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1104, !tbaa !845
  %17 = bitcast %struct._ProfilerContext* %16 to i8*, !dbg !1104
  call void @PyMem_Free(i8* %17), !dbg !1105
  br label %if.end.6, !dbg !1105

if.end.6:                                         ; preds = %if.then.5, %if.end
  %18 = bitcast %struct._ProfilerEntry** %profEntry to i8*, !dbg !1106
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !1106
  %19 = bitcast %struct._ProfilerContext** %pContext to i8*, !dbg !1106
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1106
  br label %while.cond, !dbg !1071

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1107
}

; Function Attrs: nounwind uwtable
define internal void @clearEntries(%struct.ProfilerObject* %pObj) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %c = alloca %struct._ProfilerContext*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !489, metadata !840), !dbg !1108
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1109, !tbaa !845
  %profilerEntries = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 1, !dbg !1110
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %profilerEntries, align 8, !dbg !1110, !tbaa !1111
  %call = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %1, i32 (%struct.rotating_node_s*, i8*)* @freeEntry, i8* null), !dbg !1112
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1113, !tbaa !845
  %profilerEntries1 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 1, !dbg !1114
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %profilerEntries1, align 8, !dbg !1115, !tbaa !1111
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1116, !tbaa !845
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %3, i32 0, i32 2, !dbg !1118
  %4 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext, align 8, !dbg !1118, !tbaa !1076
  %tobool = icmp ne %struct._ProfilerContext* %4, null, !dbg !1116
  br i1 %tobool, label %if.then, label %if.end, !dbg !1119

if.then:                                          ; preds = %entry
  %5 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1120, !tbaa !845
  %currentProfilerContext2 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %5, i32 0, i32 2, !dbg !1122
  %6 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext2, align 8, !dbg !1122, !tbaa !1076
  %7 = bitcast %struct._ProfilerContext* %6 to i8*, !dbg !1120
  call void @PyMem_Free(i8* %7), !dbg !1123
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1124, !tbaa !845
  %currentProfilerContext3 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %8, i32 0, i32 2, !dbg !1125
  store %struct._ProfilerContext* null, %struct._ProfilerContext** %currentProfilerContext3, align 8, !dbg !1126, !tbaa !1076
  br label %if.end, !dbg !1127

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !1128

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1129, !tbaa !845
  %freelistProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %9, i32 0, i32 3, !dbg !1132
  %10 = load %struct._ProfilerContext*, %struct._ProfilerContext** %freelistProfilerContext, align 8, !dbg !1132, !tbaa !1133
  %tobool4 = icmp ne %struct._ProfilerContext* %10, null, !dbg !1128
  br i1 %tobool4, label %while.body, label %while.end, !dbg !1128

while.body:                                       ; preds = %while.cond
  %11 = bitcast %struct._ProfilerContext** %c to i8*, !dbg !1134
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !1134
  call void @llvm.dbg.declare(metadata %struct._ProfilerContext** %c, metadata !490, metadata !840), !dbg !1135
  %12 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1136, !tbaa !845
  %freelistProfilerContext5 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %12, i32 0, i32 3, !dbg !1137
  %13 = load %struct._ProfilerContext*, %struct._ProfilerContext** %freelistProfilerContext5, align 8, !dbg !1137, !tbaa !1133
  store %struct._ProfilerContext* %13, %struct._ProfilerContext** %c, align 8, !dbg !1135, !tbaa !845
  %14 = load %struct._ProfilerContext*, %struct._ProfilerContext** %c, align 8, !dbg !1138, !tbaa !845
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %14, i32 0, i32 2, !dbg !1139
  %15 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8, !dbg !1139, !tbaa !1097
  %16 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1140, !tbaa !845
  %freelistProfilerContext6 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %16, i32 0, i32 3, !dbg !1141
  store %struct._ProfilerContext* %15, %struct._ProfilerContext** %freelistProfilerContext6, align 8, !dbg !1142, !tbaa !1133
  %17 = load %struct._ProfilerContext*, %struct._ProfilerContext** %c, align 8, !dbg !1143, !tbaa !845
  %18 = bitcast %struct._ProfilerContext* %17 to i8*, !dbg !1143
  call void @PyMem_Free(i8* %18), !dbg !1144
  %19 = bitcast %struct._ProfilerContext** %c to i8*, !dbg !1145
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1145
  br label %while.cond, !dbg !1128

while.end:                                        ; preds = %while.cond
  %20 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1146, !tbaa !845
  %freelistProfilerContext7 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %20, i32 0, i32 3, !dbg !1147
  store %struct._ProfilerContext* null, %struct._ProfilerContext** %freelistProfilerContext7, align 8, !dbg !1148, !tbaa !1133
  ret void, !dbg !1149
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
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !446, metadata !840), !dbg !1150
  store %struct._ProfilerContext* %self, %struct._ProfilerContext** %self.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._ProfilerContext** %self.addr, metadata !447, metadata !840), !dbg !1151
  store %struct._ProfilerEntry* %entry1, %struct._ProfilerEntry** %entry.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %entry.addr, metadata !448, metadata !840), !dbg !1152
  %0 = bitcast i64* %tt to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1153
  call void @llvm.dbg.declare(metadata i64* %tt, metadata !449, metadata !840), !dbg !1154
  %1 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1155, !tbaa !845
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %1, i32 0, i32 5, !dbg !1156
  %2 = load %struct._object*, %struct._object** %externalTimer, align 8, !dbg !1156, !tbaa !916
  %tobool = icmp ne %struct._object* %2, null, !dbg !1157
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1157

cond.true:                                        ; preds = %entry
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1158, !tbaa !845
  %call = call i64 @CallExternalTimer(%struct.ProfilerObject* %3), !dbg !1160
  br label %cond.end, !dbg !1157

cond.false:                                       ; preds = %entry
  %call2 = call i64 @hpTimer(), !dbg !1161
  br label %cond.end, !dbg !1157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call2, %cond.false ], !dbg !1157
  %4 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !1163, !tbaa !845
  %t0 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %4, i32 0, i32 0, !dbg !1166
  %5 = load i64, i64* %t0, align 8, !dbg !1166, !tbaa !1167
  %sub = sub i64 %cond, %5, !dbg !1168
  store i64 %sub, i64* %tt, align 8, !dbg !1154, !tbaa !1169
  %6 = bitcast i64* %it to i8*, !dbg !1170
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1170
  call void @llvm.dbg.declare(metadata i64* %it, metadata !450, metadata !840), !dbg !1171
  %7 = load i64, i64* %tt, align 8, !dbg !1172, !tbaa !1169
  %8 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !1173, !tbaa !845
  %subt = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %8, i32 0, i32 1, !dbg !1174
  %9 = load i64, i64* %subt, align 8, !dbg !1174, !tbaa !1175
  %sub3 = sub i64 %7, %9, !dbg !1176
  store i64 %sub3, i64* %it, align 8, !dbg !1171, !tbaa !1169
  %10 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !1177, !tbaa !845
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %10, i32 0, i32 2, !dbg !1179
  %11 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8, !dbg !1179, !tbaa !1097
  %tobool4 = icmp ne %struct._ProfilerContext* %11, null, !dbg !1177
  br i1 %tobool4, label %if.then, label %if.end, !dbg !1180

if.then:                                          ; preds = %cond.end
  %12 = load i64, i64* %tt, align 8, !dbg !1181, !tbaa !1169
  %13 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !1182, !tbaa !845
  %previous5 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %13, i32 0, i32 2, !dbg !1183
  %14 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous5, align 8, !dbg !1183, !tbaa !1097
  %subt6 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %14, i32 0, i32 1, !dbg !1184
  %15 = load i64, i64* %subt6, align 8, !dbg !1185, !tbaa !1175
  %add = add i64 %15, %12, !dbg !1185
  store i64 %add, i64* %subt6, align 8, !dbg !1185, !tbaa !1175
  br label %if.end, !dbg !1182

if.end:                                           ; preds = %if.then, %cond.end
  %16 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !1186, !tbaa !845
  %previous7 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %16, i32 0, i32 2, !dbg !1187
  %17 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous7, align 8, !dbg !1187, !tbaa !1097
  %18 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1188, !tbaa !845
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %18, i32 0, i32 2, !dbg !1189
  store %struct._ProfilerContext* %17, %struct._ProfilerContext** %currentProfilerContext, align 8, !dbg !1190, !tbaa !1076
  %19 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !1191, !tbaa !845
  %recursionLevel = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %19, i32 0, i32 6, !dbg !1193
  %20 = load i64, i64* %recursionLevel, align 8, !dbg !1194, !tbaa !1195
  %dec = add i64 %20, -1, !dbg !1194
  store i64 %dec, i64* %recursionLevel, align 8, !dbg !1194, !tbaa !1195
  %cmp = icmp eq i64 %dec, 0, !dbg !1198
  br i1 %cmp, label %if.then.8, label %if.else, !dbg !1199

if.then.8:                                        ; preds = %if.end
  %21 = load i64, i64* %tt, align 8, !dbg !1200, !tbaa !1169
  %22 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !1201, !tbaa !845
  %tt9 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %22, i32 0, i32 2, !dbg !1202
  %23 = load i64, i64* %tt9, align 8, !dbg !1203, !tbaa !1204
  %add10 = add i64 %23, %21, !dbg !1203
  store i64 %add10, i64* %tt9, align 8, !dbg !1203, !tbaa !1204
  br label %if.end.11, !dbg !1201

if.else:                                          ; preds = %if.end
  %24 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !1205, !tbaa !845
  %recursivecallcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %24, i32 0, i32 5, !dbg !1206
  %25 = load i64, i64* %recursivecallcount, align 8, !dbg !1207, !tbaa !1208
  %inc = add i64 %25, 1, !dbg !1207
  store i64 %inc, i64* %recursivecallcount, align 8, !dbg !1207, !tbaa !1208
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %26 = load i64, i64* %it, align 8, !dbg !1209, !tbaa !1169
  %27 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !1210, !tbaa !845
  %it12 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %27, i32 0, i32 3, !dbg !1211
  %28 = load i64, i64* %it12, align 8, !dbg !1212, !tbaa !1213
  %add13 = add i64 %28, %26, !dbg !1212
  store i64 %add13, i64* %it12, align 8, !dbg !1212, !tbaa !1213
  %29 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !1214, !tbaa !845
  %callcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %29, i32 0, i32 4, !dbg !1215
  %30 = load i64, i64* %callcount, align 8, !dbg !1216, !tbaa !1217
  %inc14 = add i64 %30, 1, !dbg !1216
  store i64 %inc14, i64* %callcount, align 8, !dbg !1216, !tbaa !1217
  %31 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1218, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %31, i32 0, i32 4, !dbg !1219
  %32 = load i32, i32* %flags, align 4, !dbg !1219, !tbaa !900
  %and = and i32 %32, 2, !dbg !1220
  %tobool15 = icmp ne i32 %and, 0, !dbg !1220
  br i1 %tobool15, label %land.lhs.true, label %if.end.38, !dbg !1221

land.lhs.true:                                    ; preds = %if.end.11
  %33 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !1222, !tbaa !845
  %previous16 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %33, i32 0, i32 2, !dbg !1224
  %34 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous16, align 8, !dbg !1224, !tbaa !1097
  %tobool17 = icmp ne %struct._ProfilerContext* %34, null, !dbg !1225
  br i1 %tobool17, label %if.then.18, label %if.end.38, !dbg !1226

if.then.18:                                       ; preds = %land.lhs.true
  %35 = bitcast %struct._ProfilerEntry** %caller to i8*, !dbg !1227
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !1227
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %caller, metadata !451, metadata !840), !dbg !1228
  %36 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !1229, !tbaa !845
  %previous19 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %36, i32 0, i32 2, !dbg !1230
  %37 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous19, align 8, !dbg !1230, !tbaa !1097
  %ctxEntry = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %37, i32 0, i32 3, !dbg !1231
  %38 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %ctxEntry, align 8, !dbg !1231, !tbaa !1085
  store %struct._ProfilerEntry* %38, %struct._ProfilerEntry** %caller, align 8, !dbg !1228, !tbaa !845
  %39 = bitcast %struct._ProfilerSubEntry** %subentry to i8*, !dbg !1232
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !1232
  call void @llvm.dbg.declare(metadata %struct._ProfilerSubEntry** %subentry, metadata !454, metadata !840), !dbg !1233
  %40 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1234, !tbaa !845
  %41 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller, align 8, !dbg !1235, !tbaa !845
  %42 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !1236, !tbaa !845
  %call20 = call %struct._ProfilerSubEntry* @getSubEntry(%struct.ProfilerObject* %40, %struct._ProfilerEntry* %41, %struct._ProfilerEntry* %42), !dbg !1237
  store %struct._ProfilerSubEntry* %call20, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !1233, !tbaa !845
  %43 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !1238, !tbaa !845
  %tobool21 = icmp ne %struct._ProfilerSubEntry* %43, null, !dbg !1238
  br i1 %tobool21, label %if.then.22, label %if.end.37, !dbg !1240

if.then.22:                                       ; preds = %if.then.18
  %44 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !1241, !tbaa !845
  %recursionLevel23 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %44, i32 0, i32 5, !dbg !1244
  %45 = load i64, i64* %recursionLevel23, align 8, !dbg !1245, !tbaa !1246
  %dec24 = add i64 %45, -1, !dbg !1245
  store i64 %dec24, i64* %recursionLevel23, align 8, !dbg !1245, !tbaa !1246
  %cmp25 = icmp eq i64 %dec24, 0, !dbg !1248
  br i1 %cmp25, label %if.then.26, label %if.else.29, !dbg !1249

if.then.26:                                       ; preds = %if.then.22
  %46 = load i64, i64* %tt, align 8, !dbg !1250, !tbaa !1169
  %47 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !1251, !tbaa !845
  %tt27 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %47, i32 0, i32 1, !dbg !1252
  %48 = load i64, i64* %tt27, align 8, !dbg !1253, !tbaa !1254
  %add28 = add i64 %48, %46, !dbg !1253
  store i64 %add28, i64* %tt27, align 8, !dbg !1253, !tbaa !1254
  br label %if.end.32, !dbg !1251

if.else.29:                                       ; preds = %if.then.22
  %49 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !1255, !tbaa !845
  %recursivecallcount30 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %49, i32 0, i32 4, !dbg !1256
  %50 = load i64, i64* %recursivecallcount30, align 8, !dbg !1257, !tbaa !1258
  %inc31 = add i64 %50, 1, !dbg !1257
  store i64 %inc31, i64* %recursivecallcount30, align 8, !dbg !1257, !tbaa !1258
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.26
  %51 = load i64, i64* %it, align 8, !dbg !1259, !tbaa !1169
  %52 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !1260, !tbaa !845
  %it33 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %52, i32 0, i32 2, !dbg !1261
  %53 = load i64, i64* %it33, align 8, !dbg !1262, !tbaa !1263
  %add34 = add i64 %53, %51, !dbg !1262
  store i64 %add34, i64* %it33, align 8, !dbg !1262, !tbaa !1263
  %54 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !1264, !tbaa !845
  %callcount35 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %54, i32 0, i32 3, !dbg !1265
  %55 = load i64, i64* %callcount35, align 8, !dbg !1266, !tbaa !1267
  %inc36 = add i64 %55, 1, !dbg !1266
  store i64 %inc36, i64* %callcount35, align 8, !dbg !1266, !tbaa !1267
  br label %if.end.37, !dbg !1268

if.end.37:                                        ; preds = %if.end.32, %if.then.18
  %56 = bitcast %struct._ProfilerSubEntry** %subentry to i8*, !dbg !1269
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !1269
  %57 = bitcast %struct._ProfilerEntry** %caller to i8*, !dbg !1269
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !1269
  br label %if.end.38, !dbg !1270

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %if.end.11
  %58 = bitcast i64* %it to i8*, !dbg !1271
  call void @llvm.lifetime.end(i64 8, i8* %58) #1, !dbg !1271
  %59 = bitcast i64* %tt to i8*, !dbg !1271
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !1271
  ret void, !dbg !1271
}

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i64 @CallExternalTimer(%struct.ProfilerObject* %pObj) #0 {
entry:
  %retval = alloca i64, align 8
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %result = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %val = alloca double, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !459, metadata !840), !dbg !1272
  %0 = bitcast i64* %result to i8*, !dbg !1273
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1273
  call void @llvm.dbg.declare(metadata i64* %result, metadata !460, metadata !840), !dbg !1274
  %1 = bitcast %struct._object** %o to i8*, !dbg !1275
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1275
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !461, metadata !840), !dbg !1276
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1277, !tbaa !845
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 5, !dbg !1278
  %3 = load %struct._object*, %struct._object** %externalTimer, align 8, !dbg !1278, !tbaa !916
  %4 = load %struct._object*, %struct._object** @empty_tuple, align 8, !dbg !1279, !tbaa !845
  %call = call %struct._object* @PyObject_Call(%struct._object* %3, %struct._object* %4, %struct._object* null), !dbg !1280
  store %struct._object* %call, %struct._object** %o, align 8, !dbg !1276, !tbaa !845
  %5 = load %struct._object*, %struct._object** %o, align 8, !dbg !1281, !tbaa !845
  %cmp = icmp eq %struct._object* %5, null, !dbg !1283
  br i1 %cmp, label %if.then, label %if.end, !dbg !1284

if.then:                                          ; preds = %entry
  %6 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1285, !tbaa !845
  %externalTimer1 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %6, i32 0, i32 5, !dbg !1287
  %7 = load %struct._object*, %struct._object** %externalTimer1, align 8, !dbg !1287, !tbaa !916
  call void @PyErr_WriteUnraisable(%struct._object* %7), !dbg !1288
  store i64 0, i64* %retval, !dbg !1289
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1289

if.end:                                           ; preds = %entry
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1290, !tbaa !845
  %externalTimerUnit = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %8, i32 0, i32 6, !dbg !1291
  %9 = load double, double* %externalTimerUnit, align 8, !dbg !1291, !tbaa !1067
  %cmp2 = fcmp ogt double %9, 0.000000e+00, !dbg !1292
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1293

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %o, align 8, !dbg !1294, !tbaa !845
  %call4 = call i64 @PyLong_AsLongLong(%struct._object* %10), !dbg !1296
  store i64 %call4, i64* %result, align 8, !dbg !1297, !tbaa !1169
  br label %if.end.6, !dbg !1298

if.else:                                          ; preds = %if.end
  %11 = bitcast double* %val to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !1299
  call void @llvm.dbg.declare(metadata double* %val, metadata !462, metadata !840), !dbg !1300
  %12 = load %struct._object*, %struct._object** %o, align 8, !dbg !1301, !tbaa !845
  %call5 = call double @PyFloat_AsDouble(%struct._object* %12), !dbg !1302
  store double %call5, double* %val, align 8, !dbg !1300, !tbaa !972
  %13 = load double, double* %val, align 8, !dbg !1303, !tbaa !972
  %mul = fmul double %13, 0x41F0000000000000, !dbg !1304
  %conv = fptosi double %mul to i64, !dbg !1305
  store i64 %conv, i64* %result, align 8, !dbg !1306, !tbaa !1169
  %14 = bitcast double* %val to i8*, !dbg !1307
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1307
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  br label %do.body, !dbg !1308

do.body:                                          ; preds = %if.end.6
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1309
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !1309
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !465, metadata !840), !dbg !1311
  %16 = load %struct._object*, %struct._object** %o, align 8, !dbg !1312, !tbaa !845
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !1311, !tbaa !845
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1313, !tbaa !845
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !1315
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !1316, !tbaa !882
  %dec = add i64 %18, -1, !dbg !1316
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1316, !tbaa !882
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1317
  br i1 %cmp7, label %if.then.9, label %if.else.10, !dbg !1318

if.then.9:                                        ; preds = %do.body
  br label %if.end.11, !dbg !1319

if.else.10:                                       ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1321, !tbaa !845
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !1323
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1323, !tbaa !937
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !1324
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1324, !tbaa !939
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1325, !tbaa !845
  call void %21(%struct._object* %22), !dbg !1326
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.9
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1327
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !1327
  br label %do.cond, !dbg !1329

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1330

do.end:                                           ; preds = %do.cond
  %call12 = call %struct._object* @PyErr_Occurred(), !dbg !1332
  %tobool = icmp ne %struct._object* %call12, null, !dbg !1332
  br i1 %tobool, label %if.then.13, label %if.end.15, !dbg !1334

if.then.13:                                       ; preds = %do.end
  %24 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1335, !tbaa !845
  %externalTimer14 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %24, i32 0, i32 5, !dbg !1337
  %25 = load %struct._object*, %struct._object** %externalTimer14, align 8, !dbg !1337, !tbaa !916
  call void @PyErr_WriteUnraisable(%struct._object* %25), !dbg !1338
  store i64 0, i64* %retval, !dbg !1339
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1339

if.end.15:                                        ; preds = %do.end
  %26 = load i64, i64* %result, align 8, !dbg !1340, !tbaa !1169
  store i64 %26, i64* %retval, !dbg !1341
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1341

cleanup:                                          ; preds = %if.end.15, %if.then.13, %if.then
  %27 = bitcast %struct._object** %o to i8*, !dbg !1342
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !1342
  %28 = bitcast i64* %result to i8*, !dbg !1342
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !1342
  %29 = load i64, i64* %retval, !dbg !1342
  ret i64 %29, !dbg !1342
}

; Function Attrs: nounwind uwtable
define internal i64 @hpTimer() #0 {
entry:
  %tv = alloca %struct.timeval, align 8
  %ret = alloca i64, align 8
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !1343
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !1343
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !471, metadata !840), !dbg !1344
  %1 = bitcast i64* %ret to i8*, !dbg !1345
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1345
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !479, metadata !840), !dbg !1346
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #1, !dbg !1347
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0, !dbg !1348
  %2 = load i64, i64* %tv_sec, align 8, !dbg !1348, !tbaa !1349
  store i64 %2, i64* %ret, align 8, !dbg !1351, !tbaa !1169
  %3 = load i64, i64* %ret, align 8, !dbg !1352, !tbaa !1169
  %mul = mul i64 %3, 1000000, !dbg !1353
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1, !dbg !1354
  %4 = load i64, i64* %tv_usec, align 8, !dbg !1354, !tbaa !1355
  %add = add i64 %mul, %4, !dbg !1356
  store i64 %add, i64* %ret, align 8, !dbg !1357, !tbaa !1169
  %5 = load i64, i64* %ret, align 8, !dbg !1358, !tbaa !1169
  %6 = bitcast i64* %ret to i8*, !dbg !1359
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1359
  %7 = bitcast %struct.timeval* %tv to i8*, !dbg !1359
  call void @llvm.lifetime.end(i64 16, i8* %7) #1, !dbg !1359
  ret i64 %5, !dbg !1360
}

; Function Attrs: nounwind uwtable
define internal %struct._ProfilerSubEntry* @getSubEntry(%struct.ProfilerObject* %pObj, %struct._ProfilerEntry* %caller, %struct._ProfilerEntry* %entry1) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %caller.addr = alloca %struct._ProfilerEntry*, align 8
  %entry.addr = alloca %struct._ProfilerEntry*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !484, metadata !840), !dbg !1361
  store %struct._ProfilerEntry* %caller, %struct._ProfilerEntry** %caller.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %caller.addr, metadata !485, metadata !840), !dbg !1362
  store %struct._ProfilerEntry* %entry1, %struct._ProfilerEntry** %entry.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %entry.addr, metadata !486, metadata !840), !dbg !1363
  %0 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller.addr, align 8, !dbg !1364, !tbaa !845
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %0, i32 0, i32 7, !dbg !1365
  %1 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !1366, !tbaa !845
  %2 = bitcast %struct._ProfilerEntry* %1 to i8*, !dbg !1367
  %call = call %struct.rotating_node_s* @RotatingTree_Get(%struct.rotating_node_s** %calls, i8* %2), !dbg !1368
  %3 = bitcast %struct.rotating_node_s* %call to %struct._ProfilerSubEntry*, !dbg !1369
  ret %struct._ProfilerSubEntry* %3, !dbg !1370
}

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #3

declare void @PyErr_WriteUnraisable(%struct._object*) #3

declare i64 @PyLong_AsLongLong(%struct._object*) #3

declare double @PyFloat_AsDouble(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

declare %struct.rotating_node_s* @RotatingTree_Get(%struct.rotating_node_s**, i8*) #3

declare i32 @RotatingTree_Enum(%struct.rotating_node_s*, i32 (%struct.rotating_node_s*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @freeEntry(%struct.rotating_node_s* %header, i8* %arg) #0 {
entry:
  %header.addr = alloca %struct.rotating_node_s*, align 8
  %arg.addr = alloca i8*, align 8
  %entry1 = alloca %struct._ProfilerEntry*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rotating_node_s* %header, %struct.rotating_node_s** %header.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %header.addr, metadata !496, metadata !840), !dbg !1371
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !497, metadata !840), !dbg !1372
  %0 = bitcast %struct._ProfilerEntry** %entry1 to i8*, !dbg !1373
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1373
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %entry1, metadata !498, metadata !840), !dbg !1374
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %header.addr, align 8, !dbg !1375, !tbaa !845
  %2 = bitcast %struct.rotating_node_s* %1 to %struct._ProfilerEntry*, !dbg !1376
  store %struct._ProfilerEntry* %2, %struct._ProfilerEntry** %entry1, align 8, !dbg !1374, !tbaa !845
  %3 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1377, !tbaa !845
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %3, i32 0, i32 7, !dbg !1378
  %4 = load %struct.rotating_node_s*, %struct.rotating_node_s** %calls, align 8, !dbg !1378, !tbaa !1379
  %call = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %4, i32 (%struct.rotating_node_s*, i8*)* @freeSubEntry, i8* null), !dbg !1380
  br label %do.body, !dbg !1381

do.body:                                          ; preds = %entry
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1382
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1382
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !499, metadata !840), !dbg !1384
  %6 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1385, !tbaa !845
  %userObj = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %6, i32 0, i32 1, !dbg !1386
  %7 = load %struct._object*, %struct._object** %userObj, align 8, !dbg !1386, !tbaa !1387
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1384, !tbaa !845
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1388, !tbaa !845
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1390
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1391, !tbaa !882
  %dec = add i64 %9, -1, !dbg !1391
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1391, !tbaa !882
  %cmp = icmp ne i64 %dec, 0, !dbg !1392
  br i1 %cmp, label %if.then, label %if.else, !dbg !1393

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !1394

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1396, !tbaa !845
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1398
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1398, !tbaa !937
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1399
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1399, !tbaa !939
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1400, !tbaa !845
  call void %12(%struct._object* %13), !dbg !1401
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1402
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1402
  br label %do.cond, !dbg !1404

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1405

do.end:                                           ; preds = %do.cond
  %15 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1407, !tbaa !845
  %16 = bitcast %struct._ProfilerEntry* %15 to i8*, !dbg !1407
  call void @PyMem_Free(i8* %16), !dbg !1408
  %17 = bitcast %struct._ProfilerEntry** %entry1 to i8*, !dbg !1409
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1409
  ret i32 0, !dbg !1410
}

; Function Attrs: nounwind uwtable
define internal i32 @freeSubEntry(%struct.rotating_node_s* %header, i8* %arg) #0 {
entry:
  %header.addr = alloca %struct.rotating_node_s*, align 8
  %arg.addr = alloca i8*, align 8
  %subentry = alloca %struct._ProfilerSubEntry*, align 8
  store %struct.rotating_node_s* %header, %struct.rotating_node_s** %header.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %header.addr, metadata !503, metadata !840), !dbg !1411
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !504, metadata !840), !dbg !1412
  %0 = bitcast %struct._ProfilerSubEntry** %subentry to i8*, !dbg !1413
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1413
  call void @llvm.dbg.declare(metadata %struct._ProfilerSubEntry** %subentry, metadata !505, metadata !840), !dbg !1414
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %header.addr, align 8, !dbg !1415, !tbaa !845
  %2 = bitcast %struct.rotating_node_s* %1 to %struct._ProfilerSubEntry*, !dbg !1416
  store %struct._ProfilerSubEntry* %2, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !1414, !tbaa !845
  %3 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !1417, !tbaa !845
  %4 = bitcast %struct._ProfilerSubEntry* %3 to i8*, !dbg !1417
  call void @PyMem_Free(i8* %4), !dbg !1418
  %5 = bitcast %struct._ProfilerSubEntry** %subentry to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1419
  ret i32 0, !dbg !1420
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @profiler_getstats(%struct.ProfilerObject* %pObj, %struct._object* %noarg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  %collect = alloca %struct.statscollector_t, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !510, metadata !840), !dbg !1421
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !511, metadata !840), !dbg !1422
  %0 = bitcast %struct.statscollector_t* %collect to i8*, !dbg !1423
  call void @llvm.lifetime.start(i64 24, i8* %0) #1, !dbg !1423
  call void @llvm.dbg.declare(metadata %struct.statscollector_t* %collect, metadata !512, metadata !840), !dbg !1424
  %1 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1425, !tbaa !845
  %call = call i32 @pending_exception(%struct.ProfilerObject* %1), !dbg !1427
  %tobool = icmp ne i32 %call, 0, !dbg !1427
  br i1 %tobool, label %if.then, label %if.end, !dbg !1428

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1429

if.end:                                           ; preds = %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1430, !tbaa !845
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 5, !dbg !1432
  %3 = load %struct._object*, %struct._object** %externalTimer, align 8, !dbg !1432, !tbaa !916
  %tobool1 = icmp ne %struct._object* %3, null, !dbg !1430
  br i1 %tobool1, label %if.else, label %if.then.2, !dbg !1433

if.then.2:                                        ; preds = %if.end
  %call3 = call double @hpTimerUnit(), !dbg !1434
  %factor = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 2, !dbg !1435
  store double %call3, double* %factor, align 8, !dbg !1436, !tbaa !1437
  br label %if.end.10, !dbg !1439

if.else:                                          ; preds = %if.end
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1440, !tbaa !845
  %externalTimerUnit = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %4, i32 0, i32 6, !dbg !1442
  %5 = load double, double* %externalTimerUnit, align 8, !dbg !1442, !tbaa !1067
  %cmp = fcmp ogt double %5, 0.000000e+00, !dbg !1443
  br i1 %cmp, label %if.then.4, label %if.else.7, !dbg !1444

if.then.4:                                        ; preds = %if.else
  %6 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1445, !tbaa !845
  %externalTimerUnit5 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %6, i32 0, i32 6, !dbg !1446
  %7 = load double, double* %externalTimerUnit5, align 8, !dbg !1446, !tbaa !1067
  %factor6 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 2, !dbg !1447
  store double %7, double* %factor6, align 8, !dbg !1448, !tbaa !1437
  br label %if.end.9, !dbg !1449

if.else.7:                                        ; preds = %if.else
  %factor8 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 2, !dbg !1450
  store double 0x3DF0000000000000, double* %factor8, align 8, !dbg !1451, !tbaa !1437
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.2
  %call11 = call %struct._object* @PyList_New(i64 0), !dbg !1452
  %list = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 0, !dbg !1453
  store %struct._object* %call11, %struct._object** %list, align 8, !dbg !1454, !tbaa !1455
  %list12 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 0, !dbg !1456
  %8 = load %struct._object*, %struct._object** %list12, align 8, !dbg !1456, !tbaa !1455
  %cmp13 = icmp eq %struct._object* %8, null, !dbg !1458
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !1459

if.then.14:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval, !dbg !1460
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1460

if.end.15:                                        ; preds = %if.end.10
  %9 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1461, !tbaa !845
  %profilerEntries = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %9, i32 0, i32 1, !dbg !1462
  %10 = load %struct.rotating_node_s*, %struct.rotating_node_s** %profilerEntries, align 8, !dbg !1462, !tbaa !1111
  %11 = bitcast %struct.statscollector_t* %collect to i8*, !dbg !1463
  %call16 = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %10, i32 (%struct.rotating_node_s*, i8*)* @statsForEntry, i8* %11), !dbg !1464
  %cmp17 = icmp ne i32 %call16, 0, !dbg !1465
  br i1 %cmp17, label %if.then.18, label %if.end.24, !dbg !1466

if.then.18:                                       ; preds = %if.end.15
  br label %do.body, !dbg !1467

do.body:                                          ; preds = %if.then.18
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1468
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !1468
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !513, metadata !840), !dbg !1470
  %list19 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 0, !dbg !1471
  %13 = load %struct._object*, %struct._object** %list19, align 8, !dbg !1471, !tbaa !1455
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !1470, !tbaa !845
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1472, !tbaa !845
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !1474
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1475, !tbaa !882
  %dec = add i64 %15, -1, !dbg !1475
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1475, !tbaa !882
  %cmp20 = icmp ne i64 %dec, 0, !dbg !1476
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !1477

if.then.21:                                       ; preds = %do.body
  br label %if.end.23, !dbg !1478

if.else.22:                                       ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1480, !tbaa !845
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1482
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1482, !tbaa !937
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !1483
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1483, !tbaa !939
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1484, !tbaa !845
  call void %18(%struct._object* %19), !dbg !1485
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1486
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1486
  br label %do.cond, !dbg !1488

do.cond:                                          ; preds = %if.end.23
  br label %do.end, !dbg !1489

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1491
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1491

if.end.24:                                        ; preds = %if.end.15
  %list25 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %collect, i32 0, i32 0, !dbg !1492
  %21 = load %struct._object*, %struct._object** %list25, align 8, !dbg !1492, !tbaa !1455
  store %struct._object* %21, %struct._object** %retval, !dbg !1493
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1493

cleanup:                                          ; preds = %if.end.24, %do.end, %if.then.14, %if.then
  %22 = bitcast %struct.statscollector_t* %collect to i8*, !dbg !1494
  call void @llvm.lifetime.end(i64 24, i8* %22) #1, !dbg !1494
  %23 = load %struct._object*, %struct._object** %retval, !dbg !1494
  ret %struct._object* %23, !dbg !1494
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
  %cleanup.dest.slot = alloca i32
  store %struct.ProfilerObject* %self, %struct.ProfilerObject** %self.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %self.addr, metadata !558, metadata !840), !dbg !1495
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !559, metadata !840), !dbg !1496
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !560, metadata !840), !dbg !1497
  %0 = bitcast i32* %subcalls to i8*, !dbg !1498
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1498
  call void @llvm.dbg.declare(metadata i32* %subcalls, metadata !561, metadata !840), !dbg !1499
  store i32 -1, i32* %subcalls, align 4, !dbg !1499, !tbaa !866
  %1 = bitcast i32* %builtins to i8*, !dbg !1500
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1500
  call void @llvm.dbg.declare(metadata i32* %builtins, metadata !562, metadata !840), !dbg !1501
  store i32 -1, i32* %builtins, align 4, !dbg !1501, !tbaa !866
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1502, !tbaa !845
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1504, !tbaa !845
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @profiler_enable.kwlist, i32 0, i32 0), i32* %subcalls, i32* %builtins), !dbg !1505
  %tobool = icmp ne i32 %call, 0, !dbg !1505
  br i1 %tobool, label %if.end, label %if.then, !dbg !1506

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1507
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1507

if.end:                                           ; preds = %entry
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8, !dbg !1508, !tbaa !845
  %5 = load i32, i32* %subcalls, align 4, !dbg !1510, !tbaa !866
  %call1 = call i32 @setSubcalls(%struct.ProfilerObject* %4, i32 %5), !dbg !1511
  %cmp = icmp slt i32 %call1, 0, !dbg !1512
  br i1 %cmp, label %if.then.4, label %lor.lhs.false, !dbg !1513

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8, !dbg !1514, !tbaa !845
  %7 = load i32, i32* %builtins, align 4, !dbg !1516, !tbaa !866
  %call2 = call i32 @setBuiltins(%struct.ProfilerObject* %6, i32 %7), !dbg !1517
  %cmp3 = icmp slt i32 %call2, 0, !dbg !1518
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1519

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1520
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1520

if.end.5:                                         ; preds = %lor.lhs.false
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8, !dbg !1521, !tbaa !845
  %9 = bitcast %struct.ProfilerObject* %8 to %struct._object*, !dbg !1522
  call void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* @profiler_callback, %struct._object* %9), !dbg !1523
  %10 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8, !dbg !1524, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %10, i32 0, i32 4, !dbg !1525
  %11 = load i32, i32* %flags, align 4, !dbg !1526, !tbaa !900
  %or = or i32 %11, 1, !dbg !1526
  store i32 %or, i32* %flags, align 4, !dbg !1526, !tbaa !900
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1527, !tbaa !882
  %inc = add i64 %12, 1, !dbg !1527
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1527, !tbaa !882
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1528
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1528

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %13 = bitcast i32* %builtins to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !1529
  %14 = bitcast i32* %subcalls to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !1529
  %15 = load %struct._object*, %struct._object** %retval, !dbg !1529
  ret %struct._object* %15, !dbg !1529
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @profiler_disable(%struct.ProfilerObject* %self, %struct._object* %noarg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.ProfilerObject*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %self, %struct.ProfilerObject** %self.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %self.addr, metadata !726, metadata !840), !dbg !1530
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !727, metadata !840), !dbg !1531
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8, !dbg !1532, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 4, !dbg !1533
  %1 = load i32, i32* %flags, align 4, !dbg !1534, !tbaa !900
  %and = and i32 %1, -2, !dbg !1534
  store i32 %and, i32* %flags, align 4, !dbg !1534, !tbaa !900
  call void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, %struct._object* null), !dbg !1535
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8, !dbg !1536, !tbaa !845
  call void @flush_unmatched(%struct.ProfilerObject* %2), !dbg !1537
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %self.addr, align 8, !dbg !1538, !tbaa !845
  %call = call i32 @pending_exception(%struct.ProfilerObject* %3), !dbg !1540
  %tobool = icmp ne i32 %call, 0, !dbg !1540
  br i1 %tobool, label %if.then, label %if.end, !dbg !1541

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1542
  br label %return, !dbg !1542

if.end:                                           ; preds = %entry
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1543, !tbaa !882
  %inc = add i64 %4, 1, !dbg !1543
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1543, !tbaa !882
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1544
  br label %return, !dbg !1544

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1545
  ret %struct._object* %5, !dbg !1545
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @profiler_clear(%struct.ProfilerObject* %pObj, %struct._object* %noarg) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !730, metadata !840), !dbg !1546
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !731, metadata !840), !dbg !1547
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1548, !tbaa !845
  call void @clearEntries(%struct.ProfilerObject* %0), !dbg !1549
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1550, !tbaa !882
  %inc = add i64 %1, 1, !dbg !1550
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1550, !tbaa !882
  ret %struct._object* @_Py_NoneStruct, !dbg !1551
}

; Function Attrs: nounwind uwtable
define internal i32 @pending_exception(%struct.ProfilerObject* %pObj) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !521, metadata !840), !dbg !1552
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1553, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 4, !dbg !1555
  %1 = load i32, i32* %flags, align 4, !dbg !1555, !tbaa !900
  %and = and i32 %1, 256, !dbg !1556
  %tobool = icmp ne i32 %and, 0, !dbg !1556
  br i1 %tobool, label %if.then, label %if.end, !dbg !1557

if.then:                                          ; preds = %entry
  %2 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1558, !tbaa !845
  %flags1 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %2, i32 0, i32 4, !dbg !1560
  %3 = load i32, i32* %flags1, align 4, !dbg !1561, !tbaa !900
  %sub = sub i32 %3, 256, !dbg !1561
  store i32 %sub, i32* %flags1, align 4, !dbg !1561, !tbaa !900
  %4 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !1562, !tbaa !845
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0)), !dbg !1563
  store i32 -1, i32* %retval, !dbg !1564
  br label %return, !dbg !1564

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, !dbg !1565
  br label %return, !dbg !1565

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, !dbg !1566
  ret i32 %5, !dbg !1566
}

; Function Attrs: nounwind uwtable
define internal double @hpTimerUnit() #0 {
entry:
  ret double 1.000000e-06, !dbg !1567
}

declare %struct._object* @PyList_New(i64) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  store %struct.rotating_node_s* %node, %struct.rotating_node_s** %node.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %node.addr, metadata !527, metadata !840), !dbg !1568
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !528, metadata !840), !dbg !1569
  %0 = bitcast %struct._ProfilerEntry** %entry1 to i8*, !dbg !1570
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1570
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %entry1, metadata !529, metadata !840), !dbg !1571
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8, !dbg !1572, !tbaa !845
  %2 = bitcast %struct.rotating_node_s* %1 to %struct._ProfilerEntry*, !dbg !1573
  store %struct._ProfilerEntry* %2, %struct._ProfilerEntry** %entry1, align 8, !dbg !1571, !tbaa !845
  %3 = bitcast %struct.statscollector_t** %collect to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1574
  call void @llvm.dbg.declare(metadata %struct.statscollector_t** %collect, metadata !530, metadata !840), !dbg !1575
  %4 = load i8*, i8** %arg.addr, align 8, !dbg !1576, !tbaa !845
  %5 = bitcast i8* %4 to %struct.statscollector_t*, !dbg !1577
  store %struct.statscollector_t* %5, %struct.statscollector_t** %collect, align 8, !dbg !1575, !tbaa !845
  %6 = bitcast %struct._object** %info to i8*, !dbg !1578
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1578
  call void @llvm.dbg.declare(metadata %struct._object** %info, metadata !531, metadata !840), !dbg !1579
  %7 = bitcast i32* %err to i8*, !dbg !1580
  call void @llvm.lifetime.start(i64 4, i8* %7) #1, !dbg !1580
  call void @llvm.dbg.declare(metadata i32* %err, metadata !532, metadata !840), !dbg !1581
  %8 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1582, !tbaa !845
  %callcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %8, i32 0, i32 4, !dbg !1584
  %9 = load i64, i64* %callcount, align 8, !dbg !1584, !tbaa !1217
  %cmp = icmp eq i64 %9, 0, !dbg !1585
  br i1 %cmp, label %if.then, label %if.end, !dbg !1586

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1587
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1587

if.end:                                           ; preds = %entry
  %10 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1588, !tbaa !845
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %10, i32 0, i32 7, !dbg !1589
  %11 = load %struct.rotating_node_s*, %struct.rotating_node_s** %calls, align 8, !dbg !1589, !tbaa !1379
  %cmp2 = icmp ne %struct.rotating_node_s* %11, null, !dbg !1590
  br i1 %cmp2, label %if.then.3, label %if.else.17, !dbg !1591

if.then.3:                                        ; preds = %if.end
  %call = call %struct._object* @PyList_New(i64 0), !dbg !1592
  %12 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1593, !tbaa !845
  %sublist = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %12, i32 0, i32 1, !dbg !1594
  store %struct._object* %call, %struct._object** %sublist, align 8, !dbg !1595, !tbaa !1596
  %13 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1597, !tbaa !845
  %sublist4 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %13, i32 0, i32 1, !dbg !1599
  %14 = load %struct._object*, %struct._object** %sublist4, align 8, !dbg !1599, !tbaa !1596
  %cmp5 = icmp eq %struct._object* %14, null, !dbg !1600
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1601

if.then.6:                                        ; preds = %if.then.3
  store i32 -1, i32* %retval, !dbg !1602
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1602

if.end.7:                                         ; preds = %if.then.3
  %15 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1603, !tbaa !845
  %calls8 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %15, i32 0, i32 7, !dbg !1604
  %16 = load %struct.rotating_node_s*, %struct.rotating_node_s** %calls8, align 8, !dbg !1604, !tbaa !1379
  %17 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1605, !tbaa !845
  %18 = bitcast %struct.statscollector_t* %17 to i8*, !dbg !1605
  %call9 = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %16, i32 (%struct.rotating_node_s*, i8*)* @statsForSubEntry, i8* %18), !dbg !1606
  %cmp10 = icmp ne i32 %call9, 0, !dbg !1607
  br i1 %cmp10, label %if.then.11, label %if.end.16, !dbg !1608

if.then.11:                                       ; preds = %if.end.7
  br label %do.body, !dbg !1609

do.body:                                          ; preds = %if.then.11
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1610
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !1610
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !533, metadata !840), !dbg !1612
  %20 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1613, !tbaa !845
  %sublist12 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %20, i32 0, i32 1, !dbg !1614
  %21 = load %struct._object*, %struct._object** %sublist12, align 8, !dbg !1614, !tbaa !1596
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !1612, !tbaa !845
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1615, !tbaa !845
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1617
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !1618, !tbaa !882
  %dec = add i64 %23, -1, !dbg !1618
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1618, !tbaa !882
  %cmp13 = icmp ne i64 %dec, 0, !dbg !1619
  br i1 %cmp13, label %if.then.14, label %if.else, !dbg !1620

if.then.14:                                       ; preds = %do.body
  br label %if.end.15, !dbg !1621

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1623, !tbaa !845
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1625
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1625, !tbaa !937
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1626
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1626, !tbaa !939
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1627, !tbaa !845
  call void %26(%struct._object* %27), !dbg !1628
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1629
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !1629
  br label %do.cond, !dbg !1631

do.cond:                                          ; preds = %if.end.15
  br label %do.end, !dbg !1632

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, !dbg !1634
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1634

if.end.16:                                        ; preds = %if.end.7
  br label %if.end.19, !dbg !1635

if.else.17:                                       ; preds = %if.end
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1636, !tbaa !882
  %inc = add i64 %29, 1, !dbg !1636
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1636, !tbaa !882
  %30 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1638, !tbaa !845
  %sublist18 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %30, i32 0, i32 1, !dbg !1639
  store %struct._object* @_Py_NoneStruct, %struct._object** %sublist18, align 8, !dbg !1640, !tbaa !1596
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.end.16
  %31 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1641, !tbaa !845
  %userObj = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %31, i32 0, i32 1, !dbg !1642
  %32 = load %struct._object*, %struct._object** %userObj, align 8, !dbg !1642, !tbaa !1387
  %33 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1643, !tbaa !845
  %callcount20 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %33, i32 0, i32 4, !dbg !1644
  %34 = load i64, i64* %callcount20, align 8, !dbg !1644, !tbaa !1217
  %35 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1645, !tbaa !845
  %recursivecallcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %35, i32 0, i32 5, !dbg !1646
  %36 = load i64, i64* %recursivecallcount, align 8, !dbg !1646, !tbaa !1208
  %37 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1647, !tbaa !845
  %factor = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %37, i32 0, i32 2, !dbg !1648
  %38 = load double, double* %factor, align 8, !dbg !1648, !tbaa !1437
  %39 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1649, !tbaa !845
  %tt = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %39, i32 0, i32 2, !dbg !1650
  %40 = load i64, i64* %tt, align 8, !dbg !1650, !tbaa !1204
  %conv = sitofp i64 %40 to double, !dbg !1649
  %mul = fmul double %38, %conv, !dbg !1651
  %41 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1652, !tbaa !845
  %factor21 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %41, i32 0, i32 2, !dbg !1653
  %42 = load double, double* %factor21, align 8, !dbg !1653, !tbaa !1437
  %43 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1654, !tbaa !845
  %it = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %43, i32 0, i32 3, !dbg !1655
  %44 = load i64, i64* %it, align 8, !dbg !1655, !tbaa !1213
  %conv22 = sitofp i64 %44 to double, !dbg !1654
  %mul23 = fmul double %42, %conv22, !dbg !1656
  %45 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1657, !tbaa !845
  %sublist24 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %45, i32 0, i32 1, !dbg !1658
  %46 = load %struct._object*, %struct._object** %sublist24, align 8, !dbg !1658, !tbaa !1596
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsEntryType, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %struct._object* %32, i64 %34, i64 %36, double %mul, double %mul23, %struct._object* %46), !dbg !1659
  store %struct._object* %call25, %struct._object** %info, align 8, !dbg !1660, !tbaa !845
  br label %do.body.26, !dbg !1661

do.body.26:                                       ; preds = %if.end.19
  %47 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !1662
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp27, metadata !539, metadata !840), !dbg !1664
  %48 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1665, !tbaa !845
  %sublist28 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %48, i32 0, i32 1, !dbg !1666
  %49 = load %struct._object*, %struct._object** %sublist28, align 8, !dbg !1666, !tbaa !1596
  store %struct._object* %49, %struct._object** %_py_decref_tmp27, align 8, !dbg !1664, !tbaa !845
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !1667, !tbaa !845
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !1669
  %51 = load i64, i64* %ob_refcnt29, align 8, !dbg !1670, !tbaa !882
  %dec30 = add i64 %51, -1, !dbg !1670
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !1670, !tbaa !882
  %cmp31 = icmp ne i64 %dec30, 0, !dbg !1671
  br i1 %cmp31, label %if.then.33, label %if.else.34, !dbg !1672

if.then.33:                                       ; preds = %do.body.26
  br label %if.end.37, !dbg !1673

if.else.34:                                       ; preds = %do.body.26
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !1675, !tbaa !845
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !1677
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1677, !tbaa !937
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !1678
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8, !dbg !1678, !tbaa !939
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !1679, !tbaa !845
  call void %54(%struct._object* %55), !dbg !1680
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  %56 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !1681
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !1681
  br label %do.cond.38, !dbg !1683

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39, !dbg !1684

do.end.39:                                        ; preds = %do.cond.38
  %57 = load %struct._object*, %struct._object** %info, align 8, !dbg !1686, !tbaa !845
  %cmp40 = icmp eq %struct._object* %57, null, !dbg !1688
  br i1 %cmp40, label %if.then.42, label %if.end.43, !dbg !1689

if.then.42:                                       ; preds = %do.end.39
  store i32 -1, i32* %retval, !dbg !1690
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1690

if.end.43:                                        ; preds = %do.end.39
  %58 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1691, !tbaa !845
  %list = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %58, i32 0, i32 0, !dbg !1692
  %59 = load %struct._object*, %struct._object** %list, align 8, !dbg !1692, !tbaa !1455
  %60 = load %struct._object*, %struct._object** %info, align 8, !dbg !1693, !tbaa !845
  %call44 = call i32 @PyList_Append(%struct._object* %59, %struct._object* %60), !dbg !1694
  store i32 %call44, i32* %err, align 4, !dbg !1695, !tbaa !866
  br label %do.body.45, !dbg !1696

do.body.45:                                       ; preds = %if.end.43
  %61 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !1697
  call void @llvm.lifetime.start(i64 8, i8* %61) #1, !dbg !1697
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp46, metadata !541, metadata !840), !dbg !1699
  %62 = load %struct._object*, %struct._object** %info, align 8, !dbg !1700, !tbaa !845
  store %struct._object* %62, %struct._object** %_py_decref_tmp46, align 8, !dbg !1699, !tbaa !845
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1701, !tbaa !845
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0, !dbg !1703
  %64 = load i64, i64* %ob_refcnt47, align 8, !dbg !1704, !tbaa !882
  %dec48 = add i64 %64, -1, !dbg !1704
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !1704, !tbaa !882
  %cmp49 = icmp ne i64 %dec48, 0, !dbg !1705
  br i1 %cmp49, label %if.then.51, label %if.else.52, !dbg !1706

if.then.51:                                       ; preds = %do.body.45
  br label %if.end.55, !dbg !1707

if.else.52:                                       ; preds = %do.body.45
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1709, !tbaa !845
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1, !dbg !1711
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !1711, !tbaa !937
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4, !dbg !1712
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !1712, !tbaa !939
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1713, !tbaa !845
  call void %67(%struct._object* %68), !dbg !1714
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  %69 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !1715
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !1715
  br label %do.cond.56, !dbg !1716

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57, !dbg !1717

do.end.57:                                        ; preds = %do.cond.56
  %70 = load i32, i32* %err, align 4, !dbg !1719, !tbaa !866
  store i32 %70, i32* %retval, !dbg !1720
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1720

cleanup:                                          ; preds = %do.end.57, %if.then.42, %do.end, %if.then.6, %if.then
  %71 = bitcast i32* %err to i8*, !dbg !1721
  call void @llvm.lifetime.end(i64 4, i8* %71) #1, !dbg !1721
  %72 = bitcast %struct._object** %info to i8*, !dbg !1721
  call void @llvm.lifetime.end(i64 8, i8* %72) #1, !dbg !1721
  %73 = bitcast %struct.statscollector_t** %collect to i8*, !dbg !1721
  call void @llvm.lifetime.end(i64 8, i8* %73) #1, !dbg !1721
  %74 = bitcast %struct._ProfilerEntry** %entry1 to i8*, !dbg !1721
  call void @llvm.lifetime.end(i64 8, i8* %74) #1, !dbg !1721
  %75 = load i32, i32* %retval, !dbg !1721
  ret i32 %75, !dbg !1721
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rotating_node_s* %node, %struct.rotating_node_s** %node.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %node.addr, metadata !545, metadata !840), !dbg !1722
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !546, metadata !840), !dbg !1723
  %0 = bitcast %struct._ProfilerSubEntry** %sentry to i8*, !dbg !1724
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1724
  call void @llvm.dbg.declare(metadata %struct._ProfilerSubEntry** %sentry, metadata !547, metadata !840), !dbg !1725
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8, !dbg !1726, !tbaa !845
  %2 = bitcast %struct.rotating_node_s* %1 to %struct._ProfilerSubEntry*, !dbg !1727
  store %struct._ProfilerSubEntry* %2, %struct._ProfilerSubEntry** %sentry, align 8, !dbg !1725, !tbaa !845
  %3 = bitcast %struct.statscollector_t** %collect to i8*, !dbg !1728
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1728
  call void @llvm.dbg.declare(metadata %struct.statscollector_t** %collect, metadata !548, metadata !840), !dbg !1729
  %4 = load i8*, i8** %arg.addr, align 8, !dbg !1730, !tbaa !845
  %5 = bitcast i8* %4 to %struct.statscollector_t*, !dbg !1731
  store %struct.statscollector_t* %5, %struct.statscollector_t** %collect, align 8, !dbg !1729, !tbaa !845
  %6 = bitcast %struct._ProfilerEntry** %entry1 to i8*, !dbg !1732
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1732
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %entry1, metadata !549, metadata !840), !dbg !1733
  %7 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8, !dbg !1734, !tbaa !845
  %header = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %7, i32 0, i32 0, !dbg !1735
  %key = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %header, i32 0, i32 0, !dbg !1736
  %8 = load i8*, i8** %key, align 8, !dbg !1736, !tbaa !1737
  %9 = bitcast i8* %8 to %struct._ProfilerEntry*, !dbg !1738
  store %struct._ProfilerEntry* %9, %struct._ProfilerEntry** %entry1, align 8, !dbg !1733, !tbaa !845
  %10 = bitcast i32* %err to i8*, !dbg !1739
  call void @llvm.lifetime.start(i64 4, i8* %10) #1, !dbg !1739
  call void @llvm.dbg.declare(metadata i32* %err, metadata !550, metadata !840), !dbg !1740
  %11 = bitcast %struct._object** %sinfo to i8*, !dbg !1741
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !1741
  call void @llvm.dbg.declare(metadata %struct._object** %sinfo, metadata !551, metadata !840), !dbg !1742
  %12 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry1, align 8, !dbg !1743, !tbaa !845
  %userObj = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %12, i32 0, i32 1, !dbg !1744
  %13 = load %struct._object*, %struct._object** %userObj, align 8, !dbg !1744, !tbaa !1387
  %14 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8, !dbg !1745, !tbaa !845
  %callcount = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %14, i32 0, i32 3, !dbg !1746
  %15 = load i64, i64* %callcount, align 8, !dbg !1746, !tbaa !1267
  %16 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8, !dbg !1747, !tbaa !845
  %recursivecallcount = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %16, i32 0, i32 4, !dbg !1748
  %17 = load i64, i64* %recursivecallcount, align 8, !dbg !1748, !tbaa !1258
  %18 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1749, !tbaa !845
  %factor = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %18, i32 0, i32 2, !dbg !1750
  %19 = load double, double* %factor, align 8, !dbg !1750, !tbaa !1437
  %20 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8, !dbg !1751, !tbaa !845
  %tt = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %20, i32 0, i32 1, !dbg !1752
  %21 = load i64, i64* %tt, align 8, !dbg !1752, !tbaa !1254
  %conv = sitofp i64 %21 to double, !dbg !1751
  %mul = fmul double %19, %conv, !dbg !1753
  %22 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1754, !tbaa !845
  %factor2 = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %22, i32 0, i32 2, !dbg !1755
  %23 = load double, double* %factor2, align 8, !dbg !1755, !tbaa !1437
  %24 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %sentry, align 8, !dbg !1756, !tbaa !845
  %it = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %24, i32 0, i32 2, !dbg !1757
  %25 = load i64, i64* %it, align 8, !dbg !1757, !tbaa !1263
  %conv3 = sitofp i64 %25 to double, !dbg !1756
  %mul4 = fmul double %23, %conv3, !dbg !1758
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StatsSubEntryType, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), %struct._object* %13, i64 %15, i64 %17, double %mul, double %mul4), !dbg !1759
  store %struct._object* %call, %struct._object** %sinfo, align 8, !dbg !1760, !tbaa !845
  %26 = load %struct._object*, %struct._object** %sinfo, align 8, !dbg !1761, !tbaa !845
  %cmp = icmp eq %struct._object* %26, null, !dbg !1763
  br i1 %cmp, label %if.then, label %if.end, !dbg !1764

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1765
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1765

if.end:                                           ; preds = %entry
  %27 = load %struct.statscollector_t*, %struct.statscollector_t** %collect, align 8, !dbg !1766, !tbaa !845
  %sublist = getelementptr inbounds %struct.statscollector_t, %struct.statscollector_t* %27, i32 0, i32 1, !dbg !1767
  %28 = load %struct._object*, %struct._object** %sublist, align 8, !dbg !1767, !tbaa !1596
  %29 = load %struct._object*, %struct._object** %sinfo, align 8, !dbg !1768, !tbaa !845
  %call6 = call i32 @PyList_Append(%struct._object* %28, %struct._object* %29), !dbg !1769
  store i32 %call6, i32* %err, align 4, !dbg !1770, !tbaa !866
  br label %do.body, !dbg !1771

do.body:                                          ; preds = %if.end
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1772
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !1772
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !552, metadata !840), !dbg !1774
  %31 = load %struct._object*, %struct._object** %sinfo, align 8, !dbg !1775, !tbaa !845
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8, !dbg !1774, !tbaa !845
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1776, !tbaa !845
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !1778
  %33 = load i64, i64* %ob_refcnt, align 8, !dbg !1779, !tbaa !882
  %dec = add i64 %33, -1, !dbg !1779
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1779, !tbaa !882
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1780
  br i1 %cmp7, label %if.then.9, label %if.else, !dbg !1781

if.then.9:                                        ; preds = %do.body
  br label %if.end.10, !dbg !1782

if.else:                                          ; preds = %do.body
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1784, !tbaa !845
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !1786
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1786, !tbaa !937
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !1787
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1787, !tbaa !939
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1788, !tbaa !845
  call void %36(%struct._object* %37), !dbg !1789
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %38 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1790
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !1790
  br label %do.cond, !dbg !1792

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !1793

do.end:                                           ; preds = %do.cond
  %39 = load i32, i32* %err, align 4, !dbg !1795, !tbaa !866
  store i32 %39, i32* %retval, !dbg !1796
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1796

cleanup:                                          ; preds = %do.end, %if.then
  %40 = bitcast %struct._object** %sinfo to i8*, !dbg !1797
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !1797
  %41 = bitcast i32* %err to i8*, !dbg !1797
  call void @llvm.lifetime.end(i64 4, i8* %41) #1, !dbg !1797
  %42 = bitcast %struct._ProfilerEntry** %entry1 to i8*, !dbg !1797
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !1797
  %43 = bitcast %struct.statscollector_t** %collect to i8*, !dbg !1797
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !1797
  %44 = bitcast %struct._ProfilerSubEntry** %sentry to i8*, !dbg !1797
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !1797
  %45 = load i32, i32* %retval, !dbg !1797
  ret i32 %45, !dbg !1797
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @setSubcalls(%struct.ProfilerObject* %pObj, i32 %nvalue) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %nvalue.addr = alloca i32, align 4
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !567, metadata !840), !dbg !1798
  store i32 %nvalue, i32* %nvalue.addr, align 4, !tbaa !866
  call void @llvm.dbg.declare(metadata i32* %nvalue.addr, metadata !568, metadata !840), !dbg !1799
  %0 = load i32, i32* %nvalue.addr, align 4, !dbg !1800, !tbaa !866
  %cmp = icmp eq i32 %0, 0, !dbg !1802
  br i1 %cmp, label %if.then, label %if.else, !dbg !1803

if.then:                                          ; preds = %entry
  %1 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1804, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %1, i32 0, i32 4, !dbg !1805
  %2 = load i32, i32* %flags, align 4, !dbg !1806, !tbaa !900
  %and = and i32 %2, -3, !dbg !1806
  store i32 %and, i32* %flags, align 4, !dbg !1806, !tbaa !900
  br label %if.end.4, !dbg !1804

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %nvalue.addr, align 4, !dbg !1807, !tbaa !866
  %cmp1 = icmp sgt i32 %3, 0, !dbg !1809
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1810

if.then.2:                                        ; preds = %if.else
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1811, !tbaa !845
  %flags3 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %4, i32 0, i32 4, !dbg !1812
  %5 = load i32, i32* %flags3, align 4, !dbg !1813, !tbaa !900
  %or = or i32 %5, 2, !dbg !1813
  store i32 %or, i32* %flags3, align 4, !dbg !1813, !tbaa !900
  br label %if.end, !dbg !1811

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret i32 0, !dbg !1814
}

; Function Attrs: nounwind uwtable
define internal i32 @setBuiltins(%struct.ProfilerObject* %pObj, i32 %nvalue) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %nvalue.addr = alloca i32, align 4
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !571, metadata !840), !dbg !1815
  store i32 %nvalue, i32* %nvalue.addr, align 4, !tbaa !866
  call void @llvm.dbg.declare(metadata i32* %nvalue.addr, metadata !572, metadata !840), !dbg !1816
  %0 = load i32, i32* %nvalue.addr, align 4, !dbg !1817, !tbaa !866
  %cmp = icmp eq i32 %0, 0, !dbg !1819
  br i1 %cmp, label %if.then, label %if.else, !dbg !1820

if.then:                                          ; preds = %entry
  %1 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1821, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %1, i32 0, i32 4, !dbg !1822
  %2 = load i32, i32* %flags, align 4, !dbg !1823, !tbaa !900
  %and = and i32 %2, -5, !dbg !1823
  store i32 %and, i32* %flags, align 4, !dbg !1823, !tbaa !900
  br label %if.end.4, !dbg !1821

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %nvalue.addr, align 4, !dbg !1824, !tbaa !866
  %cmp1 = icmp sgt i32 %3, 0, !dbg !1826
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1827

if.then.2:                                        ; preds = %if.else
  %4 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !1828, !tbaa !845
  %flags3 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %4, i32 0, i32 4, !dbg !1830
  %5 = load i32, i32* %flags3, align 4, !dbg !1831, !tbaa !900
  %or = or i32 %5, 4, !dbg !1831
  store i32 %or, i32* %flags3, align 4, !dbg !1831, !tbaa !900
  br label %if.end, !dbg !1832

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret i32 0, !dbg !1833
}

; Function Attrs: nounwind uwtable
define internal i32 @profiler_callback(%struct._object* %self, %struct._frame* %frame, i32 %what, %struct._object* %arg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %frame.addr = alloca %struct._frame*, align 8
  %what.addr = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !637, metadata !840), !dbg !1834
  store %struct._frame* %frame, %struct._frame** %frame.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._frame** %frame.addr, metadata !638, metadata !840), !dbg !1835
  store i32 %what, i32* %what.addr, align 4, !tbaa !866
  call void @llvm.dbg.declare(metadata i32* %what.addr, metadata !639, metadata !840), !dbg !1836
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !640, metadata !840), !dbg !1837
  %0 = load i32, i32* %what.addr, align 4, !dbg !1838, !tbaa !866
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 4
  br i1 %Pivot.6, label %NodeBlock, label %NodeBlock.3

NodeBlock.3:                                      ; preds = %NodeBlock.5
  %Pivot.4 = icmp slt i32 %0, 5
  br i1 %Pivot.4, label %sw.bb.4, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock.3
  %.off = add i32 %0, -5
  %SwitchLeaf2 = icmp ule i32 %.off, 1
  br i1 %SwitchLeaf2, label %sw.bb.5, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 3
  br i1 %Pivot, label %LeafBlock, label %sw.bb.2

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 0
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1839, !tbaa !845
  %2 = load %struct._frame*, %struct._frame** %frame.addr, align 8, !dbg !1841, !tbaa !845
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %2, i32 0, i32 2, !dbg !1842
  %3 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8, !dbg !1842, !tbaa !1843
  %4 = bitcast %struct.PyCodeObject* %3 to i8*, !dbg !1845
  %5 = load %struct._frame*, %struct._frame** %frame.addr, align 8, !dbg !1846, !tbaa !845
  %f_code1 = getelementptr inbounds %struct._frame, %struct._frame* %5, i32 0, i32 2, !dbg !1847
  %6 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code1, align 8, !dbg !1847, !tbaa !1843
  %7 = bitcast %struct.PyCodeObject* %6 to %struct._object*, !dbg !1848
  call void @ptrace_enter_call(%struct._object* %1, i8* %4, %struct._object* %7), !dbg !1849
  br label %sw.epilog, !dbg !1850

sw.bb.2:                                          ; preds = %NodeBlock
  %8 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1851, !tbaa !845
  %9 = load %struct._frame*, %struct._frame** %frame.addr, align 8, !dbg !1852, !tbaa !845
  %f_code3 = getelementptr inbounds %struct._frame, %struct._frame* %9, i32 0, i32 2, !dbg !1853
  %10 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code3, align 8, !dbg !1853, !tbaa !1843
  %11 = bitcast %struct.PyCodeObject* %10 to i8*, !dbg !1854
  call void @ptrace_leave_call(%struct._object* %8, i8* %11), !dbg !1855
  br label %sw.epilog, !dbg !1856

sw.bb.4:                                          ; preds = %NodeBlock.3
  %12 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1857, !tbaa !845
  %13 = bitcast %struct._object* %12 to %struct.ProfilerObject*, !dbg !1859
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %13, i32 0, i32 4, !dbg !1860
  %14 = load i32, i32* %flags, align 4, !dbg !1860, !tbaa !900
  %and = and i32 %14, 4, !dbg !1861
  %tobool = icmp ne i32 %and, 0, !dbg !1861
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1862

land.lhs.true:                                    ; preds = %sw.bb.4
  %15 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1863, !tbaa !845
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1865
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1865, !tbaa !937
  %cmp = icmp eq %struct._typeobject* %16, @PyCFunction_Type, !dbg !1866
  br i1 %cmp, label %if.then, label %if.end, !dbg !1867

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1868, !tbaa !845
  %18 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1870, !tbaa !845
  %19 = bitcast %struct._object* %18 to %struct.PyCFunctionObject*, !dbg !1871
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %19, i32 0, i32 1, !dbg !1872
  %20 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1872, !tbaa !1873
  %21 = bitcast %struct.PyMethodDef* %20 to i8*, !dbg !1875
  %22 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1876, !tbaa !845
  call void @ptrace_enter_call(%struct._object* %17, i8* %21, %struct._object* %22), !dbg !1877
  br label %if.end, !dbg !1878

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb.4
  br label %sw.epilog, !dbg !1879

sw.bb.5:                                          ; preds = %LeafBlock.1
  %23 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1880, !tbaa !845
  %24 = bitcast %struct._object* %23 to %struct.ProfilerObject*, !dbg !1882
  %flags6 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %24, i32 0, i32 4, !dbg !1883
  %25 = load i32, i32* %flags6, align 4, !dbg !1883, !tbaa !900
  %and7 = and i32 %25, 4, !dbg !1884
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1884
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.14, !dbg !1885

land.lhs.true.9:                                  ; preds = %sw.bb.5
  %26 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1886, !tbaa !845
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1888
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1888, !tbaa !937
  %cmp11 = icmp eq %struct._typeobject* %27, @PyCFunction_Type, !dbg !1889
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !1890

if.then.12:                                       ; preds = %land.lhs.true.9
  %28 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1891, !tbaa !845
  %29 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1893, !tbaa !845
  %30 = bitcast %struct._object* %29 to %struct.PyCFunctionObject*, !dbg !1894
  %m_ml13 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %30, i32 0, i32 1, !dbg !1895
  %31 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml13, align 8, !dbg !1895, !tbaa !1873
  %32 = bitcast %struct.PyMethodDef* %31 to i8*, !dbg !1896
  call void @ptrace_leave_call(%struct._object* %28, i8* %32), !dbg !1897
  br label %if.end.14, !dbg !1898

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true.9, %sw.bb.5
  br label %sw.epilog, !dbg !1899

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !1900

sw.epilog:                                        ; preds = %sw.default, %if.end.14, %if.end, %sw.bb.2, %sw.bb
  ret i32 0, !dbg !1901
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
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !645, metadata !840), !dbg !1902
  store i8* %key, i8** %key.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !646, metadata !840), !dbg !1903
  store %struct._object* %userObj, %struct._object** %userObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %userObj.addr, metadata !647, metadata !840), !dbg !1904
  %0 = bitcast %struct.ProfilerObject** %pObj to i8*, !dbg !1905
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1905
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj, metadata !648, metadata !840), !dbg !1906
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1907, !tbaa !845
  %2 = bitcast %struct._object* %1 to %struct.ProfilerObject*, !dbg !1908
  store %struct.ProfilerObject* %2, %struct.ProfilerObject** %pObj, align 8, !dbg !1906, !tbaa !845
  %3 = bitcast %struct._ProfilerEntry** %profEntry to i8*, !dbg !1909
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1909
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %profEntry, metadata !649, metadata !840), !dbg !1910
  %4 = bitcast %struct._ProfilerContext** %pContext to i8*, !dbg !1911
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1911
  call void @llvm.dbg.declare(metadata %struct._ProfilerContext** %pContext, metadata !650, metadata !840), !dbg !1912
  %5 = bitcast %struct._object** %last_type to i8*, !dbg !1913
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1913
  call void @llvm.dbg.declare(metadata %struct._object** %last_type, metadata !651, metadata !840), !dbg !1914
  %6 = bitcast %struct._object** %last_value to i8*, !dbg !1913
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1913
  call void @llvm.dbg.declare(metadata %struct._object** %last_value, metadata !652, metadata !840), !dbg !1915
  %7 = bitcast %struct._object** %last_tb to i8*, !dbg !1913
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1913
  call void @llvm.dbg.declare(metadata %struct._object** %last_tb, metadata !653, metadata !840), !dbg !1916
  call void @PyErr_Fetch(%struct._object** %last_type, %struct._object** %last_value, %struct._object** %last_tb), !dbg !1917
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !1918, !tbaa !845
  %9 = load i8*, i8** %key.addr, align 8, !dbg !1919, !tbaa !845
  %call = call %struct._ProfilerEntry* @getEntry(%struct.ProfilerObject* %8, i8* %9), !dbg !1920
  store %struct._ProfilerEntry* %call, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1921, !tbaa !845
  %10 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1922, !tbaa !845
  %cmp = icmp eq %struct._ProfilerEntry* %10, null, !dbg !1924
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1925

if.then:                                          ; preds = %entry
  %11 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !1926, !tbaa !845
  %12 = load i8*, i8** %key.addr, align 8, !dbg !1928, !tbaa !845
  %13 = load %struct._object*, %struct._object** %userObj.addr, align 8, !dbg !1929, !tbaa !845
  %call1 = call %struct._ProfilerEntry* @newProfilerEntry(%struct.ProfilerObject* %11, i8* %12, %struct._object* %13), !dbg !1930
  store %struct._ProfilerEntry* %call1, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1931, !tbaa !845
  %14 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1932, !tbaa !845
  %cmp2 = icmp eq %struct._ProfilerEntry* %14, null, !dbg !1934
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !1935

if.then.3:                                        ; preds = %if.then
  br label %restorePyerr, !dbg !1936

if.end:                                           ; preds = %if.then
  br label %if.end.4, !dbg !1937

if.end.4:                                         ; preds = %if.end, %entry
  %15 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !1938, !tbaa !845
  %freelistProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %15, i32 0, i32 3, !dbg !1939
  %16 = load %struct._ProfilerContext*, %struct._ProfilerContext** %freelistProfilerContext, align 8, !dbg !1939, !tbaa !1133
  store %struct._ProfilerContext* %16, %struct._ProfilerContext** %pContext, align 8, !dbg !1940, !tbaa !845
  %17 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1941, !tbaa !845
  %tobool = icmp ne %struct._ProfilerContext* %17, null, !dbg !1941
  br i1 %tobool, label %if.then.5, label %if.else, !dbg !1943

if.then.5:                                        ; preds = %if.end.4
  %18 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1944, !tbaa !845
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %18, i32 0, i32 2, !dbg !1946
  %19 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8, !dbg !1946, !tbaa !1097
  %20 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !1947, !tbaa !845
  %freelistProfilerContext6 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %20, i32 0, i32 3, !dbg !1948
  store %struct._ProfilerContext* %19, %struct._ProfilerContext** %freelistProfilerContext6, align 8, !dbg !1949, !tbaa !1133
  br label %if.end.11, !dbg !1950

if.else:                                          ; preds = %if.end.4
  %call7 = call i8* @PyMem_Malloc(i64 32), !dbg !1951
  %21 = bitcast i8* %call7 to %struct._ProfilerContext*, !dbg !1953
  store %struct._ProfilerContext* %21, %struct._ProfilerContext** %pContext, align 8, !dbg !1954, !tbaa !845
  %22 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1955, !tbaa !845
  %cmp8 = icmp eq %struct._ProfilerContext* %22, null, !dbg !1957
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1958

if.then.9:                                        ; preds = %if.else
  %23 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !1959, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %23, i32 0, i32 4, !dbg !1961
  %24 = load i32, i32* %flags, align 4, !dbg !1962, !tbaa !900
  %or = or i32 %24, 256, !dbg !1962
  store i32 %or, i32* %flags, align 4, !dbg !1962, !tbaa !900
  br label %restorePyerr, !dbg !1963

if.end.10:                                        ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.5
  %25 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !1964, !tbaa !845
  %26 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1965, !tbaa !845
  %27 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1966, !tbaa !845
  call void @initContext(%struct.ProfilerObject* %25, %struct._ProfilerContext* %26, %struct._ProfilerEntry* %27), !dbg !1967
  br label %restorePyerr, !dbg !1967

restorePyerr:                                     ; preds = %if.end.11, %if.then.9, %if.then.3
  %28 = load %struct._object*, %struct._object** %last_type, align 8, !dbg !1968, !tbaa !845
  %29 = load %struct._object*, %struct._object** %last_value, align 8, !dbg !1969, !tbaa !845
  %30 = load %struct._object*, %struct._object** %last_tb, align 8, !dbg !1970, !tbaa !845
  call void @PyErr_Restore(%struct._object* %28, %struct._object* %29, %struct._object* %30), !dbg !1971
  %31 = bitcast %struct._object** %last_tb to i8*, !dbg !1972
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !1972
  %32 = bitcast %struct._object** %last_value to i8*, !dbg !1972
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !1972
  %33 = bitcast %struct._object** %last_type to i8*, !dbg !1972
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !1972
  %34 = bitcast %struct._ProfilerContext** %pContext to i8*, !dbg !1972
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !1972
  %35 = bitcast %struct._ProfilerEntry** %profEntry to i8*, !dbg !1972
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !1972
  %36 = bitcast %struct.ProfilerObject** %pObj to i8*, !dbg !1972
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !1972
  ret void, !dbg !1972
}

; Function Attrs: nounwind uwtable
define internal void @ptrace_leave_call(%struct._object* %self, i8* %key) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %pObj = alloca %struct.ProfilerObject*, align 8
  %profEntry = alloca %struct._ProfilerEntry*, align 8
  %pContext = alloca %struct._ProfilerContext*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !719, metadata !840), !dbg !1973
  store i8* %key, i8** %key.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !720, metadata !840), !dbg !1974
  %0 = bitcast %struct.ProfilerObject** %pObj to i8*, !dbg !1975
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1975
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj, metadata !721, metadata !840), !dbg !1976
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1977, !tbaa !845
  %2 = bitcast %struct._object* %1 to %struct.ProfilerObject*, !dbg !1978
  store %struct.ProfilerObject* %2, %struct.ProfilerObject** %pObj, align 8, !dbg !1976, !tbaa !845
  %3 = bitcast %struct._ProfilerEntry** %profEntry to i8*, !dbg !1979
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1979
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %profEntry, metadata !722, metadata !840), !dbg !1980
  %4 = bitcast %struct._ProfilerContext** %pContext to i8*, !dbg !1981
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1981
  call void @llvm.dbg.declare(metadata %struct._ProfilerContext** %pContext, metadata !723, metadata !840), !dbg !1982
  %5 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !1983, !tbaa !845
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %5, i32 0, i32 2, !dbg !1984
  %6 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext, align 8, !dbg !1984, !tbaa !1076
  store %struct._ProfilerContext* %6, %struct._ProfilerContext** %pContext, align 8, !dbg !1985, !tbaa !845
  %7 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !1986, !tbaa !845
  %cmp = icmp eq %struct._ProfilerContext* %7, null, !dbg !1988
  br i1 %cmp, label %if.then, label %if.end, !dbg !1989

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1990

if.end:                                           ; preds = %entry
  %8 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !1991, !tbaa !845
  %9 = load i8*, i8** %key.addr, align 8, !dbg !1992, !tbaa !845
  %call = call %struct._ProfilerEntry* @getEntry(%struct.ProfilerObject* %8, i8* %9), !dbg !1993
  store %struct._ProfilerEntry* %call, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1994, !tbaa !845
  %10 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8, !dbg !1995, !tbaa !845
  %tobool = icmp ne %struct._ProfilerEntry* %10, null, !dbg !1995
  br i1 %tobool, label %if.then.1, label %if.else, !dbg !1997

if.then.1:                                        ; preds = %if.end
  %11 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !1998, !tbaa !845
  %12 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !2000, !tbaa !845
  %13 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %profEntry, align 8, !dbg !2001, !tbaa !845
  call void @Stop(%struct.ProfilerObject* %11, %struct._ProfilerContext* %12, %struct._ProfilerEntry* %13), !dbg !2002
  br label %if.end.3, !dbg !2003

if.else:                                          ; preds = %if.end
  %14 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !2004, !tbaa !845
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %14, i32 0, i32 2, !dbg !2006
  %15 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous, align 8, !dbg !2006, !tbaa !1097
  %16 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !2007, !tbaa !845
  %currentProfilerContext2 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %16, i32 0, i32 2, !dbg !2008
  store %struct._ProfilerContext* %15, %struct._ProfilerContext** %currentProfilerContext2, align 8, !dbg !2009, !tbaa !1076
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1
  %17 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !2010, !tbaa !845
  %freelistProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %17, i32 0, i32 3, !dbg !2011
  %18 = load %struct._ProfilerContext*, %struct._ProfilerContext** %freelistProfilerContext, align 8, !dbg !2011, !tbaa !1133
  %19 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !2012, !tbaa !845
  %previous4 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %19, i32 0, i32 2, !dbg !2013
  store %struct._ProfilerContext* %18, %struct._ProfilerContext** %previous4, align 8, !dbg !2014, !tbaa !1097
  %20 = load %struct._ProfilerContext*, %struct._ProfilerContext** %pContext, align 8, !dbg !2015, !tbaa !845
  %21 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj, align 8, !dbg !2016, !tbaa !845
  %freelistProfilerContext5 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %21, i32 0, i32 3, !dbg !2017
  store %struct._ProfilerContext* %20, %struct._ProfilerContext** %freelistProfilerContext5, align 8, !dbg !2018, !tbaa !1133
  store i32 0, i32* %cleanup.dest.slot, !dbg !2019
  br label %cleanup, !dbg !2019

cleanup:                                          ; preds = %if.end.3, %if.then
  %22 = bitcast %struct._ProfilerContext** %pContext to i8*, !dbg !2020
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !2020
  %23 = bitcast %struct._ProfilerEntry** %profEntry to i8*, !dbg !2020
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !2020
  %24 = bitcast %struct.ProfilerObject** %pObj to i8*, !dbg !2020
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2020
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup
  ret void, !dbg !2019

unreachable:                                      ; No predecessors!
  unreachable
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

; Function Attrs: nounwind uwtable
define internal %struct._ProfilerEntry* @getEntry(%struct.ProfilerObject* %pObj, i8* %key) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !658, metadata !840), !dbg !2022
  store i8* %key, i8** %key.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !659, metadata !840), !dbg !2023
  %0 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2024, !tbaa !845
  %profilerEntries = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %0, i32 0, i32 1, !dbg !2025
  %1 = load i8*, i8** %key.addr, align 8, !dbg !2026, !tbaa !845
  %call = call %struct.rotating_node_s* @RotatingTree_Get(%struct.rotating_node_s** %profilerEntries, i8* %1), !dbg !2027
  %2 = bitcast %struct.rotating_node_s* %call to %struct._ProfilerEntry*, !dbg !2028
  ret %struct._ProfilerEntry* %2, !dbg !2029
}

; Function Attrs: nounwind uwtable
define internal %struct._ProfilerEntry* @newProfilerEntry(%struct.ProfilerObject* %pObj, i8* %key, %struct._object* %userObj) #0 {
entry:
  %retval = alloca %struct._ProfilerEntry*, align 8
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %key.addr = alloca i8*, align 8
  %userObj.addr = alloca %struct._object*, align 8
  %self = alloca %struct._ProfilerEntry*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !664, metadata !840), !dbg !2030
  store i8* %key, i8** %key.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !665, metadata !840), !dbg !2031
  store %struct._object* %userObj, %struct._object** %userObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %userObj.addr, metadata !666, metadata !840), !dbg !2032
  %0 = bitcast %struct._ProfilerEntry** %self to i8*, !dbg !2033
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2033
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %self, metadata !667, metadata !840), !dbg !2034
  %call = call i8* @PyMem_Malloc(i64 80), !dbg !2035
  %1 = bitcast i8* %call to %struct._ProfilerEntry*, !dbg !2036
  store %struct._ProfilerEntry* %1, %struct._ProfilerEntry** %self, align 8, !dbg !2037, !tbaa !845
  %2 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2038, !tbaa !845
  %cmp = icmp eq %struct._ProfilerEntry* %2, null, !dbg !2040
  br i1 %cmp, label %if.then, label %if.end, !dbg !2041

if.then:                                          ; preds = %entry
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2042, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %3, i32 0, i32 4, !dbg !2044
  %4 = load i32, i32* %flags, align 4, !dbg !2045, !tbaa !900
  %or = or i32 %4, 256, !dbg !2045
  store i32 %or, i32* %flags, align 4, !dbg !2045, !tbaa !900
  store %struct._ProfilerEntry* null, %struct._ProfilerEntry** %retval, !dbg !2046
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2046

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %userObj.addr, align 8, !dbg !2047, !tbaa !845
  %call1 = call %struct._object* @normalizeUserObj(%struct._object* %5), !dbg !2048
  store %struct._object* %call1, %struct._object** %userObj.addr, align 8, !dbg !2049, !tbaa !845
  %6 = load %struct._object*, %struct._object** %userObj.addr, align 8, !dbg !2050, !tbaa !845
  %cmp2 = icmp eq %struct._object* %6, null, !dbg !2052
  br i1 %cmp2, label %if.then.3, label %if.end.6, !dbg !2053

if.then.3:                                        ; preds = %if.end
  call void @PyErr_Clear(), !dbg !2054
  %7 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2056, !tbaa !845
  %8 = bitcast %struct._ProfilerEntry* %7 to i8*, !dbg !2056
  call void @PyMem_Free(i8* %8), !dbg !2057
  %9 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2058, !tbaa !845
  %flags4 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %9, i32 0, i32 4, !dbg !2059
  %10 = load i32, i32* %flags4, align 4, !dbg !2060, !tbaa !900
  %or5 = or i32 %10, 256, !dbg !2060
  store i32 %or5, i32* %flags4, align 4, !dbg !2060, !tbaa !900
  store %struct._ProfilerEntry* null, %struct._ProfilerEntry** %retval, !dbg !2061
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2061

if.end.6:                                         ; preds = %if.end
  %11 = load i8*, i8** %key.addr, align 8, !dbg !2062, !tbaa !845
  %12 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2063, !tbaa !845
  %header = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %12, i32 0, i32 0, !dbg !2064
  %key7 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %header, i32 0, i32 0, !dbg !2065
  store i8* %11, i8** %key7, align 8, !dbg !2066, !tbaa !2067
  %13 = load %struct._object*, %struct._object** %userObj.addr, align 8, !dbg !2068, !tbaa !845
  %14 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2069, !tbaa !845
  %userObj8 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %14, i32 0, i32 1, !dbg !2070
  store %struct._object* %13, %struct._object** %userObj8, align 8, !dbg !2071, !tbaa !1387
  %15 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2072, !tbaa !845
  %tt = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %15, i32 0, i32 2, !dbg !2073
  store i64 0, i64* %tt, align 8, !dbg !2074, !tbaa !1204
  %16 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2075, !tbaa !845
  %it = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %16, i32 0, i32 3, !dbg !2076
  store i64 0, i64* %it, align 8, !dbg !2077, !tbaa !1213
  %17 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2078, !tbaa !845
  %callcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %17, i32 0, i32 4, !dbg !2079
  store i64 0, i64* %callcount, align 8, !dbg !2080, !tbaa !1217
  %18 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2081, !tbaa !845
  %recursivecallcount = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %18, i32 0, i32 5, !dbg !2082
  store i64 0, i64* %recursivecallcount, align 8, !dbg !2083, !tbaa !1208
  %19 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2084, !tbaa !845
  %recursionLevel = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %19, i32 0, i32 6, !dbg !2085
  store i64 0, i64* %recursionLevel, align 8, !dbg !2086, !tbaa !1195
  %20 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2087, !tbaa !845
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %20, i32 0, i32 7, !dbg !2088
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %calls, align 8, !dbg !2089, !tbaa !1379
  %21 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2090, !tbaa !845
  %profilerEntries = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %21, i32 0, i32 1, !dbg !2091
  %22 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2092, !tbaa !845
  %header9 = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %22, i32 0, i32 0, !dbg !2093
  call void @RotatingTree_Add(%struct.rotating_node_s** %profilerEntries, %struct.rotating_node_s* %header9), !dbg !2094
  %23 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %self, align 8, !dbg !2095, !tbaa !845
  store %struct._ProfilerEntry* %23, %struct._ProfilerEntry** %retval, !dbg !2096
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2096

cleanup:                                          ; preds = %if.end.6, %if.then.3, %if.then
  %24 = bitcast %struct._ProfilerEntry** %self to i8*, !dbg !2097
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2097
  %25 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %retval, !dbg !2097
  ret %struct._ProfilerEntry* %25, !dbg !2097
}

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal void @initContext(%struct.ProfilerObject* %pObj, %struct._ProfilerContext* %self, %struct._ProfilerEntry* %entry1) #0 {
entry:
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %self.addr = alloca %struct._ProfilerContext*, align 8
  %entry.addr = alloca %struct._ProfilerEntry*, align 8
  %caller = alloca %struct._ProfilerEntry*, align 8
  %subentry = alloca %struct._ProfilerSubEntry*, align 8
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !702, metadata !840), !dbg !2098
  store %struct._ProfilerContext* %self, %struct._ProfilerContext** %self.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._ProfilerContext** %self.addr, metadata !703, metadata !840), !dbg !2099
  store %struct._ProfilerEntry* %entry1, %struct._ProfilerEntry** %entry.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %entry.addr, metadata !704, metadata !840), !dbg !2100
  %0 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !2101, !tbaa !845
  %1 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !2102, !tbaa !845
  %ctxEntry = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %1, i32 0, i32 3, !dbg !2103
  store %struct._ProfilerEntry* %0, %struct._ProfilerEntry** %ctxEntry, align 8, !dbg !2104, !tbaa !1085
  %2 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !2105, !tbaa !845
  %subt = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %2, i32 0, i32 1, !dbg !2106
  store i64 0, i64* %subt, align 8, !dbg !2107, !tbaa !1175
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2108, !tbaa !845
  %currentProfilerContext = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %3, i32 0, i32 2, !dbg !2109
  %4 = load %struct._ProfilerContext*, %struct._ProfilerContext** %currentProfilerContext, align 8, !dbg !2109, !tbaa !1076
  %5 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !2110, !tbaa !845
  %previous = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %5, i32 0, i32 2, !dbg !2111
  store %struct._ProfilerContext* %4, %struct._ProfilerContext** %previous, align 8, !dbg !2112, !tbaa !1097
  %6 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !2113, !tbaa !845
  %7 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2114, !tbaa !845
  %currentProfilerContext2 = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %7, i32 0, i32 2, !dbg !2115
  store %struct._ProfilerContext* %6, %struct._ProfilerContext** %currentProfilerContext2, align 8, !dbg !2116, !tbaa !1076
  %8 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !2117, !tbaa !845
  %recursionLevel = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %8, i32 0, i32 6, !dbg !2118
  %9 = load i64, i64* %recursionLevel, align 8, !dbg !2119, !tbaa !1195
  %inc = add i64 %9, 1, !dbg !2119
  store i64 %inc, i64* %recursionLevel, align 8, !dbg !2119, !tbaa !1195
  %10 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2120, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %10, i32 0, i32 4, !dbg !2121
  %11 = load i32, i32* %flags, align 4, !dbg !2121, !tbaa !900
  %and = and i32 %11, 2, !dbg !2122
  %tobool = icmp ne i32 %and, 0, !dbg !2122
  br i1 %tobool, label %land.lhs.true, label %if.end.14, !dbg !2123

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !2124, !tbaa !845
  %previous3 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %12, i32 0, i32 2, !dbg !2126
  %13 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous3, align 8, !dbg !2126, !tbaa !1097
  %tobool4 = icmp ne %struct._ProfilerContext* %13, null, !dbg !2127
  br i1 %tobool4, label %if.then, label %if.end.14, !dbg !2128

if.then:                                          ; preds = %land.lhs.true
  %14 = bitcast %struct._ProfilerEntry** %caller to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %caller, metadata !705, metadata !840), !dbg !2130
  %15 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !2131, !tbaa !845
  %previous5 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %15, i32 0, i32 2, !dbg !2132
  %16 = load %struct._ProfilerContext*, %struct._ProfilerContext** %previous5, align 8, !dbg !2132, !tbaa !1097
  %ctxEntry6 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %16, i32 0, i32 3, !dbg !2133
  %17 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %ctxEntry6, align 8, !dbg !2133, !tbaa !1085
  store %struct._ProfilerEntry* %17, %struct._ProfilerEntry** %caller, align 8, !dbg !2130, !tbaa !845
  %18 = bitcast %struct._ProfilerSubEntry** %subentry to i8*, !dbg !2134
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !2134
  call void @llvm.dbg.declare(metadata %struct._ProfilerSubEntry** %subentry, metadata !708, metadata !840), !dbg !2135
  %19 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2136, !tbaa !845
  %20 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller, align 8, !dbg !2137, !tbaa !845
  %21 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !2138, !tbaa !845
  %call = call %struct._ProfilerSubEntry* @getSubEntry(%struct.ProfilerObject* %19, %struct._ProfilerEntry* %20, %struct._ProfilerEntry* %21), !dbg !2139
  store %struct._ProfilerSubEntry* %call, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !2135, !tbaa !845
  %22 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !2140, !tbaa !845
  %cmp = icmp eq %struct._ProfilerSubEntry* %22, null, !dbg !2142
  br i1 %cmp, label %if.then.7, label %if.end, !dbg !2143

if.then.7:                                        ; preds = %if.then
  %23 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2144, !tbaa !845
  %24 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller, align 8, !dbg !2145, !tbaa !845
  %25 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !2146, !tbaa !845
  %call8 = call %struct._ProfilerSubEntry* @newSubEntry(%struct.ProfilerObject* %23, %struct._ProfilerEntry* %24, %struct._ProfilerEntry* %25), !dbg !2147
  store %struct._ProfilerSubEntry* %call8, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !2148, !tbaa !845
  br label %if.end, !dbg !2149

if.end:                                           ; preds = %if.then.7, %if.then
  %26 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !2150, !tbaa !845
  %tobool9 = icmp ne %struct._ProfilerSubEntry* %26, null, !dbg !2150
  br i1 %tobool9, label %if.then.10, label %if.end.13, !dbg !2152

if.then.10:                                       ; preds = %if.end
  %27 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %subentry, align 8, !dbg !2153, !tbaa !845
  %recursionLevel11 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %27, i32 0, i32 5, !dbg !2154
  %28 = load i64, i64* %recursionLevel11, align 8, !dbg !2155, !tbaa !1246
  %inc12 = add i64 %28, 1, !dbg !2155
  store i64 %inc12, i64* %recursionLevel11, align 8, !dbg !2155, !tbaa !1246
  br label %if.end.13, !dbg !2155

if.end.13:                                        ; preds = %if.then.10, %if.end
  %29 = bitcast %struct._ProfilerSubEntry** %subentry to i8*, !dbg !2156
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !2156
  %30 = bitcast %struct._ProfilerEntry** %caller to i8*, !dbg !2156
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !2156
  br label %if.end.14, !dbg !2157

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %entry
  %31 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2158, !tbaa !845
  %externalTimer = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %31, i32 0, i32 5, !dbg !2159
  %32 = load %struct._object*, %struct._object** %externalTimer, align 8, !dbg !2159, !tbaa !916
  %tobool15 = icmp ne %struct._object* %32, null, !dbg !2160
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !2160

cond.true:                                        ; preds = %if.end.14
  %33 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2161, !tbaa !845
  %call16 = call i64 @CallExternalTimer(%struct.ProfilerObject* %33), !dbg !2163
  br label %cond.end, !dbg !2160

cond.false:                                       ; preds = %if.end.14
  %call17 = call i64 @hpTimer(), !dbg !2164
  br label %cond.end, !dbg !2160

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call16, %cond.true ], [ %call17, %cond.false ], !dbg !2160
  %34 = load %struct._ProfilerContext*, %struct._ProfilerContext** %self.addr, align 8, !dbg !2166, !tbaa !845
  %t0 = getelementptr inbounds %struct._ProfilerContext, %struct._ProfilerContext* %34, i32 0, i32 0, !dbg !2169
  store i64 %cond, i64* %t0, align 8, !dbg !2170, !tbaa !1167
  ret void, !dbg !2171
}

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @normalizeUserObj(%struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %fn = alloca %struct.PyCFunctionObject*, align 8
  %cleanup.dest.slot = alloca i32
  %mod = alloca %struct._object*, align 8
  %modname = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %mo = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !670, metadata !840), !dbg !2172
  %0 = bitcast %struct.PyCFunctionObject** %fn to i8*, !dbg !2173
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2173
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %fn, metadata !671, metadata !840), !dbg !2174
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2175, !tbaa !845
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2177
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2177, !tbaa !937
  %cmp = icmp eq %struct._typeobject* %2, @PyCFunction_Type, !dbg !2178
  br i1 %cmp, label %if.end, label %if.then, !dbg !2179

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2180, !tbaa !845
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !2182
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2183, !tbaa !882
  %inc = add i64 %4, 1, !dbg !2183
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2183, !tbaa !882
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2184, !tbaa !845
  store %struct._object* %5, %struct._object** %retval, !dbg !2185
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109, !dbg !2185

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2186, !tbaa !845
  %7 = bitcast %struct._object* %6 to %struct.PyCFunctionObject*, !dbg !2187
  store %struct.PyCFunctionObject* %7, %struct.PyCFunctionObject** %fn, align 8, !dbg !2188, !tbaa !845
  %8 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8, !dbg !2189, !tbaa !845
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %8, i32 0, i32 2, !dbg !2190
  %9 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !2190, !tbaa !2191
  %cmp1 = icmp eq %struct._object* %9, null, !dbg !2192
  br i1 %cmp1, label %if.then.2, label %if.else.51, !dbg !2193

if.then.2:                                        ; preds = %if.end
  %10 = bitcast %struct._object** %mod to i8*, !dbg !2194
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2194
  call void @llvm.dbg.declare(metadata %struct._object** %mod, metadata !672, metadata !840), !dbg !2195
  %11 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8, !dbg !2196, !tbaa !845
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %11, i32 0, i32 3, !dbg !2197
  %12 = load %struct._object*, %struct._object** %m_module, align 8, !dbg !2197, !tbaa !2198
  store %struct._object* %12, %struct._object** %mod, align 8, !dbg !2195, !tbaa !845
  %13 = bitcast %struct._object** %modname to i8*, !dbg !2199
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !2199
  call void @llvm.dbg.declare(metadata %struct._object** %modname, metadata !675, metadata !840), !dbg !2200
  store %struct._object* null, %struct._object** %modname, align 8, !dbg !2200, !tbaa !845
  %14 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2201, !tbaa !845
  %cmp3 = icmp ne %struct._object* %14, null, !dbg !2203
  br i1 %cmp3, label %if.then.4, label %if.end.20, !dbg !2204

if.then.4:                                        ; preds = %if.then.2
  %15 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2205, !tbaa !845
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2208
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2208, !tbaa !937
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19, !dbg !2209
  %17 = load i64, i64* %tp_flags, align 8, !dbg !2209, !tbaa !2210
  %and = and i64 %17, 268435456, !dbg !2211
  %cmp6 = icmp ne i64 %and, 0, !dbg !2212
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !2213

if.then.7:                                        ; preds = %if.then.4
  %18 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2214, !tbaa !845
  store %struct._object* %18, %struct._object** %modname, align 8, !dbg !2216, !tbaa !845
  %19 = load %struct._object*, %struct._object** %modname, align 8, !dbg !2217, !tbaa !845
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !2218
  %20 = load i64, i64* %ob_refcnt8, align 8, !dbg !2219, !tbaa !882
  %inc9 = add i64 %20, 1, !dbg !2219
  store i64 %inc9, i64* %ob_refcnt8, align 8, !dbg !2219, !tbaa !882
  br label %if.end.19, !dbg !2220

if.else:                                          ; preds = %if.then.4
  %21 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2221, !tbaa !845
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !2223
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !2223, !tbaa !937
  %cmp11 = icmp eq %struct._typeobject* %22, @PyModule_Type, !dbg !2224
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false, !dbg !2225

lor.lhs.false:                                    ; preds = %if.else
  %23 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2226, !tbaa !845
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !2228
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !2228, !tbaa !937
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %24, %struct._typeobject* @PyModule_Type), !dbg !2229
  %tobool = icmp ne i32 %call, 0, !dbg !2229
  br i1 %tobool, label %if.then.13, label %if.end.18, !dbg !2230

if.then.13:                                       ; preds = %lor.lhs.false, %if.else
  %25 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2231, !tbaa !845
  %call14 = call %struct._object* @PyModule_GetNameObject(%struct._object* %25), !dbg !2233
  store %struct._object* %call14, %struct._object** %modname, align 8, !dbg !2234, !tbaa !845
  %26 = load %struct._object*, %struct._object** %modname, align 8, !dbg !2235, !tbaa !845
  %cmp15 = icmp eq %struct._object* %26, null, !dbg !2237
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !2238

if.then.16:                                       ; preds = %if.then.13
  call void @PyErr_Clear(), !dbg !2239
  br label %if.end.17, !dbg !2239

if.end.17:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.18, !dbg !2240

if.end.18:                                        ; preds = %if.end.17, %lor.lhs.false
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.7
  br label %if.end.20, !dbg !2241

if.end.20:                                        ; preds = %if.end.19, %if.then.2
  %27 = load %struct._object*, %struct._object** %modname, align 8, !dbg !2242, !tbaa !845
  %cmp21 = icmp ne %struct._object* %27, null, !dbg !2243
  br i1 %cmp21, label %if.then.22, label %if.end.46, !dbg !2244

if.then.22:                                       ; preds = %if.end.20
  %28 = load %struct._object*, %struct._object** %modname, align 8, !dbg !2245, !tbaa !845
  %call23 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)), !dbg !2246
  %cmp24 = icmp ne i32 %call23, 0, !dbg !2247
  br i1 %cmp24, label %if.then.25, label %if.end.33, !dbg !2248

if.then.25:                                       ; preds = %if.then.22
  %29 = bitcast %struct._object** %result to i8*, !dbg !2249
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !2249
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !676, metadata !840), !dbg !2250
  %30 = load %struct._object*, %struct._object** %modname, align 8, !dbg !2251, !tbaa !845
  %31 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8, !dbg !2252, !tbaa !845
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %31, i32 0, i32 1, !dbg !2253
  %32 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !2253, !tbaa !1873
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %32, i32 0, i32 0, !dbg !2254
  %33 = load i8*, i8** %ml_name, align 8, !dbg !2254, !tbaa !2255
  %call26 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct._object* %30, i8* %33), !dbg !2257
  store %struct._object* %call26, %struct._object** %result, align 8, !dbg !2258, !tbaa !845
  br label %do.body, !dbg !2259

do.body:                                          ; preds = %if.then.25
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2260
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !2260
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !681, metadata !840), !dbg !2262
  %35 = load %struct._object*, %struct._object** %modname, align 8, !dbg !2263, !tbaa !845
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8, !dbg !2262, !tbaa !845
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2264, !tbaa !845
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !2266
  %37 = load i64, i64* %ob_refcnt27, align 8, !dbg !2267, !tbaa !882
  %dec = add i64 %37, -1, !dbg !2267
  store i64 %dec, i64* %ob_refcnt27, align 8, !dbg !2267, !tbaa !882
  %cmp28 = icmp ne i64 %dec, 0, !dbg !2268
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !2269

if.then.29:                                       ; preds = %do.body
  br label %if.end.32, !dbg !2270

if.else.30:                                       ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2272, !tbaa !845
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !2274
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !2274, !tbaa !937
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !2275
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2275, !tbaa !939
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2276, !tbaa !845
  call void %40(%struct._object* %41), !dbg !2277
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !2278
  br label %do.cond, !dbg !2280

do.cond:                                          ; preds = %if.end.32
  br label %do.end, !dbg !2281

do.end:                                           ; preds = %do.cond
  %43 = load %struct._object*, %struct._object** %result, align 8, !dbg !2283, !tbaa !845
  store %struct._object* %43, %struct._object** %retval, !dbg !2284
  store i32 1, i32* %cleanup.dest.slot
  %44 = bitcast %struct._object** %result to i8*, !dbg !2285
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !2285
  br label %cleanup

if.end.33:                                        ; preds = %if.then.22
  br label %do.body.34, !dbg !2286

do.body.34:                                       ; preds = %if.end.33
  %45 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !2287
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !2287
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !683, metadata !840), !dbg !2289
  %46 = load %struct._object*, %struct._object** %modname, align 8, !dbg !2290, !tbaa !845
  store %struct._object* %46, %struct._object** %_py_decref_tmp35, align 8, !dbg !2289, !tbaa !845
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !2291, !tbaa !845
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !2293
  %48 = load i64, i64* %ob_refcnt36, align 8, !dbg !2294, !tbaa !882
  %dec37 = add i64 %48, -1, !dbg !2294
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !2294, !tbaa !882
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !2295
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !2296

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43, !dbg !2297

if.else.40:                                       ; preds = %do.body.34
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !2299, !tbaa !845
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !2301
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2301, !tbaa !937
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !2302
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !2302, !tbaa !939
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !2303, !tbaa !845
  call void %51(%struct._object* %52), !dbg !2304
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %53 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !2305
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !2305
  br label %do.cond.44, !dbg !2307

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !2308

do.end.45:                                        ; preds = %do.cond.44
  br label %if.end.46, !dbg !2310

if.end.46:                                        ; preds = %do.end.45, %if.end.20
  %54 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8, !dbg !2311, !tbaa !845
  %m_ml47 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %54, i32 0, i32 1, !dbg !2312
  %55 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml47, align 8, !dbg !2312, !tbaa !1873
  %ml_name48 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %55, i32 0, i32 0, !dbg !2313
  %56 = load i8*, i8** %ml_name48, align 8, !dbg !2313, !tbaa !2255
  %call49 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* %56), !dbg !2314
  store %struct._object* %call49, %struct._object** %retval, !dbg !2315
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2315

cleanup:                                          ; preds = %if.end.46, %do.end
  %57 = bitcast %struct._object** %modname to i8*, !dbg !2316
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !2316
  %58 = bitcast %struct._object** %mod to i8*, !dbg !2316
  call void @llvm.lifetime.end(i64 8, i8* %58) #1, !dbg !2316
  br label %cleanup.109

if.else.51:                                       ; preds = %if.end
  %59 = bitcast %struct._object** %self to i8*, !dbg !2317
  call void @llvm.lifetime.start(i64 8, i8* %59) #1, !dbg !2317
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !685, metadata !840), !dbg !2318
  %60 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8, !dbg !2319, !tbaa !845
  %m_self52 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %60, i32 0, i32 2, !dbg !2320
  %61 = load %struct._object*, %struct._object** %m_self52, align 8, !dbg !2320, !tbaa !2191
  store %struct._object* %61, %struct._object** %self, align 8, !dbg !2318, !tbaa !845
  %62 = bitcast %struct._object** %name to i8*, !dbg !2321
  call void @llvm.lifetime.start(i64 8, i8* %62) #1, !dbg !2321
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !687, metadata !840), !dbg !2322
  %63 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8, !dbg !2323, !tbaa !845
  %m_ml53 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %63, i32 0, i32 1, !dbg !2324
  %64 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml53, align 8, !dbg !2324, !tbaa !1873
  %ml_name54 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %64, i32 0, i32 0, !dbg !2325
  %65 = load i8*, i8** %ml_name54, align 8, !dbg !2325, !tbaa !2255
  %call55 = call %struct._object* @PyUnicode_FromString(i8* %65), !dbg !2326
  store %struct._object* %call55, %struct._object** %name, align 8, !dbg !2322, !tbaa !845
  %66 = load %struct._object*, %struct._object** %name, align 8, !dbg !2327, !tbaa !845
  %cmp56 = icmp ne %struct._object* %66, null, !dbg !2328
  br i1 %cmp56, label %if.then.57, label %if.end.103, !dbg !2329

if.then.57:                                       ; preds = %if.else.51
  %67 = bitcast %struct._object** %mo to i8*, !dbg !2330
  call void @llvm.lifetime.start(i64 8, i8* %67) #1, !dbg !2330
  call void @llvm.dbg.declare(metadata %struct._object** %mo, metadata !688, metadata !840), !dbg !2331
  %68 = load %struct._object*, %struct._object** %self, align 8, !dbg !2332, !tbaa !845
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1, !dbg !2333
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !2333, !tbaa !937
  %70 = load %struct._object*, %struct._object** %name, align 8, !dbg !2334, !tbaa !845
  %call59 = call %struct._object* @_PyType_Lookup(%struct._typeobject* %69, %struct._object* %70), !dbg !2335
  store %struct._object* %call59, %struct._object** %mo, align 8, !dbg !2331, !tbaa !845
  br label %do.body.60, !dbg !2336

do.body.60:                                       ; preds = %if.then.57
  %71 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2337
  call void @llvm.lifetime.start(i64 8, i8* %71) #1, !dbg !2337
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !691, metadata !840), !dbg !2339
  %72 = load %struct._object*, %struct._object** %mo, align 8, !dbg !2340, !tbaa !845
  store %struct._object* %72, %struct._object** %_py_xincref_tmp, align 8, !dbg !2339, !tbaa !845
  %73 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2341, !tbaa !845
  %cmp61 = icmp ne %struct._object* %73, null, !dbg !2343
  br i1 %cmp61, label %if.then.62, label %if.end.65, !dbg !2344

if.then.62:                                       ; preds = %do.body.60
  %74 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2345, !tbaa !845
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !2347
  %75 = load i64, i64* %ob_refcnt63, align 8, !dbg !2348, !tbaa !882
  %inc64 = add i64 %75, 1, !dbg !2348
  store i64 %inc64, i64* %ob_refcnt63, align 8, !dbg !2348, !tbaa !882
  br label %if.end.65, !dbg !2349

if.end.65:                                        ; preds = %if.then.62, %do.body.60
  %76 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2350
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !2350
  br label %do.cond.66, !dbg !2353

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !2354

do.end.67:                                        ; preds = %do.cond.66
  br label %do.body.68, !dbg !2356

do.body.68:                                       ; preds = %do.end.67
  %77 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !2357
  call void @llvm.lifetime.start(i64 8, i8* %77) #1, !dbg !2357
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp69, metadata !693, metadata !840), !dbg !2359
  %78 = load %struct._object*, %struct._object** %name, align 8, !dbg !2360, !tbaa !845
  store %struct._object* %78, %struct._object** %_py_decref_tmp69, align 8, !dbg !2359, !tbaa !845
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2361, !tbaa !845
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0, !dbg !2363
  %80 = load i64, i64* %ob_refcnt70, align 8, !dbg !2364, !tbaa !882
  %dec71 = add i64 %80, -1, !dbg !2364
  store i64 %dec71, i64* %ob_refcnt70, align 8, !dbg !2364, !tbaa !882
  %cmp72 = icmp ne i64 %dec71, 0, !dbg !2365
  br i1 %cmp72, label %if.then.73, label %if.else.74, !dbg !2366

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77, !dbg !2367

if.else.74:                                       ; preds = %do.body.68
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2369, !tbaa !845
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1, !dbg !2371
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !2371, !tbaa !937
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4, !dbg !2372
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !2372, !tbaa !939
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2373, !tbaa !845
  call void %83(%struct._object* %84), !dbg !2374
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %85 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !2375
  call void @llvm.lifetime.end(i64 8, i8* %85) #1, !dbg !2375
  br label %do.cond.78, !dbg !2377

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !2378

do.end.79:                                        ; preds = %do.cond.78
  %86 = load %struct._object*, %struct._object** %mo, align 8, !dbg !2380, !tbaa !845
  %cmp80 = icmp ne %struct._object* %86, null, !dbg !2381
  br i1 %cmp80, label %if.then.81, label %if.end.99, !dbg !2382

if.then.81:                                       ; preds = %do.end.79
  %87 = bitcast %struct._object** %res to i8*, !dbg !2383
  call void @llvm.lifetime.start(i64 8, i8* %87) #1, !dbg !2383
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !695, metadata !840), !dbg !2384
  %88 = load %struct._object*, %struct._object** %mo, align 8, !dbg !2385, !tbaa !845
  %call82 = call %struct._object* @PyObject_Repr(%struct._object* %88), !dbg !2386
  store %struct._object* %call82, %struct._object** %res, align 8, !dbg !2384, !tbaa !845
  br label %do.body.83, !dbg !2387

do.body.83:                                       ; preds = %if.then.81
  %89 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !2388
  call void @llvm.lifetime.start(i64 8, i8* %89) #1, !dbg !2388
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp84, metadata !698, metadata !840), !dbg !2390
  %90 = load %struct._object*, %struct._object** %mo, align 8, !dbg !2391, !tbaa !845
  store %struct._object* %90, %struct._object** %_py_decref_tmp84, align 8, !dbg !2390, !tbaa !845
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2392, !tbaa !845
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0, !dbg !2394
  %92 = load i64, i64* %ob_refcnt85, align 8, !dbg !2395, !tbaa !882
  %dec86 = add i64 %92, -1, !dbg !2395
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !2395, !tbaa !882
  %cmp87 = icmp ne i64 %dec86, 0, !dbg !2396
  br i1 %cmp87, label %if.then.88, label %if.else.89, !dbg !2397

if.then.88:                                       ; preds = %do.body.83
  br label %if.end.92, !dbg !2398

if.else.89:                                       ; preds = %do.body.83
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2400, !tbaa !845
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1, !dbg !2402
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !2402, !tbaa !937
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4, !dbg !2403
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !2403, !tbaa !939
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2404, !tbaa !845
  call void %95(%struct._object* %96), !dbg !2405
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  %97 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !2406
  call void @llvm.lifetime.end(i64 8, i8* %97) #1, !dbg !2406
  br label %do.cond.93, !dbg !2408

do.cond.93:                                       ; preds = %if.end.92
  br label %do.end.94, !dbg !2409

do.end.94:                                        ; preds = %do.cond.93
  %98 = load %struct._object*, %struct._object** %res, align 8, !dbg !2411, !tbaa !845
  %cmp95 = icmp ne %struct._object* %98, null, !dbg !2413
  br i1 %cmp95, label %if.then.96, label %if.end.97, !dbg !2414

if.then.96:                                       ; preds = %do.end.94
  %99 = load %struct._object*, %struct._object** %res, align 8, !dbg !2415, !tbaa !845
  store %struct._object* %99, %struct._object** %retval, !dbg !2416
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.98, !dbg !2416

if.end.97:                                        ; preds = %do.end.94
  store i32 0, i32* %cleanup.dest.slot, !dbg !2417
  br label %cleanup.98, !dbg !2417

cleanup.98:                                       ; preds = %if.end.97, %if.then.96
  %100 = bitcast %struct._object** %res to i8*, !dbg !2418
  call void @llvm.lifetime.end(i64 8, i8* %100) #1, !dbg !2418
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup.98
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.99, !dbg !2420

if.end.99:                                        ; preds = %cleanup.cont, %do.end.79
  store i32 0, i32* %cleanup.dest.slot, !dbg !2421
  br label %cleanup.100, !dbg !2421

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.100

cleanup.100:                                      ; preds = %NewDefault, %if.end.99
  %101 = bitcast %struct._object** %mo to i8*, !dbg !2422
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !2422
  %cleanup.dest.101 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.100
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.101, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.102, label %NewDefault.1

cleanup.cont.102:                                 ; preds = %LeafBlock.2
  br label %if.end.103, !dbg !2424

if.end.103:                                       ; preds = %cleanup.cont.102, %if.else.51
  call void @PyErr_Clear(), !dbg !2425
  %102 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %fn, align 8, !dbg !2426, !tbaa !845
  %m_ml104 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %102, i32 0, i32 1, !dbg !2427
  %103 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml104, align 8, !dbg !2427, !tbaa !1873
  %ml_name105 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %103, i32 0, i32 0, !dbg !2428
  %104 = load i8*, i8** %ml_name105, align 8, !dbg !2428, !tbaa !2255
  %call106 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i8* %104), !dbg !2429
  store %struct._object* %call106, %struct._object** %retval, !dbg !2430
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107, !dbg !2430

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.107

cleanup.107:                                      ; preds = %NewDefault.1, %if.end.103
  %105 = bitcast %struct._object** %name to i8*, !dbg !2431
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !2431
  %106 = bitcast %struct._object** %self to i8*, !dbg !2431
  call void @llvm.lifetime.end(i64 8, i8* %106) #1, !dbg !2431
  br label %cleanup.109

cleanup.109:                                      ; preds = %cleanup.107, %cleanup, %if.then
  %107 = bitcast %struct.PyCFunctionObject** %fn to i8*, !dbg !2432
  call void @llvm.lifetime.end(i64 8, i8* %107) #1, !dbg !2432
  %108 = load %struct._object*, %struct._object** %retval, !dbg !2432
  ret %struct._object* %108, !dbg !2432
}

declare void @PyErr_Clear() #3

declare void @RotatingTree_Add(%struct.rotating_node_s**, %struct.rotating_node_s*) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare %struct._object* @PyModule_GetNameObject(%struct._object*) #3

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @_PyType_Lookup(%struct._typeobject*, %struct._object*) #3

declare %struct._object* @PyObject_Repr(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._ProfilerSubEntry* @newSubEntry(%struct.ProfilerObject* %pObj, %struct._ProfilerEntry* %caller, %struct._ProfilerEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._ProfilerSubEntry*, align 8
  %pObj.addr = alloca %struct.ProfilerObject*, align 8
  %caller.addr = alloca %struct._ProfilerEntry*, align 8
  %entry.addr = alloca %struct._ProfilerEntry*, align 8
  %self = alloca %struct._ProfilerSubEntry*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ProfilerObject* %pObj, %struct.ProfilerObject** %pObj.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct.ProfilerObject** %pObj.addr, metadata !711, metadata !840), !dbg !2433
  store %struct._ProfilerEntry* %caller, %struct._ProfilerEntry** %caller.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %caller.addr, metadata !712, metadata !840), !dbg !2434
  store %struct._ProfilerEntry* %entry1, %struct._ProfilerEntry** %entry.addr, align 8, !tbaa !845
  call void @llvm.dbg.declare(metadata %struct._ProfilerEntry** %entry.addr, metadata !713, metadata !840), !dbg !2435
  %0 = bitcast %struct._ProfilerSubEntry** %self to i8*, !dbg !2436
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2436
  call void @llvm.dbg.declare(metadata %struct._ProfilerSubEntry** %self, metadata !714, metadata !840), !dbg !2437
  %call = call i8* @PyMem_Malloc(i64 64), !dbg !2438
  %1 = bitcast i8* %call to %struct._ProfilerSubEntry*, !dbg !2439
  store %struct._ProfilerSubEntry* %1, %struct._ProfilerSubEntry** %self, align 8, !dbg !2440, !tbaa !845
  %2 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8, !dbg !2441, !tbaa !845
  %cmp = icmp eq %struct._ProfilerSubEntry* %2, null, !dbg !2443
  br i1 %cmp, label %if.then, label %if.end, !dbg !2444

if.then:                                          ; preds = %entry
  %3 = load %struct.ProfilerObject*, %struct.ProfilerObject** %pObj.addr, align 8, !dbg !2445, !tbaa !845
  %flags = getelementptr inbounds %struct.ProfilerObject, %struct.ProfilerObject* %3, i32 0, i32 4, !dbg !2447
  %4 = load i32, i32* %flags, align 4, !dbg !2448, !tbaa !900
  %or = or i32 %4, 256, !dbg !2448
  store i32 %or, i32* %flags, align 4, !dbg !2448, !tbaa !900
  store %struct._ProfilerSubEntry* null, %struct._ProfilerSubEntry** %retval, !dbg !2449
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2449

if.end:                                           ; preds = %entry
  %5 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %entry.addr, align 8, !dbg !2450, !tbaa !845
  %6 = bitcast %struct._ProfilerEntry* %5 to i8*, !dbg !2451
  %7 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8, !dbg !2452, !tbaa !845
  %header = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %7, i32 0, i32 0, !dbg !2453
  %key = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %header, i32 0, i32 0, !dbg !2454
  store i8* %6, i8** %key, align 8, !dbg !2455, !tbaa !1737
  %8 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8, !dbg !2456, !tbaa !845
  %tt = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %8, i32 0, i32 1, !dbg !2457
  store i64 0, i64* %tt, align 8, !dbg !2458, !tbaa !1254
  %9 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8, !dbg !2459, !tbaa !845
  %it = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %9, i32 0, i32 2, !dbg !2460
  store i64 0, i64* %it, align 8, !dbg !2461, !tbaa !1263
  %10 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8, !dbg !2462, !tbaa !845
  %callcount = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %10, i32 0, i32 3, !dbg !2463
  store i64 0, i64* %callcount, align 8, !dbg !2464, !tbaa !1267
  %11 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8, !dbg !2465, !tbaa !845
  %recursivecallcount = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %11, i32 0, i32 4, !dbg !2466
  store i64 0, i64* %recursivecallcount, align 8, !dbg !2467, !tbaa !1258
  %12 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8, !dbg !2468, !tbaa !845
  %recursionLevel = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %12, i32 0, i32 5, !dbg !2469
  store i64 0, i64* %recursionLevel, align 8, !dbg !2470, !tbaa !1246
  %13 = load %struct._ProfilerEntry*, %struct._ProfilerEntry** %caller.addr, align 8, !dbg !2471, !tbaa !845
  %calls = getelementptr inbounds %struct._ProfilerEntry, %struct._ProfilerEntry* %13, i32 0, i32 7, !dbg !2472
  %14 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8, !dbg !2473, !tbaa !845
  %header2 = getelementptr inbounds %struct._ProfilerSubEntry, %struct._ProfilerSubEntry* %14, i32 0, i32 0, !dbg !2474
  call void @RotatingTree_Add(%struct.rotating_node_s** %calls, %struct.rotating_node_s* %header2), !dbg !2475
  %15 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %self, align 8, !dbg !2476, !tbaa !845
  store %struct._ProfilerSubEntry* %15, %struct._ProfilerSubEntry** %retval, !dbg !2477
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2477

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct._ProfilerSubEntry** %self to i8*, !dbg !2478
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !2478
  %17 = load %struct._ProfilerSubEntry*, %struct._ProfilerSubEntry** %retval, !dbg !2478
  ret %struct._ProfilerSubEntry* %17, !dbg !2478
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!835, !836, !837}
!llvm.ident = !{!838}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !419, globals: !751)
!1 = !DIFile(filename: "_lsprof.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343, !344, !350, !362, !369, !381, !389, !409, !396}
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
!343 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !346, line: 56, size: 64, align: 32, elements: !347)
!346 = !DIFile(filename: "/usr/include/sys/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !345, file: !346, line: 58, baseType: !44, size: 32, align: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !345, file: !346, line: 59, baseType: !44, size: 32, align: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfilerSubEntry", file: !352, line: 78, baseType: !353)
!352 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_lsprof.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfilerSubEntry", file: !352, line: 71, size: 512, align: 64, elements: !354)
!354 = !{!355, !364, !365, !366, !367, !368}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !353, file: !352, line: 72, baseType: !356, size: 192, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "rotating_node_t", file: !357, line: 15, baseType: !358)
!357 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/rotatingtree.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "rotating_node_s", file: !357, line: 18, size: 192, align: 64, elements: !359)
!359 = !{!360, !361, !363}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !358, file: !357, line: 19, baseType: !4, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !358, file: !357, line: 20, baseType: !362, size: 64, align: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !358, file: !357, line: 21, baseType: !362, size: 64, align: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !353, file: !352, line: 73, baseType: !343, size: 64, align: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !353, file: !352, line: 74, baseType: !343, size: 64, align: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "callcount", scope: !353, file: !352, line: 75, baseType: !17, size: 64, align: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "recursivecallcount", scope: !353, file: !352, line: 76, baseType: !17, size: 64, align: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "recursionLevel", scope: !353, file: !352, line: 77, baseType: !17, size: 64, align: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfilerEntry", file: !352, line: 90, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfilerEntry", file: !352, line: 81, size: 640, align: 64, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !371, file: !352, line: 82, baseType: !356, size: 192, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "userObj", scope: !371, file: !352, line: 83, baseType: !5, size: 64, align: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !371, file: !352, line: 84, baseType: !343, size: 64, align: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !371, file: !352, line: 85, baseType: !343, size: 64, align: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "callcount", scope: !371, file: !352, line: 86, baseType: !17, size: 64, align: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "recursivecallcount", scope: !371, file: !352, line: 87, baseType: !17, size: 64, align: 64, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "recursionLevel", scope: !371, file: !352, line: 88, baseType: !17, size: 64, align: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !371, file: !352, line: 89, baseType: !362, size: 64, align: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "statscollector_t", file: !352, line: 538, baseType: !383)
!383 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 534, size: 192, align: 64, elements: !384)
!384 = !{!385, !386, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !383, file: !352, line: 535, baseType: !5, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sublist", scope: !383, file: !352, line: 536, baseType: !5, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "factor", scope: !383, file: !352, line: 537, baseType: !388, size: 64, align: 64, offset: 128)
!388 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfilerObject", file: !352, line: 107, baseType: !391)
!391 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 99, size: 512, align: 64, elements: !392)
!392 = !{!393, !394, !395, !405, !406, !407, !408}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !391, file: !352, line: 100, baseType: !6, size: 128, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "profilerEntries", scope: !391, file: !352, line: 101, baseType: !362, size: 64, align: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "currentProfilerContext", scope: !391, file: !352, line: 102, baseType: !396, size: 64, align: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfilerContext", file: !352, line: 97, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfilerContext", file: !352, line: 92, size: 256, align: 64, elements: !399)
!399 = !{!400, !401, !402, !404}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "t0", scope: !398, file: !352, line: 93, baseType: !343, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "subt", scope: !398, file: !352, line: 94, baseType: !343, size: 64, align: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !398, file: !352, line: 95, baseType: !403, size: 64, align: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ctxEntry", scope: !398, file: !352, line: 96, baseType: !369, size: 64, align: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "freelistProfilerContext", scope: !391, file: !352, line: 103, baseType: !396, size: 64, align: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !352, line: 104, baseType: !44, size: 32, align: 32, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "externalTimer", scope: !391, file: !352, line: 105, baseType: !5, size: 64, align: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "externalTimerUnit", scope: !391, file: !352, line: 106, baseType: !388, size: 64, align: 64, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunctionObject", file: !281, line: 80, baseType: !411)
!411 = !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 75, size: 320, align: 64, elements: !412)
!412 = !{!413, !414, !417, !418}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !411, file: !281, line: 76, baseType: !6, size: 128, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "m_ml", scope: !411, file: !281, line: 77, baseType: !415, size: 64, align: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "m_self", scope: !411, file: !281, line: 78, baseType: !5, size: 64, align: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "m_module", scope: !411, file: !281, line: 79, baseType: !5, size: 64, align: 64, offset: 256)
!419 = !{!420, !426, !436, !442, !455, !467, !480, !487, !492, !501, !506, !517, !522, !525, !543, !554, !563, !569, !573, !641, !654, !660, !668, !700, !709, !715, !724, !728, !732}
!420 = !DISubprogram(name: "PyInit__lsprof", scope: !352, file: !352, line: 863, type: !421, isLocal: false, isDefinition: true, scopeLine: 864, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__lsprof, variables: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!5}
!423 = !{!424, !425}
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !420, file: !352, line: 865, type: !5)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !420, file: !352, line: 865, type: !5)
!426 = !DISubprogram(name: "profiler_dealloc", scope: !352, file: !352, line: 745, type: !427, isLocal: true, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.ProfilerObject*)* @profiler_dealloc, variables: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !389}
!429 = !{!430, !431, !433}
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !426, file: !352, line: 745, type: !389)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !432, file: !352, line: 751, type: !5)
!432 = distinct !DILexicalBlock(scope: !426, file: !352, line: 751, column: 8)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !434, file: !352, line: 751, type: !5)
!434 = distinct !DILexicalBlock(scope: !435, file: !352, line: 751, column: 109)
!435 = distinct !DILexicalBlock(scope: !432, file: !352, line: 751, column: 75)
!436 = !DISubprogram(name: "flush_unmatched", scope: !352, file: !352, line: 697, type: !427, isLocal: true, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.ProfilerObject*)* @flush_unmatched, variables: !437)
!437 = !{!438, !439, !441}
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !436, file: !352, line: 697, type: !389)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pContext", scope: !440, file: !352, line: 700, type: !396)
!440 = distinct !DILexicalBlock(scope: !436, file: !352, line: 699, column: 42)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "profEntry", scope: !440, file: !352, line: 701, type: !369)
!442 = !DISubprogram(name: "Stop", scope: !352, file: !352, line: 336, type: !443, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.ProfilerObject*, %struct._ProfilerContext*, %struct._ProfilerEntry*)* @Stop, variables: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !389, !396, !369}
!445 = !{!446, !447, !448, !449, !450, !451, !454}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !442, file: !352, line: 336, type: !389)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !442, file: !352, line: 336, type: !396)
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 3, scope: !442, file: !352, line: 336, type: !369)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tt", scope: !442, file: !352, line: 338, type: !343)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !442, file: !352, line: 339, type: !343)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "caller", scope: !452, file: !352, line: 351, type: !369)
!452 = distinct !DILexicalBlock(scope: !453, file: !352, line: 349, column: 50)
!453 = distinct !DILexicalBlock(scope: !442, file: !352, line: 349, column: 9)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subentry", scope: !452, file: !352, line: 352, type: !350)
!455 = !DISubprogram(name: "CallExternalTimer", scope: !352, file: !352, line: 124, type: !456, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.ProfilerObject*)* @CallExternalTimer, variables: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{!343, !389}
!458 = !{!459, !460, !461, !462, !465}
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !455, file: !352, line: 124, type: !389)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !455, file: !352, line: 126, type: !343)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !455, file: !352, line: 127, type: !5)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !463, file: !352, line: 141, type: !388)
!463 = distinct !DILexicalBlock(scope: !464, file: !352, line: 137, column: 10)
!464 = distinct !DILexicalBlock(scope: !455, file: !352, line: 132, column: 9)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !466, file: !352, line: 145, type: !5)
!466 = distinct !DILexicalBlock(scope: !455, file: !352, line: 145, column: 8)
!467 = !DISubprogram(name: "hpTimer", scope: !352, file: !352, line: 43, type: !468, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @hpTimer, variables: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!343}
!470 = !{!471, !479}
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tv", scope: !467, file: !352, line: 45, type: !472)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !473, line: 30, size: 128, align: 64, elements: !474)
!473 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!474 = !{!475, !477}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !472, file: !473, line: 32, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !16, line: 148, baseType: !17)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !472, file: !473, line: 33, baseType: !478, size: 64, align: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !16, line: 150, baseType: !17)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !467, file: !352, line: 46, type: !343)
!480 = !DISubprogram(name: "getSubEntry", scope: !352, file: !352, line: 257, type: !481, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, function: %struct._ProfilerSubEntry* (%struct.ProfilerObject*, %struct._ProfilerEntry*, %struct._ProfilerEntry*)* @getSubEntry, variables: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!350, !389, !369, !369}
!483 = !{!484, !485, !486}
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !480, file: !352, line: 257, type: !389)
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "caller", arg: 2, scope: !480, file: !352, line: 257, type: !369)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 3, scope: !480, file: !352, line: 257, type: !369)
!487 = !DISubprogram(name: "clearEntries", scope: !352, file: !352, line: 298, type: !427, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.ProfilerObject*)* @clearEntries, variables: !488)
!488 = !{!489, !490}
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !487, file: !352, line: 298, type: !389)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !491, file: !352, line: 308, type: !396)
!491 = distinct !DILexicalBlock(scope: !487, file: !352, line: 307, column: 43)
!492 = !DISubprogram(name: "freeEntry", scope: !352, file: !352, line: 289, type: !493, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rotating_node_s*, i8*)* @freeEntry, variables: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{!44, !362, !4}
!495 = !{!496, !497, !498, !499}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "header", arg: 1, scope: !492, file: !352, line: 289, type: !362)
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !492, file: !352, line: 289, type: !4)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !492, file: !352, line: 291, type: !369)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !500, file: !352, line: 293, type: !5)
!500 = distinct !DILexicalBlock(scope: !492, file: !352, line: 293, column: 8)
!501 = !DISubprogram(name: "freeSubEntry", scope: !352, file: !352, line: 282, type: !493, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rotating_node_s*, i8*)* @freeSubEntry, variables: !502)
!502 = !{!503, !504, !505}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "header", arg: 1, scope: !501, file: !352, line: 282, type: !362)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !501, file: !352, line: 282, type: !4)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subentry", scope: !501, file: !352, line: 284, type: !350)
!506 = !DISubprogram(name: "profiler_getstats", scope: !352, file: !352, line: 626, type: !507, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.ProfilerObject*, %struct._object*)* @profiler_getstats, variables: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{!5, !389, !5}
!509 = !{!510, !511, !512, !513}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !506, file: !352, line: 626, type: !389)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !506, file: !352, line: 626, type: !5)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "collect", scope: !506, file: !352, line: 628, type: !382)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !514, file: !352, line: 642, type: !5)
!514 = distinct !DILexicalBlock(scope: !515, file: !352, line: 642, column: 12)
!515 = distinct !DILexicalBlock(scope: !516, file: !352, line: 641, column: 15)
!516 = distinct !DILexicalBlock(scope: !506, file: !352, line: 640, column: 9)
!517 = !DISubprogram(name: "pending_exception", scope: !352, file: !352, line: 483, type: !518, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ProfilerObject*)* @pending_exception, variables: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!44, !389}
!520 = !{!521}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !517, file: !352, line: 483, type: !389)
!522 = !DISubprogram(name: "hpTimerUnit", scope: !352, file: !352, line: 58, type: !523, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @hpTimerUnit, variables: !2)
!523 = !DISubroutineType(types: !524)
!524 = !{!388}
!525 = !DISubprogram(name: "statsForEntry", scope: !352, file: !352, line: 561, type: !493, isLocal: true, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rotating_node_s*, i8*)* @statsForEntry, variables: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !539, !541}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !525, file: !352, line: 561, type: !362)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !525, file: !352, line: 561, type: !4)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !525, file: !352, line: 563, type: !369)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "collect", scope: !525, file: !352, line: 564, type: !381)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !525, file: !352, line: 565, type: !5)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !525, file: !352, line: 566, type: !44)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !534, file: !352, line: 576, type: !5)
!534 = distinct !DILexicalBlock(scope: !535, file: !352, line: 576, column: 16)
!535 = distinct !DILexicalBlock(scope: !536, file: !352, line: 575, column: 64)
!536 = distinct !DILexicalBlock(scope: !537, file: !352, line: 574, column: 13)
!537 = distinct !DILexicalBlock(scope: !538, file: !352, line: 570, column: 58)
!538 = distinct !DILexicalBlock(scope: !525, file: !352, line: 570, column: 9)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !540, file: !352, line: 593, type: !5)
!540 = distinct !DILexicalBlock(scope: !525, file: !352, line: 593, column: 8)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !542, file: !352, line: 597, type: !5)
!542 = distinct !DILexicalBlock(scope: !525, file: !352, line: 597, column: 8)
!543 = !DISubprogram(name: "statsForSubEntry", scope: !352, file: !352, line: 540, type: !493, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rotating_node_s*, i8*)* @statsForSubEntry, variables: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552}
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !543, file: !352, line: 540, type: !362)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !543, file: !352, line: 540, type: !4)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sentry", scope: !543, file: !352, line: 542, type: !350)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "collect", scope: !543, file: !352, line: 543, type: !381)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !543, file: !352, line: 544, type: !369)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !543, file: !352, line: 545, type: !44)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sinfo", scope: !543, file: !352, line: 546, type: !5)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !553, file: !352, line: 557, type: !5)
!553 = distinct !DILexicalBlock(scope: !543, file: !352, line: 557, column: 8)
!554 = !DISubprogram(name: "profiler_enable", scope: !352, file: !352, line: 680, type: !555, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.ProfilerObject*, %struct._object*, %struct._object*)* @profiler_enable, variables: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{!5, !389, !5, !5}
!557 = !{!558, !559, !560, !561, !562}
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !554, file: !352, line: 680, type: !389)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !554, file: !352, line: 680, type: !5)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !554, file: !352, line: 680, type: !5)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subcalls", scope: !554, file: !352, line: 682, type: !44)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !554, file: !352, line: 683, type: !44)
!563 = !DISubprogram(name: "setSubcalls", scope: !352, file: !352, line: 649, type: !564, isLocal: true, isDefinition: true, scopeLine: 650, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ProfilerObject*, i32)* @setSubcalls, variables: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!44, !389, !44}
!566 = !{!567, !568}
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !563, file: !352, line: 649, type: !389)
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nvalue", arg: 2, scope: !563, file: !352, line: 649, type: !44)
!569 = !DISubprogram(name: "setBuiltins", scope: !352, file: !352, line: 659, type: !564, isLocal: true, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ProfilerObject*, i32)* @setBuiltins, variables: !570)
!570 = !{!571, !572}
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !569, file: !352, line: 659, type: !389)
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nvalue", arg: 2, scope: !569, file: !352, line: 659, type: !44)
!573 = !DISubprogram(name: "profiler_callback", scope: !352, file: !352, line: 432, type: !574, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* @profiler_callback, variables: !636)
!574 = !DISubroutineType(types: !575)
!575 = !{!44, !5, !576, !44, !5}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFrameObject", file: !578, line: 53, baseType: !579)
!578 = !DIFile(filename: "./Include/frameobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !578, line: 17, size: 3072, align: 64, elements: !580)
!580 = !{!581, !582, !584, !611, !612, !613, !614, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !634}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !579, file: !578, line: 18, baseType: !23, size: 192, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !579, file: !578, line: 19, baseType: !583, size: 64, align: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !579, file: !578, line: 20, baseType: !585, size: 64, align: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !587, line: 33, baseType: !588)
!587 = !DIFile(filename: "./Include/code.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!588 = !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 11, size: 1152, align: 64, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !605, !606, !607, !608, !609, !610}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !588, file: !587, line: 12, baseType: !6, size: 128, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !588, file: !587, line: 13, baseType: !44, size: 32, align: 32, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !588, file: !587, line: 14, baseType: !44, size: 32, align: 32, offset: 160)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !588, file: !587, line: 15, baseType: !44, size: 32, align: 32, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !588, file: !587, line: 16, baseType: !44, size: 32, align: 32, offset: 224)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !588, file: !587, line: 17, baseType: !44, size: 32, align: 32, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !588, file: !587, line: 18, baseType: !5, size: 64, align: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !588, file: !587, line: 19, baseType: !5, size: 64, align: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !588, file: !587, line: 20, baseType: !5, size: 64, align: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !588, file: !587, line: 21, baseType: !5, size: 64, align: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !588, file: !587, line: 22, baseType: !5, size: 64, align: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !588, file: !587, line: 23, baseType: !5, size: 64, align: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !588, file: !587, line: 25, baseType: !603, size: 64, align: 64, offset: 704)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !588, file: !587, line: 26, baseType: !5, size: 64, align: 64, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !588, file: !587, line: 27, baseType: !5, size: 64, align: 64, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !588, file: !587, line: 28, baseType: !44, size: 32, align: 32, offset: 896)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !588, file: !587, line: 29, baseType: !5, size: 64, align: 64, offset: 960)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !588, file: !587, line: 31, baseType: !4, size: 64, align: 64, offset: 1024)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !588, file: !587, line: 32, baseType: !5, size: 64, align: 64, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !579, file: !578, line: 21, baseType: !5, size: 64, align: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !579, file: !578, line: 22, baseType: !5, size: 64, align: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !579, file: !578, line: 23, baseType: !5, size: 64, align: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "f_valuestack", scope: !579, file: !578, line: 24, baseType: !615, size: 64, align: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "f_stacktop", scope: !579, file: !578, line: 28, baseType: !615, size: 64, align: 64, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !579, file: !578, line: 29, baseType: !5, size: 64, align: 64, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_type", scope: !579, file: !578, line: 38, baseType: !5, size: 64, align: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_value", scope: !579, file: !578, line: 38, baseType: !5, size: 64, align: 64, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_traceback", scope: !579, file: !578, line: 38, baseType: !5, size: 64, align: 64, offset: 832)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "f_gen", scope: !579, file: !578, line: 40, baseType: !5, size: 64, align: 64, offset: 896)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_lasti", scope: !579, file: !578, line: 42, baseType: !44, size: 32, align: 32, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !579, file: !578, line: 48, baseType: !44, size: 32, align: 32, offset: 992)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_iblock", scope: !579, file: !578, line: 49, baseType: !44, size: 32, align: 32, offset: 1024)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_executing", scope: !579, file: !578, line: 50, baseType: !31, size: 8, align: 8, offset: 1056)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_blockstack", scope: !579, file: !578, line: 51, baseType: !627, size: 1920, align: 32, offset: 1088)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 1920, align: 32, elements: !100)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTryBlock", file: !578, line: 15, baseType: !629)
!629 = !DICompositeType(tag: DW_TAG_structure_type, file: !578, line: 11, size: 96, align: 32, elements: !630)
!630 = !{!631, !632, !633}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "b_type", scope: !629, file: !578, line: 12, baseType: !44, size: 32, align: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "b_handler", scope: !629, file: !578, line: 13, baseType: !44, size: 32, align: 32, offset: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "b_level", scope: !629, file: !578, line: 14, baseType: !44, size: 32, align: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "f_localsplus", scope: !579, file: !578, line: 52, baseType: !635, size: 64, align: 64, offset: 3008)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!636 = !{!637, !638, !639, !640}
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !573, file: !352, line: 432, type: !5)
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "frame", arg: 2, scope: !573, file: !352, line: 432, type: !576)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "what", arg: 3, scope: !573, file: !352, line: 432, type: !44)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 4, scope: !573, file: !352, line: 433, type: !5)
!641 = !DISubprogram(name: "ptrace_enter_call", scope: !352, file: !352, line: 365, type: !642, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i8*, %struct._object*)* @ptrace_enter_call, variables: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !5, !4, !5}
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !641, file: !352, line: 365, type: !5)
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !641, file: !352, line: 365, type: !4)
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "userObj", arg: 3, scope: !641, file: !352, line: 365, type: !5)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pObj", scope: !641, file: !352, line: 369, type: !389)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "profEntry", scope: !641, file: !352, line: 370, type: !369)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pContext", scope: !641, file: !352, line: 371, type: !396)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last_type", scope: !641, file: !352, line: 379, type: !5)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last_value", scope: !641, file: !352, line: 379, type: !5)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last_tb", scope: !641, file: !352, line: 379, type: !5)
!654 = !DISubprogram(name: "getEntry", scope: !352, file: !352, line: 251, type: !655, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, function: %struct._ProfilerEntry* (%struct.ProfilerObject*, i8*)* @getEntry, variables: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{!369, !389, !4}
!657 = !{!658, !659}
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !654, file: !352, line: 251, type: !389)
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !654, file: !352, line: 251, type: !4)
!660 = !DISubprogram(name: "newProfilerEntry", scope: !352, file: !352, line: 223, type: !661, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, function: %struct._ProfilerEntry* (%struct.ProfilerObject*, i8*, %struct._object*)* @newProfilerEntry, variables: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!369, !389, !4, !5}
!663 = !{!664, !665, !666, !667}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !660, file: !352, line: 223, type: !389)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !660, file: !352, line: 223, type: !4)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "userObj", arg: 3, scope: !660, file: !352, line: 223, type: !5)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !660, file: !352, line: 225, type: !369)
!668 = !DISubprogram(name: "normalizeUserObj", scope: !352, file: !352, line: 160, type: !116, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @normalizeUserObj, variables: !669)
!669 = !{!670, !671, !672, !675, !676, !681, !683, !685, !687, !688, !691, !693, !695, !698}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !668, file: !352, line: 160, type: !5)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fn", scope: !668, file: !352, line: 162, type: !409)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !673, file: !352, line: 174, type: !5)
!673 = distinct !DILexicalBlock(scope: !674, file: !352, line: 172, column: 35)
!674 = distinct !DILexicalBlock(scope: !668, file: !352, line: 172, column: 9)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modname", scope: !673, file: !352, line: 175, type: !5)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !677, file: !352, line: 189, type: !5)
!677 = distinct !DILexicalBlock(scope: !678, file: !352, line: 188, column: 77)
!678 = distinct !DILexicalBlock(scope: !679, file: !352, line: 188, column: 17)
!679 = distinct !DILexicalBlock(scope: !680, file: !352, line: 187, column: 36)
!680 = distinct !DILexicalBlock(scope: !673, file: !352, line: 187, column: 13)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !682, file: !352, line: 192, type: !5)
!682 = distinct !DILexicalBlock(scope: !677, file: !352, line: 192, column: 20)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !684, file: !352, line: 195, type: !5)
!684 = distinct !DILexicalBlock(scope: !679, file: !352, line: 195, column: 16)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !686, file: !352, line: 203, type: !5)
!686 = distinct !DILexicalBlock(scope: !674, file: !352, line: 199, column: 10)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !686, file: !352, line: 204, type: !5)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mo", scope: !689, file: !352, line: 206, type: !5)
!689 = distinct !DILexicalBlock(scope: !690, file: !352, line: 205, column: 33)
!690 = distinct !DILexicalBlock(scope: !686, file: !352, line: 205, column: 13)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !692, file: !352, line: 207, type: !5)
!692 = distinct !DILexicalBlock(scope: !689, file: !352, line: 207, column: 16)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !694, file: !352, line: 208, type: !5)
!694 = distinct !DILexicalBlock(scope: !689, file: !352, line: 208, column: 16)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !696, file: !352, line: 210, type: !5)
!696 = distinct !DILexicalBlock(scope: !697, file: !352, line: 209, column: 35)
!697 = distinct !DILexicalBlock(scope: !689, file: !352, line: 209, column: 17)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !699, file: !352, line: 211, type: !5)
!699 = distinct !DILexicalBlock(scope: !696, file: !352, line: 211, column: 20)
!700 = !DISubprogram(name: "initContext", scope: !352, file: !352, line: 316, type: !443, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.ProfilerObject*, %struct._ProfilerContext*, %struct._ProfilerEntry*)* @initContext, variables: !701)
!701 = !{!702, !703, !704, !705, !708}
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !700, file: !352, line: 316, type: !389)
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !700, file: !352, line: 316, type: !396)
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 3, scope: !700, file: !352, line: 316, type: !369)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "caller", scope: !706, file: !352, line: 325, type: !369)
!706 = distinct !DILexicalBlock(scope: !707, file: !352, line: 323, column: 50)
!707 = distinct !DILexicalBlock(scope: !700, file: !352, line: 323, column: 9)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subentry", scope: !706, file: !352, line: 326, type: !350)
!709 = !DISubprogram(name: "newSubEntry", scope: !352, file: !352, line: 264, type: !481, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, function: %struct._ProfilerSubEntry* (%struct.ProfilerObject*, %struct._ProfilerEntry*, %struct._ProfilerEntry*)* @newSubEntry, variables: !710)
!710 = !{!711, !712, !713, !714}
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !709, file: !352, line: 264, type: !389)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "caller", arg: 2, scope: !709, file: !352, line: 264, type: !369)
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 3, scope: !709, file: !352, line: 264, type: !369)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !709, file: !352, line: 266, type: !350)
!715 = !DISubprogram(name: "ptrace_leave_call", scope: !352, file: !352, line: 409, type: !716, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i8*)* @ptrace_leave_call, variables: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !5, !4}
!718 = !{!719, !720, !721, !722, !723}
!719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !715, file: !352, line: 409, type: !5)
!720 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !715, file: !352, line: 409, type: !4)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pObj", scope: !715, file: !352, line: 412, type: !389)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "profEntry", scope: !715, file: !352, line: 413, type: !369)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pContext", scope: !715, file: !352, line: 414, type: !396)
!724 = !DISubprogram(name: "profiler_disable", scope: !352, file: !352, line: 719, type: !507, isLocal: true, isDefinition: true, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.ProfilerObject*, %struct._object*)* @profiler_disable, variables: !725)
!725 = !{!726, !727}
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !724, file: !352, line: 719, type: !389)
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !724, file: !352, line: 719, type: !5)
!728 = !DISubprogram(name: "profiler_clear", scope: !352, file: !352, line: 737, type: !507, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.ProfilerObject*, %struct._object*)* @profiler_clear, variables: !729)
!729 = !{!730, !731}
!730 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !728, file: !352, line: 737, type: !389)
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !728, file: !352, line: 737, type: !5)
!732 = !DISubprogram(name: "profiler_init", scope: !352, file: !352, line: 756, type: !733, isLocal: true, isDefinition: true, scopeLine: 757, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ProfilerObject*, %struct._object*, %struct._object*)* @profiler_init, variables: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!44, !389, !5, !5}
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !746, !748}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pObj", arg: 1, scope: !732, file: !352, line: 756, type: !389)
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !732, file: !352, line: 756, type: !5)
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !732, file: !352, line: 756, type: !5)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !732, file: !352, line: 758, type: !5)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !732, file: !352, line: 759, type: !5)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeunit", scope: !732, file: !352, line: 760, type: !388)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subcalls", scope: !732, file: !352, line: 761, type: !44)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !732, file: !352, line: 762, type: !44)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !745, file: !352, line: 775, type: !5)
!745 = distinct !DILexicalBlock(scope: !732, file: !352, line: 775, column: 8)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !747, file: !352, line: 776, type: !5)
!747 = distinct !DILexicalBlock(scope: !732, file: !352, line: 776, column: 8)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !749, file: !352, line: 776, type: !5)
!749 = distinct !DILexicalBlock(scope: !750, file: !352, line: 776, column: 93)
!750 = distinct !DILexicalBlock(scope: !747, file: !352, line: 776, column: 59)
!751 = !{!752, !753, !754, !756, !757, !778, !780, !781, !785, !789, !793, !797, !801, !805, !809, !811, !825, !830, !831}
!752 = !DIGlobalVariable(name: "empty_tuple", scope: !0, file: !352, line: 122, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @empty_tuple)
!753 = !DIGlobalVariable(name: "initialized", scope: !0, file: !352, line: 529, type: !44, isLocal: true, isDefinition: true, variable: i32* @initialized)
!754 = !DIGlobalVariable(name: "StatsEntryType", scope: !0, file: !352, line: 530, type: !755, isLocal: true, isDefinition: true, variable: %struct._typeobject* @StatsEntryType)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!756 = !DIGlobalVariable(name: "StatsSubEntryType", scope: !0, file: !352, line: 531, type: !755, isLocal: true, isDefinition: true, variable: %struct._typeobject* @StatsSubEntryType)
!757 = !DIGlobalVariable(name: "_lsprofmodule", scope: !0, file: !352, line: 850, type: !758, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @_lsprofmodule)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !759, line: 47, size: 832, align: 64, elements: !760)
!759 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!760 = !{!761, !770, !771, !772, !773, !774, !775, !776, !777}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !758, file: !759, line: 48, baseType: !762, size: 320, align: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !759, line: 38, baseType: !763)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !759, line: 33, size: 320, align: 64, elements: !764)
!764 = !{!765, !766, !768, !769}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !763, file: !759, line: 34, baseType: !6, size: 128, align: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !763, file: !759, line: 35, baseType: !767, size: 64, align: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !763, file: !759, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !763, file: !759, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !758, file: !759, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !758, file: !759, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !758, file: !759, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !758, file: !759, line: 52, baseType: !415, size: 64, align: 64, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !758, file: !759, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !758, file: !759, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !758, file: !759, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !758, file: !759, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!778 = !DIGlobalVariable(name: "moduleMethods", scope: !0, file: !352, line: 845, type: !779, isLocal: true, isDefinition: true, variable: [1 x %struct.PyMethodDef]* @moduleMethods)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 256, align: 64, elements: !82)
!780 = !DIGlobalVariable(name: "PyProfiler_Type", scope: !0, file: !352, line: 803, type: !755, isLocal: true, isDefinition: true, variable: %struct._typeobject* @PyProfiler_Type)
!781 = !DIGlobalVariable(name: "profiler_doc", scope: !0, file: !352, line: 793, type: !782, isLocal: true, isDefinition: true, variable: [359 x i8]* @profiler_doc)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2872, align: 8, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 359)
!785 = !DIGlobalVariable(name: "profiler_methods", scope: !0, file: !352, line: 781, type: !786, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @profiler_methods)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 1280, align: 64, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 5)
!789 = !DIGlobalVariable(name: "getstats_doc", scope: !0, file: !352, line: 601, type: !790, isLocal: true, isDefinition: true, variable: [773 x i8]* @getstats_doc)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 6184, align: 8, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 773)
!793 = !DIGlobalVariable(name: "kwlist", scope: !554, file: !352, line: 684, type: !794, isLocal: true, isDefinition: true, variable: [3 x i8*]* @profiler_enable.kwlist)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, align: 64, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 3)
!797 = !DIGlobalVariable(name: "enable_doc", scope: !0, file: !352, line: 669, type: !798, isLocal: true, isDefinition: true, variable: [285 x i8]* @enable_doc)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2280, align: 8, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 285)
!801 = !DIGlobalVariable(name: "disable_doc", scope: !0, file: !352, line: 712, type: !802, isLocal: true, isDefinition: true, variable: [51 x i8]* @disable_doc)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 408, align: 8, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 51)
!805 = !DIGlobalVariable(name: "clear_doc", scope: !0, file: !352, line: 730, type: !806, isLocal: true, isDefinition: true, variable: [60 x i8]* @clear_doc)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 480, align: 8, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 60)
!809 = !DIGlobalVariable(name: "kwlist", scope: !732, file: !352, line: 763, type: !810, isLocal: true, isDefinition: true, variable: [5 x i8*]* @profiler_init.kwlist)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 320, align: 64, elements: !787)
!811 = !DIGlobalVariable(name: "profiler_entry_desc", scope: !0, file: !352, line: 515, type: !812, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @profiler_entry_desc)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !813, line: 20, baseType: !814)
!813 = !DIFile(filename: "./Include/structseq.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !813, line: 15, size: 256, align: 64, elements: !815)
!815 = !{!816, !817, !818, !824}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !814, file: !813, line: 16, baseType: !52, size: 64, align: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !814, file: !813, line: 17, baseType: !52, size: 64, align: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !814, file: !813, line: 18, baseType: !819, size: 64, align: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64, align: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !813, line: 10, size: 128, align: 64, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !820, file: !813, line: 11, baseType: !52, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !820, file: !813, line: 12, baseType: !52, size: 64, align: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !814, file: !813, line: 19, baseType: !44, size: 32, align: 32, offset: 192)
!825 = !DIGlobalVariable(name: "profiler_entry_fields", scope: !0, file: !352, line: 496, type: !826, isLocal: true, isDefinition: true, variable: [7 x %struct.PyStructSequence_Field]* @profiler_entry_fields)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 896, align: 64, elements: !828)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !813, line: 13, baseType: !820)
!828 = !{!829}
!829 = !DISubrange(count: 7)
!830 = !DIGlobalVariable(name: "profiler_subentry_desc", scope: !0, file: !352, line: 522, type: !812, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @profiler_subentry_desc)
!831 = !DIGlobalVariable(name: "profiler_subentry_fields", scope: !0, file: !352, line: 506, type: !832, isLocal: true, isDefinition: true, variable: [6 x %struct.PyStructSequence_Field]* @profiler_subentry_fields)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 768, align: 64, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 6)
!835 = !{i32 2, !"Dwarf Version", i32 4}
!836 = !{i32 2, !"Debug Info Version", i32 3}
!837 = !{i32 1, !"PIC Level", i32 2}
!838 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!839 = !DILocation(line: 865, column: 5, scope: !420)
!840 = !DIExpression()
!841 = !DILocation(line: 865, column: 15, scope: !420)
!842 = !DILocation(line: 865, column: 24, scope: !420)
!843 = !DILocation(line: 866, column: 14, scope: !420)
!844 = !DILocation(line: 866, column: 12, scope: !420)
!845 = !{!846, !846, i64 0}
!846 = !{!"any pointer", !847, i64 0}
!847 = !{!"omnipotent char", !848, i64 0}
!848 = !{!"Simple C/C++ TBAA"}
!849 = !DILocation(line: 867, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !420, file: !352, line: 867, column: 9)
!851 = !DILocation(line: 867, column: 16, scope: !850)
!852 = !DILocation(line: 867, column: 9, scope: !420)
!853 = !DILocation(line: 868, column: 9, scope: !850)
!854 = !DILocation(line: 869, column: 26, scope: !420)
!855 = !DILocation(line: 869, column: 9, scope: !420)
!856 = !DILocation(line: 869, column: 7, scope: !420)
!857 = !DILocation(line: 870, column: 9, scope: !858)
!858 = distinct !DILexicalBlock(scope: !420, file: !352, line: 870, column: 9)
!859 = !DILocation(line: 870, column: 40, scope: !858)
!860 = !DILocation(line: 870, column: 9, scope: !420)
!861 = !DILocation(line: 871, column: 9, scope: !858)
!862 = !DILocation(line: 872, column: 26, scope: !420)
!863 = !DILocation(line: 872, column: 5, scope: !420)
!864 = !DILocation(line: 874, column: 10, scope: !865)
!865 = distinct !DILexicalBlock(scope: !420, file: !352, line: 874, column: 9)
!866 = !{!867, !867, i64 0}
!867 = !{!"int", !847, i64 0}
!868 = !DILocation(line: 874, column: 9, scope: !420)
!869 = !DILocation(line: 875, column: 13, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !352, line: 875, column: 13)
!871 = distinct !DILexicalBlock(scope: !865, file: !352, line: 874, column: 23)
!872 = !DILocation(line: 876, column: 62, scope: !870)
!873 = !DILocation(line: 875, column: 13, scope: !871)
!874 = !DILocation(line: 877, column: 13, scope: !870)
!875 = !DILocation(line: 878, column: 13, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !352, line: 878, column: 13)
!877 = !DILocation(line: 879, column: 65, scope: !876)
!878 = !DILocation(line: 878, column: 13, scope: !871)
!879 = !DILocation(line: 880, column: 13, scope: !876)
!880 = !DILocation(line: 881, column: 5, scope: !871)
!881 = !DILocation(line: 882, column: 61, scope: !420)
!882 = !{!883, !884, i64 0}
!883 = !{!"_object", !884, i64 0, !846, i64 8}
!884 = !{!"long", !847, i64 0}
!885 = !DILocation(line: 883, column: 64, scope: !420)
!886 = !DILocation(line: 884, column: 24, scope: !420)
!887 = !DILocation(line: 884, column: 5, scope: !420)
!888 = !DILocation(line: 886, column: 24, scope: !420)
!889 = !DILocation(line: 886, column: 5, scope: !420)
!890 = !DILocation(line: 888, column: 19, scope: !420)
!891 = !DILocation(line: 888, column: 17, scope: !420)
!892 = !DILocation(line: 889, column: 17, scope: !420)
!893 = !DILocation(line: 890, column: 12, scope: !420)
!894 = !DILocation(line: 890, column: 5, scope: !420)
!895 = !DILocation(line: 891, column: 1, scope: !420)
!896 = !DILocation(line: 745, column: 34, scope: !426)
!897 = !DILocation(line: 747, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !426, file: !352, line: 747, column: 9)
!899 = !DILocation(line: 747, column: 13, scope: !898)
!900 = !{!901, !867, i64 40}
!901 = !{!"", !883, i64 0, !846, i64 16, !846, i64 24, !846, i64 32, !867, i64 40, !846, i64 48, !902, i64 56}
!902 = !{!"double", !847, i64 0}
!903 = !DILocation(line: 747, column: 19, scope: !898)
!904 = !DILocation(line: 747, column: 9, scope: !426)
!905 = !DILocation(line: 748, column: 9, scope: !898)
!906 = !DILocation(line: 749, column: 21, scope: !426)
!907 = !DILocation(line: 749, column: 5, scope: !426)
!908 = !DILocation(line: 750, column: 18, scope: !426)
!909 = !DILocation(line: 750, column: 5, scope: !426)
!910 = !DILocation(line: 751, column: 5, scope: !426)
!911 = !DILocation(line: 751, column: 10, scope: !912)
!912 = !DILexicalBlockFile(scope: !432, file: !352, discriminator: 1)
!913 = !DILocation(line: 751, column: 20, scope: !432)
!914 = !DILocation(line: 751, column: 51, scope: !432)
!915 = !DILocation(line: 751, column: 55, scope: !432)
!916 = !{!901, !846, i64 48}
!917 = !DILocation(line: 751, column: 75, scope: !435)
!918 = !DILocation(line: 751, column: 91, scope: !435)
!919 = !DILocation(line: 751, column: 75, scope: !432)
!920 = !DILocation(line: 751, column: 106, scope: !921)
!921 = !DILexicalBlockFile(scope: !435, file: !352, discriminator: 2)
!922 = !DILocation(line: 751, column: 111, scope: !923)
!923 = !DILexicalBlockFile(scope: !434, file: !352, discriminator: 4)
!924 = !DILocation(line: 751, column: 121, scope: !434)
!925 = !DILocation(line: 751, column: 151, scope: !434)
!926 = !DILocation(line: 751, column: 177, scope: !927)
!927 = distinct !DILexicalBlock(scope: !434, file: !352, line: 751, column: 174)
!928 = !DILocation(line: 751, column: 194, scope: !927)
!929 = !DILocation(line: 751, column: 174, scope: !927)
!930 = !DILocation(line: 751, column: 204, scope: !927)
!931 = !DILocation(line: 751, column: 174, scope: !434)
!932 = !DILocation(line: 751, column: 174, scope: !933)
!933 = !DILexicalBlockFile(scope: !434, file: !352, discriminator: 5)
!934 = !DILocation(line: 751, column: 235, scope: !935)
!935 = !DILexicalBlockFile(scope: !927, file: !352, discriminator: 6)
!936 = !DILocation(line: 751, column: 253, scope: !927)
!937 = !{!883, !846, i64 8}
!938 = !DILocation(line: 751, column: 263, scope: !927)
!939 = !{!940, !846, i64 48}
!940 = !{!"_typeobject", !941, i64 0, !846, i64 24, !884, i64 32, !884, i64 40, !846, i64 48, !846, i64 56, !846, i64 64, !846, i64 72, !846, i64 80, !846, i64 88, !846, i64 96, !846, i64 104, !846, i64 112, !846, i64 120, !846, i64 128, !846, i64 136, !846, i64 144, !846, i64 152, !846, i64 160, !884, i64 168, !846, i64 176, !846, i64 184, !846, i64 192, !846, i64 200, !884, i64 208, !846, i64 216, !846, i64 224, !846, i64 232, !846, i64 240, !846, i64 248, !846, i64 256, !846, i64 264, !846, i64 272, !846, i64 280, !884, i64 288, !846, i64 296, !846, i64 304, !846, i64 312, !846, i64 320, !846, i64 328, !846, i64 336, !846, i64 344, !846, i64 352, !846, i64 360, !846, i64 368, !846, i64 376, !867, i64 384, !846, i64 392}
!941 = !{!"", !883, i64 0, !884, i64 16}
!942 = !DILocation(line: 751, column: 288, scope: !927)
!943 = !DILocation(line: 751, column: 219, scope: !927)
!944 = !DILocation(line: 751, column: 307, scope: !945)
!945 = !DILexicalBlockFile(scope: !435, file: !352, discriminator: 7)
!946 = !DILocation(line: 751, column: 307, scope: !434)
!947 = !DILocation(line: 751, column: 307, scope: !948)
!948 = !DILexicalBlockFile(scope: !434, file: !352, discriminator: 8)
!949 = !DILocation(line: 751, column: 307, scope: !950)
!950 = !DILexicalBlockFile(scope: !434, file: !352, discriminator: 9)
!951 = !DILocation(line: 751, column: 320, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !352, discriminator: 10)
!953 = !DILexicalBlockFile(scope: !426, file: !352, discriminator: 3)
!954 = !DILocation(line: 751, column: 320, scope: !432)
!955 = !DILocation(line: 752, column: 19, scope: !426)
!956 = !DILocation(line: 752, column: 7, scope: !426)
!957 = !DILocation(line: 752, column: 25, scope: !426)
!958 = !DILocation(line: 752, column: 35, scope: !426)
!959 = !{!940, !846, i64 320}
!960 = !DILocation(line: 752, column: 43, scope: !426)
!961 = !DILocation(line: 752, column: 5, scope: !426)
!962 = !DILocation(line: 753, column: 1, scope: !426)
!963 = !DILocation(line: 756, column: 31, scope: !732)
!964 = !DILocation(line: 756, column: 47, scope: !732)
!965 = !DILocation(line: 756, column: 63, scope: !732)
!966 = !DILocation(line: 758, column: 5, scope: !732)
!967 = !DILocation(line: 758, column: 15, scope: !732)
!968 = !DILocation(line: 759, column: 5, scope: !732)
!969 = !DILocation(line: 759, column: 15, scope: !732)
!970 = !DILocation(line: 760, column: 5, scope: !732)
!971 = !DILocation(line: 760, column: 12, scope: !732)
!972 = !{!902, !902, i64 0}
!973 = !DILocation(line: 761, column: 5, scope: !732)
!974 = !DILocation(line: 761, column: 9, scope: !732)
!975 = !DILocation(line: 762, column: 5, scope: !732)
!976 = !DILocation(line: 762, column: 9, scope: !732)
!977 = !DILocation(line: 766, column: 38, scope: !978)
!978 = distinct !DILexicalBlock(scope: !732, file: !352, line: 766, column: 9)
!979 = !DILocation(line: 766, column: 44, scope: !978)
!980 = !DILocation(line: 766, column: 10, scope: !978)
!981 = !DILocation(line: 766, column: 9, scope: !732)
!982 = !DILocation(line: 769, column: 9, scope: !978)
!983 = !DILocation(line: 771, column: 21, scope: !984)
!984 = distinct !DILexicalBlock(scope: !732, file: !352, line: 771, column: 9)
!985 = !DILocation(line: 771, column: 27, scope: !984)
!986 = !DILocation(line: 771, column: 9, scope: !984)
!987 = !DILocation(line: 771, column: 37, scope: !984)
!988 = !DILocation(line: 771, column: 41, scope: !984)
!989 = !DILocation(line: 771, column: 56, scope: !990)
!990 = !DILexicalBlockFile(scope: !984, file: !352, discriminator: 1)
!991 = !DILocation(line: 771, column: 62, scope: !984)
!992 = !DILocation(line: 771, column: 44, scope: !984)
!993 = !DILocation(line: 771, column: 72, scope: !984)
!994 = !DILocation(line: 771, column: 9, scope: !732)
!995 = !DILocation(line: 772, column: 9, scope: !984)
!996 = !DILocation(line: 773, column: 9, scope: !732)
!997 = !DILocation(line: 773, column: 15, scope: !732)
!998 = !DILocation(line: 773, column: 7, scope: !732)
!999 = !DILocation(line: 774, column: 27, scope: !732)
!1000 = !DILocation(line: 774, column: 5, scope: !732)
!1001 = !DILocation(line: 774, column: 11, scope: !732)
!1002 = !DILocation(line: 774, column: 25, scope: !732)
!1003 = !DILocation(line: 775, column: 5, scope: !732)
!1004 = !DILocation(line: 775, column: 10, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !745, file: !352, discriminator: 1)
!1006 = !DILocation(line: 775, column: 20, scope: !745)
!1007 = !DILocation(line: 775, column: 51, scope: !745)
!1008 = !DILocation(line: 775, column: 63, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !745, file: !352, line: 775, column: 63)
!1010 = !DILocation(line: 775, column: 79, scope: !1009)
!1011 = !DILocation(line: 775, column: 63, scope: !745)
!1012 = !DILocation(line: 775, column: 110, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1009, file: !352, discriminator: 2)
!1014 = !DILocation(line: 775, column: 129, scope: !1009)
!1015 = !DILocation(line: 775, column: 138, scope: !1009)
!1016 = !DILocation(line: 775, column: 94, scope: !1009)
!1017 = !DILocation(line: 775, column: 143, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !352, discriminator: 4)
!1019 = !DILexicalBlockFile(scope: !732, file: !352, discriminator: 3)
!1020 = !DILocation(line: 775, column: 143, scope: !745)
!1021 = !DILocation(line: 775, column: 143, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !745, file: !352, discriminator: 5)
!1023 = !DILocation(line: 776, column: 5, scope: !732)
!1024 = !DILocation(line: 776, column: 10, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !747, file: !352, discriminator: 1)
!1026 = !DILocation(line: 776, column: 20, scope: !747)
!1027 = !DILocation(line: 776, column: 51, scope: !747)
!1028 = !DILocation(line: 776, column: 59, scope: !750)
!1029 = !DILocation(line: 776, column: 75, scope: !750)
!1030 = !DILocation(line: 776, column: 59, scope: !747)
!1031 = !DILocation(line: 776, column: 90, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !750, file: !352, discriminator: 2)
!1033 = !DILocation(line: 776, column: 95, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !749, file: !352, discriminator: 4)
!1035 = !DILocation(line: 776, column: 105, scope: !749)
!1036 = !DILocation(line: 776, column: 135, scope: !749)
!1037 = !DILocation(line: 776, column: 161, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !749, file: !352, line: 776, column: 158)
!1039 = !DILocation(line: 776, column: 178, scope: !1038)
!1040 = !DILocation(line: 776, column: 158, scope: !1038)
!1041 = !DILocation(line: 776, column: 188, scope: !1038)
!1042 = !DILocation(line: 776, column: 158, scope: !749)
!1043 = !DILocation(line: 776, column: 158, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !749, file: !352, discriminator: 5)
!1045 = !DILocation(line: 776, column: 219, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1038, file: !352, discriminator: 6)
!1047 = !DILocation(line: 776, column: 237, scope: !1038)
!1048 = !DILocation(line: 776, column: 247, scope: !1038)
!1049 = !DILocation(line: 776, column: 272, scope: !1038)
!1050 = !DILocation(line: 776, column: 203, scope: !1038)
!1051 = !DILocation(line: 776, column: 291, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !750, file: !352, discriminator: 7)
!1053 = !DILocation(line: 776, column: 291, scope: !749)
!1054 = !DILocation(line: 776, column: 291, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !749, file: !352, discriminator: 8)
!1056 = !DILocation(line: 776, column: 291, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !749, file: !352, discriminator: 9)
!1058 = !DILocation(line: 776, column: 304, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1019, file: !352, discriminator: 10)
!1060 = !DILocation(line: 776, column: 304, scope: !747)
!1061 = !DILocation(line: 776, column: 304, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !747, file: !352, discriminator: 11)
!1063 = !DILocation(line: 777, column: 31, scope: !732)
!1064 = !DILocation(line: 777, column: 5, scope: !732)
!1065 = !DILocation(line: 777, column: 11, scope: !732)
!1066 = !DILocation(line: 777, column: 29, scope: !732)
!1067 = !{!901, !902, i64 56}
!1068 = !DILocation(line: 778, column: 5, scope: !732)
!1069 = !DILocation(line: 779, column: 1, scope: !732)
!1070 = !DILocation(line: 697, column: 33, scope: !436)
!1071 = !DILocation(line: 699, column: 5, scope: !436)
!1072 = !DILocation(line: 699, column: 12, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1074, file: !352, discriminator: 2)
!1074 = !DILexicalBlockFile(scope: !436, file: !352, discriminator: 1)
!1075 = !DILocation(line: 699, column: 18, scope: !436)
!1076 = !{!901, !846, i64 24}
!1077 = !DILocation(line: 700, column: 9, scope: !440)
!1078 = !DILocation(line: 700, column: 26, scope: !440)
!1079 = !DILocation(line: 700, column: 37, scope: !440)
!1080 = !DILocation(line: 700, column: 43, scope: !440)
!1081 = !DILocation(line: 701, column: 9, scope: !440)
!1082 = !DILocation(line: 701, column: 24, scope: !440)
!1083 = !DILocation(line: 701, column: 35, scope: !440)
!1084 = !DILocation(line: 701, column: 45, scope: !440)
!1085 = !{!1086, !846, i64 24}
!1086 = !{!"_ProfilerContext", !1087, i64 0, !1087, i64 8, !846, i64 16, !846, i64 24}
!1087 = !{!"long long", !847, i64 0}
!1088 = !DILocation(line: 702, column: 13, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !440, file: !352, line: 702, column: 13)
!1090 = !DILocation(line: 702, column: 13, scope: !440)
!1091 = !DILocation(line: 703, column: 18, scope: !1089)
!1092 = !DILocation(line: 703, column: 24, scope: !1089)
!1093 = !DILocation(line: 703, column: 34, scope: !1089)
!1094 = !DILocation(line: 703, column: 13, scope: !1089)
!1095 = !DILocation(line: 705, column: 44, scope: !1089)
!1096 = !DILocation(line: 705, column: 54, scope: !1089)
!1097 = !{!1086, !846, i64 16}
!1098 = !DILocation(line: 705, column: 13, scope: !1089)
!1099 = !DILocation(line: 705, column: 19, scope: !1089)
!1100 = !DILocation(line: 705, column: 42, scope: !1089)
!1101 = !DILocation(line: 706, column: 13, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !440, file: !352, line: 706, column: 13)
!1103 = !DILocation(line: 706, column: 13, scope: !440)
!1104 = !DILocation(line: 707, column: 24, scope: !1102)
!1105 = !DILocation(line: 707, column: 13, scope: !1102)
!1106 = !DILocation(line: 708, column: 5, scope: !436)
!1107 = !DILocation(line: 710, column: 1, scope: !436)
!1108 = !DILocation(line: 298, column: 42, scope: !487)
!1109 = !DILocation(line: 300, column: 23, scope: !487)
!1110 = !DILocation(line: 300, column: 29, scope: !487)
!1111 = !{!901, !846, i64 16}
!1112 = !DILocation(line: 300, column: 5, scope: !487)
!1113 = !DILocation(line: 301, column: 5, scope: !487)
!1114 = !DILocation(line: 301, column: 11, scope: !487)
!1115 = !DILocation(line: 301, column: 27, scope: !487)
!1116 = !DILocation(line: 303, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !487, file: !352, line: 303, column: 9)
!1118 = !DILocation(line: 303, column: 15, scope: !1117)
!1119 = !DILocation(line: 303, column: 9, scope: !487)
!1120 = !DILocation(line: 304, column: 20, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !352, line: 303, column: 39)
!1122 = !DILocation(line: 304, column: 26, scope: !1121)
!1123 = !DILocation(line: 304, column: 9, scope: !1121)
!1124 = !DILocation(line: 305, column: 9, scope: !1121)
!1125 = !DILocation(line: 305, column: 15, scope: !1121)
!1126 = !DILocation(line: 305, column: 38, scope: !1121)
!1127 = !DILocation(line: 306, column: 5, scope: !1121)
!1128 = !DILocation(line: 307, column: 5, scope: !487)
!1129 = !DILocation(line: 307, column: 12, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !352, discriminator: 2)
!1131 = !DILexicalBlockFile(scope: !487, file: !352, discriminator: 1)
!1132 = !DILocation(line: 307, column: 18, scope: !487)
!1133 = !{!901, !846, i64 32}
!1134 = !DILocation(line: 308, column: 9, scope: !491)
!1135 = !DILocation(line: 308, column: 26, scope: !491)
!1136 = !DILocation(line: 308, column: 30, scope: !491)
!1137 = !DILocation(line: 308, column: 36, scope: !491)
!1138 = !DILocation(line: 309, column: 41, scope: !491)
!1139 = !DILocation(line: 309, column: 44, scope: !491)
!1140 = !DILocation(line: 309, column: 9, scope: !491)
!1141 = !DILocation(line: 309, column: 15, scope: !491)
!1142 = !DILocation(line: 309, column: 39, scope: !491)
!1143 = !DILocation(line: 310, column: 20, scope: !491)
!1144 = !DILocation(line: 310, column: 9, scope: !491)
!1145 = !DILocation(line: 311, column: 5, scope: !487)
!1146 = !DILocation(line: 312, column: 5, scope: !487)
!1147 = !DILocation(line: 312, column: 11, scope: !487)
!1148 = !DILocation(line: 312, column: 35, scope: !487)
!1149 = !DILocation(line: 313, column: 1, scope: !487)
!1150 = !DILocation(line: 336, column: 22, scope: !442)
!1151 = !DILocation(line: 336, column: 45, scope: !442)
!1152 = !DILocation(line: 336, column: 66, scope: !442)
!1153 = !DILocation(line: 338, column: 5, scope: !442)
!1154 = !DILocation(line: 338, column: 15, scope: !442)
!1155 = !DILocation(line: 338, column: 22, scope: !442)
!1156 = !DILocation(line: 338, column: 29, scope: !442)
!1157 = !DILocation(line: 338, column: 21, scope: !442)
!1158 = !DILocation(line: 338, column: 63, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !442, file: !352, discriminator: 1)
!1160 = !DILocation(line: 338, column: 45, scope: !442)
!1161 = !DILocation(line: 338, column: 71, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !442, file: !352, discriminator: 2)
!1163 = !DILocation(line: 338, column: 84, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1165, file: !352, discriminator: 4)
!1165 = !DILexicalBlockFile(scope: !442, file: !352, discriminator: 3)
!1166 = !DILocation(line: 338, column: 90, scope: !442)
!1167 = !{!1086, !1087, i64 0}
!1168 = !DILocation(line: 338, column: 82, scope: !442)
!1169 = !{!1087, !1087, i64 0}
!1170 = !DILocation(line: 339, column: 5, scope: !442)
!1171 = !DILocation(line: 339, column: 15, scope: !442)
!1172 = !DILocation(line: 339, column: 20, scope: !442)
!1173 = !DILocation(line: 339, column: 25, scope: !442)
!1174 = !DILocation(line: 339, column: 31, scope: !442)
!1175 = !{!1086, !1087, i64 8}
!1176 = !DILocation(line: 339, column: 23, scope: !442)
!1177 = !DILocation(line: 340, column: 9, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !442, file: !352, line: 340, column: 9)
!1179 = !DILocation(line: 340, column: 15, scope: !1178)
!1180 = !DILocation(line: 340, column: 9, scope: !442)
!1181 = !DILocation(line: 341, column: 33, scope: !1178)
!1182 = !DILocation(line: 341, column: 9, scope: !1178)
!1183 = !DILocation(line: 341, column: 15, scope: !1178)
!1184 = !DILocation(line: 341, column: 25, scope: !1178)
!1185 = !DILocation(line: 341, column: 30, scope: !1178)
!1186 = !DILocation(line: 342, column: 36, scope: !442)
!1187 = !DILocation(line: 342, column: 42, scope: !442)
!1188 = !DILocation(line: 342, column: 5, scope: !442)
!1189 = !DILocation(line: 342, column: 11, scope: !442)
!1190 = !DILocation(line: 342, column: 34, scope: !442)
!1191 = !DILocation(line: 343, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !442, file: !352, line: 343, column: 9)
!1193 = !DILocation(line: 343, column: 18, scope: !1192)
!1194 = !DILocation(line: 343, column: 9, scope: !1192)
!1195 = !{!1196, !884, i64 64}
!1196 = !{!"_ProfilerEntry", !1197, i64 0, !846, i64 24, !1087, i64 32, !1087, i64 40, !884, i64 48, !884, i64 56, !884, i64 64, !846, i64 72}
!1197 = !{!"rotating_node_s", !846, i64 0, !846, i64 8, !846, i64 16}
!1198 = !DILocation(line: 343, column: 33, scope: !1192)
!1199 = !DILocation(line: 343, column: 9, scope: !442)
!1200 = !DILocation(line: 344, column: 22, scope: !1192)
!1201 = !DILocation(line: 344, column: 9, scope: !1192)
!1202 = !DILocation(line: 344, column: 16, scope: !1192)
!1203 = !DILocation(line: 344, column: 19, scope: !1192)
!1204 = !{!1196, !1087, i64 32}
!1205 = !DILocation(line: 346, column: 11, scope: !1192)
!1206 = !DILocation(line: 346, column: 18, scope: !1192)
!1207 = !DILocation(line: 346, column: 9, scope: !1192)
!1208 = !{!1196, !884, i64 56}
!1209 = !DILocation(line: 347, column: 18, scope: !442)
!1210 = !DILocation(line: 347, column: 5, scope: !442)
!1211 = !DILocation(line: 347, column: 12, scope: !442)
!1212 = !DILocation(line: 347, column: 15, scope: !442)
!1213 = !{!1196, !1087, i64 40}
!1214 = !DILocation(line: 348, column: 5, scope: !442)
!1215 = !DILocation(line: 348, column: 12, scope: !442)
!1216 = !DILocation(line: 348, column: 21, scope: !442)
!1217 = !{!1196, !884, i64 48}
!1218 = !DILocation(line: 349, column: 10, scope: !453)
!1219 = !DILocation(line: 349, column: 16, scope: !453)
!1220 = !DILocation(line: 349, column: 22, scope: !453)
!1221 = !DILocation(line: 349, column: 31, scope: !453)
!1222 = !DILocation(line: 349, column: 34, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !453, file: !352, discriminator: 1)
!1224 = !DILocation(line: 349, column: 40, scope: !453)
!1225 = !DILocation(line: 349, column: 34, scope: !453)
!1226 = !DILocation(line: 349, column: 9, scope: !442)
!1227 = !DILocation(line: 351, column: 9, scope: !452)
!1228 = !DILocation(line: 351, column: 24, scope: !452)
!1229 = !DILocation(line: 351, column: 33, scope: !452)
!1230 = !DILocation(line: 351, column: 39, scope: !452)
!1231 = !DILocation(line: 351, column: 49, scope: !452)
!1232 = !DILocation(line: 352, column: 9, scope: !452)
!1233 = !DILocation(line: 352, column: 27, scope: !452)
!1234 = !DILocation(line: 352, column: 50, scope: !452)
!1235 = !DILocation(line: 352, column: 56, scope: !452)
!1236 = !DILocation(line: 352, column: 64, scope: !452)
!1237 = !DILocation(line: 352, column: 38, scope: !452)
!1238 = !DILocation(line: 353, column: 13, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !452, file: !352, line: 353, column: 13)
!1240 = !DILocation(line: 353, column: 13, scope: !452)
!1241 = !DILocation(line: 354, column: 19, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !352, line: 354, column: 17)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !352, line: 353, column: 23)
!1244 = !DILocation(line: 354, column: 29, scope: !1242)
!1245 = !DILocation(line: 354, column: 17, scope: !1242)
!1246 = !{!1247, !884, i64 56}
!1247 = !{!"_ProfilerSubEntry", !1197, i64 0, !1087, i64 24, !1087, i64 32, !884, i64 40, !884, i64 48, !884, i64 56}
!1248 = !DILocation(line: 354, column: 44, scope: !1242)
!1249 = !DILocation(line: 354, column: 17, scope: !1243)
!1250 = !DILocation(line: 355, column: 33, scope: !1242)
!1251 = !DILocation(line: 355, column: 17, scope: !1242)
!1252 = !DILocation(line: 355, column: 27, scope: !1242)
!1253 = !DILocation(line: 355, column: 30, scope: !1242)
!1254 = !{!1247, !1087, i64 24}
!1255 = !DILocation(line: 357, column: 19, scope: !1242)
!1256 = !DILocation(line: 357, column: 29, scope: !1242)
!1257 = !DILocation(line: 357, column: 17, scope: !1242)
!1258 = !{!1247, !884, i64 48}
!1259 = !DILocation(line: 358, column: 29, scope: !1243)
!1260 = !DILocation(line: 358, column: 13, scope: !1243)
!1261 = !DILocation(line: 358, column: 23, scope: !1243)
!1262 = !DILocation(line: 358, column: 26, scope: !1243)
!1263 = !{!1247, !1087, i64 32}
!1264 = !DILocation(line: 359, column: 15, scope: !1243)
!1265 = !DILocation(line: 359, column: 25, scope: !1243)
!1266 = !DILocation(line: 359, column: 13, scope: !1243)
!1267 = !{!1247, !884, i64 40}
!1268 = !DILocation(line: 360, column: 9, scope: !1243)
!1269 = !DILocation(line: 361, column: 5, scope: !453)
!1270 = !DILocation(line: 361, column: 5, scope: !452)
!1271 = !DILocation(line: 362, column: 1, scope: !442)
!1272 = !DILocation(line: 124, column: 52, scope: !455)
!1273 = !DILocation(line: 126, column: 5, scope: !455)
!1274 = !DILocation(line: 126, column: 15, scope: !455)
!1275 = !DILocation(line: 127, column: 5, scope: !455)
!1276 = !DILocation(line: 127, column: 15, scope: !455)
!1277 = !DILocation(line: 127, column: 33, scope: !455)
!1278 = !DILocation(line: 127, column: 39, scope: !455)
!1279 = !DILocation(line: 127, column: 54, scope: !455)
!1280 = !DILocation(line: 127, column: 19, scope: !455)
!1281 = !DILocation(line: 128, column: 9, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !455, file: !352, line: 128, column: 9)
!1283 = !DILocation(line: 128, column: 11, scope: !1282)
!1284 = !DILocation(line: 128, column: 9, scope: !455)
!1285 = !DILocation(line: 129, column: 31, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !352, line: 128, column: 26)
!1287 = !DILocation(line: 129, column: 37, scope: !1286)
!1288 = !DILocation(line: 129, column: 9, scope: !1286)
!1289 = !DILocation(line: 130, column: 9, scope: !1286)
!1290 = !DILocation(line: 132, column: 9, scope: !464)
!1291 = !DILocation(line: 132, column: 15, scope: !464)
!1292 = !DILocation(line: 132, column: 33, scope: !464)
!1293 = !DILocation(line: 132, column: 9, scope: !455)
!1294 = !DILocation(line: 135, column: 36, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !464, file: !352, line: 132, column: 40)
!1296 = !DILocation(line: 135, column: 18, scope: !1295)
!1297 = !DILocation(line: 135, column: 16, scope: !1295)
!1298 = !DILocation(line: 136, column: 5, scope: !1295)
!1299 = !DILocation(line: 141, column: 9, scope: !463)
!1300 = !DILocation(line: 141, column: 16, scope: !463)
!1301 = !DILocation(line: 141, column: 39, scope: !463)
!1302 = !DILocation(line: 141, column: 22, scope: !463)
!1303 = !DILocation(line: 143, column: 31, scope: !463)
!1304 = !DILocation(line: 143, column: 35, scope: !463)
!1305 = !DILocation(line: 143, column: 18, scope: !463)
!1306 = !DILocation(line: 143, column: 16, scope: !463)
!1307 = !DILocation(line: 144, column: 5, scope: !464)
!1308 = !DILocation(line: 145, column: 5, scope: !455)
!1309 = !DILocation(line: 145, column: 10, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !466, file: !352, discriminator: 1)
!1311 = !DILocation(line: 145, column: 20, scope: !466)
!1312 = !DILocation(line: 145, column: 50, scope: !466)
!1313 = !DILocation(line: 145, column: 62, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !466, file: !352, line: 145, column: 59)
!1315 = !DILocation(line: 145, column: 79, scope: !1314)
!1316 = !DILocation(line: 145, column: 59, scope: !1314)
!1317 = !DILocation(line: 145, column: 89, scope: !1314)
!1318 = !DILocation(line: 145, column: 59, scope: !466)
!1319 = !DILocation(line: 145, column: 59, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !466, file: !352, discriminator: 2)
!1321 = !DILocation(line: 145, column: 120, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1314, file: !352, discriminator: 3)
!1323 = !DILocation(line: 145, column: 138, scope: !1314)
!1324 = !DILocation(line: 145, column: 148, scope: !1314)
!1325 = !DILocation(line: 145, column: 173, scope: !1314)
!1326 = !DILocation(line: 145, column: 104, scope: !1314)
!1327 = !DILocation(line: 145, column: 192, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !455, file: !352, discriminator: 4)
!1329 = !DILocation(line: 145, column: 192, scope: !466)
!1330 = !DILocation(line: 145, column: 192, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !466, file: !352, discriminator: 5)
!1332 = !DILocation(line: 146, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !455, file: !352, line: 146, column: 9)
!1334 = !DILocation(line: 146, column: 9, scope: !455)
!1335 = !DILocation(line: 147, column: 31, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !352, line: 146, column: 27)
!1337 = !DILocation(line: 147, column: 37, scope: !1336)
!1338 = !DILocation(line: 147, column: 9, scope: !1336)
!1339 = !DILocation(line: 148, column: 9, scope: !1336)
!1340 = !DILocation(line: 150, column: 12, scope: !455)
!1341 = !DILocation(line: 150, column: 5, scope: !455)
!1342 = !DILocation(line: 151, column: 1, scope: !455)
!1343 = !DILocation(line: 45, column: 5, scope: !467)
!1344 = !DILocation(line: 45, column: 20, scope: !467)
!1345 = !DILocation(line: 46, column: 5, scope: !467)
!1346 = !DILocation(line: 46, column: 15, scope: !467)
!1347 = !DILocation(line: 50, column: 5, scope: !467)
!1348 = !DILocation(line: 52, column: 14, scope: !467)
!1349 = !{!1350, !884, i64 0}
!1350 = !{!"timeval", !884, i64 0, !884, i64 8}
!1351 = !DILocation(line: 52, column: 9, scope: !467)
!1352 = !DILocation(line: 53, column: 11, scope: !467)
!1353 = !DILocation(line: 53, column: 15, scope: !467)
!1354 = !DILocation(line: 53, column: 30, scope: !467)
!1355 = !{!1350, !884, i64 8}
!1356 = !DILocation(line: 53, column: 25, scope: !467)
!1357 = !DILocation(line: 53, column: 9, scope: !467)
!1358 = !DILocation(line: 54, column: 12, scope: !467)
!1359 = !DILocation(line: 55, column: 1, scope: !467)
!1360 = !DILocation(line: 54, column: 5, scope: !467)
!1361 = !DILocation(line: 257, column: 29, scope: !480)
!1362 = !DILocation(line: 257, column: 50, scope: !480)
!1363 = !DILocation(line: 257, column: 73, scope: !480)
!1364 = !DILocation(line: 259, column: 50, scope: !480)
!1365 = !DILocation(line: 259, column: 58, scope: !480)
!1366 = !DILocation(line: 260, column: 57, scope: !480)
!1367 = !DILocation(line: 260, column: 49, scope: !480)
!1368 = !DILocation(line: 259, column: 32, scope: !480)
!1369 = !DILocation(line: 259, column: 12, scope: !480)
!1370 = !DILocation(line: 259, column: 5, scope: !480)
!1371 = !DILocation(line: 289, column: 39, scope: !492)
!1372 = !DILocation(line: 289, column: 53, scope: !492)
!1373 = !DILocation(line: 291, column: 5, scope: !492)
!1374 = !DILocation(line: 291, column: 20, scope: !492)
!1375 = !DILocation(line: 291, column: 45, scope: !492)
!1376 = !DILocation(line: 291, column: 28, scope: !492)
!1377 = !DILocation(line: 292, column: 23, scope: !492)
!1378 = !DILocation(line: 292, column: 30, scope: !492)
!1379 = !{!1196, !846, i64 72}
!1380 = !DILocation(line: 292, column: 5, scope: !492)
!1381 = !DILocation(line: 293, column: 5, scope: !492)
!1382 = !DILocation(line: 293, column: 10, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !500, file: !352, discriminator: 1)
!1384 = !DILocation(line: 293, column: 20, scope: !500)
!1385 = !DILocation(line: 293, column: 50, scope: !500)
!1386 = !DILocation(line: 293, column: 57, scope: !500)
!1387 = !{!1196, !846, i64 24}
!1388 = !DILocation(line: 293, column: 75, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !500, file: !352, line: 293, column: 72)
!1390 = !DILocation(line: 293, column: 92, scope: !1389)
!1391 = !DILocation(line: 293, column: 72, scope: !1389)
!1392 = !DILocation(line: 293, column: 102, scope: !1389)
!1393 = !DILocation(line: 293, column: 72, scope: !500)
!1394 = !DILocation(line: 293, column: 72, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !500, file: !352, discriminator: 2)
!1396 = !DILocation(line: 293, column: 133, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1389, file: !352, discriminator: 3)
!1398 = !DILocation(line: 293, column: 151, scope: !1389)
!1399 = !DILocation(line: 293, column: 161, scope: !1389)
!1400 = !DILocation(line: 293, column: 186, scope: !1389)
!1401 = !DILocation(line: 293, column: 117, scope: !1389)
!1402 = !DILocation(line: 293, column: 205, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !492, file: !352, discriminator: 4)
!1404 = !DILocation(line: 293, column: 205, scope: !500)
!1405 = !DILocation(line: 293, column: 205, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !500, file: !352, discriminator: 5)
!1407 = !DILocation(line: 294, column: 16, scope: !492)
!1408 = !DILocation(line: 294, column: 5, scope: !492)
!1409 = !DILocation(line: 296, column: 1, scope: !492)
!1410 = !DILocation(line: 295, column: 5, scope: !492)
!1411 = !DILocation(line: 282, column: 42, scope: !501)
!1412 = !DILocation(line: 282, column: 56, scope: !501)
!1413 = !DILocation(line: 284, column: 5, scope: !501)
!1414 = !DILocation(line: 284, column: 23, scope: !501)
!1415 = !DILocation(line: 284, column: 54, scope: !501)
!1416 = !DILocation(line: 284, column: 34, scope: !501)
!1417 = !DILocation(line: 285, column: 16, scope: !501)
!1418 = !DILocation(line: 285, column: 5, scope: !501)
!1419 = !DILocation(line: 287, column: 1, scope: !501)
!1420 = !DILocation(line: 286, column: 5, scope: !501)
!1421 = !DILocation(line: 626, column: 35, scope: !506)
!1422 = !DILocation(line: 626, column: 51, scope: !506)
!1423 = !DILocation(line: 628, column: 5, scope: !506)
!1424 = !DILocation(line: 628, column: 22, scope: !506)
!1425 = !DILocation(line: 629, column: 27, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !506, file: !352, line: 629, column: 9)
!1427 = !DILocation(line: 629, column: 9, scope: !1426)
!1428 = !DILocation(line: 629, column: 9, scope: !506)
!1429 = !DILocation(line: 630, column: 9, scope: !1426)
!1430 = !DILocation(line: 631, column: 10, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !506, file: !352, line: 631, column: 9)
!1432 = !DILocation(line: 631, column: 16, scope: !1431)
!1433 = !DILocation(line: 631, column: 9, scope: !506)
!1434 = !DILocation(line: 632, column: 26, scope: !1431)
!1435 = !DILocation(line: 632, column: 17, scope: !1431)
!1436 = !DILocation(line: 632, column: 24, scope: !1431)
!1437 = !{!1438, !902, i64 16}
!1438 = !{!"", !846, i64 0, !846, i64 8, !902, i64 16}
!1439 = !DILocation(line: 632, column: 9, scope: !1431)
!1440 = !DILocation(line: 633, column: 14, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1431, file: !352, line: 633, column: 14)
!1442 = !DILocation(line: 633, column: 20, scope: !1441)
!1443 = !DILocation(line: 633, column: 38, scope: !1441)
!1444 = !DILocation(line: 633, column: 14, scope: !1431)
!1445 = !DILocation(line: 634, column: 26, scope: !1441)
!1446 = !DILocation(line: 634, column: 32, scope: !1441)
!1447 = !DILocation(line: 634, column: 17, scope: !1441)
!1448 = !DILocation(line: 634, column: 24, scope: !1441)
!1449 = !DILocation(line: 634, column: 9, scope: !1441)
!1450 = !DILocation(line: 636, column: 17, scope: !1441)
!1451 = !DILocation(line: 636, column: 24, scope: !1441)
!1452 = !DILocation(line: 637, column: 20, scope: !506)
!1453 = !DILocation(line: 637, column: 13, scope: !506)
!1454 = !DILocation(line: 637, column: 18, scope: !506)
!1455 = !{!1438, !846, i64 0}
!1456 = !DILocation(line: 638, column: 17, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !506, file: !352, line: 638, column: 9)
!1458 = !DILocation(line: 638, column: 22, scope: !1457)
!1459 = !DILocation(line: 638, column: 9, scope: !506)
!1460 = !DILocation(line: 639, column: 9, scope: !1457)
!1461 = !DILocation(line: 640, column: 27, scope: !516)
!1462 = !DILocation(line: 640, column: 33, scope: !516)
!1463 = !DILocation(line: 640, column: 65, scope: !516)
!1464 = !DILocation(line: 640, column: 9, scope: !516)
!1465 = !DILocation(line: 641, column: 9, scope: !516)
!1466 = !DILocation(line: 640, column: 9, scope: !506)
!1467 = !DILocation(line: 642, column: 9, scope: !515)
!1468 = !DILocation(line: 642, column: 14, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !514, file: !352, discriminator: 1)
!1470 = !DILocation(line: 642, column: 24, scope: !514)
!1471 = !DILocation(line: 642, column: 62, scope: !514)
!1472 = !DILocation(line: 642, column: 77, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !514, file: !352, line: 642, column: 74)
!1474 = !DILocation(line: 642, column: 94, scope: !1473)
!1475 = !DILocation(line: 642, column: 74, scope: !1473)
!1476 = !DILocation(line: 642, column: 104, scope: !1473)
!1477 = !DILocation(line: 642, column: 74, scope: !514)
!1478 = !DILocation(line: 642, column: 74, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !514, file: !352, discriminator: 2)
!1480 = !DILocation(line: 642, column: 135, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1473, file: !352, discriminator: 3)
!1482 = !DILocation(line: 642, column: 153, scope: !1473)
!1483 = !DILocation(line: 642, column: 163, scope: !1473)
!1484 = !DILocation(line: 642, column: 188, scope: !1473)
!1485 = !DILocation(line: 642, column: 119, scope: !1473)
!1486 = !DILocation(line: 642, column: 207, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !515, file: !352, discriminator: 4)
!1488 = !DILocation(line: 642, column: 207, scope: !514)
!1489 = !DILocation(line: 642, column: 207, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !514, file: !352, discriminator: 5)
!1491 = !DILocation(line: 643, column: 9, scope: !515)
!1492 = !DILocation(line: 645, column: 20, scope: !506)
!1493 = !DILocation(line: 645, column: 5, scope: !506)
!1494 = !DILocation(line: 646, column: 1, scope: !506)
!1495 = !DILocation(line: 680, column: 33, scope: !554)
!1496 = !DILocation(line: 680, column: 49, scope: !554)
!1497 = !DILocation(line: 680, column: 65, scope: !554)
!1498 = !DILocation(line: 682, column: 5, scope: !554)
!1499 = !DILocation(line: 682, column: 9, scope: !554)
!1500 = !DILocation(line: 683, column: 5, scope: !554)
!1501 = !DILocation(line: 683, column: 9, scope: !554)
!1502 = !DILocation(line: 685, column: 38, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !554, file: !352, line: 685, column: 9)
!1504 = !DILocation(line: 685, column: 44, scope: !1503)
!1505 = !DILocation(line: 685, column: 10, scope: !1503)
!1506 = !DILocation(line: 685, column: 9, scope: !554)
!1507 = !DILocation(line: 687, column: 9, scope: !1503)
!1508 = !DILocation(line: 688, column: 21, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !554, file: !352, line: 688, column: 9)
!1510 = !DILocation(line: 688, column: 27, scope: !1509)
!1511 = !DILocation(line: 688, column: 9, scope: !1509)
!1512 = !DILocation(line: 688, column: 37, scope: !1509)
!1513 = !DILocation(line: 688, column: 41, scope: !1509)
!1514 = !DILocation(line: 688, column: 56, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1509, file: !352, discriminator: 1)
!1516 = !DILocation(line: 688, column: 62, scope: !1509)
!1517 = !DILocation(line: 688, column: 44, scope: !1509)
!1518 = !DILocation(line: 688, column: 72, scope: !1509)
!1519 = !DILocation(line: 688, column: 9, scope: !554)
!1520 = !DILocation(line: 689, column: 9, scope: !1509)
!1521 = !DILocation(line: 690, column: 53, scope: !554)
!1522 = !DILocation(line: 690, column: 42, scope: !554)
!1523 = !DILocation(line: 690, column: 5, scope: !554)
!1524 = !DILocation(line: 691, column: 5, scope: !554)
!1525 = !DILocation(line: 691, column: 11, scope: !554)
!1526 = !DILocation(line: 691, column: 17, scope: !554)
!1527 = !DILocation(line: 692, column: 51, scope: !554)
!1528 = !DILocation(line: 693, column: 5, scope: !554)
!1529 = !DILocation(line: 694, column: 1, scope: !554)
!1530 = !DILocation(line: 719, column: 34, scope: !724)
!1531 = !DILocation(line: 719, column: 50, scope: !724)
!1532 = !DILocation(line: 721, column: 5, scope: !724)
!1533 = !DILocation(line: 721, column: 11, scope: !724)
!1534 = !DILocation(line: 721, column: 17, scope: !724)
!1535 = !DILocation(line: 722, column: 5, scope: !724)
!1536 = !DILocation(line: 723, column: 21, scope: !724)
!1537 = !DILocation(line: 723, column: 5, scope: !724)
!1538 = !DILocation(line: 724, column: 27, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !724, file: !352, line: 724, column: 9)
!1540 = !DILocation(line: 724, column: 9, scope: !1539)
!1541 = !DILocation(line: 724, column: 9, scope: !724)
!1542 = !DILocation(line: 725, column: 9, scope: !1539)
!1543 = !DILocation(line: 726, column: 51, scope: !724)
!1544 = !DILocation(line: 727, column: 5, scope: !724)
!1545 = !DILocation(line: 728, column: 1, scope: !724)
!1546 = !DILocation(line: 737, column: 32, scope: !728)
!1547 = !DILocation(line: 737, column: 48, scope: !728)
!1548 = !DILocation(line: 739, column: 18, scope: !728)
!1549 = !DILocation(line: 739, column: 5, scope: !728)
!1550 = !DILocation(line: 740, column: 51, scope: !728)
!1551 = !DILocation(line: 741, column: 5, scope: !728)
!1552 = !DILocation(line: 483, column: 35, scope: !517)
!1553 = !DILocation(line: 485, column: 9, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !517, file: !352, line: 485, column: 9)
!1555 = !DILocation(line: 485, column: 15, scope: !1554)
!1556 = !DILocation(line: 485, column: 21, scope: !1554)
!1557 = !DILocation(line: 485, column: 9, scope: !517)
!1558 = !DILocation(line: 486, column: 9, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !352, line: 485, column: 30)
!1560 = !DILocation(line: 486, column: 15, scope: !1559)
!1561 = !DILocation(line: 486, column: 21, scope: !1559)
!1562 = !DILocation(line: 487, column: 25, scope: !1559)
!1563 = !DILocation(line: 487, column: 9, scope: !1559)
!1564 = !DILocation(line: 489, column: 9, scope: !1559)
!1565 = !DILocation(line: 491, column: 5, scope: !517)
!1566 = !DILocation(line: 492, column: 1, scope: !517)
!1567 = !DILocation(line: 60, column: 5, scope: !522)
!1568 = !DILocation(line: 561, column: 43, scope: !525)
!1569 = !DILocation(line: 561, column: 55, scope: !525)
!1570 = !DILocation(line: 563, column: 5, scope: !525)
!1571 = !DILocation(line: 563, column: 20, scope: !525)
!1572 = !DILocation(line: 563, column: 45, scope: !525)
!1573 = !DILocation(line: 563, column: 28, scope: !525)
!1574 = !DILocation(line: 564, column: 5, scope: !525)
!1575 = !DILocation(line: 564, column: 23, scope: !525)
!1576 = !DILocation(line: 564, column: 53, scope: !525)
!1577 = !DILocation(line: 564, column: 33, scope: !525)
!1578 = !DILocation(line: 565, column: 5, scope: !525)
!1579 = !DILocation(line: 565, column: 15, scope: !525)
!1580 = !DILocation(line: 566, column: 5, scope: !525)
!1581 = !DILocation(line: 566, column: 9, scope: !525)
!1582 = !DILocation(line: 567, column: 9, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !525, file: !352, line: 567, column: 9)
!1584 = !DILocation(line: 567, column: 16, scope: !1583)
!1585 = !DILocation(line: 567, column: 26, scope: !1583)
!1586 = !DILocation(line: 567, column: 9, scope: !525)
!1587 = !DILocation(line: 568, column: 9, scope: !1583)
!1588 = !DILocation(line: 570, column: 9, scope: !538)
!1589 = !DILocation(line: 570, column: 16, scope: !538)
!1590 = !DILocation(line: 570, column: 22, scope: !538)
!1591 = !DILocation(line: 570, column: 9, scope: !525)
!1592 = !DILocation(line: 571, column: 28, scope: !537)
!1593 = !DILocation(line: 571, column: 9, scope: !537)
!1594 = !DILocation(line: 571, column: 18, scope: !537)
!1595 = !DILocation(line: 571, column: 26, scope: !537)
!1596 = !{!1438, !846, i64 8}
!1597 = !DILocation(line: 572, column: 13, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !537, file: !352, line: 572, column: 13)
!1599 = !DILocation(line: 572, column: 22, scope: !1598)
!1600 = !DILocation(line: 572, column: 30, scope: !1598)
!1601 = !DILocation(line: 572, column: 13, scope: !537)
!1602 = !DILocation(line: 573, column: 13, scope: !1598)
!1603 = !DILocation(line: 574, column: 31, scope: !536)
!1604 = !DILocation(line: 574, column: 38, scope: !536)
!1605 = !DILocation(line: 575, column: 49, scope: !536)
!1606 = !DILocation(line: 574, column: 13, scope: !536)
!1607 = !DILocation(line: 575, column: 58, scope: !536)
!1608 = !DILocation(line: 574, column: 13, scope: !537)
!1609 = !DILocation(line: 576, column: 13, scope: !535)
!1610 = !DILocation(line: 576, column: 18, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !534, file: !352, discriminator: 1)
!1612 = !DILocation(line: 576, column: 28, scope: !534)
!1613 = !DILocation(line: 576, column: 58, scope: !534)
!1614 = !DILocation(line: 576, column: 67, scope: !534)
!1615 = !DILocation(line: 576, column: 85, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !534, file: !352, line: 576, column: 82)
!1617 = !DILocation(line: 576, column: 102, scope: !1616)
!1618 = !DILocation(line: 576, column: 82, scope: !1616)
!1619 = !DILocation(line: 576, column: 112, scope: !1616)
!1620 = !DILocation(line: 576, column: 82, scope: !534)
!1621 = !DILocation(line: 576, column: 82, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !534, file: !352, discriminator: 2)
!1623 = !DILocation(line: 576, column: 143, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1616, file: !352, discriminator: 3)
!1625 = !DILocation(line: 576, column: 161, scope: !1616)
!1626 = !DILocation(line: 576, column: 171, scope: !1616)
!1627 = !DILocation(line: 576, column: 196, scope: !1616)
!1628 = !DILocation(line: 576, column: 127, scope: !1616)
!1629 = !DILocation(line: 576, column: 215, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !535, file: !352, discriminator: 4)
!1631 = !DILocation(line: 576, column: 215, scope: !534)
!1632 = !DILocation(line: 576, column: 215, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !534, file: !352, discriminator: 5)
!1634 = !DILocation(line: 577, column: 13, scope: !535)
!1635 = !DILocation(line: 579, column: 5, scope: !537)
!1636 = !DILocation(line: 581, column: 55, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !538, file: !352, line: 580, column: 10)
!1638 = !DILocation(line: 582, column: 9, scope: !1637)
!1639 = !DILocation(line: 582, column: 18, scope: !1637)
!1640 = !DILocation(line: 582, column: 26, scope: !1637)
!1641 = !DILocation(line: 587, column: 34, scope: !525)
!1642 = !DILocation(line: 587, column: 41, scope: !525)
!1643 = !DILocation(line: 588, column: 34, scope: !525)
!1644 = !DILocation(line: 588, column: 41, scope: !525)
!1645 = !DILocation(line: 589, column: 34, scope: !525)
!1646 = !DILocation(line: 589, column: 41, scope: !525)
!1647 = !DILocation(line: 590, column: 34, scope: !525)
!1648 = !DILocation(line: 590, column: 43, scope: !525)
!1649 = !DILocation(line: 590, column: 52, scope: !525)
!1650 = !DILocation(line: 590, column: 59, scope: !525)
!1651 = !DILocation(line: 590, column: 50, scope: !525)
!1652 = !DILocation(line: 591, column: 34, scope: !525)
!1653 = !DILocation(line: 591, column: 43, scope: !525)
!1654 = !DILocation(line: 591, column: 52, scope: !525)
!1655 = !DILocation(line: 591, column: 59, scope: !525)
!1656 = !DILocation(line: 591, column: 50, scope: !525)
!1657 = !DILocation(line: 592, column: 34, scope: !525)
!1658 = !DILocation(line: 592, column: 43, scope: !525)
!1659 = !DILocation(line: 585, column: 12, scope: !525)
!1660 = !DILocation(line: 585, column: 10, scope: !525)
!1661 = !DILocation(line: 593, column: 5, scope: !525)
!1662 = !DILocation(line: 593, column: 10, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !540, file: !352, discriminator: 1)
!1664 = !DILocation(line: 593, column: 20, scope: !540)
!1665 = !DILocation(line: 593, column: 50, scope: !540)
!1666 = !DILocation(line: 593, column: 59, scope: !540)
!1667 = !DILocation(line: 593, column: 77, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !540, file: !352, line: 593, column: 74)
!1669 = !DILocation(line: 593, column: 94, scope: !1668)
!1670 = !DILocation(line: 593, column: 74, scope: !1668)
!1671 = !DILocation(line: 593, column: 104, scope: !1668)
!1672 = !DILocation(line: 593, column: 74, scope: !540)
!1673 = !DILocation(line: 593, column: 74, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !540, file: !352, discriminator: 2)
!1675 = !DILocation(line: 593, column: 135, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1668, file: !352, discriminator: 3)
!1677 = !DILocation(line: 593, column: 153, scope: !1668)
!1678 = !DILocation(line: 593, column: 163, scope: !1668)
!1679 = !DILocation(line: 593, column: 188, scope: !1668)
!1680 = !DILocation(line: 593, column: 119, scope: !1668)
!1681 = !DILocation(line: 593, column: 207, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !525, file: !352, discriminator: 4)
!1683 = !DILocation(line: 593, column: 207, scope: !540)
!1684 = !DILocation(line: 593, column: 207, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !540, file: !352, discriminator: 5)
!1686 = !DILocation(line: 594, column: 9, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !525, file: !352, line: 594, column: 9)
!1688 = !DILocation(line: 594, column: 14, scope: !1687)
!1689 = !DILocation(line: 594, column: 9, scope: !525)
!1690 = !DILocation(line: 595, column: 9, scope: !1687)
!1691 = !DILocation(line: 596, column: 25, scope: !525)
!1692 = !DILocation(line: 596, column: 34, scope: !525)
!1693 = !DILocation(line: 596, column: 40, scope: !525)
!1694 = !DILocation(line: 596, column: 11, scope: !525)
!1695 = !DILocation(line: 596, column: 9, scope: !525)
!1696 = !DILocation(line: 597, column: 5, scope: !525)
!1697 = !DILocation(line: 597, column: 10, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !542, file: !352, discriminator: 1)
!1699 = !DILocation(line: 597, column: 20, scope: !542)
!1700 = !DILocation(line: 597, column: 50, scope: !542)
!1701 = !DILocation(line: 597, column: 65, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !542, file: !352, line: 597, column: 62)
!1703 = !DILocation(line: 597, column: 82, scope: !1702)
!1704 = !DILocation(line: 597, column: 62, scope: !1702)
!1705 = !DILocation(line: 597, column: 92, scope: !1702)
!1706 = !DILocation(line: 597, column: 62, scope: !542)
!1707 = !DILocation(line: 597, column: 62, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !542, file: !352, discriminator: 2)
!1709 = !DILocation(line: 597, column: 123, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1702, file: !352, discriminator: 3)
!1711 = !DILocation(line: 597, column: 141, scope: !1702)
!1712 = !DILocation(line: 597, column: 151, scope: !1702)
!1713 = !DILocation(line: 597, column: 176, scope: !1702)
!1714 = !DILocation(line: 597, column: 107, scope: !1702)
!1715 = !DILocation(line: 597, column: 195, scope: !1682)
!1716 = !DILocation(line: 597, column: 195, scope: !542)
!1717 = !DILocation(line: 597, column: 195, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !542, file: !352, discriminator: 5)
!1719 = !DILocation(line: 598, column: 12, scope: !525)
!1720 = !DILocation(line: 598, column: 5, scope: !525)
!1721 = !DILocation(line: 599, column: 1, scope: !525)
!1722 = !DILocation(line: 540, column: 46, scope: !543)
!1723 = !DILocation(line: 540, column: 58, scope: !543)
!1724 = !DILocation(line: 542, column: 5, scope: !543)
!1725 = !DILocation(line: 542, column: 23, scope: !543)
!1726 = !DILocation(line: 542, column: 52, scope: !543)
!1727 = !DILocation(line: 542, column: 32, scope: !543)
!1728 = !DILocation(line: 543, column: 5, scope: !543)
!1729 = !DILocation(line: 543, column: 23, scope: !543)
!1730 = !DILocation(line: 543, column: 53, scope: !543)
!1731 = !DILocation(line: 543, column: 33, scope: !543)
!1732 = !DILocation(line: 544, column: 5, scope: !543)
!1733 = !DILocation(line: 544, column: 20, scope: !543)
!1734 = !DILocation(line: 544, column: 45, scope: !543)
!1735 = !DILocation(line: 544, column: 53, scope: !543)
!1736 = !DILocation(line: 544, column: 60, scope: !543)
!1737 = !{!1247, !846, i64 0}
!1738 = !DILocation(line: 544, column: 28, scope: !543)
!1739 = !DILocation(line: 545, column: 5, scope: !543)
!1740 = !DILocation(line: 545, column: 9, scope: !543)
!1741 = !DILocation(line: 546, column: 5, scope: !543)
!1742 = !DILocation(line: 546, column: 15, scope: !543)
!1743 = !DILocation(line: 549, column: 35, scope: !543)
!1744 = !DILocation(line: 549, column: 42, scope: !543)
!1745 = !DILocation(line: 550, column: 35, scope: !543)
!1746 = !DILocation(line: 550, column: 43, scope: !543)
!1747 = !DILocation(line: 551, column: 35, scope: !543)
!1748 = !DILocation(line: 551, column: 43, scope: !543)
!1749 = !DILocation(line: 552, column: 35, scope: !543)
!1750 = !DILocation(line: 552, column: 44, scope: !543)
!1751 = !DILocation(line: 552, column: 53, scope: !543)
!1752 = !DILocation(line: 552, column: 61, scope: !543)
!1753 = !DILocation(line: 552, column: 51, scope: !543)
!1754 = !DILocation(line: 553, column: 35, scope: !543)
!1755 = !DILocation(line: 553, column: 44, scope: !543)
!1756 = !DILocation(line: 553, column: 53, scope: !543)
!1757 = !DILocation(line: 553, column: 61, scope: !543)
!1758 = !DILocation(line: 553, column: 51, scope: !543)
!1759 = !DILocation(line: 547, column: 13, scope: !543)
!1760 = !DILocation(line: 547, column: 11, scope: !543)
!1761 = !DILocation(line: 554, column: 9, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !543, file: !352, line: 554, column: 9)
!1763 = !DILocation(line: 554, column: 15, scope: !1762)
!1764 = !DILocation(line: 554, column: 9, scope: !543)
!1765 = !DILocation(line: 555, column: 9, scope: !1762)
!1766 = !DILocation(line: 556, column: 25, scope: !543)
!1767 = !DILocation(line: 556, column: 34, scope: !543)
!1768 = !DILocation(line: 556, column: 43, scope: !543)
!1769 = !DILocation(line: 556, column: 11, scope: !543)
!1770 = !DILocation(line: 556, column: 9, scope: !543)
!1771 = !DILocation(line: 557, column: 5, scope: !543)
!1772 = !DILocation(line: 557, column: 10, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !553, file: !352, discriminator: 1)
!1774 = !DILocation(line: 557, column: 20, scope: !553)
!1775 = !DILocation(line: 557, column: 50, scope: !553)
!1776 = !DILocation(line: 557, column: 66, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !553, file: !352, line: 557, column: 63)
!1778 = !DILocation(line: 557, column: 83, scope: !1777)
!1779 = !DILocation(line: 557, column: 63, scope: !1777)
!1780 = !DILocation(line: 557, column: 93, scope: !1777)
!1781 = !DILocation(line: 557, column: 63, scope: !553)
!1782 = !DILocation(line: 557, column: 63, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !553, file: !352, discriminator: 2)
!1784 = !DILocation(line: 557, column: 124, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1777, file: !352, discriminator: 3)
!1786 = !DILocation(line: 557, column: 142, scope: !1777)
!1787 = !DILocation(line: 557, column: 152, scope: !1777)
!1788 = !DILocation(line: 557, column: 177, scope: !1777)
!1789 = !DILocation(line: 557, column: 108, scope: !1777)
!1790 = !DILocation(line: 557, column: 196, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !543, file: !352, discriminator: 4)
!1792 = !DILocation(line: 557, column: 196, scope: !553)
!1793 = !DILocation(line: 557, column: 196, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !553, file: !352, discriminator: 5)
!1795 = !DILocation(line: 558, column: 12, scope: !543)
!1796 = !DILocation(line: 558, column: 5, scope: !543)
!1797 = !DILocation(line: 559, column: 1, scope: !543)
!1798 = !DILocation(line: 649, column: 29, scope: !563)
!1799 = !DILocation(line: 649, column: 39, scope: !563)
!1800 = !DILocation(line: 651, column: 9, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !563, file: !352, line: 651, column: 9)
!1802 = !DILocation(line: 651, column: 16, scope: !1801)
!1803 = !DILocation(line: 651, column: 9, scope: !563)
!1804 = !DILocation(line: 652, column: 9, scope: !1801)
!1805 = !DILocation(line: 652, column: 15, scope: !1801)
!1806 = !DILocation(line: 652, column: 21, scope: !1801)
!1807 = !DILocation(line: 653, column: 14, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1801, file: !352, line: 653, column: 14)
!1809 = !DILocation(line: 653, column: 21, scope: !1808)
!1810 = !DILocation(line: 653, column: 14, scope: !1801)
!1811 = !DILocation(line: 654, column: 9, scope: !1808)
!1812 = !DILocation(line: 654, column: 15, scope: !1808)
!1813 = !DILocation(line: 654, column: 21, scope: !1808)
!1814 = !DILocation(line: 655, column: 5, scope: !563)
!1815 = !DILocation(line: 659, column: 29, scope: !569)
!1816 = !DILocation(line: 659, column: 39, scope: !569)
!1817 = !DILocation(line: 661, column: 9, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !569, file: !352, line: 661, column: 9)
!1819 = !DILocation(line: 661, column: 16, scope: !1818)
!1820 = !DILocation(line: 661, column: 9, scope: !569)
!1821 = !DILocation(line: 662, column: 9, scope: !1818)
!1822 = !DILocation(line: 662, column: 15, scope: !1818)
!1823 = !DILocation(line: 662, column: 21, scope: !1818)
!1824 = !DILocation(line: 663, column: 14, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1818, file: !352, line: 663, column: 14)
!1826 = !DILocation(line: 663, column: 21, scope: !1825)
!1827 = !DILocation(line: 663, column: 14, scope: !1818)
!1828 = !DILocation(line: 664, column: 9, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !352, line: 663, column: 26)
!1830 = !DILocation(line: 664, column: 15, scope: !1829)
!1831 = !DILocation(line: 664, column: 21, scope: !1829)
!1832 = !DILocation(line: 665, column: 5, scope: !1829)
!1833 = !DILocation(line: 666, column: 5, scope: !569)
!1834 = !DILocation(line: 432, column: 29, scope: !573)
!1835 = !DILocation(line: 432, column: 50, scope: !573)
!1836 = !DILocation(line: 432, column: 61, scope: !573)
!1837 = !DILocation(line: 433, column: 29, scope: !573)
!1838 = !DILocation(line: 435, column: 13, scope: !573)
!1839 = !DILocation(line: 439, column: 27, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !573, file: !352, line: 435, column: 19)
!1841 = !DILocation(line: 439, column: 41, scope: !1840)
!1842 = !DILocation(line: 439, column: 48, scope: !1840)
!1843 = !{!1844, !846, i64 32}
!1844 = !{!"_frame", !941, i64 0, !846, i64 24, !846, i64 32, !846, i64 40, !846, i64 48, !846, i64 56, !846, i64 64, !846, i64 72, !846, i64 80, !846, i64 88, !846, i64 96, !846, i64 104, !846, i64 112, !867, i64 120, !867, i64 124, !867, i64 128, !847, i64 132, !847, i64 136, !847, i64 376}
!1845 = !DILocation(line: 439, column: 33, scope: !1840)
!1846 = !DILocation(line: 440, column: 45, scope: !1840)
!1847 = !DILocation(line: 440, column: 52, scope: !1840)
!1848 = !DILocation(line: 440, column: 33, scope: !1840)
!1849 = !DILocation(line: 439, column: 9, scope: !1840)
!1850 = !DILocation(line: 441, column: 9, scope: !1840)
!1851 = !DILocation(line: 446, column: 27, scope: !1840)
!1852 = !DILocation(line: 446, column: 41, scope: !1840)
!1853 = !DILocation(line: 446, column: 48, scope: !1840)
!1854 = !DILocation(line: 446, column: 33, scope: !1840)
!1855 = !DILocation(line: 446, column: 9, scope: !1840)
!1856 = !DILocation(line: 447, column: 9, scope: !1840)
!1857 = !DILocation(line: 457, column: 33, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1840, file: !352, line: 457, column: 13)
!1859 = !DILocation(line: 457, column: 15, scope: !1858)
!1860 = !DILocation(line: 457, column: 40, scope: !1858)
!1861 = !DILocation(line: 457, column: 46, scope: !1858)
!1862 = !DILocation(line: 458, column: 13, scope: !1858)
!1863 = !DILocation(line: 458, column: 31, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1858, file: !352, discriminator: 1)
!1865 = !DILocation(line: 458, column: 38, scope: !1858)
!1866 = !DILocation(line: 458, column: 47, scope: !1858)
!1867 = !DILocation(line: 457, column: 13, scope: !1840)
!1868 = !DILocation(line: 459, column: 31, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1858, file: !352, line: 458, column: 70)
!1870 = !DILocation(line: 460, column: 53, scope: !1869)
!1871 = !DILocation(line: 460, column: 32, scope: !1869)
!1872 = !DILocation(line: 460, column: 59, scope: !1869)
!1873 = !{!1874, !846, i64 16}
!1874 = !{!"", !883, i64 0, !846, i64 16, !846, i64 24, !846, i64 32}
!1875 = !DILocation(line: 460, column: 31, scope: !1869)
!1876 = !DILocation(line: 461, column: 31, scope: !1869)
!1877 = !DILocation(line: 459, column: 13, scope: !1869)
!1878 = !DILocation(line: 462, column: 9, scope: !1869)
!1879 = !DILocation(line: 463, column: 9, scope: !1840)
!1880 = !DILocation(line: 469, column: 33, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1840, file: !352, line: 469, column: 13)
!1882 = !DILocation(line: 469, column: 15, scope: !1881)
!1883 = !DILocation(line: 469, column: 40, scope: !1881)
!1884 = !DILocation(line: 469, column: 46, scope: !1881)
!1885 = !DILocation(line: 470, column: 13, scope: !1881)
!1886 = !DILocation(line: 470, column: 31, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1881, file: !352, discriminator: 1)
!1888 = !DILocation(line: 470, column: 38, scope: !1881)
!1889 = !DILocation(line: 470, column: 47, scope: !1881)
!1890 = !DILocation(line: 469, column: 13, scope: !1840)
!1891 = !DILocation(line: 471, column: 31, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1881, file: !352, line: 470, column: 70)
!1893 = !DILocation(line: 472, column: 53, scope: !1892)
!1894 = !DILocation(line: 472, column: 32, scope: !1892)
!1895 = !DILocation(line: 472, column: 59, scope: !1892)
!1896 = !DILocation(line: 472, column: 31, scope: !1892)
!1897 = !DILocation(line: 471, column: 13, scope: !1892)
!1898 = !DILocation(line: 473, column: 9, scope: !1892)
!1899 = !DILocation(line: 474, column: 9, scope: !1840)
!1900 = !DILocation(line: 477, column: 9, scope: !1840)
!1901 = !DILocation(line: 479, column: 5, scope: !573)
!1902 = !DILocation(line: 365, column: 29, scope: !641)
!1903 = !DILocation(line: 365, column: 41, scope: !641)
!1904 = !DILocation(line: 365, column: 56, scope: !641)
!1905 = !DILocation(line: 369, column: 5, scope: !641)
!1906 = !DILocation(line: 369, column: 21, scope: !641)
!1907 = !DILocation(line: 369, column: 45, scope: !641)
!1908 = !DILocation(line: 369, column: 28, scope: !641)
!1909 = !DILocation(line: 370, column: 5, scope: !641)
!1910 = !DILocation(line: 370, column: 20, scope: !641)
!1911 = !DILocation(line: 371, column: 5, scope: !641)
!1912 = !DILocation(line: 371, column: 22, scope: !641)
!1913 = !DILocation(line: 379, column: 5, scope: !641)
!1914 = !DILocation(line: 379, column: 15, scope: !641)
!1915 = !DILocation(line: 379, column: 27, scope: !641)
!1916 = !DILocation(line: 379, column: 40, scope: !641)
!1917 = !DILocation(line: 380, column: 5, scope: !641)
!1918 = !DILocation(line: 382, column: 26, scope: !641)
!1919 = !DILocation(line: 382, column: 32, scope: !641)
!1920 = !DILocation(line: 382, column: 17, scope: !641)
!1921 = !DILocation(line: 382, column: 15, scope: !641)
!1922 = !DILocation(line: 383, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !641, file: !352, line: 383, column: 9)
!1924 = !DILocation(line: 383, column: 19, scope: !1923)
!1925 = !DILocation(line: 383, column: 9, scope: !641)
!1926 = !DILocation(line: 384, column: 38, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !352, line: 383, column: 34)
!1928 = !DILocation(line: 384, column: 44, scope: !1927)
!1929 = !DILocation(line: 384, column: 49, scope: !1927)
!1930 = !DILocation(line: 384, column: 21, scope: !1927)
!1931 = !DILocation(line: 384, column: 19, scope: !1927)
!1932 = !DILocation(line: 385, column: 13, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1927, file: !352, line: 385, column: 13)
!1934 = !DILocation(line: 385, column: 23, scope: !1933)
!1935 = !DILocation(line: 385, column: 13, scope: !1927)
!1936 = !DILocation(line: 386, column: 13, scope: !1933)
!1937 = !DILocation(line: 387, column: 5, scope: !1927)
!1938 = !DILocation(line: 389, column: 16, scope: !641)
!1939 = !DILocation(line: 389, column: 22, scope: !641)
!1940 = !DILocation(line: 389, column: 14, scope: !641)
!1941 = !DILocation(line: 390, column: 9, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !641, file: !352, line: 390, column: 9)
!1943 = !DILocation(line: 390, column: 9, scope: !641)
!1944 = !DILocation(line: 391, column: 41, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !352, line: 390, column: 19)
!1946 = !DILocation(line: 391, column: 51, scope: !1945)
!1947 = !DILocation(line: 391, column: 9, scope: !1945)
!1948 = !DILocation(line: 391, column: 15, scope: !1945)
!1949 = !DILocation(line: 391, column: 39, scope: !1945)
!1950 = !DILocation(line: 392, column: 5, scope: !1945)
!1951 = !DILocation(line: 396, column: 13, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1942, file: !352, line: 393, column: 10)
!1953 = !DILocation(line: 395, column: 20, scope: !1952)
!1954 = !DILocation(line: 395, column: 18, scope: !1952)
!1955 = !DILocation(line: 397, column: 13, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !352, line: 397, column: 13)
!1957 = !DILocation(line: 397, column: 22, scope: !1956)
!1958 = !DILocation(line: 397, column: 13, scope: !1952)
!1959 = !DILocation(line: 398, column: 13, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !352, line: 397, column: 37)
!1961 = !DILocation(line: 398, column: 19, scope: !1960)
!1962 = !DILocation(line: 398, column: 25, scope: !1960)
!1963 = !DILocation(line: 399, column: 13, scope: !1960)
!1964 = !DILocation(line: 402, column: 17, scope: !641)
!1965 = !DILocation(line: 402, column: 23, scope: !641)
!1966 = !DILocation(line: 402, column: 33, scope: !641)
!1967 = !DILocation(line: 402, column: 5, scope: !641)
!1968 = !DILocation(line: 405, column: 19, scope: !641)
!1969 = !DILocation(line: 405, column: 30, scope: !641)
!1970 = !DILocation(line: 405, column: 42, scope: !641)
!1971 = !DILocation(line: 405, column: 5, scope: !641)
!1972 = !DILocation(line: 406, column: 1, scope: !641)
!1973 = !DILocation(line: 409, column: 29, scope: !715)
!1974 = !DILocation(line: 409, column: 41, scope: !715)
!1975 = !DILocation(line: 412, column: 5, scope: !715)
!1976 = !DILocation(line: 412, column: 21, scope: !715)
!1977 = !DILocation(line: 412, column: 45, scope: !715)
!1978 = !DILocation(line: 412, column: 28, scope: !715)
!1979 = !DILocation(line: 413, column: 5, scope: !715)
!1980 = !DILocation(line: 413, column: 20, scope: !715)
!1981 = !DILocation(line: 414, column: 5, scope: !715)
!1982 = !DILocation(line: 414, column: 22, scope: !715)
!1983 = !DILocation(line: 416, column: 16, scope: !715)
!1984 = !DILocation(line: 416, column: 22, scope: !715)
!1985 = !DILocation(line: 416, column: 14, scope: !715)
!1986 = !DILocation(line: 417, column: 9, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !715, file: !352, line: 417, column: 9)
!1988 = !DILocation(line: 417, column: 18, scope: !1987)
!1989 = !DILocation(line: 417, column: 9, scope: !715)
!1990 = !DILocation(line: 418, column: 9, scope: !1987)
!1991 = !DILocation(line: 419, column: 26, scope: !715)
!1992 = !DILocation(line: 419, column: 32, scope: !715)
!1993 = !DILocation(line: 419, column: 17, scope: !715)
!1994 = !DILocation(line: 419, column: 15, scope: !715)
!1995 = !DILocation(line: 420, column: 9, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !715, file: !352, line: 420, column: 9)
!1997 = !DILocation(line: 420, column: 9, scope: !715)
!1998 = !DILocation(line: 421, column: 14, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !352, line: 420, column: 20)
!2000 = !DILocation(line: 421, column: 20, scope: !1999)
!2001 = !DILocation(line: 421, column: 30, scope: !1999)
!2002 = !DILocation(line: 421, column: 9, scope: !1999)
!2003 = !DILocation(line: 422, column: 5, scope: !1999)
!2004 = !DILocation(line: 424, column: 40, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1996, file: !352, line: 423, column: 10)
!2006 = !DILocation(line: 424, column: 50, scope: !2005)
!2007 = !DILocation(line: 424, column: 9, scope: !2005)
!2008 = !DILocation(line: 424, column: 15, scope: !2005)
!2009 = !DILocation(line: 424, column: 38, scope: !2005)
!2010 = !DILocation(line: 427, column: 26, scope: !715)
!2011 = !DILocation(line: 427, column: 32, scope: !715)
!2012 = !DILocation(line: 427, column: 5, scope: !715)
!2013 = !DILocation(line: 427, column: 15, scope: !715)
!2014 = !DILocation(line: 427, column: 24, scope: !715)
!2015 = !DILocation(line: 428, column: 37, scope: !715)
!2016 = !DILocation(line: 428, column: 5, scope: !715)
!2017 = !DILocation(line: 428, column: 11, scope: !715)
!2018 = !DILocation(line: 428, column: 35, scope: !715)
!2019 = !DILocation(line: 429, column: 1, scope: !715)
!2020 = !DILocation(line: 429, column: 1, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !715, file: !352, discriminator: 1)
!2022 = !DILocation(line: 251, column: 26, scope: !654)
!2023 = !DILocation(line: 251, column: 38, scope: !654)
!2024 = !DILocation(line: 253, column: 47, scope: !654)
!2025 = !DILocation(line: 253, column: 53, scope: !654)
!2026 = !DILocation(line: 253, column: 70, scope: !654)
!2027 = !DILocation(line: 253, column: 29, scope: !654)
!2028 = !DILocation(line: 253, column: 12, scope: !654)
!2029 = !DILocation(line: 253, column: 5, scope: !654)
!2030 = !DILocation(line: 223, column: 34, scope: !660)
!2031 = !DILocation(line: 223, column: 46, scope: !660)
!2032 = !DILocation(line: 223, column: 61, scope: !660)
!2033 = !DILocation(line: 225, column: 5, scope: !660)
!2034 = !DILocation(line: 225, column: 20, scope: !660)
!2035 = !DILocation(line: 226, column: 29, scope: !660)
!2036 = !DILocation(line: 226, column: 12, scope: !660)
!2037 = !DILocation(line: 226, column: 10, scope: !660)
!2038 = !DILocation(line: 227, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !660, file: !352, line: 227, column: 9)
!2040 = !DILocation(line: 227, column: 14, scope: !2039)
!2041 = !DILocation(line: 227, column: 9, scope: !660)
!2042 = !DILocation(line: 228, column: 9, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !352, line: 227, column: 29)
!2044 = !DILocation(line: 228, column: 15, scope: !2043)
!2045 = !DILocation(line: 228, column: 21, scope: !2043)
!2046 = !DILocation(line: 229, column: 9, scope: !2043)
!2047 = !DILocation(line: 231, column: 32, scope: !660)
!2048 = !DILocation(line: 231, column: 15, scope: !660)
!2049 = !DILocation(line: 231, column: 13, scope: !660)
!2050 = !DILocation(line: 232, column: 9, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !660, file: !352, line: 232, column: 9)
!2052 = !DILocation(line: 232, column: 17, scope: !2051)
!2053 = !DILocation(line: 232, column: 9, scope: !660)
!2054 = !DILocation(line: 233, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !352, line: 232, column: 32)
!2056 = !DILocation(line: 234, column: 20, scope: !2055)
!2057 = !DILocation(line: 234, column: 9, scope: !2055)
!2058 = !DILocation(line: 235, column: 9, scope: !2055)
!2059 = !DILocation(line: 235, column: 15, scope: !2055)
!2060 = !DILocation(line: 235, column: 21, scope: !2055)
!2061 = !DILocation(line: 236, column: 9, scope: !2055)
!2062 = !DILocation(line: 238, column: 24, scope: !660)
!2063 = !DILocation(line: 238, column: 5, scope: !660)
!2064 = !DILocation(line: 238, column: 11, scope: !660)
!2065 = !DILocation(line: 238, column: 18, scope: !660)
!2066 = !DILocation(line: 238, column: 22, scope: !660)
!2067 = !{!1196, !846, i64 0}
!2068 = !DILocation(line: 239, column: 21, scope: !660)
!2069 = !DILocation(line: 239, column: 5, scope: !660)
!2070 = !DILocation(line: 239, column: 11, scope: !660)
!2071 = !DILocation(line: 239, column: 19, scope: !660)
!2072 = !DILocation(line: 240, column: 5, scope: !660)
!2073 = !DILocation(line: 240, column: 11, scope: !660)
!2074 = !DILocation(line: 240, column: 14, scope: !660)
!2075 = !DILocation(line: 241, column: 5, scope: !660)
!2076 = !DILocation(line: 241, column: 11, scope: !660)
!2077 = !DILocation(line: 241, column: 14, scope: !660)
!2078 = !DILocation(line: 242, column: 5, scope: !660)
!2079 = !DILocation(line: 242, column: 11, scope: !660)
!2080 = !DILocation(line: 242, column: 21, scope: !660)
!2081 = !DILocation(line: 243, column: 5, scope: !660)
!2082 = !DILocation(line: 243, column: 11, scope: !660)
!2083 = !DILocation(line: 243, column: 30, scope: !660)
!2084 = !DILocation(line: 244, column: 5, scope: !660)
!2085 = !DILocation(line: 244, column: 11, scope: !660)
!2086 = !DILocation(line: 244, column: 26, scope: !660)
!2087 = !DILocation(line: 245, column: 5, scope: !660)
!2088 = !DILocation(line: 245, column: 11, scope: !660)
!2089 = !DILocation(line: 245, column: 17, scope: !660)
!2090 = !DILocation(line: 246, column: 23, scope: !660)
!2091 = !DILocation(line: 246, column: 29, scope: !660)
!2092 = !DILocation(line: 246, column: 47, scope: !660)
!2093 = !DILocation(line: 246, column: 53, scope: !660)
!2094 = !DILocation(line: 246, column: 5, scope: !660)
!2095 = !DILocation(line: 247, column: 12, scope: !660)
!2096 = !DILocation(line: 247, column: 5, scope: !660)
!2097 = !DILocation(line: 248, column: 1, scope: !660)
!2098 = !DILocation(line: 316, column: 29, scope: !700)
!2099 = !DILocation(line: 316, column: 52, scope: !700)
!2100 = !DILocation(line: 316, column: 73, scope: !700)
!2101 = !DILocation(line: 318, column: 22, scope: !700)
!2102 = !DILocation(line: 318, column: 5, scope: !700)
!2103 = !DILocation(line: 318, column: 11, scope: !700)
!2104 = !DILocation(line: 318, column: 20, scope: !700)
!2105 = !DILocation(line: 319, column: 5, scope: !700)
!2106 = !DILocation(line: 319, column: 11, scope: !700)
!2107 = !DILocation(line: 319, column: 16, scope: !700)
!2108 = !DILocation(line: 320, column: 22, scope: !700)
!2109 = !DILocation(line: 320, column: 28, scope: !700)
!2110 = !DILocation(line: 320, column: 5, scope: !700)
!2111 = !DILocation(line: 320, column: 11, scope: !700)
!2112 = !DILocation(line: 320, column: 20, scope: !700)
!2113 = !DILocation(line: 321, column: 36, scope: !700)
!2114 = !DILocation(line: 321, column: 5, scope: !700)
!2115 = !DILocation(line: 321, column: 11, scope: !700)
!2116 = !DILocation(line: 321, column: 34, scope: !700)
!2117 = !DILocation(line: 322, column: 7, scope: !700)
!2118 = !DILocation(line: 322, column: 14, scope: !700)
!2119 = !DILocation(line: 322, column: 5, scope: !700)
!2120 = !DILocation(line: 323, column: 10, scope: !707)
!2121 = !DILocation(line: 323, column: 16, scope: !707)
!2122 = !DILocation(line: 323, column: 22, scope: !707)
!2123 = !DILocation(line: 323, column: 31, scope: !707)
!2124 = !DILocation(line: 323, column: 34, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !707, file: !352, discriminator: 1)
!2126 = !DILocation(line: 323, column: 40, scope: !707)
!2127 = !DILocation(line: 323, column: 34, scope: !707)
!2128 = !DILocation(line: 323, column: 9, scope: !700)
!2129 = !DILocation(line: 325, column: 9, scope: !706)
!2130 = !DILocation(line: 325, column: 24, scope: !706)
!2131 = !DILocation(line: 325, column: 33, scope: !706)
!2132 = !DILocation(line: 325, column: 39, scope: !706)
!2133 = !DILocation(line: 325, column: 49, scope: !706)
!2134 = !DILocation(line: 326, column: 9, scope: !706)
!2135 = !DILocation(line: 326, column: 27, scope: !706)
!2136 = !DILocation(line: 326, column: 50, scope: !706)
!2137 = !DILocation(line: 326, column: 56, scope: !706)
!2138 = !DILocation(line: 326, column: 64, scope: !706)
!2139 = !DILocation(line: 326, column: 38, scope: !706)
!2140 = !DILocation(line: 327, column: 13, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !706, file: !352, line: 327, column: 13)
!2142 = !DILocation(line: 327, column: 22, scope: !2141)
!2143 = !DILocation(line: 327, column: 13, scope: !706)
!2144 = !DILocation(line: 328, column: 36, scope: !2141)
!2145 = !DILocation(line: 328, column: 42, scope: !2141)
!2146 = !DILocation(line: 328, column: 50, scope: !2141)
!2147 = !DILocation(line: 328, column: 24, scope: !2141)
!2148 = !DILocation(line: 328, column: 22, scope: !2141)
!2149 = !DILocation(line: 328, column: 13, scope: !2141)
!2150 = !DILocation(line: 329, column: 13, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !706, file: !352, line: 329, column: 13)
!2152 = !DILocation(line: 329, column: 13, scope: !706)
!2153 = !DILocation(line: 330, column: 15, scope: !2151)
!2154 = !DILocation(line: 330, column: 25, scope: !2151)
!2155 = !DILocation(line: 330, column: 13, scope: !2151)
!2156 = !DILocation(line: 331, column: 5, scope: !707)
!2157 = !DILocation(line: 331, column: 5, scope: !706)
!2158 = !DILocation(line: 332, column: 18, scope: !700)
!2159 = !DILocation(line: 332, column: 25, scope: !700)
!2160 = !DILocation(line: 332, column: 17, scope: !700)
!2161 = !DILocation(line: 332, column: 59, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !700, file: !352, discriminator: 1)
!2163 = !DILocation(line: 332, column: 41, scope: !700)
!2164 = !DILocation(line: 332, column: 67, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !700, file: !352, discriminator: 2)
!2166 = !DILocation(line: 332, column: 5, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !352, discriminator: 4)
!2168 = !DILexicalBlockFile(scope: !700, file: !352, discriminator: 3)
!2169 = !DILocation(line: 332, column: 11, scope: !700)
!2170 = !DILocation(line: 332, column: 14, scope: !700)
!2171 = !DILocation(line: 333, column: 1, scope: !700)
!2172 = !DILocation(line: 160, column: 28, scope: !668)
!2173 = !DILocation(line: 162, column: 5, scope: !668)
!2174 = !DILocation(line: 162, column: 24, scope: !668)
!2175 = !DILocation(line: 163, column: 25, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !668, file: !352, line: 163, column: 9)
!2177 = !DILocation(line: 163, column: 32, scope: !2176)
!2178 = !DILocation(line: 163, column: 41, scope: !2176)
!2179 = !DILocation(line: 163, column: 9, scope: !668)
!2180 = !DILocation(line: 164, column: 25, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !352, line: 163, column: 64)
!2182 = !DILocation(line: 164, column: 32, scope: !2181)
!2183 = !DILocation(line: 164, column: 41, scope: !2181)
!2184 = !DILocation(line: 165, column: 16, scope: !2181)
!2185 = !DILocation(line: 165, column: 9, scope: !2181)
!2186 = !DILocation(line: 170, column: 31, scope: !668)
!2187 = !DILocation(line: 170, column: 10, scope: !668)
!2188 = !DILocation(line: 170, column: 8, scope: !668)
!2189 = !DILocation(line: 172, column: 9, scope: !674)
!2190 = !DILocation(line: 172, column: 13, scope: !674)
!2191 = !{!1874, !846, i64 24}
!2192 = !DILocation(line: 172, column: 20, scope: !674)
!2193 = !DILocation(line: 172, column: 9, scope: !668)
!2194 = !DILocation(line: 174, column: 9, scope: !673)
!2195 = !DILocation(line: 174, column: 19, scope: !673)
!2196 = !DILocation(line: 174, column: 25, scope: !673)
!2197 = !DILocation(line: 174, column: 29, scope: !673)
!2198 = !{!1874, !846, i64 32}
!2199 = !DILocation(line: 175, column: 9, scope: !673)
!2200 = !DILocation(line: 175, column: 19, scope: !673)
!2201 = !DILocation(line: 176, column: 13, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !673, file: !352, line: 176, column: 13)
!2203 = !DILocation(line: 176, column: 17, scope: !2202)
!2204 = !DILocation(line: 176, column: 13, scope: !673)
!2205 = !DILocation(line: 177, column: 34, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !352, line: 177, column: 17)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !352, line: 176, column: 32)
!2208 = !DILocation(line: 177, column: 41, scope: !2206)
!2209 = !DILocation(line: 177, column: 52, scope: !2206)
!2210 = !{!940, !884, i64 168}
!2211 = !DILocation(line: 177, column: 61, scope: !2206)
!2212 = !DILocation(line: 177, column: 78, scope: !2206)
!2213 = !DILocation(line: 177, column: 17, scope: !2207)
!2214 = !DILocation(line: 178, column: 27, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2206, file: !352, line: 177, column: 85)
!2216 = !DILocation(line: 178, column: 25, scope: !2215)
!2217 = !DILocation(line: 179, column: 33, scope: !2215)
!2218 = !DILocation(line: 179, column: 44, scope: !2215)
!2219 = !DILocation(line: 179, column: 53, scope: !2215)
!2220 = !DILocation(line: 180, column: 13, scope: !2215)
!2221 = !DILocation(line: 181, column: 37, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2206, file: !352, line: 181, column: 22)
!2223 = !DILocation(line: 181, column: 44, scope: !2222)
!2224 = !DILocation(line: 181, column: 53, scope: !2222)
!2225 = !DILocation(line: 181, column: 73, scope: !2222)
!2226 = !DILocation(line: 181, column: 107, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2222, file: !352, discriminator: 1)
!2228 = !DILocation(line: 181, column: 114, scope: !2222)
!2229 = !DILocation(line: 181, column: 76, scope: !2222)
!2230 = !DILocation(line: 181, column: 22, scope: !2206)
!2231 = !DILocation(line: 182, column: 50, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2222, file: !352, line: 181, column: 144)
!2233 = !DILocation(line: 182, column: 27, scope: !2232)
!2234 = !DILocation(line: 182, column: 25, scope: !2232)
!2235 = !DILocation(line: 183, column: 21, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !352, line: 183, column: 21)
!2237 = !DILocation(line: 183, column: 29, scope: !2236)
!2238 = !DILocation(line: 183, column: 21, scope: !2232)
!2239 = !DILocation(line: 184, column: 21, scope: !2236)
!2240 = !DILocation(line: 185, column: 13, scope: !2232)
!2241 = !DILocation(line: 186, column: 9, scope: !2207)
!2242 = !DILocation(line: 187, column: 13, scope: !680)
!2243 = !DILocation(line: 187, column: 21, scope: !680)
!2244 = !DILocation(line: 187, column: 13, scope: !673)
!2245 = !DILocation(line: 188, column: 50, scope: !678)
!2246 = !DILocation(line: 188, column: 17, scope: !678)
!2247 = !DILocation(line: 188, column: 71, scope: !678)
!2248 = !DILocation(line: 188, column: 17, scope: !679)
!2249 = !DILocation(line: 189, column: 17, scope: !677)
!2250 = !DILocation(line: 189, column: 27, scope: !677)
!2251 = !DILocation(line: 190, column: 58, scope: !677)
!2252 = !DILocation(line: 191, column: 47, scope: !677)
!2253 = !DILocation(line: 191, column: 51, scope: !677)
!2254 = !DILocation(line: 191, column: 57, scope: !677)
!2255 = !{!2256, !846, i64 0}
!2256 = !{!"PyMethodDef", !846, i64 0, !846, i64 8, !867, i64 16, !846, i64 24}
!2257 = !DILocation(line: 190, column: 26, scope: !677)
!2258 = !DILocation(line: 190, column: 24, scope: !677)
!2259 = !DILocation(line: 192, column: 17, scope: !677)
!2260 = !DILocation(line: 192, column: 22, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !682, file: !352, discriminator: 1)
!2262 = !DILocation(line: 192, column: 32, scope: !682)
!2263 = !DILocation(line: 192, column: 62, scope: !682)
!2264 = !DILocation(line: 192, column: 80, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !682, file: !352, line: 192, column: 77)
!2266 = !DILocation(line: 192, column: 97, scope: !2265)
!2267 = !DILocation(line: 192, column: 77, scope: !2265)
!2268 = !DILocation(line: 192, column: 107, scope: !2265)
!2269 = !DILocation(line: 192, column: 77, scope: !682)
!2270 = !DILocation(line: 192, column: 77, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !682, file: !352, discriminator: 2)
!2272 = !DILocation(line: 192, column: 138, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2265, file: !352, discriminator: 3)
!2274 = !DILocation(line: 192, column: 156, scope: !2265)
!2275 = !DILocation(line: 192, column: 166, scope: !2265)
!2276 = !DILocation(line: 192, column: 191, scope: !2265)
!2277 = !DILocation(line: 192, column: 122, scope: !2265)
!2278 = !DILocation(line: 192, column: 210, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !677, file: !352, discriminator: 4)
!2280 = !DILocation(line: 192, column: 210, scope: !682)
!2281 = !DILocation(line: 192, column: 210, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !682, file: !352, discriminator: 5)
!2283 = !DILocation(line: 193, column: 24, scope: !677)
!2284 = !DILocation(line: 193, column: 17, scope: !677)
!2285 = !DILocation(line: 194, column: 13, scope: !678)
!2286 = !DILocation(line: 195, column: 13, scope: !679)
!2287 = !DILocation(line: 195, column: 18, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !684, file: !352, discriminator: 1)
!2289 = !DILocation(line: 195, column: 28, scope: !684)
!2290 = !DILocation(line: 195, column: 58, scope: !684)
!2291 = !DILocation(line: 195, column: 76, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !684, file: !352, line: 195, column: 73)
!2293 = !DILocation(line: 195, column: 93, scope: !2292)
!2294 = !DILocation(line: 195, column: 73, scope: !2292)
!2295 = !DILocation(line: 195, column: 103, scope: !2292)
!2296 = !DILocation(line: 195, column: 73, scope: !684)
!2297 = !DILocation(line: 195, column: 73, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !684, file: !352, discriminator: 2)
!2299 = !DILocation(line: 195, column: 134, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2292, file: !352, discriminator: 3)
!2301 = !DILocation(line: 195, column: 152, scope: !2292)
!2302 = !DILocation(line: 195, column: 162, scope: !2292)
!2303 = !DILocation(line: 195, column: 187, scope: !2292)
!2304 = !DILocation(line: 195, column: 118, scope: !2292)
!2305 = !DILocation(line: 195, column: 206, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !679, file: !352, discriminator: 4)
!2307 = !DILocation(line: 195, column: 206, scope: !684)
!2308 = !DILocation(line: 195, column: 206, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !684, file: !352, discriminator: 5)
!2310 = !DILocation(line: 196, column: 9, scope: !679)
!2311 = !DILocation(line: 197, column: 45, scope: !673)
!2312 = !DILocation(line: 197, column: 49, scope: !673)
!2313 = !DILocation(line: 197, column: 55, scope: !673)
!2314 = !DILocation(line: 197, column: 16, scope: !673)
!2315 = !DILocation(line: 197, column: 9, scope: !673)
!2316 = !DILocation(line: 198, column: 5, scope: !674)
!2317 = !DILocation(line: 203, column: 9, scope: !686)
!2318 = !DILocation(line: 203, column: 19, scope: !686)
!2319 = !DILocation(line: 203, column: 26, scope: !686)
!2320 = !DILocation(line: 203, column: 30, scope: !686)
!2321 = !DILocation(line: 204, column: 9, scope: !686)
!2322 = !DILocation(line: 204, column: 19, scope: !686)
!2323 = !DILocation(line: 204, column: 47, scope: !686)
!2324 = !DILocation(line: 204, column: 51, scope: !686)
!2325 = !DILocation(line: 204, column: 57, scope: !686)
!2326 = !DILocation(line: 204, column: 26, scope: !686)
!2327 = !DILocation(line: 205, column: 13, scope: !690)
!2328 = !DILocation(line: 205, column: 18, scope: !690)
!2329 = !DILocation(line: 205, column: 13, scope: !686)
!2330 = !DILocation(line: 206, column: 13, scope: !689)
!2331 = !DILocation(line: 206, column: 23, scope: !689)
!2332 = !DILocation(line: 206, column: 57, scope: !689)
!2333 = !DILocation(line: 206, column: 65, scope: !689)
!2334 = !DILocation(line: 206, column: 75, scope: !689)
!2335 = !DILocation(line: 206, column: 28, scope: !689)
!2336 = !DILocation(line: 207, column: 13, scope: !689)
!2337 = !DILocation(line: 207, column: 18, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !692, file: !352, discriminator: 1)
!2339 = !DILocation(line: 207, column: 28, scope: !692)
!2340 = !DILocation(line: 207, column: 59, scope: !692)
!2341 = !DILocation(line: 207, column: 68, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !692, file: !352, line: 207, column: 68)
!2343 = !DILocation(line: 207, column: 84, scope: !2342)
!2344 = !DILocation(line: 207, column: 68, scope: !692)
!2345 = !DILocation(line: 207, column: 115, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2342, file: !352, discriminator: 2)
!2347 = !DILocation(line: 207, column: 134, scope: !2342)
!2348 = !DILocation(line: 207, column: 143, scope: !2342)
!2349 = !DILocation(line: 207, column: 99, scope: !2342)
!2350 = !DILocation(line: 207, column: 148, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2352, file: !352, discriminator: 4)
!2352 = !DILexicalBlockFile(scope: !689, file: !352, discriminator: 3)
!2353 = !DILocation(line: 207, column: 148, scope: !692)
!2354 = !DILocation(line: 207, column: 148, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !692, file: !352, discriminator: 5)
!2356 = !DILocation(line: 208, column: 13, scope: !689)
!2357 = !DILocation(line: 208, column: 18, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !694, file: !352, discriminator: 1)
!2359 = !DILocation(line: 208, column: 28, scope: !694)
!2360 = !DILocation(line: 208, column: 58, scope: !694)
!2361 = !DILocation(line: 208, column: 73, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !694, file: !352, line: 208, column: 70)
!2363 = !DILocation(line: 208, column: 90, scope: !2362)
!2364 = !DILocation(line: 208, column: 70, scope: !2362)
!2365 = !DILocation(line: 208, column: 100, scope: !2362)
!2366 = !DILocation(line: 208, column: 70, scope: !694)
!2367 = !DILocation(line: 208, column: 70, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !694, file: !352, discriminator: 2)
!2369 = !DILocation(line: 208, column: 131, scope: !2370)
!2370 = !DILexicalBlockFile(scope: !2362, file: !352, discriminator: 3)
!2371 = !DILocation(line: 208, column: 149, scope: !2362)
!2372 = !DILocation(line: 208, column: 159, scope: !2362)
!2373 = !DILocation(line: 208, column: 184, scope: !2362)
!2374 = !DILocation(line: 208, column: 115, scope: !2362)
!2375 = !DILocation(line: 208, column: 203, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !689, file: !352, discriminator: 4)
!2377 = !DILocation(line: 208, column: 203, scope: !694)
!2378 = !DILocation(line: 208, column: 203, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !694, file: !352, discriminator: 5)
!2380 = !DILocation(line: 209, column: 17, scope: !697)
!2381 = !DILocation(line: 209, column: 20, scope: !697)
!2382 = !DILocation(line: 209, column: 17, scope: !689)
!2383 = !DILocation(line: 210, column: 17, scope: !696)
!2384 = !DILocation(line: 210, column: 27, scope: !696)
!2385 = !DILocation(line: 210, column: 47, scope: !696)
!2386 = !DILocation(line: 210, column: 33, scope: !696)
!2387 = !DILocation(line: 211, column: 17, scope: !696)
!2388 = !DILocation(line: 211, column: 22, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !699, file: !352, discriminator: 1)
!2390 = !DILocation(line: 211, column: 32, scope: !699)
!2391 = !DILocation(line: 211, column: 62, scope: !699)
!2392 = !DILocation(line: 211, column: 75, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !699, file: !352, line: 211, column: 72)
!2394 = !DILocation(line: 211, column: 92, scope: !2393)
!2395 = !DILocation(line: 211, column: 72, scope: !2393)
!2396 = !DILocation(line: 211, column: 102, scope: !2393)
!2397 = !DILocation(line: 211, column: 72, scope: !699)
!2398 = !DILocation(line: 211, column: 72, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !699, file: !352, discriminator: 2)
!2400 = !DILocation(line: 211, column: 133, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2393, file: !352, discriminator: 3)
!2402 = !DILocation(line: 211, column: 151, scope: !2393)
!2403 = !DILocation(line: 211, column: 161, scope: !2393)
!2404 = !DILocation(line: 211, column: 186, scope: !2393)
!2405 = !DILocation(line: 211, column: 117, scope: !2393)
!2406 = !DILocation(line: 211, column: 205, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !696, file: !352, discriminator: 4)
!2408 = !DILocation(line: 211, column: 205, scope: !699)
!2409 = !DILocation(line: 211, column: 205, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !699, file: !352, discriminator: 5)
!2411 = !DILocation(line: 212, column: 21, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !696, file: !352, line: 212, column: 21)
!2413 = !DILocation(line: 212, column: 25, scope: !2412)
!2414 = !DILocation(line: 212, column: 21, scope: !696)
!2415 = !DILocation(line: 213, column: 28, scope: !2412)
!2416 = !DILocation(line: 213, column: 21, scope: !2412)
!2417 = !DILocation(line: 214, column: 13, scope: !697)
!2418 = !DILocation(line: 214, column: 13, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !697, file: !352, discriminator: 1)
!2420 = !DILocation(line: 214, column: 13, scope: !696)
!2421 = !DILocation(line: 215, column: 9, scope: !690)
!2422 = !DILocation(line: 215, column: 9, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !690, file: !352, discriminator: 1)
!2424 = !DILocation(line: 215, column: 9, scope: !689)
!2425 = !DILocation(line: 216, column: 9, scope: !686)
!2426 = !DILocation(line: 218, column: 37, scope: !686)
!2427 = !DILocation(line: 218, column: 41, scope: !686)
!2428 = !DILocation(line: 218, column: 47, scope: !686)
!2429 = !DILocation(line: 217, column: 16, scope: !686)
!2430 = !DILocation(line: 217, column: 9, scope: !686)
!2431 = !DILocation(line: 219, column: 5, scope: !674)
!2432 = !DILocation(line: 220, column: 1, scope: !668)
!2433 = !DILocation(line: 264, column: 29, scope: !709)
!2434 = !DILocation(line: 264, column: 50, scope: !709)
!2435 = !DILocation(line: 264, column: 73, scope: !709)
!2436 = !DILocation(line: 266, column: 5, scope: !709)
!2437 = !DILocation(line: 266, column: 23, scope: !709)
!2438 = !DILocation(line: 267, column: 32, scope: !709)
!2439 = !DILocation(line: 267, column: 12, scope: !709)
!2440 = !DILocation(line: 267, column: 10, scope: !709)
!2441 = !DILocation(line: 268, column: 9, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !709, file: !352, line: 268, column: 9)
!2443 = !DILocation(line: 268, column: 14, scope: !2442)
!2444 = !DILocation(line: 268, column: 9, scope: !709)
!2445 = !DILocation(line: 269, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !352, line: 268, column: 29)
!2447 = !DILocation(line: 269, column: 15, scope: !2446)
!2448 = !DILocation(line: 269, column: 21, scope: !2446)
!2449 = !DILocation(line: 270, column: 9, scope: !2446)
!2450 = !DILocation(line: 272, column: 32, scope: !709)
!2451 = !DILocation(line: 272, column: 24, scope: !709)
!2452 = !DILocation(line: 272, column: 5, scope: !709)
!2453 = !DILocation(line: 272, column: 11, scope: !709)
!2454 = !DILocation(line: 272, column: 18, scope: !709)
!2455 = !DILocation(line: 272, column: 22, scope: !709)
!2456 = !DILocation(line: 273, column: 5, scope: !709)
!2457 = !DILocation(line: 273, column: 11, scope: !709)
!2458 = !DILocation(line: 273, column: 14, scope: !709)
!2459 = !DILocation(line: 274, column: 5, scope: !709)
!2460 = !DILocation(line: 274, column: 11, scope: !709)
!2461 = !DILocation(line: 274, column: 14, scope: !709)
!2462 = !DILocation(line: 275, column: 5, scope: !709)
!2463 = !DILocation(line: 275, column: 11, scope: !709)
!2464 = !DILocation(line: 275, column: 21, scope: !709)
!2465 = !DILocation(line: 276, column: 5, scope: !709)
!2466 = !DILocation(line: 276, column: 11, scope: !709)
!2467 = !DILocation(line: 276, column: 30, scope: !709)
!2468 = !DILocation(line: 277, column: 5, scope: !709)
!2469 = !DILocation(line: 277, column: 11, scope: !709)
!2470 = !DILocation(line: 277, column: 26, scope: !709)
!2471 = !DILocation(line: 278, column: 23, scope: !709)
!2472 = !DILocation(line: 278, column: 31, scope: !709)
!2473 = !DILocation(line: 278, column: 39, scope: !709)
!2474 = !DILocation(line: 278, column: 45, scope: !709)
!2475 = !DILocation(line: 278, column: 5, scope: !709)
!2476 = !DILocation(line: 279, column: 12, scope: !709)
!2477 = !DILocation(line: 279, column: 5, scope: !709)
!2478 = !DILocation(line: 280, column: 1, scope: !709)
