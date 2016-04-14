; ModuleID = 'programs_new/Python-new/gcmodule.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !1018
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1018
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !401, metadata !1019), !dbg !1020
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @gcmodule, i32 1013), !dbg !1021
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1022, !tbaa !1023
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !1027, !tbaa !1023
  %cmp = icmp eq %struct._object* %1, null, !dbg !1029
  br i1 %cmp, label %if.then, label %if.end, !dbg !1030

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1031
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1031

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1032, !tbaa !1023
  %cmp1 = icmp eq %struct._object* %2, null, !dbg !1034
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !1035

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyList_New(i64 0), !dbg !1036
  store %struct._object* %call3, %struct._object** @garbage, align 8, !dbg !1038, !tbaa !1023
  %3 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1039, !tbaa !1023
  %cmp4 = icmp eq %struct._object* %3, null, !dbg !1041
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1042

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval, !dbg !1043
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1043

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7, !dbg !1044

if.end.7:                                         ; preds = %if.end.6, %if.end
  %4 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1045, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !1046
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1047, !tbaa !1048
  %inc = add i64 %5, 1, !dbg !1047
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1047, !tbaa !1048
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !1051, !tbaa !1023
  %7 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1053, !tbaa !1023
  %call8 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._object* %7), !dbg !1054
  %cmp9 = icmp slt i32 %call8, 0, !dbg !1055
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1056

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !1057
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1057

if.end.11:                                        ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !1058, !tbaa !1023
  %cmp12 = icmp eq %struct._object* %8, null, !dbg !1060
  br i1 %cmp12, label %if.then.13, label %if.end.18, !dbg !1061

if.then.13:                                       ; preds = %if.end.11
  %call14 = call %struct._object* @PyList_New(i64 0), !dbg !1062
  store %struct._object* %call14, %struct._object** @callbacks, align 8, !dbg !1064, !tbaa !1023
  %9 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !1065, !tbaa !1023
  %cmp15 = icmp eq %struct._object* %9, null, !dbg !1067
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !1068

if.then.16:                                       ; preds = %if.then.13
  store %struct._object* null, %struct._object** %retval, !dbg !1069
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1069

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18, !dbg !1070

if.end.18:                                        ; preds = %if.end.17, %if.end.11
  %10 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !1071, !tbaa !1023
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1072
  %11 = load i64, i64* %ob_refcnt19, align 8, !dbg !1073, !tbaa !1048
  %inc20 = add i64 %11, 1, !dbg !1073
  store i64 %inc20, i64* %ob_refcnt19, align 8, !dbg !1073, !tbaa !1048
  %12 = load %struct._object*, %struct._object** %m, align 8, !dbg !1074, !tbaa !1023
  %13 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !1076, !tbaa !1023
  %call21 = call i32 @PyModule_AddObject(%struct._object* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct._object* %13), !dbg !1077
  %cmp22 = icmp slt i32 %call21, 0, !dbg !1078
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !1079

if.then.23:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval, !dbg !1080
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1080

if.end.24:                                        ; preds = %if.end.18
  %14 = load %struct._object*, %struct._object** @tmod, align 8, !dbg !1081, !tbaa !1023
  %cmp25 = icmp eq %struct._object* %14, null, !dbg !1083
  br i1 %cmp25, label %if.then.26, label %if.end.31, !dbg !1084

if.then.26:                                       ; preds = %if.end.24
  %call27 = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)), !dbg !1085
  store %struct._object* %call27, %struct._object** @tmod, align 8, !dbg !1087, !tbaa !1023
  %15 = load %struct._object*, %struct._object** @tmod, align 8, !dbg !1088, !tbaa !1023
  %cmp28 = icmp eq %struct._object* %15, null, !dbg !1090
  br i1 %cmp28, label %if.then.29, label %if.end.30, !dbg !1091

if.then.29:                                       ; preds = %if.then.26
  call void @PyErr_Clear(), !dbg !1092
  br label %if.end.30, !dbg !1092

if.end.30:                                        ; preds = %if.then.29, %if.then.26
  br label %if.end.31, !dbg !1093

if.end.31:                                        ; preds = %if.end.30, %if.end.24
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !1094, !tbaa !1023
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i64 1), !dbg !1096
  %cmp33 = icmp slt i32 %call32, 0, !dbg !1097
  br i1 %cmp33, label %if.then.34, label %if.end.35, !dbg !1098

if.then.34:                                       ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval, !dbg !1099
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1101

if.end.35:                                        ; preds = %if.end.31
  %17 = load %struct._object*, %struct._object** %m, align 8, !dbg !1102, !tbaa !1023
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i64 2), !dbg !1104
  %cmp37 = icmp slt i32 %call36, 0, !dbg !1105
  br i1 %cmp37, label %if.then.38, label %if.end.39, !dbg !1106

if.then.38:                                       ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval, !dbg !1107
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1109

if.end.39:                                        ; preds = %if.end.35
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !1110, !tbaa !1023
  %call40 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i64 4), !dbg !1112
  %cmp41 = icmp slt i32 %call40, 0, !dbg !1113
  br i1 %cmp41, label %if.then.42, label %if.end.43, !dbg !1114

if.then.42:                                       ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval, !dbg !1115
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1117

if.end.43:                                        ; preds = %if.end.39
  %19 = load %struct._object*, %struct._object** %m, align 8, !dbg !1118, !tbaa !1023
  %call44 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i64 32), !dbg !1120
  %cmp45 = icmp slt i32 %call44, 0, !dbg !1121
  br i1 %cmp45, label %if.then.46, label %if.end.47, !dbg !1122

if.then.46:                                       ; preds = %if.end.43
  store %struct._object* null, %struct._object** %retval, !dbg !1123
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1125

if.end.47:                                        ; preds = %if.end.43
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !1126, !tbaa !1023
  %call48 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 38), !dbg !1128
  %cmp49 = icmp slt i32 %call48, 0, !dbg !1129
  br i1 %cmp49, label %if.then.50, label %if.end.51, !dbg !1130

if.then.50:                                       ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval, !dbg !1131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1133

if.end.51:                                        ; preds = %if.end.47
  %21 = load %struct._object*, %struct._object** %m, align 8, !dbg !1134, !tbaa !1023
  store %struct._object* %21, %struct._object** %retval, !dbg !1135
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1135

cleanup:                                          ; preds = %if.end.51, %if.then.50, %if.then.46, %if.then.42, %if.then.38, %if.then.34, %if.then.23, %if.then.16, %if.then.10, %if.then.5, %if.then
  %22 = bitcast %struct._object** %m to i8*, !dbg !1136
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !1136
  %23 = load %struct._object*, %struct._object** %retval, !dbg !1136
  ret %struct._object* %23, !dbg !1136
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyList_New(i64) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

declare void @PyErr_Clear() #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @PyGC_Collect() #0 {
entry:
  %n = alloca i64, align 8
  %0 = bitcast i64* %n to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1137
  call void @llvm.dbg.declare(metadata i64* %n, metadata !406, metadata !1019), !dbg !1138
  %1 = load i32, i32* @collecting, align 4, !dbg !1139, !tbaa !1141
  %tobool = icmp ne i32 %1, 0, !dbg !1139
  br i1 %tobool, label %if.then, label %if.else, !dbg !1143

if.then:                                          ; preds = %entry
  store i64 0, i64* %n, align 8, !dbg !1144, !tbaa !1145
  br label %if.end, !dbg !1146

if.else:                                          ; preds = %entry
  store i32 1, i32* @collecting, align 4, !dbg !1147, !tbaa !1141
  %call = call i64 @collect_with_callback(i32 2), !dbg !1149
  store i64 %call, i64* %n, align 8, !dbg !1150, !tbaa !1145
  store i32 0, i32* @collecting, align 4, !dbg !1151, !tbaa !1141
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %n, align 8, !dbg !1152, !tbaa !1145
  %3 = bitcast i64* %n to i8*, !dbg !1153
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1153
  ret i64 %2, !dbg !1154
}

; Function Attrs: nounwind uwtable
define internal i64 @collect_with_callback(i32 %generation) #0 {
entry:
  %generation.addr = alloca i32, align 4
  %result = alloca i64, align 8
  %collected = alloca i64, align 8
  %uncollectable = alloca i64, align 8
  store i32 %generation, i32* %generation.addr, align 4, !tbaa !1141
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !649, metadata !1019), !dbg !1155
  %0 = bitcast i64* %result to i8*, !dbg !1156
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1156
  call void @llvm.dbg.declare(metadata i64* %result, metadata !650, metadata !1019), !dbg !1157
  %1 = bitcast i64* %collected to i8*, !dbg !1156
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1156
  call void @llvm.dbg.declare(metadata i64* %collected, metadata !651, metadata !1019), !dbg !1158
  %2 = bitcast i64* %uncollectable to i8*, !dbg !1156
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1156
  call void @llvm.dbg.declare(metadata i64* %uncollectable, metadata !652, metadata !1019), !dbg !1159
  %3 = load i32, i32* %generation.addr, align 4, !dbg !1160, !tbaa !1141
  call void @invoke_gc_callback(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %3, i64 0, i64 0), !dbg !1161
  %4 = load i32, i32* %generation.addr, align 4, !dbg !1162, !tbaa !1141
  %call = call i64 @collect(i32 %4, i64* %collected, i64* %uncollectable, i32 0), !dbg !1163
  store i64 %call, i64* %result, align 8, !dbg !1164, !tbaa !1145
  %5 = load i32, i32* %generation.addr, align 4, !dbg !1165, !tbaa !1141
  %6 = load i64, i64* %collected, align 8, !dbg !1166, !tbaa !1145
  %7 = load i64, i64* %uncollectable, align 8, !dbg !1167, !tbaa !1145
  call void @invoke_gc_callback(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 %5, i64 %6, i64 %7), !dbg !1168
  %8 = load i64, i64* %result, align 8, !dbg !1169, !tbaa !1145
  %9 = bitcast i64* %uncollectable to i8*, !dbg !1170
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !1170
  %10 = bitcast i64* %collected to i8*, !dbg !1170
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1170
  %11 = bitcast i64* %result to i8*, !dbg !1170
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1170
  ret i64 %8, !dbg !1171
}

; Function Attrs: nounwind uwtable
define i64 @_PyGC_CollectNoFail() #0 {
entry:
  %n = alloca i64, align 8
  %0 = bitcast i64* %n to i8*, !dbg !1172
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1172
  call void @llvm.dbg.declare(metadata i64* %n, metadata !409, metadata !1019), !dbg !1173
  %1 = load i32, i32* @collecting, align 4, !dbg !1174, !tbaa !1141
  %tobool = icmp ne i32 %1, 0, !dbg !1174
  br i1 %tobool, label %if.then, label %if.else, !dbg !1176

if.then:                                          ; preds = %entry
  store i64 0, i64* %n, align 8, !dbg !1177, !tbaa !1145
  br label %if.end, !dbg !1178

if.else:                                          ; preds = %entry
  store i32 1, i32* @collecting, align 4, !dbg !1179, !tbaa !1141
  %call = call i64 @collect(i32 2, i64* null, i64* null, i32 1), !dbg !1181
  store i64 %call, i64* %n, align 8, !dbg !1182, !tbaa !1145
  store i32 0, i32* @collecting, align 4, !dbg !1183, !tbaa !1141
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %n, align 8, !dbg !1184, !tbaa !1145
  %3 = bitcast i64* %n to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1185
  ret i64 %2, !dbg !1186
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
  store i32 %generation, i32* %generation.addr, align 4, !tbaa !1141
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !684, metadata !1019), !dbg !1187
  store i64* %n_collected, i64** %n_collected.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata i64** %n_collected.addr, metadata !685, metadata !1019), !dbg !1188
  store i64* %n_uncollectable, i64** %n_uncollectable.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata i64** %n_uncollectable.addr, metadata !686, metadata !1019), !dbg !1189
  store i32 %nofail, i32* %nofail.addr, align 4, !tbaa !1141
  call void @llvm.dbg.declare(metadata i32* %nofail.addr, metadata !687, metadata !1019), !dbg !1190
  %0 = bitcast i32* %i to i8*, !dbg !1191
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1191
  call void @llvm.dbg.declare(metadata i32* %i, metadata !688, metadata !1019), !dbg !1192
  %1 = bitcast i64* %m to i8*, !dbg !1193
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1193
  call void @llvm.dbg.declare(metadata i64* %m, metadata !689, metadata !1019), !dbg !1194
  store i64 0, i64* %m, align 8, !dbg !1194, !tbaa !1145
  %2 = bitcast i64* %n to i8*, !dbg !1195
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1195
  call void @llvm.dbg.declare(metadata i64* %n, metadata !690, metadata !1019), !dbg !1196
  store i64 0, i64* %n, align 8, !dbg !1196, !tbaa !1145
  %3 = bitcast %union._gc_head** %young to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1197
  call void @llvm.dbg.declare(metadata %union._gc_head** %young, metadata !691, metadata !1019), !dbg !1198
  %4 = bitcast %union._gc_head** %old to i8*, !dbg !1199
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1199
  call void @llvm.dbg.declare(metadata %union._gc_head** %old, metadata !692, metadata !1019), !dbg !1200
  %5 = bitcast %union._gc_head* %unreachable to i8*, !dbg !1201
  call void @llvm.lifetime.start(i64 24, i8* %5) #1, !dbg !1201
  call void @llvm.dbg.declare(metadata %union._gc_head* %unreachable, metadata !693, metadata !1019), !dbg !1202
  %6 = bitcast %union._gc_head* %finalizers to i8*, !dbg !1203
  call void @llvm.lifetime.start(i64 24, i8* %6) #1, !dbg !1203
  call void @llvm.dbg.declare(metadata %union._gc_head* %finalizers, metadata !694, metadata !1019), !dbg !1204
  %7 = bitcast %union._gc_head** %gc to i8*, !dbg !1205
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1205
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !695, metadata !1019), !dbg !1206
  %8 = bitcast double* %t1 to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !1207
  call void @llvm.dbg.declare(metadata double* %t1, metadata !696, metadata !1019), !dbg !1208
  store double 0.000000e+00, double* %t1, align 8, !dbg !1208, !tbaa !1209
  %9 = bitcast %struct.gc_generation_stats** %stats to i8*, !dbg !1211
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1211
  call void @llvm.dbg.declare(metadata %struct.gc_generation_stats** %stats, metadata !697, metadata !1019), !dbg !1212
  %10 = load i32, i32* %generation.addr, align 4, !dbg !1213, !tbaa !1141
  %idxprom = sext i32 %10 to i64, !dbg !1214
  %arrayidx = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* @generation_stats, i32 0, i64 %idxprom, !dbg !1214
  store %struct.gc_generation_stats* %arrayidx, %struct.gc_generation_stats** %stats, align 8, !dbg !1212, !tbaa !1023
  %11 = load i32, i32* @debug, align 4, !dbg !1215, !tbaa !1141
  %and = and i32 %11, 1, !dbg !1217
  %tobool = icmp ne i32 %and, 0, !dbg !1217
  br i1 %tobool, label %if.then, label %if.end, !dbg !1218

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %generation.addr, align 4, !dbg !1219, !tbaa !1141
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0), i32 %12), !dbg !1221
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0)), !dbg !1222
  store i32 0, i32* %i, align 4, !dbg !1223, !tbaa !1141
  br label %for.cond, !dbg !1225

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %i, align 4, !dbg !1226, !tbaa !1141
  %cmp = icmp slt i32 %13, 3, !dbg !1230
  br i1 %cmp, label %for.body, label %for.end, !dbg !1231

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !1232, !tbaa !1141
  %idxprom1 = sext i32 %14 to i64, !dbg !1233
  %arrayidx2 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom1, !dbg !1233
  %head = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx2, i32 0, i32 0, !dbg !1234
  %call = call i64 @gc_list_size(%union._gc_head* %head), !dbg !1235
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i64 %call), !dbg !1236
  br label %for.inc, !dbg !1236

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !1237, !tbaa !1141
  %inc = add i32 %15, 1, !dbg !1237
  store i32 %inc, i32* %i, align 4, !dbg !1237, !tbaa !1141
  br label %for.cond, !dbg !1238

for.end:                                          ; preds = %for.cond
  %call3 = call double @get_time(), !dbg !1239
  store double %call3, double* %t1, align 8, !dbg !1240, !tbaa !1209
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)), !dbg !1241
  br label %if.end, !dbg !1242

if.end:                                           ; preds = %for.end, %entry
  %16 = load i32, i32* %generation.addr, align 4, !dbg !1243, !tbaa !1141
  %add = add i32 %16, 1, !dbg !1245
  %cmp4 = icmp slt i32 %add, 3, !dbg !1246
  br i1 %cmp4, label %if.then.5, label %if.end.10, !dbg !1247

if.then.5:                                        ; preds = %if.end
  %17 = load i32, i32* %generation.addr, align 4, !dbg !1248, !tbaa !1141
  %add6 = add i32 %17, 1, !dbg !1249
  %idxprom7 = sext i32 %add6 to i64, !dbg !1250
  %arrayidx8 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom7, !dbg !1250
  %count = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx8, i32 0, i32 2, !dbg !1251
  %18 = load i32, i32* %count, align 4, !dbg !1252, !tbaa !1253
  %add9 = add i32 %18, 1, !dbg !1252
  store i32 %add9, i32* %count, align 4, !dbg !1252, !tbaa !1253
  br label %if.end.10, !dbg !1250

if.end.10:                                        ; preds = %if.then.5, %if.end
  store i32 0, i32* %i, align 4, !dbg !1255, !tbaa !1141
  br label %for.cond.11, !dbg !1257

for.cond.11:                                      ; preds = %for.inc.17, %if.end.10
  %19 = load i32, i32* %i, align 4, !dbg !1258, !tbaa !1141
  %20 = load i32, i32* %generation.addr, align 4, !dbg !1262, !tbaa !1141
  %cmp12 = icmp sle i32 %19, %20, !dbg !1263
  br i1 %cmp12, label %for.body.13, label %for.end.19, !dbg !1264

for.body.13:                                      ; preds = %for.cond.11
  %21 = load i32, i32* %i, align 4, !dbg !1265, !tbaa !1141
  %idxprom14 = sext i32 %21 to i64, !dbg !1266
  %arrayidx15 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom14, !dbg !1266
  %count16 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx15, i32 0, i32 2, !dbg !1267
  store i32 0, i32* %count16, align 4, !dbg !1268, !tbaa !1253
  br label %for.inc.17, !dbg !1266

for.inc.17:                                       ; preds = %for.body.13
  %22 = load i32, i32* %i, align 4, !dbg !1269, !tbaa !1141
  %inc18 = add i32 %22, 1, !dbg !1269
  store i32 %inc18, i32* %i, align 4, !dbg !1269, !tbaa !1141
  br label %for.cond.11, !dbg !1270

for.end.19:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4, !dbg !1271, !tbaa !1141
  br label %for.cond.20, !dbg !1273

for.cond.20:                                      ; preds = %for.inc.29, %for.end.19
  %23 = load i32, i32* %i, align 4, !dbg !1274, !tbaa !1141
  %24 = load i32, i32* %generation.addr, align 4, !dbg !1278, !tbaa !1141
  %cmp21 = icmp slt i32 %23, %24, !dbg !1279
  br i1 %cmp21, label %for.body.22, label %for.end.31, !dbg !1280

for.body.22:                                      ; preds = %for.cond.20
  %25 = load i32, i32* %i, align 4, !dbg !1281, !tbaa !1141
  %idxprom23 = sext i32 %25 to i64, !dbg !1283
  %arrayidx24 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom23, !dbg !1283
  %head25 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx24, i32 0, i32 0, !dbg !1284
  %26 = load i32, i32* %generation.addr, align 4, !dbg !1285, !tbaa !1141
  %idxprom26 = sext i32 %26 to i64, !dbg !1286
  %arrayidx27 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom26, !dbg !1286
  %head28 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx27, i32 0, i32 0, !dbg !1287
  call void @gc_list_merge(%union._gc_head* %head25, %union._gc_head* %head28), !dbg !1288
  br label %for.inc.29, !dbg !1289

for.inc.29:                                       ; preds = %for.body.22
  %27 = load i32, i32* %i, align 4, !dbg !1290, !tbaa !1141
  %inc30 = add i32 %27, 1, !dbg !1290
  store i32 %inc30, i32* %i, align 4, !dbg !1290, !tbaa !1141
  br label %for.cond.20, !dbg !1291

for.end.31:                                       ; preds = %for.cond.20
  %28 = load i32, i32* %generation.addr, align 4, !dbg !1292, !tbaa !1141
  %idxprom32 = sext i32 %28 to i64, !dbg !1293
  %arrayidx33 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom32, !dbg !1293
  %head34 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx33, i32 0, i32 0, !dbg !1294
  store %union._gc_head* %head34, %union._gc_head** %young, align 8, !dbg !1295, !tbaa !1023
  %29 = load i32, i32* %generation.addr, align 4, !dbg !1296, !tbaa !1141
  %cmp35 = icmp slt i32 %29, 2, !dbg !1298
  br i1 %cmp35, label %if.then.36, label %if.else, !dbg !1299

if.then.36:                                       ; preds = %for.end.31
  %30 = load i32, i32* %generation.addr, align 4, !dbg !1300, !tbaa !1141
  %add37 = add i32 %30, 1, !dbg !1301
  %idxprom38 = sext i32 %add37 to i64, !dbg !1302
  %arrayidx39 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom38, !dbg !1302
  %head40 = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx39, i32 0, i32 0, !dbg !1303
  store %union._gc_head* %head40, %union._gc_head** %old, align 8, !dbg !1304, !tbaa !1023
  br label %if.end.41, !dbg !1305

if.else:                                          ; preds = %for.end.31
  %31 = load %union._gc_head*, %union._gc_head** %young, align 8, !dbg !1306, !tbaa !1023
  store %union._gc_head* %31, %union._gc_head** %old, align 8, !dbg !1307, !tbaa !1023
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.36
  %32 = load %union._gc_head*, %union._gc_head** %young, align 8, !dbg !1308, !tbaa !1023
  call void @update_refs(%union._gc_head* %32), !dbg !1309
  %33 = load %union._gc_head*, %union._gc_head** %young, align 8, !dbg !1310, !tbaa !1023
  call void @subtract_refs(%union._gc_head* %33), !dbg !1311
  call void @gc_list_init(%union._gc_head* %unreachable), !dbg !1312
  %34 = load %union._gc_head*, %union._gc_head** %young, align 8, !dbg !1313, !tbaa !1023
  call void @move_unreachable(%union._gc_head* %34, %union._gc_head* %unreachable), !dbg !1314
  %35 = load %union._gc_head*, %union._gc_head** %young, align 8, !dbg !1315, !tbaa !1023
  %36 = load %union._gc_head*, %union._gc_head** %old, align 8, !dbg !1317, !tbaa !1023
  %cmp42 = icmp ne %union._gc_head* %35, %36, !dbg !1318
  br i1 %cmp42, label %if.then.43, label %if.else.49, !dbg !1319

if.then.43:                                       ; preds = %if.end.41
  %37 = load i32, i32* %generation.addr, align 4, !dbg !1320, !tbaa !1141
  %cmp44 = icmp eq i32 %37, 1, !dbg !1323
  br i1 %cmp44, label %if.then.45, label %if.end.48, !dbg !1324

if.then.45:                                       ; preds = %if.then.43
  %38 = load %union._gc_head*, %union._gc_head** %young, align 8, !dbg !1325, !tbaa !1023
  %call46 = call i64 @gc_list_size(%union._gc_head* %38), !dbg !1327
  %39 = load i64, i64* @long_lived_pending, align 8, !dbg !1328, !tbaa !1145
  %add47 = add i64 %39, %call46, !dbg !1328
  store i64 %add47, i64* @long_lived_pending, align 8, !dbg !1328, !tbaa !1145
  br label %if.end.48, !dbg !1329

if.end.48:                                        ; preds = %if.then.45, %if.then.43
  %40 = load %union._gc_head*, %union._gc_head** %young, align 8, !dbg !1330, !tbaa !1023
  %41 = load %union._gc_head*, %union._gc_head** %old, align 8, !dbg !1331, !tbaa !1023
  call void @gc_list_merge(%union._gc_head* %40, %union._gc_head* %41), !dbg !1332
  br label %if.end.51, !dbg !1333

if.else.49:                                       ; preds = %if.end.41
  %42 = load %union._gc_head*, %union._gc_head** %young, align 8, !dbg !1334, !tbaa !1023
  call void @untrack_dicts(%union._gc_head* %42), !dbg !1336
  store i64 0, i64* @long_lived_pending, align 8, !dbg !1337, !tbaa !1145
  %43 = load %union._gc_head*, %union._gc_head** %young, align 8, !dbg !1338, !tbaa !1023
  %call50 = call i64 @gc_list_size(%union._gc_head* %43), !dbg !1339
  store i64 %call50, i64* @long_lived_total, align 8, !dbg !1340, !tbaa !1145
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.end.48
  call void @gc_list_init(%union._gc_head* %finalizers), !dbg !1341
  call void @move_legacy_finalizers(%union._gc_head* %unreachable, %union._gc_head* %finalizers), !dbg !1342
  call void @move_legacy_finalizer_reachable(%union._gc_head* %finalizers), !dbg !1343
  %gc52 = bitcast %union._gc_head* %unreachable to %struct.anon*, !dbg !1344
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc52, i32 0, i32 0, !dbg !1346
  %44 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !1346, !tbaa !1347
  store %union._gc_head* %44, %union._gc_head** %gc, align 8, !dbg !1349, !tbaa !1023
  br label %for.cond.53, !dbg !1350

for.cond.53:                                      ; preds = %for.inc.61, %if.end.51
  %45 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !1351, !tbaa !1023
  %cmp54 = icmp ne %union._gc_head* %45, %unreachable, !dbg !1355
  br i1 %cmp54, label %for.body.55, label %for.end.64, !dbg !1356

for.body.55:                                      ; preds = %for.cond.53
  %46 = load i64, i64* %m, align 8, !dbg !1357, !tbaa !1145
  %inc56 = add i64 %46, 1, !dbg !1357
  store i64 %inc56, i64* %m, align 8, !dbg !1357, !tbaa !1145
  %47 = load i32, i32* @debug, align 4, !dbg !1359, !tbaa !1141
  %and57 = and i32 %47, 2, !dbg !1361
  %tobool58 = icmp ne i32 %and57, 0, !dbg !1361
  br i1 %tobool58, label %if.then.59, label %if.end.60, !dbg !1362

if.then.59:                                       ; preds = %for.body.55
  %48 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !1363, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %48, i64 1, !dbg !1365
  %49 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !1366
  call void @debug_cycle(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), %struct._object* %49), !dbg !1367
  br label %if.end.60, !dbg !1368

if.end.60:                                        ; preds = %if.then.59, %for.body.55
  br label %for.inc.61, !dbg !1369

for.inc.61:                                       ; preds = %if.end.60
  %50 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !1370, !tbaa !1023
  %gc62 = bitcast %union._gc_head* %50 to %struct.anon*, !dbg !1371
  %gc_next63 = getelementptr inbounds %struct.anon, %struct.anon* %gc62, i32 0, i32 0, !dbg !1372
  %51 = load %union._gc_head*, %union._gc_head** %gc_next63, align 8, !dbg !1372, !tbaa !1347
  store %union._gc_head* %51, %union._gc_head** %gc, align 8, !dbg !1373, !tbaa !1023
  br label %for.cond.53, !dbg !1374

for.end.64:                                       ; preds = %for.cond.53
  %52 = load %union._gc_head*, %union._gc_head** %old, align 8, !dbg !1375, !tbaa !1023
  %call65 = call i32 @handle_weakrefs(%union._gc_head* %unreachable, %union._gc_head* %52), !dbg !1376
  %conv = sext i32 %call65 to i64, !dbg !1376
  %53 = load i64, i64* %m, align 8, !dbg !1377, !tbaa !1145
  %add66 = add i64 %53, %conv, !dbg !1377
  store i64 %add66, i64* %m, align 8, !dbg !1377, !tbaa !1145
  call void @finalize_garbage(%union._gc_head* %unreachable), !dbg !1378
  %call67 = call i32 @check_garbage(%union._gc_head* %unreachable), !dbg !1379
  %tobool68 = icmp ne i32 %call67, 0, !dbg !1379
  br i1 %tobool68, label %if.then.69, label %if.else.70, !dbg !1381

if.then.69:                                       ; preds = %for.end.64
  call void @revive_garbage(%union._gc_head* %unreachable), !dbg !1382
  %54 = load %union._gc_head*, %union._gc_head** %old, align 8, !dbg !1384, !tbaa !1023
  call void @gc_list_merge(%union._gc_head* %unreachable, %union._gc_head* %54), !dbg !1385
  br label %if.end.71, !dbg !1386

if.else.70:                                       ; preds = %for.end.64
  %55 = load %union._gc_head*, %union._gc_head** %old, align 8, !dbg !1387, !tbaa !1023
  call void @delete_garbage(%union._gc_head* %unreachable, %union._gc_head* %55), !dbg !1389
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.69
  %gc72 = bitcast %union._gc_head* %finalizers to %struct.anon*, !dbg !1390
  %gc_next73 = getelementptr inbounds %struct.anon, %struct.anon* %gc72, i32 0, i32 0, !dbg !1392
  %56 = load %union._gc_head*, %union._gc_head** %gc_next73, align 8, !dbg !1392, !tbaa !1347
  store %union._gc_head* %56, %union._gc_head** %gc, align 8, !dbg !1393, !tbaa !1023
  br label %for.cond.74, !dbg !1394

for.cond.74:                                      ; preds = %for.inc.84, %if.end.71
  %57 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !1395, !tbaa !1023
  %cmp75 = icmp ne %union._gc_head* %57, %finalizers, !dbg !1397
  br i1 %cmp75, label %for.body.77, label %for.end.87, !dbg !1398

for.body.77:                                      ; preds = %for.cond.74
  %58 = load i64, i64* %n, align 8, !dbg !1399, !tbaa !1145
  %inc78 = add i64 %58, 1, !dbg !1399
  store i64 %inc78, i64* %n, align 8, !dbg !1399, !tbaa !1145
  %59 = load i32, i32* @debug, align 4, !dbg !1401, !tbaa !1141
  %and79 = and i32 %59, 4, !dbg !1403
  %tobool80 = icmp ne i32 %and79, 0, !dbg !1403
  br i1 %tobool80, label %if.then.81, label %if.end.83, !dbg !1404

if.then.81:                                       ; preds = %for.body.77
  %60 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !1405, !tbaa !1023
  %add.ptr82 = getelementptr %union._gc_head, %union._gc_head* %60, i64 1, !dbg !1406
  %61 = bitcast %union._gc_head* %add.ptr82 to %struct._object*, !dbg !1407
  call void @debug_cycle(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), %struct._object* %61), !dbg !1408
  br label %if.end.83, !dbg !1408

if.end.83:                                        ; preds = %if.then.81, %for.body.77
  br label %for.inc.84, !dbg !1409

for.inc.84:                                       ; preds = %if.end.83
  %62 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !1410, !tbaa !1023
  %gc85 = bitcast %union._gc_head* %62 to %struct.anon*, !dbg !1411
  %gc_next86 = getelementptr inbounds %struct.anon, %struct.anon* %gc85, i32 0, i32 0, !dbg !1412
  %63 = load %union._gc_head*, %union._gc_head** %gc_next86, align 8, !dbg !1412, !tbaa !1347
  store %union._gc_head* %63, %union._gc_head** %gc, align 8, !dbg !1413, !tbaa !1023
  br label %for.cond.74, !dbg !1414

for.end.87:                                       ; preds = %for.cond.74
  %64 = load i32, i32* @debug, align 4, !dbg !1415, !tbaa !1141
  %and88 = and i32 %64, 1, !dbg !1416
  %tobool89 = icmp ne i32 %and88, 0, !dbg !1416
  br i1 %tobool89, label %if.then.90, label %if.end.105, !dbg !1417

if.then.90:                                       ; preds = %for.end.87
  %65 = bitcast double* %t2 to i8*, !dbg !1418
  call void @llvm.lifetime.start(i64 8, i8* %65) #1, !dbg !1418
  call void @llvm.dbg.declare(metadata double* %t2, metadata !698, metadata !1019), !dbg !1419
  %call91 = call double @get_time(), !dbg !1420
  store double %call91, double* %t2, align 8, !dbg !1419, !tbaa !1209
  %66 = load i64, i64* %m, align 8, !dbg !1421, !tbaa !1145
  %cmp92 = icmp eq i64 %66, 0, !dbg !1423
  br i1 %cmp92, label %land.lhs.true, label %if.else.97, !dbg !1424

land.lhs.true:                                    ; preds = %if.then.90
  %67 = load i64, i64* %n, align 8, !dbg !1425, !tbaa !1145
  %cmp94 = icmp eq i64 %67, 0, !dbg !1427
  br i1 %cmp94, label %if.then.96, label %if.else.97, !dbg !1428

if.then.96:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0)), !dbg !1429
  br label %if.end.99, !dbg !1429

if.else.97:                                       ; preds = %land.lhs.true, %if.then.90
  %68 = load i64, i64* %n, align 8, !dbg !1430, !tbaa !1145
  %69 = load i64, i64* %m, align 8, !dbg !1431, !tbaa !1145
  %add98 = add i64 %68, %69, !dbg !1432
  %70 = load i64, i64* %n, align 8, !dbg !1433, !tbaa !1145
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.49, i32 0, i32 0), i64 %add98, i64 %70), !dbg !1434
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.96
  %71 = load double, double* %t1, align 8, !dbg !1435, !tbaa !1209
  %tobool100 = fcmp une double %71, 0.000000e+00, !dbg !1435
  br i1 %tobool100, label %land.lhs.true.101, label %if.end.104, !dbg !1437

land.lhs.true.101:                                ; preds = %if.end.99
  %72 = load double, double* %t2, align 8, !dbg !1438, !tbaa !1209
  %tobool102 = fcmp une double %72, 0.000000e+00, !dbg !1438
  br i1 %tobool102, label %if.then.103, label %if.end.104, !dbg !1440

if.then.103:                                      ; preds = %land.lhs.true.101
  %73 = load double, double* %t2, align 8, !dbg !1441, !tbaa !1209
  %74 = load double, double* %t1, align 8, !dbg !1443, !tbaa !1209
  %sub = fsub double %73, %74, !dbg !1444
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), double %sub), !dbg !1445
  br label %if.end.104, !dbg !1446

if.end.104:                                       ; preds = %if.then.103, %land.lhs.true.101, %if.end.99
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0)), !dbg !1447
  %75 = bitcast double* %t2 to i8*, !dbg !1448
  call void @llvm.lifetime.end(i64 8, i8* %75) #1, !dbg !1448
  br label %if.end.105, !dbg !1449

if.end.105:                                       ; preds = %if.end.104, %for.end.87
  %76 = load %union._gc_head*, %union._gc_head** %old, align 8, !dbg !1450, !tbaa !1023
  %call106 = call i32 @handle_legacy_finalizers(%union._gc_head* %finalizers, %union._gc_head* %76), !dbg !1451
  %77 = load i32, i32* %generation.addr, align 4, !dbg !1452, !tbaa !1141
  %cmp107 = icmp eq i32 %77, 2, !dbg !1454
  br i1 %cmp107, label %if.then.109, label %if.end.110, !dbg !1455

if.then.109:                                      ; preds = %if.end.105
  call void @clear_freelists(), !dbg !1456
  br label %if.end.110, !dbg !1458

if.end.110:                                       ; preds = %if.then.109, %if.end.105
  %call111 = call %struct._object* @PyErr_Occurred(), !dbg !1459
  %tobool112 = icmp ne %struct._object* %call111, null, !dbg !1459
  br i1 %tobool112, label %if.then.113, label %if.end.123, !dbg !1461

if.then.113:                                      ; preds = %if.end.110
  %78 = load i32, i32* %nofail.addr, align 4, !dbg !1462, !tbaa !1141
  %tobool114 = icmp ne i32 %78, 0, !dbg !1462
  br i1 %tobool114, label %if.then.115, label %if.else.116, !dbg !1465

if.then.115:                                      ; preds = %if.then.113
  call void @PyErr_Clear(), !dbg !1466
  br label %if.end.122, !dbg !1468

if.else.116:                                      ; preds = %if.then.113
  %79 = load %struct._object*, %struct._object** @gc_str, align 8, !dbg !1469, !tbaa !1023
  %cmp117 = icmp eq %struct._object* %79, null, !dbg !1472
  br i1 %cmp117, label %if.then.119, label %if.end.121, !dbg !1473

if.then.119:                                      ; preds = %if.else.116
  %call120 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0)), !dbg !1474
  store %struct._object* %call120, %struct._object** @gc_str, align 8, !dbg !1475, !tbaa !1023
  br label %if.end.121, !dbg !1476

if.end.121:                                       ; preds = %if.then.119, %if.else.116
  %80 = load %struct._object*, %struct._object** @gc_str, align 8, !dbg !1477, !tbaa !1023
  call void @PyErr_WriteUnraisable(%struct._object* %80), !dbg !1478
  call void @Py_FatalError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.53, i32 0, i32 0)) #5, !dbg !1479
  unreachable, !dbg !1479

if.end.122:                                       ; preds = %if.then.115
  br label %if.end.123, !dbg !1480

if.end.123:                                       ; preds = %if.end.122, %if.end.110
  %81 = load i64*, i64** %n_collected.addr, align 8, !dbg !1481, !tbaa !1023
  %tobool124 = icmp ne i64* %81, null, !dbg !1481
  br i1 %tobool124, label %if.then.125, label %if.end.126, !dbg !1483

if.then.125:                                      ; preds = %if.end.123
  %82 = load i64, i64* %m, align 8, !dbg !1484, !tbaa !1145
  %83 = load i64*, i64** %n_collected.addr, align 8, !dbg !1485, !tbaa !1023
  store i64 %82, i64* %83, align 8, !dbg !1486, !tbaa !1145
  br label %if.end.126, !dbg !1487

if.end.126:                                       ; preds = %if.then.125, %if.end.123
  %84 = load i64*, i64** %n_uncollectable.addr, align 8, !dbg !1488, !tbaa !1023
  %tobool127 = icmp ne i64* %84, null, !dbg !1488
  br i1 %tobool127, label %if.then.128, label %if.end.129, !dbg !1490

if.then.128:                                      ; preds = %if.end.126
  %85 = load i64, i64* %n, align 8, !dbg !1491, !tbaa !1145
  %86 = load i64*, i64** %n_uncollectable.addr, align 8, !dbg !1492, !tbaa !1023
  store i64 %85, i64* %86, align 8, !dbg !1493, !tbaa !1145
  br label %if.end.129, !dbg !1494

if.end.129:                                       ; preds = %if.then.128, %if.end.126
  %87 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %stats, align 8, !dbg !1495, !tbaa !1023
  %collections = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %87, i32 0, i32 0, !dbg !1496
  %88 = load i64, i64* %collections, align 8, !dbg !1497, !tbaa !1498
  %inc130 = add i64 %88, 1, !dbg !1497
  store i64 %inc130, i64* %collections, align 8, !dbg !1497, !tbaa !1498
  %89 = load i64, i64* %m, align 8, !dbg !1500, !tbaa !1145
  %90 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %stats, align 8, !dbg !1501, !tbaa !1023
  %collected = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %90, i32 0, i32 1, !dbg !1502
  %91 = load i64, i64* %collected, align 8, !dbg !1503, !tbaa !1504
  %add131 = add i64 %91, %89, !dbg !1503
  store i64 %add131, i64* %collected, align 8, !dbg !1503, !tbaa !1504
  %92 = load i64, i64* %n, align 8, !dbg !1505, !tbaa !1145
  %93 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %stats, align 8, !dbg !1506, !tbaa !1023
  %uncollectable = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %93, i32 0, i32 2, !dbg !1507
  %94 = load i64, i64* %uncollectable, align 8, !dbg !1508, !tbaa !1509
  %add132 = add i64 %94, %92, !dbg !1508
  store i64 %add132, i64* %uncollectable, align 8, !dbg !1508, !tbaa !1509
  %95 = load i64, i64* %n, align 8, !dbg !1510, !tbaa !1145
  %96 = load i64, i64* %m, align 8, !dbg !1511, !tbaa !1145
  %add133 = add i64 %95, %96, !dbg !1512
  %97 = bitcast %struct.gc_generation_stats** %stats to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 8, i8* %97) #1, !dbg !1513
  %98 = bitcast double* %t1 to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 8, i8* %98) #1, !dbg !1513
  %99 = bitcast %union._gc_head** %gc to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 8, i8* %99) #1, !dbg !1513
  %100 = bitcast %union._gc_head* %finalizers to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 24, i8* %100) #1, !dbg !1513
  %101 = bitcast %union._gc_head* %unreachable to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 24, i8* %101) #1, !dbg !1513
  %102 = bitcast %union._gc_head** %old to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !1513
  %103 = bitcast %union._gc_head** %young to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 8, i8* %103) #1, !dbg !1513
  %104 = bitcast i64* %n to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !1513
  %105 = bitcast i64* %m to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !1513
  %106 = bitcast i32* %i to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 4, i8* %106) #1, !dbg !1513
  ret i64 %add133, !dbg !1514
}

; Function Attrs: nounwind uwtable
define void @_PyGC_DumpShutdownStats() #0 {
entry:
  %message = alloca i8*, align 8
  %repr = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %0 = load i32, i32* @debug, align 4, !dbg !1515, !tbaa !1141
  %and = and i32 %0, 32, !dbg !1516
  %tobool = icmp ne i32 %and, 0, !dbg !1516
  br i1 %tobool, label %if.end.50, label %land.lhs.true, !dbg !1517

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1518, !tbaa !1023
  %cmp = icmp ne %struct._object* %1, null, !dbg !1520
  br i1 %cmp, label %land.lhs.true.1, label %if.end.50, !dbg !1521

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1522, !tbaa !1023
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*, !dbg !1524
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1, !dbg !1525
  %4 = load i64, i64* %ob_size, align 8, !dbg !1525, !tbaa !1526
  %cmp2 = icmp sgt i64 %4, 0, !dbg !1528
  br i1 %cmp2, label %if.then, label %if.end.50, !dbg !1529

if.then:                                          ; preds = %land.lhs.true.1
  %5 = bitcast i8** %message to i8*, !dbg !1530
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1530
  call void @llvm.dbg.declare(metadata i8** %message, metadata !414, metadata !1019), !dbg !1531
  %6 = load i32, i32* @debug, align 4, !dbg !1532, !tbaa !1141
  %and3 = and i32 %6, 4, !dbg !1534
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1534
  br i1 %tobool4, label %if.then.5, label %if.else, !dbg !1535

if.then.5:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8** %message, align 8, !dbg !1536, !tbaa !1023
  br label %if.end, !dbg !1537

if.else:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.9, i32 0, i32 0), i8** %message, align 8, !dbg !1538, !tbaa !1023
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %7 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8, !dbg !1539, !tbaa !1023
  %8 = load i8*, i8** %message, align 8, !dbg !1541, !tbaa !1023
  %9 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1542, !tbaa !1023
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*, !dbg !1543
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1, !dbg !1544
  %11 = load i64, i64* %ob_size6, align 8, !dbg !1544, !tbaa !1526
  %call = call i32 (%struct._object*, i8*, i32, i8*, %struct._object*, i8*, ...) @PyErr_WarnExplicitFormat(%struct._object* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %struct._object* null, i8* %8, i64 %11), !dbg !1545
  %tobool7 = icmp ne i32 %call, 0, !dbg !1545
  br i1 %tobool7, label %if.then.8, label %if.end.9, !dbg !1546

if.then.8:                                        ; preds = %if.end
  call void @PyErr_WriteUnraisable(%struct._object* null), !dbg !1547
  br label %if.end.9, !dbg !1547

if.end.9:                                         ; preds = %if.then.8, %if.end
  %12 = load i32, i32* @debug, align 4, !dbg !1548, !tbaa !1141
  %and10 = and i32 %12, 4, !dbg !1549
  %tobool11 = icmp ne i32 %and10, 0, !dbg !1549
  br i1 %tobool11, label %if.then.12, label %if.end.49, !dbg !1550

if.then.12:                                       ; preds = %if.end.9
  %13 = bitcast %struct._object** %repr to i8*, !dbg !1551
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !1551
  call void @llvm.dbg.declare(metadata %struct._object** %repr, metadata !417, metadata !1019), !dbg !1552
  store %struct._object* null, %struct._object** %repr, align 8, !dbg !1552, !tbaa !1023
  %14 = bitcast %struct._object** %bytes to i8*, !dbg !1551
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !1551
  call void @llvm.dbg.declare(metadata %struct._object** %bytes, metadata !420, metadata !1019), !dbg !1553
  store %struct._object* null, %struct._object** %bytes, align 8, !dbg !1553, !tbaa !1023
  %15 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1554, !tbaa !1023
  %call13 = call %struct._object* @PyObject_Repr(%struct._object* %15), !dbg !1555
  store %struct._object* %call13, %struct._object** %repr, align 8, !dbg !1556, !tbaa !1023
  %16 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1557, !tbaa !1023
  %tobool14 = icmp ne %struct._object* %16, null, !dbg !1557
  br i1 %tobool14, label %lor.lhs.false, label %if.then.17, !dbg !1559

lor.lhs.false:                                    ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1560, !tbaa !1023
  %call15 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %17), !dbg !1562
  store %struct._object* %call15, %struct._object** %bytes, align 8, !dbg !1563, !tbaa !1023
  %tobool16 = icmp ne %struct._object* %call15, null, !dbg !1563
  br i1 %tobool16, label %if.else.18, label %if.then.17, !dbg !1564

if.then.17:                                       ; preds = %lor.lhs.false, %if.then.12
  %18 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1565, !tbaa !1023
  call void @PyErr_WriteUnraisable(%struct._object* %18), !dbg !1566
  br label %if.end.19, !dbg !1566

if.else.18:                                       ; preds = %lor.lhs.false
  %19 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1567, !tbaa !1023
  %20 = bitcast %struct._object* %19 to %struct.PyBytesObject*, !dbg !1569
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %20, i32 0, i32 2, !dbg !1570
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1571
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay), !dbg !1572
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %do.body, !dbg !1573

do.body:                                          ; preds = %if.end.19
  %21 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !1574
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !421, metadata !1019), !dbg !1576
  %22 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1577, !tbaa !1023
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1576, !tbaa !1023
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1578, !tbaa !1023
  %cmp20 = icmp ne %struct._object* %23, null, !dbg !1579
  br i1 %cmp20, label %if.then.21, label %if.end.27, !dbg !1580

if.then.21:                                       ; preds = %do.body
  br label %do.body.22, !dbg !1581

do.body.22:                                       ; preds = %if.then.21
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1583
  call void @llvm.lifetime.start(i64 8, i8* %24) #1, !dbg !1583
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !423, metadata !1019), !dbg !1585
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1586, !tbaa !1023
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8, !dbg !1585, !tbaa !1023
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1587, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1589
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !1590, !tbaa !1048
  %dec = add i64 %27, -1, !dbg !1590
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1590, !tbaa !1048
  %cmp23 = icmp ne i64 %dec, 0, !dbg !1591
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !1592

if.then.24:                                       ; preds = %do.body.22
  br label %if.end.26, !dbg !1593

if.else.25:                                       ; preds = %do.body.22
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1595, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1597
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1597, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !1599
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1599, !tbaa !1600
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1602, !tbaa !1023
  call void %30(%struct._object* %31), !dbg !1603
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1604
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !1604
  br label %do.cond, !dbg !1606

do.cond:                                          ; preds = %if.end.26
  br label %do.end, !dbg !1607

do.end:                                           ; preds = %do.cond
  br label %if.end.27, !dbg !1609

if.end.27:                                        ; preds = %do.end, %do.body
  %33 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1611
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !1611
  br label %do.cond.28, !dbg !1614

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1615

do.end.29:                                        ; preds = %do.cond.28
  br label %do.body.30, !dbg !1617

do.body.30:                                       ; preds = %do.end.29
  %34 = bitcast %struct._object** %_py_xdecref_tmp31 to i8*, !dbg !1618
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !1618
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp31, metadata !426, metadata !1019), !dbg !1620
  %35 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1621, !tbaa !1023
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp31, align 8, !dbg !1620, !tbaa !1023
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp31, align 8, !dbg !1622, !tbaa !1023
  %cmp32 = icmp ne %struct._object* %36, null, !dbg !1623
  br i1 %cmp32, label %if.then.33, label %if.end.46, !dbg !1624

if.then.33:                                       ; preds = %do.body.30
  br label %do.body.34, !dbg !1625

do.body.34:                                       ; preds = %if.then.33
  %37 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !1627
  call void @llvm.lifetime.start(i64 8, i8* %37) #1, !dbg !1627
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !428, metadata !1019), !dbg !1629
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp31, align 8, !dbg !1630, !tbaa !1023
  store %struct._object* %38, %struct._object** %_py_decref_tmp35, align 8, !dbg !1629, !tbaa !1023
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !1631, !tbaa !1023
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !1633
  %40 = load i64, i64* %ob_refcnt36, align 8, !dbg !1634, !tbaa !1048
  %dec37 = add i64 %40, -1, !dbg !1634
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !1634, !tbaa !1048
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !1635
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !1636

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43, !dbg !1637

if.else.40:                                       ; preds = %do.body.34
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !1639, !tbaa !1023
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !1641
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1641, !tbaa !1598
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !1642
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !1642, !tbaa !1600
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !1643, !tbaa !1023
  call void %43(%struct._object* %44), !dbg !1644
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %45 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !1645
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !1645
  br label %do.cond.44, !dbg !1647

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !1648

do.end.45:                                        ; preds = %do.cond.44
  br label %if.end.46, !dbg !1650

if.end.46:                                        ; preds = %do.end.45, %do.body.30
  %46 = bitcast %struct._object** %_py_xdecref_tmp31 to i8*, !dbg !1652
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !1652
  br label %do.cond.47, !dbg !1653

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !1654

do.end.48:                                        ; preds = %do.cond.47
  %47 = bitcast %struct._object** %bytes to i8*, !dbg !1656
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !1656
  %48 = bitcast %struct._object** %repr to i8*, !dbg !1656
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !1656
  br label %if.end.49, !dbg !1657

if.end.49:                                        ; preds = %do.end.48, %if.end.9
  %49 = bitcast i8** %message to i8*, !dbg !1658
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !1658
  br label %if.end.50, !dbg !1659

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.1, %land.lhs.true, %entry
  ret void, !dbg !1660
}

declare i32 @PyErr_WarnExplicitFormat(%struct._object*, i8*, i32, i8*, %struct._object*, i8*, ...) #3

declare void @PyErr_WriteUnraisable(%struct._object*) #3

declare %struct._object* @PyObject_Repr(%struct._object*) #3

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #3

declare void @PySys_WriteStderr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @_PyGC_Fini() #0 {
entry:
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  br label %do.body, !dbg !1661

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1662
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !433, metadata !1019), !dbg !1664
  %1 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !1665, !tbaa !1023
  store %struct._object* %1, %struct._object** %_py_tmp, align 8, !dbg !1664, !tbaa !1023
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1666, !tbaa !1023
  %cmp = icmp ne %struct._object* %2, null, !dbg !1667
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1668

if.then:                                          ; preds = %do.body
  store %struct._object* null, %struct._object** @callbacks, align 8, !dbg !1669, !tbaa !1023
  br label %do.body.1, !dbg !1671

do.body.1:                                        ; preds = %if.then
  %3 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1672
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1672
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !435, metadata !1019), !dbg !1674
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1675, !tbaa !1023
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8, !dbg !1674, !tbaa !1023
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1676, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !1678
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1679, !tbaa !1048
  %dec = add i64 %6, -1, !dbg !1679
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1679, !tbaa !1048
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1680
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1681

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1682

if.else:                                          ; preds = %do.body.1
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1684, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1686
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1686, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4, !dbg !1687
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1687, !tbaa !1600
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1688, !tbaa !1023
  call void %9(%struct._object* %10), !dbg !1689
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1690
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1690
  br label %do.cond, !dbg !1692

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1693

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1695

if.end.4:                                         ; preds = %do.end, %do.body
  %12 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1697
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !1697
  br label %do.end.6, !dbg !1700

do.end.6:                                         ; preds = %if.end.4
  br label %do.body.7, !dbg !1701

do.body.7:                                        ; preds = %do.end.6
  %13 = bitcast %struct._object** %_py_tmp8 to i8*, !dbg !1702
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !1702
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp8, metadata !439, metadata !1019), !dbg !1704
  %14 = load %struct._object*, %struct._object** @tmod, align 8, !dbg !1705, !tbaa !1023
  store %struct._object* %14, %struct._object** %_py_tmp8, align 8, !dbg !1704, !tbaa !1023
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8, !dbg !1706, !tbaa !1023
  %cmp9 = icmp ne %struct._object* %15, null, !dbg !1707
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !1708

if.then.10:                                       ; preds = %do.body.7
  store %struct._object* null, %struct._object** @tmod, align 8, !dbg !1709, !tbaa !1023
  br label %do.body.11, !dbg !1711

do.body.11:                                       ; preds = %if.then.10
  %16 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !1712
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !1712
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !441, metadata !1019), !dbg !1714
  %17 = load %struct._object*, %struct._object** %_py_tmp8, align 8, !dbg !1715, !tbaa !1023
  store %struct._object* %17, %struct._object** %_py_decref_tmp12, align 8, !dbg !1714, !tbaa !1023
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1716, !tbaa !1023
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1718
  %19 = load i64, i64* %ob_refcnt13, align 8, !dbg !1719, !tbaa !1048
  %dec14 = add i64 %19, -1, !dbg !1719
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !1719, !tbaa !1048
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !1720
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !1721

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !1722

if.else.17:                                       ; preds = %do.body.11
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1724, !tbaa !1023
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !1726
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1726, !tbaa !1598
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !1727
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !1727, !tbaa !1600
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1728, !tbaa !1023
  call void %22(%struct._object* %23), !dbg !1729
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %24 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !1730
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !1730
  br label %do.cond.21, !dbg !1732

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !1733

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !1735

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %25 = bitcast %struct._object** %_py_tmp8 to i8*, !dbg !1737
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !1737
  br label %do.end.25, !dbg !1738

do.end.25:                                        ; preds = %if.end.23
  ret void, !dbg !1739
}

; Function Attrs: nounwind uwtable
define void @_PyGC_Dump(%union._gc_head* %g) #0 {
entry:
  %g.addr = alloca %union._gc_head*, align 8
  store %union._gc_head* %g, %union._gc_head** %g.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %g.addr, metadata !449, metadata !1019), !dbg !1740
  %0 = load %union._gc_head*, %union._gc_head** %g.addr, align 8, !dbg !1741, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %0, i64 1, !dbg !1742
  %1 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !1743
  call void @_PyObject_Dump(%struct._object* %1), !dbg !1744
  ret void, !dbg !1745
}

declare void @_PyObject_Dump(%struct._object*) #3

; Function Attrs: nounwind uwtable
define void @PyObject_GC_Track(i8* %op) #0 {
entry:
  %op.addr = alloca i8*, align 8
  %g = alloca %union._gc_head*, align 8
  store i8* %op, i8** %op.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata i8** %op.addr, metadata !452, metadata !1019), !dbg !1746
  br label %do.body, !dbg !1747

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !1748
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1748
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !453, metadata !1019), !dbg !1750
  %1 = load i8*, i8** %op.addr, align 8, !dbg !1751, !tbaa !1023
  %2 = bitcast i8* %1 to %union._gc_head*, !dbg !1752
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !1753
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !1750, !tbaa !1023
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1754, !tbaa !1023
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !1756
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1757
  %4 = load i64, i64* %gc_refs, align 8, !dbg !1757, !tbaa !1758
  %shr = ashr i64 %4, 1, !dbg !1759
  %cmp = icmp ne i64 %shr, -2, !dbg !1760
  br i1 %cmp, label %if.then, label %if.end, !dbg !1761

if.then:                                          ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #5, !dbg !1762
  unreachable, !dbg !1762

if.end:                                           ; preds = %do.body
  br label %do.body.1, !dbg !1764

do.body.1:                                        ; preds = %if.end
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1766, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !1769
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !1770
  %6 = load i64, i64* %gc_refs3, align 8, !dbg !1770, !tbaa !1758
  %and = and i64 %6, 1, !dbg !1771
  %or = or i64 %and, -6, !dbg !1772
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1773, !tbaa !1023
  %gc4 = bitcast %union._gc_head* %7 to %struct.anon*, !dbg !1774
  %gc_refs5 = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 2, !dbg !1775
  store i64 %or, i64* %gc_refs5, align 8, !dbg !1776, !tbaa !1758
  br label %do.cond, !dbg !1777

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !1778

do.end:                                           ; preds = %do.cond
  %8 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1780, !tbaa !1023
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1782, !tbaa !1023
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !1783
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !1784
  store %union._gc_head* %8, %union._gc_head** %gc_next, align 8, !dbg !1785, !tbaa !1347
  %10 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1786, !tbaa !1023
  %gc7 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !1787
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 1, !dbg !1788
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1788, !tbaa !1789
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1790, !tbaa !1023
  %gc8 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !1791
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !1792
  store %union._gc_head* %11, %union._gc_head** %gc_prev9, align 8, !dbg !1793, !tbaa !1789
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1794, !tbaa !1023
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1795, !tbaa !1023
  %gc10 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !1796
  %gc_prev11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1, !dbg !1797
  %15 = load %union._gc_head*, %union._gc_head** %gc_prev11, align 8, !dbg !1797, !tbaa !1789
  %gc12 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !1798
  %gc_next13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0, !dbg !1799
  store %union._gc_head* %13, %union._gc_head** %gc_next13, align 8, !dbg !1800, !tbaa !1347
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1801, !tbaa !1023
  %17 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1802, !tbaa !1023
  %gc14 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !1803
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1, !dbg !1804
  store %union._gc_head* %16, %union._gc_head** %gc_prev15, align 8, !dbg !1805, !tbaa !1789
  %18 = bitcast %union._gc_head** %g to i8*, !dbg !1806
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !1806
  br label %do.end.17, !dbg !1807

do.end.17:                                        ; preds = %do.end
  ret void, !dbg !1808
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind uwtable
define void @PyObject_GC_UnTrack(i8* %op) #0 {
entry:
  %op.addr = alloca i8*, align 8
  %g = alloca %union._gc_head*, align 8
  store i8* %op, i8** %op.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata i8** %op.addr, metadata !457, metadata !1019), !dbg !1809
  %0 = load i8*, i8** %op.addr, align 8, !dbg !1810, !tbaa !1023
  %1 = bitcast i8* %0 to %union._gc_head*, !dbg !1811
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1, !dbg !1812
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*, !dbg !1813
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1814
  %2 = load i64, i64* %gc_refs, align 8, !dbg !1814, !tbaa !1758
  %shr = ashr i64 %2, 1, !dbg !1815
  %cmp = icmp ne i64 %shr, -2, !dbg !1816
  br i1 %cmp, label %if.then, label %if.end, !dbg !1817

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1818

do.body:                                          ; preds = %if.then
  %3 = bitcast %union._gc_head** %g to i8*, !dbg !1819
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1819
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !458, metadata !1019), !dbg !1821
  %4 = load i8*, i8** %op.addr, align 8, !dbg !1822, !tbaa !1023
  %5 = bitcast i8* %4 to %union._gc_head*, !dbg !1823
  %add.ptr1 = getelementptr %union._gc_head, %union._gc_head* %5, i64 -1, !dbg !1824
  store %union._gc_head* %add.ptr1, %union._gc_head** %g, align 8, !dbg !1821, !tbaa !1023
  br label %do.body.2, !dbg !1825

do.body.2:                                        ; preds = %do.body
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1826, !tbaa !1023
  %gc3 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !1829
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2, !dbg !1830
  %7 = load i64, i64* %gc_refs4, align 8, !dbg !1830, !tbaa !1758
  %and = and i64 %7, 1, !dbg !1831
  %or = or i64 %and, -4, !dbg !1832
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1833, !tbaa !1023
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !1834
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2, !dbg !1835
  store i64 %or, i64* %gc_refs6, align 8, !dbg !1836, !tbaa !1758
  br label %do.cond, !dbg !1837

do.cond:                                          ; preds = %do.body.2
  br label %do.end, !dbg !1838

do.end:                                           ; preds = %do.cond
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1840, !tbaa !1023
  %gc7 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !1842
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 0, !dbg !1843
  %10 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !1843, !tbaa !1347
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1844, !tbaa !1023
  %gc8 = bitcast %union._gc_head* %11 to %struct.anon*, !dbg !1845
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !1846
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1846, !tbaa !1789
  %gc9 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !1847
  %gc_next10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 0, !dbg !1848
  store %union._gc_head* %10, %union._gc_head** %gc_next10, align 8, !dbg !1849, !tbaa !1347
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1850, !tbaa !1023
  %gc11 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !1851
  %gc_prev12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 1, !dbg !1852
  %14 = load %union._gc_head*, %union._gc_head** %gc_prev12, align 8, !dbg !1852, !tbaa !1789
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1853, !tbaa !1023
  %gc13 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !1854
  %gc_next14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 0, !dbg !1855
  %16 = load %union._gc_head*, %union._gc_head** %gc_next14, align 8, !dbg !1855, !tbaa !1347
  %gc15 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !1856
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1, !dbg !1857
  store %union._gc_head* %14, %union._gc_head** %gc_prev16, align 8, !dbg !1858, !tbaa !1789
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1859, !tbaa !1023
  %gc17 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !1860
  %gc_next18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 0, !dbg !1861
  store %union._gc_head* null, %union._gc_head** %gc_next18, align 8, !dbg !1862, !tbaa !1347
  %18 = bitcast %union._gc_head** %g to i8*, !dbg !1863
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !1863
  br label %do.end.20, !dbg !1864

do.end.20:                                        ; preds = %do.end
  br label %if.end, !dbg !1865

if.end:                                           ; preds = %do.end.20, %entry
  ret void, !dbg !1867
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_GC_Malloc(i64 %basicsize) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %basicsize.addr = alloca i64, align 8
  %op = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %basicsize, i64* %basicsize.addr, align 8, !tbaa !1145
  call void @llvm.dbg.declare(metadata i64* %basicsize.addr, metadata !465, metadata !1019), !dbg !1868
  %0 = bitcast %struct._object** %op to i8*, !dbg !1869
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1869
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !466, metadata !1019), !dbg !1870
  %1 = bitcast %union._gc_head** %g to i8*, !dbg !1871
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1871
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !467, metadata !1019), !dbg !1872
  %2 = load i64, i64* %basicsize.addr, align 8, !dbg !1873, !tbaa !1145
  %cmp = icmp ugt i64 %2, 9223372036854775783, !dbg !1875
  br i1 %cmp, label %if.then, label %if.end, !dbg !1876

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !1877
  store %struct._object* %call, %struct._object** %retval, !dbg !1878
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1878

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %basicsize.addr, align 8, !dbg !1879, !tbaa !1145
  %add = add i64 24, %3, !dbg !1880
  %call1 = call i8* @PyObject_Malloc(i64 %add), !dbg !1881
  %4 = bitcast i8* %call1 to %union._gc_head*, !dbg !1882
  store %union._gc_head* %4, %union._gc_head** %g, align 8, !dbg !1883, !tbaa !1023
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1884, !tbaa !1023
  %cmp2 = icmp eq %union._gc_head* %5, null, !dbg !1886
  br i1 %cmp2, label %if.then.3, label %if.end.5, !dbg !1887

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory(), !dbg !1888
  store %struct._object* %call4, %struct._object** %retval, !dbg !1889
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1889

if.end.5:                                         ; preds = %if.end
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1890, !tbaa !1023
  %gc = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !1891
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1892
  store i64 0, i64* %gc_refs, align 8, !dbg !1893, !tbaa !1758
  br label %do.body, !dbg !1894

do.body:                                          ; preds = %if.end.5
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1895, !tbaa !1023
  %gc6 = bitcast %union._gc_head* %7 to %struct.anon*, !dbg !1898
  %gc_refs7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 2, !dbg !1899
  %8 = load i64, i64* %gc_refs7, align 8, !dbg !1899, !tbaa !1758
  %and = and i64 %8, 1, !dbg !1900
  %or = or i64 %and, -4, !dbg !1901
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1902, !tbaa !1023
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !1903
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2, !dbg !1904
  store i64 %or, i64* %gc_refs9, align 8, !dbg !1905, !tbaa !1758
  br label %do.cond, !dbg !1906

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1907

do.end:                                           ; preds = %do.cond
  %10 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4, !dbg !1909, !tbaa !1253
  %inc = add i32 %10, 1, !dbg !1909
  store i32 %inc, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4, !dbg !1909, !tbaa !1253
  %11 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4, !dbg !1910, !tbaa !1253
  %12 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 1), align 4, !dbg !1912, !tbaa !1913
  %cmp10 = icmp sgt i32 %11, %12, !dbg !1914
  br i1 %cmp10, label %land.lhs.true, label %if.end.20, !dbg !1915

land.lhs.true:                                    ; preds = %do.end
  %13 = load i32, i32* @enabled, align 4, !dbg !1916, !tbaa !1141
  %tobool = icmp ne i32 %13, 0, !dbg !1916
  br i1 %tobool, label %land.lhs.true.11, label %if.end.20, !dbg !1917

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %14 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 1), align 4, !dbg !1918, !tbaa !1913
  %tobool12 = icmp ne i32 %14, 0, !dbg !1919
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.20, !dbg !1920

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %15 = load i32, i32* @collecting, align 4, !dbg !1921, !tbaa !1141
  %tobool14 = icmp ne i32 %15, 0, !dbg !1921
  br i1 %tobool14, label %if.end.20, label %land.lhs.true.15, !dbg !1922

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %call16 = call %struct._object* @PyErr_Occurred(), !dbg !1923
  %tobool17 = icmp ne %struct._object* %call16, null, !dbg !1923
  br i1 %tobool17, label %if.end.20, label %if.then.18, !dbg !1924

if.then.18:                                       ; preds = %land.lhs.true.15
  store i32 1, i32* @collecting, align 4, !dbg !1925, !tbaa !1141
  %call19 = call i64 @collect_generations(), !dbg !1927
  store i32 0, i32* @collecting, align 4, !dbg !1928, !tbaa !1141
  br label %if.end.20, !dbg !1929

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.15, %land.lhs.true.13, %land.lhs.true.11, %land.lhs.true, %do.end
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1930, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %16, i64 1, !dbg !1931
  %17 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !1932
  store %struct._object* %17, %struct._object** %op, align 8, !dbg !1933, !tbaa !1023
  %18 = load %struct._object*, %struct._object** %op, align 8, !dbg !1934, !tbaa !1023
  store %struct._object* %18, %struct._object** %retval, !dbg !1935
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1935

cleanup:                                          ; preds = %if.end.20, %if.then.3, %if.then
  %19 = bitcast %union._gc_head** %g to i8*, !dbg !1936
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1936
  %20 = bitcast %struct._object** %op to i8*, !dbg !1936
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1936
  %21 = load %struct._object*, %struct._object** %retval, !dbg !1936
  ret %struct._object* %21, !dbg !1936
}

declare %struct._object* @PyErr_NoMemory() #3

declare i8* @PyObject_Malloc(i64) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define internal i64 @collect_generations() #0 {
entry:
  %i = alloca i32, align 4
  %n = alloca i64, align 8
  %0 = bitcast i32* %i to i8*, !dbg !1937
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1937
  call void @llvm.dbg.declare(metadata i32* %i, metadata !892, metadata !1019), !dbg !1938
  %1 = bitcast i64* %n to i8*, !dbg !1939
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1939
  call void @llvm.dbg.declare(metadata i64* %n, metadata !893, metadata !1019), !dbg !1940
  store i64 0, i64* %n, align 8, !dbg !1940, !tbaa !1145
  store i32 2, i32* %i, align 4, !dbg !1941, !tbaa !1141
  br label %for.cond, !dbg !1943

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !1944, !tbaa !1141
  %cmp = icmp sge i32 %2, 0, !dbg !1948
  br i1 %cmp, label %for.body, label %for.end, !dbg !1949

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !1950, !tbaa !1141
  %idxprom = sext i32 %3 to i64, !dbg !1953
  %arrayidx = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom, !dbg !1953
  %count = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx, i32 0, i32 2, !dbg !1954
  %4 = load i32, i32* %count, align 4, !dbg !1954, !tbaa !1253
  %5 = load i32, i32* %i, align 4, !dbg !1955, !tbaa !1141
  %idxprom1 = sext i32 %5 to i64, !dbg !1956
  %arrayidx2 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom1, !dbg !1956
  %threshold = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx2, i32 0, i32 1, !dbg !1957
  %6 = load i32, i32* %threshold, align 4, !dbg !1957, !tbaa !1913
  %cmp3 = icmp sgt i32 %4, %6, !dbg !1958
  br i1 %cmp3, label %if.then, label %if.end.7, !dbg !1959

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !1960, !tbaa !1141
  %cmp4 = icmp eq i32 %7, 2, !dbg !1963
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !1964

land.lhs.true:                                    ; preds = %if.then
  %8 = load i64, i64* @long_lived_pending, align 8, !dbg !1965, !tbaa !1145
  %9 = load i64, i64* @long_lived_total, align 8, !dbg !1967, !tbaa !1145
  %div = sdiv i64 %9, 4, !dbg !1968
  %cmp5 = icmp slt i64 %8, %div, !dbg !1969
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !1970

if.then.6:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !1971

if.end:                                           ; preds = %land.lhs.true, %if.then
  %10 = load i32, i32* %i, align 4, !dbg !1972, !tbaa !1141
  %call = call i64 @collect_with_callback(i32 %10), !dbg !1973
  store i64 %call, i64* %n, align 8, !dbg !1974, !tbaa !1145
  br label %for.end, !dbg !1975

if.end.7:                                         ; preds = %for.body
  br label %for.inc, !dbg !1976

for.inc:                                          ; preds = %if.end.7, %if.then.6
  %11 = load i32, i32* %i, align 4, !dbg !1977, !tbaa !1141
  %dec = add i32 %11, -1, !dbg !1977
  store i32 %dec, i32* %i, align 4, !dbg !1977, !tbaa !1141
  br label %for.cond, !dbg !1978

for.end:                                          ; preds = %if.end, %for.cond
  %12 = load i64, i64* %n, align 8, !dbg !1979, !tbaa !1145
  %13 = bitcast i64* %n to i8*, !dbg !1980
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !1980
  %14 = bitcast i32* %i to i8*, !dbg !1980
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !1980
  ret i64 %12, !dbg !1981
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_GC_New(%struct._typeobject* %tp) #0 {
entry:
  %tp.addr = alloca %struct._typeobject*, align 8
  %op = alloca %struct._object*, align 8
  store %struct._typeobject* %tp, %struct._typeobject** %tp.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._typeobject** %tp.addr, metadata !474, metadata !1019), !dbg !1982
  %0 = bitcast %struct._object** %op to i8*, !dbg !1983
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1983
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !475, metadata !1019), !dbg !1984
  %1 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8, !dbg !1985, !tbaa !1023
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 2, !dbg !1986
  %2 = load i64, i64* %tp_basicsize, align 8, !dbg !1986, !tbaa !1987
  %call = call %struct._object* @_PyObject_GC_Malloc(i64 %2), !dbg !1988
  store %struct._object* %call, %struct._object** %op, align 8, !dbg !1984, !tbaa !1023
  %3 = load %struct._object*, %struct._object** %op, align 8, !dbg !1989, !tbaa !1023
  %cmp = icmp ne %struct._object* %3, null, !dbg !1991
  br i1 %cmp, label %if.then, label %if.end, !dbg !1992

if.then:                                          ; preds = %entry
  %4 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8, !dbg !1993, !tbaa !1023
  %5 = load %struct._object*, %struct._object** %op, align 8, !dbg !1994, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !1995
  store %struct._typeobject* %4, %struct._typeobject** %ob_type, align 8, !dbg !1996, !tbaa !1598
  %6 = load %struct._object*, %struct._object** %op, align 8, !dbg !1997, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !1998
  store i64 1, i64* %ob_refcnt, align 8, !dbg !1999, !tbaa !1048
  %7 = load %struct._object*, %struct._object** %op, align 8, !dbg !2000, !tbaa !1023
  store %struct._object* %7, %struct._object** %op, align 8, !dbg !2001, !tbaa !1023
  br label %if.end, !dbg !2002

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._object*, %struct._object** %op, align 8, !dbg !2003, !tbaa !1023
  %9 = bitcast %struct._object** %op to i8*, !dbg !2004
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !2004
  ret %struct._object* %8, !dbg !2005
}

; Function Attrs: nounwind uwtable
define %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* %tp, i64 %nitems) #0 {
entry:
  %retval = alloca %struct.PyVarObject*, align 8
  %tp.addr = alloca %struct._typeobject*, align 8
  %nitems.addr = alloca i64, align 8
  %size = alloca i64, align 8
  %op = alloca %struct.PyVarObject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %tp, %struct._typeobject** %tp.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._typeobject** %tp.addr, metadata !480, metadata !1019), !dbg !2006
  store i64 %nitems, i64* %nitems.addr, align 8, !tbaa !1145
  call void @llvm.dbg.declare(metadata i64* %nitems.addr, metadata !481, metadata !1019), !dbg !2007
  %0 = bitcast i64* %size to i8*, !dbg !2008
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2008
  call void @llvm.dbg.declare(metadata i64* %size, metadata !482, metadata !1019), !dbg !2009
  %1 = bitcast %struct.PyVarObject** %op to i8*, !dbg !2010
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2010
  call void @llvm.dbg.declare(metadata %struct.PyVarObject** %op, metadata !483, metadata !1019), !dbg !2011
  %2 = load i64, i64* %nitems.addr, align 8, !dbg !2012, !tbaa !1145
  %cmp = icmp slt i64 %2, 0, !dbg !2014
  br i1 %cmp, label %if.then, label %if.end, !dbg !2015

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 1761), !dbg !2016
  store %struct.PyVarObject* null, %struct.PyVarObject** %retval, !dbg !2018
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2018

if.end:                                           ; preds = %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8, !dbg !2019, !tbaa !1023
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 2, !dbg !2020
  %4 = load i64, i64* %tp_basicsize, align 8, !dbg !2020, !tbaa !1987
  %5 = load i64, i64* %nitems.addr, align 8, !dbg !2021, !tbaa !1145
  %6 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8, !dbg !2022, !tbaa !1023
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 3, !dbg !2023
  %7 = load i64, i64* %tp_itemsize, align 8, !dbg !2023, !tbaa !2024
  %mul = mul i64 %5, %7, !dbg !2025
  %add = add i64 %4, %mul, !dbg !2026
  %add1 = add i64 %add, 7, !dbg !2027
  %and = and i64 %add1, -8, !dbg !2028
  store i64 %and, i64* %size, align 8, !dbg !2029, !tbaa !1145
  %8 = load i64, i64* %size, align 8, !dbg !2030, !tbaa !1145
  %call = call %struct._object* @_PyObject_GC_Malloc(i64 %8), !dbg !2031
  %9 = bitcast %struct._object* %call to %struct.PyVarObject*, !dbg !2032
  store %struct.PyVarObject* %9, %struct.PyVarObject** %op, align 8, !dbg !2033, !tbaa !1023
  %10 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8, !dbg !2034, !tbaa !1023
  %cmp2 = icmp ne %struct.PyVarObject* %10, null, !dbg !2036
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2037

if.then.3:                                        ; preds = %if.end
  %11 = load i64, i64* %nitems.addr, align 8, !dbg !2038, !tbaa !1145
  %12 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8, !dbg !2039, !tbaa !1023
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !2040
  store i64 %11, i64* %ob_size, align 8, !dbg !2041, !tbaa !1526
  %13 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8, !dbg !2042, !tbaa !1023
  %14 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8, !dbg !2043, !tbaa !1023
  %15 = bitcast %struct.PyVarObject* %14 to %struct._object*, !dbg !2044
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2045
  store %struct._typeobject* %13, %struct._typeobject** %ob_type, align 8, !dbg !2046, !tbaa !1598
  %16 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8, !dbg !2047, !tbaa !1023
  %17 = bitcast %struct.PyVarObject* %16 to %struct._object*, !dbg !2048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !2049
  store i64 1, i64* %ob_refcnt, align 8, !dbg !2050, !tbaa !1048
  %18 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8, !dbg !2051, !tbaa !1023
  store %struct.PyVarObject* %18, %struct.PyVarObject** %op, align 8, !dbg !2052, !tbaa !1023
  br label %if.end.4, !dbg !2053

if.end.4:                                         ; preds = %if.then.3, %if.end
  %19 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8, !dbg !2054, !tbaa !1023
  store %struct.PyVarObject* %19, %struct.PyVarObject** %retval, !dbg !2055
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2055

cleanup:                                          ; preds = %if.end.4, %if.then
  %20 = bitcast %struct.PyVarObject** %op to i8*, !dbg !2056
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !2056
  %21 = bitcast i64* %size to i8*, !dbg !2056
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !2056
  %22 = load %struct.PyVarObject*, %struct.PyVarObject** %retval, !dbg !2056
  ret %struct.PyVarObject* %22, !dbg !2056
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

; Function Attrs: nounwind uwtable
define %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject* %op, i64 %nitems) #0 {
entry:
  %retval = alloca %struct.PyVarObject*, align 8
  %op.addr = alloca %struct.PyVarObject*, align 8
  %nitems.addr = alloca i64, align 8
  %basicsize = alloca i64, align 8
  %g = alloca %union._gc_head*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyVarObject* %op, %struct.PyVarObject** %op.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct.PyVarObject** %op.addr, metadata !488, metadata !1019), !dbg !2057
  store i64 %nitems, i64* %nitems.addr, align 8, !tbaa !1145
  call void @llvm.dbg.declare(metadata i64* %nitems.addr, metadata !489, metadata !1019), !dbg !2058
  %0 = bitcast i64* %basicsize to i8*, !dbg !2059
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2059
  call void @llvm.dbg.declare(metadata i64* %basicsize, metadata !490, metadata !1019), !dbg !2060
  %1 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8, !dbg !2061, !tbaa !1023
  %2 = bitcast %struct.PyVarObject* %1 to %struct._object*, !dbg !2062
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !2063
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2063, !tbaa !1598
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 2, !dbg !2064
  %4 = load i64, i64* %tp_basicsize, align 8, !dbg !2064, !tbaa !1987
  %5 = load i64, i64* %nitems.addr, align 8, !dbg !2065, !tbaa !1145
  %6 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8, !dbg !2066, !tbaa !1023
  %7 = bitcast %struct.PyVarObject* %6 to %struct._object*, !dbg !2067
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2068
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2068, !tbaa !1598
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 3, !dbg !2069
  %9 = load i64, i64* %tp_itemsize, align 8, !dbg !2069, !tbaa !2024
  %mul = mul i64 %5, %9, !dbg !2070
  %add = add i64 %4, %mul, !dbg !2071
  %add2 = add i64 %add, 7, !dbg !2072
  %and = and i64 %add2, -8, !dbg !2073
  store i64 %and, i64* %basicsize, align 8, !dbg !2060, !tbaa !1145
  %10 = bitcast %union._gc_head** %g to i8*, !dbg !2074
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2074
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !492, metadata !1019), !dbg !2075
  %11 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8, !dbg !2076, !tbaa !1023
  %12 = bitcast %struct.PyVarObject* %11 to %union._gc_head*, !dbg !2077
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %12, i64 -1, !dbg !2078
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !2075, !tbaa !1023
  %13 = load i64, i64* %basicsize, align 8, !dbg !2079, !tbaa !1145
  %cmp = icmp ugt i64 %13, 9223372036854775783, !dbg !2081
  br i1 %cmp, label %if.then, label %if.end, !dbg !2082

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !2083
  %14 = bitcast %struct._object* %call to %struct.PyVarObject*, !dbg !2084
  store %struct.PyVarObject* %14, %struct.PyVarObject** %retval, !dbg !2085
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2085

if.end:                                           ; preds = %entry
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2086, !tbaa !1023
  %16 = bitcast %union._gc_head* %15 to i8*, !dbg !2086
  %17 = load i64, i64* %basicsize, align 8, !dbg !2087, !tbaa !1145
  %add3 = add i64 24, %17, !dbg !2088
  %call4 = call i8* @PyObject_Realloc(i8* %16, i64 %add3), !dbg !2089
  %18 = bitcast i8* %call4 to %union._gc_head*, !dbg !2090
  store %union._gc_head* %18, %union._gc_head** %g, align 8, !dbg !2091, !tbaa !1023
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2092, !tbaa !1023
  %cmp5 = icmp eq %union._gc_head* %19, null, !dbg !2094
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !2095

if.then.6:                                        ; preds = %if.end
  %call7 = call %struct._object* @PyErr_NoMemory(), !dbg !2096
  %20 = bitcast %struct._object* %call7 to %struct.PyVarObject*, !dbg !2097
  store %struct.PyVarObject* %20, %struct.PyVarObject** %retval, !dbg !2098
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2098

if.end.8:                                         ; preds = %if.end
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2099, !tbaa !1023
  %add.ptr9 = getelementptr %union._gc_head, %union._gc_head* %21, i64 1, !dbg !2100
  %22 = bitcast %union._gc_head* %add.ptr9 to %struct._object*, !dbg !2101
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*, !dbg !2102
  store %struct.PyVarObject* %23, %struct.PyVarObject** %op.addr, align 8, !dbg !2103, !tbaa !1023
  %24 = load i64, i64* %nitems.addr, align 8, !dbg !2104, !tbaa !1145
  %25 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8, !dbg !2105, !tbaa !1023
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1, !dbg !2106
  store i64 %24, i64* %ob_size, align 8, !dbg !2107, !tbaa !1526
  %26 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8, !dbg !2108, !tbaa !1023
  store %struct.PyVarObject* %26, %struct.PyVarObject** %retval, !dbg !2109
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2109

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then
  %27 = bitcast %union._gc_head** %g to i8*, !dbg !2110
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !2110
  %28 = bitcast i64* %basicsize to i8*, !dbg !2110
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !2110
  %29 = load %struct.PyVarObject*, %struct.PyVarObject** %retval, !dbg !2110
  ret %struct.PyVarObject* %29, !dbg !2110
}

declare i8* @PyObject_Realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @PyObject_GC_Del(i8* %op) #0 {
entry:
  %op.addr = alloca i8*, align 8
  %g = alloca %union._gc_head*, align 8
  store i8* %op, i8** %op.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata i8** %op.addr, metadata !495, metadata !1019), !dbg !2111
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !2112
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2112
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !496, metadata !1019), !dbg !2113
  %1 = load i8*, i8** %op.addr, align 8, !dbg !2114, !tbaa !1023
  %2 = bitcast i8* %1 to %union._gc_head*, !dbg !2115
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !2116
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !2113, !tbaa !1023
  %3 = load i8*, i8** %op.addr, align 8, !dbg !2117, !tbaa !1023
  %4 = bitcast i8* %3 to %union._gc_head*, !dbg !2119
  %add.ptr1 = getelementptr %union._gc_head, %union._gc_head* %4, i64 -1, !dbg !2120
  %gc = bitcast %union._gc_head* %add.ptr1 to %struct.anon*, !dbg !2121
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !2122
  %5 = load i64, i64* %gc_refs, align 8, !dbg !2122, !tbaa !1758
  %shr = ashr i64 %5, 1, !dbg !2123
  %cmp = icmp ne i64 %shr, -2, !dbg !2124
  br i1 %cmp, label %if.then, label %if.end, !dbg !2125

if.then:                                          ; preds = %entry
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2126, !tbaa !1023
  call void @gc_list_remove(%union._gc_head* %6), !dbg !2127
  br label %if.end, !dbg !2127

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4, !dbg !2128, !tbaa !1253
  %cmp2 = icmp sgt i32 %7, 0, !dbg !2130
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2131

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4, !dbg !2132, !tbaa !1253
  %dec = add i32 %8, -1, !dbg !2132
  store i32 %dec, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4, !dbg !2132, !tbaa !1253
  br label %if.end.4, !dbg !2134

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2135, !tbaa !1023
  %10 = bitcast %union._gc_head* %9 to i8*, !dbg !2135
  call void @PyObject_Free(i8* %10), !dbg !2136
  %11 = bitcast %union._gc_head** %g to i8*, !dbg !2137
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !2137
  ret void, !dbg !2137
}

; Function Attrs: nounwind uwtable
define internal void @gc_list_remove(%union._gc_head* %node) #0 {
entry:
  %node.addr = alloca %union._gc_head*, align 8
  store %union._gc_head* %node, %union._gc_head** %node.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %node.addr, metadata !896, metadata !1019), !dbg !2138
  %0 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !2139, !tbaa !1023
  %gc = bitcast %union._gc_head* %0 to %struct.anon*, !dbg !2140
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 0, !dbg !2141
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !2141, !tbaa !1347
  %2 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !2142, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %2 to %struct.anon*, !dbg !2143
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 1, !dbg !2144
  %3 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2144, !tbaa !1789
  %gc2 = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !2145
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0, !dbg !2146
  store %union._gc_head* %1, %union._gc_head** %gc_next3, align 8, !dbg !2147, !tbaa !1347
  %4 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !2148, !tbaa !1023
  %gc4 = bitcast %union._gc_head* %4 to %struct.anon*, !dbg !2149
  %gc_prev5 = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 1, !dbg !2150
  %5 = load %union._gc_head*, %union._gc_head** %gc_prev5, align 8, !dbg !2150, !tbaa !1789
  %6 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !2151, !tbaa !1023
  %gc6 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !2152
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !2153
  %7 = load %union._gc_head*, %union._gc_head** %gc_next7, align 8, !dbg !2153, !tbaa !1347
  %gc8 = bitcast %union._gc_head* %7 to %struct.anon*, !dbg !2154
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !2155
  store %union._gc_head* %5, %union._gc_head** %gc_prev9, align 8, !dbg !2156, !tbaa !1789
  %8 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !2157, !tbaa !1023
  %gc10 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !2158
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !2159
  store %union._gc_head* null, %union._gc_head** %gc_next11, align 8, !dbg !2160, !tbaa !1347
  ret void, !dbg !2161
}

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_enable(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !499, metadata !1019), !dbg !2162
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %noargs.addr, metadata !500, metadata !1019), !dbg !2163
  store i32 1, i32* @enabled, align 4, !dbg !2164, !tbaa !1141
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2165, !tbaa !1048
  %inc = add i64 %0, 1, !dbg !2165
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2165, !tbaa !1048
  ret %struct._object* @_Py_NoneStruct, !dbg !2166
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_disable(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !503, metadata !1019), !dbg !2167
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %noargs.addr, metadata !504, metadata !1019), !dbg !2168
  store i32 0, i32* @enabled, align 4, !dbg !2169, !tbaa !1141
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2170, !tbaa !1048
  %inc = add i64 %0, 1, !dbg !2170
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2170, !tbaa !1048
  ret %struct._object* @_Py_NoneStruct, !dbg !2171
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_isenabled(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !507, metadata !1019), !dbg !2172
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %noargs.addr, metadata !508, metadata !1019), !dbg !2173
  %0 = load i32, i32* @enabled, align 4, !dbg !2174, !tbaa !1141
  %conv = sext i32 %0 to i64, !dbg !2175
  %call = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2176
  ret %struct._object* %call, !dbg !2177
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_set_debug(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !511, metadata !1019), !dbg !2178
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !512, metadata !1019), !dbg !2179
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2180, !tbaa !1023
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32* @debug), !dbg !2182
  %tobool = icmp ne i32 %call, 0, !dbg !2182
  br i1 %tobool, label %if.end, label %if.then, !dbg !2183

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2184
  br label %return, !dbg !2184

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2185, !tbaa !1048
  %inc = add i64 %1, 1, !dbg !2185
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2185, !tbaa !1048
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2186
  br label %return, !dbg !2186

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval, !dbg !2187
  ret %struct._object* %2, !dbg !2187
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_debug(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !515, metadata !1019), !dbg !2188
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %noargs.addr, metadata !516, metadata !1019), !dbg !2189
  %0 = load i32, i32* @debug, align 4, !dbg !2190, !tbaa !1141
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 %0), !dbg !2191
  ret %struct._object* %call, !dbg !2192
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_count(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !519, metadata !1019), !dbg !2193
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %noargs.addr, metadata !520, metadata !1019), !dbg !2194
  %0 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 2), align 4, !dbg !2195, !tbaa !1253
  %1 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 1, i32 2), align 4, !dbg !2196, !tbaa !1253
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 2, i32 2), align 4, !dbg !2197, !tbaa !1253
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %0, i32 %1, i32 %2), !dbg !2198
  ret %struct._object* %call, !dbg !2199
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_set_thresh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !523, metadata !1019), !dbg !2200
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !524, metadata !1019), !dbg !2201
  %0 = bitcast i32* %i to i8*, !dbg !2202
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2202
  call void @llvm.dbg.declare(metadata i32* %i, metadata !525, metadata !1019), !dbg !2203
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2204, !tbaa !1023
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 1), i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 1, i32 1), i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 2, i32 1)), !dbg !2206
  %tobool = icmp ne i32 %call, 0, !dbg !2206
  br i1 %tobool, label %if.end, label %if.then, !dbg !2207

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2208
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2208

if.end:                                           ; preds = %entry
  store i32 2, i32* %i, align 4, !dbg !2209, !tbaa !1141
  br label %for.cond, !dbg !2211

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !2212, !tbaa !1141
  %cmp = icmp slt i32 %2, 3, !dbg !2216
  br i1 %cmp, label %for.body, label %for.end, !dbg !2217

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 2, i32 1), align 4, !dbg !2218, !tbaa !1913
  %4 = load i32, i32* %i, align 4, !dbg !2220, !tbaa !1141
  %idxprom = sext i32 %4 to i64, !dbg !2221
  %arrayidx = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom, !dbg !2221
  %threshold = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx, i32 0, i32 1, !dbg !2222
  store i32 %3, i32* %threshold, align 4, !dbg !2223, !tbaa !1913
  br label %for.inc, !dbg !2224

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !2225, !tbaa !1141
  %inc = add i32 %5, 1, !dbg !2225
  store i32 %inc, i32* %i, align 4, !dbg !2225, !tbaa !1141
  br label %for.cond, !dbg !2226

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2227, !tbaa !1048
  %inc1 = add i64 %6, 1, !dbg !2227
  store i64 %inc1, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2227, !tbaa !1048
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2228

cleanup:                                          ; preds = %for.end, %if.then
  %7 = bitcast i32* %i to i8*, !dbg !2229
  call void @llvm.lifetime.end(i64 4, i8* %7) #1, !dbg !2229
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2229
  ret %struct._object* %8, !dbg !2229
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_thresh(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !528, metadata !1019), !dbg !2230
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %noargs.addr, metadata !529, metadata !1019), !dbg !2231
  %0 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 0, i32 1), align 4, !dbg !2232, !tbaa !1913
  %1 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 1, i32 1), align 4, !dbg !2233, !tbaa !1913
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 2, i32 1), align 4, !dbg !2234, !tbaa !1913
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %0, i32 %1, i32 %2), !dbg !2235
  ret %struct._object* %call, !dbg !2236
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !532, metadata !1019), !dbg !2237
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !533, metadata !1019), !dbg !2238
  store %struct._object* %kws, %struct._object** %kws.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %kws.addr, metadata !534, metadata !1019), !dbg !2239
  %0 = bitcast i32* %genarg to i8*, !dbg !2240
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2240
  call void @llvm.dbg.declare(metadata i32* %genarg, metadata !535, metadata !1019), !dbg !2241
  store i32 2, i32* %genarg, align 4, !dbg !2241, !tbaa !1141
  %1 = bitcast i64* %n to i8*, !dbg !2242
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2242
  call void @llvm.dbg.declare(metadata i64* %n, metadata !536, metadata !1019), !dbg !2243
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2244, !tbaa !1023
  %3 = load %struct._object*, %struct._object** %kws.addr, align 8, !dbg !2246, !tbaa !1023
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @gc_collect.keywords, i32 0, i32 0), i32* %genarg), !dbg !2247
  %tobool = icmp ne i32 %call, 0, !dbg !2247
  br i1 %tobool, label %if.else, label %if.then, !dbg !2248

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2249
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2249

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %genarg, align 4, !dbg !2250, !tbaa !1141
  %cmp = icmp slt i32 %4, 0, !dbg !2252
  br i1 %cmp, label %if.then.2, label %lor.lhs.false, !dbg !2253

lor.lhs.false:                                    ; preds = %if.else
  %5 = load i32, i32* %genarg, align 4, !dbg !2254, !tbaa !1141
  %cmp1 = icmp sge i32 %5, 3, !dbg !2256
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !2257

if.then.2:                                        ; preds = %lor.lhs.false, %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2258, !tbaa !1023
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0)), !dbg !2260
  store %struct._object* null, %struct._object** %retval, !dbg !2261
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2261

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.3

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* @collecting, align 4, !dbg !2262, !tbaa !1141
  %tobool4 = icmp ne i32 %7, 0, !dbg !2262
  br i1 %tobool4, label %if.then.5, label %if.else.6, !dbg !2264

if.then.5:                                        ; preds = %if.end.3
  store i64 0, i64* %n, align 8, !dbg !2265, !tbaa !1145
  br label %if.end.8, !dbg !2266

if.else.6:                                        ; preds = %if.end.3
  store i32 1, i32* @collecting, align 4, !dbg !2267, !tbaa !1141
  %8 = load i32, i32* %genarg, align 4, !dbg !2269, !tbaa !1141
  %call7 = call i64 @collect_with_callback(i32 %8), !dbg !2270
  store i64 %call7, i64* %n, align 8, !dbg !2271, !tbaa !1145
  store i32 0, i32* @collecting, align 4, !dbg !2272, !tbaa !1141
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  %9 = load i64, i64* %n, align 8, !dbg !2273, !tbaa !1145
  %call9 = call %struct._object* @PyLong_FromSsize_t(i64 %9), !dbg !2274
  store %struct._object* %call9, %struct._object** %retval, !dbg !2275
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2275

cleanup:                                          ; preds = %if.end.8, %if.then.2, %if.then
  %10 = bitcast i64* %n to i8*, !dbg !2276
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !2276
  %11 = bitcast i32* %genarg to i8*, !dbg !2276
  call void @llvm.lifetime.end(i64 4, i8* %11) #1, !dbg !2276
  %12 = load %struct._object*, %struct._object** %retval, !dbg !2276
  ret %struct._object* %12, !dbg !2276
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_objects(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !539, metadata !1019), !dbg !2277
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %noargs.addr, metadata !540, metadata !1019), !dbg !2278
  %0 = bitcast i32* %i to i8*, !dbg !2279
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2279
  call void @llvm.dbg.declare(metadata i32* %i, metadata !541, metadata !1019), !dbg !2280
  %1 = bitcast %struct._object** %result to i8*, !dbg !2281
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2281
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !542, metadata !1019), !dbg !2282
  %call = call %struct._object* @PyList_New(i64 0), !dbg !2283
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !2284, !tbaa !1023
  %2 = load %struct._object*, %struct._object** %result, align 8, !dbg !2285, !tbaa !1023
  %cmp = icmp eq %struct._object* %2, null, !dbg !2287
  br i1 %cmp, label %if.then, label %if.end, !dbg !2288

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2289
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2289

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2290, !tbaa !1141
  br label %for.cond, !dbg !2291

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !2292, !tbaa !1141
  %cmp1 = icmp slt i32 %3, 3, !dbg !2295
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2296

for.body:                                         ; preds = %for.cond
  %4 = load %struct._object*, %struct._object** %result, align 8, !dbg !2297, !tbaa !1023
  %5 = load i32, i32* %i, align 4, !dbg !2298, !tbaa !1141
  %idxprom = sext i32 %5 to i64, !dbg !2299
  %arrayidx = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom, !dbg !2299
  %head = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx, i32 0, i32 0, !dbg !2300
  %call2 = call i32 @append_objects(%struct._object* %4, %union._gc_head* %head), !dbg !2301
  %tobool = icmp ne i32 %call2, 0, !dbg !2301
  br i1 %tobool, label %if.then.3, label %if.end.7, !dbg !2302

if.then.3:                                        ; preds = %for.body
  br label %do.body, !dbg !2303

do.body:                                          ; preds = %if.then.3
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2304
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !543, metadata !1019), !dbg !2306
  %7 = load %struct._object*, %struct._object** %result, align 8, !dbg !2307, !tbaa !1023
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !2306, !tbaa !1023
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2308, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2310
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2311, !tbaa !1048
  %dec = add i64 %9, -1, !dbg !2311
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2311, !tbaa !1048
  %cmp4 = icmp ne i64 %dec, 0, !dbg !2312
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !2313

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !2314

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2316, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2318
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2318, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !2319
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2319, !tbaa !1600
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2320, !tbaa !1023
  call void %12(%struct._object* %13), !dbg !2321
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2322
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !2322
  br label %do.cond, !dbg !2324

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !2325

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2327
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2327

if.end.7:                                         ; preds = %for.body
  br label %for.inc, !dbg !2328

for.inc:                                          ; preds = %if.end.7
  %15 = load i32, i32* %i, align 4, !dbg !2329, !tbaa !1141
  %inc = add i32 %15, 1, !dbg !2329
  store i32 %inc, i32* %i, align 4, !dbg !2329, !tbaa !1141
  br label %for.cond, !dbg !2330

for.end:                                          ; preds = %for.cond
  %16 = load %struct._object*, %struct._object** %result, align 8, !dbg !2331, !tbaa !1023
  store %struct._object* %16, %struct._object** %retval, !dbg !2332
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2332

cleanup:                                          ; preds = %for.end, %do.end, %if.then
  %17 = bitcast %struct._object** %result to i8*, !dbg !2333
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !2333
  %18 = bitcast i32* %i to i8*, !dbg !2333
  call void @llvm.lifetime.end(i64 4, i8* %18) #1, !dbg !2333
  %19 = load %struct._object*, %struct._object** %retval, !dbg !2333
  ret %struct._object* %19, !dbg !2333
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
  %cleanup.dest.slot = alloca i32
  %dict = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !563, metadata !1019), !dbg !2334
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %noargs.addr, metadata !564, metadata !1019), !dbg !2335
  %0 = bitcast i32* %i to i8*, !dbg !2336
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2336
  call void @llvm.dbg.declare(metadata i32* %i, metadata !565, metadata !1019), !dbg !2337
  %1 = bitcast %struct._object** %result to i8*, !dbg !2338
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2338
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !566, metadata !1019), !dbg !2339
  %2 = bitcast [3 x %struct.gc_generation_stats]* %stats to i8*, !dbg !2340
  call void @llvm.lifetime.start(i64 72, i8* %2) #1, !dbg !2340
  call void @llvm.dbg.declare(metadata [3 x %struct.gc_generation_stats]* %stats, metadata !567, metadata !1019), !dbg !2341
  %3 = bitcast %struct.gc_generation_stats** %st to i8*, !dbg !2340
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2340
  call void @llvm.dbg.declare(metadata %struct.gc_generation_stats** %st, metadata !576, metadata !1019), !dbg !2342
  store i32 0, i32* %i, align 4, !dbg !2343, !tbaa !1141
  br label %for.cond, !dbg !2345

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !2346, !tbaa !1141
  %cmp = icmp slt i32 %4, 3, !dbg !2350
  br i1 %cmp, label %for.body, label %for.end, !dbg !2351

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !2352, !tbaa !1141
  %idxprom = sext i32 %5 to i64, !dbg !2354
  %arrayidx = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i32 0, i64 %idxprom, !dbg !2354
  %6 = load i32, i32* %i, align 4, !dbg !2355, !tbaa !1141
  %idxprom1 = sext i32 %6 to i64, !dbg !2356
  %arrayidx2 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* @generation_stats, i32 0, i64 %idxprom1, !dbg !2356
  %7 = bitcast %struct.gc_generation_stats* %arrayidx to i8*, !dbg !2356
  %8 = bitcast %struct.gc_generation_stats* %arrayidx2 to i8*, !dbg !2356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false), !dbg !2356, !tbaa.struct !2357
  br label %for.inc, !dbg !2358

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !2359, !tbaa !1141
  %inc = add i32 %9, 1, !dbg !2359
  store i32 %inc, i32* %i, align 4, !dbg !2359, !tbaa !1141
  br label %for.cond, !dbg !2360

for.end:                                          ; preds = %for.cond
  %call = call %struct._object* @PyList_New(i64 0), !dbg !2361
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !2362, !tbaa !1023
  %10 = load %struct._object*, %struct._object** %result, align 8, !dbg !2363, !tbaa !1023
  %cmp3 = icmp eq %struct._object* %10, null, !dbg !2365
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2366

if.then:                                          ; preds = %for.end
  store %struct._object* null, %struct._object** %retval, !dbg !2367
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52, !dbg !2367

if.end:                                           ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !2368, !tbaa !1141
  br label %for.cond.4, !dbg !2369

for.cond.4:                                       ; preds = %for.inc.31, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !2370, !tbaa !1141
  %cmp5 = icmp slt i32 %11, 3, !dbg !2373
  br i1 %cmp5, label %for.body.6, label %for.end.33, !dbg !2374

for.body.6:                                       ; preds = %for.cond.4
  %12 = bitcast %struct._object** %dict to i8*, !dbg !2375
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !2375
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !578, metadata !1019), !dbg !2376
  %13 = load i32, i32* %i, align 4, !dbg !2377, !tbaa !1141
  %idxprom7 = sext i32 %13 to i64, !dbg !2378
  %arrayidx8 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i32 0, i64 %idxprom7, !dbg !2378
  store %struct.gc_generation_stats* %arrayidx8, %struct.gc_generation_stats** %st, align 8, !dbg !2379, !tbaa !1023
  %14 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %st, align 8, !dbg !2380, !tbaa !1023
  %collections = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %14, i32 0, i32 0, !dbg !2381
  %15 = load i64, i64* %collections, align 8, !dbg !2381, !tbaa !1498
  %16 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %st, align 8, !dbg !2382, !tbaa !1023
  %collected = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %16, i32 0, i32 1, !dbg !2383
  %17 = load i64, i64* %collected, align 8, !dbg !2383, !tbaa !1504
  %18 = load %struct.gc_generation_stats*, %struct.gc_generation_stats** %st, align 8, !dbg !2384, !tbaa !1023
  %uncollectable = getelementptr inbounds %struct.gc_generation_stats, %struct.gc_generation_stats* %18, i32 0, i32 2, !dbg !2385
  %19 = load i64, i64* %uncollectable, align 8, !dbg !2385, !tbaa !1509
  %call9 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i64 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i64 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i64 %19), !dbg !2386
  store %struct._object* %call9, %struct._object** %dict, align 8, !dbg !2387, !tbaa !1023
  %20 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2388, !tbaa !1023
  %cmp10 = icmp eq %struct._object* %20, null, !dbg !2390
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !2391

if.then.11:                                       ; preds = %for.body.6
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2392

if.end.12:                                        ; preds = %for.body.6
  %21 = load %struct._object*, %struct._object** %result, align 8, !dbg !2393, !tbaa !1023
  %22 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2394, !tbaa !1023
  %call13 = call i32 @PyList_Append(%struct._object* %21, %struct._object* %22), !dbg !2395
  %tobool = icmp ne i32 %call13, 0, !dbg !2395
  br i1 %tobool, label %if.then.14, label %if.end.18, !dbg !2396

if.then.14:                                       ; preds = %if.end.12
  br label %do.body, !dbg !2397

do.body:                                          ; preds = %if.then.14
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2398
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !2398
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !582, metadata !1019), !dbg !2400
  %24 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2401, !tbaa !1023
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8, !dbg !2400, !tbaa !1023
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2402, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !2404
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !2405, !tbaa !1048
  %dec = add i64 %26, -1, !dbg !2405
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2405, !tbaa !1048
  %cmp15 = icmp ne i64 %dec, 0, !dbg !2406
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !2407

if.then.16:                                       ; preds = %do.body
  br label %if.end.17, !dbg !2408

if.else:                                          ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2410, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !2412
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2412, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !2413
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2413, !tbaa !1600
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2414, !tbaa !1023
  call void %29(%struct._object* %30), !dbg !2415
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2416
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !2416
  br label %do.cond, !dbg !2418

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !2419

do.end:                                           ; preds = %do.cond
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2421

if.end.18:                                        ; preds = %if.end.12
  br label %do.body.19, !dbg !2422

do.body.19:                                       ; preds = %if.end.18
  %32 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !2423
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !2423
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp20, metadata !586, metadata !1019), !dbg !2425
  %33 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2426, !tbaa !1023
  store %struct._object* %33, %struct._object** %_py_decref_tmp20, align 8, !dbg !2425, !tbaa !1023
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !2427, !tbaa !1023
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !2429
  %35 = load i64, i64* %ob_refcnt21, align 8, !dbg !2430, !tbaa !1048
  %dec22 = add i64 %35, -1, !dbg !2430
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !2430, !tbaa !1048
  %cmp23 = icmp ne i64 %dec22, 0, !dbg !2431
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !2432

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28, !dbg !2433

if.else.25:                                       ; preds = %do.body.19
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !2435, !tbaa !1023
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !2437
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !2437, !tbaa !1598
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !2438
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !2438, !tbaa !1600
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !2439, !tbaa !1023
  call void %38(%struct._object* %39), !dbg !2440
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  %40 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !2441
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !2441
  br label %do.cond.29, !dbg !2443

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !2444

do.end.30:                                        ; preds = %do.cond.29
  store i32 0, i32* %cleanup.dest.slot, !dbg !2446
  br label %cleanup, !dbg !2446

cleanup:                                          ; preds = %do.end.30, %do.end, %if.then.11
  %41 = bitcast %struct._object** %dict to i8*, !dbg !2447
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !2447
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 8
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 8
  br i1 %SwitchLeaf2, label %error, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc.31, !dbg !2448

for.inc.31:                                       ; preds = %cleanup.cont
  %42 = load i32, i32* %i, align 4, !dbg !2449, !tbaa !1141
  %inc32 = add i32 %42, 1, !dbg !2449
  store i32 %inc32, i32* %i, align 4, !dbg !2449, !tbaa !1141
  br label %for.cond.4, !dbg !2450

for.end.33:                                       ; preds = %for.cond.4
  %43 = load %struct._object*, %struct._object** %result, align 8, !dbg !2451, !tbaa !1023
  store %struct._object* %43, %struct._object** %retval, !dbg !2452
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52, !dbg !2452

error:                                            ; preds = %LeafBlock.1
  br label %do.body.34, !dbg !2453

do.body.34:                                       ; preds = %error
  %44 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2454
  call void @llvm.lifetime.start(i64 8, i8* %44) #1, !dbg !2454
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !588, metadata !1019), !dbg !2456
  %45 = load %struct._object*, %struct._object** %result, align 8, !dbg !2457, !tbaa !1023
  store %struct._object* %45, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2456, !tbaa !1023
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2458, !tbaa !1023
  %cmp35 = icmp ne %struct._object* %46, null, !dbg !2459
  br i1 %cmp35, label %if.then.36, label %if.end.49, !dbg !2460

if.then.36:                                       ; preds = %do.body.34
  br label %do.body.37, !dbg !2461

do.body.37:                                       ; preds = %if.then.36
  %47 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !2463
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !2463
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !590, metadata !1019), !dbg !2465
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2466, !tbaa !1023
  store %struct._object* %48, %struct._object** %_py_decref_tmp38, align 8, !dbg !2465, !tbaa !1023
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !2467, !tbaa !1023
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !2469
  %50 = load i64, i64* %ob_refcnt39, align 8, !dbg !2470, !tbaa !1048
  %dec40 = add i64 %50, -1, !dbg !2470
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !2470, !tbaa !1048
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !2471
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !2472

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !2473

if.else.43:                                       ; preds = %do.body.37
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !2475, !tbaa !1023
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !2477
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !2477, !tbaa !1598
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !2478
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !2478, !tbaa !1600
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !2479, !tbaa !1023
  call void %53(%struct._object* %54), !dbg !2480
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %55 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !2481
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !2481
  br label %do.cond.47, !dbg !2483

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !2484

do.end.48:                                        ; preds = %do.cond.47
  br label %if.end.49, !dbg !2486

if.end.49:                                        ; preds = %do.end.48, %do.body.34
  %56 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2488
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !2488
  br label %do.cond.50, !dbg !2491

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !2492

do.end.51:                                        ; preds = %do.cond.50
  store %struct._object* null, %struct._object** %retval, !dbg !2494
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52, !dbg !2494

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.52

cleanup.52:                                       ; preds = %NewDefault, %do.end.51, %for.end.33, %if.then
  %57 = bitcast %struct.gc_generation_stats** %st to i8*, !dbg !2495
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !2495
  %58 = bitcast [3 x %struct.gc_generation_stats]* %stats to i8*, !dbg !2495
  call void @llvm.lifetime.end(i64 72, i8* %58) #1, !dbg !2495
  %59 = bitcast %struct._object** %result to i8*, !dbg !2495
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !2495
  %60 = bitcast i32* %i to i8*, !dbg !2495
  call void @llvm.lifetime.end(i64 4, i8* %60) #1, !dbg !2495
  %61 = load %struct._object*, %struct._object** %retval, !dbg !2495
  ret %struct._object* %61, !dbg !2495
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_is_tracked(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !595, metadata !1019), !dbg !2496
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !596, metadata !1019), !dbg !2497
  %0 = bitcast %struct._object** %result to i8*, !dbg !2498
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2498
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !597, metadata !1019), !dbg !2499
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2500, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2502
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2502, !tbaa !1598
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19, !dbg !2503
  %3 = load i64, i64* %tp_flags, align 8, !dbg !2503, !tbaa !2504
  %and = and i64 %3, 16384, !dbg !2505
  %cmp = icmp ne i64 %and, 0, !dbg !2506
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2507

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2508, !tbaa !1023
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2510
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2510, !tbaa !1598
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 39, !dbg !2511
  %6 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !2511, !tbaa !2512
  %cmp2 = icmp eq i32 (%struct._object*)* %6, null, !dbg !2513
  br i1 %cmp2, label %land.lhs.true.5, label %lor.lhs.false, !dbg !2514

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2515, !tbaa !1023
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2517
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !2517, !tbaa !1598
  %tp_is_gc4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 39, !dbg !2518
  %9 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc4, align 8, !dbg !2518, !tbaa !2512
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2519, !tbaa !1023
  %call = call i32 %9(%struct._object* %10), !dbg !2520
  %tobool = icmp ne i32 %call, 0, !dbg !2520
  br i1 %tobool, label %land.lhs.true.5, label %if.else, !dbg !2521

land.lhs.true.5:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2522, !tbaa !1023
  %12 = bitcast %struct._object* %11 to %union._gc_head*, !dbg !2525
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %12, i64 -1, !dbg !2526
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*, !dbg !2527
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !2528
  %13 = load i64, i64* %gc_refs, align 8, !dbg !2528, !tbaa !1758
  %shr = ashr i64 %13, 1, !dbg !2529
  %cmp6 = icmp ne i64 %shr, -2, !dbg !2530
  br i1 %cmp6, label %if.then, label %if.else, !dbg !2531

if.then:                                          ; preds = %land.lhs.true.5
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8, !dbg !2532, !tbaa !1023
  br label %if.end, !dbg !2533

if.else:                                          ; preds = %land.lhs.true.5, %lor.lhs.false, %entry
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8, !dbg !2534, !tbaa !1023
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct._object*, %struct._object** %result, align 8, !dbg !2535, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !2536
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !2537, !tbaa !1048
  %inc = add i64 %15, 1, !dbg !2537
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2537, !tbaa !1048
  %16 = load %struct._object*, %struct._object** %result, align 8, !dbg !2538, !tbaa !1023
  %17 = bitcast %struct._object** %result to i8*, !dbg !2539
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !2539
  ret %struct._object* %16, !dbg !2540
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_referrers(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !600, metadata !1019), !dbg !2541
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !601, metadata !1019), !dbg !2542
  %0 = bitcast i32* %i to i8*, !dbg !2543
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2543
  call void @llvm.dbg.declare(metadata i32* %i, metadata !602, metadata !1019), !dbg !2544
  %1 = bitcast %struct._object** %result to i8*, !dbg !2545
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2545
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !603, metadata !1019), !dbg !2546
  %call = call %struct._object* @PyList_New(i64 0), !dbg !2547
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !2546, !tbaa !1023
  %2 = load %struct._object*, %struct._object** %result, align 8, !dbg !2548, !tbaa !1023
  %tobool = icmp ne %struct._object* %2, null, !dbg !2548
  br i1 %tobool, label %if.end, label %if.then, !dbg !2550

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2551
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2553

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2554, !tbaa !1141
  br label %for.cond, !dbg !2555

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !2556, !tbaa !1141
  %cmp = icmp slt i32 %3, 3, !dbg !2559
  br i1 %cmp, label %for.body, label %for.end, !dbg !2560

for.body:                                         ; preds = %for.cond
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2561, !tbaa !1023
  %5 = load i32, i32* %i, align 4, !dbg !2562, !tbaa !1141
  %idxprom = sext i32 %5 to i64, !dbg !2563
  %arrayidx = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i64 %idxprom, !dbg !2563
  %head = getelementptr inbounds %struct.gc_generation, %struct.gc_generation* %arrayidx, i32 0, i32 0, !dbg !2564
  %6 = load %struct._object*, %struct._object** %result, align 8, !dbg !2565, !tbaa !1023
  %call1 = call i32 @gc_referrers_for(%struct._object* %4, %union._gc_head* %head, %struct._object* %6), !dbg !2566
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2566
  br i1 %tobool2, label %if.end.7, label %if.then.3, !dbg !2567

if.then.3:                                        ; preds = %for.body
  br label %do.body, !dbg !2568

do.body:                                          ; preds = %if.then.3
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2569
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2569
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !604, metadata !1019), !dbg !2571
  %8 = load %struct._object*, %struct._object** %result, align 8, !dbg !2572, !tbaa !1023
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !2571, !tbaa !1023
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2573, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !2575
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !2576, !tbaa !1048
  %dec = add i64 %10, -1, !dbg !2576
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2576, !tbaa !1048
  %cmp4 = icmp ne i64 %dec, 0, !dbg !2577
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !2578

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !2579

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2581, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2583
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2583, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !2584
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2584, !tbaa !1600
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2585, !tbaa !1023
  call void %13(%struct._object* %14), !dbg !2586
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2587
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2587
  br label %do.cond, !dbg !2589

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !2590

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2592
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2592

if.end.7:                                         ; preds = %for.body
  br label %for.inc, !dbg !2593

for.inc:                                          ; preds = %if.end.7
  %16 = load i32, i32* %i, align 4, !dbg !2594, !tbaa !1141
  %inc = add i32 %16, 1, !dbg !2594
  store i32 %inc, i32* %i, align 4, !dbg !2594, !tbaa !1141
  br label %for.cond, !dbg !2595

for.end:                                          ; preds = %for.cond
  %17 = load %struct._object*, %struct._object** %result, align 8, !dbg !2596, !tbaa !1023
  store %struct._object* %17, %struct._object** %retval, !dbg !2597
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2597

cleanup:                                          ; preds = %for.end, %do.end, %if.then
  %18 = bitcast %struct._object** %result to i8*, !dbg !2598
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !2598
  %19 = bitcast i32* %i to i8*, !dbg !2598
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !2598
  %20 = load %struct._object*, %struct._object** %retval, !dbg !2598
  ret %struct._object* %20, !dbg !2598
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_referents(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %traverse = alloca i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, align 8
  %obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !628, metadata !1019), !dbg !2599
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !629, metadata !1019), !dbg !2600
  %0 = bitcast i64* %i to i8*, !dbg !2601
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2601
  call void @llvm.dbg.declare(metadata i64* %i, metadata !630, metadata !1019), !dbg !2602
  %1 = bitcast %struct._object** %result to i8*, !dbg !2603
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2603
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !631, metadata !1019), !dbg !2604
  %call = call %struct._object* @PyList_New(i64 0), !dbg !2605
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !2604, !tbaa !1023
  %2 = load %struct._object*, %struct._object** %result, align 8, !dbg !2606, !tbaa !1023
  %cmp = icmp eq %struct._object* %2, null, !dbg !2608
  br i1 %cmp, label %if.then, label %if.end, !dbg !2609

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2610
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23, !dbg !2610

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8, !dbg !2611, !tbaa !1145
  br label %for.cond, !dbg !2612

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8, !dbg !2613, !tbaa !1145
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2616, !tbaa !1023
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*, !dbg !2617
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1, !dbg !2618
  %6 = load i64, i64* %ob_size, align 8, !dbg !2618, !tbaa !1526
  %cmp1 = icmp slt i64 %3, %6, !dbg !2619
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2620

for.body:                                         ; preds = %for.cond
  %7 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !2621
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2621
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, metadata !632, metadata !1019), !dbg !2622
  %8 = bitcast %struct._object** %obj to i8*, !dbg !2623
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !2623
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !636, metadata !1019), !dbg !2624
  %9 = load i64, i64* %i, align 8, !dbg !2625, !tbaa !1145
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2626, !tbaa !1023
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*, !dbg !2627
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1, !dbg !2628
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9, !dbg !2629
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2629, !tbaa !1023
  store %struct._object* %12, %struct._object** %obj, align 8, !dbg !2624, !tbaa !1023
  %13 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2630, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2632
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2632, !tbaa !1598
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19, !dbg !2633
  %15 = load i64, i64* %tp_flags, align 8, !dbg !2633, !tbaa !2504
  %and = and i64 %15, 16384, !dbg !2634
  %cmp2 = icmp ne i64 %and, 0, !dbg !2635
  br i1 %cmp2, label %land.lhs.true, label %if.then.8, !dbg !2636

land.lhs.true:                                    ; preds = %for.body
  %16 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2637, !tbaa !1023
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2639
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !2639, !tbaa !1598
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 39, !dbg !2640
  %18 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !2640, !tbaa !2512
  %cmp4 = icmp eq i32 (%struct._object*)* %18, null, !dbg !2641
  br i1 %cmp4, label %if.end.9, label %lor.lhs.false, !dbg !2642

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2643, !tbaa !1023
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !2645
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2645, !tbaa !1598
  %tp_is_gc6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 39, !dbg !2646
  %21 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc6, align 8, !dbg !2646, !tbaa !2512
  %22 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2647, !tbaa !1023
  %call7 = call i32 %21(%struct._object* %22), !dbg !2648
  %tobool = icmp ne i32 %call7, 0, !dbg !2648
  br i1 %tobool, label %if.end.9, label %if.then.8, !dbg !2649

if.then.8:                                        ; preds = %lor.lhs.false, %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2650

if.end.9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %23 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2651, !tbaa !1023
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !2652
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !2652, !tbaa !1598
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 21, !dbg !2653
  %25 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8, !dbg !2653, !tbaa !2654
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %25, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !2655, !tbaa !1023
  %26 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !2656, !tbaa !1023
  %tobool11 = icmp ne i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %26, null, !dbg !2656
  br i1 %tobool11, label %if.end.13, label %if.then.12, !dbg !2658

if.then.12:                                       ; preds = %if.end.9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2659

if.end.13:                                        ; preds = %if.end.9
  %27 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !2660, !tbaa !1023
  %28 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2661, !tbaa !1023
  %29 = load %struct._object*, %struct._object** %result, align 8, !dbg !2662, !tbaa !1023
  %30 = bitcast %struct._object* %29 to i8*, !dbg !2662
  %call14 = call i32 %27(%struct._object* %28, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @referentsvisit to i32 (%struct._object*, i8*)*), i8* %30), !dbg !2660
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2660
  br i1 %tobool15, label %if.then.16, label %if.end.21, !dbg !2663

if.then.16:                                       ; preds = %if.end.13
  br label %do.body, !dbg !2664

do.body:                                          ; preds = %if.then.16
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2665
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !2665
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !637, metadata !1019), !dbg !2667
  %32 = load %struct._object*, %struct._object** %result, align 8, !dbg !2668, !tbaa !1023
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8, !dbg !2667, !tbaa !1023
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2669, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2671
  %34 = load i64, i64* %ob_refcnt, align 8, !dbg !2672, !tbaa !1048
  %dec = add i64 %34, -1, !dbg !2672
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2672, !tbaa !1048
  %cmp17 = icmp ne i64 %dec, 0, !dbg !2673
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !2674

if.then.18:                                       ; preds = %do.body
  br label %if.end.20, !dbg !2675

if.else:                                          ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2677, !tbaa !1023
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2679
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !2679, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !2680
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2680, !tbaa !1600
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2681, !tbaa !1023
  call void %37(%struct._object* %38), !dbg !2682
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %39 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2683
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !2683
  br label %do.cond, !dbg !2685

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !2686

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2688

if.end.21:                                        ; preds = %if.end.13
  store i32 0, i32* %cleanup.dest.slot, !dbg !2689
  br label %cleanup, !dbg !2689

cleanup:                                          ; preds = %if.end.21, %do.end, %if.then.12, %if.then.8
  %40 = bitcast %struct._object** %obj to i8*, !dbg !2690
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !2690
  %41 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !2690
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !2690
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 4
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 4
  br i1 %SwitchLeaf2, label %for.inc, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !2691

for.inc:                                          ; preds = %LeafBlock.1, %cleanup.cont
  %42 = load i64, i64* %i, align 8, !dbg !2692, !tbaa !1145
  %inc = add i64 %42, 1, !dbg !2692
  store i64 %inc, i64* %i, align 8, !dbg !2692, !tbaa !1145
  br label %for.cond, !dbg !2693

for.end:                                          ; preds = %for.cond
  %43 = load %struct._object*, %struct._object** %result, align 8, !dbg !2694, !tbaa !1023
  store %struct._object* %43, %struct._object** %retval, !dbg !2695
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23, !dbg !2695

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.23

cleanup.23:                                       ; preds = %NewDefault, %for.end, %if.then
  %44 = bitcast %struct._object** %result to i8*, !dbg !2696
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !2696
  %45 = bitcast i64* %i to i8*, !dbg !2696
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !2696
  %46 = load %struct._object*, %struct._object** %retval, !dbg !2696
  ret %struct._object* %46, !dbg !2696
}

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @append_objects(%struct._object* %py_list, %union._gc_head* %gc_list) #0 {
entry:
  %retval = alloca i32, align 4
  %py_list.addr = alloca %struct._object*, align 8
  %gc_list.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %py_list, %struct._object** %py_list.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %py_list.addr, metadata !554, metadata !1019), !dbg !2697
  store %union._gc_head* %gc_list, %union._gc_head** %gc_list.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc_list.addr, metadata !555, metadata !1019), !dbg !2698
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !2699
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2699
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !556, metadata !1019), !dbg !2700
  %1 = load %union._gc_head*, %union._gc_head** %gc_list.addr, align 8, !dbg !2701, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %1 to %struct.anon*, !dbg !2702
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !2703
  %2 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !2703, !tbaa !1347
  store %union._gc_head* %2, %union._gc_head** %gc, align 8, !dbg !2704, !tbaa !1023
  br label %for.cond, !dbg !2705

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !2706, !tbaa !1023
  %4 = load %union._gc_head*, %union._gc_head** %gc_list.addr, align 8, !dbg !2709, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %3, %4, !dbg !2710
  br i1 %cmp, label %for.body, label %for.end, !dbg !2711

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct._object** %op to i8*, !dbg !2712
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2712
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !557, metadata !1019), !dbg !2713
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !2714, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 1, !dbg !2715
  %7 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !2716
  store %struct._object* %7, %struct._object** %op, align 8, !dbg !2713, !tbaa !1023
  %8 = load %struct._object*, %struct._object** %op, align 8, !dbg !2717, !tbaa !1023
  %9 = load %struct._object*, %struct._object** %py_list.addr, align 8, !dbg !2719, !tbaa !1023
  %cmp2 = icmp ne %struct._object* %8, %9, !dbg !2720
  br i1 %cmp2, label %if.then, label %if.end.4, !dbg !2721

if.then:                                          ; preds = %for.body
  %10 = load %struct._object*, %struct._object** %py_list.addr, align 8, !dbg !2722, !tbaa !1023
  %11 = load %struct._object*, %struct._object** %op, align 8, !dbg !2725, !tbaa !1023
  %call = call i32 @PyList_Append(%struct._object* %10, %struct._object* %11), !dbg !2726
  %tobool = icmp ne i32 %call, 0, !dbg !2726
  br i1 %tobool, label %if.then.3, label %if.end, !dbg !2727

if.then.3:                                        ; preds = %if.then
  store i32 -1, i32* %retval, !dbg !2728
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2728

if.end:                                           ; preds = %if.then
  br label %if.end.4, !dbg !2730

if.end.4:                                         ; preds = %if.end, %for.body
  store i32 0, i32* %cleanup.dest.slot, !dbg !2731
  br label %cleanup, !dbg !2731

cleanup:                                          ; preds = %if.end.4, %if.then.3
  %12 = bitcast %struct._object** %op to i8*, !dbg !2732
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !2732
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !2733

for.inc:                                          ; preds = %cleanup.cont
  %13 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !2734, !tbaa !1023
  %gc5 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !2735
  %gc_next6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 0, !dbg !2736
  %14 = load %union._gc_head*, %union._gc_head** %gc_next6, align 8, !dbg !2736, !tbaa !1347
  store %union._gc_head* %14, %union._gc_head** %gc, align 8, !dbg !2737, !tbaa !1023
  br label %for.cond, !dbg !2738

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !2739
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7, !dbg !2739

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.7

cleanup.7:                                        ; preds = %NewDefault, %for.end
  %15 = bitcast %union._gc_head** %gc to i8*, !dbg !2740
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2740
  %16 = load i32, i32* %retval, !dbg !2740
  ret i32 %16, !dbg !2740
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %objs, %struct._object** %objs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %objs.addr, metadata !615, metadata !1019), !dbg !2741
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %list.addr, metadata !616, metadata !1019), !dbg !2742
  store %struct._object* %resultlist, %struct._object** %resultlist.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %resultlist.addr, metadata !617, metadata !1019), !dbg !2743
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !2744
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2744
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !618, metadata !1019), !dbg !2745
  %1 = bitcast %struct._object** %obj to i8*, !dbg !2746
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2746
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !619, metadata !1019), !dbg !2747
  %2 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !2748
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2748
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, metadata !620, metadata !1019), !dbg !2749
  %3 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !2750, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !2752
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !2753
  %4 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !2753, !tbaa !1347
  store %union._gc_head* %4, %union._gc_head** %gc, align 8, !dbg !2754, !tbaa !1023
  br label %for.cond, !dbg !2755

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !2756, !tbaa !1023
  %6 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !2760, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %5, %6, !dbg !2761
  br i1 %cmp, label %for.body, label %for.end, !dbg !2762

for.body:                                         ; preds = %for.cond
  %7 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !2763, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %7, i64 1, !dbg !2765
  %8 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !2766
  store %struct._object* %8, %struct._object** %obj, align 8, !dbg !2767, !tbaa !1023
  %9 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2768, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !2769
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2769, !tbaa !1598
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 21, !dbg !2770
  %11 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8, !dbg !2770, !tbaa !2654
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %11, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !2771, !tbaa !1023
  %12 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2772, !tbaa !1023
  %13 = load %struct._object*, %struct._object** %objs.addr, align 8, !dbg !2774, !tbaa !1023
  %cmp2 = icmp eq %struct._object* %12, %13, !dbg !2775
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !2776

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2777, !tbaa !1023
  %15 = load %struct._object*, %struct._object** %resultlist.addr, align 8, !dbg !2779, !tbaa !1023
  %cmp3 = icmp eq %struct._object* %14, %15, !dbg !2780
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2781

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !2782

if.end:                                           ; preds = %lor.lhs.false
  %16 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !2783, !tbaa !1023
  %17 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2785, !tbaa !1023
  %18 = load %struct._object*, %struct._object** %objs.addr, align 8, !dbg !2786, !tbaa !1023
  %19 = bitcast %struct._object* %18 to i8*, !dbg !2786
  %call = call i32 %16(%struct._object* %17, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @referrersvisit to i32 (%struct._object*, i8*)*), i8* %19), !dbg !2783
  %tobool = icmp ne i32 %call, 0, !dbg !2783
  br i1 %tobool, label %if.then.4, label %if.end.9, !dbg !2787

if.then.4:                                        ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %resultlist.addr, align 8, !dbg !2788, !tbaa !1023
  %21 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2791, !tbaa !1023
  %call5 = call i32 @PyList_Append(%struct._object* %20, %struct._object* %21), !dbg !2792
  %cmp6 = icmp slt i32 %call5, 0, !dbg !2793
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2794

if.then.7:                                        ; preds = %if.then.4
  store i32 0, i32* %retval, !dbg !2795
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2795

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9, !dbg !2796

if.end.9:                                         ; preds = %if.end.8, %if.end
  br label %for.inc, !dbg !2797

for.inc:                                          ; preds = %if.end.9, %if.then
  %22 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !2798, !tbaa !1023
  %gc10 = bitcast %union._gc_head* %22 to %struct.anon*, !dbg !2799
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !2800
  %23 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !2800, !tbaa !1347
  store %union._gc_head* %23, %union._gc_head** %gc, align 8, !dbg !2801, !tbaa !1023
  br label %for.cond, !dbg !2802

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, !dbg !2803
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2803

cleanup:                                          ; preds = %for.end, %if.then.7
  %24 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !2804
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2804
  %25 = bitcast %struct._object** %obj to i8*, !dbg !2804
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !2804
  %26 = bitcast %union._gc_head** %gc to i8*, !dbg !2804
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !2804
  %27 = load i32, i32* %retval, !dbg !2804
  ret i32 %27, !dbg !2804
}

; Function Attrs: nounwind uwtable
define internal i32 @referrersvisit(%struct._object* %obj, %struct._object* %objs) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %objs.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !623, metadata !1019), !dbg !2805
  store %struct._object* %objs, %struct._object** %objs.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %objs.addr, metadata !624, metadata !1019), !dbg !2806
  %0 = bitcast i64* %i to i8*, !dbg !2807
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2807
  call void @llvm.dbg.declare(metadata i64* %i, metadata !625, metadata !1019), !dbg !2808
  store i64 0, i64* %i, align 8, !dbg !2809, !tbaa !1145
  br label %for.cond, !dbg !2811

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !dbg !2812, !tbaa !1145
  %2 = load %struct._object*, %struct._object** %objs.addr, align 8, !dbg !2816, !tbaa !1023
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*, !dbg !2817
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1, !dbg !2818
  %4 = load i64, i64* %ob_size, align 8, !dbg !2818, !tbaa !1526
  %cmp = icmp slt i64 %1, %4, !dbg !2819
  br i1 %cmp, label %for.body, label %for.end, !dbg !2820

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8, !dbg !2821, !tbaa !1145
  %6 = load %struct._object*, %struct._object** %objs.addr, align 8, !dbg !2823, !tbaa !1023
  %7 = bitcast %struct._object* %6 to %struct.PyTupleObject*, !dbg !2824
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1, !dbg !2825
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %5, !dbg !2826
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2826, !tbaa !1023
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2827, !tbaa !1023
  %cmp1 = icmp eq %struct._object* %8, %9, !dbg !2828
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2829

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, !dbg !2830
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2830

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2831

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %i, align 8, !dbg !2833, !tbaa !1145
  %inc = add i64 %10, 1, !dbg !2833
  store i64 %inc, i64* %i, align 8, !dbg !2833, !tbaa !1145
  br label %for.cond, !dbg !2834

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !2835
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2835

cleanup:                                          ; preds = %for.end, %if.then
  %11 = bitcast i64* %i to i8*, !dbg !2836
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !2836
  %12 = load i32, i32* %retval, !dbg !2836
  ret i32 %12, !dbg !2836
}

; Function Attrs: nounwind uwtable
define internal i32 @referentsvisit(%struct._object* %obj, %struct._object* %list) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %list.addr = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !643, metadata !1019), !dbg !2837
  store %struct._object* %list, %struct._object** %list.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %list.addr, metadata !644, metadata !1019), !dbg !2838
  %0 = load %struct._object*, %struct._object** %list.addr, align 8, !dbg !2839, !tbaa !1023
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2840, !tbaa !1023
  %call = call i32 @PyList_Append(%struct._object* %0, %struct._object* %1), !dbg !2841
  %cmp = icmp slt i32 %call, 0, !dbg !2842
  %conv = zext i1 %cmp to i32, !dbg !2842
  ret i32 %conv, !dbg !2843
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
  %cleanup.dest.slot = alloca i32
  %r = alloca %struct._object*, align 8
  %cb = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_xdecref_tmp37 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store i8* %phase, i8** %phase.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata i8** %phase.addr, metadata !657, metadata !1019), !dbg !2844
  store i32 %generation, i32* %generation.addr, align 4, !tbaa !1141
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !658, metadata !1019), !dbg !2845
  store i64 %collected, i64* %collected.addr, align 8, !tbaa !1145
  call void @llvm.dbg.declare(metadata i64* %collected.addr, metadata !659, metadata !1019), !dbg !2846
  store i64 %uncollectable, i64* %uncollectable.addr, align 8, !tbaa !1145
  call void @llvm.dbg.declare(metadata i64* %uncollectable.addr, metadata !660, metadata !1019), !dbg !2847
  %0 = bitcast i64* %i to i8*, !dbg !2848
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2848
  call void @llvm.dbg.declare(metadata i64* %i, metadata !661, metadata !1019), !dbg !2849
  %1 = bitcast %struct._object** %info to i8*, !dbg !2850
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2850
  call void @llvm.dbg.declare(metadata %struct._object** %info, metadata !662, metadata !1019), !dbg !2851
  store %struct._object* null, %struct._object** %info, align 8, !dbg !2851, !tbaa !1023
  %2 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !2852, !tbaa !1023
  %cmp = icmp eq %struct._object* %2, null, !dbg !2854
  br i1 %cmp, label %if.then, label %if.end, !dbg !2855

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2856

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !2857, !tbaa !1023
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*, !dbg !2859
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1, !dbg !2860
  %5 = load i64, i64* %ob_size, align 8, !dbg !2860, !tbaa !1526
  %cmp1 = icmp ne i64 %5, 0, !dbg !2861
  br i1 %cmp1, label %if.then.2, label %if.end.6, !dbg !2862

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %generation.addr, align 4, !dbg !2863, !tbaa !1141
  %7 = load i64, i64* %collected.addr, align 8, !dbg !2865, !tbaa !1145
  %8 = load i64, i64* %uncollectable.addr, align 8, !dbg !2866, !tbaa !1145
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i64 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i64 %8), !dbg !2867
  store %struct._object* %call, %struct._object** %info, align 8, !dbg !2868, !tbaa !1023
  %9 = load %struct._object*, %struct._object** %info, align 8, !dbg !2869, !tbaa !1023
  %cmp3 = icmp eq %struct._object* %9, null, !dbg !2871
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !2872

if.then.4:                                        ; preds = %if.then.2
  call void @PyErr_WriteUnraisable(%struct._object* null), !dbg !2873
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2875

if.end.5:                                         ; preds = %if.then.2
  br label %if.end.6, !dbg !2876

if.end.6:                                         ; preds = %if.end.5, %if.end
  store i64 0, i64* %i, align 8, !dbg !2877, !tbaa !1145
  br label %for.cond, !dbg !2878

for.cond:                                         ; preds = %for.inc, %if.end.6
  %10 = load i64, i64* %i, align 8, !dbg !2879, !tbaa !1145
  %11 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !2882, !tbaa !1023
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*, !dbg !2883
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !2884
  %13 = load i64, i64* %ob_size7, align 8, !dbg !2884, !tbaa !1526
  %cmp8 = icmp slt i64 %10, %13, !dbg !2885
  br i1 %cmp8, label %for.body, label %for.end, !dbg !2886

for.body:                                         ; preds = %for.cond
  %14 = bitcast %struct._object** %r to i8*, !dbg !2887
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !2887
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !663, metadata !1019), !dbg !2888
  %15 = bitcast %struct._object** %cb to i8*, !dbg !2887
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !2887
  call void @llvm.dbg.declare(metadata %struct._object** %cb, metadata !667, metadata !1019), !dbg !2889
  %16 = load i64, i64* %i, align 8, !dbg !2890, !tbaa !1145
  %17 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !2891, !tbaa !1023
  %18 = bitcast %struct._object* %17 to %struct.PyListObject*, !dbg !2892
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %18, i32 0, i32 1, !dbg !2893
  %19 = load %struct._object**, %struct._object*** %ob_item, align 8, !dbg !2893, !tbaa !2894
  %arrayidx = getelementptr %struct._object*, %struct._object** %19, i64 %16, !dbg !2896
  %20 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2896, !tbaa !1023
  store %struct._object* %20, %struct._object** %cb, align 8, !dbg !2889, !tbaa !1023
  %21 = load %struct._object*, %struct._object** %cb, align 8, !dbg !2897, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2898
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !2899, !tbaa !1048
  %inc = add i64 %22, 1, !dbg !2899
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2899, !tbaa !1048
  %23 = load %struct._object*, %struct._object** %cb, align 8, !dbg !2900, !tbaa !1023
  %24 = load i8*, i8** %phase.addr, align 8, !dbg !2901, !tbaa !1023
  %25 = load %struct._object*, %struct._object** %info, align 8, !dbg !2902, !tbaa !1023
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* %24, %struct._object* %25), !dbg !2903
  store %struct._object* %call9, %struct._object** %r, align 8, !dbg !2904, !tbaa !1023
  br label %do.body, !dbg !2905

do.body:                                          ; preds = %for.body
  %26 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2906
  call void @llvm.lifetime.start(i64 8, i8* %26) #1, !dbg !2906
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !668, metadata !1019), !dbg !2908
  %27 = load %struct._object*, %struct._object** %r, align 8, !dbg !2909, !tbaa !1023
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2908, !tbaa !1023
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2910, !tbaa !1023
  %cmp10 = icmp ne %struct._object* %28, null, !dbg !2911
  br i1 %cmp10, label %if.then.11, label %if.end.17, !dbg !2912

if.then.11:                                       ; preds = %do.body
  br label %do.body.12, !dbg !2913

do.body.12:                                       ; preds = %if.then.11
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2915
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !2915
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !670, metadata !1019), !dbg !2917
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2918, !tbaa !1023
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8, !dbg !2917, !tbaa !1023
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2919, !tbaa !1023
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !2921
  %32 = load i64, i64* %ob_refcnt13, align 8, !dbg !2922, !tbaa !1048
  %dec = add i64 %32, -1, !dbg !2922
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !2922, !tbaa !1048
  %cmp14 = icmp ne i64 %dec, 0, !dbg !2923
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !2924

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.16, !dbg !2925

if.else:                                          ; preds = %do.body.12
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2927, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !2929
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2929, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !2930
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2930, !tbaa !1600
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2931, !tbaa !1023
  call void %35(%struct._object* %36), !dbg !2932
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %37 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2933
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !2933
  br label %do.cond, !dbg !2935

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !2936

do.end:                                           ; preds = %do.cond
  br label %if.end.17, !dbg !2938

if.end.17:                                        ; preds = %do.end, %do.body
  %38 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2940
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2940
  br label %do.cond.18, !dbg !2943

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !2944

do.end.19:                                        ; preds = %do.cond.18
  %39 = load %struct._object*, %struct._object** %r, align 8, !dbg !2946, !tbaa !1023
  %cmp20 = icmp eq %struct._object* %39, null, !dbg !2948
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !2949

if.then.21:                                       ; preds = %do.end.19
  %40 = load %struct._object*, %struct._object** %cb, align 8, !dbg !2950, !tbaa !1023
  call void @PyErr_WriteUnraisable(%struct._object* %40), !dbg !2951
  br label %if.end.22, !dbg !2951

if.end.22:                                        ; preds = %if.then.21, %do.end.19
  br label %do.body.23, !dbg !2952

do.body.23:                                       ; preds = %if.end.22
  %41 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !2953
  call void @llvm.lifetime.start(i64 8, i8* %41) #1, !dbg !2953
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !673, metadata !1019), !dbg !2955
  %42 = load %struct._object*, %struct._object** %cb, align 8, !dbg !2956, !tbaa !1023
  store %struct._object* %42, %struct._object** %_py_decref_tmp24, align 8, !dbg !2955, !tbaa !1023
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2957, !tbaa !1023
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !2959
  %44 = load i64, i64* %ob_refcnt25, align 8, !dbg !2960, !tbaa !1048
  %dec26 = add i64 %44, -1, !dbg !2960
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !2960, !tbaa !1048
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !2961
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !2962

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32, !dbg !2963

if.else.29:                                       ; preds = %do.body.23
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2965, !tbaa !1023
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !2967
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !2967, !tbaa !1598
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !2968
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !2968, !tbaa !1600
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2969, !tbaa !1023
  call void %47(%struct._object* %48), !dbg !2970
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %49 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !2971
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !2971
  br label %do.cond.33, !dbg !2973

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !2974

do.end.34:                                        ; preds = %do.cond.33
  %50 = bitcast %struct._object** %cb to i8*, !dbg !2976
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !2976
  %51 = bitcast %struct._object** %r to i8*, !dbg !2976
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !2976
  br label %for.inc, !dbg !2977

for.inc:                                          ; preds = %do.end.34
  %52 = load i64, i64* %i, align 8, !dbg !2978, !tbaa !1145
  %inc35 = add i64 %52, 1, !dbg !2978
  store i64 %inc35, i64* %i, align 8, !dbg !2978, !tbaa !1145
  br label %for.cond, !dbg !2979

for.end:                                          ; preds = %for.cond
  br label %do.body.36, !dbg !2980

do.body.36:                                       ; preds = %for.end
  %53 = bitcast %struct._object** %_py_xdecref_tmp37 to i8*, !dbg !2981
  call void @llvm.lifetime.start(i64 8, i8* %53) #1, !dbg !2981
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp37, metadata !675, metadata !1019), !dbg !2983
  %54 = load %struct._object*, %struct._object** %info, align 8, !dbg !2984, !tbaa !1023
  store %struct._object* %54, %struct._object** %_py_xdecref_tmp37, align 8, !dbg !2983, !tbaa !1023
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp37, align 8, !dbg !2985, !tbaa !1023
  %cmp38 = icmp ne %struct._object* %55, null, !dbg !2986
  br i1 %cmp38, label %if.then.39, label %if.end.52, !dbg !2987

if.then.39:                                       ; preds = %do.body.36
  br label %do.body.40, !dbg !2988

do.body.40:                                       ; preds = %if.then.39
  %56 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !2990
  call void @llvm.lifetime.start(i64 8, i8* %56) #1, !dbg !2990
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp41, metadata !677, metadata !1019), !dbg !2992
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp37, align 8, !dbg !2993, !tbaa !1023
  store %struct._object* %57, %struct._object** %_py_decref_tmp41, align 8, !dbg !2992, !tbaa !1023
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !2994, !tbaa !1023
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0, !dbg !2996
  %59 = load i64, i64* %ob_refcnt42, align 8, !dbg !2997, !tbaa !1048
  %dec43 = add i64 %59, -1, !dbg !2997
  store i64 %dec43, i64* %ob_refcnt42, align 8, !dbg !2997, !tbaa !1048
  %cmp44 = icmp ne i64 %dec43, 0, !dbg !2998
  br i1 %cmp44, label %if.then.45, label %if.else.46, !dbg !2999

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49, !dbg !3000

if.else.46:                                       ; preds = %do.body.40
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !3002, !tbaa !1023
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1, !dbg !3004
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !3004, !tbaa !1598
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4, !dbg !3005
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !3005, !tbaa !1600
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !3006, !tbaa !1023
  call void %62(%struct._object* %63), !dbg !3007
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  %64 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !3008
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !3008
  br label %do.cond.50, !dbg !3010

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !3011

do.end.51:                                        ; preds = %do.cond.50
  br label %if.end.52, !dbg !3013

if.end.52:                                        ; preds = %do.end.51, %do.body.36
  %65 = bitcast %struct._object** %_py_xdecref_tmp37 to i8*, !dbg !3015
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !3015
  br label %do.cond.53, !dbg !3018

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54, !dbg !3019

do.end.54:                                        ; preds = %do.cond.53
  store i32 0, i32* %cleanup.dest.slot, !dbg !3021
  br label %cleanup, !dbg !3021

cleanup:                                          ; preds = %do.end.54, %if.then.4, %if.then
  %66 = bitcast %struct._object** %info to i8*, !dbg !3022
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !3022
  %67 = bitcast i64* %i to i8*, !dbg !3022
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !3022
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup
  ret void, !dbg !3021

unreachable:                                      ; No predecessors!
  unreachable
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i64 @gc_list_size(%union._gc_head* %list) #0 {
entry:
  %list.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %n = alloca i64, align 8
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %list.addr, metadata !705, metadata !1019), !dbg !3024
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !3025
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3025
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !706, metadata !1019), !dbg !3026
  %1 = bitcast i64* %n to i8*, !dbg !3027
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3027
  call void @llvm.dbg.declare(metadata i64* %n, metadata !707, metadata !1019), !dbg !3028
  store i64 0, i64* %n, align 8, !dbg !3028, !tbaa !1145
  %2 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !3029, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %2 to %struct.anon*, !dbg !3031
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3032
  %3 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3032, !tbaa !1347
  store %union._gc_head* %3, %union._gc_head** %gc, align 8, !dbg !3033, !tbaa !1023
  br label %for.cond, !dbg !3034

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3035, !tbaa !1023
  %5 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !3039, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %4, %5, !dbg !3040
  br i1 %cmp, label %for.body, label %for.end, !dbg !3041

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %n, align 8, !dbg !3042, !tbaa !1145
  %inc = add i64 %6, 1, !dbg !3042
  store i64 %inc, i64* %n, align 8, !dbg !3042, !tbaa !1145
  br label %for.inc, !dbg !3044

for.inc:                                          ; preds = %for.body
  %7 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3045, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %7 to %struct.anon*, !dbg !3046
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0, !dbg !3047
  %8 = load %union._gc_head*, %union._gc_head** %gc_next3, align 8, !dbg !3047, !tbaa !1347
  store %union._gc_head* %8, %union._gc_head** %gc, align 8, !dbg !3048, !tbaa !1023
  br label %for.cond, !dbg !3049

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %n, align 8, !dbg !3050, !tbaa !1145
  %10 = bitcast i64* %n to i8*, !dbg !3051
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !3051
  %11 = bitcast %union._gc_head** %gc to i8*, !dbg !3051
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !3051
  ret i64 %9, !dbg !3052
}

; Function Attrs: nounwind uwtable
define internal double @get_time() #0 {
entry:
  %result = alloca double, align 8
  %f = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast double* %result to i8*, !dbg !3053
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3053
  call void @llvm.dbg.declare(metadata double* %result, metadata !712, metadata !1019), !dbg !3054
  store double 0.000000e+00, double* %result, align 8, !dbg !3054, !tbaa !1209
  %1 = load %struct._object*, %struct._object** @tmod, align 8, !dbg !3055, !tbaa !1023
  %cmp = icmp ne %struct._object* %1, null, !dbg !3056
  br i1 %cmp, label %if.then, label %if.end.14, !dbg !3057

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._object** %f to i8*, !dbg !3058
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3058
  call void @llvm.dbg.declare(metadata %struct._object** %f, metadata !713, metadata !1019), !dbg !3059
  %3 = load %struct._object*, %struct._object** @tmod, align 8, !dbg !3060, !tbaa !1023
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %3, %struct._Py_Identifier* @get_time.PyId_time, i8* null), !dbg !3061
  store %struct._object* %call, %struct._object** %f, align 8, !dbg !3059, !tbaa !1023
  %4 = load %struct._object*, %struct._object** %f, align 8, !dbg !3062, !tbaa !1023
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !3063
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !3064

if.then.2:                                        ; preds = %if.then
  call void @PyErr_Clear(), !dbg !3065
  br label %if.end.13, !dbg !3067

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %f, align 8, !dbg !3068, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !3070
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3070, !tbaa !1598
  %cmp3 = icmp eq %struct._typeobject* %6, @PyFloat_Type, !dbg !3071
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false, !dbg !3072

lor.lhs.false:                                    ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %f, align 8, !dbg !3073, !tbaa !1023
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !3075
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !3075, !tbaa !1598
  %call5 = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PyFloat_Type), !dbg !3076
  %tobool = icmp ne i32 %call5, 0, !dbg !3076
  br i1 %tobool, label %if.then.6, label %if.end, !dbg !3077

if.then.6:                                        ; preds = %lor.lhs.false, %if.else
  %9 = load %struct._object*, %struct._object** %f, align 8, !dbg !3078, !tbaa !1023
  %call7 = call double @PyFloat_AsDouble(%struct._object* %9), !dbg !3079
  store double %call7, double* %result, align 8, !dbg !3080, !tbaa !1209
  br label %if.end, !dbg !3081

if.end:                                           ; preds = %if.then.6, %lor.lhs.false
  br label %do.body, !dbg !3082

do.body:                                          ; preds = %if.end
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3083
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !3083
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !716, metadata !1019), !dbg !3085
  %11 = load %struct._object*, %struct._object** %f, align 8, !dbg !3086, !tbaa !1023
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !3085, !tbaa !1023
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3087, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3089
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3090, !tbaa !1048
  %dec = add i64 %13, -1, !dbg !3090
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3090, !tbaa !1048
  %cmp8 = icmp ne i64 %dec, 0, !dbg !3091
  br i1 %cmp8, label %if.then.9, label %if.else.10, !dbg !3092

if.then.9:                                        ; preds = %do.body
  br label %if.end.12, !dbg !3093

if.else.10:                                       ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3095, !tbaa !1023
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !3097
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !3097, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !3098
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3098, !tbaa !1600
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3099, !tbaa !1023
  call void %16(%struct._object* %17), !dbg !3100
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3101
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !3101
  br label %do.cond, !dbg !3103

do.cond:                                          ; preds = %if.end.12
  br label %do.end, !dbg !3104

do.end:                                           ; preds = %do.cond
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %if.then.2
  %19 = bitcast %struct._object** %f to i8*, !dbg !3106
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !3106
  br label %if.end.14, !dbg !3107

if.end.14:                                        ; preds = %if.end.13, %entry
  %20 = load double, double* %result, align 8, !dbg !3108, !tbaa !1209
  %21 = bitcast double* %result to i8*, !dbg !3109
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !3109
  ret double %20, !dbg !3110
}

; Function Attrs: nounwind uwtable
define internal void @gc_list_merge(%union._gc_head* %from, %union._gc_head* %to) #0 {
entry:
  %from.addr = alloca %union._gc_head*, align 8
  %to.addr = alloca %union._gc_head*, align 8
  %tail = alloca %union._gc_head*, align 8
  store %union._gc_head* %from, %union._gc_head** %from.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %from.addr, metadata !724, metadata !1019), !dbg !3111
  store %union._gc_head* %to, %union._gc_head** %to.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %to.addr, metadata !725, metadata !1019), !dbg !3112
  %0 = bitcast %union._gc_head** %tail to i8*, !dbg !3113
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3113
  call void @llvm.dbg.declare(metadata %union._gc_head** %tail, metadata !726, metadata !1019), !dbg !3114
  %1 = load %union._gc_head*, %union._gc_head** %from.addr, align 8, !dbg !3115, !tbaa !1023
  %call = call i32 @gc_list_is_empty(%union._gc_head* %1), !dbg !3117
  %tobool = icmp ne i32 %call, 0, !dbg !3117
  br i1 %tobool, label %if.end, label %if.then, !dbg !3118

if.then:                                          ; preds = %entry
  %2 = load %union._gc_head*, %union._gc_head** %to.addr, align 8, !dbg !3119, !tbaa !1023
  %gc = bitcast %union._gc_head* %2 to %struct.anon*, !dbg !3121
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1, !dbg !3122
  %3 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !3122, !tbaa !1789
  store %union._gc_head* %3, %union._gc_head** %tail, align 8, !dbg !3123, !tbaa !1023
  %4 = load %union._gc_head*, %union._gc_head** %from.addr, align 8, !dbg !3124, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %4 to %struct.anon*, !dbg !3125
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3126
  %5 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3126, !tbaa !1347
  %6 = load %union._gc_head*, %union._gc_head** %tail, align 8, !dbg !3127, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !3128
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0, !dbg !3129
  store %union._gc_head* %5, %union._gc_head** %gc_next3, align 8, !dbg !3130, !tbaa !1347
  %7 = load %union._gc_head*, %union._gc_head** %tail, align 8, !dbg !3131, !tbaa !1023
  %8 = load %union._gc_head*, %union._gc_head** %tail, align 8, !dbg !3132, !tbaa !1023
  %gc4 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !3133
  %gc_next5 = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !3134
  %9 = load %union._gc_head*, %union._gc_head** %gc_next5, align 8, !dbg !3134, !tbaa !1347
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !3135
  %gc_prev7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 1, !dbg !3136
  store %union._gc_head* %7, %union._gc_head** %gc_prev7, align 8, !dbg !3137, !tbaa !1789
  %10 = load %union._gc_head*, %union._gc_head** %from.addr, align 8, !dbg !3138, !tbaa !1023
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !3139
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !3140
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !3140, !tbaa !1789
  %12 = load %union._gc_head*, %union._gc_head** %to.addr, align 8, !dbg !3141, !tbaa !1023
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !3142
  %gc_prev11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1, !dbg !3143
  store %union._gc_head* %11, %union._gc_head** %gc_prev11, align 8, !dbg !3144, !tbaa !1789
  %13 = load %union._gc_head*, %union._gc_head** %to.addr, align 8, !dbg !3145, !tbaa !1023
  %14 = load %union._gc_head*, %union._gc_head** %to.addr, align 8, !dbg !3146, !tbaa !1023
  %gc12 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !3147
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !3148
  %15 = load %union._gc_head*, %union._gc_head** %gc_prev13, align 8, !dbg !3148, !tbaa !1789
  %gc14 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !3149
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !3150
  store %union._gc_head* %13, %union._gc_head** %gc_next15, align 8, !dbg !3151, !tbaa !1347
  br label %if.end, !dbg !3152

if.end:                                           ; preds = %if.then, %entry
  %16 = load %union._gc_head*, %union._gc_head** %from.addr, align 8, !dbg !3153, !tbaa !1023
  call void @gc_list_init(%union._gc_head* %16), !dbg !3154
  %17 = bitcast %union._gc_head** %tail to i8*, !dbg !3155
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !3155
  ret void, !dbg !3155
}

; Function Attrs: nounwind uwtable
define internal void @update_refs(%union._gc_head* %containers) #0 {
entry:
  %containers.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %union._gc_head* %containers, %union._gc_head** %containers.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %containers.addr, metadata !734, metadata !1019), !dbg !3156
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !3157
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3157
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !735, metadata !1019), !dbg !3158
  %1 = load %union._gc_head*, %union._gc_head** %containers.addr, align 8, !dbg !3159, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %1 to %struct.anon*, !dbg !3160
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3161
  %2 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3161, !tbaa !1347
  store %union._gc_head* %2, %union._gc_head** %gc, align 8, !dbg !3158, !tbaa !1023
  br label %for.cond, !dbg !3162

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3163, !tbaa !1023
  %4 = load %union._gc_head*, %union._gc_head** %containers.addr, align 8, !dbg !3168, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %3, %4, !dbg !3169
  br i1 %cmp, label %for.body, label %for.end, !dbg !3170

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3171

do.body:                                          ; preds = %for.body
  %5 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3173, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !3176
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !3177
  %6 = load i64, i64* %gc_refs, align 8, !dbg !3177, !tbaa !1758
  %and = and i64 %6, 1, !dbg !3178
  %7 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3179, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %7, i64 1, !dbg !3180
  %8 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3181
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3182
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3182, !tbaa !1048
  %shl = shl i64 %9, 1, !dbg !3183
  %or = or i64 %and, %shl, !dbg !3184
  %10 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3185, !tbaa !1023
  %gc3 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !3186
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2, !dbg !3187
  store i64 %or, i64* %gc_refs4, align 8, !dbg !3188, !tbaa !1758
  br label %do.cond, !dbg !3189

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3190

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !3192

for.inc:                                          ; preds = %do.end
  %11 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3193, !tbaa !1023
  %gc5 = bitcast %union._gc_head* %11 to %struct.anon*, !dbg !3194
  %gc_next6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 0, !dbg !3195
  %12 = load %union._gc_head*, %union._gc_head** %gc_next6, align 8, !dbg !3195, !tbaa !1347
  store %union._gc_head* %12, %union._gc_head** %gc, align 8, !dbg !3196, !tbaa !1023
  br label %for.cond, !dbg !3197

for.end:                                          ; preds = %for.cond
  %13 = bitcast %union._gc_head** %gc to i8*, !dbg !3198
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !3198
  ret void, !dbg !3198
}

; Function Attrs: nounwind uwtable
define internal void @subtract_refs(%union._gc_head* %containers) #0 {
entry:
  %containers.addr = alloca %union._gc_head*, align 8
  %traverse = alloca i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %union._gc_head* %containers, %union._gc_head** %containers.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %containers.addr, metadata !738, metadata !1019), !dbg !3199
  %0 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !3200
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3200
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, metadata !739, metadata !1019), !dbg !3201
  %1 = bitcast %union._gc_head** %gc to i8*, !dbg !3202
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3202
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !740, metadata !1019), !dbg !3203
  %2 = load %union._gc_head*, %union._gc_head** %containers.addr, align 8, !dbg !3204, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %2 to %struct.anon*, !dbg !3205
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3206
  %3 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3206, !tbaa !1347
  store %union._gc_head* %3, %union._gc_head** %gc, align 8, !dbg !3203, !tbaa !1023
  br label %for.cond, !dbg !3207

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3208, !tbaa !1023
  %5 = load %union._gc_head*, %union._gc_head** %containers.addr, align 8, !dbg !3213, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %4, %5, !dbg !3214
  br i1 %cmp, label %for.body, label %for.end, !dbg !3215

for.body:                                         ; preds = %for.cond
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3216, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 1, !dbg !3218
  %7 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3219
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !3220
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3220, !tbaa !1598
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 21, !dbg !3221
  %9 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8, !dbg !3221, !tbaa !2654
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %9, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !3222, !tbaa !1023
  %10 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !3223, !tbaa !1023
  %11 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3224, !tbaa !1023
  %add.ptr2 = getelementptr %union._gc_head, %union._gc_head* %11, i64 1, !dbg !3225
  %12 = bitcast %union._gc_head* %add.ptr2 to %struct._object*, !dbg !3226
  %call = call i32 %10(%struct._object* %12, i32 (%struct._object*, i8*)* @visit_decref, i8* null), !dbg !3223
  br label %for.inc, !dbg !3227

for.inc:                                          ; preds = %for.body
  %13 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3228, !tbaa !1023
  %gc3 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !3229
  %gc_next4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 0, !dbg !3230
  %14 = load %union._gc_head*, %union._gc_head** %gc_next4, align 8, !dbg !3230, !tbaa !1347
  store %union._gc_head* %14, %union._gc_head** %gc, align 8, !dbg !3231, !tbaa !1023
  br label %for.cond, !dbg !3232

for.end:                                          ; preds = %for.cond
  %15 = bitcast %union._gc_head** %gc to i8*, !dbg !3233
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3233
  %16 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !3233
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !3233
  ret void, !dbg !3233
}

; Function Attrs: nounwind uwtable
define internal void @gc_list_init(%union._gc_head* %list) #0 {
entry:
  %list.addr = alloca %union._gc_head*, align 8
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %list.addr, metadata !750, metadata !1019), !dbg !3234
  %0 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !3235, !tbaa !1023
  %1 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !3236, !tbaa !1023
  %gc = bitcast %union._gc_head* %1 to %struct.anon*, !dbg !3237
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1, !dbg !3238
  store %union._gc_head* %0, %union._gc_head** %gc_prev, align 8, !dbg !3239, !tbaa !1789
  %2 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !3240, !tbaa !1023
  %3 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !3241, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !3242
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3243
  store %union._gc_head* %2, %union._gc_head** %gc_next, align 8, !dbg !3244, !tbaa !1347
  ret void, !dbg !3245
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
  store %union._gc_head* %young, %union._gc_head** %young.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %young.addr, metadata !753, metadata !1019), !dbg !3246
  store %union._gc_head* %unreachable, %union._gc_head** %unreachable.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %unreachable.addr, metadata !754, metadata !1019), !dbg !3247
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !3248
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3248
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !755, metadata !1019), !dbg !3249
  %1 = load %union._gc_head*, %union._gc_head** %young.addr, align 8, !dbg !3250, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %1 to %struct.anon*, !dbg !3251
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3252
  %2 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3252, !tbaa !1347
  store %union._gc_head* %2, %union._gc_head** %gc, align 8, !dbg !3249, !tbaa !1023
  br label %while.cond, !dbg !3253

while.cond:                                       ; preds = %if.end.23, %entry
  %3 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3254, !tbaa !1023
  %4 = load %union._gc_head*, %union._gc_head** %young.addr, align 8, !dbg !3257, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %3, %4, !dbg !3258
  br i1 %cmp, label %while.body, label %while.end, !dbg !3253

while.body:                                       ; preds = %while.cond
  %5 = bitcast %union._gc_head** %next to i8*, !dbg !3259
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3259
  call void @llvm.dbg.declare(metadata %union._gc_head** %next, metadata !756, metadata !1019), !dbg !3260
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3261, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !3262
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !3263
  %7 = load i64, i64* %gc_refs, align 8, !dbg !3263, !tbaa !1758
  %shr = ashr i64 %7, 1, !dbg !3264
  %tobool = icmp ne i64 %shr, 0, !dbg !3264
  br i1 %tobool, label %if.then, label %if.else, !dbg !3265

if.then:                                          ; preds = %while.body
  %8 = bitcast %struct._object** %op to i8*, !dbg !3266
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3266
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !758, metadata !1019), !dbg !3267
  %9 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3268, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %9, i64 1, !dbg !3269
  %10 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3270
  store %struct._object* %10, %struct._object** %op, align 8, !dbg !3267, !tbaa !1023
  %11 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !3271
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !3271
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, metadata !761, metadata !1019), !dbg !3272
  %12 = load %struct._object*, %struct._object** %op, align 8, !dbg !3273, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !3274
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3274, !tbaa !1598
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 21, !dbg !3275
  %14 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8, !dbg !3275, !tbaa !2654
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %14, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !3272, !tbaa !1023
  br label %do.body, !dbg !3276

do.body:                                          ; preds = %if.then
  %15 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3277, !tbaa !1023
  %gc3 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !3280
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2, !dbg !3281
  %16 = load i64, i64* %gc_refs4, align 8, !dbg !3281, !tbaa !1758
  %and = and i64 %16, 1, !dbg !3282
  %or = or i64 %and, -6, !dbg !3283
  %17 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3284, !tbaa !1023
  %gc5 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !3285
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2, !dbg !3286
  store i64 %or, i64* %gc_refs6, align 8, !dbg !3287, !tbaa !1758
  br label %do.cond, !dbg !3288

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3289

do.end:                                           ; preds = %do.cond
  %18 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !3291, !tbaa !1023
  %19 = load %struct._object*, %struct._object** %op, align 8, !dbg !3292, !tbaa !1023
  %20 = load %union._gc_head*, %union._gc_head** %young.addr, align 8, !dbg !3293, !tbaa !1023
  %21 = bitcast %union._gc_head* %20 to i8*, !dbg !3294
  %call = call i32 %18(%struct._object* %19, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %union._gc_head*)* @visit_reachable to i32 (%struct._object*, i8*)*), i8* %21), !dbg !3291
  %22 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3295, !tbaa !1023
  %gc7 = bitcast %union._gc_head* %22 to %struct.anon*, !dbg !3296
  %gc_next8 = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 0, !dbg !3297
  %23 = load %union._gc_head*, %union._gc_head** %gc_next8, align 8, !dbg !3297, !tbaa !1347
  store %union._gc_head* %23, %union._gc_head** %next, align 8, !dbg !3298, !tbaa !1023
  %24 = load %struct._object*, %struct._object** %op, align 8, !dbg !3299, !tbaa !1023
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3301
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !3301, !tbaa !1598
  %cmp10 = icmp eq %struct._typeobject* %25, @PyTuple_Type, !dbg !3302
  br i1 %cmp10, label %if.then.11, label %if.end, !dbg !3303

if.then.11:                                       ; preds = %do.end
  %26 = load %struct._object*, %struct._object** %op, align 8, !dbg !3304, !tbaa !1023
  call void @_PyTuple_MaybeUntrack(%struct._object* %26), !dbg !3306
  br label %if.end, !dbg !3307

if.end:                                           ; preds = %if.then.11, %do.end
  %27 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !3308
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !3308
  %28 = bitcast %struct._object** %op to i8*, !dbg !3308
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !3308
  br label %if.end.23, !dbg !3309

if.else:                                          ; preds = %while.body
  %29 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3310, !tbaa !1023
  %gc12 = bitcast %union._gc_head* %29 to %struct.anon*, !dbg !3312
  %gc_next13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0, !dbg !3313
  %30 = load %union._gc_head*, %union._gc_head** %gc_next13, align 8, !dbg !3313, !tbaa !1347
  store %union._gc_head* %30, %union._gc_head** %next, align 8, !dbg !3314, !tbaa !1023
  %31 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3315, !tbaa !1023
  %32 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8, !dbg !3316, !tbaa !1023
  call void @gc_list_move(%union._gc_head* %31, %union._gc_head* %32), !dbg !3317
  br label %do.body.14, !dbg !3318

do.body.14:                                       ; preds = %if.else
  %33 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3319, !tbaa !1023
  %gc15 = bitcast %union._gc_head* %33 to %struct.anon*, !dbg !3322
  %gc_refs16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 2, !dbg !3323
  %34 = load i64, i64* %gc_refs16, align 8, !dbg !3323, !tbaa !1758
  %and17 = and i64 %34, 1, !dbg !3324
  %or18 = or i64 %and17, -8, !dbg !3325
  %35 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3326, !tbaa !1023
  %gc19 = bitcast %union._gc_head* %35 to %struct.anon*, !dbg !3327
  %gc_refs20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 2, !dbg !3328
  store i64 %or18, i64* %gc_refs20, align 8, !dbg !3329, !tbaa !1758
  br label %do.cond.21, !dbg !3330

do.cond.21:                                       ; preds = %do.body.14
  br label %do.end.22, !dbg !3331

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %if.end
  %36 = load %union._gc_head*, %union._gc_head** %next, align 8, !dbg !3333, !tbaa !1023
  store %union._gc_head* %36, %union._gc_head** %gc, align 8, !dbg !3334, !tbaa !1023
  %37 = bitcast %union._gc_head** %next to i8*, !dbg !3335
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !3335
  br label %while.cond, !dbg !3253

while.end:                                        ; preds = %while.cond
  %38 = bitcast %union._gc_head** %gc to i8*, !dbg !3336
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !3336
  ret void, !dbg !3336
}

; Function Attrs: nounwind uwtable
define internal void @untrack_dicts(%union._gc_head* %head) #0 {
entry:
  %head.addr = alloca %union._gc_head*, align 8
  %next = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  store %union._gc_head* %head, %union._gc_head** %head.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %head.addr, metadata !780, metadata !1019), !dbg !3337
  %0 = bitcast %union._gc_head** %next to i8*, !dbg !3338
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3338
  call void @llvm.dbg.declare(metadata %union._gc_head** %next, metadata !781, metadata !1019), !dbg !3339
  %1 = bitcast %union._gc_head** %gc to i8*, !dbg !3338
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3338
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !782, metadata !1019), !dbg !3340
  %2 = load %union._gc_head*, %union._gc_head** %head.addr, align 8, !dbg !3341, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %2 to %struct.anon*, !dbg !3342
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3343
  %3 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3343, !tbaa !1347
  store %union._gc_head* %3, %union._gc_head** %gc, align 8, !dbg !3340, !tbaa !1023
  br label %while.cond, !dbg !3344

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3345, !tbaa !1023
  %5 = load %union._gc_head*, %union._gc_head** %head.addr, align 8, !dbg !3348, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %4, %5, !dbg !3349
  br i1 %cmp, label %while.body, label %while.end, !dbg !3344

while.body:                                       ; preds = %while.cond
  %6 = bitcast %struct._object** %op to i8*, !dbg !3350
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3350
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !783, metadata !1019), !dbg !3351
  %7 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3352, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %7, i64 1, !dbg !3353
  %8 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3354
  store %struct._object* %8, %struct._object** %op, align 8, !dbg !3351, !tbaa !1023
  %9 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3355, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !3356
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0, !dbg !3357
  %10 = load %union._gc_head*, %union._gc_head** %gc_next3, align 8, !dbg !3357, !tbaa !1347
  store %union._gc_head* %10, %union._gc_head** %next, align 8, !dbg !3358, !tbaa !1023
  %11 = load %struct._object*, %struct._object** %op, align 8, !dbg !3359, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !3361
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3361, !tbaa !1598
  %cmp4 = icmp eq %struct._typeobject* %12, @PyDict_Type, !dbg !3362
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3363

if.then:                                          ; preds = %while.body
  %13 = load %struct._object*, %struct._object** %op, align 8, !dbg !3364, !tbaa !1023
  call void @_PyDict_MaybeUntrack(%struct._object* %13), !dbg !3365
  br label %if.end, !dbg !3365

if.end:                                           ; preds = %if.then, %while.body
  %14 = load %union._gc_head*, %union._gc_head** %next, align 8, !dbg !3366, !tbaa !1023
  store %union._gc_head* %14, %union._gc_head** %gc, align 8, !dbg !3367, !tbaa !1023
  %15 = bitcast %struct._object** %op to i8*, !dbg !3368
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3368
  br label %while.cond, !dbg !3344

while.end:                                        ; preds = %while.cond
  %16 = bitcast %union._gc_head** %gc to i8*, !dbg !3369
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !3369
  %17 = bitcast %union._gc_head** %next to i8*, !dbg !3369
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !3369
  ret void, !dbg !3369
}

; Function Attrs: nounwind uwtable
define internal void @move_legacy_finalizers(%union._gc_head* %unreachable, %union._gc_head* %finalizers) #0 {
entry:
  %unreachable.addr = alloca %union._gc_head*, align 8
  %finalizers.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %next = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  store %union._gc_head* %unreachable, %union._gc_head** %unreachable.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %unreachable.addr, metadata !787, metadata !1019), !dbg !3370
  store %union._gc_head* %finalizers, %union._gc_head** %finalizers.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %finalizers.addr, metadata !788, metadata !1019), !dbg !3371
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !3372
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3372
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !789, metadata !1019), !dbg !3373
  %1 = bitcast %union._gc_head** %next to i8*, !dbg !3374
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3374
  call void @llvm.dbg.declare(metadata %union._gc_head** %next, metadata !790, metadata !1019), !dbg !3375
  %2 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8, !dbg !3376, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %2 to %struct.anon*, !dbg !3377
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3378
  %3 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3378, !tbaa !1347
  store %union._gc_head* %3, %union._gc_head** %gc, align 8, !dbg !3379, !tbaa !1023
  br label %for.cond, !dbg !3380

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3381, !tbaa !1023
  %5 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8, !dbg !3384, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %4, %5, !dbg !3385
  br i1 %cmp, label %for.body, label %for.end, !dbg !3386

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct._object** %op to i8*, !dbg !3387
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3387
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !791, metadata !1019), !dbg !3388
  %7 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3389, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %7, i64 1, !dbg !3390
  %8 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3391
  store %struct._object* %8, %struct._object** %op, align 8, !dbg !3388, !tbaa !1023
  %9 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3392, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !3393
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0, !dbg !3394
  %10 = load %union._gc_head*, %union._gc_head** %gc_next3, align 8, !dbg !3394, !tbaa !1347
  store %union._gc_head* %10, %union._gc_head** %next, align 8, !dbg !3395, !tbaa !1023
  %11 = load %struct._object*, %struct._object** %op, align 8, !dbg !3396, !tbaa !1023
  %call = call i32 @has_legacy_finalizer(%struct._object* %11), !dbg !3398
  %tobool = icmp ne i32 %call, 0, !dbg !3398
  br i1 %tobool, label %if.then, label %if.end, !dbg !3399

if.then:                                          ; preds = %for.body
  %12 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3400, !tbaa !1023
  %13 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8, !dbg !3402, !tbaa !1023
  call void @gc_list_move(%union._gc_head* %12, %union._gc_head* %13), !dbg !3403
  br label %do.body, !dbg !3404

do.body:                                          ; preds = %if.then
  %14 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3405, !tbaa !1023
  %gc4 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !3408
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 2, !dbg !3409
  %15 = load i64, i64* %gc_refs, align 8, !dbg !3409, !tbaa !1758
  %and = and i64 %15, 1, !dbg !3410
  %or = or i64 %and, -6, !dbg !3411
  %16 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3412, !tbaa !1023
  %gc5 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !3413
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2, !dbg !3414
  store i64 %or, i64* %gc_refs6, align 8, !dbg !3415, !tbaa !1758
  br label %do.cond, !dbg !3416

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3417

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !3419

if.end:                                           ; preds = %do.end, %for.body
  %17 = bitcast %struct._object** %op to i8*, !dbg !3420
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !3420
  br label %for.inc, !dbg !3421

for.inc:                                          ; preds = %if.end
  %18 = load %union._gc_head*, %union._gc_head** %next, align 8, !dbg !3422, !tbaa !1023
  store %union._gc_head* %18, %union._gc_head** %gc, align 8, !dbg !3423, !tbaa !1023
  br label %for.cond, !dbg !3424

for.end:                                          ; preds = %for.cond
  %19 = bitcast %union._gc_head** %next to i8*, !dbg !3425
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !3425
  %20 = bitcast %union._gc_head** %gc to i8*, !dbg !3425
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !3425
  ret void, !dbg !3425
}

; Function Attrs: nounwind uwtable
define internal void @move_legacy_finalizer_reachable(%union._gc_head* %finalizers) #0 {
entry:
  %finalizers.addr = alloca %union._gc_head*, align 8
  %traverse = alloca i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %union._gc_head* %finalizers, %union._gc_head** %finalizers.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %finalizers.addr, metadata !800, metadata !1019), !dbg !3426
  %0 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !3427
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3427
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, metadata !801, metadata !1019), !dbg !3428
  %1 = bitcast %union._gc_head** %gc to i8*, !dbg !3429
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3429
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !802, metadata !1019), !dbg !3430
  %2 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8, !dbg !3431, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %2 to %struct.anon*, !dbg !3432
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3433
  %3 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3433, !tbaa !1347
  store %union._gc_head* %3, %union._gc_head** %gc, align 8, !dbg !3430, !tbaa !1023
  br label %for.cond, !dbg !3434

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3435, !tbaa !1023
  %5 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8, !dbg !3440, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %4, %5, !dbg !3441
  br i1 %cmp, label %for.body, label %for.end, !dbg !3442

for.body:                                         ; preds = %for.cond
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3443, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 1, !dbg !3445
  %7 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3446
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !3447
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3447, !tbaa !1598
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 21, !dbg !3448
  %9 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8, !dbg !3448, !tbaa !2654
  store i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %9, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !3449, !tbaa !1023
  %10 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse, align 8, !dbg !3450, !tbaa !1023
  %11 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3451, !tbaa !1023
  %add.ptr2 = getelementptr %union._gc_head, %union._gc_head* %11, i64 1, !dbg !3452
  %12 = bitcast %union._gc_head* %add.ptr2 to %struct._object*, !dbg !3453
  %13 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8, !dbg !3454, !tbaa !1023
  %14 = bitcast %union._gc_head* %13 to i8*, !dbg !3455
  %call = call i32 %10(%struct._object* %12, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %union._gc_head*)* @visit_move to i32 (%struct._object*, i8*)*), i8* %14), !dbg !3450
  br label %for.inc, !dbg !3456

for.inc:                                          ; preds = %for.body
  %15 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3457, !tbaa !1023
  %gc3 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !3458
  %gc_next4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 0, !dbg !3459
  %16 = load %union._gc_head*, %union._gc_head** %gc_next4, align 8, !dbg !3459, !tbaa !1347
  store %union._gc_head* %16, %union._gc_head** %gc, align 8, !dbg !3460, !tbaa !1023
  br label %for.cond, !dbg !3461

for.end:                                          ; preds = %for.cond
  %17 = bitcast %union._gc_head** %gc to i8*, !dbg !3462
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !3462
  %18 = bitcast i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %traverse to i8*, !dbg !3462
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !3462
  ret void, !dbg !3462
}

; Function Attrs: nounwind uwtable
define internal void @debug_cycle(i8* %msg, %struct._object* %op) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %op.addr = alloca %struct._object*, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !816, metadata !1019), !dbg !3463
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !817, metadata !1019), !dbg !3464
  %0 = load i8*, i8** %msg.addr, align 8, !dbg !3465, !tbaa !1023
  %1 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !3466, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !3467
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3467, !tbaa !1598
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 1, !dbg !3468
  %3 = load i8*, i8** %tp_name, align 8, !dbg !3468, !tbaa !3469
  %4 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !3470, !tbaa !1023
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i8* %0, i8* %3, %struct._object* %4), !dbg !3471
  ret void, !dbg !3472
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
  %cleanup.dest.slot = alloca i32
  %wrasgc = alloca %union._gc_head*, align 8
  %temp = alloca %struct._object*, align 8
  %callback = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  store %union._gc_head* %unreachable, %union._gc_head** %unreachable.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %unreachable.addr, metadata !822, metadata !1019), !dbg !3473
  store %union._gc_head* %old, %union._gc_head** %old.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %old.addr, metadata !823, metadata !1019), !dbg !3474
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !3475
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3475
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !824, metadata !1019), !dbg !3476
  %1 = bitcast %struct._object** %op to i8*, !dbg !3477
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3477
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !825, metadata !1019), !dbg !3478
  %2 = bitcast %struct._PyWeakReference** %wr to i8*, !dbg !3479
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3479
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %wr, metadata !826, metadata !1019), !dbg !3480
  %3 = bitcast %union._gc_head* %wrcb_to_call to i8*, !dbg !3481
  call void @llvm.lifetime.start(i64 24, i8* %3) #1, !dbg !3481
  call void @llvm.dbg.declare(metadata %union._gc_head* %wrcb_to_call, metadata !827, metadata !1019), !dbg !3482
  %4 = bitcast %union._gc_head** %next to i8*, !dbg !3483
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3483
  call void @llvm.dbg.declare(metadata %union._gc_head** %next, metadata !828, metadata !1019), !dbg !3484
  %5 = bitcast i32* %num_freed to i8*, !dbg !3485
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !3485
  call void @llvm.dbg.declare(metadata i32* %num_freed, metadata !829, metadata !1019), !dbg !3486
  store i32 0, i32* %num_freed, align 4, !dbg !3486, !tbaa !1141
  call void @gc_list_init(%union._gc_head* %wrcb_to_call), !dbg !3487
  %6 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8, !dbg !3488, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !3489
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3490
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3490, !tbaa !1347
  store %union._gc_head* %7, %union._gc_head** %gc, align 8, !dbg !3491, !tbaa !1023
  br label %for.cond, !dbg !3492

for.cond:                                         ; preds = %for.inc.23, %entry
  %8 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3493, !tbaa !1023
  %9 = load %union._gc_head*, %union._gc_head** %unreachable.addr, align 8, !dbg !3496, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %8, %9, !dbg !3497
  br i1 %cmp, label %for.body, label %for.end.24, !dbg !3498

for.body:                                         ; preds = %for.cond
  %10 = bitcast %struct._PyWeakReference*** %wrlist to i8*, !dbg !3499
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !3499
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference*** %wrlist, metadata !830, metadata !1019), !dbg !3500
  %11 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3501, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %11, i64 1, !dbg !3502
  %12 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3503
  store %struct._object* %12, %struct._object** %op, align 8, !dbg !3504, !tbaa !1023
  %13 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3505, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !3506
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0, !dbg !3507
  %14 = load %union._gc_head*, %union._gc_head** %gc_next3, align 8, !dbg !3507, !tbaa !1347
  store %union._gc_head* %14, %union._gc_head** %next, align 8, !dbg !3508, !tbaa !1023
  %15 = load %struct._object*, %struct._object** %op, align 8, !dbg !3509, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3511
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3511, !tbaa !1598
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 24, !dbg !3512
  %17 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !3512, !tbaa !3513
  %cmp4 = icmp sgt i64 %17, 0, !dbg !3514
  br i1 %cmp4, label %if.end, label %if.then, !dbg !3515

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.20, !dbg !3516

if.end:                                           ; preds = %for.body
  %18 = load %struct._object*, %struct._object** %op, align 8, !dbg !3517, !tbaa !1023
  %19 = bitcast %struct._object* %18 to i8*, !dbg !3518
  %20 = load %struct._object*, %struct._object** %op, align 8, !dbg !3519, !tbaa !1023
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !3520
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !3520, !tbaa !1598
  %tp_weaklistoffset6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 24, !dbg !3521
  %22 = load i64, i64* %tp_weaklistoffset6, align 8, !dbg !3521, !tbaa !3513
  %add.ptr7 = getelementptr i8, i8* %19, i64 %22, !dbg !3522
  %23 = bitcast i8* %add.ptr7 to %struct._object**, !dbg !3523
  %24 = bitcast %struct._object** %23 to %struct._PyWeakReference**, !dbg !3524
  store %struct._PyWeakReference** %24, %struct._PyWeakReference*** %wrlist, align 8, !dbg !3525, !tbaa !1023
  %25 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %wrlist, align 8, !dbg !3526, !tbaa !1023
  %26 = load %struct._PyWeakReference*, %struct._PyWeakReference** %25, align 8, !dbg !3527, !tbaa !1023
  store %struct._PyWeakReference* %26, %struct._PyWeakReference** %wr, align 8, !dbg !3528, !tbaa !1023
  br label %for.cond.8, !dbg !3529

for.cond.8:                                       ; preds = %for.inc, %if.end
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8, !dbg !3530, !tbaa !1023
  %cmp9 = icmp ne %struct._PyWeakReference* %27, null, !dbg !3533
  br i1 %cmp9, label %for.body.10, label %for.end, !dbg !3534

for.body.10:                                      ; preds = %for.cond.8
  %28 = bitcast %union._gc_head** %wrasgc to i8*, !dbg !3535
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !3535
  call void @llvm.dbg.declare(metadata %union._gc_head** %wrasgc, metadata !834, metadata !1019), !dbg !3536
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8, !dbg !3537, !tbaa !1023
  call void @_PyWeakref_ClearRef(%struct._PyWeakReference* %29), !dbg !3538
  %30 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8, !dbg !3539, !tbaa !1023
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %30, i32 0, i32 2, !dbg !3541
  %31 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !3541, !tbaa !3542
  %cmp11 = icmp eq %struct._object* %31, null, !dbg !3544
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !3545

if.then.12:                                       ; preds = %for.body.10
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3546

if.end.13:                                        ; preds = %for.body.10
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8, !dbg !3547, !tbaa !1023
  %33 = bitcast %struct._PyWeakReference* %32 to %union._gc_head*, !dbg !3549
  %add.ptr14 = getelementptr %union._gc_head, %union._gc_head* %33, i64 -1, !dbg !3550
  %gc15 = bitcast %union._gc_head* %add.ptr14 to %struct.anon*, !dbg !3551
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 2, !dbg !3552
  %34 = load i64, i64* %gc_refs, align 8, !dbg !3552, !tbaa !1758
  %shr = ashr i64 %34, 1, !dbg !3553
  %cmp16 = icmp eq i64 %shr, -4, !dbg !3554
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !3555

if.then.17:                                       ; preds = %if.end.13
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3556

if.end.18:                                        ; preds = %if.end.13
  %35 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8, !dbg !3557, !tbaa !1023
  %36 = bitcast %struct._PyWeakReference* %35 to %struct._object*, !dbg !3558
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !3559
  %37 = load i64, i64* %ob_refcnt, align 8, !dbg !3560, !tbaa !1048
  %inc = add i64 %37, 1, !dbg !3560
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3560, !tbaa !1048
  %38 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8, !dbg !3561, !tbaa !1023
  %39 = bitcast %struct._PyWeakReference* %38 to %union._gc_head*, !dbg !3562
  %add.ptr19 = getelementptr %union._gc_head, %union._gc_head* %39, i64 -1, !dbg !3563
  store %union._gc_head* %add.ptr19, %union._gc_head** %wrasgc, align 8, !dbg !3564, !tbaa !1023
  %40 = load %union._gc_head*, %union._gc_head** %wrasgc, align 8, !dbg !3565, !tbaa !1023
  call void @gc_list_move(%union._gc_head* %40, %union._gc_head* %wrcb_to_call), !dbg !3566
  store i32 0, i32* %cleanup.dest.slot, !dbg !3567
  br label %cleanup, !dbg !3567

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.12
  %41 = bitcast %union._gc_head** %wrasgc to i8*, !dbg !3568
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !3568
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 7
  br i1 %SwitchLeaf, label %for.inc, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %for.inc, !dbg !3569

for.inc:                                          ; preds = %LeafBlock, %cleanup.cont
  %42 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %wrlist, align 8, !dbg !3570, !tbaa !1023
  %43 = load %struct._PyWeakReference*, %struct._PyWeakReference** %42, align 8, !dbg !3571, !tbaa !1023
  store %struct._PyWeakReference* %43, %struct._PyWeakReference** %wr, align 8, !dbg !3572, !tbaa !1023
  br label %for.cond.8, !dbg !3573

for.end:                                          ; preds = %for.cond.8
  store i32 0, i32* %cleanup.dest.slot, !dbg !3574
  br label %cleanup.20, !dbg !3574

cleanup.20:                                       ; preds = %for.end, %if.then
  %44 = bitcast %struct._PyWeakReference*** %wrlist to i8*, !dbg !3575
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !3575
  %cleanup.dest.21 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.20
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.21, 4
  br i1 %SwitchLeaf3, label %for.inc.23, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.22

cleanup.cont.22:                                  ; preds = %NewDefault.1
  br label %for.inc.23, !dbg !3576

for.inc.23:                                       ; preds = %LeafBlock.2, %cleanup.cont.22
  %45 = load %union._gc_head*, %union._gc_head** %next, align 8, !dbg !3577, !tbaa !1023
  store %union._gc_head* %45, %union._gc_head** %gc, align 8, !dbg !3578, !tbaa !1023
  br label %for.cond, !dbg !3579

for.end.24:                                       ; preds = %for.cond
  br label %while.cond, !dbg !3580

while.cond:                                       ; preds = %if.end.57, %for.end.24
  %call = call i32 @gc_list_is_empty(%union._gc_head* %wrcb_to_call), !dbg !3581
  %tobool = icmp ne i32 %call, 0, !dbg !3584
  %lnot = xor i1 %tobool, true, !dbg !3584
  br i1 %lnot, label %while.body, label %while.end, !dbg !3580

while.body:                                       ; preds = %while.cond
  %46 = bitcast %struct._object** %temp to i8*, !dbg !3585
  call void @llvm.lifetime.start(i64 8, i8* %46) #1, !dbg !3585
  call void @llvm.dbg.declare(metadata %struct._object** %temp, metadata !838, metadata !1019), !dbg !3586
  %47 = bitcast %struct._object** %callback to i8*, !dbg !3587
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !3587
  call void @llvm.dbg.declare(metadata %struct._object** %callback, metadata !840, metadata !1019), !dbg !3588
  %gc25 = bitcast %union._gc_head* %wrcb_to_call to %struct.anon*, !dbg !3589
  %gc_next26 = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 0, !dbg !3590
  %48 = load %union._gc_head*, %union._gc_head** %gc_next26, align 8, !dbg !3590, !tbaa !1347
  store %union._gc_head* %48, %union._gc_head** %gc, align 8, !dbg !3591, !tbaa !1023
  %49 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3592, !tbaa !1023
  %add.ptr27 = getelementptr %union._gc_head, %union._gc_head* %49, i64 1, !dbg !3593
  %50 = bitcast %union._gc_head* %add.ptr27 to %struct._object*, !dbg !3594
  store %struct._object* %50, %struct._object** %op, align 8, !dbg !3595, !tbaa !1023
  %51 = load %struct._object*, %struct._object** %op, align 8, !dbg !3596, !tbaa !1023
  %52 = bitcast %struct._object* %51 to %struct._PyWeakReference*, !dbg !3597
  store %struct._PyWeakReference* %52, %struct._PyWeakReference** %wr, align 8, !dbg !3598, !tbaa !1023
  %53 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8, !dbg !3599, !tbaa !1023
  %wr_callback28 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %53, i32 0, i32 2, !dbg !3600
  %54 = load %struct._object*, %struct._object** %wr_callback28, align 8, !dbg !3600, !tbaa !3542
  store %struct._object* %54, %struct._object** %callback, align 8, !dbg !3601, !tbaa !1023
  %55 = load %struct._object*, %struct._object** %callback, align 8, !dbg !3602, !tbaa !1023
  %56 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr, align 8, !dbg !3603, !tbaa !1023
  %call29 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %55, %struct._PyWeakReference* %56, i8* null), !dbg !3604
  store %struct._object* %call29, %struct._object** %temp, align 8, !dbg !3605, !tbaa !1023
  %57 = load %struct._object*, %struct._object** %temp, align 8, !dbg !3606, !tbaa !1023
  %cmp30 = icmp eq %struct._object* %57, null, !dbg !3607
  br i1 %cmp30, label %if.then.31, label %if.else, !dbg !3608

if.then.31:                                       ; preds = %while.body
  %58 = load %struct._object*, %struct._object** %callback, align 8, !dbg !3609, !tbaa !1023
  call void @PyErr_WriteUnraisable(%struct._object* %58), !dbg !3610
  br label %if.end.38, !dbg !3610

if.else:                                          ; preds = %while.body
  br label %do.body, !dbg !3611

do.body:                                          ; preds = %if.else
  %59 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3612
  call void @llvm.lifetime.start(i64 8, i8* %59) #1, !dbg !3612
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !841, metadata !1019), !dbg !3614
  %60 = load %struct._object*, %struct._object** %temp, align 8, !dbg !3615, !tbaa !1023
  store %struct._object* %60, %struct._object** %_py_decref_tmp, align 8, !dbg !3614, !tbaa !1023
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3616, !tbaa !1023
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !3618
  %62 = load i64, i64* %ob_refcnt32, align 8, !dbg !3619, !tbaa !1048
  %dec = add i64 %62, -1, !dbg !3619
  store i64 %dec, i64* %ob_refcnt32, align 8, !dbg !3619, !tbaa !1048
  %cmp33 = icmp ne i64 %dec, 0, !dbg !3620
  br i1 %cmp33, label %if.then.34, label %if.else.35, !dbg !3621

if.then.34:                                       ; preds = %do.body
  br label %if.end.37, !dbg !3622

if.else.35:                                       ; preds = %do.body
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3624, !tbaa !1023
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !3626
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !3626, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4, !dbg !3627
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3627, !tbaa !1600
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3628, !tbaa !1023
  call void %65(%struct._object* %66), !dbg !3629
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  %67 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3630
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !3630
  br label %do.cond, !dbg !3632

do.cond:                                          ; preds = %if.end.37
  br label %do.end, !dbg !3633

do.end:                                           ; preds = %do.cond
  br label %if.end.38

if.end.38:                                        ; preds = %do.end, %if.then.31
  br label %do.body.39, !dbg !3635

do.body.39:                                       ; preds = %if.end.38
  %68 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !3636
  call void @llvm.lifetime.start(i64 8, i8* %68) #1, !dbg !3636
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp40, metadata !844, metadata !1019), !dbg !3638
  %69 = load %struct._object*, %struct._object** %op, align 8, !dbg !3639, !tbaa !1023
  store %struct._object* %69, %struct._object** %_py_decref_tmp40, align 8, !dbg !3638, !tbaa !1023
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !3640, !tbaa !1023
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0, !dbg !3642
  %71 = load i64, i64* %ob_refcnt41, align 8, !dbg !3643, !tbaa !1048
  %dec42 = add i64 %71, -1, !dbg !3643
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !3643, !tbaa !1048
  %cmp43 = icmp ne i64 %dec42, 0, !dbg !3644
  br i1 %cmp43, label %if.then.44, label %if.else.45, !dbg !3645

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48, !dbg !3646

if.else.45:                                       ; preds = %do.body.39
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !3648, !tbaa !1023
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1, !dbg !3650
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !3650, !tbaa !1598
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4, !dbg !3651
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8, !dbg !3651, !tbaa !1600
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !3652, !tbaa !1023
  call void %74(%struct._object* %75), !dbg !3653
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  %76 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !3654
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !3654
  br label %do.cond.49, !dbg !3656

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50, !dbg !3657

do.end.50:                                        ; preds = %do.cond.49
  %gc51 = bitcast %union._gc_head* %wrcb_to_call to %struct.anon*, !dbg !3659
  %gc_next52 = getelementptr inbounds %struct.anon, %struct.anon* %gc51, i32 0, i32 0, !dbg !3661
  %77 = load %union._gc_head*, %union._gc_head** %gc_next52, align 8, !dbg !3661, !tbaa !1347
  %78 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3662, !tbaa !1023
  %cmp53 = icmp eq %union._gc_head* %77, %78, !dbg !3663
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !3664

if.then.54:                                       ; preds = %do.end.50
  %79 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3665, !tbaa !1023
  %80 = load %union._gc_head*, %union._gc_head** %old.addr, align 8, !dbg !3667, !tbaa !1023
  call void @gc_list_move(%union._gc_head* %79, %union._gc_head* %80), !dbg !3668
  br label %if.end.57, !dbg !3669

if.else.55:                                       ; preds = %do.end.50
  %81 = load i32, i32* %num_freed, align 4, !dbg !3670, !tbaa !1141
  %inc56 = add i32 %81, 1, !dbg !3670
  store i32 %inc56, i32* %num_freed, align 4, !dbg !3670, !tbaa !1141
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.54
  %82 = bitcast %struct._object** %callback to i8*, !dbg !3671
  call void @llvm.lifetime.end(i64 8, i8* %82) #1, !dbg !3671
  %83 = bitcast %struct._object** %temp to i8*, !dbg !3671
  call void @llvm.lifetime.end(i64 8, i8* %83) #1, !dbg !3671
  br label %while.cond, !dbg !3580

while.end:                                        ; preds = %while.cond
  %84 = load i32, i32* %num_freed, align 4, !dbg !3672, !tbaa !1141
  store i32 1, i32* %cleanup.dest.slot
  %85 = bitcast i32* %num_freed to i8*, !dbg !3673
  call void @llvm.lifetime.end(i64 4, i8* %85) #1, !dbg !3673
  %86 = bitcast %union._gc_head** %next to i8*, !dbg !3673
  call void @llvm.lifetime.end(i64 8, i8* %86) #1, !dbg !3673
  %87 = bitcast %union._gc_head* %wrcb_to_call to i8*, !dbg !3673
  call void @llvm.lifetime.end(i64 24, i8* %87) #1, !dbg !3673
  %88 = bitcast %struct._PyWeakReference** %wr to i8*, !dbg !3673
  call void @llvm.lifetime.end(i64 8, i8* %88) #1, !dbg !3673
  %89 = bitcast %struct._object** %op to i8*, !dbg !3673
  call void @llvm.lifetime.end(i64 8, i8* %89) #1, !dbg !3673
  %90 = bitcast %union._gc_head** %gc to i8*, !dbg !3673
  call void @llvm.lifetime.end(i64 8, i8* %90) #1, !dbg !3673
  ret i32 %84, !dbg !3674
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
  store %union._gc_head* %collectable, %union._gc_head** %collectable.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %collectable.addr, metadata !848, metadata !1019), !dbg !3675
  %0 = bitcast void (%struct._object*)** %finalize to i8*, !dbg !3676
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3676
  call void @llvm.dbg.declare(metadata void (%struct._object*)** %finalize, metadata !849, metadata !1019), !dbg !3677
  %1 = bitcast %union._gc_head* %seen to i8*, !dbg !3678
  call void @llvm.lifetime.start(i64 24, i8* %1) #1, !dbg !3678
  call void @llvm.dbg.declare(metadata %union._gc_head* %seen, metadata !850, metadata !1019), !dbg !3679
  call void @gc_list_init(%union._gc_head* %seen), !dbg !3680
  br label %while.cond, !dbg !3681

while.cond:                                       ; preds = %if.end.20, %entry
  %2 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3682, !tbaa !1023
  %call = call i32 @gc_list_is_empty(%union._gc_head* %2), !dbg !3685
  %tobool = icmp ne i32 %call, 0, !dbg !3686
  %lnot = xor i1 %tobool, true, !dbg !3686
  br i1 %lnot, label %while.body, label %while.end, !dbg !3681

while.body:                                       ; preds = %while.cond
  %3 = bitcast %union._gc_head** %gc to i8*, !dbg !3687
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3687
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !851, metadata !1019), !dbg !3688
  %4 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3689, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %4 to %struct.anon*, !dbg !3690
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3691
  %5 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3691, !tbaa !1347
  store %union._gc_head* %5, %union._gc_head** %gc, align 8, !dbg !3688, !tbaa !1023
  %6 = bitcast %struct._object** %op to i8*, !dbg !3692
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3692
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !853, metadata !1019), !dbg !3693
  %7 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3694, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %7, i64 1, !dbg !3695
  %8 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3696
  store %struct._object* %8, %struct._object** %op, align 8, !dbg !3693, !tbaa !1023
  %9 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3697, !tbaa !1023
  call void @gc_list_move(%union._gc_head* %9, %union._gc_head* %seen), !dbg !3698
  %10 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3699, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !3700
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !3701
  %11 = load i64, i64* %gc_refs, align 8, !dbg !3701, !tbaa !1758
  %and = and i64 %11, 1, !dbg !3702
  %cmp = icmp ne i64 %and, 0, !dbg !3703
  br i1 %cmp, label %if.end.20, label %land.lhs.true, !dbg !3704

land.lhs.true:                                    ; preds = %while.body
  %12 = load %struct._object*, %struct._object** %op, align 8, !dbg !3705, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !3706
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3706, !tbaa !1598
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19, !dbg !3707
  %14 = load i64, i64* %tp_flags, align 8, !dbg !3707, !tbaa !2504
  %and3 = and i64 %14, 1, !dbg !3708
  %cmp4 = icmp ne i64 %and3, 0, !dbg !3709
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.20, !dbg !3710

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %15 = load %struct._object*, %struct._object** %op, align 8, !dbg !3711, !tbaa !1023
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3712
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !3712, !tbaa !1598
  %tp_finalize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 47, !dbg !3713
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_finalize, align 8, !dbg !3713, !tbaa !3714
  store void (%struct._object*)* %17, void (%struct._object*)** %finalize, align 8, !dbg !3715, !tbaa !1023
  %cmp7 = icmp ne void (%struct._object*)* %17, null, !dbg !3716
  br i1 %cmp7, label %if.then, label %if.end.20, !dbg !3717

if.then:                                          ; preds = %land.lhs.true.5
  br label %do.body, !dbg !3718

do.body:                                          ; preds = %if.then
  %18 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3719, !tbaa !1023
  %gc8 = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !3722
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2, !dbg !3723
  %19 = load i64, i64* %gc_refs9, align 8, !dbg !3723, !tbaa !1758
  %and10 = and i64 %19, -2, !dbg !3724
  %or = or i64 %and10, 1, !dbg !3725
  %20 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3726, !tbaa !1023
  %gc11 = bitcast %union._gc_head* %20 to %struct.anon*, !dbg !3727
  %gc_refs12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 2, !dbg !3728
  store i64 %or, i64* %gc_refs12, align 8, !dbg !3729, !tbaa !1758
  br label %do.cond, !dbg !3730

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3731

do.end:                                           ; preds = %do.cond
  %21 = load %struct._object*, %struct._object** %op, align 8, !dbg !3733, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3734
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !3735, !tbaa !1048
  %inc = add i64 %22, 1, !dbg !3735
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3735, !tbaa !1048
  %23 = load void (%struct._object*)*, void (%struct._object*)** %finalize, align 8, !dbg !3736, !tbaa !1023
  %24 = load %struct._object*, %struct._object** %op, align 8, !dbg !3737, !tbaa !1023
  call void %23(%struct._object* %24), !dbg !3736
  br label %do.body.13, !dbg !3738

do.body.13:                                       ; preds = %do.end
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3739
  call void @llvm.lifetime.start(i64 8, i8* %25) #1, !dbg !3739
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !854, metadata !1019), !dbg !3741
  %26 = load %struct._object*, %struct._object** %op, align 8, !dbg !3742, !tbaa !1023
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8, !dbg !3741, !tbaa !1023
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3743, !tbaa !1023
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !3745
  %28 = load i64, i64* %ob_refcnt14, align 8, !dbg !3746, !tbaa !1048
  %dec = add i64 %28, -1, !dbg !3746
  store i64 %dec, i64* %ob_refcnt14, align 8, !dbg !3746, !tbaa !1048
  %cmp15 = icmp ne i64 %dec, 0, !dbg !3747
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !3748

if.then.16:                                       ; preds = %do.body.13
  br label %if.end, !dbg !3749

if.else:                                          ; preds = %do.body.13
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3751, !tbaa !1023
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !3753
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !3753, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !3754
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3754, !tbaa !1600
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3755, !tbaa !1023
  call void %31(%struct._object* %32), !dbg !3756
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3757
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !3757
  br label %do.cond.18, !dbg !3759

do.cond.18:                                       ; preds = %if.end
  br label %do.end.19, !dbg !3760

do.end.19:                                        ; preds = %do.cond.18
  br label %if.end.20, !dbg !3762

if.end.20:                                        ; preds = %do.end.19, %land.lhs.true.5, %land.lhs.true, %while.body
  %34 = bitcast %struct._object** %op to i8*, !dbg !3763
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !3763
  %35 = bitcast %union._gc_head** %gc to i8*, !dbg !3763
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !3763
  br label %while.cond, !dbg !3681

while.end:                                        ; preds = %while.cond
  %36 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3764, !tbaa !1023
  call void @gc_list_merge(%union._gc_head* %seen, %union._gc_head* %36), !dbg !3765
  %37 = bitcast %union._gc_head* %seen to i8*, !dbg !3766
  call void @llvm.lifetime.end(i64 24, i8* %37) #1, !dbg !3766
  %38 = bitcast void (%struct._object*)** %finalize to i8*, !dbg !3766
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !3766
  ret void, !dbg !3766
}

; Function Attrs: nounwind uwtable
define internal i32 @check_garbage(%union._gc_head* %collectable) #0 {
entry:
  %retval = alloca i32, align 4
  %collectable.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %cleanup.dest.slot = alloca i32
  store %union._gc_head* %collectable, %union._gc_head** %collectable.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %collectable.addr, metadata !860, metadata !1019), !dbg !3767
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !3768
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3768
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !861, metadata !1019), !dbg !3769
  %1 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3770, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %1 to %struct.anon*, !dbg !3772
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3773
  %2 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3773, !tbaa !1347
  store %union._gc_head* %2, %union._gc_head** %gc, align 8, !dbg !3774, !tbaa !1023
  br label %for.cond, !dbg !3775

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3776, !tbaa !1023
  %4 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3780, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %3, %4, !dbg !3781
  br i1 %cmp, label %for.body, label %for.end, !dbg !3782

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3783

do.body:                                          ; preds = %for.body
  %5 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3785, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !3788
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !3789
  %6 = load i64, i64* %gc_refs, align 8, !dbg !3789, !tbaa !1758
  %and = and i64 %6, 1, !dbg !3790
  %7 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3791, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %7, i64 1, !dbg !3792
  %8 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3793
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3794
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3794, !tbaa !1048
  %shl = shl i64 %9, 1, !dbg !3795
  %or = or i64 %and, %shl, !dbg !3796
  %10 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3797, !tbaa !1023
  %gc3 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !3798
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2, !dbg !3799
  store i64 %or, i64* %gc_refs4, align 8, !dbg !3800, !tbaa !1758
  br label %do.cond, !dbg !3801

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3802

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !3804

for.inc:                                          ; preds = %do.end
  %11 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3805, !tbaa !1023
  %gc5 = bitcast %union._gc_head* %11 to %struct.anon*, !dbg !3806
  %gc_next6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 0, !dbg !3807
  %12 = load %union._gc_head*, %union._gc_head** %gc_next6, align 8, !dbg !3807, !tbaa !1347
  store %union._gc_head* %12, %union._gc_head** %gc, align 8, !dbg !3808, !tbaa !1023
  br label %for.cond, !dbg !3809

for.end:                                          ; preds = %for.cond
  %13 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3810, !tbaa !1023
  call void @subtract_refs(%union._gc_head* %13), !dbg !3811
  %14 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3812, !tbaa !1023
  %gc7 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !3814
  %gc_next8 = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 0, !dbg !3815
  %15 = load %union._gc_head*, %union._gc_head** %gc_next8, align 8, !dbg !3815, !tbaa !1347
  store %union._gc_head* %15, %union._gc_head** %gc, align 8, !dbg !3816, !tbaa !1023
  br label %for.cond.9, !dbg !3817

for.cond.9:                                       ; preds = %for.inc.15, %for.end
  %16 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3818, !tbaa !1023
  %17 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3822, !tbaa !1023
  %cmp10 = icmp ne %union._gc_head* %16, %17, !dbg !3823
  br i1 %cmp10, label %for.body.11, label %for.end.18, !dbg !3824

for.body.11:                                      ; preds = %for.cond.9
  %18 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3825, !tbaa !1023
  %gc12 = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !3828
  %gc_refs13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 2, !dbg !3829
  %19 = load i64, i64* %gc_refs13, align 8, !dbg !3829, !tbaa !1758
  %shr = ashr i64 %19, 1, !dbg !3830
  %cmp14 = icmp ne i64 %shr, 0, !dbg !3831
  br i1 %cmp14, label %if.then, label %if.end, !dbg !3832

if.then:                                          ; preds = %for.body.11
  store i32 -1, i32* %retval, !dbg !3833
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3833

if.end:                                           ; preds = %for.body.11
  br label %for.inc.15, !dbg !3834

for.inc.15:                                       ; preds = %if.end
  %20 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3835, !tbaa !1023
  %gc16 = bitcast %union._gc_head* %20 to %struct.anon*, !dbg !3836
  %gc_next17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 0, !dbg !3837
  %21 = load %union._gc_head*, %union._gc_head** %gc_next17, align 8, !dbg !3837, !tbaa !1347
  store %union._gc_head* %21, %union._gc_head** %gc, align 8, !dbg !3838, !tbaa !1023
  br label %for.cond.9, !dbg !3839

for.end.18:                                       ; preds = %for.cond.9
  store i32 0, i32* %retval, !dbg !3840
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3840

cleanup:                                          ; preds = %for.end.18, %if.then
  %22 = bitcast %union._gc_head** %gc to i8*, !dbg !3841
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !3841
  %23 = load i32, i32* %retval, !dbg !3841
  ret i32 %23, !dbg !3841
}

; Function Attrs: nounwind uwtable
define internal void @revive_garbage(%union._gc_head* %collectable) #0 {
entry:
  %collectable.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %union._gc_head* %collectable, %union._gc_head** %collectable.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %collectable.addr, metadata !864, metadata !1019), !dbg !3842
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !3843
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3843
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !865, metadata !1019), !dbg !3844
  %1 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3845, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %1 to %struct.anon*, !dbg !3847
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3848
  %2 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3848, !tbaa !1347
  store %union._gc_head* %2, %union._gc_head** %gc, align 8, !dbg !3849, !tbaa !1023
  br label %for.cond, !dbg !3850

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3851, !tbaa !1023
  %4 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3855, !tbaa !1023
  %cmp = icmp ne %union._gc_head* %3, %4, !dbg !3856
  br i1 %cmp, label %for.body, label %for.end, !dbg !3857

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3858

do.body:                                          ; preds = %for.body
  %5 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3860, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !3863
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !3864
  %6 = load i64, i64* %gc_refs, align 8, !dbg !3864, !tbaa !1758
  %and = and i64 %6, 1, !dbg !3865
  %or = or i64 %and, -6, !dbg !3866
  %7 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3867, !tbaa !1023
  %gc3 = bitcast %union._gc_head* %7 to %struct.anon*, !dbg !3868
  %gc_refs4 = getelementptr inbounds %struct.anon, %struct.anon* %gc3, i32 0, i32 2, !dbg !3869
  store i64 %or, i64* %gc_refs4, align 8, !dbg !3870, !tbaa !1758
  br label %do.cond, !dbg !3871

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3872

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !3874

for.inc:                                          ; preds = %do.end
  %8 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3875, !tbaa !1023
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !3876
  %gc_next6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 0, !dbg !3877
  %9 = load %union._gc_head*, %union._gc_head** %gc_next6, align 8, !dbg !3877, !tbaa !1347
  store %union._gc_head* %9, %union._gc_head** %gc, align 8, !dbg !3878, !tbaa !1023
  br label %for.cond, !dbg !3879

for.end:                                          ; preds = %for.cond
  %10 = bitcast %union._gc_head** %gc to i8*, !dbg !3880
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !3880
  ret void, !dbg !3880
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
  store %union._gc_head* %collectable, %union._gc_head** %collectable.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %collectable.addr, metadata !868, metadata !1019), !dbg !3881
  store %union._gc_head* %old, %union._gc_head** %old.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %old.addr, metadata !869, metadata !1019), !dbg !3882
  %0 = bitcast i32 (%struct._object*)** %clear to i8*, !dbg !3883
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3883
  call void @llvm.dbg.declare(metadata i32 (%struct._object*)** %clear, metadata !870, metadata !1019), !dbg !3884
  br label %while.cond, !dbg !3885

while.cond:                                       ; preds = %if.end.24, %entry
  %1 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3886, !tbaa !1023
  %call = call i32 @gc_list_is_empty(%union._gc_head* %1), !dbg !3889
  %tobool = icmp ne i32 %call, 0, !dbg !3890
  %lnot = xor i1 %tobool, true, !dbg !3890
  br i1 %lnot, label %while.body, label %while.end, !dbg !3885

while.body:                                       ; preds = %while.cond
  %2 = bitcast %union._gc_head** %gc to i8*, !dbg !3891
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3891
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !871, metadata !1019), !dbg !3892
  %3 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3893, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !3894
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3895
  %4 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3895, !tbaa !1347
  store %union._gc_head* %4, %union._gc_head** %gc, align 8, !dbg !3892, !tbaa !1023
  %5 = bitcast %struct._object** %op to i8*, !dbg !3896
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3896
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !873, metadata !1019), !dbg !3897
  %6 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3898, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 1, !dbg !3899
  %7 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !3900
  store %struct._object* %7, %struct._object** %op, align 8, !dbg !3897, !tbaa !1023
  %8 = load i32, i32* @debug, align 4, !dbg !3901, !tbaa !1141
  %and = and i32 %8, 32, !dbg !3902
  %tobool2 = icmp ne i32 %and, 0, !dbg !3902
  br i1 %tobool2, label %if.then, label %if.else, !dbg !3903

if.then:                                          ; preds = %while.body
  %9 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !3904, !tbaa !1023
  %10 = load %struct._object*, %struct._object** %op, align 8, !dbg !3906, !tbaa !1023
  %call3 = call i32 @PyList_Append(%struct._object* %9, %struct._object* %10), !dbg !3907
  br label %if.end.12, !dbg !3908

if.else:                                          ; preds = %while.body
  %11 = load %struct._object*, %struct._object** %op, align 8, !dbg !3909, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !3910
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3910, !tbaa !1598
  %tp_clear = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 22, !dbg !3911
  %13 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_clear, align 8, !dbg !3911, !tbaa !3912
  store i32 (%struct._object*)* %13, i32 (%struct._object*)** %clear, align 8, !dbg !3913, !tbaa !1023
  %cmp = icmp ne i32 (%struct._object*)* %13, null, !dbg !3914
  br i1 %cmp, label %if.then.4, label %if.end.11, !dbg !3915

if.then.4:                                        ; preds = %if.else
  %14 = load %struct._object*, %struct._object** %op, align 8, !dbg !3916, !tbaa !1023
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !3917
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !3918, !tbaa !1048
  %inc = add i64 %15, 1, !dbg !3918
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3918, !tbaa !1048
  %16 = load i32 (%struct._object*)*, i32 (%struct._object*)** %clear, align 8, !dbg !3919, !tbaa !1023
  %17 = load %struct._object*, %struct._object** %op, align 8, !dbg !3920, !tbaa !1023
  %call5 = call i32 %16(%struct._object* %17), !dbg !3919
  br label %do.body, !dbg !3921

do.body:                                          ; preds = %if.then.4
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3922
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !3922
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !874, metadata !1019), !dbg !3924
  %19 = load %struct._object*, %struct._object** %op, align 8, !dbg !3925, !tbaa !1023
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !3924, !tbaa !1023
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3926, !tbaa !1023
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !3928
  %21 = load i64, i64* %ob_refcnt6, align 8, !dbg !3929, !tbaa !1048
  %dec = add i64 %21, -1, !dbg !3929
  store i64 %dec, i64* %ob_refcnt6, align 8, !dbg !3929, !tbaa !1048
  %cmp7 = icmp ne i64 %dec, 0, !dbg !3930
  br i1 %cmp7, label %if.then.8, label %if.else.9, !dbg !3931

if.then.8:                                        ; preds = %do.body
  br label %if.end, !dbg !3932

if.else.9:                                        ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3934, !tbaa !1023
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !3936
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3936, !tbaa !1598
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !3937
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3937, !tbaa !1600
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3938, !tbaa !1023
  call void %24(%struct._object* %25), !dbg !3939
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3940
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !3940
  br label %do.cond, !dbg !3942

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3943

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !3945

if.end.11:                                        ; preds = %do.end, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then
  %27 = load %union._gc_head*, %union._gc_head** %collectable.addr, align 8, !dbg !3946, !tbaa !1023
  %gc13 = bitcast %union._gc_head* %27 to %struct.anon*, !dbg !3948
  %gc_next14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 0, !dbg !3949
  %28 = load %union._gc_head*, %union._gc_head** %gc_next14, align 8, !dbg !3949, !tbaa !1347
  %29 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3950, !tbaa !1023
  %cmp15 = icmp eq %union._gc_head* %28, %29, !dbg !3951
  br i1 %cmp15, label %if.then.16, label %if.end.24, !dbg !3952

if.then.16:                                       ; preds = %if.end.12
  %30 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3953, !tbaa !1023
  %31 = load %union._gc_head*, %union._gc_head** %old.addr, align 8, !dbg !3955, !tbaa !1023
  call void @gc_list_move(%union._gc_head* %30, %union._gc_head* %31), !dbg !3956
  br label %do.body.17, !dbg !3957

do.body.17:                                       ; preds = %if.then.16
  %32 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3958, !tbaa !1023
  %gc18 = bitcast %union._gc_head* %32 to %struct.anon*, !dbg !3961
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 2, !dbg !3962
  %33 = load i64, i64* %gc_refs, align 8, !dbg !3962, !tbaa !1758
  %and19 = and i64 %33, 1, !dbg !3963
  %or = or i64 %and19, -6, !dbg !3964
  %34 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3965, !tbaa !1023
  %gc20 = bitcast %union._gc_head* %34 to %struct.anon*, !dbg !3966
  %gc_refs21 = getelementptr inbounds %struct.anon, %struct.anon* %gc20, i32 0, i32 2, !dbg !3967
  store i64 %or, i64* %gc_refs21, align 8, !dbg !3968, !tbaa !1758
  br label %do.cond.22, !dbg !3969

do.cond.22:                                       ; preds = %do.body.17
  br label %do.end.23, !dbg !3970

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !3972

if.end.24:                                        ; preds = %do.end.23, %if.end.12
  %35 = bitcast %struct._object** %op to i8*, !dbg !3973
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !3973
  %36 = bitcast %union._gc_head** %gc to i8*, !dbg !3973
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !3973
  br label %while.cond, !dbg !3885

while.end:                                        ; preds = %while.cond
  %37 = bitcast i32 (%struct._object*)** %clear to i8*, !dbg !3974
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !3974
  ret void, !dbg !3974
}

; Function Attrs: nounwind uwtable
define internal i32 @handle_legacy_finalizers(%union._gc_head* %finalizers, %union._gc_head* %old) #0 {
entry:
  %retval = alloca i32, align 4
  %finalizers.addr = alloca %union._gc_head*, align 8
  %old.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %op = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %union._gc_head* %finalizers, %union._gc_head** %finalizers.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %finalizers.addr, metadata !882, metadata !1019), !dbg !3975
  store %union._gc_head* %old, %union._gc_head** %old.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %old.addr, metadata !883, metadata !1019), !dbg !3976
  %0 = bitcast %union._gc_head** %gc to i8*, !dbg !3977
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3977
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !884, metadata !1019), !dbg !3978
  %1 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8, !dbg !3979, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %1 to %struct.anon*, !dbg !3980
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !3981
  %2 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3981, !tbaa !1347
  store %union._gc_head* %2, %union._gc_head** %gc, align 8, !dbg !3978, !tbaa !1023
  %3 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !3982, !tbaa !1023
  %cmp = icmp eq %struct._object* %3, null, !dbg !3984
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !3985

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyList_New(i64 0), !dbg !3986
  store %struct._object* %call, %struct._object** @garbage, align 8, !dbg !3988, !tbaa !1023
  %4 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !3989, !tbaa !1023
  %cmp2 = icmp eq %struct._object* %4, null, !dbg !3991
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !3992

if.then.3:                                        ; preds = %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i32 0, i32 0)) #5, !dbg !3993
  unreachable, !dbg !3993

if.end:                                           ; preds = %if.then
  br label %if.end.4, !dbg !3994

if.end.4:                                         ; preds = %if.end, %entry
  br label %for.cond, !dbg !3995

for.cond:                                         ; preds = %for.inc, %if.end.4
  %5 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !3996, !tbaa !1023
  %6 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8, !dbg !3999, !tbaa !1023
  %cmp5 = icmp ne %union._gc_head* %5, %6, !dbg !4000
  br i1 %cmp5, label %for.body, label %for.end, !dbg !4001

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct._object** %op to i8*, !dbg !4002
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !4002
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !885, metadata !1019), !dbg !4003
  %8 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4004, !tbaa !1023
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %8, i64 1, !dbg !4005
  %9 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !4006
  store %struct._object* %9, %struct._object** %op, align 8, !dbg !4003, !tbaa !1023
  %10 = load i32, i32* @debug, align 4, !dbg !4007, !tbaa !1141
  %and = and i32 %10, 32, !dbg !4009
  %tobool = icmp ne i32 %and, 0, !dbg !4009
  br i1 %tobool, label %if.then.8, label %lor.lhs.false, !dbg !4010

lor.lhs.false:                                    ; preds = %for.body
  %11 = load %struct._object*, %struct._object** %op, align 8, !dbg !4011, !tbaa !1023
  %call6 = call i32 @has_legacy_finalizer(%struct._object* %11), !dbg !4013
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4013
  br i1 %tobool7, label %if.then.8, label %if.end.13, !dbg !4014

if.then.8:                                        ; preds = %lor.lhs.false, %for.body
  %12 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !4015, !tbaa !1023
  %13 = load %struct._object*, %struct._object** %op, align 8, !dbg !4018, !tbaa !1023
  %call9 = call i32 @PyList_Append(%struct._object* %12, %struct._object* %13), !dbg !4019
  %cmp10 = icmp slt i32 %call9, 0, !dbg !4020
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !4021

if.then.11:                                       ; preds = %if.then.8
  store i32 -1, i32* %retval, !dbg !4022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4022

if.end.12:                                        ; preds = %if.then.8
  br label %if.end.13, !dbg !4023

if.end.13:                                        ; preds = %if.end.12, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot, !dbg !4024
  br label %cleanup, !dbg !4024

cleanup:                                          ; preds = %if.end.13, %if.then.11
  %14 = bitcast %struct._object** %op to i8*, !dbg !4025
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !4025
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !4026

for.inc:                                          ; preds = %cleanup.cont
  %15 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4027, !tbaa !1023
  %gc14 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !4028
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !4029
  %16 = load %union._gc_head*, %union._gc_head** %gc_next15, align 8, !dbg !4029, !tbaa !1347
  store %union._gc_head* %16, %union._gc_head** %gc, align 8, !dbg !4030, !tbaa !1023
  br label %for.cond, !dbg !4031

for.end:                                          ; preds = %for.cond
  %17 = load %union._gc_head*, %union._gc_head** %finalizers.addr, align 8, !dbg !4032, !tbaa !1023
  %18 = load %union._gc_head*, %union._gc_head** %old.addr, align 8, !dbg !4033, !tbaa !1023
  call void @gc_list_merge(%union._gc_head* %17, %union._gc_head* %18), !dbg !4034
  store i32 0, i32* %retval, !dbg !4035
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16, !dbg !4035

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.16

cleanup.16:                                       ; preds = %NewDefault, %for.end
  %19 = bitcast %union._gc_head** %gc to i8*, !dbg !4036
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !4036
  %20 = load i32, i32* %retval, !dbg !4036
  ret i32 %20, !dbg !4036
}

; Function Attrs: nounwind uwtable
define internal void @clear_freelists() #0 {
entry:
  %call = call i32 @PyMethod_ClearFreeList(), !dbg !4037
  %call1 = call i32 @PyFrame_ClearFreeList(), !dbg !4038
  %call2 = call i32 @PyCFunction_ClearFreeList(), !dbg !4039
  %call3 = call i32 @PyTuple_ClearFreeList(), !dbg !4040
  %call4 = call i32 @PyUnicode_ClearFreeList(), !dbg !4041
  %call5 = call i32 @PyFloat_ClearFreeList(), !dbg !4042
  %call6 = call i32 @PyList_ClearFreeList(), !dbg !4043
  %call7 = call i32 @PyDict_ClearFreeList(), !dbg !4044
  %call8 = call i32 @PySet_ClearFreeList(), !dbg !4045
  ret void, !dbg !4046
}

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare double @PyFloat_AsDouble(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gc_list_is_empty(%union._gc_head* %list) #0 {
entry:
  %list.addr = alloca %union._gc_head*, align 8
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %list.addr, metadata !731, metadata !1019), !dbg !4047
  %0 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !4048, !tbaa !1023
  %gc = bitcast %union._gc_head* %0 to %struct.anon*, !dbg !4049
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 0, !dbg !4050
  %1 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !4050, !tbaa !1347
  %2 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !4051, !tbaa !1023
  %cmp = icmp eq %union._gc_head* %1, %2, !dbg !4052
  %conv = zext i1 %cmp to i32, !dbg !4052
  ret i32 %conv, !dbg !4053
}

; Function Attrs: nounwind uwtable
define internal i32 @visit_decref(%struct._object* %op, i8* %data) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %data.addr = alloca i8*, align 8
  %gc = alloca %union._gc_head*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !743, metadata !1019), !dbg !4054
  store i8* %data, i8** %data.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !744, metadata !1019), !dbg !4055
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4056, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4057
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4057, !tbaa !1598
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !4058
  %2 = load i64, i64* %tp_flags, align 8, !dbg !4058, !tbaa !2504
  %and = and i64 %2, 16384, !dbg !4059
  %cmp = icmp ne i64 %and, 0, !dbg !4060
  br i1 %cmp, label %land.lhs.true, label %if.end.10, !dbg !4061

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4062, !tbaa !1023
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4064
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4064, !tbaa !1598
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 39, !dbg !4065
  %5 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !4065, !tbaa !2512
  %cmp2 = icmp eq i32 (%struct._object*)* %5, null, !dbg !4066
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !4067

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4068, !tbaa !1023
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !4070
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !4070, !tbaa !1598
  %tp_is_gc4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 39, !dbg !4071
  %8 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc4, align 8, !dbg !4071, !tbaa !2512
  %9 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4072, !tbaa !1023
  %call = call i32 %8(%struct._object* %9), !dbg !4073
  %tobool = icmp ne i32 %call, 0, !dbg !4073
  br i1 %tobool, label %if.then, label %if.end.10, !dbg !4074

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = bitcast %union._gc_head** %gc to i8*, !dbg !4075
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !4075
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !745, metadata !1019), !dbg !4076
  %11 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4077, !tbaa !1023
  %12 = bitcast %struct._object* %11 to %union._gc_head*, !dbg !4078
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %12, i64 -1, !dbg !4079
  store %union._gc_head* %add.ptr, %union._gc_head** %gc, align 8, !dbg !4076, !tbaa !1023
  %13 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4080, !tbaa !1023
  %gc5 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !4082
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2, !dbg !4083
  %14 = load i64, i64* %gc_refs, align 8, !dbg !4083, !tbaa !1758
  %shr = ashr i64 %14, 1, !dbg !4084
  %cmp6 = icmp sgt i64 %shr, 0, !dbg !4085
  br i1 %cmp6, label %if.then.7, label %if.end, !dbg !4086

if.then.7:                                        ; preds = %if.then
  %15 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4087, !tbaa !1023
  %gc8 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !4088
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2, !dbg !4089
  %16 = load i64, i64* %gc_refs9, align 8, !dbg !4090, !tbaa !1758
  %sub = sub i64 %16, 2, !dbg !4090
  store i64 %sub, i64* %gc_refs9, align 8, !dbg !4090, !tbaa !1758
  br label %if.end, !dbg !4091

if.end:                                           ; preds = %if.then.7, %if.then
  %17 = bitcast %union._gc_head** %gc to i8*, !dbg !4092
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !4092
  br label %if.end.10, !dbg !4093

if.end.10:                                        ; preds = %if.end, %lor.lhs.false, %entry
  ret i32 0, !dbg !4094
}

; Function Attrs: nounwind uwtable
define internal i32 @visit_reachable(%struct._object* %op, %union._gc_head* %reachable) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %reachable.addr = alloca %union._gc_head*, align 8
  %gc = alloca %union._gc_head*, align 8
  %gc_refs = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !764, metadata !1019), !dbg !4095
  store %union._gc_head* %reachable, %union._gc_head** %reachable.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %reachable.addr, metadata !765, metadata !1019), !dbg !4096
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4097, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4098
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4098, !tbaa !1598
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !4099
  %2 = load i64, i64* %tp_flags, align 8, !dbg !4099, !tbaa !2504
  %and = and i64 %2, 16384, !dbg !4100
  %cmp = icmp ne i64 %and, 0, !dbg !4101
  br i1 %cmp, label %land.lhs.true, label %if.end.27, !dbg !4102

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4103, !tbaa !1023
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4105
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4105, !tbaa !1598
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 39, !dbg !4106
  %5 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !4106, !tbaa !2512
  %cmp2 = icmp eq i32 (%struct._object*)* %5, null, !dbg !4107
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !4108

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4109, !tbaa !1023
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !4111
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !4111, !tbaa !1598
  %tp_is_gc4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 39, !dbg !4112
  %8 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc4, align 8, !dbg !4112, !tbaa !2512
  %9 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4113, !tbaa !1023
  %call = call i32 %8(%struct._object* %9), !dbg !4114
  %tobool = icmp ne i32 %call, 0, !dbg !4114
  br i1 %tobool, label %if.then, label %if.end.27, !dbg !4115

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = bitcast %union._gc_head** %gc to i8*, !dbg !4116
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !4116
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc, metadata !766, metadata !1019), !dbg !4117
  %11 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4118, !tbaa !1023
  %12 = bitcast %struct._object* %11 to %union._gc_head*, !dbg !4119
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %12, i64 -1, !dbg !4120
  store %union._gc_head* %add.ptr, %union._gc_head** %gc, align 8, !dbg !4117, !tbaa !1023
  %13 = bitcast i64* %gc_refs to i8*, !dbg !4121
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !4121
  call void @llvm.dbg.declare(metadata i64* %gc_refs, metadata !769, metadata !1019), !dbg !4122
  %14 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4123, !tbaa !1023
  %gc5 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !4124
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2, !dbg !4125
  %15 = load i64, i64* %gc_refs6, align 8, !dbg !4125, !tbaa !1758
  %shr = ashr i64 %15, 1, !dbg !4126
  store i64 %shr, i64* %gc_refs, align 8, !dbg !4122, !tbaa !1145
  %16 = load i64, i64* %gc_refs, align 8, !dbg !4127, !tbaa !1145
  %cmp7 = icmp eq i64 %16, 0, !dbg !4129
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !4130

if.then.8:                                        ; preds = %if.then
  br label %do.body, !dbg !4131

do.body:                                          ; preds = %if.then.8
  %17 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4133, !tbaa !1023
  %gc9 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !4136
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2, !dbg !4137
  %18 = load i64, i64* %gc_refs10, align 8, !dbg !4137, !tbaa !1758
  %and11 = and i64 %18, 1, !dbg !4138
  %or = or i64 %and11, 2, !dbg !4139
  %19 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4140, !tbaa !1023
  %gc12 = bitcast %union._gc_head* %19 to %struct.anon*, !dbg !4141
  %gc_refs13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 2, !dbg !4142
  store i64 %or, i64* %gc_refs13, align 8, !dbg !4143, !tbaa !1758
  br label %do.cond, !dbg !4144

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4145

do.end:                                           ; preds = %do.cond
  br label %if.end.26, !dbg !4147

if.else:                                          ; preds = %if.then
  %20 = load i64, i64* %gc_refs, align 8, !dbg !4148, !tbaa !1145
  %cmp14 = icmp eq i64 %20, -4, !dbg !4150
  br i1 %cmp14, label %if.then.15, label %if.else.25, !dbg !4151

if.then.15:                                       ; preds = %if.else
  %21 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4152, !tbaa !1023
  %22 = load %union._gc_head*, %union._gc_head** %reachable.addr, align 8, !dbg !4154, !tbaa !1023
  call void @gc_list_move(%union._gc_head* %21, %union._gc_head* %22), !dbg !4155
  br label %do.body.16, !dbg !4156

do.body.16:                                       ; preds = %if.then.15
  %23 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4157, !tbaa !1023
  %gc17 = bitcast %union._gc_head* %23 to %struct.anon*, !dbg !4160
  %gc_refs18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 2, !dbg !4161
  %24 = load i64, i64* %gc_refs18, align 8, !dbg !4161, !tbaa !1758
  %and19 = and i64 %24, 1, !dbg !4162
  %or20 = or i64 %and19, 2, !dbg !4163
  %25 = load %union._gc_head*, %union._gc_head** %gc, align 8, !dbg !4164, !tbaa !1023
  %gc21 = bitcast %union._gc_head* %25 to %struct.anon*, !dbg !4165
  %gc_refs22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 2, !dbg !4166
  store i64 %or20, i64* %gc_refs22, align 8, !dbg !4167, !tbaa !1758
  br label %do.cond.23, !dbg !4168

do.cond.23:                                       ; preds = %do.body.16
  br label %do.end.24, !dbg !4169

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end, !dbg !4171

if.else.25:                                       ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else.25, %do.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %do.end
  %26 = bitcast i64* %gc_refs to i8*, !dbg !4172
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !4172
  %27 = bitcast %union._gc_head** %gc to i8*, !dbg !4172
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !4172
  br label %if.end.27, !dbg !4173

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false, %entry
  ret i32 0, !dbg !4174
}

declare void @_PyTuple_MaybeUntrack(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @gc_list_move(%union._gc_head* %node, %union._gc_head* %list) #0 {
entry:
  %node.addr = alloca %union._gc_head*, align 8
  %list.addr = alloca %union._gc_head*, align 8
  %new_prev = alloca %union._gc_head*, align 8
  %current_prev = alloca %union._gc_head*, align 8
  %current_next = alloca %union._gc_head*, align 8
  store %union._gc_head* %node, %union._gc_head** %node.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %node.addr, metadata !773, metadata !1019), !dbg !4175
  store %union._gc_head* %list, %union._gc_head** %list.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %list.addr, metadata !774, metadata !1019), !dbg !4176
  %0 = bitcast %union._gc_head** %new_prev to i8*, !dbg !4177
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4177
  call void @llvm.dbg.declare(metadata %union._gc_head** %new_prev, metadata !775, metadata !1019), !dbg !4178
  %1 = bitcast %union._gc_head** %current_prev to i8*, !dbg !4179
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4179
  call void @llvm.dbg.declare(metadata %union._gc_head** %current_prev, metadata !776, metadata !1019), !dbg !4180
  %2 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !4181, !tbaa !1023
  %gc = bitcast %union._gc_head* %2 to %struct.anon*, !dbg !4182
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1, !dbg !4183
  %3 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !4183, !tbaa !1789
  store %union._gc_head* %3, %union._gc_head** %current_prev, align 8, !dbg !4180, !tbaa !1023
  %4 = bitcast %union._gc_head** %current_next to i8*, !dbg !4184
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4184
  call void @llvm.dbg.declare(metadata %union._gc_head** %current_next, metadata !777, metadata !1019), !dbg !4185
  %5 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !4186, !tbaa !1023
  %gc1 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !4187
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc1, i32 0, i32 0, !dbg !4188
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !4188, !tbaa !1347
  store %union._gc_head* %6, %union._gc_head** %current_next, align 8, !dbg !4185, !tbaa !1023
  %7 = load %union._gc_head*, %union._gc_head** %current_next, align 8, !dbg !4189, !tbaa !1023
  %8 = load %union._gc_head*, %union._gc_head** %current_prev, align 8, !dbg !4190, !tbaa !1023
  %gc2 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !4191
  %gc_next3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 0, !dbg !4192
  store %union._gc_head* %7, %union._gc_head** %gc_next3, align 8, !dbg !4193, !tbaa !1347
  %9 = load %union._gc_head*, %union._gc_head** %current_prev, align 8, !dbg !4194, !tbaa !1023
  %10 = load %union._gc_head*, %union._gc_head** %current_next, align 8, !dbg !4195, !tbaa !1023
  %gc4 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !4196
  %gc_prev5 = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 1, !dbg !4197
  store %union._gc_head* %9, %union._gc_head** %gc_prev5, align 8, !dbg !4198, !tbaa !1789
  %11 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !4199, !tbaa !1023
  %gc6 = bitcast %union._gc_head* %11 to %struct.anon*, !dbg !4200
  %gc_prev7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 1, !dbg !4201
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev7, align 8, !dbg !4201, !tbaa !1789
  %13 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !4202, !tbaa !1023
  %gc8 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !4203
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !4204
  store %union._gc_head* %12, %union._gc_head** %gc_prev9, align 8, !dbg !4205, !tbaa !1789
  store %union._gc_head* %12, %union._gc_head** %new_prev, align 8, !dbg !4206, !tbaa !1023
  %14 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !4207, !tbaa !1023
  %15 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !4208, !tbaa !1023
  %gc10 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !4209
  %gc_prev11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1, !dbg !4210
  store %union._gc_head* %14, %union._gc_head** %gc_prev11, align 8, !dbg !4211, !tbaa !1789
  %16 = load %union._gc_head*, %union._gc_head** %new_prev, align 8, !dbg !4212, !tbaa !1023
  %gc12 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !4213
  %gc_next13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0, !dbg !4214
  store %union._gc_head* %14, %union._gc_head** %gc_next13, align 8, !dbg !4215, !tbaa !1347
  %17 = load %union._gc_head*, %union._gc_head** %list.addr, align 8, !dbg !4216, !tbaa !1023
  %18 = load %union._gc_head*, %union._gc_head** %node.addr, align 8, !dbg !4217, !tbaa !1023
  %gc14 = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !4218
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !4219
  store %union._gc_head* %17, %union._gc_head** %gc_next15, align 8, !dbg !4220, !tbaa !1347
  %19 = bitcast %union._gc_head** %current_next to i8*, !dbg !4221
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !4221
  %20 = bitcast %union._gc_head** %current_prev to i8*, !dbg !4221
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !4221
  %21 = bitcast %union._gc_head** %new_prev to i8*, !dbg !4221
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !4221
  ret void, !dbg !4221
}

declare void @_PyDict_MaybeUntrack(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @has_legacy_finalizer(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !797, metadata !1019), !dbg !4222
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4223, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4224
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4224, !tbaa !1598
  %tp_del = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 45, !dbg !4225
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_del, align 8, !dbg !4225, !tbaa !4226
  %cmp = icmp ne void (%struct._object*)* %2, null, !dbg !4227
  %conv = zext i1 %cmp to i32, !dbg !4227
  ret i32 %conv, !dbg !4228
}

; Function Attrs: nounwind uwtable
define internal i32 @visit_move(%struct._object* %op, %union._gc_head* %tolist) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %tolist.addr = alloca %union._gc_head*, align 8
  %gc7 = alloca %union._gc_head*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !805, metadata !1019), !dbg !4229
  store %union._gc_head* %tolist, %union._gc_head** %tolist.addr, align 8, !tbaa !1023
  call void @llvm.dbg.declare(metadata %union._gc_head** %tolist.addr, metadata !806, metadata !1019), !dbg !4230
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4231, !tbaa !1023
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4232
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4232, !tbaa !1598
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !4233
  %2 = load i64, i64* %tp_flags, align 8, !dbg !4233, !tbaa !2504
  %and = and i64 %2, 16384, !dbg !4234
  %cmp = icmp ne i64 %and, 0, !dbg !4235
  br i1 %cmp, label %land.lhs.true, label %if.end.14, !dbg !4236

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4237, !tbaa !1023
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4239
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4239, !tbaa !1598
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 39, !dbg !4240
  %5 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !4240, !tbaa !2512
  %cmp2 = icmp eq i32 (%struct._object*)* %5, null, !dbg !4241
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !4242

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4243, !tbaa !1023
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !4245
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !4245, !tbaa !1598
  %tp_is_gc4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 39, !dbg !4246
  %8 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc4, align 8, !dbg !4246, !tbaa !2512
  %9 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4247, !tbaa !1023
  %call = call i32 %8(%struct._object* %9), !dbg !4248
  %tobool = icmp ne i32 %call, 0, !dbg !4248
  br i1 %tobool, label %if.then, label %if.end.14, !dbg !4249

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4250, !tbaa !1023
  %11 = bitcast %struct._object* %10 to %union._gc_head*, !dbg !4251
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %11, i64 -1, !dbg !4252
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*, !dbg !4253
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !4254
  %12 = load i64, i64* %gc_refs, align 8, !dbg !4254, !tbaa !1758
  %shr = ashr i64 %12, 1, !dbg !4255
  %cmp5 = icmp eq i64 %shr, -4, !dbg !4256
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !4257

if.then.6:                                        ; preds = %if.then
  %13 = bitcast %union._gc_head** %gc7 to i8*, !dbg !4258
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !4258
  call void @llvm.dbg.declare(metadata %union._gc_head** %gc7, metadata !807, metadata !1019), !dbg !4259
  %14 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !4260, !tbaa !1023
  %15 = bitcast %struct._object* %14 to %union._gc_head*, !dbg !4261
  %add.ptr8 = getelementptr %union._gc_head, %union._gc_head* %15, i64 -1, !dbg !4262
  store %union._gc_head* %add.ptr8, %union._gc_head** %gc7, align 8, !dbg !4259, !tbaa !1023
  %16 = load %union._gc_head*, %union._gc_head** %gc7, align 8, !dbg !4263, !tbaa !1023
  %17 = load %union._gc_head*, %union._gc_head** %tolist.addr, align 8, !dbg !4264, !tbaa !1023
  call void @gc_list_move(%union._gc_head* %16, %union._gc_head* %17), !dbg !4265
  br label %do.body, !dbg !4266

do.body:                                          ; preds = %if.then.6
  %18 = load %union._gc_head*, %union._gc_head** %gc7, align 8, !dbg !4267, !tbaa !1023
  %gc9 = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !4270
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2, !dbg !4271
  %19 = load i64, i64* %gc_refs10, align 8, !dbg !4271, !tbaa !1758
  %and11 = and i64 %19, 1, !dbg !4272
  %or = or i64 %and11, -6, !dbg !4273
  %20 = load %union._gc_head*, %union._gc_head** %gc7, align 8, !dbg !4274, !tbaa !1023
  %gc12 = bitcast %union._gc_head* %20 to %struct.anon*, !dbg !4275
  %gc_refs13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 2, !dbg !4276
  store i64 %or, i64* %gc_refs13, align 8, !dbg !4277, !tbaa !1758
  br label %do.cond, !dbg !4278

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4279

do.end:                                           ; preds = %do.cond
  %21 = bitcast %union._gc_head** %gc7 to i8*, !dbg !4281
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !4281
  br label %if.end, !dbg !4282

if.end:                                           ; preds = %do.end, %if.then
  br label %if.end.14, !dbg !4283

if.end.14:                                        ; preds = %if.end, %lor.lhs.false, %entry
  ret i32 0, !dbg !4284
}

declare void @PySys_FormatStderr(i8*, ...) #3

declare void @_PyWeakref_ClearRef(%struct._PyWeakReference*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare i32 @PyMethod_ClearFreeList() #3

declare i32 @PyFrame_ClearFreeList() #3

declare i32 @PyCFunction_ClearFreeList() #3

declare i32 @PyTuple_ClearFreeList() #3

declare i32 @PyUnicode_ClearFreeList() #3

declare i32 @PyFloat_ClearFreeList() #3

declare i32 @PyList_ClearFreeList() #3

declare i32 @PyDict_ClearFreeList() #3

declare i32 @PySet_ClearFreeList() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1015, !1016}
!llvm.ident = !{!1017}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !395, globals: !897)
!1 = !DIFile(filename: "gcmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343, !344, !352, !94, !11, !17, !263, !366, !374, !383, !381, !52, !384}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !346, line: 41, baseType: !347)
!346 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!347 = !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 31, size: 320, align: 64, elements: !348)
!348 = !{!349, !350, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !347, file: !346, line: 32, baseType: !23, size: 192, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !347, file: !346, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !347, file: !346, line: 34, baseType: !81, size: 8, align: 8, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !354, line: 253, baseType: !355)
!354 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!355 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !354, line: 246, size: 192, align: 64, elements: !356)
!356 = !{!357, !364}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !355, file: !354, line: 251, baseType: !358, size: 192, align: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !354, line: 247, size: 192, align: 64, elements: !359)
!359 = !{!360, !362, !363}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !358, file: !354, line: 248, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !358, file: !354, line: 249, baseType: !361, size: 64, align: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !358, file: !354, line: 250, baseType: !11, size: 64, align: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !355, file: !354, line: 252, baseType: !365, size: 64, align: 64)
!365 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !368, line: 33, baseType: !369)
!368 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!369 = !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 25, size: 256, align: 64, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !369, file: !368, line: 26, baseType: !23, size: 192, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !369, file: !368, line: 27, baseType: !373, size: 64, align: 64, offset: 192)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !376, line: 40, baseType: !377)
!376 = !DIFile(filename: "Include/listobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!377 = !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 23, size: 320, align: 64, elements: !378)
!378 = !{!379, !380, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !377, file: !376, line: 24, baseType: !23, size: 192, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !377, file: !376, line: 26, baseType: !381, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !377, file: !376, line: 39, baseType: !11, size: 64, align: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWeakReference", file: !386, line: 10, baseType: !387)
!386 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PyWeakReference", file: !386, line: 16, size: 448, align: 64, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !387, file: !386, line: 17, baseType: !6, size: 128, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wr_object", scope: !387, file: !386, line: 23, baseType: !5, size: 64, align: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !387, file: !386, line: 26, baseType: !5, size: 64, align: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !387, file: !386, line: 31, baseType: !218, size: 64, align: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wr_prev", scope: !387, file: !386, line: 38, baseType: !384, size: 64, align: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wr_next", scope: !387, file: !386, line: 39, baseType: !384, size: 64, align: 64, offset: 384)
!395 = !{!396, !402, !407, !410, !431, !445, !450, !455, !461, !468, !476, !484, !493, !497, !501, !505, !509, !513, !517, !521, !526, !530, !537, !550, !561, !593, !598, !611, !621, !626, !641, !645, !653, !680, !701, !708, !720, !727, !732, !736, !741, !748, !751, !762, !771, !778, !785, !795, !798, !803, !812, !818, !846, !858, !862, !866, !880, !889, !890, !894}
!396 = !DISubprogram(name: "PyInit_gc", scope: !397, file: !397, line: 1557, type: !398, isLocal: false, isDefinition: true, scopeLine: 1558, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_gc, variables: !400)
!397 = !DIFile(filename: "Modules/gcmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!398 = !DISubroutineType(types: !399)
!399 = !{!5}
!400 = !{!401}
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !396, file: !397, line: 1559, type: !5)
!402 = !DISubprogram(name: "PyGC_Collect", scope: !397, file: !397, line: 1608, type: !403, isLocal: false, isDefinition: true, scopeLine: 1609, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @PyGC_Collect, variables: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!11}
!405 = !{!406}
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !402, file: !397, line: 1610, type: !11)
!407 = !DISubprogram(name: "_PyGC_CollectNoFail", scope: !397, file: !397, line: 1624, type: !403, isLocal: false, isDefinition: true, scopeLine: 1625, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @_PyGC_CollectNoFail, variables: !408)
!408 = !{!409}
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !407, file: !397, line: 1626, type: !11)
!410 = !DISubprogram(name: "_PyGC_DumpShutdownStats", scope: !397, file: !397, line: 1645, type: !411, isLocal: false, isDefinition: true, scopeLine: 1646, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyGC_DumpShutdownStats, variables: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{null}
!413 = !{!414, !417, !420, !421, !423, !426, !428}
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !415, file: !397, line: 1649, type: !52)
!415 = distinct !DILexicalBlock(scope: !416, file: !397, line: 1648, column: 79)
!416 = distinct !DILexicalBlock(scope: !410, file: !397, line: 1647, column: 9)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repr", scope: !418, file: !397, line: 1664, type: !5)
!418 = distinct !DILexicalBlock(scope: !419, file: !397, line: 1663, column: 29)
!419 = distinct !DILexicalBlock(scope: !415, file: !397, line: 1663, column: 13)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !418, file: !397, line: 1664, type: !5)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !422, file: !397, line: 1674, type: !5)
!422 = distinct !DILexicalBlock(scope: !418, file: !397, line: 1674, column: 16)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !424, file: !397, line: 1674, type: !5)
!424 = distinct !DILexicalBlock(scope: !425, file: !397, line: 1674, column: 104)
!425 = distinct !DILexicalBlock(scope: !422, file: !397, line: 1674, column: 70)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !427, file: !397, line: 1675, type: !5)
!427 = distinct !DILexicalBlock(scope: !418, file: !397, line: 1675, column: 16)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !429, file: !397, line: 1675, type: !5)
!429 = distinct !DILexicalBlock(scope: !430, file: !397, line: 1675, column: 105)
!430 = distinct !DILexicalBlock(scope: !427, file: !397, line: 1675, column: 71)
!431 = !DISubprogram(name: "_PyGC_Fini", scope: !397, file: !397, line: 1681, type: !411, isLocal: false, isDefinition: true, scopeLine: 1682, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyGC_Fini, variables: !432)
!432 = !{!433, !435, !439, !441}
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !434, file: !397, line: 1683, type: !5)
!434 = distinct !DILexicalBlock(scope: !431, file: !397, line: 1683, column: 8)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !436, file: !397, line: 1683, type: !5)
!436 = distinct !DILexicalBlock(scope: !437, file: !397, line: 1683, column: 113)
!437 = distinct !DILexicalBlock(scope: !438, file: !397, line: 1683, column: 82)
!438 = distinct !DILexicalBlock(scope: !434, file: !397, line: 1683, column: 59)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !440, file: !397, line: 1684, type: !5)
!440 = distinct !DILexicalBlock(scope: !431, file: !397, line: 1684, column: 8)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !442, file: !397, line: 1684, type: !5)
!442 = distinct !DILexicalBlock(scope: !443, file: !397, line: 1684, column: 103)
!443 = distinct !DILexicalBlock(scope: !444, file: !397, line: 1684, column: 77)
!444 = distinct !DILexicalBlock(scope: !440, file: !397, line: 1684, column: 54)
!445 = !DISubprogram(name: "_PyGC_Dump", scope: !397, file: !397, line: 1689, type: !446, isLocal: false, isDefinition: true, scopeLine: 1690, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @_PyGC_Dump, variables: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !352}
!448 = !{!449}
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !445, file: !397, line: 1689, type: !352)
!450 = !DISubprogram(name: "PyObject_GC_Track", scope: !397, file: !397, line: 1703, type: !331, isLocal: false, isDefinition: true, scopeLine: 1704, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyObject_GC_Track, variables: !451)
!451 = !{!452, !453}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !450, file: !397, line: 1703, type: !4)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !454, file: !397, line: 1705, type: !352)
!454 = distinct !DILexicalBlock(scope: !450, file: !397, line: 1705, column: 8)
!455 = !DISubprogram(name: "PyObject_GC_UnTrack", scope: !397, file: !397, line: 1709, type: !331, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyObject_GC_UnTrack, variables: !456)
!456 = !{!457, !458}
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !455, file: !397, line: 1709, type: !4)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !459, file: !397, line: 1715, type: !352)
!459 = distinct !DILexicalBlock(scope: !460, file: !397, line: 1715, column: 12)
!460 = distinct !DILexicalBlock(scope: !455, file: !397, line: 1714, column: 9)
!461 = !DISubprogram(name: "_PyObject_GC_Malloc", scope: !397, file: !397, line: 1719, type: !462, isLocal: false, isDefinition: true, scopeLine: 1720, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64)* @_PyObject_GC_Malloc, variables: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!5, !94}
!464 = !{!465, !466, !467}
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "basicsize", arg: 1, scope: !461, file: !397, line: 1719, type: !94)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !461, file: !397, line: 1721, type: !5)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !461, file: !397, line: 1722, type: !352)
!468 = !DISubprogram(name: "_PyObject_GC_New", scope: !397, file: !397, line: 1746, type: !469, isLocal: false, isDefinition: true, scopeLine: 1747, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*)* @_PyObject_GC_New, variables: !473)
!469 = !DISubroutineType(types: !470)
!470 = !{!5, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!473 = !{!474, !475}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tp", arg: 1, scope: !468, file: !397, line: 1746, type: !471)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !468, file: !397, line: 1748, type: !5)
!476 = !DISubprogram(name: "_PyObject_GC_NewVar", scope: !397, file: !397, line: 1755, type: !477, isLocal: false, isDefinition: true, scopeLine: 1756, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyVarObject* (%struct._typeobject*, i64)* @_PyObject_GC_NewVar, variables: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!343, !471, !11}
!479 = !{!480, !481, !482, !483}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tp", arg: 1, scope: !476, file: !397, line: 1755, type: !471)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nitems", arg: 2, scope: !476, file: !397, line: 1755, type: !11)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !476, file: !397, line: 1757, type: !94)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !476, file: !397, line: 1758, type: !343)
!484 = !DISubprogram(name: "_PyObject_GC_Resize", scope: !397, file: !397, line: 1772, type: !485, isLocal: false, isDefinition: true, scopeLine: 1773, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyVarObject* (%struct.PyVarObject*, i64)* @_PyObject_GC_Resize, variables: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!343, !343, !11}
!487 = !{!488, !489, !490, !492}
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !484, file: !397, line: 1772, type: !343)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nitems", arg: 2, scope: !484, file: !397, line: 1772, type: !11)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "basicsize", scope: !484, file: !397, line: 1774, type: !491)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !484, file: !397, line: 1775, type: !352)
!493 = !DISubprogram(name: "PyObject_GC_Del", scope: !397, file: !397, line: 1787, type: !331, isLocal: false, isDefinition: true, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyObject_GC_Del, variables: !494)
!494 = !{!495, !496}
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !493, file: !397, line: 1787, type: !4)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !493, file: !397, line: 1789, type: !352)
!497 = !DISubprogram(name: "gc_enable", scope: !397, file: !397, line: 1176, type: !126, isLocal: true, isDefinition: true, scopeLine: 1177, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_enable, variables: !498)
!498 = !{!499, !500}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !497, file: !397, line: 1176, type: !5)
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !497, file: !397, line: 1176, type: !5)
!501 = !DISubprogram(name: "gc_disable", scope: !397, file: !397, line: 1189, type: !126, isLocal: true, isDefinition: true, scopeLine: 1190, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_disable, variables: !502)
!502 = !{!503, !504}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !501, file: !397, line: 1189, type: !5)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !501, file: !397, line: 1189, type: !5)
!505 = !DISubprogram(name: "gc_isenabled", scope: !397, file: !397, line: 1202, type: !126, isLocal: true, isDefinition: true, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_isenabled, variables: !506)
!506 = !{!507, !508}
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !505, file: !397, line: 1202, type: !5)
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !505, file: !397, line: 1202, type: !5)
!509 = !DISubprogram(name: "gc_set_debug", scope: !397, file: !397, line: 1256, type: !126, isLocal: true, isDefinition: true, scopeLine: 1257, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_set_debug, variables: !510)
!510 = !{!511, !512}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !509, file: !397, line: 1256, type: !5)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !509, file: !397, line: 1256, type: !5)
!513 = !DISubprogram(name: "gc_get_debug", scope: !397, file: !397, line: 1271, type: !126, isLocal: true, isDefinition: true, scopeLine: 1272, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_debug, variables: !514)
!514 = !{!515, !516}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !513, file: !397, line: 1271, type: !5)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !513, file: !397, line: 1271, type: !5)
!517 = !DISubprogram(name: "gc_get_count", scope: !397, file: !397, line: 1320, type: !126, isLocal: true, isDefinition: true, scopeLine: 1321, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_count, variables: !518)
!518 = !{!519, !520}
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !517, file: !397, line: 1320, type: !5)
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !517, file: !397, line: 1320, type: !5)
!521 = !DISubprogram(name: "gc_set_thresh", scope: !397, file: !397, line: 1283, type: !126, isLocal: true, isDefinition: true, scopeLine: 1284, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_set_thresh, variables: !522)
!522 = !{!523, !524, !525}
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !521, file: !397, line: 1283, type: !5)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !521, file: !397, line: 1283, type: !5)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !521, file: !397, line: 1285, type: !44)
!526 = !DISubprogram(name: "gc_get_thresh", scope: !397, file: !397, line: 1306, type: !126, isLocal: true, isDefinition: true, scopeLine: 1307, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_thresh, variables: !527)
!527 = !{!528, !529}
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !526, file: !397, line: 1306, type: !5)
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !526, file: !397, line: 1306, type: !5)
!530 = !DISubprogram(name: "gc_collect", scope: !397, file: !397, line: 1216, type: !135, isLocal: true, isDefinition: true, scopeLine: 1217, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @gc_collect, variables: !531)
!531 = !{!532, !533, !534, !535, !536}
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !530, file: !397, line: 1216, type: !5)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !530, file: !397, line: 1216, type: !5)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kws", arg: 3, scope: !530, file: !397, line: 1216, type: !5)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "genarg", scope: !530, file: !397, line: 1219, type: !44)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !530, file: !397, line: 1220, type: !11)
!537 = !DISubprogram(name: "gc_get_objects", scope: !397, file: !397, line: 1421, type: !126, isLocal: true, isDefinition: true, scopeLine: 1422, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_objects, variables: !538)
!538 = !{!539, !540, !541, !542, !543}
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !537, file: !397, line: 1421, type: !5)
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !537, file: !397, line: 1421, type: !5)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !537, file: !397, line: 1423, type: !44)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !537, file: !397, line: 1424, type: !5)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !544, file: !397, line: 1431, type: !5)
!544 = distinct !DILexicalBlock(scope: !545, file: !397, line: 1431, column: 16)
!545 = distinct !DILexicalBlock(scope: !546, file: !397, line: 1430, column: 61)
!546 = distinct !DILexicalBlock(scope: !547, file: !397, line: 1430, column: 13)
!547 = distinct !DILexicalBlock(scope: !548, file: !397, line: 1429, column: 29)
!548 = distinct !DILexicalBlock(scope: !549, file: !397, line: 1429, column: 5)
!549 = distinct !DILexicalBlock(scope: !537, file: !397, line: 1429, column: 5)
!550 = !DISubprogram(name: "append_objects", scope: !397, file: !397, line: 318, type: !551, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %union._gc_head*)* @append_objects, variables: !553)
!551 = !DISubroutineType(types: !552)
!552 = !{!44, !5, !352}
!553 = !{!554, !555, !556, !557}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "py_list", arg: 1, scope: !550, file: !397, line: 318, type: !5)
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gc_list", arg: 2, scope: !550, file: !397, line: 318, type: !352)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !550, file: !397, line: 320, type: !352)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !558, file: !397, line: 322, type: !5)
!558 = distinct !DILexicalBlock(scope: !559, file: !397, line: 321, column: 72)
!559 = distinct !DILexicalBlock(scope: !560, file: !397, line: 321, column: 5)
!560 = distinct !DILexicalBlock(scope: !550, file: !397, line: 321, column: 5)
!561 = !DISubprogram(name: "gc_get_stats", scope: !397, file: !397, line: 1444, type: !126, isLocal: true, isDefinition: true, scopeLine: 1445, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_stats, variables: !562)
!562 = !{!563, !564, !565, !566, !567, !576, !578, !582, !586, !588, !590}
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !561, file: !397, line: 1444, type: !5)
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !561, file: !397, line: 1444, type: !5)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !561, file: !397, line: 1446, type: !44)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !561, file: !397, line: 1447, type: !5)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stats", scope: !561, file: !397, line: 1448, type: !568)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 576, align: 64, elements: !574)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "gc_generation_stats", file: !397, line: 172, size: 192, align: 64, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "collections", scope: !569, file: !397, line: 174, baseType: !11, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "collected", scope: !569, file: !397, line: 176, baseType: !11, size: 64, align: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "uncollectable", scope: !569, file: !397, line: 178, baseType: !11, size: 64, align: 64, offset: 128)
!574 = !{!575}
!575 = !DISubrange(count: 3)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !561, file: !397, line: 1448, type: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !579, file: !397, line: 1461, type: !5)
!579 = distinct !DILexicalBlock(scope: !580, file: !397, line: 1460, column: 29)
!580 = distinct !DILexicalBlock(scope: !581, file: !397, line: 1460, column: 5)
!581 = distinct !DILexicalBlock(scope: !561, file: !397, line: 1460, column: 5)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !583, file: !397, line: 1471, type: !5)
!583 = distinct !DILexicalBlock(scope: !584, file: !397, line: 1471, column: 16)
!584 = distinct !DILexicalBlock(scope: !585, file: !397, line: 1470, column: 42)
!585 = distinct !DILexicalBlock(scope: !579, file: !397, line: 1470, column: 13)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !587, file: !397, line: 1474, type: !5)
!587 = distinct !DILexicalBlock(scope: !579, file: !397, line: 1474, column: 12)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !589, file: !397, line: 1479, type: !5)
!589 = distinct !DILexicalBlock(scope: !561, file: !397, line: 1479, column: 8)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !591, file: !397, line: 1479, type: !5)
!591 = distinct !DILexicalBlock(scope: !592, file: !397, line: 1479, column: 98)
!592 = distinct !DILexicalBlock(scope: !589, file: !397, line: 1479, column: 64)
!593 = !DISubprogram(name: "gc_is_tracked", scope: !397, file: !397, line: 1492, type: !126, isLocal: true, isDefinition: true, scopeLine: 1493, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_is_tracked, variables: !594)
!594 = !{!595, !596, !597}
!595 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !593, file: !397, line: 1492, type: !5)
!596 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !593, file: !397, line: 1492, type: !5)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !593, file: !397, line: 1494, type: !5)
!598 = !DISubprogram(name: "gc_get_referrers", scope: !397, file: !397, line: 1362, type: !126, isLocal: true, isDefinition: true, scopeLine: 1363, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_referrers, variables: !599)
!599 = !{!600, !601, !602, !603, !604}
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !598, file: !397, line: 1362, type: !5)
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !598, file: !397, line: 1362, type: !5)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !598, file: !397, line: 1364, type: !44)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !598, file: !397, line: 1365, type: !5)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !605, file: !397, line: 1370, type: !5)
!605 = distinct !DILexicalBlock(scope: !606, file: !397, line: 1370, column: 16)
!606 = distinct !DILexicalBlock(scope: !607, file: !397, line: 1369, column: 72)
!607 = distinct !DILexicalBlock(scope: !608, file: !397, line: 1369, column: 13)
!608 = distinct !DILexicalBlock(scope: !609, file: !397, line: 1368, column: 29)
!609 = distinct !DILexicalBlock(scope: !610, file: !397, line: 1368, column: 5)
!610 = distinct !DILexicalBlock(scope: !598, file: !397, line: 1368, column: 5)
!611 = !DISubprogram(name: "gc_referrers_for", scope: !397, file: !397, line: 1339, type: !612, isLocal: true, isDefinition: true, scopeLine: 1340, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %union._gc_head*, %struct._object*)* @gc_referrers_for, variables: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{!44, !5, !352, !5}
!614 = !{!615, !616, !617, !618, !619, !620}
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "objs", arg: 1, scope: !611, file: !397, line: 1339, type: !5)
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 2, scope: !611, file: !397, line: 1339, type: !352)
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resultlist", arg: 3, scope: !611, file: !397, line: 1339, type: !5)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !611, file: !397, line: 1341, type: !352)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !611, file: !397, line: 1342, type: !5)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !611, file: !397, line: 1343, type: !259)
!621 = !DISubprogram(name: "referrersvisit", scope: !397, file: !397, line: 1329, type: !197, isLocal: true, isDefinition: true, scopeLine: 1330, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @referrersvisit, variables: !622)
!622 = !{!623, !624, !625}
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !621, file: !397, line: 1329, type: !5)
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "objs", arg: 2, scope: !621, file: !397, line: 1329, type: !5)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !621, file: !397, line: 1331, type: !11)
!626 = !DISubprogram(name: "gc_get_referents", scope: !397, file: !397, line: 1389, type: !126, isLocal: true, isDefinition: true, scopeLine: 1390, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_referents, variables: !627)
!627 = !{!628, !629, !630, !631, !632, !636, !637}
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !626, file: !397, line: 1389, type: !5)
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !626, file: !397, line: 1389, type: !5)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !626, file: !397, line: 1391, type: !11)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !626, file: !397, line: 1392, type: !5)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !633, file: !397, line: 1398, type: !259)
!633 = distinct !DILexicalBlock(scope: !634, file: !397, line: 1397, column: 61)
!634 = distinct !DILexicalBlock(scope: !635, file: !397, line: 1397, column: 5)
!635 = distinct !DILexicalBlock(scope: !626, file: !397, line: 1397, column: 5)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !633, file: !397, line: 1399, type: !5)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !638, file: !397, line: 1407, type: !5)
!638 = distinct !DILexicalBlock(scope: !639, file: !397, line: 1407, column: 16)
!639 = distinct !DILexicalBlock(scope: !640, file: !397, line: 1406, column: 63)
!640 = distinct !DILexicalBlock(scope: !633, file: !397, line: 1406, column: 13)
!641 = !DISubprogram(name: "referentsvisit", scope: !397, file: !397, line: 1379, type: !197, isLocal: true, isDefinition: true, scopeLine: 1380, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @referentsvisit, variables: !642)
!642 = !{!643, !644}
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !641, file: !397, line: 1379, type: !5)
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 2, scope: !641, file: !397, line: 1379, type: !5)
!645 = !DISubprogram(name: "collect_with_callback", scope: !397, file: !397, line: 1136, type: !646, isLocal: true, isDefinition: true, scopeLine: 1137, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i32)* @collect_with_callback, variables: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{!11, !44}
!648 = !{!649, !650, !651, !652}
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "generation", arg: 1, scope: !645, file: !397, line: 1136, type: !44)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !645, file: !397, line: 1138, type: !11)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "collected", scope: !645, file: !397, line: 1138, type: !11)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uncollectable", scope: !645, file: !397, line: 1138, type: !11)
!653 = !DISubprogram(name: "invoke_gc_callback", scope: !397, file: !397, line: 1099, type: !654, isLocal: true, isDefinition: true, scopeLine: 1101, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i64, i64)* @invoke_gc_callback, variables: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !29, !44, !11, !11}
!656 = !{!657, !658, !659, !660, !661, !662, !663, !667, !668, !670, !673, !675, !677}
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "phase", arg: 1, scope: !653, file: !397, line: 1099, type: !29)
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "generation", arg: 2, scope: !653, file: !397, line: 1099, type: !44)
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collected", arg: 3, scope: !653, file: !397, line: 1100, type: !11)
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "uncollectable", arg: 4, scope: !653, file: !397, line: 1100, type: !11)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !653, file: !397, line: 1102, type: !11)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !653, file: !397, line: 1103, type: !5)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !664, file: !397, line: 1121, type: !5)
!664 = distinct !DILexicalBlock(scope: !665, file: !397, line: 1120, column: 62)
!665 = distinct !DILexicalBlock(scope: !666, file: !397, line: 1120, column: 5)
!666 = distinct !DILexicalBlock(scope: !653, file: !397, line: 1120, column: 5)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !664, file: !397, line: 1121, type: !5)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !669, file: !397, line: 1124, type: !5)
!669 = distinct !DILexicalBlock(scope: !664, file: !397, line: 1124, column: 12)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !671, file: !397, line: 1124, type: !5)
!671 = distinct !DILexicalBlock(scope: !672, file: !397, line: 1124, column: 97)
!672 = distinct !DILexicalBlock(scope: !669, file: !397, line: 1124, column: 63)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !674, file: !397, line: 1127, type: !5)
!674 = distinct !DILexicalBlock(scope: !664, file: !397, line: 1127, column: 12)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !676, file: !397, line: 1129, type: !5)
!676 = distinct !DILexicalBlock(scope: !653, file: !397, line: 1129, column: 8)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !678, file: !397, line: 1129, type: !5)
!678 = distinct !DILexicalBlock(scope: !679, file: !397, line: 1129, column: 96)
!679 = distinct !DILexicalBlock(scope: !676, file: !397, line: 1129, column: 62)
!680 = !DISubprogram(name: "collect", scope: !397, file: !397, line: 920, type: !681, isLocal: true, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i32, i64*, i64*, i32)* @collect, variables: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!11, !44, !247, !247, !44}
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "generation", arg: 1, scope: !680, file: !397, line: 920, type: !44)
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_collected", arg: 2, scope: !680, file: !397, line: 920, type: !247)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_uncollectable", arg: 3, scope: !680, file: !397, line: 920, type: !247)
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nofail", arg: 4, scope: !680, file: !397, line: 921, type: !44)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !680, file: !397, line: 923, type: !44)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !680, file: !397, line: 924, type: !11)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !680, file: !397, line: 925, type: !11)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "young", scope: !680, file: !397, line: 926, type: !352)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old", scope: !680, file: !397, line: 927, type: !352)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unreachable", scope: !680, file: !397, line: 928, type: !353)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "finalizers", scope: !680, file: !397, line: 929, type: !353)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !680, file: !397, line: 930, type: !352)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t1", scope: !680, file: !397, line: 931, type: !365)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stats", scope: !680, file: !397, line: 932, type: !577)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t2", scope: !699, file: !397, line: 1045, type: !365)
!699 = distinct !DILexicalBlock(scope: !700, file: !397, line: 1044, column: 25)
!700 = distinct !DILexicalBlock(scope: !680, file: !397, line: 1044, column: 9)
!701 = !DISubprogram(name: "gc_list_size", scope: !397, file: !397, line: 304, type: !702, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%union._gc_head*)* @gc_list_size, variables: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!11, !352}
!704 = !{!705, !706, !707}
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !701, file: !397, line: 304, type: !352)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !701, file: !397, line: 306, type: !352)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !701, file: !397, line: 307, type: !11)
!708 = !DISubprogram(name: "get_time", scope: !397, file: !397, line: 898, type: !709, isLocal: true, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @get_time, variables: !711)
!709 = !DISubroutineType(types: !710)
!710 = !{!365}
!711 = !{!712, !713, !716}
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !708, file: !397, line: 900, type: !365)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !714, file: !397, line: 904, type: !5)
!714 = distinct !DILexicalBlock(scope: !715, file: !397, line: 901, column: 29)
!715 = distinct !DILexicalBlock(scope: !708, file: !397, line: 901, column: 9)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !717, file: !397, line: 911, type: !5)
!717 = distinct !DILexicalBlock(scope: !718, file: !397, line: 911, column: 16)
!718 = distinct !DILexicalBlock(scope: !719, file: !397, line: 908, column: 14)
!719 = distinct !DILexicalBlock(scope: !714, file: !397, line: 905, column: 13)
!720 = !DISubprogram(name: "gc_list_merge", scope: !397, file: !397, line: 289, type: !721, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*, %union._gc_head*)* @gc_list_merge, variables: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !352, !352}
!723 = !{!724, !725, !726}
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "from", arg: 1, scope: !720, file: !397, line: 289, type: !352)
!725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "to", arg: 2, scope: !720, file: !397, line: 289, type: !352)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !720, file: !397, line: 291, type: !352)
!727 = !DISubprogram(name: "gc_list_is_empty", scope: !397, file: !397, line: 241, type: !728, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%union._gc_head*)* @gc_list_is_empty, variables: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{!44, !352}
!730 = !{!731}
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !727, file: !397, line: 241, type: !352)
!732 = !DISubprogram(name: "update_refs", scope: !397, file: !397, line: 340, type: !446, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @update_refs, variables: !733)
!733 = !{!734, !735}
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "containers", arg: 1, scope: !732, file: !397, line: 340, type: !352)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !732, file: !397, line: 342, type: !352)
!736 = !DISubprogram(name: "subtract_refs", scope: !397, file: !397, line: 392, type: !446, isLocal: true, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @subtract_refs, variables: !737)
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "containers", arg: 1, scope: !736, file: !397, line: 392, type: !352)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !736, file: !397, line: 394, type: !259)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !736, file: !397, line: 395, type: !352)
!741 = !DISubprogram(name: "visit_decref", scope: !397, file: !397, line: 370, type: !265, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @visit_decref, variables: !742)
!742 = !{!743, !744, !745}
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !741, file: !397, line: 370, type: !5)
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !741, file: !397, line: 370, type: !4)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !746, file: !397, line: 374, type: !352)
!746 = distinct !DILexicalBlock(scope: !747, file: !397, line: 373, column: 184)
!747 = distinct !DILexicalBlock(scope: !741, file: !397, line: 373, column: 9)
!748 = !DISubprogram(name: "gc_list_init", scope: !397, file: !397, line: 234, type: !446, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @gc_list_init, variables: !749)
!749 = !{!750}
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !748, file: !397, line: 234, type: !352)
!751 = !DISubprogram(name: "move_unreachable", scope: !397, file: !397, line: 456, type: !721, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*, %union._gc_head*)* @move_unreachable, variables: !752)
!752 = !{!753, !754, !755, !756, !758, !761}
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "young", arg: 1, scope: !751, file: !397, line: 456, type: !352)
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unreachable", arg: 2, scope: !751, file: !397, line: 456, type: !352)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !751, file: !397, line: 458, type: !352)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !757, file: !397, line: 470, type: !352)
!757 = distinct !DILexicalBlock(scope: !751, file: !397, line: 469, column: 25)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !759, file: !397, line: 481, type: !5)
!759 = distinct !DILexicalBlock(scope: !760, file: !397, line: 472, column: 40)
!760 = distinct !DILexicalBlock(scope: !757, file: !397, line: 472, column: 13)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !759, file: !397, line: 482, type: !259)
!762 = !DISubprogram(name: "visit_reachable", scope: !397, file: !397, line: 406, type: !551, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %union._gc_head*)* @visit_reachable, variables: !763)
!763 = !{!764, !765, !766, !769}
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !762, file: !397, line: 406, type: !5)
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reachable", arg: 2, scope: !762, file: !397, line: 406, type: !352)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !767, file: !397, line: 409, type: !352)
!767 = distinct !DILexicalBlock(scope: !768, file: !397, line: 408, column: 184)
!768 = distinct !DILexicalBlock(scope: !762, file: !397, line: 408, column: 9)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc_refs", scope: !767, file: !397, line: 410, type: !770)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!771 = !DISubprogram(name: "gc_list_move", scope: !397, file: !397, line: 273, type: !721, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*, %union._gc_head*)* @gc_list_move, variables: !772)
!772 = !{!773, !774, !775, !776, !777}
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !771, file: !397, line: 273, type: !352)
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 2, scope: !771, file: !397, line: 273, type: !352)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_prev", scope: !771, file: !397, line: 275, type: !352)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current_prev", scope: !771, file: !397, line: 276, type: !352)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current_next", scope: !771, file: !397, line: 277, type: !352)
!778 = !DISubprogram(name: "untrack_dicts", scope: !397, file: !397, line: 511, type: !446, isLocal: true, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @untrack_dicts, variables: !779)
!779 = !{!780, !781, !782, !783}
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 1, scope: !778, file: !397, line: 511, type: !352)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !778, file: !397, line: 513, type: !352)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !778, file: !397, line: 513, type: !352)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !784, file: !397, line: 515, type: !5)
!784 = distinct !DILexicalBlock(scope: !778, file: !397, line: 514, column: 24)
!785 = !DISubprogram(name: "move_legacy_finalizers", scope: !397, file: !397, line: 535, type: !721, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*, %union._gc_head*)* @move_legacy_finalizers, variables: !786)
!786 = !{!787, !788, !789, !790, !791}
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unreachable", arg: 1, scope: !785, file: !397, line: 535, type: !352)
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "finalizers", arg: 2, scope: !785, file: !397, line: 535, type: !352)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !785, file: !397, line: 537, type: !352)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !785, file: !397, line: 538, type: !352)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !792, file: !397, line: 544, type: !5)
!792 = distinct !DILexicalBlock(scope: !793, file: !397, line: 543, column: 70)
!793 = distinct !DILexicalBlock(scope: !794, file: !397, line: 543, column: 5)
!794 = distinct !DILexicalBlock(scope: !785, file: !397, line: 543, column: 5)
!795 = !DISubprogram(name: "has_legacy_finalizer", scope: !397, file: !397, line: 525, type: !144, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @has_legacy_finalizer, variables: !796)
!796 = !{!797}
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !795, file: !397, line: 525, type: !5)
!798 = !DISubprogram(name: "move_legacy_finalizer_reachable", scope: !397, file: !397, line: 574, type: !446, isLocal: true, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @move_legacy_finalizer_reachable, variables: !799)
!799 = !{!800, !801, !802}
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "finalizers", arg: 1, scope: !798, file: !397, line: 574, type: !352)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !798, file: !397, line: 576, type: !259)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !798, file: !397, line: 577, type: !352)
!803 = !DISubprogram(name: "visit_move", scope: !397, file: !397, line: 558, type: !551, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %union._gc_head*)* @visit_move, variables: !804)
!804 = !{!805, !806, !807}
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !803, file: !397, line: 558, type: !5)
!806 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tolist", arg: 2, scope: !803, file: !397, line: 558, type: !352)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !808, file: !397, line: 562, type: !352)
!808 = distinct !DILexicalBlock(scope: !809, file: !397, line: 561, column: 70)
!809 = distinct !DILexicalBlock(scope: !810, file: !397, line: 561, column: 13)
!810 = distinct !DILexicalBlock(scope: !811, file: !397, line: 560, column: 184)
!811 = distinct !DILexicalBlock(scope: !803, file: !397, line: 560, column: 9)
!812 = !DISubprogram(name: "debug_cycle", scope: !397, file: !397, line: 741, type: !813, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, %struct._object*)* @debug_cycle, variables: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !52, !5}
!815 = !{!816, !817}
!816 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 1, scope: !812, file: !397, line: 741, type: !52)
!817 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 2, scope: !812, file: !397, line: 741, type: !5)
!818 = !DISubprogram(name: "handle_weakrefs", scope: !397, file: !397, line: 599, type: !819, isLocal: true, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%union._gc_head*, %union._gc_head*)* @handle_weakrefs, variables: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{!44, !352, !352}
!821 = !{!822, !823, !824, !825, !826, !827, !828, !829, !830, !834, !838, !840, !841, !844}
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unreachable", arg: 1, scope: !818, file: !397, line: 599, type: !352)
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "old", arg: 2, scope: !818, file: !397, line: 599, type: !352)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !818, file: !397, line: 601, type: !352)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !818, file: !397, line: 602, type: !5)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !818, file: !397, line: 603, type: !384)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrcb_to_call", scope: !818, file: !397, line: 604, type: !353)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !818, file: !397, line: 605, type: !352)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_freed", scope: !818, file: !397, line: 606, type: !44)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrlist", scope: !831, file: !397, line: 619, type: !383)
!831 = distinct !DILexicalBlock(scope: !832, file: !397, line: 618, column: 70)
!832 = distinct !DILexicalBlock(scope: !833, file: !397, line: 618, column: 5)
!833 = distinct !DILexicalBlock(scope: !818, file: !397, line: 618, column: 5)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrasgc", scope: !835, file: !397, line: 637, type: !352)
!835 = distinct !DILexicalBlock(scope: !836, file: !397, line: 636, column: 60)
!836 = distinct !DILexicalBlock(scope: !837, file: !397, line: 636, column: 9)
!837 = distinct !DILexicalBlock(scope: !831, file: !397, line: 636, column: 9)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !839, file: !397, line: 699, type: !5)
!839 = distinct !DILexicalBlock(scope: !818, file: !397, line: 698, column: 47)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !839, file: !397, line: 700, type: !5)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !842, file: !397, line: 715, type: !5)
!842 = distinct !DILexicalBlock(scope: !843, file: !397, line: 715, column: 16)
!843 = distinct !DILexicalBlock(scope: !839, file: !397, line: 712, column: 13)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !845, file: !397, line: 728, type: !5)
!845 = distinct !DILexicalBlock(scope: !839, file: !397, line: 728, column: 12)
!846 = !DISubprogram(name: "finalize_garbage", scope: !397, file: !397, line: 784, type: !446, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @finalize_garbage, variables: !847)
!847 = !{!848, !849, !850, !851, !853, !854}
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collectable", arg: 1, scope: !846, file: !397, line: 784, type: !352)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "finalize", scope: !846, file: !397, line: 786, type: !35)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seen", scope: !846, file: !397, line: 787, type: !353)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !852, file: !397, line: 800, type: !352)
!852 = distinct !DILexicalBlock(scope: !846, file: !397, line: 799, column: 44)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !852, file: !397, line: 801, type: !5)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !855, file: !397, line: 809, type: !5)
!855 = distinct !DILexicalBlock(scope: !856, file: !397, line: 809, column: 16)
!856 = distinct !DILexicalBlock(scope: !857, file: !397, line: 805, column: 87)
!857 = distinct !DILexicalBlock(scope: !852, file: !397, line: 803, column: 13)
!858 = !DISubprogram(name: "check_garbage", scope: !397, file: !397, line: 819, type: !728, isLocal: true, isDefinition: true, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%union._gc_head*)* @check_garbage, variables: !859)
!859 = !{!860, !861}
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collectable", arg: 1, scope: !858, file: !397, line: 819, type: !352)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !858, file: !397, line: 821, type: !352)
!862 = !DISubprogram(name: "revive_garbage", scope: !397, file: !397, line: 838, type: !446, isLocal: true, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @revive_garbage, variables: !863)
!863 = !{!864, !865}
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collectable", arg: 1, scope: !862, file: !397, line: 838, type: !352)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !862, file: !397, line: 840, type: !352)
!866 = !DISubprogram(name: "delete_garbage", scope: !397, file: !397, line: 852, type: !721, isLocal: true, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*, %union._gc_head*)* @delete_garbage, variables: !867)
!867 = !{!868, !869, !870, !871, !873, !874}
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collectable", arg: 1, scope: !866, file: !397, line: 852, type: !352)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "old", arg: 2, scope: !866, file: !397, line: 852, type: !352)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "clear", scope: !866, file: !397, line: 854, type: !142)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !872, file: !397, line: 857, type: !352)
!872 = distinct !DILexicalBlock(scope: !866, file: !397, line: 856, column: 44)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !872, file: !397, line: 858, type: !5)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !875, file: !397, line: 867, type: !5)
!875 = distinct !DILexicalBlock(scope: !876, file: !397, line: 867, column: 20)
!876 = distinct !DILexicalBlock(scope: !877, file: !397, line: 864, column: 81)
!877 = distinct !DILexicalBlock(scope: !878, file: !397, line: 864, column: 17)
!878 = distinct !DILexicalBlock(scope: !879, file: !397, line: 863, column: 14)
!879 = distinct !DILexicalBlock(scope: !872, file: !397, line: 860, column: 13)
!880 = !DISubprogram(name: "handle_legacy_finalizers", scope: !397, file: !397, line: 757, type: !819, isLocal: true, isDefinition: true, scopeLine: 758, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%union._gc_head*, %union._gc_head*)* @handle_legacy_finalizers, variables: !881)
!881 = !{!882, !883, !884, !885}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "finalizers", arg: 1, scope: !880, file: !397, line: 757, type: !352)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "old", arg: 2, scope: !880, file: !397, line: 757, type: !352)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !880, file: !397, line: 759, type: !352)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !886, file: !397, line: 767, type: !5)
!886 = distinct !DILexicalBlock(scope: !887, file: !397, line: 766, column: 51)
!887 = distinct !DILexicalBlock(scope: !888, file: !397, line: 766, column: 5)
!888 = distinct !DILexicalBlock(scope: !880, file: !397, line: 766, column: 5)
!889 = !DISubprogram(name: "clear_freelists", scope: !397, file: !397, line: 884, type: !411, isLocal: true, isDefinition: true, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @clear_freelists, variables: !2)
!890 = !DISubprogram(name: "collect_generations", scope: !397, file: !397, line: 1146, type: !403, isLocal: true, isDefinition: true, scopeLine: 1147, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @collect_generations, variables: !891)
!891 = !{!892, !893}
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !890, file: !397, line: 1148, type: !44)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !890, file: !397, line: 1149, type: !11)
!894 = !DISubprogram(name: "gc_list_remove", scope: !397, file: !397, line: 261, type: !446, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @gc_list_remove, variables: !895)
!895 = !{!896}
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !894, file: !397, line: 261, type: !352)
!897 = !{!898, !899, !900, !907, !930, !934, !938, !942, !946, !950, !954, !958, !962, !966, !970, !974, !978, !982, !983, !987, !991, !995, !999, !1000, !1001, !1002, !1003, !1011, !1012, !1013, !1014}
!898 = !DIGlobalVariable(name: "_PyGC_generation0", scope: !0, file: !397, line: 55, type: !352, isLocal: false, isDefinition: true, variable: %union._gc_head** @_PyGC_generation0)
!899 = !DIGlobalVariable(name: "debug", scope: !0, file: !397, line: 168, type: !44, isLocal: true, isDefinition: true, variable: i32* @debug)
!900 = !DIGlobalVariable(name: "generations", scope: !0, file: !397, line: 48, type: !901, isLocal: true, isDefinition: true, variable: [3 x %struct.gc_generation]* @generations)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 768, align: 64, elements: !574)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "gc_generation", file: !397, line: 37, size: 256, align: 64, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !902, file: !397, line: 38, baseType: !353, size: 192, align: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !902, file: !397, line: 39, baseType: !44, size: 32, align: 32, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !902, file: !397, line: 40, baseType: !44, size: 32, align: 32, offset: 224)
!907 = !DIGlobalVariable(name: "gcmodule", scope: !0, file: !397, line: 1544, type: !908, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @gcmodule)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !909, line: 47, size: 832, align: 64, elements: !910)
!909 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!910 = !{!911, !920, !921, !922, !923, !926, !927, !928, !929}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !908, file: !909, line: 48, baseType: !912, size: 320, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !909, line: 38, baseType: !913)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !909, line: 33, size: 320, align: 64, elements: !914)
!914 = !{!915, !916, !918, !919}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !913, file: !909, line: 34, baseType: !6, size: 128, align: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !913, file: !909, line: 35, baseType: !917, size: 64, align: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !913, file: !909, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !913, file: !909, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !908, file: !909, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !908, file: !909, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !908, file: !909, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !908, file: !909, line: 52, baseType: !924, size: 64, align: 64, offset: 512)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64, align: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !908, file: !909, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !908, file: !909, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !908, file: !909, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !908, file: !909, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!930 = !DIGlobalVariable(name: "gc__doc__", scope: !0, file: !397, line: 1505, type: !931, isLocal: true, isDefinition: true, variable: [876 x i8]* @gc__doc__)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 7008, align: 8, elements: !932)
!932 = !{!933}
!933 = !DISubrange(count: 876)
!934 = !DIGlobalVariable(name: "GcMethods", scope: !0, file: !397, line: 1523, type: !935, isLocal: true, isDefinition: true, variable: [15 x %struct.PyMethodDef]* @GcMethods)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 3840, align: 64, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 15)
!938 = !DIGlobalVariable(name: "gc_enable__doc__", scope: !0, file: !397, line: 1170, type: !939, isLocal: true, isDefinition: true, variable: [56 x i8]* @gc_enable__doc__)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 448, align: 8, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 56)
!942 = !DIGlobalVariable(name: "gc_disable__doc__", scope: !0, file: !397, line: 1183, type: !943, isLocal: true, isDefinition: true, variable: [58 x i8]* @gc_disable__doc__)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 464, align: 8, elements: !944)
!944 = !{!945}
!945 = !DISubrange(count: 58)
!946 = !DIGlobalVariable(name: "gc_isenabled__doc__", scope: !0, file: !397, line: 1196, type: !947, isLocal: true, isDefinition: true, variable: [81 x i8]* @gc_isenabled__doc__)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 648, align: 8, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 81)
!950 = !DIGlobalVariable(name: "gc_set_debug__doc__", scope: !0, file: !397, line: 1241, type: !951, isLocal: true, isDefinition: true, variable: [499 x i8]* @gc_set_debug__doc__)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3992, align: 8, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 499)
!954 = !DIGlobalVariable(name: "gc_get_debug__doc__", scope: !0, file: !397, line: 1265, type: !955, isLocal: true, isDefinition: true, variable: [67 x i8]* @gc_get_debug__doc__)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 536, align: 8, elements: !956)
!956 = !{!957}
!957 = !DISubrange(count: 67)
!958 = !DIGlobalVariable(name: "gc_get_count__doc__", scope: !0, file: !397, line: 1314, type: !959, isLocal: true, isDefinition: true, variable: [79 x i8]* @gc_get_count__doc__)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 632, align: 8, elements: !960)
!960 = !{!961}
!961 = !DISubrange(count: 79)
!962 = !DIGlobalVariable(name: "gc_set_thresh__doc__", scope: !0, file: !397, line: 1276, type: !963, isLocal: true, isDefinition: true, variable: [143 x i8]* @gc_set_thresh__doc__)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1144, align: 8, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 143)
!966 = !DIGlobalVariable(name: "gc_get_thresh__doc__", scope: !0, file: !397, line: 1300, type: !967, isLocal: true, isDefinition: true, variable: [99 x i8]* @gc_get_thresh__doc__)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 792, align: 8, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 99)
!970 = !DIGlobalVariable(name: "keywords", scope: !530, file: !397, line: 1218, type: !971, isLocal: true, isDefinition: true, variable: [2 x i8*]* @gc_collect.keywords)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, align: 64, elements: !972)
!972 = !{!973}
!973 = !DISubrange(count: 2)
!974 = !DIGlobalVariable(name: "gc_collect__doc__", scope: !0, file: !397, line: 1207, type: !975, isLocal: true, isDefinition: true, variable: [261 x i8]* @gc_collect__doc__)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2088, align: 8, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 261)
!978 = !DIGlobalVariable(name: "gc_get_objects__doc__", scope: !0, file: !397, line: 1414, type: !979, isLocal: true, isDefinition: true, variable: [106 x i8]* @gc_get_objects__doc__)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 848, align: 8, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 106)
!982 = !DIGlobalVariable(name: "generation_stats", scope: !0, file: !397, line: 181, type: !568, isLocal: true, isDefinition: true, variable: [3 x %struct.gc_generation_stats]* @generation_stats)
!983 = !DIGlobalVariable(name: "gc_get_stats__doc__", scope: !0, file: !397, line: 1438, type: !984, isLocal: true, isDefinition: true, variable: [91 x i8]* @gc_get_stats__doc__)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 728, align: 8, elements: !985)
!985 = !{!986}
!986 = !DISubrange(count: 91)
!987 = !DIGlobalVariable(name: "gc_is_tracked__doc__", scope: !0, file: !397, line: 1484, type: !988, isLocal: true, isDefinition: true, variable: [131 x i8]* @gc_is_tracked__doc__)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1048, align: 8, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 131)
!991 = !DIGlobalVariable(name: "gc_get_referrers__doc__", scope: !0, file: !397, line: 1357, type: !992, isLocal: true, isDefinition: true, variable: [92 x i8]* @gc_get_referrers__doc__)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 736, align: 8, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 92)
!995 = !DIGlobalVariable(name: "gc_get_referents__doc__", scope: !0, file: !397, line: 1384, type: !996, isLocal: true, isDefinition: true, variable: [95 x i8]* @gc_get_referents__doc__)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 760, align: 8, elements: !997)
!997 = !{!998}
!998 = !DISubrange(count: 95)
!999 = !DIGlobalVariable(name: "garbage", scope: !0, file: !397, line: 63, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @garbage)
!1000 = !DIGlobalVariable(name: "callbacks", scope: !0, file: !397, line: 69, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @callbacks)
!1001 = !DIGlobalVariable(name: "tmod", scope: !0, file: !397, line: 169, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @tmod)
!1002 = !DIGlobalVariable(name: "collecting", scope: !0, file: !397, line: 60, type: !44, isLocal: true, isDefinition: true, variable: i32* @collecting)
!1003 = !DIGlobalVariable(name: "PyId_time", scope: !708, file: !397, line: 902, type: !1004, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @get_time.PyId_time)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !7, line: 144, baseType: !1005)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !7, line: 140, size: 192, align: 64, elements: !1006)
!1006 = !{!1007, !1009, !1010}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1005, file: !7, line: 141, baseType: !1008, size: 64, align: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64, align: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1005, file: !7, line: 142, baseType: !29, size: 64, align: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1005, file: !7, line: 143, baseType: !5, size: 64, align: 64, offset: 128)
!1011 = !DIGlobalVariable(name: "long_lived_pending", scope: !0, file: !397, line: 82, type: !11, isLocal: true, isDefinition: true, variable: i64* @long_lived_pending)
!1012 = !DIGlobalVariable(name: "long_lived_total", scope: !0, file: !397, line: 76, type: !11, isLocal: true, isDefinition: true, variable: i64* @long_lived_total)
!1013 = !DIGlobalVariable(name: "gc_str", scope: !0, file: !397, line: 66, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @gc_str)
!1014 = !DIGlobalVariable(name: "enabled", scope: !0, file: !397, line: 57, type: !44, isLocal: true, isDefinition: true, variable: i32* @enabled)
!1015 = !{i32 2, !"Dwarf Version", i32 4}
!1016 = !{i32 2, !"Debug Info Version", i32 3}
!1017 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1018 = !DILocation(line: 1559, column: 5, scope: !396)
!1019 = !DIExpression()
!1020 = !DILocation(line: 1559, column: 15, scope: !396)
!1021 = !DILocation(line: 1561, column: 9, scope: !396)
!1022 = !DILocation(line: 1561, column: 7, scope: !396)
!1023 = !{!1024, !1024, i64 0}
!1024 = !{!"any pointer", !1025, i64 0}
!1025 = !{!"omnipotent char", !1026, i64 0}
!1026 = !{!"Simple C/C++ TBAA"}
!1027 = !DILocation(line: 1563, column: 9, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1563, column: 9)
!1029 = !DILocation(line: 1563, column: 11, scope: !1028)
!1030 = !DILocation(line: 1563, column: 9, scope: !396)
!1031 = !DILocation(line: 1564, column: 9, scope: !1028)
!1032 = !DILocation(line: 1566, column: 9, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1566, column: 9)
!1034 = !DILocation(line: 1566, column: 17, scope: !1033)
!1035 = !DILocation(line: 1566, column: 9, scope: !396)
!1036 = !DILocation(line: 1567, column: 19, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !397, line: 1566, column: 32)
!1038 = !DILocation(line: 1567, column: 17, scope: !1037)
!1039 = !DILocation(line: 1568, column: 13, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !397, line: 1568, column: 13)
!1041 = !DILocation(line: 1568, column: 21, scope: !1040)
!1042 = !DILocation(line: 1568, column: 13, scope: !1037)
!1043 = !DILocation(line: 1569, column: 13, scope: !1040)
!1044 = !DILocation(line: 1570, column: 5, scope: !1037)
!1045 = !DILocation(line: 1571, column: 21, scope: !396)
!1046 = !DILocation(line: 1571, column: 32, scope: !396)
!1047 = !DILocation(line: 1571, column: 41, scope: !396)
!1048 = !{!1049, !1050, i64 0}
!1049 = !{!"_object", !1050, i64 0, !1024, i64 8}
!1050 = !{!"long", !1025, i64 0}
!1051 = !DILocation(line: 1572, column: 28, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1572, column: 9)
!1053 = !DILocation(line: 1572, column: 42, scope: !1052)
!1054 = !DILocation(line: 1572, column: 9, scope: !1052)
!1055 = !DILocation(line: 1572, column: 51, scope: !1052)
!1056 = !DILocation(line: 1572, column: 9, scope: !396)
!1057 = !DILocation(line: 1573, column: 9, scope: !1052)
!1058 = !DILocation(line: 1575, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1575, column: 9)
!1060 = !DILocation(line: 1575, column: 19, scope: !1059)
!1061 = !DILocation(line: 1575, column: 9, scope: !396)
!1062 = !DILocation(line: 1576, column: 21, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !397, line: 1575, column: 34)
!1064 = !DILocation(line: 1576, column: 19, scope: !1063)
!1065 = !DILocation(line: 1577, column: 13, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !397, line: 1577, column: 13)
!1067 = !DILocation(line: 1577, column: 23, scope: !1066)
!1068 = !DILocation(line: 1577, column: 13, scope: !1063)
!1069 = !DILocation(line: 1578, column: 13, scope: !1066)
!1070 = !DILocation(line: 1579, column: 5, scope: !1063)
!1071 = !DILocation(line: 1580, column: 21, scope: !396)
!1072 = !DILocation(line: 1580, column: 34, scope: !396)
!1073 = !DILocation(line: 1580, column: 43, scope: !396)
!1074 = !DILocation(line: 1581, column: 28, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1581, column: 9)
!1076 = !DILocation(line: 1581, column: 44, scope: !1075)
!1077 = !DILocation(line: 1581, column: 9, scope: !1075)
!1078 = !DILocation(line: 1581, column: 55, scope: !1075)
!1079 = !DILocation(line: 1581, column: 9, scope: !396)
!1080 = !DILocation(line: 1582, column: 9, scope: !1075)
!1081 = !DILocation(line: 1590, column: 9, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1590, column: 9)
!1083 = !DILocation(line: 1590, column: 14, scope: !1082)
!1084 = !DILocation(line: 1590, column: 9, scope: !396)
!1085 = !DILocation(line: 1591, column: 16, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !397, line: 1590, column: 29)
!1087 = !DILocation(line: 1591, column: 14, scope: !1086)
!1088 = !DILocation(line: 1592, column: 13, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !397, line: 1592, column: 13)
!1090 = !DILocation(line: 1592, column: 18, scope: !1089)
!1091 = !DILocation(line: 1592, column: 13, scope: !1086)
!1092 = !DILocation(line: 1593, column: 13, scope: !1089)
!1093 = !DILocation(line: 1594, column: 5, scope: !1086)
!1094 = !DILocation(line: 1597, column: 33, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1597, column: 9)
!1096 = !DILocation(line: 1597, column: 9, scope: !1095)
!1097 = !DILocation(line: 1597, column: 59, scope: !1095)
!1098 = !DILocation(line: 1597, column: 9, scope: !396)
!1099 = !DILocation(line: 1597, column: 64, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1095, file: !397, discriminator: 1)
!1101 = !DILocation(line: 1597, column: 64, scope: !1095)
!1102 = !DILocation(line: 1598, column: 33, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1598, column: 9)
!1104 = !DILocation(line: 1598, column: 9, scope: !1103)
!1105 = !DILocation(line: 1598, column: 65, scope: !1103)
!1106 = !DILocation(line: 1598, column: 9, scope: !396)
!1107 = !DILocation(line: 1598, column: 70, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1103, file: !397, discriminator: 1)
!1109 = !DILocation(line: 1598, column: 70, scope: !1103)
!1110 = !DILocation(line: 1599, column: 33, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1599, column: 9)
!1112 = !DILocation(line: 1599, column: 9, scope: !1111)
!1113 = !DILocation(line: 1599, column: 67, scope: !1111)
!1114 = !DILocation(line: 1599, column: 9, scope: !396)
!1115 = !DILocation(line: 1599, column: 72, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1111, file: !397, discriminator: 1)
!1117 = !DILocation(line: 1599, column: 72, scope: !1111)
!1118 = !DILocation(line: 1600, column: 33, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1600, column: 9)
!1120 = !DILocation(line: 1600, column: 9, scope: !1119)
!1121 = !DILocation(line: 1600, column: 61, scope: !1119)
!1122 = !DILocation(line: 1600, column: 9, scope: !396)
!1123 = !DILocation(line: 1600, column: 66, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1119, file: !397, discriminator: 1)
!1125 = !DILocation(line: 1600, column: 66, scope: !1119)
!1126 = !DILocation(line: 1601, column: 33, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !396, file: !397, line: 1601, column: 9)
!1128 = !DILocation(line: 1601, column: 9, scope: !1127)
!1129 = !DILocation(line: 1601, column: 76, scope: !1127)
!1130 = !DILocation(line: 1601, column: 9, scope: !396)
!1131 = !DILocation(line: 1601, column: 81, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1127, file: !397, discriminator: 1)
!1133 = !DILocation(line: 1601, column: 81, scope: !1127)
!1134 = !DILocation(line: 1603, column: 12, scope: !396)
!1135 = !DILocation(line: 1603, column: 5, scope: !396)
!1136 = !DILocation(line: 1604, column: 1, scope: !396)
!1137 = !DILocation(line: 1610, column: 5, scope: !402)
!1138 = !DILocation(line: 1610, column: 16, scope: !402)
!1139 = !DILocation(line: 1612, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !402, file: !397, line: 1612, column: 9)
!1141 = !{!1142, !1142, i64 0}
!1142 = !{!"int", !1025, i64 0}
!1143 = !DILocation(line: 1612, column: 9, scope: !402)
!1144 = !DILocation(line: 1613, column: 11, scope: !1140)
!1145 = !{!1050, !1050, i64 0}
!1146 = !DILocation(line: 1613, column: 9, scope: !1140)
!1147 = !DILocation(line: 1615, column: 20, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1140, file: !397, line: 1614, column: 10)
!1149 = !DILocation(line: 1616, column: 13, scope: !1148)
!1150 = !DILocation(line: 1616, column: 11, scope: !1148)
!1151 = !DILocation(line: 1617, column: 20, scope: !1148)
!1152 = !DILocation(line: 1620, column: 12, scope: !402)
!1153 = !DILocation(line: 1621, column: 1, scope: !402)
!1154 = !DILocation(line: 1620, column: 5, scope: !402)
!1155 = !DILocation(line: 1136, column: 27, scope: !645)
!1156 = !DILocation(line: 1138, column: 5, scope: !645)
!1157 = !DILocation(line: 1138, column: 16, scope: !645)
!1158 = !DILocation(line: 1138, column: 24, scope: !645)
!1159 = !DILocation(line: 1138, column: 35, scope: !645)
!1160 = !DILocation(line: 1139, column: 33, scope: !645)
!1161 = !DILocation(line: 1139, column: 5, scope: !645)
!1162 = !DILocation(line: 1140, column: 22, scope: !645)
!1163 = !DILocation(line: 1140, column: 14, scope: !645)
!1164 = !DILocation(line: 1140, column: 12, scope: !645)
!1165 = !DILocation(line: 1141, column: 32, scope: !645)
!1166 = !DILocation(line: 1141, column: 44, scope: !645)
!1167 = !DILocation(line: 1141, column: 55, scope: !645)
!1168 = !DILocation(line: 1141, column: 5, scope: !645)
!1169 = !DILocation(line: 1142, column: 12, scope: !645)
!1170 = !DILocation(line: 1143, column: 1, scope: !645)
!1171 = !DILocation(line: 1142, column: 5, scope: !645)
!1172 = !DILocation(line: 1626, column: 5, scope: !407)
!1173 = !DILocation(line: 1626, column: 16, scope: !407)
!1174 = !DILocation(line: 1634, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !407, file: !397, line: 1634, column: 9)
!1176 = !DILocation(line: 1634, column: 9, scope: !407)
!1177 = !DILocation(line: 1635, column: 11, scope: !1175)
!1178 = !DILocation(line: 1635, column: 9, scope: !1175)
!1179 = !DILocation(line: 1637, column: 20, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !397, line: 1636, column: 10)
!1181 = !DILocation(line: 1638, column: 13, scope: !1180)
!1182 = !DILocation(line: 1638, column: 11, scope: !1180)
!1183 = !DILocation(line: 1639, column: 20, scope: !1180)
!1184 = !DILocation(line: 1641, column: 12, scope: !407)
!1185 = !DILocation(line: 1642, column: 1, scope: !407)
!1186 = !DILocation(line: 1641, column: 5, scope: !407)
!1187 = !DILocation(line: 920, column: 13, scope: !680)
!1188 = !DILocation(line: 920, column: 37, scope: !680)
!1189 = !DILocation(line: 920, column: 62, scope: !680)
!1190 = !DILocation(line: 921, column: 13, scope: !680)
!1191 = !DILocation(line: 923, column: 5, scope: !680)
!1192 = !DILocation(line: 923, column: 9, scope: !680)
!1193 = !DILocation(line: 924, column: 5, scope: !680)
!1194 = !DILocation(line: 924, column: 16, scope: !680)
!1195 = !DILocation(line: 925, column: 5, scope: !680)
!1196 = !DILocation(line: 925, column: 16, scope: !680)
!1197 = !DILocation(line: 926, column: 5, scope: !680)
!1198 = !DILocation(line: 926, column: 16, scope: !680)
!1199 = !DILocation(line: 927, column: 5, scope: !680)
!1200 = !DILocation(line: 927, column: 16, scope: !680)
!1201 = !DILocation(line: 928, column: 5, scope: !680)
!1202 = !DILocation(line: 928, column: 15, scope: !680)
!1203 = !DILocation(line: 929, column: 5, scope: !680)
!1204 = !DILocation(line: 929, column: 15, scope: !680)
!1205 = !DILocation(line: 930, column: 5, scope: !680)
!1206 = !DILocation(line: 930, column: 16, scope: !680)
!1207 = !DILocation(line: 931, column: 5, scope: !680)
!1208 = !DILocation(line: 931, column: 12, scope: !680)
!1209 = !{!1210, !1210, i64 0}
!1210 = !{!"double", !1025, i64 0}
!1211 = !DILocation(line: 932, column: 5, scope: !680)
!1212 = !DILocation(line: 932, column: 33, scope: !680)
!1213 = !DILocation(line: 932, column: 59, scope: !680)
!1214 = !DILocation(line: 932, column: 42, scope: !680)
!1215 = !DILocation(line: 934, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !680, file: !397, line: 934, column: 9)
!1217 = !DILocation(line: 934, column: 15, scope: !1216)
!1218 = !DILocation(line: 934, column: 9, scope: !680)
!1219 = !DILocation(line: 936, column: 27, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !397, line: 934, column: 25)
!1221 = !DILocation(line: 935, column: 9, scope: !1220)
!1222 = !DILocation(line: 937, column: 9, scope: !1220)
!1223 = !DILocation(line: 938, column: 16, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !397, line: 938, column: 9)
!1225 = !DILocation(line: 938, column: 14, scope: !1224)
!1226 = !DILocation(line: 938, column: 21, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1228, file: !397, discriminator: 2)
!1228 = !DILexicalBlockFile(scope: !1229, file: !397, discriminator: 1)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !397, line: 938, column: 9)
!1230 = !DILocation(line: 938, column: 23, scope: !1229)
!1231 = !DILocation(line: 938, column: 9, scope: !1224)
!1232 = !DILocation(line: 940, column: 58, scope: !1229)
!1233 = !DILocation(line: 940, column: 46, scope: !1229)
!1234 = !DILocation(line: 940, column: 61, scope: !1229)
!1235 = !DILocation(line: 940, column: 31, scope: !1229)
!1236 = !DILocation(line: 939, column: 13, scope: !1229)
!1237 = !DILocation(line: 938, column: 29, scope: !1229)
!1238 = !DILocation(line: 938, column: 9, scope: !1229)
!1239 = !DILocation(line: 941, column: 14, scope: !1220)
!1240 = !DILocation(line: 941, column: 12, scope: !1220)
!1241 = !DILocation(line: 942, column: 9, scope: !1220)
!1242 = !DILocation(line: 943, column: 5, scope: !1220)
!1243 = !DILocation(line: 946, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !680, file: !397, line: 946, column: 9)
!1245 = !DILocation(line: 946, column: 19, scope: !1244)
!1246 = !DILocation(line: 946, column: 22, scope: !1244)
!1247 = !DILocation(line: 946, column: 9, scope: !680)
!1248 = !DILocation(line: 947, column: 21, scope: !1244)
!1249 = !DILocation(line: 947, column: 31, scope: !1244)
!1250 = !DILocation(line: 947, column: 9, scope: !1244)
!1251 = !DILocation(line: 947, column: 35, scope: !1244)
!1252 = !DILocation(line: 947, column: 41, scope: !1244)
!1253 = !{!1254, !1142, i64 28}
!1254 = !{!"gc_generation", !1025, i64 0, !1142, i64 24, !1142, i64 28}
!1255 = !DILocation(line: 948, column: 12, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !680, file: !397, line: 948, column: 5)
!1257 = !DILocation(line: 948, column: 10, scope: !1256)
!1258 = !DILocation(line: 948, column: 17, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1260, file: !397, discriminator: 2)
!1260 = !DILexicalBlockFile(scope: !1261, file: !397, discriminator: 1)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !397, line: 948, column: 5)
!1262 = !DILocation(line: 948, column: 22, scope: !1261)
!1263 = !DILocation(line: 948, column: 19, scope: !1261)
!1264 = !DILocation(line: 948, column: 5, scope: !1256)
!1265 = !DILocation(line: 949, column: 21, scope: !1261)
!1266 = !DILocation(line: 949, column: 9, scope: !1261)
!1267 = !DILocation(line: 949, column: 24, scope: !1261)
!1268 = !DILocation(line: 949, column: 30, scope: !1261)
!1269 = !DILocation(line: 948, column: 35, scope: !1261)
!1270 = !DILocation(line: 948, column: 5, scope: !1261)
!1271 = !DILocation(line: 952, column: 12, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !680, file: !397, line: 952, column: 5)
!1273 = !DILocation(line: 952, column: 10, scope: !1272)
!1274 = !DILocation(line: 952, column: 17, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1276, file: !397, discriminator: 2)
!1276 = !DILexicalBlockFile(scope: !1277, file: !397, discriminator: 1)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !397, line: 952, column: 5)
!1278 = !DILocation(line: 952, column: 21, scope: !1277)
!1279 = !DILocation(line: 952, column: 19, scope: !1277)
!1280 = !DILocation(line: 952, column: 5, scope: !1272)
!1281 = !DILocation(line: 953, column: 37, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !397, line: 952, column: 38)
!1283 = !DILocation(line: 953, column: 25, scope: !1282)
!1284 = !DILocation(line: 953, column: 40, scope: !1282)
!1285 = !DILocation(line: 953, column: 61, scope: !1282)
!1286 = !DILocation(line: 953, column: 49, scope: !1282)
!1287 = !DILocation(line: 953, column: 73, scope: !1282)
!1288 = !DILocation(line: 953, column: 9, scope: !1282)
!1289 = !DILocation(line: 954, column: 5, scope: !1282)
!1290 = !DILocation(line: 952, column: 34, scope: !1277)
!1291 = !DILocation(line: 952, column: 5, scope: !1277)
!1292 = !DILocation(line: 957, column: 27, scope: !680)
!1293 = !DILocation(line: 957, column: 15, scope: !680)
!1294 = !DILocation(line: 957, column: 39, scope: !680)
!1295 = !DILocation(line: 957, column: 11, scope: !680)
!1296 = !DILocation(line: 958, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !680, file: !397, line: 958, column: 9)
!1298 = !DILocation(line: 958, column: 20, scope: !1297)
!1299 = !DILocation(line: 958, column: 9, scope: !680)
!1300 = !DILocation(line: 959, column: 29, scope: !1297)
!1301 = !DILocation(line: 959, column: 39, scope: !1297)
!1302 = !DILocation(line: 959, column: 17, scope: !1297)
!1303 = !DILocation(line: 959, column: 43, scope: !1297)
!1304 = !DILocation(line: 959, column: 13, scope: !1297)
!1305 = !DILocation(line: 959, column: 9, scope: !1297)
!1306 = !DILocation(line: 961, column: 15, scope: !1297)
!1307 = !DILocation(line: 961, column: 13, scope: !1297)
!1308 = !DILocation(line: 968, column: 17, scope: !680)
!1309 = !DILocation(line: 968, column: 5, scope: !680)
!1310 = !DILocation(line: 969, column: 19, scope: !680)
!1311 = !DILocation(line: 969, column: 5, scope: !680)
!1312 = !DILocation(line: 977, column: 5, scope: !680)
!1313 = !DILocation(line: 978, column: 22, scope: !680)
!1314 = !DILocation(line: 978, column: 5, scope: !680)
!1315 = !DILocation(line: 981, column: 9, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !680, file: !397, line: 981, column: 9)
!1317 = !DILocation(line: 981, column: 18, scope: !1316)
!1318 = !DILocation(line: 981, column: 15, scope: !1316)
!1319 = !DILocation(line: 981, column: 9, scope: !680)
!1320 = !DILocation(line: 982, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !397, line: 982, column: 13)
!1322 = distinct !DILexicalBlock(scope: !1316, file: !397, line: 981, column: 23)
!1323 = !DILocation(line: 982, column: 24, scope: !1321)
!1324 = !DILocation(line: 982, column: 13, scope: !1322)
!1325 = !DILocation(line: 983, column: 48, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !397, line: 982, column: 34)
!1327 = !DILocation(line: 983, column: 35, scope: !1326)
!1328 = !DILocation(line: 983, column: 32, scope: !1326)
!1329 = !DILocation(line: 984, column: 9, scope: !1326)
!1330 = !DILocation(line: 985, column: 23, scope: !1322)
!1331 = !DILocation(line: 985, column: 30, scope: !1322)
!1332 = !DILocation(line: 985, column: 9, scope: !1322)
!1333 = !DILocation(line: 986, column: 5, scope: !1322)
!1334 = !DILocation(line: 990, column: 23, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1316, file: !397, line: 987, column: 10)
!1336 = !DILocation(line: 990, column: 9, scope: !1335)
!1337 = !DILocation(line: 991, column: 28, scope: !1335)
!1338 = !DILocation(line: 992, column: 41, scope: !1335)
!1339 = !DILocation(line: 992, column: 28, scope: !1335)
!1340 = !DILocation(line: 992, column: 26, scope: !1335)
!1341 = !DILocation(line: 998, column: 5, scope: !680)
!1342 = !DILocation(line: 999, column: 5, scope: !680)
!1343 = !DILocation(line: 1004, column: 5, scope: !680)
!1344 = !DILocation(line: 1009, column: 27, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !680, file: !397, line: 1009, column: 5)
!1346 = !DILocation(line: 1009, column: 30, scope: !1345)
!1347 = !{!1348, !1024, i64 0}
!1348 = !{!"", !1024, i64 0, !1024, i64 8, !1050, i64 16}
!1349 = !DILocation(line: 1009, column: 13, scope: !1345)
!1350 = !DILocation(line: 1009, column: 10, scope: !1345)
!1351 = !DILocation(line: 1009, column: 39, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !397, discriminator: 2)
!1353 = !DILexicalBlockFile(scope: !1354, file: !397, discriminator: 1)
!1354 = distinct !DILexicalBlock(scope: !1345, file: !397, line: 1009, column: 5)
!1355 = !DILocation(line: 1009, column: 42, scope: !1354)
!1356 = !DILocation(line: 1009, column: 5, scope: !1345)
!1357 = !DILocation(line: 1011, column: 10, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !397, line: 1010, column: 42)
!1359 = !DILocation(line: 1012, column: 13, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1358, file: !397, line: 1012, column: 13)
!1361 = !DILocation(line: 1012, column: 19, scope: !1360)
!1362 = !DILocation(line: 1012, column: 13, scope: !1358)
!1363 = !DILocation(line: 1013, column: 68, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !397, line: 1012, column: 29)
!1365 = !DILocation(line: 1013, column: 71, scope: !1364)
!1366 = !DILocation(line: 1013, column: 41, scope: !1364)
!1367 = !DILocation(line: 1013, column: 13, scope: !1364)
!1368 = !DILocation(line: 1014, column: 9, scope: !1364)
!1369 = !DILocation(line: 1015, column: 5, scope: !1358)
!1370 = !DILocation(line: 1010, column: 26, scope: !1354)
!1371 = !DILocation(line: 1010, column: 30, scope: !1354)
!1372 = !DILocation(line: 1010, column: 33, scope: !1354)
!1373 = !DILocation(line: 1010, column: 24, scope: !1354)
!1374 = !DILocation(line: 1009, column: 5, scope: !1354)
!1375 = !DILocation(line: 1018, column: 40, scope: !680)
!1376 = !DILocation(line: 1018, column: 10, scope: !680)
!1377 = !DILocation(line: 1018, column: 7, scope: !680)
!1378 = !DILocation(line: 1021, column: 5, scope: !680)
!1379 = !DILocation(line: 1023, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !680, file: !397, line: 1023, column: 9)
!1381 = !DILocation(line: 1023, column: 9, scope: !680)
!1382 = !DILocation(line: 1024, column: 9, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !397, line: 1023, column: 38)
!1384 = !DILocation(line: 1025, column: 37, scope: !1383)
!1385 = !DILocation(line: 1025, column: 9, scope: !1383)
!1386 = !DILocation(line: 1026, column: 5, scope: !1383)
!1387 = !DILocation(line: 1032, column: 38, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1380, file: !397, line: 1027, column: 10)
!1389 = !DILocation(line: 1032, column: 9, scope: !1388)
!1390 = !DILocation(line: 1037, column: 26, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !680, file: !397, line: 1037, column: 5)
!1392 = !DILocation(line: 1037, column: 29, scope: !1391)
!1393 = !DILocation(line: 1037, column: 13, scope: !1391)
!1394 = !DILocation(line: 1037, column: 10, scope: !1391)
!1395 = !DILocation(line: 1038, column: 10, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !397, line: 1037, column: 5)
!1397 = !DILocation(line: 1038, column: 13, scope: !1396)
!1398 = !DILocation(line: 1037, column: 5, scope: !1391)
!1399 = !DILocation(line: 1040, column: 10, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !397, line: 1039, column: 31)
!1401 = !DILocation(line: 1041, column: 13, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1400, file: !397, line: 1041, column: 13)
!1403 = !DILocation(line: 1041, column: 19, scope: !1402)
!1404 = !DILocation(line: 1041, column: 13, scope: !1400)
!1405 = !DILocation(line: 1042, column: 70, scope: !1402)
!1406 = !DILocation(line: 1042, column: 73, scope: !1402)
!1407 = !DILocation(line: 1042, column: 43, scope: !1402)
!1408 = !DILocation(line: 1042, column: 13, scope: !1402)
!1409 = !DILocation(line: 1043, column: 5, scope: !1400)
!1410 = !DILocation(line: 1039, column: 15, scope: !1396)
!1411 = !DILocation(line: 1039, column: 19, scope: !1396)
!1412 = !DILocation(line: 1039, column: 22, scope: !1396)
!1413 = !DILocation(line: 1039, column: 13, scope: !1396)
!1414 = !DILocation(line: 1037, column: 5, scope: !1396)
!1415 = !DILocation(line: 1044, column: 9, scope: !700)
!1416 = !DILocation(line: 1044, column: 15, scope: !700)
!1417 = !DILocation(line: 1044, column: 9, scope: !680)
!1418 = !DILocation(line: 1045, column: 9, scope: !699)
!1419 = !DILocation(line: 1045, column: 16, scope: !699)
!1420 = !DILocation(line: 1045, column: 21, scope: !699)
!1421 = !DILocation(line: 1046, column: 13, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !699, file: !397, line: 1046, column: 13)
!1423 = !DILocation(line: 1046, column: 15, scope: !1422)
!1424 = !DILocation(line: 1046, column: 20, scope: !1422)
!1425 = !DILocation(line: 1046, column: 23, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1422, file: !397, discriminator: 1)
!1427 = !DILocation(line: 1046, column: 25, scope: !1422)
!1428 = !DILocation(line: 1046, column: 13, scope: !699)
!1429 = !DILocation(line: 1047, column: 13, scope: !1422)
!1430 = !DILocation(line: 1053, column: 17, scope: !1422)
!1431 = !DILocation(line: 1053, column: 19, scope: !1422)
!1432 = !DILocation(line: 1053, column: 18, scope: !1422)
!1433 = !DILocation(line: 1053, column: 22, scope: !1422)
!1434 = !DILocation(line: 1049, column: 13, scope: !1422)
!1435 = !DILocation(line: 1054, column: 13, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !699, file: !397, line: 1054, column: 13)
!1437 = !DILocation(line: 1054, column: 16, scope: !1436)
!1438 = !DILocation(line: 1054, column: 19, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1436, file: !397, discriminator: 1)
!1440 = !DILocation(line: 1054, column: 13, scope: !699)
!1441 = !DILocation(line: 1055, column: 50, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !397, line: 1054, column: 23)
!1443 = !DILocation(line: 1055, column: 53, scope: !1442)
!1444 = !DILocation(line: 1055, column: 52, scope: !1442)
!1445 = !DILocation(line: 1055, column: 13, scope: !1442)
!1446 = !DILocation(line: 1056, column: 9, scope: !1442)
!1447 = !DILocation(line: 1057, column: 9, scope: !699)
!1448 = !DILocation(line: 1058, column: 5, scope: !700)
!1449 = !DILocation(line: 1058, column: 5, scope: !699)
!1450 = !DILocation(line: 1064, column: 49, scope: !680)
!1451 = !DILocation(line: 1064, column: 11, scope: !680)
!1452 = !DILocation(line: 1068, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !680, file: !397, line: 1068, column: 9)
!1454 = !DILocation(line: 1068, column: 20, scope: !1453)
!1455 = !DILocation(line: 1068, column: 9, scope: !680)
!1456 = !DILocation(line: 1069, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !397, line: 1068, column: 29)
!1458 = !DILocation(line: 1070, column: 5, scope: !1457)
!1459 = !DILocation(line: 1072, column: 9, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !680, file: !397, line: 1072, column: 9)
!1461 = !DILocation(line: 1072, column: 9, scope: !680)
!1462 = !DILocation(line: 1073, column: 13, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !397, line: 1073, column: 13)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !397, line: 1072, column: 27)
!1465 = !DILocation(line: 1073, column: 13, scope: !1464)
!1466 = !DILocation(line: 1074, column: 13, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !397, line: 1073, column: 21)
!1468 = !DILocation(line: 1075, column: 9, scope: !1467)
!1469 = !DILocation(line: 1077, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !397, line: 1077, column: 17)
!1471 = distinct !DILexicalBlock(scope: !1463, file: !397, line: 1076, column: 14)
!1472 = !DILocation(line: 1077, column: 24, scope: !1470)
!1473 = !DILocation(line: 1077, column: 17, scope: !1471)
!1474 = !DILocation(line: 1078, column: 26, scope: !1470)
!1475 = !DILocation(line: 1078, column: 24, scope: !1470)
!1476 = !DILocation(line: 1078, column: 17, scope: !1470)
!1477 = !DILocation(line: 1079, column: 35, scope: !1471)
!1478 = !DILocation(line: 1079, column: 13, scope: !1471)
!1479 = !DILocation(line: 1080, column: 13, scope: !1471)
!1480 = !DILocation(line: 1082, column: 5, scope: !1464)
!1481 = !DILocation(line: 1085, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !680, file: !397, line: 1085, column: 9)
!1483 = !DILocation(line: 1085, column: 9, scope: !680)
!1484 = !DILocation(line: 1086, column: 24, scope: !1482)
!1485 = !DILocation(line: 1086, column: 10, scope: !1482)
!1486 = !DILocation(line: 1086, column: 22, scope: !1482)
!1487 = !DILocation(line: 1086, column: 9, scope: !1482)
!1488 = !DILocation(line: 1087, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !680, file: !397, line: 1087, column: 9)
!1490 = !DILocation(line: 1087, column: 9, scope: !680)
!1491 = !DILocation(line: 1088, column: 28, scope: !1489)
!1492 = !DILocation(line: 1088, column: 10, scope: !1489)
!1493 = !DILocation(line: 1088, column: 26, scope: !1489)
!1494 = !DILocation(line: 1088, column: 9, scope: !1489)
!1495 = !DILocation(line: 1089, column: 5, scope: !680)
!1496 = !DILocation(line: 1089, column: 12, scope: !680)
!1497 = !DILocation(line: 1089, column: 23, scope: !680)
!1498 = !{!1499, !1050, i64 0}
!1499 = !{!"gc_generation_stats", !1050, i64 0, !1050, i64 8, !1050, i64 16}
!1500 = !DILocation(line: 1090, column: 25, scope: !680)
!1501 = !DILocation(line: 1090, column: 5, scope: !680)
!1502 = !DILocation(line: 1090, column: 12, scope: !680)
!1503 = !DILocation(line: 1090, column: 22, scope: !680)
!1504 = !{!1499, !1050, i64 8}
!1505 = !DILocation(line: 1091, column: 29, scope: !680)
!1506 = !DILocation(line: 1091, column: 5, scope: !680)
!1507 = !DILocation(line: 1091, column: 12, scope: !680)
!1508 = !DILocation(line: 1091, column: 26, scope: !680)
!1509 = !{!1499, !1050, i64 16}
!1510 = !DILocation(line: 1092, column: 12, scope: !680)
!1511 = !DILocation(line: 1092, column: 14, scope: !680)
!1512 = !DILocation(line: 1092, column: 13, scope: !680)
!1513 = !DILocation(line: 1093, column: 1, scope: !680)
!1514 = !DILocation(line: 1092, column: 5, scope: !680)
!1515 = !DILocation(line: 1647, column: 11, scope: !416)
!1516 = !DILocation(line: 1647, column: 17, scope: !416)
!1517 = !DILocation(line: 1648, column: 9, scope: !416)
!1518 = !DILocation(line: 1648, column: 12, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !416, file: !397, discriminator: 1)
!1520 = !DILocation(line: 1648, column: 20, scope: !416)
!1521 = !DILocation(line: 1648, column: 34, scope: !416)
!1522 = !DILocation(line: 1648, column: 54, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !416, file: !397, discriminator: 2)
!1524 = !DILocation(line: 1648, column: 39, scope: !416)
!1525 = !DILocation(line: 1648, column: 65, scope: !416)
!1526 = !{!1527, !1050, i64 16}
!1527 = !{!"", !1049, i64 0, !1050, i64 16}
!1528 = !DILocation(line: 1648, column: 74, scope: !416)
!1529 = !DILocation(line: 1647, column: 9, scope: !410)
!1530 = !DILocation(line: 1649, column: 9, scope: !415)
!1531 = !DILocation(line: 1649, column: 15, scope: !415)
!1532 = !DILocation(line: 1650, column: 13, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !415, file: !397, line: 1650, column: 13)
!1534 = !DILocation(line: 1650, column: 19, scope: !1533)
!1535 = !DILocation(line: 1650, column: 13, scope: !415)
!1536 = !DILocation(line: 1651, column: 21, scope: !1533)
!1537 = !DILocation(line: 1651, column: 13, scope: !1533)
!1538 = !DILocation(line: 1654, column: 21, scope: !1533)
!1539 = !DILocation(line: 1659, column: 38, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !415, file: !397, line: 1659, column: 13)
!1541 = !DILocation(line: 1660, column: 56, scope: !1540)
!1542 = !DILocation(line: 1661, column: 55, scope: !1540)
!1543 = !DILocation(line: 1661, column: 40, scope: !1540)
!1544 = !DILocation(line: 1661, column: 66, scope: !1540)
!1545 = !DILocation(line: 1659, column: 13, scope: !1540)
!1546 = !DILocation(line: 1659, column: 13, scope: !415)
!1547 = !DILocation(line: 1662, column: 13, scope: !1540)
!1548 = !DILocation(line: 1663, column: 13, scope: !419)
!1549 = !DILocation(line: 1663, column: 19, scope: !419)
!1550 = !DILocation(line: 1663, column: 13, scope: !415)
!1551 = !DILocation(line: 1664, column: 13, scope: !418)
!1552 = !DILocation(line: 1664, column: 23, scope: !418)
!1553 = !DILocation(line: 1664, column: 43, scope: !418)
!1554 = !DILocation(line: 1665, column: 34, scope: !418)
!1555 = !DILocation(line: 1665, column: 20, scope: !418)
!1556 = !DILocation(line: 1665, column: 18, scope: !418)
!1557 = !DILocation(line: 1666, column: 18, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !418, file: !397, line: 1666, column: 17)
!1559 = !DILocation(line: 1666, column: 23, scope: !1558)
!1560 = !DILocation(line: 1666, column: 62, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1558, file: !397, discriminator: 1)
!1562 = !DILocation(line: 1666, column: 36, scope: !1558)
!1563 = !DILocation(line: 1666, column: 34, scope: !1558)
!1564 = !DILocation(line: 1666, column: 17, scope: !418)
!1565 = !DILocation(line: 1667, column: 39, scope: !1558)
!1566 = !DILocation(line: 1667, column: 17, scope: !1558)
!1567 = !DILocation(line: 1671, column: 56, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1558, file: !397, line: 1668, column: 18)
!1569 = !DILocation(line: 1671, column: 38, scope: !1568)
!1570 = !DILocation(line: 1671, column: 65, scope: !1568)
!1571 = !DILocation(line: 1671, column: 36, scope: !1568)
!1572 = !DILocation(line: 1669, column: 17, scope: !1568)
!1573 = !DILocation(line: 1674, column: 13, scope: !418)
!1574 = !DILocation(line: 1674, column: 18, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !422, file: !397, discriminator: 1)
!1576 = !DILocation(line: 1674, column: 28, scope: !422)
!1577 = !DILocation(line: 1674, column: 59, scope: !422)
!1578 = !DILocation(line: 1674, column: 70, scope: !425)
!1579 = !DILocation(line: 1674, column: 86, scope: !425)
!1580 = !DILocation(line: 1674, column: 70, scope: !422)
!1581 = !DILocation(line: 1674, column: 101, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !425, file: !397, discriminator: 2)
!1583 = !DILocation(line: 1674, column: 106, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !424, file: !397, discriminator: 4)
!1585 = !DILocation(line: 1674, column: 116, scope: !424)
!1586 = !DILocation(line: 1674, column: 146, scope: !424)
!1587 = !DILocation(line: 1674, column: 172, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !424, file: !397, line: 1674, column: 169)
!1589 = !DILocation(line: 1674, column: 189, scope: !1588)
!1590 = !DILocation(line: 1674, column: 169, scope: !1588)
!1591 = !DILocation(line: 1674, column: 199, scope: !1588)
!1592 = !DILocation(line: 1674, column: 169, scope: !424)
!1593 = !DILocation(line: 1674, column: 169, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !424, file: !397, discriminator: 5)
!1595 = !DILocation(line: 1674, column: 230, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1588, file: !397, discriminator: 6)
!1597 = !DILocation(line: 1674, column: 248, scope: !1588)
!1598 = !{!1049, !1024, i64 8}
!1599 = !DILocation(line: 1674, column: 258, scope: !1588)
!1600 = !{!1601, !1024, i64 48}
!1601 = !{!"_typeobject", !1527, i64 0, !1024, i64 24, !1050, i64 32, !1050, i64 40, !1024, i64 48, !1024, i64 56, !1024, i64 64, !1024, i64 72, !1024, i64 80, !1024, i64 88, !1024, i64 96, !1024, i64 104, !1024, i64 112, !1024, i64 120, !1024, i64 128, !1024, i64 136, !1024, i64 144, !1024, i64 152, !1024, i64 160, !1050, i64 168, !1024, i64 176, !1024, i64 184, !1024, i64 192, !1024, i64 200, !1050, i64 208, !1024, i64 216, !1024, i64 224, !1024, i64 232, !1024, i64 240, !1024, i64 248, !1024, i64 256, !1024, i64 264, !1024, i64 272, !1024, i64 280, !1050, i64 288, !1024, i64 296, !1024, i64 304, !1024, i64 312, !1024, i64 320, !1024, i64 328, !1024, i64 336, !1024, i64 344, !1024, i64 352, !1024, i64 360, !1024, i64 368, !1024, i64 376, !1142, i64 384, !1024, i64 392}
!1602 = !DILocation(line: 1674, column: 283, scope: !1588)
!1603 = !DILocation(line: 1674, column: 214, scope: !1588)
!1604 = !DILocation(line: 1674, column: 302, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !425, file: !397, discriminator: 7)
!1606 = !DILocation(line: 1674, column: 302, scope: !424)
!1607 = !DILocation(line: 1674, column: 302, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !424, file: !397, discriminator: 8)
!1609 = !DILocation(line: 1674, column: 302, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !424, file: !397, discriminator: 9)
!1611 = !DILocation(line: 1674, column: 315, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1613, file: !397, discriminator: 10)
!1613 = !DILexicalBlockFile(scope: !418, file: !397, discriminator: 3)
!1614 = !DILocation(line: 1674, column: 315, scope: !422)
!1615 = !DILocation(line: 1674, column: 315, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !422, file: !397, discriminator: 11)
!1617 = !DILocation(line: 1675, column: 13, scope: !418)
!1618 = !DILocation(line: 1675, column: 18, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !427, file: !397, discriminator: 1)
!1620 = !DILocation(line: 1675, column: 28, scope: !427)
!1621 = !DILocation(line: 1675, column: 59, scope: !427)
!1622 = !DILocation(line: 1675, column: 71, scope: !430)
!1623 = !DILocation(line: 1675, column: 87, scope: !430)
!1624 = !DILocation(line: 1675, column: 71, scope: !427)
!1625 = !DILocation(line: 1675, column: 102, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !430, file: !397, discriminator: 2)
!1627 = !DILocation(line: 1675, column: 107, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !429, file: !397, discriminator: 4)
!1629 = !DILocation(line: 1675, column: 117, scope: !429)
!1630 = !DILocation(line: 1675, column: 147, scope: !429)
!1631 = !DILocation(line: 1675, column: 173, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !429, file: !397, line: 1675, column: 170)
!1633 = !DILocation(line: 1675, column: 190, scope: !1632)
!1634 = !DILocation(line: 1675, column: 170, scope: !1632)
!1635 = !DILocation(line: 1675, column: 200, scope: !1632)
!1636 = !DILocation(line: 1675, column: 170, scope: !429)
!1637 = !DILocation(line: 1675, column: 170, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !429, file: !397, discriminator: 5)
!1639 = !DILocation(line: 1675, column: 231, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1632, file: !397, discriminator: 6)
!1641 = !DILocation(line: 1675, column: 249, scope: !1632)
!1642 = !DILocation(line: 1675, column: 259, scope: !1632)
!1643 = !DILocation(line: 1675, column: 284, scope: !1632)
!1644 = !DILocation(line: 1675, column: 215, scope: !1632)
!1645 = !DILocation(line: 1675, column: 303, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !430, file: !397, discriminator: 7)
!1647 = !DILocation(line: 1675, column: 303, scope: !429)
!1648 = !DILocation(line: 1675, column: 303, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !429, file: !397, discriminator: 8)
!1650 = !DILocation(line: 1675, column: 303, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !429, file: !397, discriminator: 9)
!1652 = !DILocation(line: 1675, column: 316, scope: !1612)
!1653 = !DILocation(line: 1675, column: 316, scope: !427)
!1654 = !DILocation(line: 1675, column: 316, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !427, file: !397, discriminator: 11)
!1656 = !DILocation(line: 1676, column: 9, scope: !419)
!1657 = !DILocation(line: 1676, column: 9, scope: !418)
!1658 = !DILocation(line: 1677, column: 5, scope: !416)
!1659 = !DILocation(line: 1677, column: 5, scope: !415)
!1660 = !DILocation(line: 1678, column: 1, scope: !410)
!1661 = !DILocation(line: 1683, column: 5, scope: !431)
!1662 = !DILocation(line: 1683, column: 10, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !434, file: !397, discriminator: 1)
!1664 = !DILocation(line: 1683, column: 20, scope: !434)
!1665 = !DILocation(line: 1683, column: 43, scope: !434)
!1666 = !DILocation(line: 1683, column: 59, scope: !438)
!1667 = !DILocation(line: 1683, column: 67, scope: !438)
!1668 = !DILocation(line: 1683, column: 59, scope: !434)
!1669 = !DILocation(line: 1683, column: 96, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !437, file: !397, discriminator: 2)
!1671 = !DILocation(line: 1683, column: 110, scope: !437)
!1672 = !DILocation(line: 1683, column: 115, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !436, file: !397, discriminator: 4)
!1674 = !DILocation(line: 1683, column: 125, scope: !436)
!1675 = !DILocation(line: 1683, column: 155, scope: !436)
!1676 = !DILocation(line: 1683, column: 173, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !436, file: !397, line: 1683, column: 170)
!1678 = !DILocation(line: 1683, column: 190, scope: !1677)
!1679 = !DILocation(line: 1683, column: 170, scope: !1677)
!1680 = !DILocation(line: 1683, column: 200, scope: !1677)
!1681 = !DILocation(line: 1683, column: 170, scope: !436)
!1682 = !DILocation(line: 1683, column: 170, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !436, file: !397, discriminator: 5)
!1684 = !DILocation(line: 1683, column: 231, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1677, file: !397, discriminator: 6)
!1686 = !DILocation(line: 1683, column: 249, scope: !1677)
!1687 = !DILocation(line: 1683, column: 259, scope: !1677)
!1688 = !DILocation(line: 1683, column: 284, scope: !1677)
!1689 = !DILocation(line: 1683, column: 215, scope: !1677)
!1690 = !DILocation(line: 1683, column: 303, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !437, file: !397, discriminator: 7)
!1692 = !DILocation(line: 1683, column: 303, scope: !436)
!1693 = !DILocation(line: 1683, column: 303, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !436, file: !397, discriminator: 8)
!1695 = !DILocation(line: 1683, column: 316, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !437, file: !397, discriminator: 9)
!1697 = !DILocation(line: 1683, column: 318, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !397, discriminator: 10)
!1699 = !DILexicalBlockFile(scope: !431, file: !397, discriminator: 3)
!1700 = !DILocation(line: 1683, column: 318, scope: !434)
!1701 = !DILocation(line: 1684, column: 5, scope: !431)
!1702 = !DILocation(line: 1684, column: 10, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !440, file: !397, discriminator: 1)
!1704 = !DILocation(line: 1684, column: 20, scope: !440)
!1705 = !DILocation(line: 1684, column: 43, scope: !440)
!1706 = !DILocation(line: 1684, column: 54, scope: !444)
!1707 = !DILocation(line: 1684, column: 62, scope: !444)
!1708 = !DILocation(line: 1684, column: 54, scope: !440)
!1709 = !DILocation(line: 1684, column: 86, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !443, file: !397, discriminator: 2)
!1711 = !DILocation(line: 1684, column: 100, scope: !443)
!1712 = !DILocation(line: 1684, column: 105, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !442, file: !397, discriminator: 4)
!1714 = !DILocation(line: 1684, column: 115, scope: !442)
!1715 = !DILocation(line: 1684, column: 145, scope: !442)
!1716 = !DILocation(line: 1684, column: 163, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !442, file: !397, line: 1684, column: 160)
!1718 = !DILocation(line: 1684, column: 180, scope: !1717)
!1719 = !DILocation(line: 1684, column: 160, scope: !1717)
!1720 = !DILocation(line: 1684, column: 190, scope: !1717)
!1721 = !DILocation(line: 1684, column: 160, scope: !442)
!1722 = !DILocation(line: 1684, column: 160, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !442, file: !397, discriminator: 5)
!1724 = !DILocation(line: 1684, column: 221, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1717, file: !397, discriminator: 6)
!1726 = !DILocation(line: 1684, column: 239, scope: !1717)
!1727 = !DILocation(line: 1684, column: 249, scope: !1717)
!1728 = !DILocation(line: 1684, column: 274, scope: !1717)
!1729 = !DILocation(line: 1684, column: 205, scope: !1717)
!1730 = !DILocation(line: 1684, column: 293, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !443, file: !397, discriminator: 7)
!1732 = !DILocation(line: 1684, column: 293, scope: !442)
!1733 = !DILocation(line: 1684, column: 293, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !442, file: !397, discriminator: 8)
!1735 = !DILocation(line: 1684, column: 306, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !443, file: !397, discriminator: 9)
!1737 = !DILocation(line: 1684, column: 308, scope: !1698)
!1738 = !DILocation(line: 1684, column: 308, scope: !440)
!1739 = !DILocation(line: 1685, column: 1, scope: !431)
!1740 = !DILocation(line: 1689, column: 23, scope: !445)
!1741 = !DILocation(line: 1691, column: 48, scope: !445)
!1742 = !DILocation(line: 1691, column: 50, scope: !445)
!1743 = !DILocation(line: 1691, column: 21, scope: !445)
!1744 = !DILocation(line: 1691, column: 5, scope: !445)
!1745 = !DILocation(line: 1692, column: 1, scope: !445)
!1746 = !DILocation(line: 1703, column: 25, scope: !450)
!1747 = !DILocation(line: 1705, column: 5, scope: !450)
!1748 = !DILocation(line: 1705, column: 10, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !454, file: !397, discriminator: 1)
!1750 = !DILocation(line: 1705, column: 21, scope: !454)
!1751 = !DILocation(line: 1705, column: 40, scope: !454)
!1752 = !DILocation(line: 1705, column: 26, scope: !454)
!1753 = !DILocation(line: 1705, column: 43, scope: !454)
!1754 = !DILocation(line: 1705, column: 54, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !454, file: !397, line: 1705, column: 52)
!1756 = !DILocation(line: 1705, column: 58, scope: !1755)
!1757 = !DILocation(line: 1705, column: 61, scope: !1755)
!1758 = !{!1348, !1050, i64 16}
!1759 = !DILocation(line: 1705, column: 69, scope: !1755)
!1760 = !DILocation(line: 1705, column: 77, scope: !1755)
!1761 = !DILocation(line: 1705, column: 52, scope: !454)
!1762 = !DILocation(line: 1705, column: 86, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1755, file: !397, discriminator: 2)
!1764 = !DILocation(line: 1705, column: 130, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !454, file: !397, discriminator: 3)
!1766 = !DILocation(line: 1705, column: 155, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1768, file: !397, discriminator: 4)
!1768 = distinct !DILexicalBlock(scope: !454, file: !397, line: 1705, column: 133)
!1769 = !DILocation(line: 1705, column: 159, scope: !1768)
!1770 = !DILocation(line: 1705, column: 162, scope: !1768)
!1771 = !DILocation(line: 1705, column: 170, scope: !1768)
!1772 = !DILocation(line: 1705, column: 197, scope: !1768)
!1773 = !DILocation(line: 1705, column: 136, scope: !1768)
!1774 = !DILocation(line: 1705, column: 140, scope: !1768)
!1775 = !DILocation(line: 1705, column: 143, scope: !1768)
!1776 = !DILocation(line: 1705, column: 151, scope: !1768)
!1777 = !DILocation(line: 1705, column: 226, scope: !1768)
!1778 = !DILocation(line: 1705, column: 226, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1768, file: !397, discriminator: 5)
!1780 = !DILocation(line: 1705, column: 255, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !454, file: !397, discriminator: 6)
!1782 = !DILocation(line: 1705, column: 239, scope: !454)
!1783 = !DILocation(line: 1705, column: 242, scope: !454)
!1784 = !DILocation(line: 1705, column: 245, scope: !454)
!1785 = !DILocation(line: 1705, column: 253, scope: !454)
!1786 = !DILocation(line: 1705, column: 290, scope: !454)
!1787 = !DILocation(line: 1705, column: 309, scope: !454)
!1788 = !DILocation(line: 1705, column: 312, scope: !454)
!1789 = !{!1348, !1024, i64 8}
!1790 = !DILocation(line: 1705, column: 274, scope: !454)
!1791 = !DILocation(line: 1705, column: 277, scope: !454)
!1792 = !DILocation(line: 1705, column: 280, scope: !454)
!1793 = !DILocation(line: 1705, column: 288, scope: !454)
!1794 = !DILocation(line: 1705, column: 349, scope: !454)
!1795 = !DILocation(line: 1705, column: 321, scope: !454)
!1796 = !DILocation(line: 1705, column: 324, scope: !454)
!1797 = !DILocation(line: 1705, column: 327, scope: !454)
!1798 = !DILocation(line: 1705, column: 336, scope: !454)
!1799 = !DILocation(line: 1705, column: 339, scope: !454)
!1800 = !DILocation(line: 1705, column: 347, scope: !454)
!1801 = !DILocation(line: 1705, column: 384, scope: !454)
!1802 = !DILocation(line: 1705, column: 352, scope: !454)
!1803 = !DILocation(line: 1705, column: 371, scope: !454)
!1804 = !DILocation(line: 1705, column: 374, scope: !454)
!1805 = !DILocation(line: 1705, column: 382, scope: !454)
!1806 = !DILocation(line: 1705, column: 387, scope: !450)
!1807 = !DILocation(line: 1705, column: 387, scope: !454)
!1808 = !DILocation(line: 1706, column: 1, scope: !450)
!1809 = !DILocation(line: 1709, column: 27, scope: !455)
!1810 = !DILocation(line: 1714, column: 27, scope: !460)
!1811 = !DILocation(line: 1714, column: 13, scope: !460)
!1812 = !DILocation(line: 1714, column: 30, scope: !460)
!1813 = !DILocation(line: 1714, column: 36, scope: !460)
!1814 = !DILocation(line: 1714, column: 39, scope: !460)
!1815 = !DILocation(line: 1714, column: 47, scope: !460)
!1816 = !DILocation(line: 1714, column: 55, scope: !460)
!1817 = !DILocation(line: 1714, column: 9, scope: !455)
!1818 = !DILocation(line: 1715, column: 9, scope: !460)
!1819 = !DILocation(line: 1715, column: 14, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !459, file: !397, discriminator: 1)
!1821 = !DILocation(line: 1715, column: 25, scope: !459)
!1822 = !DILocation(line: 1715, column: 44, scope: !459)
!1823 = !DILocation(line: 1715, column: 30, scope: !459)
!1824 = !DILocation(line: 1715, column: 47, scope: !459)
!1825 = !DILocation(line: 1715, column: 66, scope: !459)
!1826 = !DILocation(line: 1715, column: 91, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1828, file: !397, discriminator: 2)
!1828 = distinct !DILexicalBlock(scope: !459, file: !397, line: 1715, column: 69)
!1829 = !DILocation(line: 1715, column: 95, scope: !1828)
!1830 = !DILocation(line: 1715, column: 98, scope: !1828)
!1831 = !DILocation(line: 1715, column: 106, scope: !1828)
!1832 = !DILocation(line: 1715, column: 133, scope: !1828)
!1833 = !DILocation(line: 1715, column: 72, scope: !1828)
!1834 = !DILocation(line: 1715, column: 76, scope: !1828)
!1835 = !DILocation(line: 1715, column: 79, scope: !1828)
!1836 = !DILocation(line: 1715, column: 87, scope: !1828)
!1837 = !DILocation(line: 1715, column: 162, scope: !1828)
!1838 = !DILocation(line: 1715, column: 162, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1828, file: !397, discriminator: 3)
!1840 = !DILocation(line: 1715, column: 203, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !459, file: !397, discriminator: 4)
!1842 = !DILocation(line: 1715, column: 206, scope: !459)
!1843 = !DILocation(line: 1715, column: 209, scope: !459)
!1844 = !DILocation(line: 1715, column: 175, scope: !459)
!1845 = !DILocation(line: 1715, column: 178, scope: !459)
!1846 = !DILocation(line: 1715, column: 181, scope: !459)
!1847 = !DILocation(line: 1715, column: 190, scope: !459)
!1848 = !DILocation(line: 1715, column: 193, scope: !459)
!1849 = !DILocation(line: 1715, column: 201, scope: !459)
!1850 = !DILocation(line: 1715, column: 246, scope: !459)
!1851 = !DILocation(line: 1715, column: 249, scope: !459)
!1852 = !DILocation(line: 1715, column: 252, scope: !459)
!1853 = !DILocation(line: 1715, column: 218, scope: !459)
!1854 = !DILocation(line: 1715, column: 221, scope: !459)
!1855 = !DILocation(line: 1715, column: 224, scope: !459)
!1856 = !DILocation(line: 1715, column: 233, scope: !459)
!1857 = !DILocation(line: 1715, column: 236, scope: !459)
!1858 = !DILocation(line: 1715, column: 244, scope: !459)
!1859 = !DILocation(line: 1715, column: 261, scope: !459)
!1860 = !DILocation(line: 1715, column: 264, scope: !459)
!1861 = !DILocation(line: 1715, column: 267, scope: !459)
!1862 = !DILocation(line: 1715, column: 275, scope: !459)
!1863 = !DILocation(line: 1715, column: 289, scope: !460)
!1864 = !DILocation(line: 1715, column: 289, scope: !459)
!1865 = !DILocation(line: 1715, column: 289, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !459, file: !397, discriminator: 5)
!1867 = !DILocation(line: 1716, column: 1, scope: !455)
!1868 = !DILocation(line: 1719, column: 28, scope: !461)
!1869 = !DILocation(line: 1721, column: 5, scope: !461)
!1870 = !DILocation(line: 1721, column: 15, scope: !461)
!1871 = !DILocation(line: 1722, column: 5, scope: !461)
!1872 = !DILocation(line: 1722, column: 16, scope: !461)
!1873 = !DILocation(line: 1723, column: 9, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !461, file: !397, line: 1723, column: 9)
!1875 = !DILocation(line: 1723, column: 19, scope: !1874)
!1876 = !DILocation(line: 1723, column: 9, scope: !461)
!1877 = !DILocation(line: 1724, column: 16, scope: !1874)
!1878 = !DILocation(line: 1724, column: 9, scope: !1874)
!1879 = !DILocation(line: 1726, column: 29, scope: !461)
!1880 = !DILocation(line: 1726, column: 27, scope: !461)
!1881 = !DILocation(line: 1725, column: 22, scope: !461)
!1882 = !DILocation(line: 1725, column: 9, scope: !461)
!1883 = !DILocation(line: 1725, column: 7, scope: !461)
!1884 = !DILocation(line: 1727, column: 9, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !461, file: !397, line: 1727, column: 9)
!1886 = !DILocation(line: 1727, column: 11, scope: !1885)
!1887 = !DILocation(line: 1727, column: 9, scope: !461)
!1888 = !DILocation(line: 1728, column: 16, scope: !1885)
!1889 = !DILocation(line: 1728, column: 9, scope: !1885)
!1890 = !DILocation(line: 1729, column: 5, scope: !461)
!1891 = !DILocation(line: 1729, column: 8, scope: !461)
!1892 = !DILocation(line: 1729, column: 11, scope: !461)
!1893 = !DILocation(line: 1729, column: 19, scope: !461)
!1894 = !DILocation(line: 1730, column: 5, scope: !461)
!1895 = !DILocation(line: 1730, column: 30, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1897, file: !397, discriminator: 1)
!1897 = distinct !DILexicalBlock(scope: !461, file: !397, line: 1730, column: 8)
!1898 = !DILocation(line: 1730, column: 34, scope: !1897)
!1899 = !DILocation(line: 1730, column: 37, scope: !1897)
!1900 = !DILocation(line: 1730, column: 45, scope: !1897)
!1901 = !DILocation(line: 1730, column: 72, scope: !1897)
!1902 = !DILocation(line: 1730, column: 11, scope: !1897)
!1903 = !DILocation(line: 1730, column: 15, scope: !1897)
!1904 = !DILocation(line: 1730, column: 18, scope: !1897)
!1905 = !DILocation(line: 1730, column: 26, scope: !1897)
!1906 = !DILocation(line: 1730, column: 101, scope: !1897)
!1907 = !DILocation(line: 1730, column: 101, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1897, file: !397, discriminator: 2)
!1909 = !DILocation(line: 1731, column: 25, scope: !461)
!1910 = !DILocation(line: 1732, column: 24, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !461, file: !397, line: 1732, column: 9)
!1912 = !DILocation(line: 1732, column: 47, scope: !1911)
!1913 = !{!1254, !1142, i64 24}
!1914 = !DILocation(line: 1732, column: 30, scope: !1911)
!1915 = !DILocation(line: 1732, column: 57, scope: !1911)
!1916 = !DILocation(line: 1733, column: 9, scope: !1911)
!1917 = !DILocation(line: 1733, column: 17, scope: !1911)
!1918 = !DILocation(line: 1734, column: 24, scope: !1911)
!1919 = !DILocation(line: 1734, column: 9, scope: !1911)
!1920 = !DILocation(line: 1734, column: 34, scope: !1911)
!1921 = !DILocation(line: 1735, column: 10, scope: !1911)
!1922 = !DILocation(line: 1735, column: 21, scope: !1911)
!1923 = !DILocation(line: 1736, column: 10, scope: !1911)
!1924 = !DILocation(line: 1732, column: 9, scope: !461)
!1925 = !DILocation(line: 1737, column: 20, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1911, file: !397, line: 1736, column: 28)
!1927 = !DILocation(line: 1738, column: 9, scope: !1926)
!1928 = !DILocation(line: 1739, column: 20, scope: !1926)
!1929 = !DILocation(line: 1740, column: 5, scope: !1926)
!1930 = !DILocation(line: 1741, column: 38, scope: !461)
!1931 = !DILocation(line: 1741, column: 40, scope: !461)
!1932 = !DILocation(line: 1741, column: 11, scope: !461)
!1933 = !DILocation(line: 1741, column: 8, scope: !461)
!1934 = !DILocation(line: 1742, column: 12, scope: !461)
!1935 = !DILocation(line: 1742, column: 5, scope: !461)
!1936 = !DILocation(line: 1743, column: 1, scope: !461)
!1937 = !DILocation(line: 1148, column: 5, scope: !890)
!1938 = !DILocation(line: 1148, column: 9, scope: !890)
!1939 = !DILocation(line: 1149, column: 5, scope: !890)
!1940 = !DILocation(line: 1149, column: 16, scope: !890)
!1941 = !DILocation(line: 1154, column: 12, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !890, file: !397, line: 1154, column: 5)
!1943 = !DILocation(line: 1154, column: 10, scope: !1942)
!1944 = !DILocation(line: 1154, column: 20, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1946, file: !397, discriminator: 2)
!1946 = !DILexicalBlockFile(scope: !1947, file: !397, discriminator: 1)
!1947 = distinct !DILexicalBlock(scope: !1942, file: !397, line: 1154, column: 5)
!1948 = !DILocation(line: 1154, column: 22, scope: !1947)
!1949 = !DILocation(line: 1154, column: 5, scope: !1942)
!1950 = !DILocation(line: 1155, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !397, line: 1155, column: 13)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !397, line: 1154, column: 33)
!1953 = !DILocation(line: 1155, column: 13, scope: !1951)
!1954 = !DILocation(line: 1155, column: 28, scope: !1951)
!1955 = !DILocation(line: 1155, column: 48, scope: !1951)
!1956 = !DILocation(line: 1155, column: 36, scope: !1951)
!1957 = !DILocation(line: 1155, column: 51, scope: !1951)
!1958 = !DILocation(line: 1155, column: 34, scope: !1951)
!1959 = !DILocation(line: 1155, column: 13, scope: !1952)
!1960 = !DILocation(line: 1160, column: 17, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !397, line: 1160, column: 17)
!1962 = distinct !DILexicalBlock(scope: !1951, file: !397, line: 1155, column: 62)
!1963 = !DILocation(line: 1160, column: 19, scope: !1961)
!1964 = !DILocation(line: 1161, column: 17, scope: !1961)
!1965 = !DILocation(line: 1161, column: 20, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1961, file: !397, discriminator: 1)
!1967 = !DILocation(line: 1161, column: 41, scope: !1961)
!1968 = !DILocation(line: 1161, column: 58, scope: !1961)
!1969 = !DILocation(line: 1161, column: 39, scope: !1961)
!1970 = !DILocation(line: 1160, column: 17, scope: !1962)
!1971 = !DILocation(line: 1162, column: 17, scope: !1961)
!1972 = !DILocation(line: 1163, column: 39, scope: !1962)
!1973 = !DILocation(line: 1163, column: 17, scope: !1962)
!1974 = !DILocation(line: 1163, column: 15, scope: !1962)
!1975 = !DILocation(line: 1164, column: 13, scope: !1962)
!1976 = !DILocation(line: 1166, column: 5, scope: !1952)
!1977 = !DILocation(line: 1154, column: 29, scope: !1947)
!1978 = !DILocation(line: 1154, column: 5, scope: !1947)
!1979 = !DILocation(line: 1167, column: 12, scope: !890)
!1980 = !DILocation(line: 1168, column: 1, scope: !890)
!1981 = !DILocation(line: 1167, column: 5, scope: !890)
!1982 = !DILocation(line: 1746, column: 32, scope: !468)
!1983 = !DILocation(line: 1748, column: 5, scope: !468)
!1984 = !DILocation(line: 1748, column: 15, scope: !468)
!1985 = !DILocation(line: 1748, column: 43, scope: !468)
!1986 = !DILocation(line: 1748, column: 48, scope: !468)
!1987 = !{!1601, !1050, i64 32}
!1988 = !DILocation(line: 1748, column: 20, scope: !468)
!1989 = !DILocation(line: 1749, column: 9, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !468, file: !397, line: 1749, column: 9)
!1991 = !DILocation(line: 1749, column: 12, scope: !1990)
!1992 = !DILocation(line: 1749, column: 9, scope: !468)
!1993 = !DILocation(line: 1750, column: 48, scope: !1990)
!1994 = !DILocation(line: 1750, column: 30, scope: !1990)
!1995 = !DILocation(line: 1750, column: 36, scope: !1990)
!1996 = !DILocation(line: 1750, column: 45, scope: !1990)
!1997 = !DILocation(line: 1750, column: 82, scope: !1990)
!1998 = !DILocation(line: 1750, column: 89, scope: !1990)
!1999 = !DILocation(line: 1750, column: 100, scope: !1990)
!2000 = !DILocation(line: 1750, column: 107, scope: !1990)
!2001 = !DILocation(line: 1750, column: 12, scope: !1990)
!2002 = !DILocation(line: 1750, column: 9, scope: !1990)
!2003 = !DILocation(line: 1751, column: 12, scope: !468)
!2004 = !DILocation(line: 1752, column: 1, scope: !468)
!2005 = !DILocation(line: 1751, column: 5, scope: !468)
!2006 = !DILocation(line: 1755, column: 35, scope: !476)
!2007 = !DILocation(line: 1755, column: 50, scope: !476)
!2008 = !DILocation(line: 1757, column: 5, scope: !476)
!2009 = !DILocation(line: 1757, column: 12, scope: !476)
!2010 = !DILocation(line: 1758, column: 5, scope: !476)
!2011 = !DILocation(line: 1758, column: 18, scope: !476)
!2012 = !DILocation(line: 1760, column: 9, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !476, file: !397, line: 1760, column: 9)
!2014 = !DILocation(line: 1760, column: 16, scope: !2013)
!2015 = !DILocation(line: 1760, column: 9, scope: !476)
!2016 = !DILocation(line: 1761, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !397, line: 1760, column: 21)
!2018 = !DILocation(line: 1762, column: 9, scope: !2017)
!2019 = !DILocation(line: 1764, column: 24, scope: !476)
!2020 = !DILocation(line: 1764, column: 29, scope: !476)
!2021 = !DILocation(line: 1764, column: 45, scope: !476)
!2022 = !DILocation(line: 1764, column: 54, scope: !476)
!2023 = !DILocation(line: 1764, column: 59, scope: !476)
!2024 = !{!1601, !1050, i64 40}
!2025 = !DILocation(line: 1764, column: 52, scope: !476)
!2026 = !DILocation(line: 1764, column: 42, scope: !476)
!2027 = !DILocation(line: 1764, column: 72, scope: !476)
!2028 = !DILocation(line: 1764, column: 93, scope: !476)
!2029 = !DILocation(line: 1764, column: 10, scope: !476)
!2030 = !DILocation(line: 1765, column: 46, scope: !476)
!2031 = !DILocation(line: 1765, column: 26, scope: !476)
!2032 = !DILocation(line: 1765, column: 10, scope: !476)
!2033 = !DILocation(line: 1765, column: 8, scope: !476)
!2034 = !DILocation(line: 1766, column: 9, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !476, file: !397, line: 1766, column: 9)
!2036 = !DILocation(line: 1766, column: 12, scope: !2035)
!2037 = !DILocation(line: 1766, column: 9, scope: !476)
!2038 = !DILocation(line: 1767, column: 51, scope: !2035)
!2039 = !DILocation(line: 1767, column: 33, scope: !2035)
!2040 = !DILocation(line: 1767, column: 39, scope: !2035)
!2041 = !DILocation(line: 1767, column: 48, scope: !2035)
!2042 = !DILocation(line: 1767, column: 97, scope: !2035)
!2043 = !DILocation(line: 1767, column: 77, scope: !2035)
!2044 = !DILocation(line: 1767, column: 64, scope: !2035)
!2045 = !DILocation(line: 1767, column: 84, scope: !2035)
!2046 = !DILocation(line: 1767, column: 93, scope: !2035)
!2047 = !DILocation(line: 1767, column: 133, scope: !2035)
!2048 = !DILocation(line: 1767, column: 119, scope: !2035)
!2049 = !DILocation(line: 1767, column: 141, scope: !2035)
!2050 = !DILocation(line: 1767, column: 152, scope: !2035)
!2051 = !DILocation(line: 1767, column: 160, scope: !2035)
!2052 = !DILocation(line: 1767, column: 12, scope: !2035)
!2053 = !DILocation(line: 1767, column: 9, scope: !2035)
!2054 = !DILocation(line: 1768, column: 12, scope: !476)
!2055 = !DILocation(line: 1768, column: 5, scope: !476)
!2056 = !DILocation(line: 1769, column: 1, scope: !476)
!2057 = !DILocation(line: 1772, column: 34, scope: !484)
!2058 = !DILocation(line: 1772, column: 49, scope: !484)
!2059 = !DILocation(line: 1774, column: 5, scope: !484)
!2060 = !DILocation(line: 1774, column: 18, scope: !484)
!2061 = !DILocation(line: 1774, column: 56, scope: !484)
!2062 = !DILocation(line: 1774, column: 44, scope: !484)
!2063 = !DILocation(line: 1774, column: 62, scope: !484)
!2064 = !DILocation(line: 1774, column: 73, scope: !484)
!2065 = !DILocation(line: 1774, column: 89, scope: !484)
!2066 = !DILocation(line: 1774, column: 112, scope: !484)
!2067 = !DILocation(line: 1774, column: 100, scope: !484)
!2068 = !DILocation(line: 1774, column: 118, scope: !484)
!2069 = !DILocation(line: 1774, column: 129, scope: !484)
!2070 = !DILocation(line: 1774, column: 96, scope: !484)
!2071 = !DILocation(line: 1774, column: 86, scope: !484)
!2072 = !DILocation(line: 1774, column: 142, scope: !484)
!2073 = !DILocation(line: 1774, column: 163, scope: !484)
!2074 = !DILocation(line: 1775, column: 5, scope: !484)
!2075 = !DILocation(line: 1775, column: 16, scope: !484)
!2076 = !DILocation(line: 1775, column: 35, scope: !484)
!2077 = !DILocation(line: 1775, column: 21, scope: !484)
!2078 = !DILocation(line: 1775, column: 38, scope: !484)
!2079 = !DILocation(line: 1776, column: 9, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !484, file: !397, line: 1776, column: 9)
!2081 = !DILocation(line: 1776, column: 19, scope: !2080)
!2082 = !DILocation(line: 1776, column: 9, scope: !484)
!2083 = !DILocation(line: 1777, column: 31, scope: !2080)
!2084 = !DILocation(line: 1777, column: 16, scope: !2080)
!2085 = !DILocation(line: 1777, column: 9, scope: !2080)
!2086 = !DILocation(line: 1778, column: 39, scope: !484)
!2087 = !DILocation(line: 1778, column: 62, scope: !484)
!2088 = !DILocation(line: 1778, column: 60, scope: !484)
!2089 = !DILocation(line: 1778, column: 22, scope: !484)
!2090 = !DILocation(line: 1778, column: 9, scope: !484)
!2091 = !DILocation(line: 1778, column: 7, scope: !484)
!2092 = !DILocation(line: 1779, column: 9, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !484, file: !397, line: 1779, column: 9)
!2094 = !DILocation(line: 1779, column: 11, scope: !2093)
!2095 = !DILocation(line: 1779, column: 9, scope: !484)
!2096 = !DILocation(line: 1780, column: 31, scope: !2093)
!2097 = !DILocation(line: 1780, column: 16, scope: !2093)
!2098 = !DILocation(line: 1780, column: 9, scope: !2093)
!2099 = !DILocation(line: 1781, column: 54, scope: !484)
!2100 = !DILocation(line: 1781, column: 56, scope: !484)
!2101 = !DILocation(line: 1781, column: 27, scope: !484)
!2102 = !DILocation(line: 1781, column: 10, scope: !484)
!2103 = !DILocation(line: 1781, column: 8, scope: !484)
!2104 = !DILocation(line: 1782, column: 39, scope: !484)
!2105 = !DILocation(line: 1782, column: 22, scope: !484)
!2106 = !DILocation(line: 1782, column: 28, scope: !484)
!2107 = !DILocation(line: 1782, column: 37, scope: !484)
!2108 = !DILocation(line: 1783, column: 12, scope: !484)
!2109 = !DILocation(line: 1783, column: 5, scope: !484)
!2110 = !DILocation(line: 1784, column: 1, scope: !484)
!2111 = !DILocation(line: 1787, column: 23, scope: !493)
!2112 = !DILocation(line: 1789, column: 5, scope: !493)
!2113 = !DILocation(line: 1789, column: 16, scope: !493)
!2114 = !DILocation(line: 1789, column: 35, scope: !493)
!2115 = !DILocation(line: 1789, column: 21, scope: !493)
!2116 = !DILocation(line: 1789, column: 38, scope: !493)
!2117 = !DILocation(line: 1790, column: 27, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !493, file: !397, line: 1790, column: 9)
!2119 = !DILocation(line: 1790, column: 13, scope: !2118)
!2120 = !DILocation(line: 1790, column: 30, scope: !2118)
!2121 = !DILocation(line: 1790, column: 36, scope: !2118)
!2122 = !DILocation(line: 1790, column: 39, scope: !2118)
!2123 = !DILocation(line: 1790, column: 47, scope: !2118)
!2124 = !DILocation(line: 1790, column: 55, scope: !2118)
!2125 = !DILocation(line: 1790, column: 9, scope: !493)
!2126 = !DILocation(line: 1791, column: 24, scope: !2118)
!2127 = !DILocation(line: 1791, column: 9, scope: !2118)
!2128 = !DILocation(line: 1792, column: 24, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !493, file: !397, line: 1792, column: 9)
!2130 = !DILocation(line: 1792, column: 30, scope: !2129)
!2131 = !DILocation(line: 1792, column: 9, scope: !493)
!2132 = !DILocation(line: 1793, column: 29, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !397, line: 1792, column: 35)
!2134 = !DILocation(line: 1794, column: 5, scope: !2133)
!2135 = !DILocation(line: 1795, column: 19, scope: !493)
!2136 = !DILocation(line: 1795, column: 5, scope: !493)
!2137 = !DILocation(line: 1796, column: 1, scope: !493)
!2138 = !DILocation(line: 261, column: 27, scope: !894)
!2139 = !DILocation(line: 263, column: 36, scope: !894)
!2140 = !DILocation(line: 263, column: 42, scope: !894)
!2141 = !DILocation(line: 263, column: 45, scope: !894)
!2142 = !DILocation(line: 263, column: 5, scope: !894)
!2143 = !DILocation(line: 263, column: 11, scope: !894)
!2144 = !DILocation(line: 263, column: 14, scope: !894)
!2145 = !DILocation(line: 263, column: 23, scope: !894)
!2146 = !DILocation(line: 263, column: 26, scope: !894)
!2147 = !DILocation(line: 263, column: 34, scope: !894)
!2148 = !DILocation(line: 264, column: 36, scope: !894)
!2149 = !DILocation(line: 264, column: 42, scope: !894)
!2150 = !DILocation(line: 264, column: 45, scope: !894)
!2151 = !DILocation(line: 264, column: 5, scope: !894)
!2152 = !DILocation(line: 264, column: 11, scope: !894)
!2153 = !DILocation(line: 264, column: 14, scope: !894)
!2154 = !DILocation(line: 264, column: 23, scope: !894)
!2155 = !DILocation(line: 264, column: 26, scope: !894)
!2156 = !DILocation(line: 264, column: 34, scope: !894)
!2157 = !DILocation(line: 265, column: 5, scope: !894)
!2158 = !DILocation(line: 265, column: 11, scope: !894)
!2159 = !DILocation(line: 265, column: 14, scope: !894)
!2160 = !DILocation(line: 265, column: 22, scope: !894)
!2161 = !DILocation(line: 266, column: 1, scope: !894)
!2162 = !DILocation(line: 1176, column: 21, scope: !497)
!2163 = !DILocation(line: 1176, column: 37, scope: !497)
!2164 = !DILocation(line: 1178, column: 13, scope: !497)
!2165 = !DILocation(line: 1179, column: 51, scope: !497)
!2166 = !DILocation(line: 1180, column: 5, scope: !497)
!2167 = !DILocation(line: 1189, column: 22, scope: !501)
!2168 = !DILocation(line: 1189, column: 38, scope: !501)
!2169 = !DILocation(line: 1191, column: 13, scope: !501)
!2170 = !DILocation(line: 1192, column: 51, scope: !501)
!2171 = !DILocation(line: 1193, column: 5, scope: !501)
!2172 = !DILocation(line: 1202, column: 24, scope: !505)
!2173 = !DILocation(line: 1202, column: 40, scope: !505)
!2174 = !DILocation(line: 1204, column: 34, scope: !505)
!2175 = !DILocation(line: 1204, column: 28, scope: !505)
!2176 = !DILocation(line: 1204, column: 12, scope: !505)
!2177 = !DILocation(line: 1204, column: 5, scope: !505)
!2178 = !DILocation(line: 1256, column: 24, scope: !509)
!2179 = !DILocation(line: 1256, column: 40, scope: !509)
!2180 = !DILocation(line: 1258, column: 27, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !509, file: !397, line: 1258, column: 9)
!2182 = !DILocation(line: 1258, column: 10, scope: !2181)
!2183 = !DILocation(line: 1258, column: 9, scope: !509)
!2184 = !DILocation(line: 1259, column: 9, scope: !2181)
!2185 = !DILocation(line: 1261, column: 51, scope: !509)
!2186 = !DILocation(line: 1262, column: 5, scope: !509)
!2187 = !DILocation(line: 1263, column: 1, scope: !509)
!2188 = !DILocation(line: 1271, column: 24, scope: !513)
!2189 = !DILocation(line: 1271, column: 40, scope: !513)
!2190 = !DILocation(line: 1273, column: 31, scope: !513)
!2191 = !DILocation(line: 1273, column: 12, scope: !513)
!2192 = !DILocation(line: 1273, column: 5, scope: !513)
!2193 = !DILocation(line: 1320, column: 24, scope: !517)
!2194 = !DILocation(line: 1320, column: 40, scope: !517)
!2195 = !DILocation(line: 1323, column: 41, scope: !517)
!2196 = !DILocation(line: 1324, column: 41, scope: !517)
!2197 = !DILocation(line: 1325, column: 41, scope: !517)
!2198 = !DILocation(line: 1322, column: 12, scope: !517)
!2199 = !DILocation(line: 1322, column: 5, scope: !517)
!2200 = !DILocation(line: 1283, column: 25, scope: !521)
!2201 = !DILocation(line: 1283, column: 41, scope: !521)
!2202 = !DILocation(line: 1285, column: 5, scope: !521)
!2203 = !DILocation(line: 1285, column: 9, scope: !521)
!2204 = !DILocation(line: 1286, column: 27, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !521, file: !397, line: 1286, column: 9)
!2206 = !DILocation(line: 1286, column: 10, scope: !2205)
!2207 = !DILocation(line: 1286, column: 9, scope: !521)
!2208 = !DILocation(line: 1290, column: 9, scope: !2205)
!2209 = !DILocation(line: 1291, column: 12, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !521, file: !397, line: 1291, column: 5)
!2211 = !DILocation(line: 1291, column: 10, scope: !2210)
!2212 = !DILocation(line: 1291, column: 17, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2214, file: !397, discriminator: 2)
!2214 = !DILexicalBlockFile(scope: !2215, file: !397, discriminator: 1)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !397, line: 1291, column: 5)
!2216 = !DILocation(line: 1291, column: 19, scope: !2215)
!2217 = !DILocation(line: 1291, column: 5, scope: !2210)
!2218 = !DILocation(line: 1293, column: 51, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !397, line: 1291, column: 29)
!2220 = !DILocation(line: 1293, column: 21, scope: !2219)
!2221 = !DILocation(line: 1293, column: 9, scope: !2219)
!2222 = !DILocation(line: 1293, column: 24, scope: !2219)
!2223 = !DILocation(line: 1293, column: 34, scope: !2219)
!2224 = !DILocation(line: 1294, column: 5, scope: !2219)
!2225 = !DILocation(line: 1291, column: 25, scope: !2215)
!2226 = !DILocation(line: 1291, column: 5, scope: !2215)
!2227 = !DILocation(line: 1296, column: 51, scope: !521)
!2228 = !DILocation(line: 1297, column: 5, scope: !521)
!2229 = !DILocation(line: 1298, column: 1, scope: !521)
!2230 = !DILocation(line: 1306, column: 25, scope: !526)
!2231 = !DILocation(line: 1306, column: 41, scope: !526)
!2232 = !DILocation(line: 1309, column: 41, scope: !526)
!2233 = !DILocation(line: 1310, column: 41, scope: !526)
!2234 = !DILocation(line: 1311, column: 41, scope: !526)
!2235 = !DILocation(line: 1308, column: 12, scope: !526)
!2236 = !DILocation(line: 1308, column: 5, scope: !526)
!2237 = !DILocation(line: 1216, column: 22, scope: !530)
!2238 = !DILocation(line: 1216, column: 38, scope: !530)
!2239 = !DILocation(line: 1216, column: 54, scope: !530)
!2240 = !DILocation(line: 1219, column: 5, scope: !530)
!2241 = !DILocation(line: 1219, column: 9, scope: !530)
!2242 = !DILocation(line: 1220, column: 5, scope: !530)
!2243 = !DILocation(line: 1220, column: 16, scope: !530)
!2244 = !DILocation(line: 1222, column: 38, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !530, file: !397, line: 1222, column: 9)
!2246 = !DILocation(line: 1222, column: 44, scope: !2245)
!2247 = !DILocation(line: 1222, column: 10, scope: !2245)
!2248 = !DILocation(line: 1222, column: 9, scope: !530)
!2249 = !DILocation(line: 1223, column: 9, scope: !2245)
!2250 = !DILocation(line: 1225, column: 14, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2245, file: !397, line: 1225, column: 14)
!2252 = !DILocation(line: 1225, column: 21, scope: !2251)
!2253 = !DILocation(line: 1225, column: 25, scope: !2251)
!2254 = !DILocation(line: 1225, column: 28, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2251, file: !397, discriminator: 1)
!2256 = !DILocation(line: 1225, column: 35, scope: !2251)
!2257 = !DILocation(line: 1225, column: 14, scope: !2245)
!2258 = !DILocation(line: 1226, column: 25, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2251, file: !397, line: 1225, column: 41)
!2260 = !DILocation(line: 1226, column: 9, scope: !2259)
!2261 = !DILocation(line: 1227, column: 9, scope: !2259)
!2262 = !DILocation(line: 1230, column: 9, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !530, file: !397, line: 1230, column: 9)
!2264 = !DILocation(line: 1230, column: 9, scope: !530)
!2265 = !DILocation(line: 1231, column: 11, scope: !2263)
!2266 = !DILocation(line: 1231, column: 9, scope: !2263)
!2267 = !DILocation(line: 1233, column: 20, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2263, file: !397, line: 1232, column: 10)
!2269 = !DILocation(line: 1234, column: 35, scope: !2268)
!2270 = !DILocation(line: 1234, column: 13, scope: !2268)
!2271 = !DILocation(line: 1234, column: 11, scope: !2268)
!2272 = !DILocation(line: 1235, column: 20, scope: !2268)
!2273 = !DILocation(line: 1238, column: 31, scope: !530)
!2274 = !DILocation(line: 1238, column: 12, scope: !530)
!2275 = !DILocation(line: 1238, column: 5, scope: !530)
!2276 = !DILocation(line: 1239, column: 1, scope: !530)
!2277 = !DILocation(line: 1421, column: 26, scope: !537)
!2278 = !DILocation(line: 1421, column: 42, scope: !537)
!2279 = !DILocation(line: 1423, column: 5, scope: !537)
!2280 = !DILocation(line: 1423, column: 9, scope: !537)
!2281 = !DILocation(line: 1424, column: 5, scope: !537)
!2282 = !DILocation(line: 1424, column: 15, scope: !537)
!2283 = !DILocation(line: 1426, column: 14, scope: !537)
!2284 = !DILocation(line: 1426, column: 12, scope: !537)
!2285 = !DILocation(line: 1427, column: 9, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !537, file: !397, line: 1427, column: 9)
!2287 = !DILocation(line: 1427, column: 16, scope: !2286)
!2288 = !DILocation(line: 1427, column: 9, scope: !537)
!2289 = !DILocation(line: 1428, column: 9, scope: !2286)
!2290 = !DILocation(line: 1429, column: 12, scope: !549)
!2291 = !DILocation(line: 1429, column: 10, scope: !549)
!2292 = !DILocation(line: 1429, column: 17, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2294, file: !397, discriminator: 2)
!2294 = !DILexicalBlockFile(scope: !548, file: !397, discriminator: 1)
!2295 = !DILocation(line: 1429, column: 19, scope: !548)
!2296 = !DILocation(line: 1429, column: 5, scope: !549)
!2297 = !DILocation(line: 1430, column: 28, scope: !546)
!2298 = !DILocation(line: 1430, column: 50, scope: !546)
!2299 = !DILocation(line: 1430, column: 38, scope: !546)
!2300 = !DILocation(line: 1430, column: 53, scope: !546)
!2301 = !DILocation(line: 1430, column: 13, scope: !546)
!2302 = !DILocation(line: 1430, column: 13, scope: !547)
!2303 = !DILocation(line: 1431, column: 13, scope: !545)
!2304 = !DILocation(line: 1431, column: 18, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !544, file: !397, discriminator: 1)
!2306 = !DILocation(line: 1431, column: 28, scope: !544)
!2307 = !DILocation(line: 1431, column: 58, scope: !544)
!2308 = !DILocation(line: 1431, column: 75, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !544, file: !397, line: 1431, column: 72)
!2310 = !DILocation(line: 1431, column: 92, scope: !2309)
!2311 = !DILocation(line: 1431, column: 72, scope: !2309)
!2312 = !DILocation(line: 1431, column: 102, scope: !2309)
!2313 = !DILocation(line: 1431, column: 72, scope: !544)
!2314 = !DILocation(line: 1431, column: 72, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !544, file: !397, discriminator: 2)
!2316 = !DILocation(line: 1431, column: 133, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2309, file: !397, discriminator: 3)
!2318 = !DILocation(line: 1431, column: 151, scope: !2309)
!2319 = !DILocation(line: 1431, column: 161, scope: !2309)
!2320 = !DILocation(line: 1431, column: 186, scope: !2309)
!2321 = !DILocation(line: 1431, column: 117, scope: !2309)
!2322 = !DILocation(line: 1431, column: 205, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !545, file: !397, discriminator: 4)
!2324 = !DILocation(line: 1431, column: 205, scope: !544)
!2325 = !DILocation(line: 1431, column: 205, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !544, file: !397, discriminator: 5)
!2327 = !DILocation(line: 1432, column: 13, scope: !545)
!2328 = !DILocation(line: 1434, column: 5, scope: !547)
!2329 = !DILocation(line: 1429, column: 25, scope: !548)
!2330 = !DILocation(line: 1429, column: 5, scope: !548)
!2331 = !DILocation(line: 1435, column: 12, scope: !537)
!2332 = !DILocation(line: 1435, column: 5, scope: !537)
!2333 = !DILocation(line: 1436, column: 1, scope: !537)
!2334 = !DILocation(line: 1444, column: 24, scope: !561)
!2335 = !DILocation(line: 1444, column: 40, scope: !561)
!2336 = !DILocation(line: 1446, column: 5, scope: !561)
!2337 = !DILocation(line: 1446, column: 9, scope: !561)
!2338 = !DILocation(line: 1447, column: 5, scope: !561)
!2339 = !DILocation(line: 1447, column: 15, scope: !561)
!2340 = !DILocation(line: 1448, column: 5, scope: !561)
!2341 = !DILocation(line: 1448, column: 32, scope: !561)
!2342 = !DILocation(line: 1448, column: 43, scope: !561)
!2343 = !DILocation(line: 1452, column: 12, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !561, file: !397, line: 1452, column: 5)
!2345 = !DILocation(line: 1452, column: 10, scope: !2344)
!2346 = !DILocation(line: 1452, column: 17, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2348, file: !397, discriminator: 2)
!2348 = !DILexicalBlockFile(scope: !2349, file: !397, discriminator: 1)
!2349 = distinct !DILexicalBlock(scope: !2344, file: !397, line: 1452, column: 5)
!2350 = !DILocation(line: 1452, column: 19, scope: !2349)
!2351 = !DILocation(line: 1452, column: 5, scope: !2344)
!2352 = !DILocation(line: 1453, column: 15, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !397, line: 1452, column: 29)
!2354 = !DILocation(line: 1453, column: 9, scope: !2353)
!2355 = !DILocation(line: 1453, column: 37, scope: !2353)
!2356 = !DILocation(line: 1453, column: 20, scope: !2353)
!2357 = !{i64 0, i64 8, !1145, i64 8, i64 8, !1145, i64 16, i64 8, !1145}
!2358 = !DILocation(line: 1454, column: 5, scope: !2353)
!2359 = !DILocation(line: 1452, column: 25, scope: !2349)
!2360 = !DILocation(line: 1452, column: 5, scope: !2349)
!2361 = !DILocation(line: 1456, column: 14, scope: !561)
!2362 = !DILocation(line: 1456, column: 12, scope: !561)
!2363 = !DILocation(line: 1457, column: 9, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !561, file: !397, line: 1457, column: 9)
!2365 = !DILocation(line: 1457, column: 16, scope: !2364)
!2366 = !DILocation(line: 1457, column: 9, scope: !561)
!2367 = !DILocation(line: 1458, column: 9, scope: !2364)
!2368 = !DILocation(line: 1460, column: 12, scope: !581)
!2369 = !DILocation(line: 1460, column: 10, scope: !581)
!2370 = !DILocation(line: 1460, column: 17, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2372, file: !397, discriminator: 2)
!2372 = !DILexicalBlockFile(scope: !580, file: !397, discriminator: 1)
!2373 = !DILocation(line: 1460, column: 19, scope: !580)
!2374 = !DILocation(line: 1460, column: 5, scope: !581)
!2375 = !DILocation(line: 1461, column: 9, scope: !579)
!2376 = !DILocation(line: 1461, column: 19, scope: !579)
!2377 = !DILocation(line: 1462, column: 21, scope: !579)
!2378 = !DILocation(line: 1462, column: 15, scope: !579)
!2379 = !DILocation(line: 1462, column: 12, scope: !579)
!2380 = !DILocation(line: 1464, column: 45, scope: !579)
!2381 = !DILocation(line: 1464, column: 49, scope: !579)
!2382 = !DILocation(line: 1465, column: 43, scope: !579)
!2383 = !DILocation(line: 1465, column: 47, scope: !579)
!2384 = !DILocation(line: 1466, column: 47, scope: !579)
!2385 = !DILocation(line: 1466, column: 51, scope: !579)
!2386 = !DILocation(line: 1463, column: 16, scope: !579)
!2387 = !DILocation(line: 1463, column: 14, scope: !579)
!2388 = !DILocation(line: 1468, column: 13, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !579, file: !397, line: 1468, column: 13)
!2390 = !DILocation(line: 1468, column: 18, scope: !2389)
!2391 = !DILocation(line: 1468, column: 13, scope: !579)
!2392 = !DILocation(line: 1469, column: 13, scope: !2389)
!2393 = !DILocation(line: 1470, column: 27, scope: !585)
!2394 = !DILocation(line: 1470, column: 35, scope: !585)
!2395 = !DILocation(line: 1470, column: 13, scope: !585)
!2396 = !DILocation(line: 1470, column: 13, scope: !579)
!2397 = !DILocation(line: 1471, column: 13, scope: !584)
!2398 = !DILocation(line: 1471, column: 18, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !583, file: !397, discriminator: 1)
!2400 = !DILocation(line: 1471, column: 28, scope: !583)
!2401 = !DILocation(line: 1471, column: 58, scope: !583)
!2402 = !DILocation(line: 1471, column: 73, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !583, file: !397, line: 1471, column: 70)
!2404 = !DILocation(line: 1471, column: 90, scope: !2403)
!2405 = !DILocation(line: 1471, column: 70, scope: !2403)
!2406 = !DILocation(line: 1471, column: 100, scope: !2403)
!2407 = !DILocation(line: 1471, column: 70, scope: !583)
!2408 = !DILocation(line: 1471, column: 70, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !583, file: !397, discriminator: 2)
!2410 = !DILocation(line: 1471, column: 131, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2403, file: !397, discriminator: 3)
!2412 = !DILocation(line: 1471, column: 149, scope: !2403)
!2413 = !DILocation(line: 1471, column: 159, scope: !2403)
!2414 = !DILocation(line: 1471, column: 184, scope: !2403)
!2415 = !DILocation(line: 1471, column: 115, scope: !2403)
!2416 = !DILocation(line: 1471, column: 203, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !584, file: !397, discriminator: 4)
!2418 = !DILocation(line: 1471, column: 203, scope: !583)
!2419 = !DILocation(line: 1471, column: 203, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !583, file: !397, discriminator: 5)
!2421 = !DILocation(line: 1472, column: 13, scope: !584)
!2422 = !DILocation(line: 1474, column: 9, scope: !579)
!2423 = !DILocation(line: 1474, column: 14, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !587, file: !397, discriminator: 1)
!2425 = !DILocation(line: 1474, column: 24, scope: !587)
!2426 = !DILocation(line: 1474, column: 54, scope: !587)
!2427 = !DILocation(line: 1474, column: 69, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !587, file: !397, line: 1474, column: 66)
!2429 = !DILocation(line: 1474, column: 86, scope: !2428)
!2430 = !DILocation(line: 1474, column: 66, scope: !2428)
!2431 = !DILocation(line: 1474, column: 96, scope: !2428)
!2432 = !DILocation(line: 1474, column: 66, scope: !587)
!2433 = !DILocation(line: 1474, column: 66, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !587, file: !397, discriminator: 2)
!2435 = !DILocation(line: 1474, column: 127, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2428, file: !397, discriminator: 3)
!2437 = !DILocation(line: 1474, column: 145, scope: !2428)
!2438 = !DILocation(line: 1474, column: 155, scope: !2428)
!2439 = !DILocation(line: 1474, column: 180, scope: !2428)
!2440 = !DILocation(line: 1474, column: 111, scope: !2428)
!2441 = !DILocation(line: 1474, column: 199, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !579, file: !397, discriminator: 4)
!2443 = !DILocation(line: 1474, column: 199, scope: !587)
!2444 = !DILocation(line: 1474, column: 199, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !587, file: !397, discriminator: 5)
!2446 = !DILocation(line: 1475, column: 5, scope: !580)
!2447 = !DILocation(line: 1475, column: 5, scope: !2372)
!2448 = !DILocation(line: 1475, column: 5, scope: !579)
!2449 = !DILocation(line: 1460, column: 25, scope: !580)
!2450 = !DILocation(line: 1460, column: 5, scope: !580)
!2451 = !DILocation(line: 1476, column: 12, scope: !561)
!2452 = !DILocation(line: 1476, column: 5, scope: !561)
!2453 = !DILocation(line: 1479, column: 5, scope: !561)
!2454 = !DILocation(line: 1479, column: 10, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !589, file: !397, discriminator: 1)
!2456 = !DILocation(line: 1479, column: 20, scope: !589)
!2457 = !DILocation(line: 1479, column: 51, scope: !589)
!2458 = !DILocation(line: 1479, column: 64, scope: !592)
!2459 = !DILocation(line: 1479, column: 80, scope: !592)
!2460 = !DILocation(line: 1479, column: 64, scope: !589)
!2461 = !DILocation(line: 1479, column: 95, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !592, file: !397, discriminator: 2)
!2463 = !DILocation(line: 1479, column: 100, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !591, file: !397, discriminator: 4)
!2465 = !DILocation(line: 1479, column: 110, scope: !591)
!2466 = !DILocation(line: 1479, column: 140, scope: !591)
!2467 = !DILocation(line: 1479, column: 166, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !591, file: !397, line: 1479, column: 163)
!2469 = !DILocation(line: 1479, column: 183, scope: !2468)
!2470 = !DILocation(line: 1479, column: 163, scope: !2468)
!2471 = !DILocation(line: 1479, column: 193, scope: !2468)
!2472 = !DILocation(line: 1479, column: 163, scope: !591)
!2473 = !DILocation(line: 1479, column: 163, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !591, file: !397, discriminator: 5)
!2475 = !DILocation(line: 1479, column: 224, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2468, file: !397, discriminator: 6)
!2477 = !DILocation(line: 1479, column: 242, scope: !2468)
!2478 = !DILocation(line: 1479, column: 252, scope: !2468)
!2479 = !DILocation(line: 1479, column: 277, scope: !2468)
!2480 = !DILocation(line: 1479, column: 208, scope: !2468)
!2481 = !DILocation(line: 1479, column: 296, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !592, file: !397, discriminator: 7)
!2483 = !DILocation(line: 1479, column: 296, scope: !591)
!2484 = !DILocation(line: 1479, column: 296, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !591, file: !397, discriminator: 8)
!2486 = !DILocation(line: 1479, column: 296, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !591, file: !397, discriminator: 9)
!2488 = !DILocation(line: 1479, column: 309, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2490, file: !397, discriminator: 10)
!2490 = !DILexicalBlockFile(scope: !561, file: !397, discriminator: 3)
!2491 = !DILocation(line: 1479, column: 309, scope: !589)
!2492 = !DILocation(line: 1479, column: 309, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !589, file: !397, discriminator: 11)
!2494 = !DILocation(line: 1480, column: 5, scope: !561)
!2495 = !DILocation(line: 1481, column: 1, scope: !561)
!2496 = !DILocation(line: 1492, column: 25, scope: !593)
!2497 = !DILocation(line: 1492, column: 41, scope: !593)
!2498 = !DILocation(line: 1494, column: 5, scope: !593)
!2499 = !DILocation(line: 1494, column: 15, scope: !593)
!2500 = !DILocation(line: 1496, column: 28, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !593, file: !397, line: 1496, column: 9)
!2502 = !DILocation(line: 1496, column: 35, scope: !2501)
!2503 = !DILocation(line: 1496, column: 47, scope: !2501)
!2504 = !{!1601, !1050, i64 168}
!2505 = !DILocation(line: 1496, column: 56, scope: !2501)
!2506 = !DILocation(line: 1496, column: 73, scope: !2501)
!2507 = !DILocation(line: 1496, column: 79, scope: !2501)
!2508 = !DILocation(line: 1496, column: 97, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2501, file: !397, discriminator: 1)
!2510 = !DILocation(line: 1496, column: 104, scope: !2501)
!2511 = !DILocation(line: 1496, column: 114, scope: !2501)
!2512 = !{!1601, !1024, i64 328}
!2513 = !DILocation(line: 1496, column: 123, scope: !2501)
!2514 = !DILocation(line: 1496, column: 137, scope: !2501)
!2515 = !DILocation(line: 1496, column: 154, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2501, file: !397, discriminator: 3)
!2517 = !DILocation(line: 1496, column: 161, scope: !2501)
!2518 = !DILocation(line: 1496, column: 171, scope: !2501)
!2519 = !DILocation(line: 1496, column: 180, scope: !2501)
!2520 = !DILocation(line: 1496, column: 140, scope: !2501)
!2521 = !DILocation(line: 1496, column: 187, scope: !2501)
!2522 = !DILocation(line: 1496, column: 208, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2524, file: !397, discriminator: 4)
!2524 = !DILexicalBlockFile(scope: !2501, file: !397, discriminator: 2)
!2525 = !DILocation(line: 1496, column: 194, scope: !2501)
!2526 = !DILocation(line: 1496, column: 212, scope: !2501)
!2527 = !DILocation(line: 1496, column: 218, scope: !2501)
!2528 = !DILocation(line: 1496, column: 221, scope: !2501)
!2529 = !DILocation(line: 1496, column: 229, scope: !2501)
!2530 = !DILocation(line: 1496, column: 237, scope: !2501)
!2531 = !DILocation(line: 1496, column: 9, scope: !593)
!2532 = !DILocation(line: 1497, column: 16, scope: !2501)
!2533 = !DILocation(line: 1497, column: 9, scope: !2501)
!2534 = !DILocation(line: 1499, column: 16, scope: !2501)
!2535 = !DILocation(line: 1500, column: 21, scope: !593)
!2536 = !DILocation(line: 1500, column: 31, scope: !593)
!2537 = !DILocation(line: 1500, column: 40, scope: !593)
!2538 = !DILocation(line: 1501, column: 12, scope: !593)
!2539 = !DILocation(line: 1502, column: 1, scope: !593)
!2540 = !DILocation(line: 1501, column: 5, scope: !593)
!2541 = !DILocation(line: 1362, column: 28, scope: !598)
!2542 = !DILocation(line: 1362, column: 44, scope: !598)
!2543 = !DILocation(line: 1364, column: 5, scope: !598)
!2544 = !DILocation(line: 1364, column: 9, scope: !598)
!2545 = !DILocation(line: 1365, column: 5, scope: !598)
!2546 = !DILocation(line: 1365, column: 15, scope: !598)
!2547 = !DILocation(line: 1365, column: 24, scope: !598)
!2548 = !DILocation(line: 1366, column: 10, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !598, file: !397, line: 1366, column: 9)
!2550 = !DILocation(line: 1366, column: 9, scope: !598)
!2551 = !DILocation(line: 1366, column: 18, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2549, file: !397, discriminator: 1)
!2553 = !DILocation(line: 1366, column: 18, scope: !2549)
!2554 = !DILocation(line: 1368, column: 12, scope: !610)
!2555 = !DILocation(line: 1368, column: 10, scope: !610)
!2556 = !DILocation(line: 1368, column: 17, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2558, file: !397, discriminator: 2)
!2558 = !DILexicalBlockFile(scope: !609, file: !397, discriminator: 1)
!2559 = !DILocation(line: 1368, column: 19, scope: !609)
!2560 = !DILocation(line: 1368, column: 5, scope: !610)
!2561 = !DILocation(line: 1369, column: 32, scope: !607)
!2562 = !DILocation(line: 1369, column: 52, scope: !607)
!2563 = !DILocation(line: 1369, column: 40, scope: !607)
!2564 = !DILocation(line: 1369, column: 55, scope: !607)
!2565 = !DILocation(line: 1369, column: 62, scope: !607)
!2566 = !DILocation(line: 1369, column: 15, scope: !607)
!2567 = !DILocation(line: 1369, column: 13, scope: !608)
!2568 = !DILocation(line: 1370, column: 13, scope: !606)
!2569 = !DILocation(line: 1370, column: 18, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !605, file: !397, discriminator: 1)
!2571 = !DILocation(line: 1370, column: 28, scope: !605)
!2572 = !DILocation(line: 1370, column: 58, scope: !605)
!2573 = !DILocation(line: 1370, column: 75, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !605, file: !397, line: 1370, column: 72)
!2575 = !DILocation(line: 1370, column: 92, scope: !2574)
!2576 = !DILocation(line: 1370, column: 72, scope: !2574)
!2577 = !DILocation(line: 1370, column: 102, scope: !2574)
!2578 = !DILocation(line: 1370, column: 72, scope: !605)
!2579 = !DILocation(line: 1370, column: 72, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !605, file: !397, discriminator: 2)
!2581 = !DILocation(line: 1370, column: 133, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2574, file: !397, discriminator: 3)
!2583 = !DILocation(line: 1370, column: 151, scope: !2574)
!2584 = !DILocation(line: 1370, column: 161, scope: !2574)
!2585 = !DILocation(line: 1370, column: 186, scope: !2574)
!2586 = !DILocation(line: 1370, column: 117, scope: !2574)
!2587 = !DILocation(line: 1370, column: 205, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !606, file: !397, discriminator: 4)
!2589 = !DILocation(line: 1370, column: 205, scope: !605)
!2590 = !DILocation(line: 1370, column: 205, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !605, file: !397, discriminator: 5)
!2592 = !DILocation(line: 1371, column: 13, scope: !606)
!2593 = !DILocation(line: 1373, column: 5, scope: !608)
!2594 = !DILocation(line: 1368, column: 25, scope: !609)
!2595 = !DILocation(line: 1368, column: 5, scope: !609)
!2596 = !DILocation(line: 1374, column: 12, scope: !598)
!2597 = !DILocation(line: 1374, column: 5, scope: !598)
!2598 = !DILocation(line: 1375, column: 1, scope: !598)
!2599 = !DILocation(line: 1389, column: 28, scope: !626)
!2600 = !DILocation(line: 1389, column: 44, scope: !626)
!2601 = !DILocation(line: 1391, column: 5, scope: !626)
!2602 = !DILocation(line: 1391, column: 16, scope: !626)
!2603 = !DILocation(line: 1392, column: 5, scope: !626)
!2604 = !DILocation(line: 1392, column: 15, scope: !626)
!2605 = !DILocation(line: 1392, column: 24, scope: !626)
!2606 = !DILocation(line: 1394, column: 9, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !626, file: !397, line: 1394, column: 9)
!2608 = !DILocation(line: 1394, column: 16, scope: !2607)
!2609 = !DILocation(line: 1394, column: 9, scope: !626)
!2610 = !DILocation(line: 1395, column: 9, scope: !2607)
!2611 = !DILocation(line: 1397, column: 12, scope: !635)
!2612 = !DILocation(line: 1397, column: 10, scope: !635)
!2613 = !DILocation(line: 1397, column: 17, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2615, file: !397, discriminator: 2)
!2615 = !DILexicalBlockFile(scope: !634, file: !397, discriminator: 1)
!2616 = !DILocation(line: 1397, column: 38, scope: !634)
!2617 = !DILocation(line: 1397, column: 23, scope: !634)
!2618 = !DILocation(line: 1397, column: 46, scope: !634)
!2619 = !DILocation(line: 1397, column: 19, scope: !634)
!2620 = !DILocation(line: 1397, column: 5, scope: !635)
!2621 = !DILocation(line: 1398, column: 9, scope: !633)
!2622 = !DILocation(line: 1398, column: 22, scope: !633)
!2623 = !DILocation(line: 1399, column: 9, scope: !633)
!2624 = !DILocation(line: 1399, column: 19, scope: !633)
!2625 = !DILocation(line: 1399, column: 61, scope: !633)
!2626 = !DILocation(line: 1399, column: 45, scope: !633)
!2627 = !DILocation(line: 1399, column: 27, scope: !633)
!2628 = !DILocation(line: 1399, column: 53, scope: !633)
!2629 = !DILocation(line: 1399, column: 26, scope: !633)
!2630 = !DILocation(line: 1401, column: 34, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !633, file: !397, line: 1401, column: 13)
!2632 = !DILocation(line: 1401, column: 41, scope: !2631)
!2633 = !DILocation(line: 1401, column: 53, scope: !2631)
!2634 = !DILocation(line: 1401, column: 62, scope: !2631)
!2635 = !DILocation(line: 1401, column: 79, scope: !2631)
!2636 = !DILocation(line: 1401, column: 85, scope: !2631)
!2637 = !DILocation(line: 1401, column: 103, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2631, file: !397, discriminator: 1)
!2639 = !DILocation(line: 1401, column: 110, scope: !2631)
!2640 = !DILocation(line: 1401, column: 120, scope: !2631)
!2641 = !DILocation(line: 1401, column: 129, scope: !2631)
!2642 = !DILocation(line: 1401, column: 143, scope: !2631)
!2643 = !DILocation(line: 1401, column: 160, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2631, file: !397, discriminator: 2)
!2645 = !DILocation(line: 1401, column: 167, scope: !2631)
!2646 = !DILocation(line: 1401, column: 177, scope: !2631)
!2647 = !DILocation(line: 1401, column: 186, scope: !2631)
!2648 = !DILocation(line: 1401, column: 146, scope: !2631)
!2649 = !DILocation(line: 1401, column: 13, scope: !633)
!2650 = !DILocation(line: 1402, column: 13, scope: !2631)
!2651 = !DILocation(line: 1403, column: 34, scope: !633)
!2652 = !DILocation(line: 1403, column: 41, scope: !633)
!2653 = !DILocation(line: 1403, column: 51, scope: !633)
!2654 = !{!1601, !1024, i64 184}
!2655 = !DILocation(line: 1403, column: 18, scope: !633)
!2656 = !DILocation(line: 1404, column: 15, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !633, file: !397, line: 1404, column: 13)
!2658 = !DILocation(line: 1404, column: 13, scope: !633)
!2659 = !DILocation(line: 1405, column: 13, scope: !2657)
!2660 = !DILocation(line: 1406, column: 13, scope: !640)
!2661 = !DILocation(line: 1406, column: 22, scope: !640)
!2662 = !DILocation(line: 1406, column: 54, scope: !640)
!2663 = !DILocation(line: 1406, column: 13, scope: !633)
!2664 = !DILocation(line: 1407, column: 13, scope: !639)
!2665 = !DILocation(line: 1407, column: 18, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !638, file: !397, discriminator: 1)
!2667 = !DILocation(line: 1407, column: 28, scope: !638)
!2668 = !DILocation(line: 1407, column: 58, scope: !638)
!2669 = !DILocation(line: 1407, column: 75, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !638, file: !397, line: 1407, column: 72)
!2671 = !DILocation(line: 1407, column: 92, scope: !2670)
!2672 = !DILocation(line: 1407, column: 72, scope: !2670)
!2673 = !DILocation(line: 1407, column: 102, scope: !2670)
!2674 = !DILocation(line: 1407, column: 72, scope: !638)
!2675 = !DILocation(line: 1407, column: 72, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !638, file: !397, discriminator: 2)
!2677 = !DILocation(line: 1407, column: 133, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2670, file: !397, discriminator: 3)
!2679 = !DILocation(line: 1407, column: 151, scope: !2670)
!2680 = !DILocation(line: 1407, column: 161, scope: !2670)
!2681 = !DILocation(line: 1407, column: 186, scope: !2670)
!2682 = !DILocation(line: 1407, column: 117, scope: !2670)
!2683 = !DILocation(line: 1407, column: 205, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !639, file: !397, discriminator: 4)
!2685 = !DILocation(line: 1407, column: 205, scope: !638)
!2686 = !DILocation(line: 1407, column: 205, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !638, file: !397, discriminator: 5)
!2688 = !DILocation(line: 1408, column: 13, scope: !639)
!2689 = !DILocation(line: 1410, column: 5, scope: !634)
!2690 = !DILocation(line: 1410, column: 5, scope: !2615)
!2691 = !DILocation(line: 1410, column: 5, scope: !633)
!2692 = !DILocation(line: 1397, column: 57, scope: !634)
!2693 = !DILocation(line: 1397, column: 5, scope: !634)
!2694 = !DILocation(line: 1411, column: 12, scope: !626)
!2695 = !DILocation(line: 1411, column: 5, scope: !626)
!2696 = !DILocation(line: 1412, column: 1, scope: !626)
!2697 = !DILocation(line: 318, column: 26, scope: !550)
!2698 = !DILocation(line: 318, column: 46, scope: !550)
!2699 = !DILocation(line: 320, column: 5, scope: !550)
!2700 = !DILocation(line: 320, column: 16, scope: !550)
!2701 = !DILocation(line: 321, column: 15, scope: !560)
!2702 = !DILocation(line: 321, column: 24, scope: !560)
!2703 = !DILocation(line: 321, column: 27, scope: !560)
!2704 = !DILocation(line: 321, column: 13, scope: !560)
!2705 = !DILocation(line: 321, column: 10, scope: !560)
!2706 = !DILocation(line: 321, column: 36, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2708, file: !397, discriminator: 2)
!2708 = !DILexicalBlockFile(scope: !559, file: !397, discriminator: 1)
!2709 = !DILocation(line: 321, column: 42, scope: !559)
!2710 = !DILocation(line: 321, column: 39, scope: !559)
!2711 = !DILocation(line: 321, column: 5, scope: !560)
!2712 = !DILocation(line: 322, column: 9, scope: !558)
!2713 = !DILocation(line: 322, column: 19, scope: !558)
!2714 = !DILocation(line: 322, column: 52, scope: !558)
!2715 = !DILocation(line: 322, column: 55, scope: !558)
!2716 = !DILocation(line: 322, column: 25, scope: !558)
!2717 = !DILocation(line: 323, column: 13, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !558, file: !397, line: 323, column: 13)
!2719 = !DILocation(line: 323, column: 19, scope: !2718)
!2720 = !DILocation(line: 323, column: 16, scope: !2718)
!2721 = !DILocation(line: 323, column: 13, scope: !558)
!2722 = !DILocation(line: 324, column: 31, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !397, line: 324, column: 17)
!2724 = distinct !DILexicalBlock(scope: !2718, file: !397, line: 323, column: 28)
!2725 = !DILocation(line: 324, column: 40, scope: !2723)
!2726 = !DILocation(line: 324, column: 17, scope: !2723)
!2727 = !DILocation(line: 324, column: 17, scope: !2724)
!2728 = !DILocation(line: 325, column: 17, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2723, file: !397, line: 324, column: 45)
!2730 = !DILocation(line: 327, column: 9, scope: !2724)
!2731 = !DILocation(line: 328, column: 5, scope: !559)
!2732 = !DILocation(line: 328, column: 5, scope: !2708)
!2733 = !DILocation(line: 328, column: 5, scope: !558)
!2734 = !DILocation(line: 321, column: 56, scope: !559)
!2735 = !DILocation(line: 321, column: 60, scope: !559)
!2736 = !DILocation(line: 321, column: 63, scope: !559)
!2737 = !DILocation(line: 321, column: 54, scope: !559)
!2738 = !DILocation(line: 321, column: 5, scope: !559)
!2739 = !DILocation(line: 329, column: 5, scope: !550)
!2740 = !DILocation(line: 330, column: 1, scope: !550)
!2741 = !DILocation(line: 1339, column: 28, scope: !611)
!2742 = !DILocation(line: 1339, column: 45, scope: !611)
!2743 = !DILocation(line: 1339, column: 61, scope: !611)
!2744 = !DILocation(line: 1341, column: 5, scope: !611)
!2745 = !DILocation(line: 1341, column: 16, scope: !611)
!2746 = !DILocation(line: 1342, column: 5, scope: !611)
!2747 = !DILocation(line: 1342, column: 15, scope: !611)
!2748 = !DILocation(line: 1343, column: 5, scope: !611)
!2749 = !DILocation(line: 1343, column: 18, scope: !611)
!2750 = !DILocation(line: 1344, column: 15, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !611, file: !397, line: 1344, column: 5)
!2752 = !DILocation(line: 1344, column: 21, scope: !2751)
!2753 = !DILocation(line: 1344, column: 24, scope: !2751)
!2754 = !DILocation(line: 1344, column: 13, scope: !2751)
!2755 = !DILocation(line: 1344, column: 10, scope: !2751)
!2756 = !DILocation(line: 1344, column: 33, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !2758, file: !397, discriminator: 2)
!2758 = !DILexicalBlockFile(scope: !2759, file: !397, discriminator: 1)
!2759 = distinct !DILexicalBlock(scope: !2751, file: !397, line: 1344, column: 5)
!2760 = !DILocation(line: 1344, column: 39, scope: !2759)
!2761 = !DILocation(line: 1344, column: 36, scope: !2759)
!2762 = !DILocation(line: 1344, column: 5, scope: !2751)
!2763 = !DILocation(line: 1345, column: 43, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2759, file: !397, line: 1344, column: 66)
!2765 = !DILocation(line: 1345, column: 46, scope: !2764)
!2766 = !DILocation(line: 1345, column: 16, scope: !2764)
!2767 = !DILocation(line: 1345, column: 13, scope: !2764)
!2768 = !DILocation(line: 1346, column: 34, scope: !2764)
!2769 = !DILocation(line: 1346, column: 41, scope: !2764)
!2770 = !DILocation(line: 1346, column: 51, scope: !2764)
!2771 = !DILocation(line: 1346, column: 18, scope: !2764)
!2772 = !DILocation(line: 1347, column: 13, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2764, file: !397, line: 1347, column: 13)
!2774 = !DILocation(line: 1347, column: 20, scope: !2773)
!2775 = !DILocation(line: 1347, column: 17, scope: !2773)
!2776 = !DILocation(line: 1347, column: 25, scope: !2773)
!2777 = !DILocation(line: 1347, column: 28, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2773, file: !397, discriminator: 1)
!2779 = !DILocation(line: 1347, column: 35, scope: !2773)
!2780 = !DILocation(line: 1347, column: 32, scope: !2773)
!2781 = !DILocation(line: 1347, column: 13, scope: !2764)
!2782 = !DILocation(line: 1348, column: 13, scope: !2773)
!2783 = !DILocation(line: 1349, column: 13, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2764, file: !397, line: 1349, column: 13)
!2785 = !DILocation(line: 1349, column: 22, scope: !2784)
!2786 = !DILocation(line: 1349, column: 54, scope: !2784)
!2787 = !DILocation(line: 1349, column: 13, scope: !2764)
!2788 = !DILocation(line: 1350, column: 31, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !397, line: 1350, column: 17)
!2790 = distinct !DILexicalBlock(scope: !2784, file: !397, line: 1349, column: 61)
!2791 = !DILocation(line: 1350, column: 43, scope: !2789)
!2792 = !DILocation(line: 1350, column: 17, scope: !2789)
!2793 = !DILocation(line: 1350, column: 48, scope: !2789)
!2794 = !DILocation(line: 1350, column: 17, scope: !2790)
!2795 = !DILocation(line: 1351, column: 17, scope: !2789)
!2796 = !DILocation(line: 1352, column: 9, scope: !2790)
!2797 = !DILocation(line: 1353, column: 5, scope: !2764)
!2798 = !DILocation(line: 1344, column: 50, scope: !2759)
!2799 = !DILocation(line: 1344, column: 54, scope: !2759)
!2800 = !DILocation(line: 1344, column: 57, scope: !2759)
!2801 = !DILocation(line: 1344, column: 48, scope: !2759)
!2802 = !DILocation(line: 1344, column: 5, scope: !2759)
!2803 = !DILocation(line: 1354, column: 5, scope: !611)
!2804 = !DILocation(line: 1355, column: 1, scope: !611)
!2805 = !DILocation(line: 1329, column: 26, scope: !621)
!2806 = !DILocation(line: 1329, column: 41, scope: !621)
!2807 = !DILocation(line: 1331, column: 5, scope: !621)
!2808 = !DILocation(line: 1331, column: 16, scope: !621)
!2809 = !DILocation(line: 1332, column: 12, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !621, file: !397, line: 1332, column: 5)
!2811 = !DILocation(line: 1332, column: 10, scope: !2810)
!2812 = !DILocation(line: 1332, column: 17, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !2814, file: !397, discriminator: 2)
!2814 = !DILexicalBlockFile(scope: !2815, file: !397, discriminator: 1)
!2815 = distinct !DILexicalBlock(scope: !2810, file: !397, line: 1332, column: 5)
!2816 = !DILocation(line: 1332, column: 38, scope: !2815)
!2817 = !DILocation(line: 1332, column: 23, scope: !2815)
!2818 = !DILocation(line: 1332, column: 46, scope: !2815)
!2819 = !DILocation(line: 1332, column: 19, scope: !2815)
!2820 = !DILocation(line: 1332, column: 5, scope: !2810)
!2821 = !DILocation(line: 1333, column: 49, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2815, file: !397, line: 1333, column: 13)
!2823 = !DILocation(line: 1333, column: 33, scope: !2822)
!2824 = !DILocation(line: 1333, column: 15, scope: !2822)
!2825 = !DILocation(line: 1333, column: 41, scope: !2822)
!2826 = !DILocation(line: 1333, column: 14, scope: !2822)
!2827 = !DILocation(line: 1333, column: 56, scope: !2822)
!2828 = !DILocation(line: 1333, column: 53, scope: !2822)
!2829 = !DILocation(line: 1333, column: 13, scope: !2815)
!2830 = !DILocation(line: 1334, column: 13, scope: !2822)
!2831 = !DILocation(line: 1333, column: 56, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2822, file: !397, discriminator: 1)
!2833 = !DILocation(line: 1332, column: 57, scope: !2815)
!2834 = !DILocation(line: 1332, column: 5, scope: !2815)
!2835 = !DILocation(line: 1335, column: 5, scope: !621)
!2836 = !DILocation(line: 1336, column: 1, scope: !621)
!2837 = !DILocation(line: 1379, column: 26, scope: !641)
!2838 = !DILocation(line: 1379, column: 41, scope: !641)
!2839 = !DILocation(line: 1381, column: 26, scope: !641)
!2840 = !DILocation(line: 1381, column: 32, scope: !641)
!2841 = !DILocation(line: 1381, column: 12, scope: !641)
!2842 = !DILocation(line: 1381, column: 37, scope: !641)
!2843 = !DILocation(line: 1381, column: 5, scope: !641)
!2844 = !DILocation(line: 1099, column: 32, scope: !653)
!2845 = !DILocation(line: 1099, column: 43, scope: !653)
!2846 = !DILocation(line: 1100, column: 31, scope: !653)
!2847 = !DILocation(line: 1100, column: 53, scope: !653)
!2848 = !DILocation(line: 1102, column: 5, scope: !653)
!2849 = !DILocation(line: 1102, column: 16, scope: !653)
!2850 = !DILocation(line: 1103, column: 5, scope: !653)
!2851 = !DILocation(line: 1103, column: 15, scope: !653)
!2852 = !DILocation(line: 1106, column: 9, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !653, file: !397, line: 1106, column: 9)
!2854 = !DILocation(line: 1106, column: 19, scope: !2853)
!2855 = !DILocation(line: 1106, column: 9, scope: !653)
!2856 = !DILocation(line: 1107, column: 9, scope: !2853)
!2857 = !DILocation(line: 1110, column: 26, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !653, file: !397, line: 1110, column: 9)
!2859 = !DILocation(line: 1110, column: 11, scope: !2858)
!2860 = !DILocation(line: 1110, column: 39, scope: !2858)
!2861 = !DILocation(line: 1110, column: 48, scope: !2858)
!2862 = !DILocation(line: 1110, column: 9, scope: !653)
!2863 = !DILocation(line: 1112, column: 27, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2858, file: !397, line: 1110, column: 54)
!2865 = !DILocation(line: 1113, column: 26, scope: !2864)
!2866 = !DILocation(line: 1114, column: 30, scope: !2864)
!2867 = !DILocation(line: 1111, column: 16, scope: !2864)
!2868 = !DILocation(line: 1111, column: 14, scope: !2864)
!2869 = !DILocation(line: 1115, column: 13, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2864, file: !397, line: 1115, column: 13)
!2871 = !DILocation(line: 1115, column: 18, scope: !2870)
!2872 = !DILocation(line: 1115, column: 13, scope: !2864)
!2873 = !DILocation(line: 1116, column: 13, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2870, file: !397, line: 1115, column: 33)
!2875 = !DILocation(line: 1117, column: 13, scope: !2874)
!2876 = !DILocation(line: 1119, column: 5, scope: !2864)
!2877 = !DILocation(line: 1120, column: 11, scope: !666)
!2878 = !DILocation(line: 1120, column: 10, scope: !666)
!2879 = !DILocation(line: 1120, column: 15, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2881, file: !397, discriminator: 2)
!2881 = !DILexicalBlockFile(scope: !665, file: !397, discriminator: 1)
!2882 = !DILocation(line: 1120, column: 34, scope: !665)
!2883 = !DILocation(line: 1120, column: 19, scope: !665)
!2884 = !DILocation(line: 1120, column: 47, scope: !665)
!2885 = !DILocation(line: 1120, column: 16, scope: !665)
!2886 = !DILocation(line: 1120, column: 5, scope: !666)
!2887 = !DILocation(line: 1121, column: 9, scope: !664)
!2888 = !DILocation(line: 1121, column: 19, scope: !664)
!2889 = !DILocation(line: 1121, column: 23, scope: !664)
!2890 = !DILocation(line: 1121, column: 68, scope: !664)
!2891 = !DILocation(line: 1121, column: 47, scope: !664)
!2892 = !DILocation(line: 1121, column: 30, scope: !664)
!2893 = !DILocation(line: 1121, column: 60, scope: !664)
!2894 = !{!2895, !1024, i64 24}
!2895 = !{!"", !1527, i64 0, !1024, i64 24, !1050, i64 32}
!2896 = !DILocation(line: 1121, column: 29, scope: !664)
!2897 = !DILocation(line: 1122, column: 25, scope: !664)
!2898 = !DILocation(line: 1122, column: 31, scope: !664)
!2899 = !DILocation(line: 1122, column: 40, scope: !664)
!2900 = !DILocation(line: 1123, column: 35, scope: !664)
!2901 = !DILocation(line: 1123, column: 45, scope: !664)
!2902 = !DILocation(line: 1123, column: 52, scope: !664)
!2903 = !DILocation(line: 1123, column: 13, scope: !664)
!2904 = !DILocation(line: 1123, column: 11, scope: !664)
!2905 = !DILocation(line: 1124, column: 9, scope: !664)
!2906 = !DILocation(line: 1124, column: 14, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !669, file: !397, discriminator: 1)
!2908 = !DILocation(line: 1124, column: 24, scope: !669)
!2909 = !DILocation(line: 1124, column: 55, scope: !669)
!2910 = !DILocation(line: 1124, column: 63, scope: !672)
!2911 = !DILocation(line: 1124, column: 79, scope: !672)
!2912 = !DILocation(line: 1124, column: 63, scope: !669)
!2913 = !DILocation(line: 1124, column: 94, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !672, file: !397, discriminator: 2)
!2915 = !DILocation(line: 1124, column: 99, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !671, file: !397, discriminator: 4)
!2917 = !DILocation(line: 1124, column: 109, scope: !671)
!2918 = !DILocation(line: 1124, column: 139, scope: !671)
!2919 = !DILocation(line: 1124, column: 165, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !671, file: !397, line: 1124, column: 162)
!2921 = !DILocation(line: 1124, column: 182, scope: !2920)
!2922 = !DILocation(line: 1124, column: 162, scope: !2920)
!2923 = !DILocation(line: 1124, column: 192, scope: !2920)
!2924 = !DILocation(line: 1124, column: 162, scope: !671)
!2925 = !DILocation(line: 1124, column: 162, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !671, file: !397, discriminator: 5)
!2927 = !DILocation(line: 1124, column: 223, scope: !2928)
!2928 = !DILexicalBlockFile(scope: !2920, file: !397, discriminator: 6)
!2929 = !DILocation(line: 1124, column: 241, scope: !2920)
!2930 = !DILocation(line: 1124, column: 251, scope: !2920)
!2931 = !DILocation(line: 1124, column: 276, scope: !2920)
!2932 = !DILocation(line: 1124, column: 207, scope: !2920)
!2933 = !DILocation(line: 1124, column: 295, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !672, file: !397, discriminator: 7)
!2935 = !DILocation(line: 1124, column: 295, scope: !671)
!2936 = !DILocation(line: 1124, column: 295, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !671, file: !397, discriminator: 8)
!2938 = !DILocation(line: 1124, column: 295, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !671, file: !397, discriminator: 9)
!2940 = !DILocation(line: 1124, column: 308, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !2942, file: !397, discriminator: 10)
!2942 = !DILexicalBlockFile(scope: !664, file: !397, discriminator: 3)
!2943 = !DILocation(line: 1124, column: 308, scope: !669)
!2944 = !DILocation(line: 1124, column: 308, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !669, file: !397, discriminator: 11)
!2946 = !DILocation(line: 1125, column: 13, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !664, file: !397, line: 1125, column: 13)
!2948 = !DILocation(line: 1125, column: 15, scope: !2947)
!2949 = !DILocation(line: 1125, column: 13, scope: !664)
!2950 = !DILocation(line: 1126, column: 35, scope: !2947)
!2951 = !DILocation(line: 1126, column: 13, scope: !2947)
!2952 = !DILocation(line: 1127, column: 9, scope: !664)
!2953 = !DILocation(line: 1127, column: 14, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !674, file: !397, discriminator: 1)
!2955 = !DILocation(line: 1127, column: 24, scope: !674)
!2956 = !DILocation(line: 1127, column: 54, scope: !674)
!2957 = !DILocation(line: 1127, column: 67, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !674, file: !397, line: 1127, column: 64)
!2959 = !DILocation(line: 1127, column: 84, scope: !2958)
!2960 = !DILocation(line: 1127, column: 64, scope: !2958)
!2961 = !DILocation(line: 1127, column: 94, scope: !2958)
!2962 = !DILocation(line: 1127, column: 64, scope: !674)
!2963 = !DILocation(line: 1127, column: 64, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !674, file: !397, discriminator: 2)
!2965 = !DILocation(line: 1127, column: 125, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2958, file: !397, discriminator: 3)
!2967 = !DILocation(line: 1127, column: 143, scope: !2958)
!2968 = !DILocation(line: 1127, column: 153, scope: !2958)
!2969 = !DILocation(line: 1127, column: 178, scope: !2958)
!2970 = !DILocation(line: 1127, column: 109, scope: !2958)
!2971 = !DILocation(line: 1127, column: 197, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !664, file: !397, discriminator: 4)
!2973 = !DILocation(line: 1127, column: 197, scope: !674)
!2974 = !DILocation(line: 1127, column: 197, scope: !2975)
!2975 = !DILexicalBlockFile(scope: !674, file: !397, discriminator: 5)
!2976 = !DILocation(line: 1128, column: 5, scope: !665)
!2977 = !DILocation(line: 1128, column: 5, scope: !664)
!2978 = !DILocation(line: 1120, column: 58, scope: !665)
!2979 = !DILocation(line: 1120, column: 5, scope: !665)
!2980 = !DILocation(line: 1129, column: 5, scope: !653)
!2981 = !DILocation(line: 1129, column: 10, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !676, file: !397, discriminator: 1)
!2983 = !DILocation(line: 1129, column: 20, scope: !676)
!2984 = !DILocation(line: 1129, column: 51, scope: !676)
!2985 = !DILocation(line: 1129, column: 62, scope: !679)
!2986 = !DILocation(line: 1129, column: 78, scope: !679)
!2987 = !DILocation(line: 1129, column: 62, scope: !676)
!2988 = !DILocation(line: 1129, column: 93, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !679, file: !397, discriminator: 2)
!2990 = !DILocation(line: 1129, column: 98, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !678, file: !397, discriminator: 4)
!2992 = !DILocation(line: 1129, column: 108, scope: !678)
!2993 = !DILocation(line: 1129, column: 138, scope: !678)
!2994 = !DILocation(line: 1129, column: 164, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !678, file: !397, line: 1129, column: 161)
!2996 = !DILocation(line: 1129, column: 181, scope: !2995)
!2997 = !DILocation(line: 1129, column: 161, scope: !2995)
!2998 = !DILocation(line: 1129, column: 191, scope: !2995)
!2999 = !DILocation(line: 1129, column: 161, scope: !678)
!3000 = !DILocation(line: 1129, column: 161, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !678, file: !397, discriminator: 5)
!3002 = !DILocation(line: 1129, column: 222, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !2995, file: !397, discriminator: 6)
!3004 = !DILocation(line: 1129, column: 240, scope: !2995)
!3005 = !DILocation(line: 1129, column: 250, scope: !2995)
!3006 = !DILocation(line: 1129, column: 275, scope: !2995)
!3007 = !DILocation(line: 1129, column: 206, scope: !2995)
!3008 = !DILocation(line: 1129, column: 294, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !679, file: !397, discriminator: 7)
!3010 = !DILocation(line: 1129, column: 294, scope: !678)
!3011 = !DILocation(line: 1129, column: 294, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !678, file: !397, discriminator: 8)
!3013 = !DILocation(line: 1129, column: 294, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !678, file: !397, discriminator: 9)
!3015 = !DILocation(line: 1129, column: 307, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3017, file: !397, discriminator: 10)
!3017 = !DILexicalBlockFile(scope: !653, file: !397, discriminator: 3)
!3018 = !DILocation(line: 1129, column: 307, scope: !676)
!3019 = !DILocation(line: 1129, column: 307, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !676, file: !397, discriminator: 11)
!3021 = !DILocation(line: 1130, column: 1, scope: !653)
!3022 = !DILocation(line: 1130, column: 1, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !653, file: !397, discriminator: 1)
!3024 = !DILocation(line: 304, column: 25, scope: !701)
!3025 = !DILocation(line: 306, column: 5, scope: !701)
!3026 = !DILocation(line: 306, column: 16, scope: !701)
!3027 = !DILocation(line: 307, column: 5, scope: !701)
!3028 = !DILocation(line: 307, column: 16, scope: !701)
!3029 = !DILocation(line: 308, column: 15, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !701, file: !397, line: 308, column: 5)
!3031 = !DILocation(line: 308, column: 21, scope: !3030)
!3032 = !DILocation(line: 308, column: 24, scope: !3030)
!3033 = !DILocation(line: 308, column: 13, scope: !3030)
!3034 = !DILocation(line: 308, column: 10, scope: !3030)
!3035 = !DILocation(line: 308, column: 33, scope: !3036)
!3036 = !DILexicalBlockFile(scope: !3037, file: !397, discriminator: 2)
!3037 = !DILexicalBlockFile(scope: !3038, file: !397, discriminator: 1)
!3038 = distinct !DILexicalBlock(scope: !3030, file: !397, line: 308, column: 5)
!3039 = !DILocation(line: 308, column: 39, scope: !3038)
!3040 = !DILocation(line: 308, column: 36, scope: !3038)
!3041 = !DILocation(line: 308, column: 5, scope: !3030)
!3042 = !DILocation(line: 309, column: 10, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3038, file: !397, line: 308, column: 66)
!3044 = !DILocation(line: 310, column: 5, scope: !3043)
!3045 = !DILocation(line: 308, column: 50, scope: !3038)
!3046 = !DILocation(line: 308, column: 54, scope: !3038)
!3047 = !DILocation(line: 308, column: 57, scope: !3038)
!3048 = !DILocation(line: 308, column: 48, scope: !3038)
!3049 = !DILocation(line: 308, column: 5, scope: !3038)
!3050 = !DILocation(line: 311, column: 12, scope: !701)
!3051 = !DILocation(line: 312, column: 1, scope: !701)
!3052 = !DILocation(line: 311, column: 5, scope: !701)
!3053 = !DILocation(line: 900, column: 5, scope: !708)
!3054 = !DILocation(line: 900, column: 12, scope: !708)
!3055 = !DILocation(line: 901, column: 9, scope: !715)
!3056 = !DILocation(line: 901, column: 14, scope: !715)
!3057 = !DILocation(line: 901, column: 9, scope: !708)
!3058 = !DILocation(line: 904, column: 9, scope: !714)
!3059 = !DILocation(line: 904, column: 19, scope: !714)
!3060 = !DILocation(line: 904, column: 46, scope: !714)
!3061 = !DILocation(line: 904, column: 23, scope: !714)
!3062 = !DILocation(line: 905, column: 13, scope: !719)
!3063 = !DILocation(line: 905, column: 15, scope: !719)
!3064 = !DILocation(line: 905, column: 13, scope: !714)
!3065 = !DILocation(line: 906, column: 13, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !719, file: !397, line: 905, column: 30)
!3067 = !DILocation(line: 907, column: 9, scope: !3066)
!3068 = !DILocation(line: 909, column: 32, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !718, file: !397, line: 909, column: 17)
!3070 = !DILocation(line: 909, column: 37, scope: !3069)
!3071 = !DILocation(line: 909, column: 46, scope: !3069)
!3072 = !DILocation(line: 909, column: 65, scope: !3069)
!3073 = !DILocation(line: 909, column: 99, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3069, file: !397, discriminator: 1)
!3075 = !DILocation(line: 909, column: 104, scope: !3069)
!3076 = !DILocation(line: 909, column: 68, scope: !3069)
!3077 = !DILocation(line: 909, column: 17, scope: !718)
!3078 = !DILocation(line: 910, column: 43, scope: !3069)
!3079 = !DILocation(line: 910, column: 26, scope: !3069)
!3080 = !DILocation(line: 910, column: 24, scope: !3069)
!3081 = !DILocation(line: 910, column: 17, scope: !3069)
!3082 = !DILocation(line: 911, column: 13, scope: !718)
!3083 = !DILocation(line: 911, column: 18, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !717, file: !397, discriminator: 1)
!3085 = !DILocation(line: 911, column: 28, scope: !717)
!3086 = !DILocation(line: 911, column: 58, scope: !717)
!3087 = !DILocation(line: 911, column: 70, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !717, file: !397, line: 911, column: 67)
!3089 = !DILocation(line: 911, column: 87, scope: !3088)
!3090 = !DILocation(line: 911, column: 67, scope: !3088)
!3091 = !DILocation(line: 911, column: 97, scope: !3088)
!3092 = !DILocation(line: 911, column: 67, scope: !717)
!3093 = !DILocation(line: 911, column: 67, scope: !3094)
!3094 = !DILexicalBlockFile(scope: !717, file: !397, discriminator: 2)
!3095 = !DILocation(line: 911, column: 128, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !3088, file: !397, discriminator: 3)
!3097 = !DILocation(line: 911, column: 146, scope: !3088)
!3098 = !DILocation(line: 911, column: 156, scope: !3088)
!3099 = !DILocation(line: 911, column: 181, scope: !3088)
!3100 = !DILocation(line: 911, column: 112, scope: !3088)
!3101 = !DILocation(line: 911, column: 200, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !718, file: !397, discriminator: 4)
!3103 = !DILocation(line: 911, column: 200, scope: !717)
!3104 = !DILocation(line: 911, column: 200, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !717, file: !397, discriminator: 5)
!3106 = !DILocation(line: 913, column: 5, scope: !715)
!3107 = !DILocation(line: 913, column: 5, scope: !714)
!3108 = !DILocation(line: 914, column: 12, scope: !708)
!3109 = !DILocation(line: 915, column: 1, scope: !708)
!3110 = !DILocation(line: 914, column: 5, scope: !708)
!3111 = !DILocation(line: 289, column: 26, scope: !720)
!3112 = !DILocation(line: 289, column: 43, scope: !720)
!3113 = !DILocation(line: 291, column: 5, scope: !720)
!3114 = !DILocation(line: 291, column: 16, scope: !720)
!3115 = !DILocation(line: 293, column: 27, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !720, file: !397, line: 293, column: 9)
!3117 = !DILocation(line: 293, column: 10, scope: !3116)
!3118 = !DILocation(line: 293, column: 9, scope: !720)
!3119 = !DILocation(line: 294, column: 16, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !397, line: 293, column: 34)
!3121 = !DILocation(line: 294, column: 20, scope: !3120)
!3122 = !DILocation(line: 294, column: 23, scope: !3120)
!3123 = !DILocation(line: 294, column: 14, scope: !3120)
!3124 = !DILocation(line: 295, column: 28, scope: !3120)
!3125 = !DILocation(line: 295, column: 34, scope: !3120)
!3126 = !DILocation(line: 295, column: 37, scope: !3120)
!3127 = !DILocation(line: 295, column: 9, scope: !3120)
!3128 = !DILocation(line: 295, column: 15, scope: !3120)
!3129 = !DILocation(line: 295, column: 18, scope: !3120)
!3130 = !DILocation(line: 295, column: 26, scope: !3120)
!3131 = !DILocation(line: 296, column: 40, scope: !3120)
!3132 = !DILocation(line: 296, column: 9, scope: !3120)
!3133 = !DILocation(line: 296, column: 15, scope: !3120)
!3134 = !DILocation(line: 296, column: 18, scope: !3120)
!3135 = !DILocation(line: 296, column: 27, scope: !3120)
!3136 = !DILocation(line: 296, column: 30, scope: !3120)
!3137 = !DILocation(line: 296, column: 38, scope: !3120)
!3138 = !DILocation(line: 297, column: 26, scope: !3120)
!3139 = !DILocation(line: 297, column: 32, scope: !3120)
!3140 = !DILocation(line: 297, column: 35, scope: !3120)
!3141 = !DILocation(line: 297, column: 9, scope: !3120)
!3142 = !DILocation(line: 297, column: 13, scope: !3120)
!3143 = !DILocation(line: 297, column: 16, scope: !3120)
!3144 = !DILocation(line: 297, column: 24, scope: !3120)
!3145 = !DILocation(line: 298, column: 38, scope: !3120)
!3146 = !DILocation(line: 298, column: 9, scope: !3120)
!3147 = !DILocation(line: 298, column: 13, scope: !3120)
!3148 = !DILocation(line: 298, column: 16, scope: !3120)
!3149 = !DILocation(line: 298, column: 25, scope: !3120)
!3150 = !DILocation(line: 298, column: 28, scope: !3120)
!3151 = !DILocation(line: 298, column: 36, scope: !3120)
!3152 = !DILocation(line: 299, column: 5, scope: !3120)
!3153 = !DILocation(line: 300, column: 18, scope: !720)
!3154 = !DILocation(line: 300, column: 5, scope: !720)
!3155 = !DILocation(line: 301, column: 1, scope: !720)
!3156 = !DILocation(line: 340, column: 24, scope: !732)
!3157 = !DILocation(line: 342, column: 5, scope: !732)
!3158 = !DILocation(line: 342, column: 16, scope: !732)
!3159 = !DILocation(line: 342, column: 21, scope: !732)
!3160 = !DILocation(line: 342, column: 33, scope: !732)
!3161 = !DILocation(line: 342, column: 36, scope: !732)
!3162 = !DILocation(line: 343, column: 5, scope: !732)
!3163 = !DILocation(line: 343, column: 12, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3165, file: !397, discriminator: 2)
!3165 = !DILexicalBlockFile(scope: !3166, file: !397, discriminator: 1)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !397, line: 343, column: 5)
!3167 = distinct !DILexicalBlock(scope: !732, file: !397, line: 343, column: 5)
!3168 = !DILocation(line: 343, column: 18, scope: !3166)
!3169 = !DILocation(line: 343, column: 15, scope: !3166)
!3170 = !DILocation(line: 343, column: 5, scope: !3167)
!3171 = !DILocation(line: 345, column: 9, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3166, file: !397, line: 343, column: 51)
!3173 = !DILocation(line: 345, column: 35, scope: !3174)
!3174 = !DILexicalBlockFile(scope: !3175, file: !397, discriminator: 1)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !397, line: 345, column: 12)
!3176 = !DILocation(line: 345, column: 40, scope: !3175)
!3177 = !DILocation(line: 345, column: 43, scope: !3175)
!3178 = !DILocation(line: 345, column: 51, scope: !3175)
!3179 = !DILocation(line: 345, column: 133, scope: !3175)
!3180 = !DILocation(line: 345, column: 136, scope: !3175)
!3181 = !DILocation(line: 345, column: 106, scope: !3175)
!3182 = !DILocation(line: 345, column: 144, scope: !3175)
!3183 = !DILocation(line: 345, column: 157, scope: !3175)
!3184 = !DILocation(line: 345, column: 78, scope: !3175)
!3185 = !DILocation(line: 345, column: 15, scope: !3175)
!3186 = !DILocation(line: 345, column: 20, scope: !3175)
!3187 = !DILocation(line: 345, column: 23, scope: !3175)
!3188 = !DILocation(line: 345, column: 31, scope: !3175)
!3189 = !DILocation(line: 345, column: 166, scope: !3175)
!3190 = !DILocation(line: 345, column: 166, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3175, file: !397, discriminator: 2)
!3192 = !DILocation(line: 365, column: 5, scope: !3172)
!3193 = !DILocation(line: 343, column: 35, scope: !3166)
!3194 = !DILocation(line: 343, column: 39, scope: !3166)
!3195 = !DILocation(line: 343, column: 42, scope: !3166)
!3196 = !DILocation(line: 343, column: 33, scope: !3166)
!3197 = !DILocation(line: 343, column: 5, scope: !3166)
!3198 = !DILocation(line: 366, column: 1, scope: !732)
!3199 = !DILocation(line: 392, column: 26, scope: !736)
!3200 = !DILocation(line: 394, column: 5, scope: !736)
!3201 = !DILocation(line: 394, column: 18, scope: !736)
!3202 = !DILocation(line: 395, column: 5, scope: !736)
!3203 = !DILocation(line: 395, column: 16, scope: !736)
!3204 = !DILocation(line: 395, column: 21, scope: !736)
!3205 = !DILocation(line: 395, column: 33, scope: !736)
!3206 = !DILocation(line: 395, column: 36, scope: !736)
!3207 = !DILocation(line: 396, column: 5, scope: !736)
!3208 = !DILocation(line: 396, column: 12, scope: !3209)
!3209 = !DILexicalBlockFile(scope: !3210, file: !397, discriminator: 2)
!3210 = !DILexicalBlockFile(scope: !3211, file: !397, discriminator: 1)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !397, line: 396, column: 5)
!3212 = distinct !DILexicalBlock(scope: !736, file: !397, line: 396, column: 5)
!3213 = !DILocation(line: 396, column: 18, scope: !3211)
!3214 = !DILocation(line: 396, column: 15, scope: !3211)
!3215 = !DILocation(line: 396, column: 5, scope: !3212)
!3216 = !DILocation(line: 397, column: 62, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3211, file: !397, line: 396, column: 49)
!3218 = !DILocation(line: 397, column: 65, scope: !3217)
!3219 = !DILocation(line: 397, column: 35, scope: !3217)
!3220 = !DILocation(line: 397, column: 73, scope: !3217)
!3221 = !DILocation(line: 397, column: 83, scope: !3217)
!3222 = !DILocation(line: 397, column: 18, scope: !3217)
!3223 = !DILocation(line: 398, column: 16, scope: !3217)
!3224 = !DILocation(line: 398, column: 53, scope: !3217)
!3225 = !DILocation(line: 398, column: 56, scope: !3217)
!3226 = !DILocation(line: 398, column: 26, scope: !3217)
!3227 = !DILocation(line: 401, column: 5, scope: !3217)
!3228 = !DILocation(line: 396, column: 33, scope: !3211)
!3229 = !DILocation(line: 396, column: 37, scope: !3211)
!3230 = !DILocation(line: 396, column: 40, scope: !3211)
!3231 = !DILocation(line: 396, column: 32, scope: !3211)
!3232 = !DILocation(line: 396, column: 5, scope: !3211)
!3233 = !DILocation(line: 402, column: 1, scope: !736)
!3234 = !DILocation(line: 234, column: 25, scope: !748)
!3235 = !DILocation(line: 236, column: 24, scope: !748)
!3236 = !DILocation(line: 236, column: 5, scope: !748)
!3237 = !DILocation(line: 236, column: 11, scope: !748)
!3238 = !DILocation(line: 236, column: 14, scope: !748)
!3239 = !DILocation(line: 236, column: 22, scope: !748)
!3240 = !DILocation(line: 237, column: 24, scope: !748)
!3241 = !DILocation(line: 237, column: 5, scope: !748)
!3242 = !DILocation(line: 237, column: 11, scope: !748)
!3243 = !DILocation(line: 237, column: 14, scope: !748)
!3244 = !DILocation(line: 237, column: 22, scope: !748)
!3245 = !DILocation(line: 238, column: 1, scope: !748)
!3246 = !DILocation(line: 456, column: 29, scope: !751)
!3247 = !DILocation(line: 456, column: 47, scope: !751)
!3248 = !DILocation(line: 458, column: 5, scope: !751)
!3249 = !DILocation(line: 458, column: 16, scope: !751)
!3250 = !DILocation(line: 458, column: 21, scope: !751)
!3251 = !DILocation(line: 458, column: 28, scope: !751)
!3252 = !DILocation(line: 458, column: 31, scope: !751)
!3253 = !DILocation(line: 469, column: 5, scope: !751)
!3254 = !DILocation(line: 469, column: 12, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !3256, file: !397, discriminator: 2)
!3256 = !DILexicalBlockFile(scope: !751, file: !397, discriminator: 1)
!3257 = !DILocation(line: 469, column: 18, scope: !751)
!3258 = !DILocation(line: 469, column: 15, scope: !751)
!3259 = !DILocation(line: 470, column: 9, scope: !757)
!3260 = !DILocation(line: 470, column: 20, scope: !757)
!3261 = !DILocation(line: 472, column: 15, scope: !760)
!3262 = !DILocation(line: 472, column: 20, scope: !760)
!3263 = !DILocation(line: 472, column: 23, scope: !760)
!3264 = !DILocation(line: 472, column: 31, scope: !760)
!3265 = !DILocation(line: 472, column: 13, scope: !757)
!3266 = !DILocation(line: 481, column: 13, scope: !759)
!3267 = !DILocation(line: 481, column: 23, scope: !759)
!3268 = !DILocation(line: 481, column: 56, scope: !759)
!3269 = !DILocation(line: 481, column: 59, scope: !759)
!3270 = !DILocation(line: 481, column: 29, scope: !759)
!3271 = !DILocation(line: 482, column: 13, scope: !759)
!3272 = !DILocation(line: 482, column: 26, scope: !759)
!3273 = !DILocation(line: 482, column: 51, scope: !759)
!3274 = !DILocation(line: 482, column: 57, scope: !759)
!3275 = !DILocation(line: 482, column: 67, scope: !759)
!3276 = !DILocation(line: 484, column: 13, scope: !759)
!3277 = !DILocation(line: 484, column: 39, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !3279, file: !397, discriminator: 1)
!3279 = distinct !DILexicalBlock(scope: !759, file: !397, line: 484, column: 16)
!3280 = !DILocation(line: 484, column: 44, scope: !3279)
!3281 = !DILocation(line: 484, column: 47, scope: !3279)
!3282 = !DILocation(line: 484, column: 55, scope: !3279)
!3283 = !DILocation(line: 484, column: 82, scope: !3279)
!3284 = !DILocation(line: 484, column: 19, scope: !3279)
!3285 = !DILocation(line: 484, column: 24, scope: !3279)
!3286 = !DILocation(line: 484, column: 27, scope: !3279)
!3287 = !DILocation(line: 484, column: 35, scope: !3279)
!3288 = !DILocation(line: 484, column: 111, scope: !3279)
!3289 = !DILocation(line: 484, column: 111, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !3279, file: !397, discriminator: 2)
!3291 = !DILocation(line: 485, column: 20, scope: !759)
!3292 = !DILocation(line: 485, column: 29, scope: !759)
!3293 = !DILocation(line: 487, column: 37, scope: !759)
!3294 = !DILocation(line: 487, column: 29, scope: !759)
!3295 = !DILocation(line: 488, column: 20, scope: !759)
!3296 = !DILocation(line: 488, column: 24, scope: !759)
!3297 = !DILocation(line: 488, column: 27, scope: !759)
!3298 = !DILocation(line: 488, column: 18, scope: !759)
!3299 = !DILocation(line: 489, column: 32, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !759, file: !397, line: 489, column: 17)
!3301 = !DILocation(line: 489, column: 38, scope: !3300)
!3302 = !DILocation(line: 489, column: 47, scope: !3300)
!3303 = !DILocation(line: 489, column: 17, scope: !759)
!3304 = !DILocation(line: 490, column: 39, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3300, file: !397, line: 489, column: 66)
!3306 = !DILocation(line: 490, column: 17, scope: !3305)
!3307 = !DILocation(line: 491, column: 13, scope: !3305)
!3308 = !DILocation(line: 492, column: 9, scope: !760)
!3309 = !DILocation(line: 492, column: 9, scope: !759)
!3310 = !DILocation(line: 501, column: 20, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !760, file: !397, line: 493, column: 14)
!3312 = !DILocation(line: 501, column: 24, scope: !3311)
!3313 = !DILocation(line: 501, column: 27, scope: !3311)
!3314 = !DILocation(line: 501, column: 18, scope: !3311)
!3315 = !DILocation(line: 502, column: 26, scope: !3311)
!3316 = !DILocation(line: 502, column: 30, scope: !3311)
!3317 = !DILocation(line: 502, column: 13, scope: !3311)
!3318 = !DILocation(line: 503, column: 13, scope: !3311)
!3319 = !DILocation(line: 503, column: 39, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !3321, file: !397, discriminator: 1)
!3321 = distinct !DILexicalBlock(scope: !3311, file: !397, line: 503, column: 16)
!3322 = !DILocation(line: 503, column: 44, scope: !3321)
!3323 = !DILocation(line: 503, column: 47, scope: !3321)
!3324 = !DILocation(line: 503, column: 55, scope: !3321)
!3325 = !DILocation(line: 503, column: 82, scope: !3321)
!3326 = !DILocation(line: 503, column: 19, scope: !3321)
!3327 = !DILocation(line: 503, column: 24, scope: !3321)
!3328 = !DILocation(line: 503, column: 27, scope: !3321)
!3329 = !DILocation(line: 503, column: 35, scope: !3321)
!3330 = !DILocation(line: 503, column: 111, scope: !3321)
!3331 = !DILocation(line: 503, column: 111, scope: !3332)
!3332 = !DILexicalBlockFile(scope: !3321, file: !397, discriminator: 2)
!3333 = !DILocation(line: 505, column: 14, scope: !757)
!3334 = !DILocation(line: 505, column: 12, scope: !757)
!3335 = !DILocation(line: 506, column: 5, scope: !751)
!3336 = !DILocation(line: 507, column: 1, scope: !751)
!3337 = !DILocation(line: 511, column: 26, scope: !778)
!3338 = !DILocation(line: 513, column: 5, scope: !778)
!3339 = !DILocation(line: 513, column: 16, scope: !778)
!3340 = !DILocation(line: 513, column: 23, scope: !778)
!3341 = !DILocation(line: 513, column: 28, scope: !778)
!3342 = !DILocation(line: 513, column: 34, scope: !778)
!3343 = !DILocation(line: 513, column: 37, scope: !778)
!3344 = !DILocation(line: 514, column: 5, scope: !778)
!3345 = !DILocation(line: 514, column: 12, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3347, file: !397, discriminator: 2)
!3347 = !DILexicalBlockFile(scope: !778, file: !397, discriminator: 1)
!3348 = !DILocation(line: 514, column: 18, scope: !778)
!3349 = !DILocation(line: 514, column: 15, scope: !778)
!3350 = !DILocation(line: 515, column: 9, scope: !784)
!3351 = !DILocation(line: 515, column: 19, scope: !784)
!3352 = !DILocation(line: 515, column: 52, scope: !784)
!3353 = !DILocation(line: 515, column: 55, scope: !784)
!3354 = !DILocation(line: 515, column: 25, scope: !784)
!3355 = !DILocation(line: 516, column: 16, scope: !784)
!3356 = !DILocation(line: 516, column: 20, scope: !784)
!3357 = !DILocation(line: 516, column: 23, scope: !784)
!3358 = !DILocation(line: 516, column: 14, scope: !784)
!3359 = !DILocation(line: 517, column: 28, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !784, file: !397, line: 517, column: 13)
!3361 = !DILocation(line: 517, column: 34, scope: !3360)
!3362 = !DILocation(line: 517, column: 43, scope: !3360)
!3363 = !DILocation(line: 517, column: 13, scope: !784)
!3364 = !DILocation(line: 518, column: 34, scope: !3360)
!3365 = !DILocation(line: 518, column: 13, scope: !3360)
!3366 = !DILocation(line: 519, column: 14, scope: !784)
!3367 = !DILocation(line: 519, column: 12, scope: !784)
!3368 = !DILocation(line: 520, column: 5, scope: !778)
!3369 = !DILocation(line: 521, column: 1, scope: !778)
!3370 = !DILocation(line: 535, column: 35, scope: !785)
!3371 = !DILocation(line: 535, column: 59, scope: !785)
!3372 = !DILocation(line: 537, column: 5, scope: !785)
!3373 = !DILocation(line: 537, column: 16, scope: !785)
!3374 = !DILocation(line: 538, column: 5, scope: !785)
!3375 = !DILocation(line: 538, column: 16, scope: !785)
!3376 = !DILocation(line: 543, column: 15, scope: !794)
!3377 = !DILocation(line: 543, column: 28, scope: !794)
!3378 = !DILocation(line: 543, column: 31, scope: !794)
!3379 = !DILocation(line: 543, column: 13, scope: !794)
!3380 = !DILocation(line: 543, column: 10, scope: !794)
!3381 = !DILocation(line: 543, column: 40, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !3383, file: !397, discriminator: 2)
!3383 = !DILexicalBlockFile(scope: !793, file: !397, discriminator: 1)
!3384 = !DILocation(line: 543, column: 46, scope: !793)
!3385 = !DILocation(line: 543, column: 43, scope: !793)
!3386 = !DILocation(line: 543, column: 5, scope: !794)
!3387 = !DILocation(line: 544, column: 9, scope: !792)
!3388 = !DILocation(line: 544, column: 19, scope: !792)
!3389 = !DILocation(line: 544, column: 52, scope: !792)
!3390 = !DILocation(line: 544, column: 55, scope: !792)
!3391 = !DILocation(line: 544, column: 25, scope: !792)
!3392 = !DILocation(line: 547, column: 16, scope: !792)
!3393 = !DILocation(line: 547, column: 20, scope: !792)
!3394 = !DILocation(line: 547, column: 23, scope: !792)
!3395 = !DILocation(line: 547, column: 14, scope: !792)
!3396 = !DILocation(line: 549, column: 34, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !792, file: !397, line: 549, column: 13)
!3398 = !DILocation(line: 549, column: 13, scope: !3397)
!3399 = !DILocation(line: 549, column: 13, scope: !792)
!3400 = !DILocation(line: 550, column: 26, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !397, line: 549, column: 39)
!3402 = !DILocation(line: 550, column: 30, scope: !3401)
!3403 = !DILocation(line: 550, column: 13, scope: !3401)
!3404 = !DILocation(line: 551, column: 13, scope: !3401)
!3405 = !DILocation(line: 551, column: 39, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !3407, file: !397, discriminator: 1)
!3407 = distinct !DILexicalBlock(scope: !3401, file: !397, line: 551, column: 16)
!3408 = !DILocation(line: 551, column: 44, scope: !3407)
!3409 = !DILocation(line: 551, column: 47, scope: !3407)
!3410 = !DILocation(line: 551, column: 55, scope: !3407)
!3411 = !DILocation(line: 551, column: 82, scope: !3407)
!3412 = !DILocation(line: 551, column: 19, scope: !3407)
!3413 = !DILocation(line: 551, column: 24, scope: !3407)
!3414 = !DILocation(line: 551, column: 27, scope: !3407)
!3415 = !DILocation(line: 551, column: 35, scope: !3407)
!3416 = !DILocation(line: 551, column: 111, scope: !3407)
!3417 = !DILocation(line: 551, column: 111, scope: !3418)
!3418 = !DILexicalBlockFile(scope: !3407, file: !397, discriminator: 2)
!3419 = !DILocation(line: 552, column: 9, scope: !3401)
!3420 = !DILocation(line: 553, column: 5, scope: !793)
!3421 = !DILocation(line: 553, column: 5, scope: !792)
!3422 = !DILocation(line: 543, column: 64, scope: !793)
!3423 = !DILocation(line: 543, column: 62, scope: !793)
!3424 = !DILocation(line: 543, column: 5, scope: !793)
!3425 = !DILocation(line: 554, column: 1, scope: !785)
!3426 = !DILocation(line: 574, column: 44, scope: !798)
!3427 = !DILocation(line: 576, column: 5, scope: !798)
!3428 = !DILocation(line: 576, column: 18, scope: !798)
!3429 = !DILocation(line: 577, column: 5, scope: !798)
!3430 = !DILocation(line: 577, column: 16, scope: !798)
!3431 = !DILocation(line: 577, column: 21, scope: !798)
!3432 = !DILocation(line: 577, column: 33, scope: !798)
!3433 = !DILocation(line: 577, column: 36, scope: !798)
!3434 = !DILocation(line: 578, column: 5, scope: !798)
!3435 = !DILocation(line: 578, column: 12, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !3437, file: !397, discriminator: 2)
!3437 = !DILexicalBlockFile(scope: !3438, file: !397, discriminator: 1)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !397, line: 578, column: 5)
!3439 = distinct !DILexicalBlock(scope: !798, file: !397, line: 578, column: 5)
!3440 = !DILocation(line: 578, column: 18, scope: !3438)
!3441 = !DILocation(line: 578, column: 15, scope: !3438)
!3442 = !DILocation(line: 578, column: 5, scope: !3439)
!3443 = !DILocation(line: 580, column: 62, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3438, file: !397, line: 578, column: 51)
!3445 = !DILocation(line: 580, column: 65, scope: !3444)
!3446 = !DILocation(line: 580, column: 35, scope: !3444)
!3447 = !DILocation(line: 580, column: 73, scope: !3444)
!3448 = !DILocation(line: 580, column: 83, scope: !3444)
!3449 = !DILocation(line: 580, column: 18, scope: !3444)
!3450 = !DILocation(line: 581, column: 16, scope: !3444)
!3451 = !DILocation(line: 581, column: 53, scope: !3444)
!3452 = !DILocation(line: 581, column: 56, scope: !3444)
!3453 = !DILocation(line: 581, column: 26, scope: !3444)
!3454 = !DILocation(line: 583, column: 33, scope: !3444)
!3455 = !DILocation(line: 583, column: 25, scope: !3444)
!3456 = !DILocation(line: 584, column: 5, scope: !3444)
!3457 = !DILocation(line: 578, column: 35, scope: !3438)
!3458 = !DILocation(line: 578, column: 39, scope: !3438)
!3459 = !DILocation(line: 578, column: 42, scope: !3438)
!3460 = !DILocation(line: 578, column: 33, scope: !3438)
!3461 = !DILocation(line: 578, column: 5, scope: !3438)
!3462 = !DILocation(line: 585, column: 1, scope: !798)
!3463 = !DILocation(line: 741, column: 19, scope: !812)
!3464 = !DILocation(line: 741, column: 34, scope: !812)
!3465 = !DILocation(line: 744, column: 24, scope: !812)
!3466 = !DILocation(line: 744, column: 43, scope: !812)
!3467 = !DILocation(line: 744, column: 49, scope: !812)
!3468 = !DILocation(line: 744, column: 59, scope: !812)
!3469 = !{!1601, !1024, i64 24}
!3470 = !DILocation(line: 744, column: 68, scope: !812)
!3471 = !DILocation(line: 743, column: 5, scope: !812)
!3472 = !DILocation(line: 745, column: 1, scope: !812)
!3473 = !DILocation(line: 599, column: 28, scope: !818)
!3474 = !DILocation(line: 599, column: 52, scope: !818)
!3475 = !DILocation(line: 601, column: 5, scope: !818)
!3476 = !DILocation(line: 601, column: 16, scope: !818)
!3477 = !DILocation(line: 602, column: 5, scope: !818)
!3478 = !DILocation(line: 602, column: 15, scope: !818)
!3479 = !DILocation(line: 603, column: 5, scope: !818)
!3480 = !DILocation(line: 603, column: 22, scope: !818)
!3481 = !DILocation(line: 604, column: 5, scope: !818)
!3482 = !DILocation(line: 604, column: 15, scope: !818)
!3483 = !DILocation(line: 605, column: 5, scope: !818)
!3484 = !DILocation(line: 605, column: 16, scope: !818)
!3485 = !DILocation(line: 606, column: 5, scope: !818)
!3486 = !DILocation(line: 606, column: 9, scope: !818)
!3487 = !DILocation(line: 608, column: 5, scope: !818)
!3488 = !DILocation(line: 618, column: 15, scope: !833)
!3489 = !DILocation(line: 618, column: 28, scope: !833)
!3490 = !DILocation(line: 618, column: 31, scope: !833)
!3491 = !DILocation(line: 618, column: 13, scope: !833)
!3492 = !DILocation(line: 618, column: 10, scope: !833)
!3493 = !DILocation(line: 618, column: 40, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3495, file: !397, discriminator: 2)
!3495 = !DILexicalBlockFile(scope: !832, file: !397, discriminator: 1)
!3496 = !DILocation(line: 618, column: 46, scope: !832)
!3497 = !DILocation(line: 618, column: 43, scope: !832)
!3498 = !DILocation(line: 618, column: 5, scope: !833)
!3499 = !DILocation(line: 619, column: 9, scope: !831)
!3500 = !DILocation(line: 619, column: 27, scope: !831)
!3501 = !DILocation(line: 621, column: 42, scope: !831)
!3502 = !DILocation(line: 621, column: 45, scope: !831)
!3503 = !DILocation(line: 621, column: 15, scope: !831)
!3504 = !DILocation(line: 621, column: 12, scope: !831)
!3505 = !DILocation(line: 623, column: 16, scope: !831)
!3506 = !DILocation(line: 623, column: 20, scope: !831)
!3507 = !DILocation(line: 623, column: 23, scope: !831)
!3508 = !DILocation(line: 623, column: 14, scope: !831)
!3509 = !DILocation(line: 625, column: 31, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !831, file: !397, line: 625, column: 13)
!3511 = !DILocation(line: 625, column: 37, scope: !3510)
!3512 = !DILocation(line: 625, column: 48, scope: !3510)
!3513 = !{!1601, !1050, i64 208}
!3514 = !DILocation(line: 625, column: 66, scope: !3510)
!3515 = !DILocation(line: 625, column: 13, scope: !831)
!3516 = !DILocation(line: 626, column: 13, scope: !3510)
!3517 = !DILocation(line: 630, column: 60, scope: !831)
!3518 = !DILocation(line: 630, column: 50, scope: !831)
!3519 = !DILocation(line: 630, column: 81, scope: !831)
!3520 = !DILocation(line: 630, column: 87, scope: !831)
!3521 = !DILocation(line: 630, column: 97, scope: !831)
!3522 = !DILocation(line: 630, column: 65, scope: !831)
!3523 = !DILocation(line: 630, column: 34, scope: !831)
!3524 = !DILocation(line: 629, column: 18, scope: !831)
!3525 = !DILocation(line: 629, column: 16, scope: !831)
!3526 = !DILocation(line: 636, column: 20, scope: !837)
!3527 = !DILocation(line: 636, column: 19, scope: !837)
!3528 = !DILocation(line: 636, column: 17, scope: !837)
!3529 = !DILocation(line: 636, column: 14, scope: !837)
!3530 = !DILocation(line: 636, column: 28, scope: !3531)
!3531 = !DILexicalBlockFile(scope: !3532, file: !397, discriminator: 2)
!3532 = !DILexicalBlockFile(scope: !836, file: !397, discriminator: 1)
!3533 = !DILocation(line: 636, column: 31, scope: !836)
!3534 = !DILocation(line: 636, column: 9, scope: !837)
!3535 = !DILocation(line: 637, column: 13, scope: !835)
!3536 = !DILocation(line: 637, column: 24, scope: !835)
!3537 = !DILocation(line: 644, column: 33, scope: !835)
!3538 = !DILocation(line: 644, column: 13, scope: !835)
!3539 = !DILocation(line: 646, column: 17, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !835, file: !397, line: 646, column: 17)
!3541 = !DILocation(line: 646, column: 21, scope: !3540)
!3542 = !{!3543, !1024, i64 24}
!3543 = !{!"_PyWeakReference", !1049, i64 0, !1024, i64 16, !1024, i64 24, !1050, i64 32, !1024, i64 40, !1024, i64 48}
!3544 = !DILocation(line: 646, column: 33, scope: !3540)
!3545 = !DILocation(line: 646, column: 17, scope: !835)
!3546 = !DILocation(line: 647, column: 17, scope: !3540)
!3547 = !DILocation(line: 677, column: 36, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !835, file: !397, line: 677, column: 17)
!3549 = !DILocation(line: 677, column: 22, scope: !3548)
!3550 = !DILocation(line: 677, column: 39, scope: !3548)
!3551 = !DILocation(line: 677, column: 45, scope: !3548)
!3552 = !DILocation(line: 677, column: 48, scope: !3548)
!3553 = !DILocation(line: 677, column: 56, scope: !3548)
!3554 = !DILocation(line: 677, column: 64, scope: !3548)
!3555 = !DILocation(line: 677, column: 17, scope: !835)
!3556 = !DILocation(line: 678, column: 17, scope: !3548)
!3557 = !DILocation(line: 684, column: 29, scope: !835)
!3558 = !DILocation(line: 684, column: 16, scope: !835)
!3559 = !DILocation(line: 684, column: 35, scope: !835)
!3560 = !DILocation(line: 684, column: 44, scope: !835)
!3561 = !DILocation(line: 687, column: 37, scope: !835)
!3562 = !DILocation(line: 687, column: 23, scope: !835)
!3563 = !DILocation(line: 687, column: 40, scope: !835)
!3564 = !DILocation(line: 687, column: 20, scope: !835)
!3565 = !DILocation(line: 691, column: 26, scope: !835)
!3566 = !DILocation(line: 691, column: 13, scope: !835)
!3567 = !DILocation(line: 692, column: 9, scope: !836)
!3568 = !DILocation(line: 692, column: 9, scope: !3532)
!3569 = !DILocation(line: 692, column: 9, scope: !835)
!3570 = !DILocation(line: 636, column: 52, scope: !836)
!3571 = !DILocation(line: 636, column: 51, scope: !836)
!3572 = !DILocation(line: 636, column: 49, scope: !836)
!3573 = !DILocation(line: 636, column: 9, scope: !836)
!3574 = !DILocation(line: 693, column: 5, scope: !832)
!3575 = !DILocation(line: 693, column: 5, scope: !3495)
!3576 = !DILocation(line: 693, column: 5, scope: !831)
!3577 = !DILocation(line: 618, column: 64, scope: !832)
!3578 = !DILocation(line: 618, column: 62, scope: !832)
!3579 = !DILocation(line: 618, column: 5, scope: !832)
!3580 = !DILocation(line: 698, column: 5, scope: !818)
!3581 = !DILocation(line: 698, column: 14, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3583, file: !397, discriminator: 2)
!3583 = !DILexicalBlockFile(scope: !818, file: !397, discriminator: 1)
!3584 = !DILocation(line: 698, column: 12, scope: !818)
!3585 = !DILocation(line: 699, column: 9, scope: !839)
!3586 = !DILocation(line: 699, column: 19, scope: !839)
!3587 = !DILocation(line: 700, column: 9, scope: !839)
!3588 = !DILocation(line: 700, column: 19, scope: !839)
!3589 = !DILocation(line: 702, column: 27, scope: !839)
!3590 = !DILocation(line: 702, column: 30, scope: !839)
!3591 = !DILocation(line: 702, column: 12, scope: !839)
!3592 = !DILocation(line: 703, column: 42, scope: !839)
!3593 = !DILocation(line: 703, column: 45, scope: !839)
!3594 = !DILocation(line: 703, column: 15, scope: !839)
!3595 = !DILocation(line: 703, column: 12, scope: !839)
!3596 = !DILocation(line: 706, column: 33, scope: !839)
!3597 = !DILocation(line: 706, column: 14, scope: !839)
!3598 = !DILocation(line: 706, column: 12, scope: !839)
!3599 = !DILocation(line: 707, column: 20, scope: !839)
!3600 = !DILocation(line: 707, column: 24, scope: !839)
!3601 = !DILocation(line: 707, column: 18, scope: !839)
!3602 = !DILocation(line: 711, column: 45, scope: !839)
!3603 = !DILocation(line: 711, column: 55, scope: !839)
!3604 = !DILocation(line: 711, column: 16, scope: !839)
!3605 = !DILocation(line: 711, column: 14, scope: !839)
!3606 = !DILocation(line: 712, column: 13, scope: !843)
!3607 = !DILocation(line: 712, column: 18, scope: !843)
!3608 = !DILocation(line: 712, column: 13, scope: !839)
!3609 = !DILocation(line: 713, column: 35, scope: !843)
!3610 = !DILocation(line: 713, column: 13, scope: !843)
!3611 = !DILocation(line: 715, column: 13, scope: !843)
!3612 = !DILocation(line: 715, column: 18, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !842, file: !397, discriminator: 1)
!3614 = !DILocation(line: 715, column: 28, scope: !842)
!3615 = !DILocation(line: 715, column: 58, scope: !842)
!3616 = !DILocation(line: 715, column: 73, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !842, file: !397, line: 715, column: 70)
!3618 = !DILocation(line: 715, column: 90, scope: !3617)
!3619 = !DILocation(line: 715, column: 70, scope: !3617)
!3620 = !DILocation(line: 715, column: 100, scope: !3617)
!3621 = !DILocation(line: 715, column: 70, scope: !842)
!3622 = !DILocation(line: 715, column: 70, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !842, file: !397, discriminator: 2)
!3624 = !DILocation(line: 715, column: 131, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3617, file: !397, discriminator: 3)
!3626 = !DILocation(line: 715, column: 149, scope: !3617)
!3627 = !DILocation(line: 715, column: 159, scope: !3617)
!3628 = !DILocation(line: 715, column: 184, scope: !3617)
!3629 = !DILocation(line: 715, column: 115, scope: !3617)
!3630 = !DILocation(line: 715, column: 203, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !843, file: !397, discriminator: 4)
!3632 = !DILocation(line: 715, column: 203, scope: !842)
!3633 = !DILocation(line: 715, column: 203, scope: !3634)
!3634 = !DILexicalBlockFile(scope: !842, file: !397, discriminator: 5)
!3635 = !DILocation(line: 728, column: 9, scope: !839)
!3636 = !DILocation(line: 728, column: 14, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !845, file: !397, discriminator: 1)
!3638 = !DILocation(line: 728, column: 24, scope: !845)
!3639 = !DILocation(line: 728, column: 54, scope: !845)
!3640 = !DILocation(line: 728, column: 67, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !845, file: !397, line: 728, column: 64)
!3642 = !DILocation(line: 728, column: 84, scope: !3641)
!3643 = !DILocation(line: 728, column: 64, scope: !3641)
!3644 = !DILocation(line: 728, column: 94, scope: !3641)
!3645 = !DILocation(line: 728, column: 64, scope: !845)
!3646 = !DILocation(line: 728, column: 64, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !845, file: !397, discriminator: 2)
!3648 = !DILocation(line: 728, column: 125, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3641, file: !397, discriminator: 3)
!3650 = !DILocation(line: 728, column: 143, scope: !3641)
!3651 = !DILocation(line: 728, column: 153, scope: !3641)
!3652 = !DILocation(line: 728, column: 178, scope: !3641)
!3653 = !DILocation(line: 728, column: 109, scope: !3641)
!3654 = !DILocation(line: 728, column: 197, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !839, file: !397, discriminator: 4)
!3656 = !DILocation(line: 728, column: 197, scope: !845)
!3657 = !DILocation(line: 728, column: 197, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !845, file: !397, discriminator: 5)
!3659 = !DILocation(line: 729, column: 26, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !839, file: !397, line: 729, column: 13)
!3661 = !DILocation(line: 729, column: 29, scope: !3660)
!3662 = !DILocation(line: 729, column: 40, scope: !3660)
!3663 = !DILocation(line: 729, column: 37, scope: !3660)
!3664 = !DILocation(line: 729, column: 13, scope: !839)
!3665 = !DILocation(line: 731, column: 26, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3660, file: !397, line: 729, column: 44)
!3667 = !DILocation(line: 731, column: 30, scope: !3666)
!3668 = !DILocation(line: 731, column: 13, scope: !3666)
!3669 = !DILocation(line: 732, column: 9, scope: !3666)
!3670 = !DILocation(line: 734, column: 13, scope: !3660)
!3671 = !DILocation(line: 735, column: 5, scope: !818)
!3672 = !DILocation(line: 737, column: 12, scope: !818)
!3673 = !DILocation(line: 738, column: 1, scope: !818)
!3674 = !DILocation(line: 737, column: 5, scope: !818)
!3675 = !DILocation(line: 784, column: 29, scope: !846)
!3676 = !DILocation(line: 786, column: 5, scope: !846)
!3677 = !DILocation(line: 786, column: 16, scope: !846)
!3678 = !DILocation(line: 787, column: 5, scope: !846)
!3679 = !DILocation(line: 787, column: 15, scope: !846)
!3680 = !DILocation(line: 797, column: 5, scope: !846)
!3681 = !DILocation(line: 799, column: 5, scope: !846)
!3682 = !DILocation(line: 799, column: 30, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !3684, file: !397, discriminator: 2)
!3684 = !DILexicalBlockFile(scope: !846, file: !397, discriminator: 1)
!3685 = !DILocation(line: 799, column: 13, scope: !846)
!3686 = !DILocation(line: 799, column: 12, scope: !846)
!3687 = !DILocation(line: 800, column: 9, scope: !852)
!3688 = !DILocation(line: 800, column: 20, scope: !852)
!3689 = !DILocation(line: 800, column: 25, scope: !852)
!3690 = !DILocation(line: 800, column: 38, scope: !852)
!3691 = !DILocation(line: 800, column: 41, scope: !852)
!3692 = !DILocation(line: 801, column: 9, scope: !852)
!3693 = !DILocation(line: 801, column: 19, scope: !852)
!3694 = !DILocation(line: 801, column: 52, scope: !852)
!3695 = !DILocation(line: 801, column: 55, scope: !852)
!3696 = !DILocation(line: 801, column: 25, scope: !852)
!3697 = !DILocation(line: 802, column: 22, scope: !852)
!3698 = !DILocation(line: 802, column: 9, scope: !852)
!3699 = !DILocation(line: 803, column: 17, scope: !857)
!3700 = !DILocation(line: 803, column: 22, scope: !857)
!3701 = !DILocation(line: 803, column: 25, scope: !857)
!3702 = !DILocation(line: 803, column: 33, scope: !857)
!3703 = !DILocation(line: 803, column: 45, scope: !857)
!3704 = !DILocation(line: 803, column: 51, scope: !857)
!3705 = !DILocation(line: 804, column: 34, scope: !857)
!3706 = !DILocation(line: 804, column: 40, scope: !857)
!3707 = !DILocation(line: 804, column: 51, scope: !857)
!3708 = !DILocation(line: 804, column: 60, scope: !857)
!3709 = !DILocation(line: 804, column: 76, scope: !857)
!3710 = !DILocation(line: 804, column: 82, scope: !857)
!3711 = !DILocation(line: 805, column: 43, scope: !857)
!3712 = !DILocation(line: 805, column: 49, scope: !857)
!3713 = !DILocation(line: 805, column: 59, scope: !857)
!3714 = !{!1601, !1024, i64 392}
!3715 = !DILocation(line: 805, column: 27, scope: !857)
!3716 = !DILocation(line: 805, column: 72, scope: !857)
!3717 = !DILocation(line: 803, column: 13, scope: !852)
!3718 = !DILocation(line: 806, column: 13, scope: !856)
!3719 = !DILocation(line: 806, column: 39, scope: !3720)
!3720 = !DILexicalBlockFile(scope: !3721, file: !397, discriminator: 1)
!3721 = distinct !DILexicalBlock(scope: !856, file: !397, line: 806, column: 16)
!3722 = !DILocation(line: 806, column: 44, scope: !3721)
!3723 = !DILocation(line: 806, column: 47, scope: !3721)
!3724 = !DILocation(line: 806, column: 55, scope: !3721)
!3725 = !DILocation(line: 806, column: 68, scope: !3721)
!3726 = !DILocation(line: 806, column: 19, scope: !3721)
!3727 = !DILocation(line: 806, column: 24, scope: !3721)
!3728 = !DILocation(line: 806, column: 27, scope: !3721)
!3729 = !DILocation(line: 806, column: 35, scope: !3721)
!3730 = !DILocation(line: 806, column: 80, scope: !3721)
!3731 = !DILocation(line: 806, column: 80, scope: !3732)
!3732 = !DILexicalBlockFile(scope: !3721, file: !397, discriminator: 2)
!3733 = !DILocation(line: 807, column: 29, scope: !856)
!3734 = !DILocation(line: 807, column: 35, scope: !856)
!3735 = !DILocation(line: 807, column: 44, scope: !856)
!3736 = !DILocation(line: 808, column: 13, scope: !856)
!3737 = !DILocation(line: 808, column: 22, scope: !856)
!3738 = !DILocation(line: 809, column: 13, scope: !856)
!3739 = !DILocation(line: 809, column: 18, scope: !3740)
!3740 = !DILexicalBlockFile(scope: !855, file: !397, discriminator: 1)
!3741 = !DILocation(line: 809, column: 28, scope: !855)
!3742 = !DILocation(line: 809, column: 58, scope: !855)
!3743 = !DILocation(line: 809, column: 71, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !855, file: !397, line: 809, column: 68)
!3745 = !DILocation(line: 809, column: 88, scope: !3744)
!3746 = !DILocation(line: 809, column: 68, scope: !3744)
!3747 = !DILocation(line: 809, column: 98, scope: !3744)
!3748 = !DILocation(line: 809, column: 68, scope: !855)
!3749 = !DILocation(line: 809, column: 68, scope: !3750)
!3750 = !DILexicalBlockFile(scope: !855, file: !397, discriminator: 2)
!3751 = !DILocation(line: 809, column: 129, scope: !3752)
!3752 = !DILexicalBlockFile(scope: !3744, file: !397, discriminator: 3)
!3753 = !DILocation(line: 809, column: 147, scope: !3744)
!3754 = !DILocation(line: 809, column: 157, scope: !3744)
!3755 = !DILocation(line: 809, column: 182, scope: !3744)
!3756 = !DILocation(line: 809, column: 113, scope: !3744)
!3757 = !DILocation(line: 809, column: 201, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !856, file: !397, discriminator: 4)
!3759 = !DILocation(line: 809, column: 201, scope: !855)
!3760 = !DILocation(line: 809, column: 201, scope: !3761)
!3761 = !DILexicalBlockFile(scope: !855, file: !397, discriminator: 5)
!3762 = !DILocation(line: 810, column: 9, scope: !856)
!3763 = !DILocation(line: 811, column: 5, scope: !846)
!3764 = !DILocation(line: 812, column: 26, scope: !846)
!3765 = !DILocation(line: 812, column: 5, scope: !846)
!3766 = !DILocation(line: 813, column: 1, scope: !846)
!3767 = !DILocation(line: 819, column: 26, scope: !858)
!3768 = !DILocation(line: 821, column: 5, scope: !858)
!3769 = !DILocation(line: 821, column: 16, scope: !858)
!3770 = !DILocation(line: 822, column: 15, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !858, file: !397, line: 822, column: 5)
!3772 = !DILocation(line: 822, column: 28, scope: !3771)
!3773 = !DILocation(line: 822, column: 31, scope: !3771)
!3774 = !DILocation(line: 822, column: 13, scope: !3771)
!3775 = !DILocation(line: 822, column: 10, scope: !3771)
!3776 = !DILocation(line: 822, column: 40, scope: !3777)
!3777 = !DILexicalBlockFile(scope: !3778, file: !397, discriminator: 2)
!3778 = !DILexicalBlockFile(scope: !3779, file: !397, discriminator: 1)
!3779 = distinct !DILexicalBlock(scope: !3771, file: !397, line: 822, column: 5)
!3780 = !DILocation(line: 822, column: 46, scope: !3779)
!3781 = !DILocation(line: 822, column: 43, scope: !3779)
!3782 = !DILocation(line: 822, column: 5, scope: !3771)
!3783 = !DILocation(line: 824, column: 9, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3779, file: !397, line: 823, column: 31)
!3785 = !DILocation(line: 824, column: 35, scope: !3786)
!3786 = !DILexicalBlockFile(scope: !3787, file: !397, discriminator: 1)
!3787 = distinct !DILexicalBlock(scope: !3784, file: !397, line: 824, column: 12)
!3788 = !DILocation(line: 824, column: 40, scope: !3787)
!3789 = !DILocation(line: 824, column: 43, scope: !3787)
!3790 = !DILocation(line: 824, column: 51, scope: !3787)
!3791 = !DILocation(line: 824, column: 133, scope: !3787)
!3792 = !DILocation(line: 824, column: 136, scope: !3787)
!3793 = !DILocation(line: 824, column: 106, scope: !3787)
!3794 = !DILocation(line: 824, column: 144, scope: !3787)
!3795 = !DILocation(line: 824, column: 157, scope: !3787)
!3796 = !DILocation(line: 824, column: 78, scope: !3787)
!3797 = !DILocation(line: 824, column: 15, scope: !3787)
!3798 = !DILocation(line: 824, column: 20, scope: !3787)
!3799 = !DILocation(line: 824, column: 23, scope: !3787)
!3800 = !DILocation(line: 824, column: 31, scope: !3787)
!3801 = !DILocation(line: 824, column: 166, scope: !3787)
!3802 = !DILocation(line: 824, column: 166, scope: !3803)
!3803 = !DILexicalBlockFile(scope: !3787, file: !397, discriminator: 2)
!3804 = !DILocation(line: 826, column: 5, scope: !3784)
!3805 = !DILocation(line: 823, column: 15, scope: !3779)
!3806 = !DILocation(line: 823, column: 19, scope: !3779)
!3807 = !DILocation(line: 823, column: 22, scope: !3779)
!3808 = !DILocation(line: 823, column: 13, scope: !3779)
!3809 = !DILocation(line: 822, column: 5, scope: !3779)
!3810 = !DILocation(line: 827, column: 19, scope: !858)
!3811 = !DILocation(line: 827, column: 5, scope: !858)
!3812 = !DILocation(line: 828, column: 15, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !858, file: !397, line: 828, column: 5)
!3814 = !DILocation(line: 828, column: 28, scope: !3813)
!3815 = !DILocation(line: 828, column: 31, scope: !3813)
!3816 = !DILocation(line: 828, column: 13, scope: !3813)
!3817 = !DILocation(line: 828, column: 10, scope: !3813)
!3818 = !DILocation(line: 828, column: 40, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3820, file: !397, discriminator: 2)
!3820 = !DILexicalBlockFile(scope: !3821, file: !397, discriminator: 1)
!3821 = distinct !DILexicalBlock(scope: !3813, file: !397, line: 828, column: 5)
!3822 = !DILocation(line: 828, column: 46, scope: !3821)
!3823 = !DILocation(line: 828, column: 43, scope: !3821)
!3824 = !DILocation(line: 828, column: 5, scope: !3813)
!3825 = !DILocation(line: 831, column: 15, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !397, line: 831, column: 13)
!3827 = distinct !DILexicalBlock(scope: !3821, file: !397, line: 829, column: 31)
!3828 = !DILocation(line: 831, column: 20, scope: !3826)
!3829 = !DILocation(line: 831, column: 23, scope: !3826)
!3830 = !DILocation(line: 831, column: 31, scope: !3826)
!3831 = !DILocation(line: 831, column: 39, scope: !3826)
!3832 = !DILocation(line: 831, column: 13, scope: !3827)
!3833 = !DILocation(line: 832, column: 13, scope: !3826)
!3834 = !DILocation(line: 833, column: 5, scope: !3827)
!3835 = !DILocation(line: 829, column: 15, scope: !3821)
!3836 = !DILocation(line: 829, column: 19, scope: !3821)
!3837 = !DILocation(line: 829, column: 22, scope: !3821)
!3838 = !DILocation(line: 829, column: 13, scope: !3821)
!3839 = !DILocation(line: 828, column: 5, scope: !3821)
!3840 = !DILocation(line: 834, column: 5, scope: !858)
!3841 = !DILocation(line: 835, column: 1, scope: !858)
!3842 = !DILocation(line: 838, column: 27, scope: !862)
!3843 = !DILocation(line: 840, column: 5, scope: !862)
!3844 = !DILocation(line: 840, column: 16, scope: !862)
!3845 = !DILocation(line: 841, column: 15, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !862, file: !397, line: 841, column: 5)
!3847 = !DILocation(line: 841, column: 28, scope: !3846)
!3848 = !DILocation(line: 841, column: 31, scope: !3846)
!3849 = !DILocation(line: 841, column: 13, scope: !3846)
!3850 = !DILocation(line: 841, column: 10, scope: !3846)
!3851 = !DILocation(line: 841, column: 40, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3853, file: !397, discriminator: 2)
!3853 = !DILexicalBlockFile(scope: !3854, file: !397, discriminator: 1)
!3854 = distinct !DILexicalBlock(scope: !3846, file: !397, line: 841, column: 5)
!3855 = !DILocation(line: 841, column: 46, scope: !3854)
!3856 = !DILocation(line: 841, column: 43, scope: !3854)
!3857 = !DILocation(line: 841, column: 5, scope: !3846)
!3858 = !DILocation(line: 843, column: 9, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3854, file: !397, line: 842, column: 31)
!3860 = !DILocation(line: 843, column: 35, scope: !3861)
!3861 = !DILexicalBlockFile(scope: !3862, file: !397, discriminator: 1)
!3862 = distinct !DILexicalBlock(scope: !3859, file: !397, line: 843, column: 12)
!3863 = !DILocation(line: 843, column: 40, scope: !3862)
!3864 = !DILocation(line: 843, column: 43, scope: !3862)
!3865 = !DILocation(line: 843, column: 51, scope: !3862)
!3866 = !DILocation(line: 843, column: 78, scope: !3862)
!3867 = !DILocation(line: 843, column: 15, scope: !3862)
!3868 = !DILocation(line: 843, column: 20, scope: !3862)
!3869 = !DILocation(line: 843, column: 23, scope: !3862)
!3870 = !DILocation(line: 843, column: 31, scope: !3862)
!3871 = !DILocation(line: 843, column: 107, scope: !3862)
!3872 = !DILocation(line: 843, column: 107, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3862, file: !397, discriminator: 2)
!3874 = !DILocation(line: 844, column: 5, scope: !3859)
!3875 = !DILocation(line: 842, column: 15, scope: !3854)
!3876 = !DILocation(line: 842, column: 19, scope: !3854)
!3877 = !DILocation(line: 842, column: 22, scope: !3854)
!3878 = !DILocation(line: 842, column: 13, scope: !3854)
!3879 = !DILocation(line: 841, column: 5, scope: !3854)
!3880 = !DILocation(line: 845, column: 1, scope: !862)
!3881 = !DILocation(line: 852, column: 27, scope: !866)
!3882 = !DILocation(line: 852, column: 51, scope: !866)
!3883 = !DILocation(line: 854, column: 5, scope: !866)
!3884 = !DILocation(line: 854, column: 13, scope: !866)
!3885 = !DILocation(line: 856, column: 5, scope: !866)
!3886 = !DILocation(line: 856, column: 30, scope: !3887)
!3887 = !DILexicalBlockFile(scope: !3888, file: !397, discriminator: 2)
!3888 = !DILexicalBlockFile(scope: !866, file: !397, discriminator: 1)
!3889 = !DILocation(line: 856, column: 13, scope: !866)
!3890 = !DILocation(line: 856, column: 12, scope: !866)
!3891 = !DILocation(line: 857, column: 9, scope: !872)
!3892 = !DILocation(line: 857, column: 20, scope: !872)
!3893 = !DILocation(line: 857, column: 25, scope: !872)
!3894 = !DILocation(line: 857, column: 38, scope: !872)
!3895 = !DILocation(line: 857, column: 41, scope: !872)
!3896 = !DILocation(line: 858, column: 9, scope: !872)
!3897 = !DILocation(line: 858, column: 19, scope: !872)
!3898 = !DILocation(line: 858, column: 52, scope: !872)
!3899 = !DILocation(line: 858, column: 55, scope: !872)
!3900 = !DILocation(line: 858, column: 25, scope: !872)
!3901 = !DILocation(line: 860, column: 13, scope: !879)
!3902 = !DILocation(line: 860, column: 19, scope: !879)
!3903 = !DILocation(line: 860, column: 13, scope: !872)
!3904 = !DILocation(line: 861, column: 27, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !879, file: !397, line: 860, column: 29)
!3906 = !DILocation(line: 861, column: 36, scope: !3905)
!3907 = !DILocation(line: 861, column: 13, scope: !3905)
!3908 = !DILocation(line: 862, column: 9, scope: !3905)
!3909 = !DILocation(line: 864, column: 40, scope: !877)
!3910 = !DILocation(line: 864, column: 46, scope: !877)
!3911 = !DILocation(line: 864, column: 56, scope: !877)
!3912 = !{!1601, !1024, i64 192}
!3913 = !DILocation(line: 864, column: 24, scope: !877)
!3914 = !DILocation(line: 864, column: 66, scope: !877)
!3915 = !DILocation(line: 864, column: 17, scope: !878)
!3916 = !DILocation(line: 865, column: 33, scope: !876)
!3917 = !DILocation(line: 865, column: 39, scope: !876)
!3918 = !DILocation(line: 865, column: 48, scope: !876)
!3919 = !DILocation(line: 866, column: 17, scope: !876)
!3920 = !DILocation(line: 866, column: 23, scope: !876)
!3921 = !DILocation(line: 867, column: 17, scope: !876)
!3922 = !DILocation(line: 867, column: 22, scope: !3923)
!3923 = !DILexicalBlockFile(scope: !875, file: !397, discriminator: 1)
!3924 = !DILocation(line: 867, column: 32, scope: !875)
!3925 = !DILocation(line: 867, column: 62, scope: !875)
!3926 = !DILocation(line: 867, column: 75, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !875, file: !397, line: 867, column: 72)
!3928 = !DILocation(line: 867, column: 92, scope: !3927)
!3929 = !DILocation(line: 867, column: 72, scope: !3927)
!3930 = !DILocation(line: 867, column: 102, scope: !3927)
!3931 = !DILocation(line: 867, column: 72, scope: !875)
!3932 = !DILocation(line: 867, column: 72, scope: !3933)
!3933 = !DILexicalBlockFile(scope: !875, file: !397, discriminator: 2)
!3934 = !DILocation(line: 867, column: 133, scope: !3935)
!3935 = !DILexicalBlockFile(scope: !3927, file: !397, discriminator: 3)
!3936 = !DILocation(line: 867, column: 151, scope: !3927)
!3937 = !DILocation(line: 867, column: 161, scope: !3927)
!3938 = !DILocation(line: 867, column: 186, scope: !3927)
!3939 = !DILocation(line: 867, column: 117, scope: !3927)
!3940 = !DILocation(line: 867, column: 205, scope: !3941)
!3941 = !DILexicalBlockFile(scope: !876, file: !397, discriminator: 4)
!3942 = !DILocation(line: 867, column: 205, scope: !875)
!3943 = !DILocation(line: 867, column: 205, scope: !3944)
!3944 = !DILexicalBlockFile(scope: !875, file: !397, discriminator: 5)
!3945 = !DILocation(line: 868, column: 13, scope: !876)
!3946 = !DILocation(line: 870, column: 13, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !872, file: !397, line: 870, column: 13)
!3948 = !DILocation(line: 870, column: 26, scope: !3947)
!3949 = !DILocation(line: 870, column: 29, scope: !3947)
!3950 = !DILocation(line: 870, column: 40, scope: !3947)
!3951 = !DILocation(line: 870, column: 37, scope: !3947)
!3952 = !DILocation(line: 870, column: 13, scope: !872)
!3953 = !DILocation(line: 872, column: 26, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3947, file: !397, line: 870, column: 44)
!3955 = !DILocation(line: 872, column: 30, scope: !3954)
!3956 = !DILocation(line: 872, column: 13, scope: !3954)
!3957 = !DILocation(line: 873, column: 13, scope: !3954)
!3958 = !DILocation(line: 873, column: 39, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !3960, file: !397, discriminator: 1)
!3960 = distinct !DILexicalBlock(scope: !3954, file: !397, line: 873, column: 16)
!3961 = !DILocation(line: 873, column: 44, scope: !3960)
!3962 = !DILocation(line: 873, column: 47, scope: !3960)
!3963 = !DILocation(line: 873, column: 55, scope: !3960)
!3964 = !DILocation(line: 873, column: 82, scope: !3960)
!3965 = !DILocation(line: 873, column: 19, scope: !3960)
!3966 = !DILocation(line: 873, column: 24, scope: !3960)
!3967 = !DILocation(line: 873, column: 27, scope: !3960)
!3968 = !DILocation(line: 873, column: 35, scope: !3960)
!3969 = !DILocation(line: 873, column: 111, scope: !3960)
!3970 = !DILocation(line: 873, column: 111, scope: !3971)
!3971 = !DILexicalBlockFile(scope: !3960, file: !397, discriminator: 2)
!3972 = !DILocation(line: 874, column: 9, scope: !3954)
!3973 = !DILocation(line: 875, column: 5, scope: !866)
!3974 = !DILocation(line: 876, column: 1, scope: !866)
!3975 = !DILocation(line: 757, column: 37, scope: !880)
!3976 = !DILocation(line: 757, column: 60, scope: !880)
!3977 = !DILocation(line: 759, column: 5, scope: !880)
!3978 = !DILocation(line: 759, column: 16, scope: !880)
!3979 = !DILocation(line: 759, column: 21, scope: !880)
!3980 = !DILocation(line: 759, column: 33, scope: !880)
!3981 = !DILocation(line: 759, column: 36, scope: !880)
!3982 = !DILocation(line: 761, column: 9, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !880, file: !397, line: 761, column: 9)
!3984 = !DILocation(line: 761, column: 17, scope: !3983)
!3985 = !DILocation(line: 761, column: 9, scope: !880)
!3986 = !DILocation(line: 762, column: 19, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3983, file: !397, line: 761, column: 32)
!3988 = !DILocation(line: 762, column: 17, scope: !3987)
!3989 = !DILocation(line: 763, column: 13, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3987, file: !397, line: 763, column: 13)
!3991 = !DILocation(line: 763, column: 21, scope: !3990)
!3992 = !DILocation(line: 763, column: 13, scope: !3987)
!3993 = !DILocation(line: 764, column: 13, scope: !3990)
!3994 = !DILocation(line: 765, column: 5, scope: !3987)
!3995 = !DILocation(line: 766, column: 5, scope: !880)
!3996 = !DILocation(line: 766, column: 12, scope: !3997)
!3997 = !DILexicalBlockFile(scope: !3998, file: !397, discriminator: 2)
!3998 = !DILexicalBlockFile(scope: !887, file: !397, discriminator: 1)
!3999 = !DILocation(line: 766, column: 18, scope: !887)
!4000 = !DILocation(line: 766, column: 15, scope: !887)
!4001 = !DILocation(line: 766, column: 5, scope: !888)
!4002 = !DILocation(line: 767, column: 9, scope: !886)
!4003 = !DILocation(line: 767, column: 19, scope: !886)
!4004 = !DILocation(line: 767, column: 52, scope: !886)
!4005 = !DILocation(line: 767, column: 55, scope: !886)
!4006 = !DILocation(line: 767, column: 25, scope: !886)
!4007 = !DILocation(line: 769, column: 14, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !886, file: !397, line: 769, column: 13)
!4009 = !DILocation(line: 769, column: 20, scope: !4008)
!4010 = !DILocation(line: 769, column: 30, scope: !4008)
!4011 = !DILocation(line: 769, column: 54, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !4008, file: !397, discriminator: 1)
!4013 = !DILocation(line: 769, column: 33, scope: !4008)
!4014 = !DILocation(line: 769, column: 13, scope: !886)
!4015 = !DILocation(line: 770, column: 31, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !397, line: 770, column: 17)
!4017 = distinct !DILexicalBlock(scope: !4008, file: !397, line: 769, column: 59)
!4018 = !DILocation(line: 770, column: 40, scope: !4016)
!4019 = !DILocation(line: 770, column: 17, scope: !4016)
!4020 = !DILocation(line: 770, column: 44, scope: !4016)
!4021 = !DILocation(line: 770, column: 17, scope: !4017)
!4022 = !DILocation(line: 771, column: 17, scope: !4016)
!4023 = !DILocation(line: 772, column: 9, scope: !4017)
!4024 = !DILocation(line: 773, column: 5, scope: !887)
!4025 = !DILocation(line: 773, column: 5, scope: !3998)
!4026 = !DILocation(line: 773, column: 5, scope: !886)
!4027 = !DILocation(line: 766, column: 35, scope: !887)
!4028 = !DILocation(line: 766, column: 39, scope: !887)
!4029 = !DILocation(line: 766, column: 42, scope: !887)
!4030 = !DILocation(line: 766, column: 33, scope: !887)
!4031 = !DILocation(line: 766, column: 5, scope: !887)
!4032 = !DILocation(line: 775, column: 19, scope: !880)
!4033 = !DILocation(line: 775, column: 31, scope: !880)
!4034 = !DILocation(line: 775, column: 5, scope: !880)
!4035 = !DILocation(line: 776, column: 5, scope: !880)
!4036 = !DILocation(line: 777, column: 1, scope: !880)
!4037 = !DILocation(line: 886, column: 11, scope: !889)
!4038 = !DILocation(line: 887, column: 11, scope: !889)
!4039 = !DILocation(line: 888, column: 11, scope: !889)
!4040 = !DILocation(line: 889, column: 11, scope: !889)
!4041 = !DILocation(line: 890, column: 11, scope: !889)
!4042 = !DILocation(line: 891, column: 11, scope: !889)
!4043 = !DILocation(line: 892, column: 11, scope: !889)
!4044 = !DILocation(line: 893, column: 11, scope: !889)
!4045 = !DILocation(line: 894, column: 11, scope: !889)
!4046 = !DILocation(line: 895, column: 1, scope: !889)
!4047 = !DILocation(line: 241, column: 29, scope: !727)
!4048 = !DILocation(line: 243, column: 13, scope: !727)
!4049 = !DILocation(line: 243, column: 19, scope: !727)
!4050 = !DILocation(line: 243, column: 22, scope: !727)
!4051 = !DILocation(line: 243, column: 33, scope: !727)
!4052 = !DILocation(line: 243, column: 30, scope: !727)
!4053 = !DILocation(line: 243, column: 5, scope: !727)
!4054 = !DILocation(line: 370, column: 24, scope: !741)
!4055 = !DILocation(line: 370, column: 34, scope: !741)
!4056 = !DILocation(line: 373, column: 28, scope: !747)
!4057 = !DILocation(line: 373, column: 34, scope: !747)
!4058 = !DILocation(line: 373, column: 46, scope: !747)
!4059 = !DILocation(line: 373, column: 55, scope: !747)
!4060 = !DILocation(line: 373, column: 72, scope: !747)
!4061 = !DILocation(line: 373, column: 78, scope: !747)
!4062 = !DILocation(line: 373, column: 96, scope: !4063)
!4063 = !DILexicalBlockFile(scope: !747, file: !397, discriminator: 1)
!4064 = !DILocation(line: 373, column: 102, scope: !747)
!4065 = !DILocation(line: 373, column: 112, scope: !747)
!4066 = !DILocation(line: 373, column: 121, scope: !747)
!4067 = !DILocation(line: 373, column: 135, scope: !747)
!4068 = !DILocation(line: 373, column: 152, scope: !4069)
!4069 = !DILexicalBlockFile(scope: !747, file: !397, discriminator: 2)
!4070 = !DILocation(line: 373, column: 158, scope: !747)
!4071 = !DILocation(line: 373, column: 168, scope: !747)
!4072 = !DILocation(line: 373, column: 177, scope: !747)
!4073 = !DILocation(line: 373, column: 138, scope: !747)
!4074 = !DILocation(line: 373, column: 9, scope: !741)
!4075 = !DILocation(line: 374, column: 9, scope: !746)
!4076 = !DILocation(line: 374, column: 20, scope: !746)
!4077 = !DILocation(line: 374, column: 40, scope: !746)
!4078 = !DILocation(line: 374, column: 26, scope: !746)
!4079 = !DILocation(line: 374, column: 43, scope: !746)
!4080 = !DILocation(line: 380, column: 15, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !746, file: !397, line: 380, column: 13)
!4082 = !DILocation(line: 380, column: 20, scope: !4081)
!4083 = !DILocation(line: 380, column: 23, scope: !4081)
!4084 = !DILocation(line: 380, column: 31, scope: !4081)
!4085 = !DILocation(line: 380, column: 39, scope: !4081)
!4086 = !DILocation(line: 380, column: 13, scope: !746)
!4087 = !DILocation(line: 381, column: 15, scope: !4081)
!4088 = !DILocation(line: 381, column: 20, scope: !4081)
!4089 = !DILocation(line: 381, column: 23, scope: !4081)
!4090 = !DILocation(line: 381, column: 31, scope: !4081)
!4091 = !DILocation(line: 381, column: 13, scope: !4081)
!4092 = !DILocation(line: 382, column: 5, scope: !747)
!4093 = !DILocation(line: 382, column: 5, scope: !746)
!4094 = !DILocation(line: 383, column: 5, scope: !741)
!4095 = !DILocation(line: 406, column: 27, scope: !762)
!4096 = !DILocation(line: 406, column: 42, scope: !762)
!4097 = !DILocation(line: 408, column: 28, scope: !768)
!4098 = !DILocation(line: 408, column: 34, scope: !768)
!4099 = !DILocation(line: 408, column: 46, scope: !768)
!4100 = !DILocation(line: 408, column: 55, scope: !768)
!4101 = !DILocation(line: 408, column: 72, scope: !768)
!4102 = !DILocation(line: 408, column: 78, scope: !768)
!4103 = !DILocation(line: 408, column: 96, scope: !4104)
!4104 = !DILexicalBlockFile(scope: !768, file: !397, discriminator: 1)
!4105 = !DILocation(line: 408, column: 102, scope: !768)
!4106 = !DILocation(line: 408, column: 112, scope: !768)
!4107 = !DILocation(line: 408, column: 121, scope: !768)
!4108 = !DILocation(line: 408, column: 135, scope: !768)
!4109 = !DILocation(line: 408, column: 152, scope: !4110)
!4110 = !DILexicalBlockFile(scope: !768, file: !397, discriminator: 2)
!4111 = !DILocation(line: 408, column: 158, scope: !768)
!4112 = !DILocation(line: 408, column: 168, scope: !768)
!4113 = !DILocation(line: 408, column: 177, scope: !768)
!4114 = !DILocation(line: 408, column: 138, scope: !768)
!4115 = !DILocation(line: 408, column: 9, scope: !762)
!4116 = !DILocation(line: 409, column: 9, scope: !767)
!4117 = !DILocation(line: 409, column: 20, scope: !767)
!4118 = !DILocation(line: 409, column: 40, scope: !767)
!4119 = !DILocation(line: 409, column: 26, scope: !767)
!4120 = !DILocation(line: 409, column: 43, scope: !767)
!4121 = !DILocation(line: 410, column: 9, scope: !767)
!4122 = !DILocation(line: 410, column: 26, scope: !767)
!4123 = !DILocation(line: 410, column: 38, scope: !767)
!4124 = !DILocation(line: 410, column: 43, scope: !767)
!4125 = !DILocation(line: 410, column: 46, scope: !767)
!4126 = !DILocation(line: 410, column: 54, scope: !767)
!4127 = !DILocation(line: 412, column: 13, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !767, file: !397, line: 412, column: 13)
!4129 = !DILocation(line: 412, column: 21, scope: !4128)
!4130 = !DILocation(line: 412, column: 13, scope: !767)
!4131 = !DILocation(line: 418, column: 13, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4128, file: !397, line: 412, column: 27)
!4133 = !DILocation(line: 418, column: 39, scope: !4134)
!4134 = !DILexicalBlockFile(scope: !4135, file: !397, discriminator: 1)
!4135 = distinct !DILexicalBlock(scope: !4132, file: !397, line: 418, column: 16)
!4136 = !DILocation(line: 418, column: 44, scope: !4135)
!4137 = !DILocation(line: 418, column: 47, scope: !4135)
!4138 = !DILocation(line: 418, column: 55, scope: !4135)
!4139 = !DILocation(line: 418, column: 82, scope: !4135)
!4140 = !DILocation(line: 418, column: 19, scope: !4135)
!4141 = !DILocation(line: 418, column: 24, scope: !4135)
!4142 = !DILocation(line: 418, column: 27, scope: !4135)
!4143 = !DILocation(line: 418, column: 35, scope: !4135)
!4144 = !DILocation(line: 418, column: 108, scope: !4135)
!4145 = !DILocation(line: 418, column: 108, scope: !4146)
!4146 = !DILexicalBlockFile(scope: !4135, file: !397, discriminator: 2)
!4147 = !DILocation(line: 419, column: 9, scope: !4132)
!4148 = !DILocation(line: 420, column: 18, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4128, file: !397, line: 420, column: 18)
!4150 = !DILocation(line: 420, column: 26, scope: !4149)
!4151 = !DILocation(line: 420, column: 18, scope: !4128)
!4152 = !DILocation(line: 427, column: 26, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4149, file: !397, line: 420, column: 35)
!4154 = !DILocation(line: 427, column: 30, scope: !4153)
!4155 = !DILocation(line: 427, column: 13, scope: !4153)
!4156 = !DILocation(line: 428, column: 13, scope: !4153)
!4157 = !DILocation(line: 428, column: 39, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !4159, file: !397, discriminator: 1)
!4159 = distinct !DILexicalBlock(scope: !4153, file: !397, line: 428, column: 16)
!4160 = !DILocation(line: 428, column: 44, scope: !4159)
!4161 = !DILocation(line: 428, column: 47, scope: !4159)
!4162 = !DILocation(line: 428, column: 55, scope: !4159)
!4163 = !DILocation(line: 428, column: 82, scope: !4159)
!4164 = !DILocation(line: 428, column: 19, scope: !4159)
!4165 = !DILocation(line: 428, column: 24, scope: !4159)
!4166 = !DILocation(line: 428, column: 27, scope: !4159)
!4167 = !DILocation(line: 428, column: 35, scope: !4159)
!4168 = !DILocation(line: 428, column: 108, scope: !4159)
!4169 = !DILocation(line: 428, column: 108, scope: !4170)
!4170 = !DILexicalBlockFile(scope: !4159, file: !397, discriminator: 2)
!4171 = !DILocation(line: 429, column: 9, scope: !4153)
!4172 = !DILocation(line: 443, column: 5, scope: !768)
!4173 = !DILocation(line: 443, column: 5, scope: !767)
!4174 = !DILocation(line: 444, column: 5, scope: !762)
!4175 = !DILocation(line: 273, column: 25, scope: !771)
!4176 = !DILocation(line: 273, column: 42, scope: !771)
!4177 = !DILocation(line: 275, column: 5, scope: !771)
!4178 = !DILocation(line: 275, column: 16, scope: !771)
!4179 = !DILocation(line: 276, column: 5, scope: !771)
!4180 = !DILocation(line: 276, column: 16, scope: !771)
!4181 = !DILocation(line: 276, column: 31, scope: !771)
!4182 = !DILocation(line: 276, column: 37, scope: !771)
!4183 = !DILocation(line: 276, column: 40, scope: !771)
!4184 = !DILocation(line: 277, column: 5, scope: !771)
!4185 = !DILocation(line: 277, column: 16, scope: !771)
!4186 = !DILocation(line: 277, column: 31, scope: !771)
!4187 = !DILocation(line: 277, column: 37, scope: !771)
!4188 = !DILocation(line: 277, column: 40, scope: !771)
!4189 = !DILocation(line: 279, column: 32, scope: !771)
!4190 = !DILocation(line: 279, column: 5, scope: !771)
!4191 = !DILocation(line: 279, column: 19, scope: !771)
!4192 = !DILocation(line: 279, column: 22, scope: !771)
!4193 = !DILocation(line: 279, column: 30, scope: !771)
!4194 = !DILocation(line: 280, column: 32, scope: !771)
!4195 = !DILocation(line: 280, column: 5, scope: !771)
!4196 = !DILocation(line: 280, column: 19, scope: !771)
!4197 = !DILocation(line: 280, column: 22, scope: !771)
!4198 = !DILocation(line: 280, column: 30, scope: !771)
!4199 = !DILocation(line: 282, column: 35, scope: !771)
!4200 = !DILocation(line: 282, column: 41, scope: !771)
!4201 = !DILocation(line: 282, column: 44, scope: !771)
!4202 = !DILocation(line: 282, column: 16, scope: !771)
!4203 = !DILocation(line: 282, column: 22, scope: !771)
!4204 = !DILocation(line: 282, column: 25, scope: !771)
!4205 = !DILocation(line: 282, column: 33, scope: !771)
!4206 = !DILocation(line: 282, column: 14, scope: !771)
!4207 = !DILocation(line: 283, column: 47, scope: !771)
!4208 = !DILocation(line: 283, column: 28, scope: !771)
!4209 = !DILocation(line: 283, column: 34, scope: !771)
!4210 = !DILocation(line: 283, column: 37, scope: !771)
!4211 = !DILocation(line: 283, column: 45, scope: !771)
!4212 = !DILocation(line: 283, column: 5, scope: !771)
!4213 = !DILocation(line: 283, column: 15, scope: !771)
!4214 = !DILocation(line: 283, column: 18, scope: !771)
!4215 = !DILocation(line: 283, column: 26, scope: !771)
!4216 = !DILocation(line: 284, column: 24, scope: !771)
!4217 = !DILocation(line: 284, column: 5, scope: !771)
!4218 = !DILocation(line: 284, column: 11, scope: !771)
!4219 = !DILocation(line: 284, column: 14, scope: !771)
!4220 = !DILocation(line: 284, column: 22, scope: !771)
!4221 = !DILocation(line: 285, column: 1, scope: !771)
!4222 = !DILocation(line: 525, column: 32, scope: !795)
!4223 = !DILocation(line: 527, column: 12, scope: !795)
!4224 = !DILocation(line: 527, column: 16, scope: !795)
!4225 = !DILocation(line: 527, column: 25, scope: !795)
!4226 = !{!1601, !1024, i64 376}
!4227 = !DILocation(line: 527, column: 32, scope: !795)
!4228 = !DILocation(line: 527, column: 5, scope: !795)
!4229 = !DILocation(line: 558, column: 22, scope: !803)
!4230 = !DILocation(line: 558, column: 37, scope: !803)
!4231 = !DILocation(line: 560, column: 28, scope: !811)
!4232 = !DILocation(line: 560, column: 34, scope: !811)
!4233 = !DILocation(line: 560, column: 46, scope: !811)
!4234 = !DILocation(line: 560, column: 55, scope: !811)
!4235 = !DILocation(line: 560, column: 72, scope: !811)
!4236 = !DILocation(line: 560, column: 78, scope: !811)
!4237 = !DILocation(line: 560, column: 96, scope: !4238)
!4238 = !DILexicalBlockFile(scope: !811, file: !397, discriminator: 1)
!4239 = !DILocation(line: 560, column: 102, scope: !811)
!4240 = !DILocation(line: 560, column: 112, scope: !811)
!4241 = !DILocation(line: 560, column: 121, scope: !811)
!4242 = !DILocation(line: 560, column: 135, scope: !811)
!4243 = !DILocation(line: 560, column: 152, scope: !4244)
!4244 = !DILexicalBlockFile(scope: !811, file: !397, discriminator: 2)
!4245 = !DILocation(line: 560, column: 158, scope: !811)
!4246 = !DILocation(line: 560, column: 168, scope: !811)
!4247 = !DILocation(line: 560, column: 177, scope: !811)
!4248 = !DILocation(line: 560, column: 138, scope: !811)
!4249 = !DILocation(line: 560, column: 9, scope: !803)
!4250 = !DILocation(line: 561, column: 32, scope: !809)
!4251 = !DILocation(line: 561, column: 18, scope: !809)
!4252 = !DILocation(line: 561, column: 35, scope: !809)
!4253 = !DILocation(line: 561, column: 41, scope: !809)
!4254 = !DILocation(line: 561, column: 44, scope: !809)
!4255 = !DILocation(line: 561, column: 52, scope: !809)
!4256 = !DILocation(line: 561, column: 60, scope: !809)
!4257 = !DILocation(line: 561, column: 13, scope: !810)
!4258 = !DILocation(line: 562, column: 13, scope: !808)
!4259 = !DILocation(line: 562, column: 24, scope: !808)
!4260 = !DILocation(line: 562, column: 44, scope: !808)
!4261 = !DILocation(line: 562, column: 30, scope: !808)
!4262 = !DILocation(line: 562, column: 47, scope: !808)
!4263 = !DILocation(line: 563, column: 26, scope: !808)
!4264 = !DILocation(line: 563, column: 30, scope: !808)
!4265 = !DILocation(line: 563, column: 13, scope: !808)
!4266 = !DILocation(line: 564, column: 13, scope: !808)
!4267 = !DILocation(line: 564, column: 39, scope: !4268)
!4268 = !DILexicalBlockFile(scope: !4269, file: !397, discriminator: 1)
!4269 = distinct !DILexicalBlock(scope: !808, file: !397, line: 564, column: 16)
!4270 = !DILocation(line: 564, column: 44, scope: !4269)
!4271 = !DILocation(line: 564, column: 47, scope: !4269)
!4272 = !DILocation(line: 564, column: 55, scope: !4269)
!4273 = !DILocation(line: 564, column: 82, scope: !4269)
!4274 = !DILocation(line: 564, column: 19, scope: !4269)
!4275 = !DILocation(line: 564, column: 24, scope: !4269)
!4276 = !DILocation(line: 564, column: 27, scope: !4269)
!4277 = !DILocation(line: 564, column: 35, scope: !4269)
!4278 = !DILocation(line: 564, column: 111, scope: !4269)
!4279 = !DILocation(line: 564, column: 111, scope: !4280)
!4280 = !DILexicalBlockFile(scope: !4269, file: !397, discriminator: 2)
!4281 = !DILocation(line: 565, column: 9, scope: !809)
!4282 = !DILocation(line: 565, column: 9, scope: !808)
!4283 = !DILocation(line: 566, column: 5, scope: !810)
!4284 = !DILocation(line: 567, column: 5, scope: !803)
