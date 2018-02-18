; ModuleID = './gcmodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_generation = type { %union._gc_head, i32, i32 }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
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
%struct.gc_generation_stats = type { i64, i64, i64 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct._PyWeakReference = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._PyWeakReference*, %struct._PyWeakReference* }

@generations = internal global [3 x %struct.gc_generation] [%struct.gc_generation { %union._gc_head { %struct.anon { %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i32 0, i32 0), %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i32 0, i32 0), i64 0 } }, i32 700, i32 0 }, %struct.gc_generation { %union._gc_head { %struct.anon { %union._gc_head* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.gc_generation]* @generations to i8*), i64 32) to %union._gc_head*), %union._gc_head* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.gc_generation]* @generations to i8*), i64 32) to %union._gc_head*), i64 0 } }, i32 10, i32 0 }, %struct.gc_generation { %union._gc_head { %struct.anon { %union._gc_head* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.gc_generation]* @generations to i8*), i64 64) to %union._gc_head*), %union._gc_head* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.gc_generation]* @generations to i8*), i64 64) to %union._gc_head*), i64 0 } }, i32 10, i32 0 }], align 16
@_PyGC_generation0 = global %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i32 0, i32 0), align 8
@gcmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([876 x i8], [876 x i8]* @gc__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([15 x %struct.PyMethodDef], [15 x %struct.PyMethodDef]* @GcMethods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@garbage = internal global %struct._object* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@callbacks = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"callbacks\00", align 1
@tmod = internal global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"DEBUG_STATS\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"DEBUG_COLLECTABLE\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"DEBUG_UNCOLLECTABLE\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"DEBUG_SAVEALL\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DEBUG_LEAK\00", align 1
@collecting = internal global i32 0, align 4
@debug = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"gc: %zd uncollectable objects at shutdown\00", align 1
@.str.9 = private unnamed_addr constant [97 x i8] c"gc: %zd uncollectable objects at shutdown; use gc.set_debug(gc.DEBUG_UNCOLLECTABLE) to list them\00", align 1
@PyExc_ResourceWarning = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@enabled = internal global i32 1, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"Modules/gcmodule.c\00", align 1
@gc__doc__ = internal global [876 x i8] c"This module provides access to the garbage collector for reference cycles.\0A\0Aenable() -- Enable automatic garbage collection.\0Adisable() -- Disable automatic garbage collection.\0Aisenabled() -- Returns true if automatic collection is enabled.\0Acollect() -- Do a full collection right now.\0Aget_count() -- Return the current collection counts.\0Aget_stats() -- Return list of dictionaries containing per-generation stats.\0Aset_debug() -- Set debugging flags.\0Aget_debug() -- Get debugging flags.\0Aset_threshold() -- Set the collection thresholds.\0Aget_threshold() -- Return the current the collection thresholds.\0Aget_objects() -- Return a list of all objects tracked by the collector.\0Ais_tracked() -- Returns true if a given object is tracked.\0Aget_referrers() -- Return the list of objects that refer to an object.\0Aget_referents() -- Return the list of objects that an object refers to.\0A\00", align 16
@GcMethods = internal global [15 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_enable, i32 4, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @gc_enable__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_disable, i32 4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @gc_disable__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_isenabled, i32 4, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @gc_isenabled__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_set_debug, i32 1, i8* getelementptr inbounds ([499 x i8], [499 x i8]* @gc_set_debug__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_get_debug, i32 4, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @gc_get_debug__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_get_count, i32 4, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @gc_get_count__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_set_thresh, i32 1, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @gc_set_thresh__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_get_thresh, i32 4, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @gc_get_thresh__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @gc_collect to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([261 x i8], [261 x i8]* @gc_collect__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_get_objects, i32 4, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @gc_get_objects__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_get_stats, i32 4, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @gc_get_stats__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_is_tracked, i32 8, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @gc_is_tracked__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_get_referrers, i32 1, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @gc_get_referrers__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @gc_get_referents, i32 1, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @gc_get_referents__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@gc_enable__doc__ = internal global [56 x i8] c"enable() -> None\0A\0AEnable automatic garbage collection.\0A\00", align 16
@.str.15 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@gc_disable__doc__ = internal global [58 x i8] c"disable() -> None\0A\0ADisable automatic garbage collection.\0A\00", align 16
@.str.16 = private unnamed_addr constant [10 x i8] c"isenabled\00", align 1
@gc_isenabled__doc__ = internal global [81 x i8] c"isenabled() -> status\0A\0AReturns true if automatic garbage collection is enabled.\0A\00", align 16
@.str.17 = private unnamed_addr constant [10 x i8] c"set_debug\00", align 1
@gc_set_debug__doc__ = internal global [499 x i8] c"set_debug(flags) -> None\0A\0ASet the garbage collection debugging flags. Debugging information is\0Awritten to sys.stderr.\0A\0Aflags is an integer and can have the following bits turned on:\0A\0A  DEBUG_STATS - Print statistics during collection.\0A  DEBUG_COLLECTABLE - Print collectable objects found.\0A  DEBUG_UNCOLLECTABLE - Print unreachable but uncollectable objects found.\0A  DEBUG_SAVEALL - Save objects to gc.garbage rather than freeing them.\0A  DEBUG_LEAK - Debug leaking programs (everything but STATS).\0A\00", align 16
@.str.18 = private unnamed_addr constant [10 x i8] c"get_debug\00", align 1
@gc_get_debug__doc__ = internal global [67 x i8] c"get_debug() -> flags\0A\0AGet the garbage collection debugging flags.\0A\00", align 16
@.str.19 = private unnamed_addr constant [10 x i8] c"get_count\00", align 1
@gc_get_count__doc__ = internal global [79 x i8] c"get_count() -> (count0, count1, count2)\0A\0AReturn the current collection counts\0A\00", align 16
@.str.20 = private unnamed_addr constant [14 x i8] c"set_threshold\00", align 1
@gc_set_thresh__doc__ = internal global [143 x i8] c"set_threshold(threshold0, [threshold1, threshold2]) -> None\0A\0ASets the collection thresholds.  Setting threshold0 to zero disables\0Acollection.\0A\00", align 16
@.str.21 = private unnamed_addr constant [14 x i8] c"get_threshold\00", align 1
@gc_get_thresh__doc__ = internal global [99 x i8] c"get_threshold() -> (threshold0, threshold1, threshold2)\0A\0AReturn the current collection thresholds\0A\00", align 16
@.str.22 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@gc_collect__doc__ = internal global [261 x i8] c"collect([generation]) -> n\0A\0AWith no arguments, run a full collection.  The optional argument\0Amay be an integer specifying which generation to collect.  A ValueError\0Ais raised if the generation number is invalid.\0A\0AThe number of unreachable objects is returned.\0A\00", align 16
@.str.23 = private unnamed_addr constant [12 x i8] c"get_objects\00", align 1
@gc_get_objects__doc__ = internal global [106 x i8] c"get_objects() -> [...]\0A\0AReturn a list of objects tracked by the collector (excluding the list\0Areturned).\0A\00", align 16
@.str.24 = private unnamed_addr constant [10 x i8] c"get_stats\00", align 1
@gc_get_stats__doc__ = internal global [91 x i8] c"get_stats() -> [...]\0A\0AReturn a list of dictionaries containing per-generation statistics.\0A\00", align 16
@.str.25 = private unnamed_addr constant [11 x i8] c"is_tracked\00", align 1
@gc_is_tracked__doc__ = internal global [131 x i8] c"is_tracked(obj) -> bool\0A\0AReturns true if the object is tracked by the garbage collector.\0ASimple atomic objects will return false.\0A\00", align 16
@.str.26 = private unnamed_addr constant [14 x i8] c"get_referrers\00", align 1
@gc_get_referrers__doc__ = internal global [92 x i8] c"get_referrers(*objs) -> list\0AReturn the list of objects that directly refer to any of objs.\00", align 16
@.str.27 = private unnamed_addr constant [14 x i8] c"get_referents\00", align 1
@gc_get_referents__doc__ = internal global [95 x i8] c"get_referents(*objs) -> list\0AReturn the list of objects that are directly referred to by objs.\00", align 16
@_Py_NoneStruct = external global %struct._object, align 8
@.str.28 = private unnamed_addr constant [12 x i8] c"i:set_debug\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"(iii)\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"i|ii:set_threshold\00", align 1
@gc_collect.keywords = internal global [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* null], align 16
@.str.32 = private unnamed_addr constant [11 x i8] c"generation\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"|i\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.34 = private unnamed_addr constant [19 x i8] c"invalid generation\00", align 1
@generation_stats = internal global [3 x %struct.gc_generation_stats] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [9 x i8] c"{snsnsn}\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"collections\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"collected\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"uncollectable\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.39 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"{sisnsn}\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"sO\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"gc: collecting generation %d...\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"gc: objects in each generation:\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c" %zd\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@long_lived_pending = internal global i64 0, align 8
@long_lived_total = internal global i64 0, align 8
@.str.47 = private unnamed_addr constant [12 x i8] c"collectable\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"gc: done\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"gc: done, %zd unreachable, %zd uncollectable\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c", %.4fs elapsed\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@gc_str = internal global %struct._object* null, align 8
@.str.52 = private unnamed_addr constant [19 x i8] c"garbage collection\00", align 1
@.str.53 = private unnamed_addr constant [47 x i8] c"unexpected exception during garbage collection\00", align 1
@get_time.PyId_time = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct._object* null }, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@PyDict_Type = external global %struct._typeobject, align 8
@.str.54 = private unnamed_addr constant [16 x i8] c"gc: %s <%s %p>\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"gc couldn't create gc.garbage list\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_gc() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @gcmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** @garbage, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call3, %struct._object** @garbage, align 8
  %2 = load %struct._object*, %struct._object** @garbage, align 8
  %cmp4 = icmp eq %struct._object* %2, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %3 = load %struct._object*, %struct._object** @garbage, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %m, align 8
  %6 = load %struct._object*, %struct._object** @garbage, align 8
  %call8 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._object* %6)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** @callbacks, align 8
  %cmp12 = icmp eq %struct._object* %7, null
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.11
  %call14 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call14, %struct._object** @callbacks, align 8
  %8 = load %struct._object*, %struct._object** @callbacks, align 8
  %cmp15 = icmp eq %struct._object* %8, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.11
  %9 = load %struct._object*, %struct._object** @callbacks, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt19, align 8
  %inc20 = add i64 %10, 1
  store i64 %inc20, i64* %ob_refcnt19, align 8
  %11 = load %struct._object*, %struct._object** %m, align 8
  %12 = load %struct._object*, %struct._object** @callbacks, align 8
  %call21 = call i32 @PyModule_AddObject(%struct._object* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct._object* %12)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %13 = load %struct._object*, %struct._object** @tmod, align 8
  %cmp25 = icmp eq %struct._object* %13, null
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.24
  %call27 = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* %call27, %struct._object** @tmod, align 8
  %14 = load %struct._object*, %struct._object** @tmod, align 8
  %cmp28 = icmp eq %struct._object* %14, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  call void @PyErr_Clear()
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.24
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i64 1)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i64 2)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %17 = load %struct._object*, %struct._object** %m, align 8
  %call40 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i64 4)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call44 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i64 32)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.47:                                        ; preds = %if.end.43
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call48 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 38)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.47
  %20 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.50, %if.then.46, %if.then.42, %if.then.38, %if.then.34, %if.then.23, %if.then.16, %if.then.10, %if.then.5, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare void @PyErr_Clear() #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @PyGC_Collect() #0 {
entry:
  %n = alloca i64, align 8
  %0 = load i32, i32* @collecting, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %n, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* @collecting, align 4
  %call = call i64 @collect_with_callback(i32 2)
  store i64 %call, i64* %n, align 8
  store i32 0, i32* @collecting, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i64, i64* %n, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @collect_with_callback(i32 %generation) #0 {
entry:
  %generation.addr = alloca i32, align 4
  %result = alloca i64, align 8
  %collected = alloca i64, align 8
  %uncollectable = alloca i64, align 8
  store i32 %generation, i32* %generation.addr, align 4
  %0 = load i32, i32* %generation.addr, align 4
  call void @invoke_gc_callback(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %0, i64 0, i64 0)
  %1 = load i32, i32* %generation.addr, align 4
  %call = call i64 @collect(i32 %1, i64* %collected, i64* %uncollectable, i32 0)
  store i64 %call, i64* %result, align 8
  %2 = load i32, i32* %generation.addr, align 4
  %3 = load i64, i64* %collected, align 8
  %4 = load i64, i64* %uncollectable, align 8
  call void @invoke_gc_callback(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 %2, i64 %3, i64 %4)
  %5 = load i64, i64* %result, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @_PyGC_CollectNoFail() #0 {
entry:
  %n = alloca i64, align 8
  %0 = load i32, i32* @collecting, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %n, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* @collecting, align 4
  %call = call i64 @collect(i32 2, i64* null, i64* null, i32 1)
  store i64 %call, i64* %n, align 8
  store i32 0, i32* @collecting, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i64, i64* %n, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @collect(i32 %generation, i64* %n_collected, i64* %n_uncollectable, i32 %nofail) #0 {
entry:
  %generation.addr = alloca i32, align 4
  %n_collected.addr = alloca i64*, align 8
  %n_uncollectable.addr = alloca i64*, align 8
  %nofail.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %young = alloca %union._gc_head*, align 8
  %old = alloca %union._gc_head*, align 8
  %unreachable = alloca %union._gc_head, align 8
  %finalizers = alloca %union._gc_head, align 8
  %gc = alloca %union._gc_head*, align 8
  %t1 = alloca double, align 8
  %stats = alloca %struct.gc_generation_stats*, align 8
  %t2 = alloca double, align 8
  store i32 %generation, i32* %generation.addr, align 4
  store i64* %n_collected, i64** %n_collected.addr, align 8
  store i64* %n_uncollectable, i64** %n_uncollectable.addr, align 8
  store i32 %nofail, i32* %nofail.addr, align 4
  store i64 0, i64* %m, align 8
  store i64 0, i64* %n, align 8
  store double 0.000000e+00, double* %t1, align 8
  %0 = load i32, i32* %generation.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* @generation_stats, i32 0, i64 %idxprom
  store %struct.gc_generation_stats* %arrayidx, %struct.gc_generation_stats** %stats, align 8
  %1 = load i32, i32* @debug, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %generation.addr, align 4
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0), i32 %2)
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom1
  %head = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx2, i32 0, i32 0
  %call = call i64 @gc_list_size(%union._gc_head* %head)
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i64 %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call3 = call double @get_time()
  store double %call3, double* %t1, align 8
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %6 = load i32, i32* %generation.addr, align 4
  %add = add i32 %6, 1
  %cmp4 = icmp slt i32 %add, 3
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %generation.addr, align 4
  %add6 = add i32 %7, 1
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom7
  %count = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx8, i32 0, i32 2
  %8 = load i32, i32* %count, align 4
  %add9 = add i32 %8, 1
  store i32 %add9, i32* %count, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.17, %if.end.10
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %generation.addr, align 4
  %cmp12 = icmp sle i32 %9, %10
  br i1 %cmp12, label %for.body.13, label %for.end.19

for.body.13:                                      ; preds = %for.cond.11
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom14
  %count16 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx15, i32 0, i32 2
  store i32 0, i32* %count16, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.13
  %12 = load i32, i32* %i, align 4
  %inc18 = add i32 %12, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.11

for.end.19:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.end.19
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %generation.addr, align 4
  %cmp21 = icmp slt i32 %13, %14
  br i1 %cmp21, label %for.body.22, label %for.end.31

for.body.22:                                      ; preds = %for.cond.20
  %15 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom23
  %head25 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx24, i32 0, i32 0
  %16 = load i32, i32* %generation.addr, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom26
  %head28 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx27, i32 0, i32 0
  call void @gc_list_merge(%union._gc_head* %head25, %union._gc_head* %head28)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.22
  %17 = load i32, i32* %i, align 4
  %inc30 = add i32 %17, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  %18 = load i32, i32* %generation.addr, align 4
  %idxprom32 = sext i32 %18 to i64
  %arrayidx33 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom32
  %head34 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx33, i32 0, i32 0
  store %union._gc_head* %head34, %union._gc_head** %young, align 8
  %19 = load i32, i32* %generation.addr, align 4
  %cmp35 = icmp slt i32 %19, 2
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.end.31
  %20 = load i32, i32* %generation.addr, align 4
  %add37 = add i32 %20, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom38
  %head40 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx39, i32 0, i32 0
  store %union._gc_head* %head40, %union._gc_head** %old, align 8
  br label %if.end.41

if.else:                                          ; preds = %for.end.31
  %21 = load %union._gc_head*, %union._gc_head** %young, align 8
  store %union._gc_head* %21, %union._gc_head** %old, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.36
  %22 = load %union._gc_head*, %union._gc_head** %young, align 8
  call void @update_refs(%union._gc_head* %22)
  %23 = load %union._gc_head*, %union._gc_head** %young, align 8
  call void @subtract_refs(%union._gc_head* %23)
  call void @gc_list_init(%union._gc_head* %unreachable)
  %24 = load %union._gc_head*, %union._gc_head** %young, align 8
  call void @move_unreachable(%union._gc_head* %24, %union._gc_head* %unreachable)
  %25 = load %union._gc_head*, %union._gc_head** %young, align 8
  %26 = load %union._gc_head*, %union._gc_head** %old, align 8
  %cmp42 = icmp ne %union._gc_head* %25, %26
  br i1 %cmp42, label %if.then.43, label %if.else.49

if.then.43:                                       ; preds = %if.end.41
  %27 = load i32, i32* %generation.addr, align 4
  %cmp44 = icmp eq i32 %27, 1
  br i1 %cmp44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.then.43
  %28 = load %union._gc_head*, %union._gc_head** %young, align 8
  %call46 = call i64 @gc_list_size(%union._gc_head* %28)
  %29 = load i64, i64* @long_lived_pending, align 8
  %add47 = add i64 %29, %call46
  store i64 %add47, i64* @long_lived_pending, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.then.43
  %30 = load %union._gc_head*, %union._gc_head** %young, align 8
  %31 = load %union._gc_head*, %union._gc_head** %old, align 8
  call void @gc_list_merge(%union._gc_head* %30, %union._gc_head* %31)
  br label %if.end.51

if.else.49:                                       ; preds = %if.end.41
  %32 = load %union._gc_head*, %union._gc_head** %young, align 8
  call void @untrack_dicts(%union._gc_head* %32)
  store i64 0, i64* @long_lived_pending, align 8
  %33 = load %union._gc_head*, %union._gc_head** %young, align 8
  %call50 = call i64 @gc_list_size(%union._gc_head* %33)
  store i64 %call50, i64* @long_lived_total, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.end.48
  call void @gc_list_init(%union._gc_head* %finalizers)
  call void @move_legacy_finalizers(%union._gc_head* %unreachable, %union._gc_head* %finalizers)
  call void @move_legacy_finalizer_reachable(%union._gc_head* %finalizers)
  %gc52 = bitcast %union._gc_head* %unreachable to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc52, i32 0, i32 0
  %34 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %34, %union._gc_head** %gc, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.61, %if.end.51
  %35 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %cmp54 = icmp ne %union._gc_head* %35, %unreachable
  br i1 %cmp54, label %for.body.55, label %for.end.64

for.body.55:                                      ; preds = %for.cond.53
  %36 = load i64, i64* %m, align 8
  %inc56 = add i64 %36, 1
  store i64 %inc56, i64* %m, align 8
  %37 = load i32, i32* @debug, align 4
  %and57 = and i32 %37, 2
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.body.55
  %38 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %38, i64 1
  %39 = bitcast %union._gc_head* %add.ptr to %struct._object*
  call void @debug_cycle(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), %struct._object* %39)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %for.body.55
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %40 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc62 = bitcast %union._gc_head* %40 to %struct.anon*
  %gc_next63 = getelementptr inbounds %struct.anon, %struct.anon* %gc62, i32 0, i32 0
  %41 = load %union._gc_head*, %union._gc_head** %gc_next63, align 8
  store %union._gc_head* %41, %union._gc_head** %gc, align 8
  br label %for.cond.53

for.end.64:                                       ; preds = %for.cond.53
  %42 = load %union._gc_head*, %union._gc_head** %old, align 8
  %call65 = call i32 @handle_weakrefs(%union._gc_head* %unreachable, %union._gc_head* %42)
  %conv = sext i32 %call65 to i64
  %43 = load i64, i64* %m, align 8
  %add66 = add i64 %43, %conv
  store i64 %add66, i64* %m, align 8
  call void @finalize_garbage(%union._gc_head* %unreachable)
  %call67 = call i32 @check_garbage(%union._gc_head* %unreachable)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %for.end.64
  call void @revive_garbage(%union._gc_head* %unreachable)
  %44 = load %union._gc_head*, %union._gc_head** %old, align 8
  call void @gc_list_merge(%union._gc_head* %unreachable, %union._gc_head* %44)
  br label %if.end.71

if.else.70:                                       ; preds = %for.end.64
  %45 = load %union._gc_head*, %union._gc_head** %old, align 8
  call void @delete_garbage(%union._gc_head* %unreachable, %union._gc_head* %45)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.69
  %gc72 = bitcast %union._gc_head* %finalizers to %struct.anon*
  %gc_next73 = getelementptr inbounds %struct.anon, %struct.anon* %gc72, i32 0, i32 0
  %46 = load %union._gc_head*, %union._gc_head** %gc_next73, align 8
  store %union._gc_head* %46, %union._gc_head** %gc, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.84, %if.end.71
  %47 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %cmp75 = icmp ne %union._gc_head* %47, %finalizers
  br i1 %cmp75, label %for.body.77, label %for.end.87

for.body.77:                                      ; preds = %for.cond.74
  %48 = load i64, i64* %n, align 8
  %inc78 = add i64 %48, 1
  store i64 %inc78, i64* %n, align 8
  %49 = load i32, i32* @debug, align 4
  %and79 = and i32 %49, 4
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %for.body.77
  %50 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr82 = getelementptr %union._gc_head, %union._gc_head* %50, i64 1
  %51 = bitcast %union._gc_head* %add.ptr82 to %struct._object*
  call void @debug_cycle(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), %struct._object* %51)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %for.body.77
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %52 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc85 = bitcast %union._gc_head* %52 to %struct.anon*
  %gc_next86 = getelementptr inbounds %struct.anon, %struct.anon* %gc85, i32 0, i32 0
  %53 = load %union._gc_head*, %union._gc_head** %gc_next86, align 8
  store %union._gc_head* %53, %union._gc_head** %gc, align 8
  br label %for.cond.74

for.end.87:                                       ; preds = %for.cond.74
  %54 = load i32, i32* @debug, align 4
  %and88 = and i32 %54, 1
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.105

if.then.90:                                       ; preds = %for.end.87
  %call91 = call double @get_time()
  store double %call91, double* %t2, align 8
  %55 = load i64, i64* %m, align 8
  %cmp92 = icmp eq i64 %55, 0
  br i1 %cmp92, label %land.lhs.true, label %if.else.97

land.lhs.true:                                    ; preds = %if.then.90
  %56 = load i64, i64* %n, align 8
  %cmp94 = icmp eq i64 %56, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.99

if.else.97:                                       ; preds = %land.lhs.true, %if.then.90
  %57 = load i64, i64* %n, align 8
  %58 = load i64, i64* %m, align 8
  %add98 = add i64 %57, %58
  %59 = load i64, i64* %n, align 8
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.49, i32 0, i32 0), i64 %add98, i64 %59)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.96
  %60 = load double, double* %t1, align 8
  %tobool100 = fcmp une double %60, 0.000000e+00
  br i1 %tobool100, label %land.lhs.true.101, label %if.end.104

land.lhs.true.101:                                ; preds = %if.end.99
  %61 = load double, double* %t2, align 8
  %tobool102 = fcmp une double %61, 0.000000e+00
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %land.lhs.true.101
  %62 = load double, double* %t2, align 8
  %63 = load double, double* %t1, align 8
  %sub = fsub double %62, %63
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), double %sub)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %land.lhs.true.101, %if.end.99
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %for.end.87
  %64 = load %union._gc_head*, %union._gc_head** %old, align 8
  %call106 = call i32 @handle_legacy_finalizers(%union._gc_head* %finalizers, %union._gc_head* %64)
  %65 = load i32, i32* %generation.addr, align 4
  %cmp107 = icmp eq i32 %65, 2
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.105
  call void @clear_freelists()
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.105
  %call111 = call %struct._object* @PyErr_Occurred()
  %tobool112 = icmp ne %struct._object* %call111, null
  br i1 %tobool112, label %if.then.113, label %if.end.123

if.then.113:                                      ; preds = %if.end.110
  %66 = load i32, i32* %nofail.addr, align 4
  %tobool114 = icmp ne i32 %66, 0
  br i1 %tobool114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %if.then.113
  call void @PyErr_Clear()
  br label %if.end.122

if.else.116:                                      ; preds = %if.then.113
  %67 = load %struct._object*, %struct._object** @gc_str, align 8
  %cmp117 = icmp eq %struct._object* %67, null
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.else.116
  %call120 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* %call120, %struct._object** @gc_str, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.else.116
  %68 = load %struct._object*, %struct._object** @gc_str, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %68)
  call void @Py_FatalError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.53, i32 0, i32 0)) #4
  unreachable

if.end.122:                                       ; preds = %if.then.115
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.110
  %69 = load i64*, i64** %n_collected.addr, align 8
  %tobool124 = icmp ne i64* %69, null
  br i1 %tobool124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.123
  %70 = load i64, i64* %m, align 8
  %71 = load i64*, i64** %n_collected.addr, align 8
  store i64 %70, i64* %71, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end.123
  %72 = load i64*, i64** %n_uncollectable.addr, align 8
  %tobool127 = icmp ne i64* %72, null
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.126
  %73 = load i64, i64* %n, align 8
  %74 = load i64*, i64** %n_uncollectable.addr, align 8
  store i64 %73, i64* %74, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.126
  %75 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %stats, align 8
  %collections = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %75, i32 0, i32 0
  %76 = load i64, i64* %collections, align 8
  %inc130 = add i64 %76, 1
  store i64 %inc130, i64* %collections, align 8
  %77 = load i64, i64* %m, align 8
  %78 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %stats, align 8
  %collected = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %78, i32 0, i32 1
  %79 = load i64, i64* %collected, align 8
  %add131 = add i64 %79, %77
  store i64 %add131, i64* %collected, align 8
  %80 = load i64, i64* %n, align 8
  %81 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %stats, align 8
  %uncollectable = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %81, i32 0, i32 2
  %82 = load i64, i64* %uncollectable, align 8
  %add132 = add i64 %82, %80
  store i64 %add132, i64* %uncollectable, align 8
  %83 = load i64, i64* %n, align 8
  %84 = load i64, i64* %m, align 8
  %add133 = add i64 %83, %84
  ret i64 %add133
}

; Function Attrs: nounwind uwtable
define void @_PyGC_DumpShutdownStats() #0 {
entry:
  %message = alloca i8*, align 8
  %repr = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.47, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** @garbage, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %land.lhs.true.1, label %if.end.47

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @garbage, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp sgt i64 %4, 0
  br i1 %cmp2, label %if.then, label %if.end.47

if.then:                                          ; preds = %land.lhs.true.1
  %5 = load i32, i32* @debug, align 4
  %and3 = and i32 %5, 4
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8** %message, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.9, i32 0, i32 0), i8** %message, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %6 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8
  %7 = load i8*, i8** %message, align 8
  %8 = load %struct._object*, %struct._object** @garbage, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size6, align 8
  %call = call i32 (%struct._object*, i8*, i32, i8*, %struct._object*, i8*, ...) @PyErr_WarnExplicitFormat(%struct._object* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %struct._object* null, i8* %7, i64 %10)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void @PyErr_WriteUnraisable(%struct._object* null)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %11 = load i32, i32* @debug, align 4
  %and10 = and i32 %11, 4
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.46

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %repr, align 8
  store %struct._object* null, %struct._object** %bytes, align 8
  %12 = load %struct._object*, %struct._object** @garbage, align 8
  %call13 = call %struct._object* @PyObject_Repr(%struct._object* %12)
  store %struct._object* %call13, %struct._object** %repr, align 8
  %13 = load %struct._object*, %struct._object** %repr, align 8
  %tobool14 = icmp ne %struct._object* %13, null
  br i1 %tobool14, label %lor.lhs.false, label %if.then.17

lor.lhs.false:                                    ; preds = %if.then.12
  %14 = load %struct._object*, %struct._object** %repr, align 8
  %call15 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %14)
  store %struct._object* %call15, %struct._object** %bytes, align 8
  %tobool16 = icmp ne %struct._object* %call15, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %lor.lhs.false, %if.then.12
  %15 = load %struct._object*, %struct._object** @garbage, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %15)
  br label %if.end.19

if.else.18:                                       ; preds = %lor.lhs.false
  %16 = load %struct._object*, %struct._object** %bytes, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %do.body

do.body:                                          ; preds = %if.end.19
  %18 = load %struct._object*, %struct._object** %repr, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp20 = icmp ne %struct._object* %19, null
  br i1 %cmp20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %do.body
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.22
  br label %if.end.26

if.else.25:                                       ; preds = %do.body.22
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.26
  br label %if.end.27

if.end.27:                                        ; preds = %do.end, %do.body
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %27 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp30, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp30, align 8
  %cmp31 = icmp ne %struct._object* %28, null
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %do.body.29
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp30, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp34, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %31, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %34(%struct._object* %35)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.body.29
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %if.end.9
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.1, %land.lhs.true, %entry
  ret void
}

declare i32 @PyErr_WarnExplicitFormat(%struct._object*, i8*, i32, i8*, %struct._object*, i8*, ...) #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

declare %struct._object* @PyObject_Repr(%struct._object*) #1

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

declare void @PySys_WriteStderr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @_PyGC_Fini() #0 {
entry:
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @callbacks, align 8
  store %struct._object* %0, %struct._object** %_py_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  store %struct._object* null, %struct._object** @callbacks, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %9 = load %struct._object*, %struct._object** @tmod, align 8
  store %struct._object* %9, %struct._object** %_py_tmp7, align 8
  %10 = load %struct._object*, %struct._object** %_py_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  store %struct._object* null, %struct._object** @tmod, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %11 = load %struct._object*, %struct._object** %_py_tmp7, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp11, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %13, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %16(%struct._object* %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyGC_Dump(%union._gc_head* %g) #0 {
entry:
  %g.addr = alloca %union._gc_head*, align 8
  store %union._gc_head* %g, %union._gc_head** %g.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %g.addr, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %0, i64 1
  %1 = bitcast %union._gc_head* %add.ptr to %struct._object*
  call void @_PyObject_Dump(%struct._object* %1)
  ret void
}

declare void @_PyObject_Dump(%struct._object*) #1

; Function Attrs: nounwind uwtable
define void @PyObject_GC_Track(i8* %op) #0 {
entry:
  %op.addr = alloca i8*, align 8
  %g = alloca %union._gc_head*, align 8
  store i8* %op, i8** %op.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %op.addr, align 8
  %1 = bitcast i8* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %3, 1
  %cmp = icmp ne i64 %shr, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.end
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  %5 = load i64, i64* %gc_refs3, align 8
  %and = and i64 %5, 1
  %or = or i64 %and, -6
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_refs5 = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 2
  store i64 %or, i64* %gc_refs5, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %7 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %7, %union._gc_head** %gc_next, align 8
  %9 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc7 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev9, align 8
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_prev11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1
  %14 = load %union._gc_head*, %union._gc_head** %gc_prev11, align 8
  %gc12 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_next13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0
  store %union._gc_head* %12, %union._gc_head** %gc_next13, align 8
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %16 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc14 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1
  store %union._gc_head* %15, %union._gc_head** %gc_prev15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  ret void
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define void @PyObject_GC_UnTrack(i8* %op) #0 {
entry:
  %op.addr = alloca i8*, align 8
  %g = alloca %union._gc_head*, align 8
  store i8* %op, i8** %op.addr, align 8
  %0 = load i8*, i8** %op.addr, align 8
  %1 = bitcast i8* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %2 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %2, 1
  %cmp = icmp ne i64 %shr, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load i8*, i8** %op.addr, align 8
  %4 = bitcast i8* %3 to %union._gc_head*
  %add.ptr1 = getelementptr %union._gc_head, %union._gc_head* %4, i64 -1
  store %union._gc_head* %add.ptr1, %union._gc_head** %g, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc3 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2
  %6 = load i64, i64* %gc_refs4, align 8
  %and = and i64 %6, 1
  %or = or i64 %and, -4
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2
  store i64 %or, i64* %gc_refs6, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.2
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc7 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 0
  %9 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc9 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_next10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 0
  store %union._gc_head* %9, %union._gc_head** %gc_next10, align 8
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc11 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_prev12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 1
  %13 = load %union._gc_head*, %union._gc_head** %gc_prev12, align 8
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc13 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_next14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 0
  %15 = load %union._gc_head*, %union._gc_head** %gc_next14, align 8
  %gc15 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1
  store %union._gc_head* %13, %union._gc_head** %gc_prev16, align 8
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc17 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_next18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next18, align 8
  br label %do.end.19

do.end.19:                                        ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %do.end.19, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_GC_Malloc(i64 %basicsize) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %basicsize.addr = alloca i64, align 8
  %op = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store i64 %basicsize, i64* %basicsize.addr, align 8
  %0 = load i64, i64* %basicsize.addr, align 8
  %cmp = icmp ugt i64 %0, 9223372036854775783
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %basicsize.addr, align 8
  %add = add i64 24, %1
  %call1 = call i8* @PyObject_Malloc(i64 %add)
  %2 = bitcast i8* %call1 to %union._gc_head*
  store %union._gc_head* %2, %union._gc_head** %g, align 8
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8
  %cmp2 = icmp eq %union._gc_head* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  store i64 0, i64* %gc_refs, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc6 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_refs7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 2
  %6 = load i64, i64* %gc_refs7, align 8
  %and = and i64 %6, 1
  %or = or i64 %and, -4
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2
  store i64 %or, i64* %gc_refs9, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4
  %9 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4
  %10 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 1), align 4
  %cmp10 = icmp sgt i32 %9, %10
  br i1 %cmp10, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %do.end
  %11 = load i32, i32* @enabled, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true.11, label %if.end.20

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %12 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 1), align 4
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.20

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %13 = load i32, i32* @collecting, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.end.20, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %call16 = call %struct._object* @PyErr_Occurred()
  %tobool17 = icmp ne %struct._object* %call16, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.15
  store i32 1, i32* @collecting, align 4
  %call19 = call i64 @collect_generations()
  store i32 0, i32* @collecting, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.15, %land.lhs.true.13, %land.lhs.true.11, %land.lhs.true, %do.end
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %14, i64 1
  %15 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %15, %struct._object** %op, align 8
  %16 = load %struct._object*, %struct._object** %op, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.3, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

declare %struct._object* @PyErr_NoMemory() #1

declare i8* @PyObject_Malloc(i64) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal i64 @collect_generations() #0 {
entry:
  %i = alloca i32, align 4
  %n = alloca i64, align 8
  store i64 0, i64* %n, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom
  %count = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %count, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom1
  %threshold = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx2, i32 0, i32 1
  %4 = load i32, i32* %threshold, align 4
  %cmp3 = icmp sgt i32 %2, %4
  br i1 %cmp3, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %5, 2
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load i64, i64* @long_lived_pending, align 8
  %7 = load i64, i64* @long_lived_total, align 8
  %div = sdiv i64 %7, 4
  %cmp5 = icmp slt i64 %6, %div
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %if.then
  %8 = load i32, i32* %i, align 4
  %call = call i64 @collect_with_callback(i32 %8)
  store i64 %call, i64* %n, align 8
  br label %for.end

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7, %if.then.6
  %9 = load i32, i32* %i, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %10 = load i64, i64* %n, align 8
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_GC_New(%struct._typeobject* %tp) #0 {
entry:
  %tp.addr = alloca %struct._typeobject*, align 8
  %op = alloca %struct._object*, align 8
  store %struct._typeobject* %tp, %struct._typeobject** %tp.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 2
  %1 = load i64, i64* %tp_basicsize, align 8
  %call = call %struct._object* @_PyObject_GC_Malloc(i64 %1)
  store %struct._object* %call, %struct._object** %op, align 8
  %2 = load %struct._object*, %struct._object** %op, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %4 = load %struct._object*, %struct._object** %op, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  store %struct._typeobject* %3, %struct._typeobject** %ob_type, align 8
  %5 = load %struct._object*, %struct._object** %op, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %op, align 8
  store %struct._object* %6, %struct._object** %op, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._object*, %struct._object** %op, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* %tp, i64 %nitems) #0 {
entry:
  %retval = alloca %struct.PyVarObject*, align 8
  %tp.addr = alloca %struct._typeobject*, align 8
  %nitems.addr = alloca i64, align 8
  %size = alloca i64, align 8
  %op = alloca %struct.PyVarObject*, align 8
  store %struct._typeobject* %tp, %struct._typeobject** %tp.addr, align 8
  store i64 %nitems, i64* %nitems.addr, align 8
  %0 = load i64, i64* %nitems.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 1761)
  store %struct.PyVarObject* null, %struct.PyVarObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 2
  %2 = load i64, i64* %tp_basicsize, align 8
  %3 = load i64, i64* %nitems.addr, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 3
  %5 = load i64, i64* %tp_itemsize, align 8
  %mul = mul i64 %3, %5
  %add = add i64 %2, %mul
  %add1 = add i64 %add, 7
  %and = and i64 %add1, -8
  store i64 %and, i64* %size, align 8
  %6 = load i64, i64* %size, align 8
  %call = call %struct._object* @_PyObject_GC_Malloc(i64 %6)
  %7 = bitcast %struct._object* %call to %struct.PyVarObject*
  store %struct.PyVarObject* %7, %struct.PyVarObject** %op, align 8
  %8 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  %cmp2 = icmp ne %struct.PyVarObject* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load i64, i64* %nitems.addr, align 8
  %10 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  store i64 %9, i64* %ob_size, align 8
  %11 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %12 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  %13 = bitcast %struct.PyVarObject* %12 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  store %struct._typeobject* %11, %struct._typeobject** %ob_type, align 8
  %14 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  %15 = bitcast %struct.PyVarObject* %14 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %16 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  store %struct.PyVarObject* %16, %struct.PyVarObject** %op, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %17 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  store %struct.PyVarObject* %17, %struct.PyVarObject** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %18 = load %struct.PyVarObject*, %struct.PyVarObject** %retval
  ret %struct.PyVarObject* %18
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject* %op, i64 %nitems) #0 {
entry:
  %retval = alloca %struct.PyVarObject*, align 8
  %op.addr = alloca %struct.PyVarObject*, align 8
  %nitems.addr = alloca i64, align 8
  %basicsize = alloca i64, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyVarObject* %op, %struct.PyVarObject** %op.addr, align 8
  store i64 %nitems, i64* %nitems.addr, align 8
  %0 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  %1 = bitcast %struct.PyVarObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 2
  %3 = load i64, i64* %tp_basicsize, align 8
  %4 = load i64, i64* %nitems.addr, align 8
  %5 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  %6 = bitcast %struct.PyVarObject* %5 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 3
  %8 = load i64, i64* %tp_itemsize, align 8
  %mul = mul i64 %4, %8
  %add = add i64 %3, %mul
  %add2 = add i64 %add, 7
  %and = and i64 %add2, -8
  store i64 %and, i64* %basicsize, align 8
  %9 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  %10 = bitcast %struct.PyVarObject* %9 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %10, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %11 = load i64, i64* %basicsize, align 8
  %cmp = icmp ugt i64 %11, 9223372036854775783
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  %12 = bitcast %struct._object* %call to %struct.PyVarObject*
  store %struct.PyVarObject* %12, %struct.PyVarObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %14 = bitcast %union._gc_head* %13 to i8*
  %15 = load i64, i64* %basicsize, align 8
  %add3 = add i64 24, %15
  %call4 = call i8* @PyObject_Realloc(i8* %14, i64 %add3)
  %16 = bitcast i8* %call4 to %union._gc_head*
  store %union._gc_head* %16, %union._gc_head** %g, align 8
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8
  %cmp5 = icmp eq %union._gc_head* %17, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call %struct._object* @PyErr_NoMemory()
  %18 = bitcast %struct._object* %call7 to %struct.PyVarObject*
  store %struct.PyVarObject* %18, %struct.PyVarObject** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8
  %add.ptr9 = getelementptr %union._gc_head, %union._gc_head* %19, i64 1
  %20 = bitcast %union._gc_head* %add.ptr9 to %struct._object*
  %21 = bitcast %struct._object* %20 to %struct.PyVarObject*
  store %struct.PyVarObject* %21, %struct.PyVarObject** %op.addr, align 8
  %22 = load i64, i64* %nitems.addr, align 8
  %23 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1
  store i64 %22, i64* %ob_size, align 8
  %24 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  store %struct.PyVarObject* %24, %struct.PyVarObject** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %25 = load %struct.PyVarObject*, %struct.PyVarObject** %retval
  ret %struct.PyVarObject* %25
}

declare i8* @PyObject_Realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @PyObject_GC_Del(i8* %op) #0 {
entry:
  %op.addr = alloca i8*, align 8
  %g = alloca %union._gc_head*, align 8
  store i8* %op, i8** %op.addr, align 8
  %0 = load i8*, i8** %op.addr, align 8
  %1 = bitcast i8* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %2 = load i8*, i8** %op.addr, align 8
  %3 = bitcast i8* %2 to %union._gc_head*
  %add.ptr1 = getelementptr %union._gc_head, %union._gc_head* %3, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr1 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %4 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %4, 1
  %cmp = icmp ne i64 %shr, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  call void @gc_list_remove(%union._gc_head* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8
  %9 = bitcast %union._gc_head* %8 to i8*
  call void @PyObject_Free(i8* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gc_list_remove(%union._gc_head* %node) #0 {
entry:
  %node.addr = alloca %union._gc_head*, align 8
  store %union._gc_head* %node, %union._gc_head** %node.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %gc = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %2 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %gc1 = bitcast %union._gc_head* %2 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 1
  %3 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc2 = bitcast %union._gc_head* %3 to %struct.anon*
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0
  store %union._gc_head* %1, %union._gc_head** %gc_next3, align 8
  %4 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %gc4 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_prev5 = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 1
  %5 = load %union._gc_head*, %union._gc_head** %gc_prev5, align 8
  %6 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %gc6 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  %7 = load %union._gc_head*, %union._gc_head** %gc_next7, align 8
  %gc8 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  store %union._gc_head* %5, %union._gc_head** %gc_prev9, align 8
  %8 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %gc10 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next11, align 8
  ret void
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_enable(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  store i32 1, i32* @enabled, align 4
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_disable(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  store i32 0, i32* @enabled, align 4
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_isenabled(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %0 = load i32, i32* @enabled, align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_set_debug(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32* @debug)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_debug(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_count(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %0 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4
  %1 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 1, i32 2), align 4
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 2, i32 2), align 4
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %0, i32 %1, i32 %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_set_thresh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 1), i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 1, i32 1), i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 2, i32 1))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 2, i32 1), align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom
  %threshold = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx, i32 0, i32 1
  store i32 %2, i32* %threshold, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc1 = add i64 %5, 1
  store i64 %inc1, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_thresh(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %0 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 1), align 4
  %1 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 1, i32 1), align 4
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 2, i32 1), align 4
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %0, i32 %1, i32 %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_collect(%struct._object* %self, %struct._object* %args, %struct._object* %kws) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kws.addr = alloca %struct._object*, align 8
  %genarg = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kws, %struct._object** %kws.addr, align 8
  store i32 2, i32* %genarg, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kws.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @gc_collect.keywords, i32 0, i32 0), i32* %genarg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %genarg, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, i32* %genarg, align 4
  %cmp1 = icmp sge i32 %3, 3
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %lor.lhs.false, %if.else
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.3

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* @collecting, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  store i64 0, i64* %n, align 8
  br label %if.end.8

if.else.6:                                        ; preds = %if.end.3
  store i32 1, i32* @collecting, align 4
  %6 = load i32, i32* %genarg, align 4
  %call7 = call i64 @collect_with_callback(i32 %6)
  store i64 %call7, i64* %n, align 8
  store i32 0, i32* @collecting, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  %7 = load i64, i64* %n, align 8
  %call9 = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_objects(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._object*, %struct._object** %result, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom
  %head = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx, i32 0, i32 0
  %call2 = call i32 @append_objects(%struct._object* %2, %union._gc_head* %head)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_stats(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %stats = alloca [3 x %struct.gc_generation_stats], align 16
  %st = alloca %struct.gc_generation_stats*, align 8
  %dict = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i32 0, i64 %idxprom
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* @generation_stats, i32 0, i64 %idxprom1
  %3 = bitcast %struct.gc_generation_stats* %arrayidx to i8*
  %4 = bitcast %struct.gc_generation_stats* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %result, align 8
  %6 = load %struct._object*, %struct._object** %result, align 8
  %cmp3 = icmp eq %struct._object* %6, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.30, %if.end
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %7, 3
  br i1 %cmp5, label %for.body.6, label %for.end.32

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i32 0, i64 %idxprom7
  store %struct.gc_generation_stats* %arrayidx8, %struct.gc_generation_stats** %st, align 8
  %9 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %st, align 8
  %collections = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %9, i32 0, i32 0
  %10 = load i64, i64* %collections, align 8
  %11 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %st, align 8
  %collected = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %11, i32 0, i32 1
  %12 = load i64, i64* %collected, align 8
  %13 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %st, align 8
  %uncollectable = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %13, i32 0, i32 2
  %14 = load i64, i64* %uncollectable, align 8
  %call9 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i64 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i64 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i64 %14)
  store %struct._object* %call9, %struct._object** %dict, align 8
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %cmp10 = icmp eq %struct._object* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body.6
  br label %error

if.end.12:                                        ; preds = %for.body.6
  %16 = load %struct._object*, %struct._object** %result, align 8
  %17 = load %struct._object*, %struct._object** %dict, align 8
  %call13 = call i32 @PyList_Append(%struct._object* %16, %struct._object* %17)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %18 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %error

if.end.18:                                        ; preds = %if.end.12
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.18
  %25 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp20, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %27, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %30(%struct._object* %31)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %for.inc.30

for.inc.30:                                       ; preds = %do.end.29
  %32 = load i32, i32* %i, align 4
  %inc31 = add i32 %32, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.4

for.end.32:                                       ; preds = %for.cond.4
  %33 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %33, %struct._object** %retval
  br label %return

error:                                            ; preds = %do.end, %if.then.11
  br label %do.body.33

do.body.33:                                       ; preds = %error
  %34 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp34 = icmp ne %struct._object* %35, null
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %do.body.33
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp37, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %38, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %41(%struct._object* %42)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.body.33
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.48, %for.end.32, %if.then
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_is_tracked(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16384
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 39
  %5 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp2 = icmp eq i32 (%struct._object*)* %5, null
  br i1 %cmp2, label %land.lhs.true.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_is_gc4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 39
  %8 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc4, align 8
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 %8(%struct._object* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8
  %11 = bitcast %struct._object* %10 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %11, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %12 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %12, 1
  %cmp6 = icmp ne i64 %shr, -2
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.5
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.5, %lor.lhs.false, %entry
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %15 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_referrers(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom
  %head = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx, i32 0, i32 0
  %4 = load %struct._object*, %struct._object** %result, align 8
  %call1 = call i32 @gc_referrers_for(%struct._object* %2, %union._gc_head* %head, %struct._object* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.7, label %if.then.3

if.then.3:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_referents(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %traverse = alloca i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, align 8
  %obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %i, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp slt i64 %1, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %5
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %8, %struct._object** %obj, align 8
  %9 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 16384
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %land.lhs.true, label %if.then.8

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 39
  %14 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp4 = icmp eq i32 (%struct._object*)* %14, null
  br i1 %cmp4, label %if.end.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_is_gc6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 39
  %17 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc6, align 8
  %18 = load %struct._object*, %struct._object** %obj, align 8
  %call7 = call i32 %17(%struct._object* %18)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 21
  %21 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %21, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %22 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %tobool11 = icmp ne i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %22, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %for.inc

if.end.13:                                        ; preds = %if.end.9
  %23 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %24 = load %struct._object*, %struct._object** %obj, align 8
  %25 = load %struct._object*, %struct._object** %result, align 8
  %26 = bitcast %struct._object* %25 to i8*
  %call14 = call i32 %23(%struct._object* %24, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @referentsvisit to i32 (%struct._object*, i8*)*), i8* %26)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  br label %do.body

do.body:                                          ; preds = %if.then.16
  %27 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.21, %if.then.12, %if.then.8
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @append_objects(%struct._object* %py_list, %union._gc_head* %gc_list) #0 {
entry:
  %retval = alloca i32, align 4
  %py_list.addr = alloca %struct._object*, align 8
  %gc_list.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  store %struct._object* %py_list, %struct._object** %py_list.addr, align 8
  store %union._gc_head* %gc_list, %union._gc_head** %gc_list.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %gc_list.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %gc_list.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %4, i64 1
  %5 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %5, %struct._object** %op, align 8
  %6 = load %struct._object*, %struct._object** %op, align 8
  %7 = load %struct._object*, %struct._object** %py_list.addr, align 8
  %cmp2 = icmp ne %struct._object* %6, %7
  br i1 %cmp2, label %if.then, label %if.end.4

if.then:                                          ; preds = %for.body
  %8 = load %struct._object*, %struct._object** %py_list.addr, align 8
  %9 = load %struct._object*, %struct._object** %op, align 8
  %call = call i32 @PyList_Append(%struct._object* %8, %struct._object* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %10 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc5 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_next6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 0
  %11 = load %union._gc_head*, %union._gc_head** %gc_next6, align 8
  store %union._gc_head* %11, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @gc_referrers_for(%struct._object* %objs, %union._gc_head* %list, %struct._object* %resultlist) #0 {
entry:
  %retval = alloca i32, align 4
  %objs.addr = alloca %struct._object*, align 8
  %list.addr = alloca %union._gc_head*, align 8
  %resultlist.addr = alloca %struct._object*, align 8
  %gc = alloca %union._gc_head*, align 8
  %obj = alloca %struct._object*, align 8
  %traverse = alloca i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, align 8
  store %struct._object* %objs, %struct._object** %objs.addr, align 8
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8
  store %struct._object* %resultlist, %struct._object** %resultlist.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %4, i64 1
  %5 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %5, %struct._object** %obj, align 8
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 21
  %8 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %8, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %9 = load %struct._object*, %struct._object** %obj, align 8
  %10 = load %struct._object*, %struct._object** %objs.addr, align 8
  %cmp2 = icmp eq %struct._object* %9, %10
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load %struct._object*, %struct._object** %obj, align 8
  %12 = load %struct._object*, %struct._object** %resultlist.addr, align 8
  %cmp3 = icmp eq %struct._object* %11, %12
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %14 = load %struct._object*, %struct._object** %obj, align 8
  %15 = load %struct._object*, %struct._object** %objs.addr, align 8
  %16 = bitcast %struct._object* %15 to i8*
  %call = call i32 %13(%struct._object* %14, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @referrersvisit to i32 (%struct._object*, i8*)*), i8* %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %17 = load %struct._object*, %struct._object** %resultlist.addr, align 8
  %18 = load %struct._object*, %struct._object** %obj, align 8
  %call5 = call i32 @PyList_Append(%struct._object* %17, %struct._object* %18)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.9, %if.then
  %19 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc10 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %20 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  store %union._gc_head* %20, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @referrersvisit(%struct._object* %obj, %struct._object* %objs) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %objs.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %objs, %struct._object** %objs.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct._object*, %struct._object** %objs.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct._object*, %struct._object** %objs.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %4
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp1 = icmp eq %struct._object* %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @referentsvisit(%struct._object* %obj, %struct._object* %list) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %list.addr = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %list, %struct._object** %list.addr, align 8
  %0 = load %struct._object*, %struct._object** %list.addr, align 8
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @PyList_Append(%struct._object* %0, %struct._object* %1)
  %cmp = icmp slt i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @invoke_gc_callback(i8* %phase, i32 %generation, i64 %collected, i64 %uncollectable) #0 {
entry:
  %phase.addr = alloca i8*, align 8
  %generation.addr = alloca i32, align 4
  %collected.addr = alloca i64, align 8
  %uncollectable.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %info = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %cb = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_xdecref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  store i8* %phase, i8** %phase.addr, align 8
  store i32 %generation, i32* %generation.addr, align 4
  store i64 %collected, i64* %collected.addr, align 8
  store i64 %uncollectable, i64* %uncollectable.addr, align 8
  store %struct._object* null, %struct._object** %info, align 8
  %0 = load %struct._object*, %struct._object** @callbacks, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end.50

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** @callbacks, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp ne i64 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %generation.addr, align 4
  %5 = load i64, i64* %collected.addr, align 8
  %6 = load i64, i64* %uncollectable.addr, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i64 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i64 %6)
  store %struct._object* %call, %struct._object** %info, align 8
  %7 = load %struct._object*, %struct._object** %info, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  call void @PyErr_WriteUnraisable(%struct._object* null)
  br label %do.end.50

if.end.5:                                         ; preds = %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %8 = load i64, i64* %i, align 8
  %9 = load %struct._object*, %struct._object** @callbacks, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size7, align 8
  %cmp8 = icmp slt i64 %8, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %13 = load %struct._object*, %struct._object** @callbacks, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %14, i32 0, i32 1
  %15 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %15, i64 %12
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %16, %struct._object** %cb, align 8
  %17 = load %struct._object*, %struct._object** %cb, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %19 = load %struct._object*, %struct._object** %cb, align 8
  %20 = load i8*, i8** %phase.addr, align 8
  %21 = load %struct._object*, %struct._object** %info, align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* %20, %struct._object* %21)
  store %struct._object* %call9, %struct._object** %r, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %22 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp10 = icmp ne %struct._object* %23, null
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %do.body
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.16

if.else:                                          ; preds = %do.body.12
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %31 = load %struct._object*, %struct._object** %r, align 8
  %cmp19 = icmp eq %struct._object* %31, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end.18
  %32 = load %struct._object*, %struct._object** %cb, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %32)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %do.end.18
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %33 = load %struct._object*, %struct._object** %cb, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp23, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %35, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %38(%struct._object* %39)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %for.inc

for.inc:                                          ; preds = %do.end.32
  %40 = load i64, i64* %i, align 8
  %inc33 = add i64 %40, 1
  store i64 %inc33, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.34

do.body.34:                                       ; preds = %for.end
  %41 = load %struct._object*, %struct._object** %info, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp35, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8
  %cmp36 = icmp ne %struct._object* %42, null
  br i1 %cmp36, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %do.body.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp39, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %45, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47

if.else.44:                                       ; preds = %do.body.38
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %48(%struct._object* %49)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %do.body.34
  br label %do.end.50

do.end.50:                                        ; preds = %if.then, %if.then.4, %if.end.49
  ret void
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @gc_list_size(%union._gc_head* %list) #0 {
entry:
  %list.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %n = alloca i64, align 8
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8
  store i64 0, i64* %n, align 8
  %0 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %n, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %n, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next3, align 8
  store %union._gc_head* %6, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %n, align 8
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal double @get_time() #0 {
entry:
  %result = alloca double, align 8
  %f = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store double 0.000000e+00, double* %result, align 8
  %0 = load %struct._object*, %struct._object** @tmod, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @tmod, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @get_time.PyId_time, i8* null)
  store %struct._object* %call, %struct._object** %f, align 8
  %2 = load %struct._object*, %struct._object** %f, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %f, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp3 = icmp eq %struct._typeobject* %4, @PyFloat_Type
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %5 = load %struct._object*, %struct._object** %f, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call5 = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %if.else
  %7 = load %struct._object*, %struct._object** %f, align 8
  %call7 = call double @PyFloat_AsDouble(%struct._object* %7)
  store double %call7, double* %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %f, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body
  br label %if.end.12

if.else.10:                                       ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %if.then.2
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %15 = load double, double* %result, align 8
  ret double %15
}

; Function Attrs: nounwind uwtable
define internal void @gc_list_merge(%union._gc_head* %from, %union._gc_head* %to) #0 {
entry:
  %from.addr = alloca %union._gc_head*, align 8
  %to.addr = alloca %union._gc_head*, align 8
  %tail = alloca %union._gc_head*, align 8
  store %union._gc_head* %from, %union._gc_head** %from.addr, align 8
  store %union._gc_head* %to, %union._gc_head** %to.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %from.addr, align 8
  %call = call i32 @gc_list_is_empty(%union._gc_head* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %union._gc_head*, %union._gc_head** %to.addr, align 8
  %gc = bitcast %union._gc_head* %1 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1
  %2 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  store %union._gc_head* %2, %union._gc_head** %tail, align 8
  %3 = load %union._gc_head*, %union._gc_head** %from.addr, align 8
  %gc1 = bitcast %union._gc_head* %3 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %4 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %5 = load %union._gc_head*, %union._gc_head** %tail, align 8
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0
  store %union._gc_head* %4, %union._gc_head** %gc_next3, align 8
  %6 = load %union._gc_head*, %union._gc_head** %tail, align 8
  %7 = load %union._gc_head*, %union._gc_head** %tail, align 8
  %gc4 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_next5 = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %8 = load %union._gc_head*, %union._gc_head** %gc_next5, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_prev7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 1
  store %union._gc_head* %6, %union._gc_head** %gc_prev7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %from.addr, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %to.addr, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_prev11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev11, align 8
  %12 = load %union._gc_head*, %union._gc_head** %to.addr, align 8
  %13 = load %union._gc_head*, %union._gc_head** %to.addr, align 8
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  %14 = load %union._gc_head*, %union._gc_head** %gc_prev13, align 8
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* %12, %union._gc_head** %gc_next15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %union._gc_head*, %union._gc_head** %from.addr, align 8
  call void @gc_list_init(%union._gc_head* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_refs(%union._gc_head* %containers) #0 {
entry:
  %containers.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %union._gc_head* %containers, %union._gc_head** %containers.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %containers.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %containers.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  %5 = load i64, i64* %gc_refs, align 8
  %and = and i64 %5, 1
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 1
  %7 = bitcast %union._gc_head* %add.ptr to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %shl = shl i64 %8, 1
  %or = or i64 %and, %shl
  %9 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc3 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2
  store i64 %or, i64* %gc_refs4, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %10 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc5 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_next6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 0
  %11 = load %union._gc_head*, %union._gc_head** %gc_next6, align 8
  store %union._gc_head* %11, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @subtract_refs(%union._gc_head* %containers) #0 {
entry:
  %containers.addr = alloca %union._gc_head*, align 8
  %traverse = alloca i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %union._gc_head* %containers, %union._gc_head** %containers.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %containers.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %containers.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %4, i64 1
  %5 = bitcast %union._gc_head* %add.ptr to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 21
  %7 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %7, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %8 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %9 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr2 = getelementptr %union._gc_head, %union._gc_head* %9, i64 1
  %10 = bitcast %union._gc_head* %add.ptr2 to %struct._object*
  %call = call i32 %8(%struct._object* %10, i32 (%struct._object*, i8*)* @visit_decref, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc3 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_next4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next4, align 8
  store %union._gc_head* %12, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gc_list_init(%union._gc_head* %list) #0 {
entry:
  %list.addr = alloca %union._gc_head*, align 8
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %1 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %gc = bitcast %union._gc_head* %1 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1
  store %union._gc_head* %0, %union._gc_head** %gc_prev, align 8
  %2 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %3 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %gc1 = bitcast %union._gc_head* %3 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  store %union._gc_head* %2, %union._gc_head** %gc_next, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @move_unreachable(%union._gc_head* %young, %union._gc_head* %unreachable) #0 {
entry:
  %young.addr = alloca %union._gc_head*, align 8
  %unreachable.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %next = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  %traverse = alloca i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, align 8
  store %union._gc_head* %young, %union._gc_head** %young.addr, align 8
  store %union._gc_head* %unreachable, %union._gc_head** %unreachable.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %young.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %young.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  %5 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %5, 1
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 1
  %7 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %7, %struct._object** %op, align 8
  %8 = load %struct._object*, %struct._object** %op, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 21
  %10 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %10, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %11 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc3 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2
  %12 = load i64, i64* %gc_refs4, align 8
  %and = and i64 %12, 1
  %or = or i64 %and, -6
  %13 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc5 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2
  store i64 %or, i64* %gc_refs6, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %14 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %15 = load %struct._object*, %struct._object** %op, align 8
  %16 = load %union._gc_head*, %union._gc_head** %young.addr, align 8
  %17 = bitcast %union._gc_head* %16 to i8*
  %call = call i32 %14(%struct._object* %15, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %union._gc_head*)* @visit_reachable to i32 (%struct._object*, i8*)*), i8* %17)
  %18 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc7 = bitcast %union._gc_head* %18 to %struct.anon*
  %gc_next8 = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 0
  %19 = load %union._gc_head*, %union._gc_head** %gc_next8, align 8
  store %union._gc_head* %19, %union._gc_head** %next, align 8
  %20 = load %struct._object*, %struct._object** %op, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %21, @PyTuple_Type
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %do.end
  %22 = load %struct._object*, %struct._object** %op, align 8
  call void @_PyTuple_MaybeUntrack(%struct._object* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %do.end
  br label %if.end.22

if.else:                                          ; preds = %while.body
  %23 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc12 = bitcast %union._gc_head* %23 to %struct.anon*
  %gc_next13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0
  %24 = load %union._gc_head*, %union._gc_head** %gc_next13, align 8
  store %union._gc_head* %24, %union._gc_head** %next, align 8
  %25 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %26 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8
  call void @gc_list_move(%union._gc_head* %25, %union._gc_head* %26)
  br label %do.body.14

do.body.14:                                       ; preds = %if.else
  %27 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc15 = bitcast %union._gc_head* %27 to %struct.anon*
  %gc_refs16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 2
  %28 = load i64, i64* %gc_refs16, align 8
  %and17 = and i64 %28, 1
  %or18 = or i64 %and17, -8
  %29 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc19 = bitcast %union._gc_head* %29 to %struct.anon*
  %gc_refs20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 2
  store i64 %or18, i64* %gc_refs20, align 8
  br label %do.end.21

do.end.21:                                        ; preds = %do.body.14
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %if.end
  %30 = load %union._gc_head*, %union._gc_head** %next, align 8
  store %union._gc_head* %30, %union._gc_head** %gc, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @untrack_dicts(%union._gc_head* %head) #0 {
entry:
  %head.addr = alloca %union._gc_head*, align 8
  %next = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  store %union._gc_head* %head, %union._gc_head** %head.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %head.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %head.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %4, i64 1
  %5 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %5, %struct._object** %op, align 8
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0
  %7 = load %union._gc_head*, %union._gc_head** %gc_next3, align 8
  store %union._gc_head* %7, %union._gc_head** %next, align 8
  %8 = load %struct._object*, %struct._object** %op, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %9, @PyDict_Type
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct._object*, %struct._object** %op, align 8
  call void @_PyDict_MaybeUntrack(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %11 = load %union._gc_head*, %union._gc_head** %next, align 8
  store %union._gc_head* %11, %union._gc_head** %gc, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @move_legacy_finalizers(%union._gc_head* %unreachable, %union._gc_head* %finalizers) #0 {
entry:
  %unreachable.addr = alloca %union._gc_head*, align 8
  %finalizers.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %next = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  store %union._gc_head* %unreachable, %union._gc_head** %unreachable.addr, align 8
  store %union._gc_head* %finalizers, %union._gc_head** %finalizers.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %4, i64 1
  %5 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %5, %struct._object** %op, align 8
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0
  %7 = load %union._gc_head*, %union._gc_head** %gc_next3, align 8
  store %union._gc_head* %7, %union._gc_head** %next, align 8
  %8 = load %struct._object*, %struct._object** %op, align 8
  %call = call i32 @has_legacy_finalizer(%struct._object* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %10 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8
  call void @gc_list_move(%union._gc_head* %9, %union._gc_head* %10)
  br label %do.body

do.body:                                          ; preds = %if.then
  %11 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc4 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 2
  %12 = load i64, i64* %gc_refs, align 8
  %and = and i64 %12, 1
  %or = or i64 %and, -6
  %13 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc5 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2
  store i64 %or, i64* %gc_refs6, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %union._gc_head*, %union._gc_head** %next, align 8
  store %union._gc_head* %14, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @move_legacy_finalizer_reachable(%union._gc_head* %finalizers) #0 {
entry:
  %finalizers.addr = alloca %union._gc_head*, align 8
  %traverse = alloca i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %union._gc_head* %finalizers, %union._gc_head** %finalizers.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %4, i64 1
  %5 = bitcast %union._gc_head* %add.ptr to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 21
  %7 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %7, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %8 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8
  %9 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr2 = getelementptr %union._gc_head, %union._gc_head* %9, i64 1
  %10 = bitcast %union._gc_head* %add.ptr2 to %struct._object*
  %11 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8
  %12 = bitcast %union._gc_head* %11 to i8*
  %call = call i32 %8(%struct._object* %10, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %union._gc_head*)* @visit_move to i32 (%struct._object*, i8*)*), i8* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc3 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 0
  %14 = load %union._gc_head*, %union._gc_head** %gc_next4, align 8
  store %union._gc_head* %14, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @debug_cycle(i8* %msg, %struct._object* %op) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %op.addr = alloca %struct._object*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  %1 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 1
  %3 = load i8*, i8** %tp_name, align 8
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i8* %0, i8* %3, %struct._object* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @handle_weakrefs(%union._gc_head* %unreachable, %union._gc_head* %old) #0 {
entry:
  %unreachable.addr = alloca %union._gc_head*, align 8
  %old.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  %wr = alloca %struct._PyWeakReference*, align 8
  %wrcb_to_call = alloca %union._gc_head, align 8
  %next = alloca %union._gc_head*, align 8
  %num_freed = alloca i32, align 4
  %wrlist = alloca %struct._PyWeakReference**, align 8
  %wrasgc = alloca %union._gc_head*, align 8
  %temp = alloca %struct._object*, align 8
  %callback = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  store %union._gc_head* %unreachable, %union._gc_head** %unreachable.addr, align 8
  store %union._gc_head* %old, %union._gc_head** %old.addr, align 8
  store i32 0, i32* %num_freed, align 4
  call void @gc_list_init(%union._gc_head* %wrcb_to_call)
  %0 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %4, i64 1
  %5 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %5, %struct._object** %op, align 8
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0
  %7 = load %union._gc_head*, %union._gc_head** %gc_next3, align 8
  store %union._gc_head* %7, %union._gc_head** %next, align 8
  %8 = load %struct._object*, %struct._object** %op, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 24
  %10 = load i64, i64* %tp_weaklistoffset, align 8
  %cmp4 = icmp sgt i64 %10, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.20

if.end:                                           ; preds = %for.body
  %11 = load %struct._object*, %struct._object** %op, align 8
  %12 = bitcast %struct._object* %11 to i8*
  %13 = load %struct._object*, %struct._object** %op, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_weaklistoffset6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 24
  %15 = load i64, i64* %tp_weaklistoffset6, align 8
  %add.ptr7 = getelementptr i8, i8* %12, i64 %15
  %16 = bitcast i8* %add.ptr7 to %struct._object**
  %17 = bitcast %struct._object** %16 to %struct._PyWeakReference**
  store %struct._PyWeakReference** %17, %struct._PyWeakReference*** %wrlist, align 8
  %18 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %wrlist, align 8
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %18, align 8
  store %struct._PyWeakReference* %19, %struct._PyWeakReference** %wr, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %20 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8
  %cmp9 = icmp ne %struct._PyWeakReference* %20, null
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %21 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8
  call void @_PyWeakref_ClearRef(%struct._PyWeakReference* %21)
  %22 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %22, i32 0, i32 2
  %23 = load %struct._object*, %struct._object** %wr_callback, align 8
  %cmp11 = icmp eq %struct._object* %23, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.10
  br label %for.inc

if.end.13:                                        ; preds = %for.body.10
  %24 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8
  %25 = bitcast %struct._PyWeakReference* %24 to %union._gc_head*
  %add.ptr14 = getelementptr %union._gc_head, %union._gc_head* %25, i64 -1
  %gc15 = bitcast %union._gc_head* %add.ptr14 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 2
  %26 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %26, 1
  %cmp16 = icmp eq i64 %shr, -4
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  br label %for.inc

if.end.18:                                        ; preds = %if.end.13
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8
  %28 = bitcast %struct._PyWeakReference* %27 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %30 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8
  %31 = bitcast %struct._PyWeakReference* %30 to %union._gc_head*
  %add.ptr19 = getelementptr %union._gc_head, %union._gc_head* %31, i64 -1
  store %union._gc_head* %add.ptr19, %union._gc_head** %wrasgc, align 8
  %32 = load %union._gc_head*, %union._gc_head** %wrasgc, align 8
  call void @gc_list_move(%union._gc_head* %32, %union._gc_head* %wrcb_to_call)
  br label %for.inc

for.inc:                                          ; preds = %if.end.18, %if.then.17, %if.then.12
  %33 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %wrlist, align 8
  %34 = load %struct._PyWeakReference*, %struct._PyWeakReference** %33, align 8
  store %struct._PyWeakReference* %34, %struct._PyWeakReference** %wr, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end, %if.then
  %35 = load %union._gc_head*, %union._gc_head** %next, align 8
  store %union._gc_head* %35, %union._gc_head** %gc, align 8
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %for.end.21
  %call = call i32 @gc_list_is_empty(%union._gc_head* %wrcb_to_call)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %gc22 = bitcast %union._gc_head* %wrcb_to_call to %struct.anon*
  %gc_next23 = getelementptr inbounds %struct.anon, %struct.anon* %gc22, i32 0, i32 0
  %36 = load %union._gc_head*, %union._gc_head** %gc_next23, align 8
  store %union._gc_head* %36, %union._gc_head** %gc, align 8
  %37 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr24 = getelementptr %union._gc_head, %union._gc_head* %37, i64 1
  %38 = bitcast %union._gc_head* %add.ptr24 to %struct._object*
  store %struct._object* %38, %struct._object** %op, align 8
  %39 = load %struct._object*, %struct._object** %op, align 8
  %40 = bitcast %struct._object* %39 to %struct._PyWeakReference*
  store %struct._PyWeakReference* %40, %struct._PyWeakReference** %wr, align 8
  %41 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8
  %wr_callback25 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %41, i32 0, i32 2
  %42 = load %struct._object*, %struct._object** %wr_callback25, align 8
  store %struct._object* %42, %struct._object** %callback, align 8
  %43 = load %struct._object*, %struct._object** %callback, align 8
  %44 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8
  %call26 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %43, %struct._PyWeakReference* %44, i8* null)
  store %struct._object* %call26, %struct._object** %temp, align 8
  %45 = load %struct._object*, %struct._object** %temp, align 8
  %cmp27 = icmp eq %struct._object* %45, null
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %while.body
  %46 = load %struct._object*, %struct._object** %callback, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %46)
  br label %if.end.35

if.else:                                          ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.else
  %47 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt29, align 8
  %dec = add i64 %49, -1
  store i64 %dec, i64* %ob_refcnt29, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body
  br label %if.end.34

if.else.32:                                       ; preds = %do.body
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %52(%struct._object* %53)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.34
  br label %if.end.35

if.end.35:                                        ; preds = %do.end, %if.then.28
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.35
  %54 = load %struct._object*, %struct._object** %op, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp37, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %56, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %59(%struct._object* %60)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %gc47 = bitcast %union._gc_head* %wrcb_to_call to %struct.anon*
  %gc_next48 = getelementptr inbounds %struct.anon, %struct.anon* %gc47, i32 0, i32 0
  %61 = load %union._gc_head*, %union._gc_head** %gc_next48, align 8
  %62 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %cmp49 = icmp eq %union._gc_head* %61, %62
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.end.46
  %63 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %64 = load %union._gc_head*, %union._gc_head** %old.addr, align 8
  call void @gc_list_move(%union._gc_head* %63, %union._gc_head* %64)
  br label %if.end.53

if.else.51:                                       ; preds = %do.end.46
  %65 = load i32, i32* %num_freed, align 4
  %inc52 = add i32 %65, 1
  store i32 %inc52, i32* %num_freed, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.50
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %66 = load i32, i32* %num_freed, align 4
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal void @finalize_garbage(%union._gc_head* %collectable) #0 {
entry:
  %collectable.addr = alloca %union._gc_head*, align 8
  %finalize = alloca void (%struct._object*)*, align 8
  %seen = alloca %union._gc_head, align 8
  %gc = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %union._gc_head* %collectable, %union._gc_head** %collectable.addr, align 8
  call void @gc_list_init(%union._gc_head* %seen)
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %entry
  %0 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %call = call i32 @gc_list_is_empty(%union._gc_head* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %gc1 = bitcast %union._gc_head* %1 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %2 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %2, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %3, i64 1
  %4 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %4, %struct._object** %op, align 8
  %5 = load %union._gc_head*, %union._gc_head** %gc, align 8
  call void @gc_list_move(%union._gc_head* %5, %union._gc_head* %seen)
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  %7 = load i64, i64* %gc_refs, align 8
  %and = and i64 %7, 1
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %8 = load %struct._object*, %struct._object** %op, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19
  %10 = load i64, i64* %tp_flags, align 8
  %and3 = and i64 %10, 1
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.19

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** %op, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_finalize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 47
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_finalize, align 8
  store void (%struct._object*)* %13, void (%struct._object*)** %finalize, align 8
  %cmp7 = icmp ne void (%struct._object*)* %13, null
  br i1 %cmp7, label %if.then, label %if.end.19

if.then:                                          ; preds = %land.lhs.true.5
  br label %do.body

do.body:                                          ; preds = %if.then
  %14 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc8 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2
  %15 = load i64, i64* %gc_refs9, align 8
  %and10 = and i64 %15, -2
  %or = or i64 %and10, 1
  %16 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc11 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_refs12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 2
  store i64 %or, i64* %gc_refs12, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %op, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %19 = load void (%struct._object*)*, void (%struct._object*)** %finalize, align 8
  %20 = load %struct._object*, %struct._object** %op, align 8
  call void %19(%struct._object* %20)
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %21 = load %struct._object*, %struct._object** %op, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt14, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt14, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body.13
  br label %if.end

if.else:                                          ; preds = %do.body.13
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %do.end.18

do.end.18:                                        ; preds = %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %land.lhs.true.5, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  call void @gc_list_merge(%union._gc_head* %seen, %union._gc_head* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @check_garbage(%union._gc_head* %collectable) #0 {
entry:
  %retval = alloca i32, align 4
  %collectable.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %union._gc_head* %collectable, %union._gc_head** %collectable.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  %5 = load i64, i64* %gc_refs, align 8
  %and = and i64 %5, 1
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 1
  %7 = bitcast %union._gc_head* %add.ptr to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %shl = shl i64 %8, 1
  %or = or i64 %and, %shl
  %9 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc3 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2
  store i64 %or, i64* %gc_refs4, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %10 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc5 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_next6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 0
  %11 = load %union._gc_head*, %union._gc_head** %gc_next6, align 8
  store %union._gc_head* %11, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  call void @subtract_refs(%union._gc_head* %12)
  %13 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %gc7 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next8 = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 0
  %14 = load %union._gc_head*, %union._gc_head** %gc_next8, align 8
  store %union._gc_head* %14, %union._gc_head** %gc, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.15, %for.end
  %15 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %16 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %cmp10 = icmp ne %union._gc_head* %15, %16
  br i1 %cmp10, label %for.body.11, label %for.end.18

for.body.11:                                      ; preds = %for.cond.9
  %17 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc12 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_refs13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 2
  %18 = load i64, i64* %gc_refs13, align 8
  %shr = ashr i64 %18, 1
  %cmp14 = icmp ne i64 %shr, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.11
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.11
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end
  %19 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc16 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_next17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 0
  %20 = load %union._gc_head*, %union._gc_head** %gc_next17, align 8
  store %union._gc_head* %20, %union._gc_head** %gc, align 8
  br label %for.cond.9

for.end.18:                                       ; preds = %for.cond.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.18, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @revive_garbage(%union._gc_head* %collectable) #0 {
entry:
  %collectable.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %union._gc_head* %collectable, %union._gc_head** %collectable.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %cmp = icmp ne %union._gc_head* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  %5 = load i64, i64* %gc_refs, align 8
  %and = and i64 %5, 1
  %or = or i64 %and, -6
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc3 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2
  store i64 %or, i64* %gc_refs4, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %7 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_next6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 0
  %8 = load %union._gc_head*, %union._gc_head** %gc_next6, align 8
  store %union._gc_head* %8, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @delete_garbage(%union._gc_head* %collectable, %union._gc_head* %old) #0 {
entry:
  %collectable.addr = alloca %union._gc_head*, align 8
  %old.addr = alloca %union._gc_head*, align 8
  %clear = alloca i32 (%struct._object*)*, align 8
  %gc = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %union._gc_head* %collectable, %union._gc_head** %collectable.addr, align 8
  store %union._gc_head* %old, %union._gc_head** %old.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %entry
  %0 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %call = call i32 @gc_list_is_empty(%union._gc_head* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %gc1 = bitcast %union._gc_head* %1 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %2 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %2, %union._gc_head** %gc, align 8
  %3 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %3, i64 1
  %4 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %4, %struct._object** %op, align 8
  %5 = load i32, i32* @debug, align 4
  %and = and i32 %5, 32
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct._object*, %struct._object** @garbage, align 8
  %7 = load %struct._object*, %struct._object** %op, align 8
  %call3 = call i32 @PyList_Append(%struct._object* %6, %struct._object* %7)
  br label %if.end.12

if.else:                                          ; preds = %while.body
  %8 = load %struct._object*, %struct._object** %op, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_clear = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 22
  %10 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_clear, align 8
  store i32 (%struct._object*)* %10, i32 (%struct._object*)** %clear, align 8
  %cmp = icmp ne i32 (%struct._object*)* %10, null
  br i1 %cmp, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %op, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load i32 (%struct._object*)*, i32 (%struct._object*)** %clear, align 8
  %14 = load %struct._object*, %struct._object** %op, align 8
  %call5 = call i32 %13(%struct._object* %14)
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %15 = load %struct._object*, %struct._object** %op, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt6, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt6, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body
  br label %if.end

if.else.9:                                        ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then
  %22 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8
  %gc13 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_next14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 0
  %23 = load %union._gc_head*, %union._gc_head** %gc_next14, align 8
  %24 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %cmp15 = icmp eq %union._gc_head* %23, %24
  br i1 %cmp15, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.end.12
  %25 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %26 = load %union._gc_head*, %union._gc_head** %old.addr, align 8
  call void @gc_list_move(%union._gc_head* %25, %union._gc_head* %26)
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %27 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc18 = bitcast %union._gc_head* %27 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 2
  %28 = load i64, i64* %gc_refs, align 8
  %and19 = and i64 %28, 1
  %or = or i64 %and19, -6
  %29 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc20 = bitcast %union._gc_head* %29 to %struct.anon*
  %gc_refs21 = getelementptr inbounds %struct.anon, %struct.anon* %gc20, i32 0, i32 2
  store i64 %or, i64* %gc_refs21, align 8
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.17
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %if.end.12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @handle_legacy_finalizers(%union._gc_head* %finalizers, %union._gc_head* %old) #0 {
entry:
  %retval = alloca i32, align 4
  %finalizers.addr = alloca %union._gc_head*, align 8
  %old.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  store %union._gc_head* %finalizers, %union._gc_head** %finalizers.addr, align 8
  store %union._gc_head* %old, %union._gc_head** %old.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8
  %gc1 = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %1, %union._gc_head** %gc, align 8
  %2 = load %struct._object*, %struct._object** @garbage, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** @garbage, align 8
  %3 = load %struct._object*, %struct._object** @garbage, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %5 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8
  %cmp5 = icmp ne %union._gc_head* %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 1
  %7 = bitcast %union._gc_head* %add.ptr to %struct._object*
  store %struct._object* %7, %struct._object** %op, align 8
  %8 = load i32, i32* @debug, align 4
  %and = and i32 %8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct._object*, %struct._object** %op, align 8
  %call6 = call i32 @has_legacy_finalizer(%struct._object* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %lor.lhs.false, %for.body
  %10 = load %struct._object*, %struct._object** @garbage, align 8
  %11 = load %struct._object*, %struct._object** %op, align 8
  %call9 = call i32 @PyList_Append(%struct._object* %10, %struct._object* %11)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %12 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc14 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  %13 = load %union._gc_head*, %union._gc_head** %gc_next15, align 8
  store %union._gc_head* %13, %union._gc_head** %gc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8
  %15 = load %union._gc_head*, %union._gc_head** %old.addr, align 8
  call void @gc_list_merge(%union._gc_head* %14, %union._gc_head* %15)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @clear_freelists() #0 {
entry:
  %call = call i32 @PyMethod_ClearFreeList()
  %call1 = call i32 @PyFrame_ClearFreeList()
  %call2 = call i32 @PyCFunction_ClearFreeList()
  %call3 = call i32 @PyTuple_ClearFreeList()
  %call4 = call i32 @PyUnicode_ClearFreeList()
  %call5 = call i32 @PyFloat_ClearFreeList()
  %call6 = call i32 @PyList_ClearFreeList()
  %call7 = call i32 @PyDict_ClearFreeList()
  %call8 = call i32 @PySet_ClearFreeList()
  ret void
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gc_list_is_empty(%union._gc_head* %list) #0 {
entry:
  %list.addr = alloca %union._gc_head*, align 8
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %gc = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 0
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %2 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %cmp = icmp eq %union._gc_head* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @visit_decref(%struct._object* %op, i8* %data) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %data.addr = alloca i8*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16384
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 39
  %5 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp2 = icmp eq i32 (%struct._object*)* %5, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_is_gc4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 39
  %8 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc4, align 8
  %9 = load %struct._object*, %struct._object** %op.addr, align 8
  %call = call i32 %8(%struct._object* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %11 = bitcast %struct._object* %10 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %11, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %gc, align 8
  %12 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc5 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2
  %13 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %13, 1
  %cmp6 = icmp sgt i64 %shr, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %14 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc8 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2
  %15 = load i64, i64* %gc_refs9, align 8
  %sub = sub i64 %15, 2
  store i64 %sub, i64* %gc_refs9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %lor.lhs.false, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @visit_reachable(%struct._object* %op, %union._gc_head* %reachable) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %reachable.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %gc_refs = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %union._gc_head* %reachable, %union._gc_head** %reachable.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16384
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 39
  %5 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp2 = icmp eq i32 (%struct._object*)* %5, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_is_gc4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 39
  %8 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc4, align 8
  %9 = load %struct._object*, %struct._object** %op.addr, align 8
  %call = call i32 %8(%struct._object* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %11 = bitcast %struct._object* %10 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %11, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %gc, align 8
  %12 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc5 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2
  %13 = load i64, i64* %gc_refs6, align 8
  %shr = ashr i64 %13, 1
  store i64 %shr, i64* %gc_refs, align 8
  %14 = load i64, i64* %gc_refs, align 8
  %cmp7 = icmp eq i64 %14, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %15 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc9 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2
  %16 = load i64, i64* %gc_refs10, align 8
  %and11 = and i64 %16, 1
  %or = or i64 %and11, 2
  %17 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc12 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_refs13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 2
  store i64 %or, i64* %gc_refs13, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.25

if.else:                                          ; preds = %if.then
  %18 = load i64, i64* %gc_refs, align 8
  %cmp14 = icmp eq i64 %18, -4
  br i1 %cmp14, label %if.then.15, label %if.else.24

if.then.15:                                       ; preds = %if.else
  %19 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %20 = load %union._gc_head*, %union._gc_head** %reachable.addr, align 8
  call void @gc_list_move(%union._gc_head* %19, %union._gc_head* %20)
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %21 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc17 = bitcast %union._gc_head* %21 to %struct.anon*
  %gc_refs18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 2
  %22 = load i64, i64* %gc_refs18, align 8
  %and19 = and i64 %22, 1
  %or20 = or i64 %and19, 2
  %23 = load %union._gc_head*, %union._gc_head** %gc, align 8
  %gc21 = bitcast %union._gc_head* %23 to %struct.anon*
  %gc_refs22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 2
  store i64 %or20, i64* %gc_refs22, align 8
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.16
  br label %if.end

if.else.24:                                       ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else.24, %do.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %do.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false, %entry
  ret i32 0
}

declare void @_PyTuple_MaybeUntrack(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @gc_list_move(%union._gc_head* %node, %union._gc_head* %list) #0 {
entry:
  %node.addr = alloca %union._gc_head*, align 8
  %list.addr = alloca %union._gc_head*, align 8
  %new_prev = alloca %union._gc_head*, align 8
  %current_prev = alloca %union._gc_head*, align 8
  %current_next = alloca %union._gc_head*, align 8
  store %union._gc_head* %node, %union._gc_head** %node.addr, align 8
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8
  %0 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %gc = bitcast %union._gc_head* %0 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1
  %1 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  store %union._gc_head* %1, %union._gc_head** %current_prev, align 8
  %2 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %gc1 = bitcast %union._gc_head* %2 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0
  %3 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  store %union._gc_head* %3, %union._gc_head** %current_next, align 8
  %4 = load %union._gc_head*, %union._gc_head** %current_next, align 8
  %5 = load %union._gc_head*, %union._gc_head** %current_prev, align 8
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0
  store %union._gc_head* %4, %union._gc_head** %gc_next3, align 8
  %6 = load %union._gc_head*, %union._gc_head** %current_prev, align 8
  %7 = load %union._gc_head*, %union._gc_head** %current_next, align 8
  %gc4 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_prev5 = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 1
  store %union._gc_head* %6, %union._gc_head** %gc_prev5, align 8
  %8 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_prev7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 1
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev7, align 8
  %10 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  store %union._gc_head* %9, %union._gc_head** %gc_prev9, align 8
  store %union._gc_head* %9, %union._gc_head** %new_prev, align 8
  %11 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %12 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_prev11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1
  store %union._gc_head* %11, %union._gc_head** %gc_prev11, align 8
  %13 = load %union._gc_head*, %union._gc_head** %new_prev, align 8
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0
  store %union._gc_head* %11, %union._gc_head** %gc_next13, align 8
  %14 = load %union._gc_head*, %union._gc_head** %list.addr, align 8
  %15 = load %union._gc_head*, %union._gc_head** %node.addr, align 8
  %gc14 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* %14, %union._gc_head** %gc_next15, align 8
  ret void
}

declare void @_PyDict_MaybeUntrack(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @has_legacy_finalizer(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_del = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 45
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_del, align 8
  %cmp = icmp ne void (%struct._object*)* %2, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @visit_move(%struct._object* %op, %union._gc_head* %tolist) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %tolist.addr = alloca %union._gc_head*, align 8
  %gc7 = alloca %union._gc_head*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %union._gc_head* %tolist, %union._gc_head** %tolist.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16384
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 39
  %5 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp2 = icmp eq i32 (%struct._object*)* %5, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_is_gc4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 39
  %8 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc4, align 8
  %9 = load %struct._object*, %struct._object** %op.addr, align 8
  %call = call i32 %8(%struct._object* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %11 = bitcast %struct._object* %10 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %11, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %12 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %12, 1
  %cmp5 = icmp eq i64 %shr, -4
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load %struct._object*, %struct._object** %op.addr, align 8
  %14 = bitcast %struct._object* %13 to %union._gc_head*
  %add.ptr8 = getelementptr %union._gc_head, %union._gc_head* %14, i64 -1
  store %union._gc_head* %add.ptr8, %union._gc_head** %gc7, align 8
  %15 = load %union._gc_head*, %union._gc_head** %gc7, align 8
  %16 = load %union._gc_head*, %union._gc_head** %tolist.addr, align 8
  call void @gc_list_move(%union._gc_head* %15, %union._gc_head* %16)
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %17 = load %union._gc_head*, %union._gc_head** %gc7, align 8
  %gc9 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2
  %18 = load i64, i64* %gc_refs10, align 8
  %and11 = and i64 %18, 1
  %or = or i64 %and11, -6
  %19 = load %union._gc_head*, %union._gc_head** %gc7, align 8
  %gc12 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_refs13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 2
  store i64 %or, i64* %gc_refs13, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %lor.lhs.false, %entry
  ret i32 0
}

declare void @PySys_FormatStderr(i8*, ...) #1

declare void @_PyWeakref_ClearRef(%struct._PyWeakReference*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @PyMethod_ClearFreeList() #1

declare i32 @PyFrame_ClearFreeList() #1

declare i32 @PyCFunction_ClearFreeList() #1

declare i32 @PyTuple_ClearFreeList() #1

declare i32 @PyUnicode_ClearFreeList() #1

declare i32 @PyFloat_ClearFreeList() #1

declare i32 @PyList_ClearFreeList() #1

declare i32 @PyDict_ClearFreeList() #1

declare i32 @PySet_ClearFreeList() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
