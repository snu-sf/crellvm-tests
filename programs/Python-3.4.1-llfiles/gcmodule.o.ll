; ModuleID = 'gcmodule.o.bc'
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
%struct._PyWeakReference = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._PyWeakReference*, %struct._PyWeakReference* }

@generations = internal global [3 x %struct.gc_generation] [%struct.gc_generation { %union._gc_head { %struct.anon { %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i32 0, i32 0), %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i32 0, i32 0, i32 0), i64 0 } }, i32 700, i32 0 }, %struct.gc_generation { %union._gc_head { %struct.anon { %union._gc_head* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.gc_generation]* @generations to i8*), i64 32) to %union._gc_head*), %union._gc_head* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.gc_generation]* @generations to i8*), i64 32) to %union._gc_head*), i64 0 } }, i32 10, i32 0 }, %struct.gc_generation { %union._gc_head { %struct.anon { %union._gc_head* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.gc_generation]* @generations to i8*), i64 64) to %union._gc_head*), %union._gc_head* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.gc_generation]* @generations to i8*), i64 64) to %union._gc_head*), i64 0 } }, i32 10, i32 0 }], align 16
@_PyGC_generation0 = global %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), align 8
@gcmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([876 x i8], [876 x i8]* @gc__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([15 x %struct.PyMethodDef], [15 x %struct.PyMethodDef]* @GcMethods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@garbage = internal unnamed_addr global %struct._object* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@callbacks = internal unnamed_addr global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"callbacks\00", align 1
@tmod = internal unnamed_addr global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"DEBUG_STATS\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"DEBUG_COLLECTABLE\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"DEBUG_UNCOLLECTABLE\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"DEBUG_SAVEALL\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DEBUG_LEAK\00", align 1
@collecting = internal unnamed_addr global i1 false
@debug = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"gc: %zd uncollectable objects at shutdown\00", align 1
@.str.9 = private unnamed_addr constant [97 x i8] c"gc: %zd uncollectable objects at shutdown; use gc.set_debug(gc.DEBUG_UNCOLLECTABLE) to list them\00", align 1
@PyExc_ResourceWarning = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@enabled = internal unnamed_addr global i1 false
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
@generation_stats = internal unnamed_addr global [3 x %struct.gc_generation_stats] zeroinitializer, align 16
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
@long_lived_pending = internal unnamed_addr global i64 0, align 8
@long_lived_total = internal unnamed_addr global i64 0, align 8
@.str.47 = private unnamed_addr constant [12 x i8] c"collectable\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"gc: done\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"gc: done, %zd unreachable, %zd uncollectable\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c", %.4fs elapsed\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@gc_str = internal unnamed_addr global %struct._object* null, align 8
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
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @gcmodule, i32 1013) #1, !dbg !1017
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !400, metadata !1018), !dbg !1019
  %cmp = icmp eq %struct._object* %call, null, !dbg !1020
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1022

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1023, !tbaa !1025
  %cmp1 = icmp eq %struct._object* %0, null, !dbg !1029
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !1030

if.then.2:                                        ; preds = %if.end
  %call3 = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !1031
  store %struct._object* %call3, %struct._object** @garbage, align 8, !dbg !1033, !tbaa !1025
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !1034
  br i1 %cmp4, label %cleanup, label %if.end.7, !dbg !1036

if.end.7:                                         ; preds = %if.then.2, %if.end
  %1 = phi %struct._object* [ %call3, %if.then.2 ], [ %0, %if.end ], !dbg !1037
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1039
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1039, !tbaa !1040
  %inc = add i64 %2, 1, !dbg !1039
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1039, !tbaa !1040
  %call8 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct._object* %1) #1, !dbg !1043
  %cmp9 = icmp slt i32 %call8, 0, !dbg !1044
  br i1 %cmp9, label %cleanup, label %if.end.11, !dbg !1045

if.end.11:                                        ; preds = %if.end.7
  %3 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !1046, !tbaa !1025
  %cmp12 = icmp eq %struct._object* %3, null, !dbg !1048
  br i1 %cmp12, label %if.then.13, label %if.end.18, !dbg !1049

if.then.13:                                       ; preds = %if.end.11
  %call14 = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !1050
  store %struct._object* %call14, %struct._object** @callbacks, align 8, !dbg !1052, !tbaa !1025
  %cmp15 = icmp eq %struct._object* %call14, null, !dbg !1053
  br i1 %cmp15, label %cleanup, label %if.end.18, !dbg !1055

if.end.18:                                        ; preds = %if.then.13, %if.end.11
  %4 = phi %struct._object* [ %call14, %if.then.13 ], [ %3, %if.end.11 ], !dbg !1056
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1058
  %5 = load i64, i64* %ob_refcnt19, align 8, !dbg !1058, !tbaa !1040
  %inc20 = add i64 %5, 1, !dbg !1058
  store i64 %inc20, i64* %ob_refcnt19, align 8, !dbg !1058, !tbaa !1040
  %call21 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct._object* %4) #1, !dbg !1059
  %cmp22 = icmp slt i32 %call21, 0, !dbg !1060
  br i1 %cmp22, label %cleanup, label %if.end.24, !dbg !1061

if.end.24:                                        ; preds = %if.end.18
  %6 = load %struct._object*, %struct._object** @tmod, align 8, !dbg !1062, !tbaa !1025
  %cmp25 = icmp eq %struct._object* %6, null, !dbg !1064
  br i1 %cmp25, label %if.then.26, label %if.end.31, !dbg !1065

if.then.26:                                       ; preds = %if.end.24
  %call27 = tail call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #1, !dbg !1066
  store %struct._object* %call27, %struct._object** @tmod, align 8, !dbg !1068, !tbaa !1025
  %cmp28 = icmp eq %struct._object* %call27, null, !dbg !1069
  br i1 %cmp28, label %if.then.29, label %if.end.31, !dbg !1071

if.then.29:                                       ; preds = %if.then.26
  tail call void @PyErr_Clear() #1, !dbg !1072
  br label %if.end.31, !dbg !1072

if.end.31:                                        ; preds = %if.then.26, %if.then.29, %if.end.24
  %call32 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 1) #1, !dbg !1073
  %cmp33 = icmp slt i32 %call32, 0, !dbg !1073
  br i1 %cmp33, label %cleanup, label %if.end.35, !dbg !1075

if.end.35:                                        ; preds = %if.end.31
  %call36 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 2) #1, !dbg !1076
  %cmp37 = icmp slt i32 %call36, 0, !dbg !1076
  br i1 %cmp37, label %cleanup, label %if.end.39, !dbg !1078

if.end.39:                                        ; preds = %if.end.35
  %call40 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 4) #1, !dbg !1079
  %cmp41 = icmp slt i32 %call40, 0, !dbg !1079
  br i1 %cmp41, label %cleanup, label %if.end.43, !dbg !1081

if.end.43:                                        ; preds = %if.end.39
  %call44 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 32) #1, !dbg !1082
  %cmp45 = icmp slt i32 %call44, 0, !dbg !1082
  br i1 %cmp45, label %cleanup, label %if.end.47, !dbg !1084

if.end.47:                                        ; preds = %if.end.43
  %call48 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 38) #1, !dbg !1085
  %cmp49 = icmp slt i32 %call48, 0, !dbg !1085
  %.call = select i1 %cmp49, %struct._object* null, %struct._object* %call, !dbg !1085
  br label %cleanup, !dbg !1085

cleanup:                                          ; preds = %if.end.47, %if.end.43, %if.end.39, %if.end.35, %if.end.31, %if.end.18, %if.then.13, %if.end.7, %if.then.2, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.then.2 ], [ null, %if.end.7 ], [ null, %if.then.13 ], [ null, %if.end.18 ], [ null, %if.end.31 ], [ null, %if.end.35 ], [ null, %if.end.39 ], [ null, %if.end.43 ], [ %.call, %if.end.47 ]
  ret %struct._object* %retval.0, !dbg !1087
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
  %collected.i = alloca i64, align 8
  %uncollectable.i = alloca i64, align 8
  %.b = load i1, i1* @collecting, align 1
  br i1 %.b, label %if.end, label %if.else, !dbg !1088

if.else:                                          ; preds = %entry
  store i1 true, i1* @collecting, align 1
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !648, metadata !1018) #1, !dbg !1089
  %0 = bitcast i64* %collected.i to i8*, !dbg !1093
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1093
  %1 = bitcast i64* %uncollectable.i to i8*, !dbg !1093
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1093
  tail call fastcc void @invoke_gc_callback(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 2, i64 0, i64 0) #1, !dbg !1094
  tail call void @llvm.dbg.value(metadata i64* %collected.i, i64 0, metadata !650, metadata !1018) #1, !dbg !1095
  tail call void @llvm.dbg.value(metadata i64* %uncollectable.i, i64 0, metadata !651, metadata !1018) #1, !dbg !1096
  %call.i = call fastcc i64 @collect(i32 2, i64* nonnull %collected.i, i64* nonnull %uncollectable.i, i32 0) #1, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !649, metadata !1018) #1, !dbg !1098
  call void @llvm.dbg.value(metadata i64* %collected.i, i64 0, metadata !650, metadata !1018) #1, !dbg !1095
  %2 = load i64, i64* %collected.i, align 8, !dbg !1099, !tbaa !1100
  call void @llvm.dbg.value(metadata i64* %uncollectable.i, i64 0, metadata !651, metadata !1018) #1, !dbg !1096
  %3 = load i64, i64* %uncollectable.i, align 8, !dbg !1101, !tbaa !1100
  call fastcc void @invoke_gc_callback(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 2, i64 %2, i64 %3) #1, !dbg !1102
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1103
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !405, metadata !1018), !dbg !1104
  store i1 false, i1* @collecting, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %n.0 = phi i64 [ %call.i, %if.else ], [ 0, %entry ]
  ret i64 %n.0, !dbg !1105
}

; Function Attrs: nounwind uwtable
define i64 @_PyGC_CollectNoFail() #0 {
entry:
  %.b = load i1, i1* @collecting, align 1
  br i1 %.b, label %if.end, label %if.else, !dbg !1106

if.else:                                          ; preds = %entry
  store i1 true, i1* @collecting, align 1
  %call = tail call fastcc i64 @collect(i32 2, i64* null, i64* null, i32 1), !dbg !1107
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !408, metadata !1018), !dbg !1110
  store i1 false, i1* @collecting, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %n.0 = phi i64 [ %call, %if.else ], [ 0, %entry ]
  ret i64 %n.0, !dbg !1111
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @collect(i32 %generation, i64* %n_collected, i64* %n_uncollectable, i32 %nofail) #0 {
entry:
  %seen.i = alloca %union._gc_head, align 8
  %wrcb_to_call.i = alloca %union._gc_head, align 8
  %unreachable = alloca %union._gc_head, align 8
  %finalizers = alloca %union._gc_head, align 8
  tail call void @llvm.dbg.value(metadata i32 %generation, i64 0, metadata !683, metadata !1018), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64* %n_collected, i64 0, metadata !684, metadata !1018), !dbg !1113
  tail call void @llvm.dbg.value(metadata i64* %n_uncollectable, i64 0, metadata !685, metadata !1018), !dbg !1114
  tail call void @llvm.dbg.value(metadata i32 %nofail, i64 0, metadata !686, metadata !1018), !dbg !1115
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !688, metadata !1018), !dbg !1116
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !689, metadata !1018), !dbg !1117
  %0 = bitcast %union._gc_head* %unreachable to i8*, !dbg !1118
  call void @llvm.lifetime.start(i64 24, i8* %0) #1, !dbg !1118
  %1 = bitcast %union._gc_head* %finalizers to i8*, !dbg !1119
  call void @llvm.lifetime.start(i64 24, i8* %1) #1, !dbg !1119
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !695, metadata !1018), !dbg !1120
  %idxprom = sext i32 %generation to i64, !dbg !1121
  %2 = load i32, i32* @debug, align 4, !dbg !1122, !tbaa !1124
  %and = and i32 %2, 1, !dbg !1126
  %tobool = icmp eq i32 %and, 0, !dbg !1126
  br i1 %tobool, label %if.end, label %if.then, !dbg !1127

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i64 0, i64 0), i32 %generation) #1, !dbg !1128
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i64 0, i64 0)) #1, !dbg !1130
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !687, metadata !1018), !dbg !1131
  tail call void @llvm.dbg.value(metadata %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), i64 0, metadata !704, metadata !1018), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !706, metadata !1018), !dbg !1136
  br label %for.cond.i, !dbg !1137

for.cond.i:                                       ; preds = %for.cond.i, %if.then
  %list.pn.i = phi %union._gc_head* [ getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), %if.then ], [ %gc.0.i, %for.cond.i ], !dbg !1139
  %n.0.i = phi i64 [ 0, %if.then ], [ %inc.i, %for.cond.i ], !dbg !1139
  %gc.0.in.i = getelementptr inbounds %union._gc_head, %union._gc_head* %list.pn.i, i64 0, i32 0, i32 0, !dbg !1140
  %gc.0.i = load %union._gc_head*, %union._gc_head** %gc.0.in.i, align 8, !dbg !1140
  %cmp.i = icmp eq %union._gc_head* %gc.0.i, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), !dbg !1141
  %inc.i = add i64 %n.0.i, 1, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !706, metadata !1018), !dbg !1136
  br i1 %cmp.i, label %gc_list_size.exit, label %for.cond.i, !dbg !1145

gc_list_size.exit:                                ; preds = %for.cond.i
  %n.0.i.lcssa = phi i64 [ %n.0.i, %for.cond.i ]
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i64 %n.0.i.lcssa) #1, !dbg !1146
  tail call void @llvm.dbg.value(metadata %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), i64 0, metadata !704, metadata !1018), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !706, metadata !1018), !dbg !1136
  br label %for.cond.i.1, !dbg !1137

if.then.i:                                        ; preds = %gc_list_size.exit.2
  %call.i.200 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %166, %struct._Py_Identifier* nonnull @get_time.PyId_time, i8* null) #1, !dbg !1147
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.200, i64 0, metadata !712, metadata !1018) #1, !dbg !1149
  %cmp1.i = icmp eq %struct._object* %call.i.200, null, !dbg !1150
  br i1 %cmp1.i, label %if.then.2.i, label %if.else.i, !dbg !1151

if.then.2.i:                                      ; preds = %if.then.i
  tail call void @PyErr_Clear() #1, !dbg !1152
  br label %get_time.exit, !dbg !1154

if.else.i:                                        ; preds = %if.then.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i.200, i64 0, i32 1, !dbg !1155
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1155, !tbaa !1157
  %cmp3.i = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !1155
  br i1 %cmp3.i, label %if.then.6.i, label %lor.lhs.false.i, !dbg !1155

lor.lhs.false.i:                                  ; preds = %if.else.i
  %call5.i.201 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* nonnull @PyFloat_Type) #1, !dbg !1158
  %tobool.i = icmp eq i32 %call5.i.201, 0, !dbg !1158
  br i1 %tobool.i, label %do.body.i, label %if.then.6.i, !dbg !1160

if.then.6.i:                                      ; preds = %lor.lhs.false.i, %if.else.i
  %call7.i.202 = tail call double @PyFloat_AsDouble(%struct._object* %call.i.200) #1, !dbg !1161
  tail call void @llvm.dbg.value(metadata double %call7.i.202, i64 0, metadata !711, metadata !1018) #1, !dbg !1162
  br label %do.body.i, !dbg !1163

do.body.i:                                        ; preds = %if.then.6.i, %lor.lhs.false.i
  %result.0.i = phi double [ %call7.i.202, %if.then.6.i ], [ 0.000000e+00, %lor.lhs.false.i ], !dbg !1164
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.200, i64 0, metadata !715, metadata !1018) #1, !dbg !1165
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i.200, i64 0, i32 0, !dbg !1167
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1167, !tbaa !1040
  %dec.i = add i64 %4, -1, !dbg !1167
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1167, !tbaa !1040
  %cmp8.i = icmp eq i64 %dec.i, 0, !dbg !1167
  br i1 %cmp8.i, label %if.else.10.i, label %get_time.exit, !dbg !1169

if.else.10.i:                                     ; preds = %do.body.i
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1170, !tbaa !1157
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1170
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1170, !tbaa !1172
  tail call void %6(%struct._object* %call.i.200) #1, !dbg !1170
  br label %get_time.exit, !dbg !1164

get_time.exit:                                    ; preds = %gc_list_size.exit.2, %if.then.2.i, %do.body.i, %if.else.10.i
  %result.2.i = phi double [ 0.000000e+00, %gc_list_size.exit.2 ], [ 0.000000e+00, %if.then.2.i ], [ %result.0.i, %do.body.i ], [ %result.0.i, %if.else.10.i ], !dbg !1164
  tail call void @llvm.dbg.value(metadata double %result.2.i, i64 0, metadata !695, metadata !1018), !dbg !1120
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #1, !dbg !1175
  br label %if.end, !dbg !1176

if.end:                                           ; preds = %entry, %get_time.exit
  %t1.0 = phi double [ %result.2.i, %get_time.exit ], [ 0.000000e+00, %entry ]
  %add = add i32 %generation, 1, !dbg !1177
  %cmp4 = icmp slt i32 %add, 3, !dbg !1179
  br i1 %cmp4, label %if.then.5, label %for.cond.11.preheader, !dbg !1180

if.then.5:                                        ; preds = %if.end
  %idxprom7 = sext i32 %add to i64, !dbg !1181
  %count = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %idxprom7, i32 2, !dbg !1182
  %7 = load i32, i32* %count, align 4, !dbg !1183, !tbaa !1184
  %add9 = add i32 %7, 1, !dbg !1183
  store i32 %add9, i32* %count, align 4, !dbg !1183, !tbaa !1184
  br label %for.cond.11.preheader, !dbg !1181

for.cond.11.preheader:                            ; preds = %if.then.5, %if.end
  %cmp12.464 = icmp slt i32 %generation, 0, !dbg !1186
  br i1 %cmp12.464, label %for.cond.20.preheader.for.end.31_crit_edge, label %for.body.13.preheader, !dbg !1189

for.body.13.preheader:                            ; preds = %for.cond.11.preheader
  br label %for.body.13, !dbg !1190

for.cond.20.preheader:                            ; preds = %for.body.13
  %cmp21.462 = icmp sgt i32 %generation, 0, !dbg !1191
  br i1 %cmp21.462, label %for.body.22.lr.ph, label %for.cond.20.preheader.for.end.31_crit_edge, !dbg !1194

for.cond.20.preheader.for.end.31_crit_edge:       ; preds = %for.cond.11.preheader, %for.cond.20.preheader
  %.pre477 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %idxprom, i32 0, !dbg !1195
  br label %for.end.31, !dbg !1194

for.body.22.lr.ph:                                ; preds = %for.cond.20.preheader
  %head28 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %idxprom, i32 0, !dbg !1196
  %gc_prev.i = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %idxprom, i32 0, i32 0, i32 1, !dbg !1198
  br label %for.body.22, !dbg !1194

for.body.13:                                      ; preds = %for.body.13.preheader, %for.body.13
  %i.1465 = phi i32 [ %inc18, %for.body.13 ], [ 0, %for.body.13.preheader ]
  %idxprom14 = sext i32 %i.1465 to i64, !dbg !1190
  %count16 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %idxprom14, i32 2, !dbg !1202
  store i32 0, i32* %count16, align 4, !dbg !1203, !tbaa !1184
  %inc18 = add i32 %i.1465, 1, !dbg !1204
  tail call void @llvm.dbg.value(metadata i32 %inc18, i64 0, metadata !687, metadata !1018), !dbg !1131
  %cmp12 = icmp sgt i32 %inc18, %generation, !dbg !1186
  br i1 %cmp12, label %for.cond.20.preheader, label %for.body.13, !dbg !1189

for.body.22:                                      ; preds = %gc_list_merge.exit, %for.body.22.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.22.lr.ph ], [ %indvars.iv.next, %gc_list_merge.exit ]
  %head25 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %indvars.iv, i32 0, !dbg !1205
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head25, i64 0, metadata !723, metadata !1018), !dbg !1206
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head28, i64 0, metadata !724, metadata !1018), !dbg !1207
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head25, i64 0, metadata !730, metadata !1018), !dbg !1208
  %gc_next.i.i = getelementptr inbounds %union._gc_head, %union._gc_head* %head25, i64 0, i32 0, i32 0, !dbg !1210
  %8 = load %union._gc_head*, %union._gc_head** %gc_next.i.i, align 16, !dbg !1210, !tbaa !1211
  %cmp.i.i = icmp eq %union._gc_head* %8, %head25, !dbg !1213
  br i1 %cmp.i.i, label %entry.if.end_crit_edge.i, label %if.then.i.203, !dbg !1214

entry.if.end_crit_edge.i:                         ; preds = %for.body.22
  %.pre.i = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %indvars.iv, i32 0, i32 0, i32 1, !dbg !1215
  br label %gc_list_merge.exit, !dbg !1214

if.then.i.203:                                    ; preds = %for.body.22
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev.i, align 8, !dbg !1198, !tbaa !1217
  tail call void @llvm.dbg.value(metadata %union._gc_head* %9, i64 0, metadata !725, metadata !1018), !dbg !1218
  %gc_next3.i = getelementptr inbounds %union._gc_head, %union._gc_head* %9, i64 0, i32 0, i32 0, !dbg !1219
  store %union._gc_head* %8, %union._gc_head** %gc_next3.i, align 8, !dbg !1220, !tbaa !1211
  %gc_prev7.i = getelementptr inbounds %union._gc_head, %union._gc_head* %8, i64 0, i32 0, i32 1, !dbg !1221
  store %union._gc_head* %9, %union._gc_head** %gc_prev7.i, align 8, !dbg !1222, !tbaa !1217
  %gc_prev9.i = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %indvars.iv, i32 0, i32 0, i32 1, !dbg !1223
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9.i, align 8, !dbg !1223, !tbaa !1217
  store %union._gc_head* %10, %union._gc_head** %gc_prev.i, align 8, !dbg !1224, !tbaa !1217
  %gc_next15.i = getelementptr inbounds %union._gc_head, %union._gc_head* %10, i64 0, i32 0, i32 0, !dbg !1225
  store %union._gc_head* %head28, %union._gc_head** %gc_next15.i, align 8, !dbg !1226, !tbaa !1211
  br label %gc_list_merge.exit, !dbg !1227

gc_list_merge.exit:                               ; preds = %entry.if.end_crit_edge.i, %if.then.i.203
  %gc_prev.i.pre-phi.i = phi %union._gc_head** [ %.pre.i, %entry.if.end_crit_edge.i ], [ %gc_prev9.i, %if.then.i.203 ], !dbg !1215
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head25, i64 0, metadata !749, metadata !1018), !dbg !1228
  store %union._gc_head* %head25, %union._gc_head** %gc_prev.i.pre-phi.i, align 8, !dbg !1229, !tbaa !1217
  store %union._gc_head* %head25, %union._gc_head** %gc_next.i.i, align 16, !dbg !1230, !tbaa !1211
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1194
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1194
  %exitcond = icmp eq i32 %lftr.wideiv, %generation, !dbg !1194
  br i1 %exitcond, label %for.end.31.loopexit, label %for.body.22, !dbg !1194

for.end.31.loopexit:                              ; preds = %gc_list_merge.exit
  br label %for.end.31, !dbg !1231

for.end.31:                                       ; preds = %for.end.31.loopexit, %for.cond.20.preheader.for.end.31_crit_edge
  %head34.pre-phi = phi %union._gc_head* [ %.pre477, %for.cond.20.preheader.for.end.31_crit_edge ], [ %head28, %for.end.31.loopexit ], !dbg !1195
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !690, metadata !1018), !dbg !1231
  %cmp35 = icmp slt i32 %generation, 2, !dbg !1232
  %idxprom38 = sext i32 %add to i64, !dbg !1234
  %head40 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %idxprom38, i32 0, !dbg !1234
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head40, i64 0, metadata !691, metadata !1018), !dbg !1235
  %old.0 = select i1 %cmp35, %union._gc_head* %head40, %union._gc_head* %head34.pre-phi, !dbg !1236
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !733, metadata !1018), !dbg !1237
  %gc.0.in.13.i = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %idxprom, i32 0, i32 0, i32 0, !dbg !1239
  %gc.0.14.i = load %union._gc_head*, %union._gc_head** %gc.0.in.13.i, align 16, !dbg !1239
  %cmp.15.i = icmp eq %union._gc_head* %gc.0.14.i, %head34.pre-phi, !dbg !1240
  br i1 %cmp.15.i, label %subtract_refs.exit.thread, label %do.body.i.208.preheader, !dbg !1243

do.body.i.208.preheader:                          ; preds = %for.end.31
  br label %do.body.i.208, !dbg !1244

do.body.i.208:                                    ; preds = %do.body.i.208.preheader, %do.body.i.208
  %gc.016.i = phi %union._gc_head* [ %gc.0.i.206, %do.body.i.208 ], [ %gc.0.14.i, %do.body.i.208.preheader ], !dbg !1248
  %gc_refs.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.016.i, i64 0, i32 0, i32 2, !dbg !1244
  %11 = load i64, i64* %gc_refs.i, align 8, !dbg !1244, !tbaa !1249
  %and.i = and i64 %11, 1, !dbg !1244
  %add.ptr.i = getelementptr %union._gc_head, %union._gc_head* %gc.016.i, i64 1, !dbg !1244
  %ob_refcnt.i.204 = bitcast %union._gc_head* %add.ptr.i to i64*, !dbg !1244
  %12 = load i64, i64* %ob_refcnt.i.204, align 8, !dbg !1244, !tbaa !1040
  %shl.i = shl i64 %12, 1, !dbg !1244
  %or.i = or i64 %shl.i, %and.i, !dbg !1244
  store i64 %or.i, i64* %gc_refs.i, align 8, !dbg !1244, !tbaa !1249
  %gc.0.in.i.205 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.016.i, i64 0, i32 0, i32 0, !dbg !1239
  %gc.0.i.206 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.205, align 8, !dbg !1239
  %cmp.i.207 = icmp eq %union._gc_head* %gc.0.i.206, %head34.pre-phi, !dbg !1240
  br i1 %cmp.i.207, label %update_refs.exit, label %do.body.i.208, !dbg !1243

update_refs.exit:                                 ; preds = %do.body.i.208
  %gc.0.12.i.pre = load %union._gc_head*, %union._gc_head** %gc.0.in.13.i, align 16, !dbg !1250
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !737, metadata !1018) #1, !dbg !1252
  %cmp.13.i = icmp eq %union._gc_head* %gc.0.12.i.pre, %head34.pre-phi, !dbg !1253
  br i1 %cmp.13.i, label %subtract_refs.exit.thread, label %for.body.i.preheader, !dbg !1256

for.body.i.preheader:                             ; preds = %update_refs.exit
  br label %for.body.i, !dbg !1257

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %gc.014.i = phi %union._gc_head* [ %gc.0.i.213, %for.body.i ], [ %gc.0.12.i.pre, %for.body.i.preheader ], !dbg !1259
  %add.ptr.i.209 = getelementptr %union._gc_head, %union._gc_head* %gc.014.i, i64 1, !dbg !1257
  %13 = bitcast %union._gc_head* %add.ptr.i.209 to %struct._object*, !dbg !1257
  %ob_type.i.210 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.014.i, i64 1, i32 0, i32 1, !dbg !1257
  %14 = bitcast %union._gc_head** %ob_type.i.210 to %struct._typeobject**, !dbg !1257
  %15 = load %struct._typeobject*, %struct._typeobject** %14, align 8, !dbg !1257, !tbaa !1157
  %tp_traverse.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 21, !dbg !1260
  %16 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse.i, align 8, !dbg !1260, !tbaa !1261
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %16, i64 0, metadata !738, metadata !1018) #1, !dbg !1262
  %call.i.211 = tail call i32 %16(%struct._object* %13, i32 (%struct._object*, i8*)* nonnull @visit_decref, i8* null) #1, !dbg !1263
  %gc.0.in.i.212 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.014.i, i64 0, i32 0, i32 0, !dbg !1250
  %gc.0.i.213 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.212, align 8, !dbg !1250
  %cmp.i.214 = icmp eq %union._gc_head* %gc.0.i.213, %head34.pre-phi, !dbg !1253
  br i1 %cmp.i.214, label %subtract_refs.exit, label %for.body.i, !dbg !1256

subtract_refs.exit.thread:                        ; preds = %update_refs.exit, %for.end.31
  tail call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  tail call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !749, metadata !1018), !dbg !1265
  %gc_prev.i.215.480 = getelementptr inbounds %union._gc_head, %union._gc_head* %unreachable, i64 0, i32 0, i32 1, !dbg !1267
  store %union._gc_head* %unreachable, %union._gc_head** %gc_prev.i.215.480, align 8, !dbg !1268, !tbaa !1217
  %gc_next.i.481 = getelementptr inbounds %union._gc_head, %union._gc_head* %unreachable, i64 0, i32 0, i32 0, !dbg !1269
  store %union._gc_head* %unreachable, %union._gc_head** %gc_next.i.481, align 8, !dbg !1270, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !752, metadata !1018) #1, !dbg !1271
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !753, metadata !1018) #1, !dbg !1273
  call void @llvm.dbg.value(metadata %union._gc_head* %.pre, i64 0, metadata !754, metadata !1018) #1, !dbg !1274
  br label %move_unreachable.exit, !dbg !1275

subtract_refs.exit:                               ; preds = %for.body.i
  %.pre = load %union._gc_head*, %union._gc_head** %gc.0.in.13.i, align 16, !dbg !1276, !tbaa !1211
  tail call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  tail call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !749, metadata !1018), !dbg !1265
  %gc_prev.i.215 = getelementptr inbounds %union._gc_head, %union._gc_head* %unreachable, i64 0, i32 0, i32 1, !dbg !1267
  store %union._gc_head* %unreachable, %union._gc_head** %gc_prev.i.215, align 8, !dbg !1268, !tbaa !1217
  %gc_next.i = getelementptr inbounds %union._gc_head, %union._gc_head* %unreachable, i64 0, i32 0, i32 0, !dbg !1269
  store %union._gc_head* %unreachable, %union._gc_head** %gc_next.i, align 8, !dbg !1270, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !752, metadata !1018) #1, !dbg !1271
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !753, metadata !1018) #1, !dbg !1273
  call void @llvm.dbg.value(metadata %union._gc_head* %.pre, i64 0, metadata !754, metadata !1018) #1, !dbg !1274
  %cmp.42.i = icmp eq %union._gc_head* %.pre, %head34.pre-phi, !dbg !1277
  br i1 %cmp.42.i, label %move_unreachable.exit, label %while.body.lr.ph.i, !dbg !1275

while.body.lr.ph.i:                               ; preds = %subtract_refs.exit
  %17 = bitcast %union._gc_head* %head34.pre-phi to i8*, !dbg !1278
  br label %while.body.i, !dbg !1275

while.body.i:                                     ; preds = %while.cond.backedge.i, %while.body.lr.ph.i
  %gc.043.i = phi %union._gc_head* [ %.pre, %while.body.lr.ph.i ], [ %gc.0.be.i, %while.cond.backedge.i ], !dbg !1279
  %gc_refs.i.217 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.043.i, i64 0, i32 0, i32 2, !dbg !1280
  %18 = load i64, i64* %gc_refs.i.217, align 8, !dbg !1281, !tbaa !1249
  %tobool.i.218 = icmp ugt i64 %18, 1, !dbg !1280
  br i1 %tobool.i.218, label %if.then.i.225, label %if.else.i.227, !dbg !1285

if.then.i.225:                                    ; preds = %while.body.i
  %add.ptr.i.219 = getelementptr %union._gc_head, %union._gc_head* %gc.043.i, i64 1, !dbg !1286
  %19 = bitcast %union._gc_head* %add.ptr.i.219 to %struct._object*, !dbg !1286
  call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !757, metadata !1018) #1, !dbg !1287
  %ob_type.i.220 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.043.i, i64 1, i32 0, i32 1, !dbg !1288
  %20 = bitcast %union._gc_head** %ob_type.i.220 to %struct._typeobject**, !dbg !1288
  %21 = load %struct._typeobject*, %struct._typeobject** %20, align 8, !dbg !1288, !tbaa !1157
  %tp_traverse.i.221 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 21, !dbg !1289
  %22 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse.i.221, align 8, !dbg !1289, !tbaa !1261
  call void @llvm.dbg.value(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %22, i64 0, metadata !760, metadata !1018) #1, !dbg !1290
  %and.i.222 = and i64 %18, 1, !dbg !1291
  %or.i.223 = or i64 %and.i.222, -6, !dbg !1291
  store i64 %or.i.223, i64* %gc_refs.i.217, align 8, !dbg !1291, !tbaa !1249
  %call.i.224 = call i32 %22(%struct._object* %19, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %union._gc_head*)* @visit_reachable to i32 (%struct._object*, i8*)*), i8* %17) #1, !dbg !1294
  %gc_next8.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.043.i, i64 0, i32 0, i32 0, !dbg !1295
  %23 = load %union._gc_head*, %union._gc_head** %gc_next8.i, align 8, !dbg !1295, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %23, i64 0, metadata !755, metadata !1018) #1, !dbg !1296
  %24 = load %struct._typeobject*, %struct._typeobject** %20, align 8, !dbg !1297, !tbaa !1157
  %cmp10.i = icmp eq %struct._typeobject* %24, @PyTuple_Type, !dbg !1297
  br i1 %cmp10.i, label %if.then.11.i, label %while.cond.backedge.i, !dbg !1299

while.cond.backedge.i:                            ; preds = %if.else.i.227, %if.then.11.i, %if.then.i.225
  %gc.0.be.i = phi %union._gc_head* [ %25, %if.else.i.227 ], [ %23, %if.then.11.i ], [ %23, %if.then.i.225 ], !dbg !1279
  %cmp.i.226 = icmp eq %union._gc_head* %gc.0.be.i, %head34.pre-phi, !dbg !1277
  br i1 %cmp.i.226, label %move_unreachable.exit.loopexit, label %while.body.i, !dbg !1275

if.then.11.i:                                     ; preds = %if.then.i.225
  call void @_PyTuple_MaybeUntrack(%struct._object* %19) #1, !dbg !1300
  br label %while.cond.backedge.i, !dbg !1302

if.else.i.227:                                    ; preds = %while.body.i
  %gc_next13.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.043.i, i64 0, i32 0, i32 0, !dbg !1303
  %25 = load %union._gc_head*, %union._gc_head** %gc_next13.i, align 8, !dbg !1303, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %25, i64 0, metadata !755, metadata !1018) #1, !dbg !1296
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !773, metadata !1018) #1, !dbg !1304
  %gc_prev.i.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.043.i, i64 0, i32 0, i32 1, !dbg !1306
  %26 = load %union._gc_head*, %union._gc_head** %gc_prev.i.i, align 8, !dbg !1306, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %26, i64 0, metadata !775, metadata !1018) #1, !dbg !1307
  call void @llvm.dbg.value(metadata %union._gc_head* %25, i64 0, metadata !776, metadata !1018) #1, !dbg !1308
  %gc_next3.i.i = getelementptr inbounds %union._gc_head, %union._gc_head* %26, i64 0, i32 0, i32 0, !dbg !1309
  store %union._gc_head* %25, %union._gc_head** %gc_next3.i.i, align 8, !dbg !1310, !tbaa !1211
  %gc_prev5.i.i = getelementptr inbounds %union._gc_head, %union._gc_head* %25, i64 0, i32 0, i32 1, !dbg !1311
  store %union._gc_head* %26, %union._gc_head** %gc_prev5.i.i, align 8, !dbg !1312, !tbaa !1217
  %27 = load %union._gc_head*, %union._gc_head** %gc_prev.i.215, align 8, !dbg !1313, !tbaa !1217
  store %union._gc_head* %27, %union._gc_head** %gc_prev.i.i, align 8, !dbg !1314, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %27, i64 0, metadata !774, metadata !1018) #1, !dbg !1315
  store %union._gc_head* %gc.043.i, %union._gc_head** %gc_prev.i.215, align 8, !dbg !1316, !tbaa !1217
  %gc_next13.i.i = getelementptr inbounds %union._gc_head, %union._gc_head* %27, i64 0, i32 0, i32 0, !dbg !1317
  store %union._gc_head* %gc.043.i, %union._gc_head** %gc_next13.i.i, align 8, !dbg !1318, !tbaa !1211
  store %union._gc_head* %unreachable, %union._gc_head** %gc_next13.i, align 8, !dbg !1319, !tbaa !1211
  %and17.i = and i64 %18, 1, !dbg !1281
  %or18.i = or i64 %and17.i, -8, !dbg !1281
  store i64 %or18.i, i64* %gc_refs.i.217, align 8, !dbg !1281, !tbaa !1249
  br label %while.cond.backedge.i, !dbg !1279

move_unreachable.exit.loopexit:                   ; preds = %while.cond.backedge.i
  br label %move_unreachable.exit, !dbg !1320

move_unreachable.exit:                            ; preds = %move_unreachable.exit.loopexit, %subtract_refs.exit.thread, %subtract_refs.exit
  %gc_next.i484 = phi %union._gc_head** [ %gc_next.i.481, %subtract_refs.exit.thread ], [ %gc_next.i, %subtract_refs.exit ], [ %gc_next.i, %move_unreachable.exit.loopexit ]
  %gc_prev.i.215483 = phi %union._gc_head** [ %gc_prev.i.215.480, %subtract_refs.exit.thread ], [ %gc_prev.i.215, %subtract_refs.exit ], [ %gc_prev.i.215, %move_unreachable.exit.loopexit ]
  %cmp42 = icmp eq %union._gc_head* %head34.pre-phi, %old.0, !dbg !1320
  br i1 %cmp42, label %if.else.49, label %if.then.43, !dbg !1322

if.then.43:                                       ; preds = %move_unreachable.exit
  %cmp44 = icmp eq i32 %generation, 1, !dbg !1323
  br i1 %cmp44, label %for.cond.i.234.preheader, label %if.end.48, !dbg !1326

for.cond.i.234.preheader:                         ; preds = %if.then.43
  br label %for.cond.i.234, !dbg !1327

for.cond.i.234:                                   ; preds = %for.cond.i.234.preheader, %for.cond.i.234
  %list.pn.i.228 = phi %union._gc_head* [ %gc.0.i.231, %for.cond.i.234 ], [ %head34.pre-phi, %for.cond.i.234.preheader ], !dbg !1330
  %n.0.i.229 = phi i64 [ %inc.i.233, %for.cond.i.234 ], [ 0, %for.cond.i.234.preheader ], !dbg !1330
  %gc.0.in.i.230 = getelementptr inbounds %union._gc_head, %union._gc_head* %list.pn.i.228, i64 0, i32 0, i32 0, !dbg !1327
  %gc.0.i.231 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.230, align 8, !dbg !1327
  %cmp.i.232 = icmp eq %union._gc_head* %gc.0.i.231, %head34.pre-phi, !dbg !1331
  %inc.i.233 = add i64 %n.0.i.229, 1, !dbg !1332
  tail call void @llvm.dbg.value(metadata i64 %inc.i.233, i64 0, metadata !706, metadata !1018), !dbg !1333
  br i1 %cmp.i.232, label %gc_list_size.exit235, label %for.cond.i.234, !dbg !1334

gc_list_size.exit235:                             ; preds = %for.cond.i.234
  %n.0.i.229.lcssa = phi i64 [ %n.0.i.229, %for.cond.i.234 ]
  %28 = load i64, i64* @long_lived_pending, align 8, !dbg !1335, !tbaa !1100
  %add47 = add i64 %28, %n.0.i.229.lcssa, !dbg !1335
  store i64 %add47, i64* @long_lived_pending, align 8, !dbg !1335, !tbaa !1100
  br label %if.end.48, !dbg !1336

if.end.48:                                        ; preds = %gc_list_size.exit235, %if.then.43
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !723, metadata !1018), !dbg !1337
  tail call void @llvm.dbg.value(metadata %union._gc_head* %old.0, i64 0, metadata !724, metadata !1018), !dbg !1339
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !730, metadata !1018), !dbg !1340
  %29 = load %union._gc_head*, %union._gc_head** %gc.0.in.13.i, align 16, !dbg !1342, !tbaa !1211
  %cmp.i.i.237 = icmp eq %union._gc_head* %29, %head34.pre-phi, !dbg !1343
  br i1 %cmp.i.i.237, label %entry.if.end_crit_edge.i.239, label %if.then.i.245, !dbg !1344

entry.if.end_crit_edge.i.239:                     ; preds = %if.end.48
  %.pre.i.238 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %idxprom, i32 0, i32 0, i32 1, !dbg !1345
  br label %gc_list_merge.exit247, !dbg !1344

if.then.i.245:                                    ; preds = %if.end.48
  %gc_prev.i.240 = getelementptr inbounds %union._gc_head, %union._gc_head* %old.0, i64 0, i32 0, i32 1, !dbg !1347
  %30 = load %union._gc_head*, %union._gc_head** %gc_prev.i.240, align 8, !dbg !1347, !tbaa !1217
  tail call void @llvm.dbg.value(metadata %union._gc_head* %30, i64 0, metadata !725, metadata !1018), !dbg !1348
  %gc_next3.i.241 = getelementptr inbounds %union._gc_head, %union._gc_head* %30, i64 0, i32 0, i32 0, !dbg !1349
  store %union._gc_head* %29, %union._gc_head** %gc_next3.i.241, align 8, !dbg !1350, !tbaa !1211
  %gc_prev7.i.242 = getelementptr inbounds %union._gc_head, %union._gc_head* %29, i64 0, i32 0, i32 1, !dbg !1351
  store %union._gc_head* %30, %union._gc_head** %gc_prev7.i.242, align 8, !dbg !1352, !tbaa !1217
  %gc_prev9.i.243 = getelementptr [3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 %idxprom, i32 0, i32 0, i32 1, !dbg !1353
  %31 = load %union._gc_head*, %union._gc_head** %gc_prev9.i.243, align 8, !dbg !1353, !tbaa !1217
  store %union._gc_head* %31, %union._gc_head** %gc_prev.i.240, align 8, !dbg !1354, !tbaa !1217
  %gc_next15.i.244 = getelementptr inbounds %union._gc_head, %union._gc_head* %31, i64 0, i32 0, i32 0, !dbg !1355
  store %union._gc_head* %old.0, %union._gc_head** %gc_next15.i.244, align 8, !dbg !1356, !tbaa !1211
  br label %gc_list_merge.exit247, !dbg !1357

gc_list_merge.exit247:                            ; preds = %entry.if.end_crit_edge.i.239, %if.then.i.245
  %gc_prev.i.pre-phi.i.246 = phi %union._gc_head** [ %.pre.i.238, %entry.if.end_crit_edge.i.239 ], [ %gc_prev9.i.243, %if.then.i.245 ], !dbg !1345
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !749, metadata !1018), !dbg !1358
  store %union._gc_head* %head34.pre-phi, %union._gc_head** %gc_prev.i.pre-phi.i.246, align 8, !dbg !1359, !tbaa !1217
  store %union._gc_head* %head34.pre-phi, %union._gc_head** %gc.0.in.13.i, align 16, !dbg !1360, !tbaa !1211
  br label %if.end.51, !dbg !1361

if.else.49:                                       ; preds = %move_unreachable.exit
  call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !779, metadata !1018) #1, !dbg !1362
  %32 = load %union._gc_head*, %union._gc_head** %gc.0.in.13.i, align 16, !dbg !1365, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %32, i64 0, metadata !781, metadata !1018) #1, !dbg !1366
  %cmp.12.i = icmp eq %union._gc_head* %32, %head34.pre-phi, !dbg !1367
  br i1 %cmp.12.i, label %untrack_dicts.exit, label %while.body.i.251.preheader, !dbg !1368

while.body.i.251.preheader:                       ; preds = %if.else.49
  br label %while.body.i.251, !dbg !1369

while.body.i.251:                                 ; preds = %while.body.i.251.preheader, %while.cond.backedge.i.255
  %gc.013.i = phi %union._gc_head* [ %33, %while.cond.backedge.i.255 ], [ %32, %while.body.i.251.preheader ], !dbg !1370
  %gc_next3.i.249 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.013.i, i64 0, i32 0, i32 0, !dbg !1369
  %33 = load %union._gc_head*, %union._gc_head** %gc_next3.i.249, align 8, !dbg !1369, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %33, i64 0, metadata !780, metadata !1018) #1, !dbg !1371
  %ob_type.i.250 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.013.i, i64 1, i32 0, i32 1, !dbg !1372
  %34 = bitcast %union._gc_head** %ob_type.i.250 to %struct._typeobject**, !dbg !1372
  %35 = load %struct._typeobject*, %struct._typeobject** %34, align 8, !dbg !1372, !tbaa !1157
  %cmp4.i = icmp eq %struct._typeobject* %35, @PyDict_Type, !dbg !1372
  br i1 %cmp4.i, label %if.then.i.253, label %while.cond.backedge.i.255, !dbg !1374

if.then.i.253:                                    ; preds = %while.body.i.251
  %add.ptr.i.252 = getelementptr %union._gc_head, %union._gc_head* %gc.013.i, i64 1, !dbg !1375
  %36 = bitcast %union._gc_head* %add.ptr.i.252 to %struct._object*, !dbg !1375
  call void @_PyDict_MaybeUntrack(%struct._object* %36) #1, !dbg !1376
  br label %while.cond.backedge.i.255, !dbg !1376

while.cond.backedge.i.255:                        ; preds = %if.then.i.253, %while.body.i.251
  %cmp.i.254 = icmp eq %union._gc_head* %33, %head34.pre-phi, !dbg !1367
  br i1 %cmp.i.254, label %untrack_dicts.exit.loopexit, label %while.body.i.251, !dbg !1368

untrack_dicts.exit.loopexit:                      ; preds = %while.cond.backedge.i.255
  br label %untrack_dicts.exit, !dbg !1377

untrack_dicts.exit:                               ; preds = %untrack_dicts.exit.loopexit, %if.else.49
  store i64 0, i64* @long_lived_pending, align 8, !dbg !1377, !tbaa !1100
  tail call void @llvm.dbg.value(metadata %union._gc_head* %head34.pre-phi, i64 0, metadata !704, metadata !1018), !dbg !1378
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !706, metadata !1018), !dbg !1380
  br label %for.cond.i.262, !dbg !1381

for.cond.i.262:                                   ; preds = %for.cond.i.262, %untrack_dicts.exit
  %list.pn.i.256 = phi %union._gc_head* [ %head34.pre-phi, %untrack_dicts.exit ], [ %gc.0.i.259, %for.cond.i.262 ], !dbg !1382
  %n.0.i.257 = phi i64 [ 0, %untrack_dicts.exit ], [ %inc.i.261, %for.cond.i.262 ], !dbg !1382
  %gc.0.in.i.258 = getelementptr inbounds %union._gc_head, %union._gc_head* %list.pn.i.256, i64 0, i32 0, i32 0, !dbg !1383
  %gc.0.i.259 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.258, align 8, !dbg !1383
  %cmp.i.260 = icmp eq %union._gc_head* %gc.0.i.259, %head34.pre-phi, !dbg !1384
  %inc.i.261 = add i64 %n.0.i.257, 1, !dbg !1385
  tail call void @llvm.dbg.value(metadata i64 %inc.i.261, i64 0, metadata !706, metadata !1018), !dbg !1380
  br i1 %cmp.i.260, label %gc_list_size.exit263, label %for.cond.i.262, !dbg !1386

gc_list_size.exit263:                             ; preds = %for.cond.i.262
  %n.0.i.257.lcssa = phi i64 [ %n.0.i.257, %for.cond.i.262 ]
  store i64 %n.0.i.257.lcssa, i64* @long_lived_total, align 8, !dbg !1387, !tbaa !1100
  br label %if.end.51

if.end.51:                                        ; preds = %gc_list_size.exit263, %gc_list_merge.exit247
  call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !693, metadata !1018), !dbg !1388
  tail call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !749, metadata !1018), !dbg !1389
  %gc_prev.i.264 = getelementptr inbounds %union._gc_head, %union._gc_head* %finalizers, i64 0, i32 0, i32 1, !dbg !1391
  store %union._gc_head* %finalizers, %union._gc_head** %gc_prev.i.264, align 8, !dbg !1392, !tbaa !1217
  %gc_next.i.265 = getelementptr inbounds %union._gc_head, %union._gc_head* %finalizers, i64 0, i32 0, i32 0, !dbg !1393
  store %union._gc_head* %finalizers, %union._gc_head** %gc_next.i.265, align 8, !dbg !1394, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !693, metadata !1018), !dbg !1388
  tail call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !786, metadata !1018), !dbg !1395
  tail call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !787, metadata !1018), !dbg !1397
  %37 = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1398, !tbaa !1211
  tail call void @llvm.dbg.value(metadata %union._gc_head* %37, i64 0, metadata !788, metadata !1018), !dbg !1399
  %cmp.16.i = icmp eq %union._gc_head* %37, %unreachable, !dbg !1400
  br i1 %cmp.16.i, label %move_legacy_finalizer_reachable.exit, label %for.body.i.270.preheader, !dbg !1401

for.body.i.270.preheader:                         ; preds = %if.end.51
  br label %for.body.i.270, !dbg !1402

for.body.i.270:                                   ; preds = %for.body.i.270.preheader, %for.cond.backedge.i
  %gc.017.i = phi %union._gc_head* [ %38, %for.cond.backedge.i ], [ %37, %for.body.i.270.preheader ], !dbg !1403
  %gc_next3.i.268 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.017.i, i64 0, i32 0, i32 0, !dbg !1402
  %38 = load %union._gc_head*, %union._gc_head** %gc_next3.i.268, align 8, !dbg !1402, !tbaa !1211
  tail call void @llvm.dbg.value(metadata %union._gc_head* %38, i64 0, metadata !789, metadata !1018), !dbg !1404
  %.idx.i = getelementptr %union._gc_head, %union._gc_head* %gc.017.i, i64 1, i32 0, i32 1, !dbg !1403
  %39 = bitcast %union._gc_head** %.idx.i to %struct._typeobject**, !dbg !1403
  %.idx.val.i = load %struct._typeobject*, %struct._typeobject** %39, align 8, !dbg !1403, !tbaa !1157
  %.idx.val.idx.i = getelementptr %struct._typeobject, %struct._typeobject* %.idx.val.i, i64 0, i32 45, !dbg !1403
  %.idx.val.idx.val.i = load void (%struct._object*)*, void (%struct._object*)** %.idx.val.idx.i, align 8, !dbg !1403, !tbaa !1405
  %cmp.i.i.269 = icmp eq void (%struct._object*)* %.idx.val.idx.val.i, null, !dbg !1406
  br i1 %cmp.i.i.269, label %for.cond.backedge.i, label %if.then.i.278, !dbg !1409

if.then.i.278:                                    ; preds = %for.body.i.270
  tail call void @llvm.dbg.value(metadata %union._gc_head* %38, i64 0, metadata !772, metadata !1018), !dbg !1410
  tail call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !773, metadata !1018), !dbg !1413
  %gc_prev.i.i.271 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.017.i, i64 0, i32 0, i32 1, !dbg !1414
  %40 = load %union._gc_head*, %union._gc_head** %gc_prev.i.i.271, align 8, !dbg !1414, !tbaa !1217
  tail call void @llvm.dbg.value(metadata %union._gc_head* %40, i64 0, metadata !775, metadata !1018), !dbg !1415
  tail call void @llvm.dbg.value(metadata %union._gc_head* %38, i64 0, metadata !776, metadata !1018), !dbg !1416
  %gc_next3.i.i.272 = getelementptr inbounds %union._gc_head, %union._gc_head* %40, i64 0, i32 0, i32 0, !dbg !1417
  store %union._gc_head* %38, %union._gc_head** %gc_next3.i.i.272, align 8, !dbg !1418, !tbaa !1211
  %gc_prev5.i.i.273 = getelementptr inbounds %union._gc_head, %union._gc_head* %38, i64 0, i32 0, i32 1, !dbg !1419
  store %union._gc_head* %40, %union._gc_head** %gc_prev5.i.i.273, align 8, !dbg !1420, !tbaa !1217
  %41 = load %union._gc_head*, %union._gc_head** %gc_prev.i.264, align 8, !dbg !1421, !tbaa !1217
  store %union._gc_head* %41, %union._gc_head** %gc_prev.i.i.271, align 8, !dbg !1422, !tbaa !1217
  tail call void @llvm.dbg.value(metadata %union._gc_head* %41, i64 0, metadata !774, metadata !1018), !dbg !1423
  store %union._gc_head* %gc.017.i, %union._gc_head** %gc_prev.i.264, align 8, !dbg !1424, !tbaa !1217
  %gc_next13.i.i.274 = getelementptr inbounds %union._gc_head, %union._gc_head* %41, i64 0, i32 0, i32 0, !dbg !1425
  store %union._gc_head* %gc.017.i, %union._gc_head** %gc_next13.i.i.274, align 8, !dbg !1426, !tbaa !1211
  store %union._gc_head* %finalizers, %union._gc_head** %gc_next3.i.268, align 8, !dbg !1427, !tbaa !1211
  %gc_refs.i.275 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.017.i, i64 0, i32 0, i32 2, !dbg !1428
  %42 = load i64, i64* %gc_refs.i.275, align 8, !dbg !1428, !tbaa !1249
  %and.i.276 = and i64 %42, 1, !dbg !1428
  %or.i.277 = or i64 %and.i.276, -6, !dbg !1428
  store i64 %or.i.277, i64* %gc_refs.i.275, align 8, !dbg !1428, !tbaa !1249
  br label %for.cond.backedge.i, !dbg !1431

for.cond.backedge.i:                              ; preds = %if.then.i.278, %for.body.i.270
  %cmp.i.279 = icmp eq %union._gc_head* %38, %unreachable, !dbg !1400
  br i1 %cmp.i.279, label %move_legacy_finalizers.exit, label %for.body.i.270, !dbg !1401

move_legacy_finalizers.exit:                      ; preds = %for.cond.backedge.i
  %gc.0.13.i.pre = load %union._gc_head*, %union._gc_head** %gc_next.i.265, align 8, !dbg !1432
  call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !693, metadata !1018), !dbg !1388
  call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !799, metadata !1018) #1, !dbg !1434
  %cmp.14.i = icmp eq %union._gc_head* %gc.0.13.i.pre, %finalizers, !dbg !1435
  br i1 %cmp.14.i, label %move_legacy_finalizer_reachable.exit, label %for.body.i.288.preheader, !dbg !1438

for.body.i.288.preheader:                         ; preds = %move_legacy_finalizers.exit
  br label %for.body.i.288, !dbg !1439

for.body.i.288:                                   ; preds = %for.body.i.288.preheader, %for.body.i.288
  %gc.015.i = phi %union._gc_head* [ %gc.0.i.286, %for.body.i.288 ], [ %gc.0.13.i.pre, %for.body.i.288.preheader ], !dbg !1441
  %add.ptr.i.281 = getelementptr %union._gc_head, %union._gc_head* %gc.015.i, i64 1, !dbg !1439
  %43 = bitcast %union._gc_head* %add.ptr.i.281 to %struct._object*, !dbg !1439
  %ob_type.i.282 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.015.i, i64 1, i32 0, i32 1, !dbg !1439
  %44 = bitcast %union._gc_head** %ob_type.i.282 to %struct._typeobject**, !dbg !1439
  %45 = load %struct._typeobject*, %struct._typeobject** %44, align 8, !dbg !1439, !tbaa !1157
  %tp_traverse.i.283 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 21, !dbg !1442
  %46 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse.i.283, align 8, !dbg !1442, !tbaa !1261
  call void @llvm.dbg.value(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %46, i64 0, metadata !800, metadata !1018) #1, !dbg !1443
  %call.i.284 = call i32 %46(%struct._object* %43, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %union._gc_head*)* @visit_move to i32 (%struct._object*, i8*)*), i8* %1) #1, !dbg !1444
  %gc.0.in.i.285 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.015.i, i64 0, i32 0, i32 0, !dbg !1432
  %gc.0.i.286 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.285, align 8, !dbg !1432
  %cmp.i.287 = icmp eq %union._gc_head* %gc.0.i.286, %finalizers, !dbg !1435
  br i1 %cmp.i.287, label %move_legacy_finalizer_reachable.exit.loopexit, label %for.body.i.288, !dbg !1438

move_legacy_finalizer_reachable.exit.loopexit:    ; preds = %for.body.i.288
  br label %move_legacy_finalizer_reachable.exit, !dbg !1445

move_legacy_finalizer_reachable.exit:             ; preds = %move_legacy_finalizer_reachable.exit.loopexit, %if.end.51, %move_legacy_finalizers.exit
  %47 = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1445, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %47, i64 0, metadata !694, metadata !1018), !dbg !1447
  %cmp54.458 = icmp eq %union._gc_head* %47, %unreachable, !dbg !1448
  br i1 %cmp54.458, label %for.end.64, label %for.body.55.preheader, !dbg !1450

for.body.55.preheader:                            ; preds = %move_legacy_finalizer_reachable.exit
  br label %for.body.55, !dbg !1451

for.body.55:                                      ; preds = %for.body.55.preheader, %for.inc.61
  %m.0460 = phi i64 [ %inc56, %for.inc.61 ], [ 0, %for.body.55.preheader ]
  %gc.0459 = phi %union._gc_head* [ %52, %for.inc.61 ], [ %47, %for.body.55.preheader ]
  %inc56 = add i64 %m.0460, 1, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %inc56, i64 0, metadata !688, metadata !1018), !dbg !1116
  %48 = load i32, i32* @debug, align 4, !dbg !1453, !tbaa !1124
  %and57 = and i32 %48, 2, !dbg !1455
  %tobool58 = icmp eq i32 %and57, 0, !dbg !1455
  br i1 %tobool58, label %for.inc.61, label %if.then.59, !dbg !1456

if.then.59:                                       ; preds = %for.body.55
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %gc.0459, i64 1, !dbg !1457
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i64 0, metadata !815, metadata !1018) #1, !dbg !1459
  %ob_type.i.289 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.0459, i64 1, i32 0, i32 1, !dbg !1461
  %49 = bitcast %union._gc_head** %ob_type.i.289 to %struct._typeobject**, !dbg !1461
  %50 = load %struct._typeobject*, %struct._typeobject** %49, align 8, !dbg !1461, !tbaa !1157
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i64 0, i32 1, !dbg !1462
  %51 = load i8*, i8** %tp_name.i, align 8, !dbg !1462, !tbaa !1463
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* %51, %union._gc_head* %add.ptr) #1, !dbg !1464
  br label %for.inc.61, !dbg !1465

for.inc.61:                                       ; preds = %for.body.55, %if.then.59
  %gc_next63 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.0459, i64 0, i32 0, i32 0, !dbg !1466
  %52 = load %union._gc_head*, %union._gc_head** %gc_next63, align 8, !dbg !1466, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %52, i64 0, metadata !694, metadata !1018), !dbg !1447
  %cmp54 = icmp eq %union._gc_head* %52, %unreachable, !dbg !1448
  br i1 %cmp54, label %for.cond.53.for.end.64_crit_edge, label %for.body.55, !dbg !1450

for.cond.53.for.end.64_crit_edge:                 ; preds = %for.inc.61
  %inc56.lcssa = phi i64 [ %inc56, %for.inc.61 ]
  %.pre474 = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1467, !tbaa !1211
  br label %for.end.64, !dbg !1450

for.end.64:                                       ; preds = %for.cond.53.for.end.64_crit_edge, %move_legacy_finalizer_reachable.exit
  %53 = phi %union._gc_head* [ %.pre474, %for.cond.53.for.end.64_crit_edge ], [ %unreachable, %move_legacy_finalizer_reachable.exit ], !dbg !1467
  %m.0.lcssa = phi i64 [ %inc56.lcssa, %for.cond.53.for.end.64_crit_edge ], [ 0, %move_legacy_finalizer_reachable.exit ]
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !821, metadata !1018) #1, !dbg !1469
  call void @llvm.dbg.value(metadata %union._gc_head* %old.0, i64 0, metadata !822, metadata !1018) #1, !dbg !1470
  %54 = bitcast %union._gc_head* %wrcb_to_call.i to i8*, !dbg !1471
  call void @llvm.lifetime.start(i64 24, i8* %54) #1, !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !828, metadata !1018) #1, !dbg !1472
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !826, metadata !1018) #1, !dbg !1473
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !749, metadata !1018) #1, !dbg !1474
  %gc_prev.i.i.290 = getelementptr inbounds %union._gc_head, %union._gc_head* %wrcb_to_call.i, i64 0, i32 0, i32 1, !dbg !1476
  store %union._gc_head* %wrcb_to_call.i, %union._gc_head** %gc_prev.i.i.290, align 8, !dbg !1477, !tbaa !1217
  %gc_next.i.i.291 = getelementptr inbounds %union._gc_head, %union._gc_head* %wrcb_to_call.i, i64 0, i32 0, i32 0, !dbg !1478
  store %union._gc_head* %wrcb_to_call.i, %union._gc_head** %gc_next.i.i.291, align 8, !dbg !1479, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %53, i64 0, metadata !823, metadata !1018) #1, !dbg !1480
  %cmp.120.i = icmp eq %union._gc_head* %53, %unreachable, !dbg !1481
  br i1 %cmp.120.i, label %handle_weakrefs.exit, label %for.body.lr.ph.i.293, !dbg !1482

for.body.lr.ph.i.293:                             ; preds = %for.end.64
  %55 = bitcast %union._gc_head** %gc_prev.i.i.290 to i64**, !dbg !1483
  br label %for.body.i.299, !dbg !1482

while.cond.preheader.i:                           ; preds = %for.cond.backedge.i.301
  %.pre.i.294 = load %union._gc_head*, %union._gc_head** %gc_next.i.i.291, align 8, !dbg !1485, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !826, metadata !1018) #1, !dbg !1473
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !730, metadata !1018) #1, !dbg !1489
  %cmp.i.112.114.i = icmp eq %union._gc_head* %.pre.i.294, %wrcb_to_call.i, !dbg !1490
  br i1 %cmp.i.112.114.i, label %handle_weakrefs.exit, label %while.body.lr.ph.lr.ph.i, !dbg !1491

while.body.lr.ph.lr.ph.i:                         ; preds = %while.cond.preheader.i
  %gc_prev7.i.i.295 = getelementptr inbounds %union._gc_head, %union._gc_head* %old.0, i64 0, i32 0, i32 1, !dbg !1492
  br label %while.body.lr.ph.i.313, !dbg !1491

for.body.i.299:                                   ; preds = %for.cond.backedge.i.301, %for.body.lr.ph.i.293
  %gc.0121.i = phi %union._gc_head* [ %53, %for.body.lr.ph.i.293 ], [ %56, %for.cond.backedge.i.301 ], !dbg !1496
  %gc_next3.i.296 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.0121.i, i64 0, i32 0, i32 0, !dbg !1497
  %56 = load %union._gc_head*, %union._gc_head** %gc_next3.i.296, align 8, !dbg !1497, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %56, i64 0, metadata !827, metadata !1018) #1, !dbg !1498
  %ob_type.i.297 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.0121.i, i64 1, i32 0, i32 1, !dbg !1499
  %57 = bitcast %union._gc_head** %ob_type.i.297 to %struct._typeobject**, !dbg !1499
  %58 = load %struct._typeobject*, %struct._typeobject** %57, align 8, !dbg !1499, !tbaa !1157
  %tp_weaklistoffset.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i64 0, i32 24, !dbg !1499
  %59 = load i64, i64* %tp_weaklistoffset.i, align 8, !dbg !1499, !tbaa !1501
  %cmp4.i.298 = icmp sgt i64 %59, 0, !dbg !1499
  br i1 %cmp4.i.298, label %if.end.i, label %for.cond.backedge.i.301, !dbg !1502

for.cond.backedge.i.301.loopexit:                 ; preds = %for.cond.8.backedge.i
  br label %for.cond.backedge.i.301, !dbg !1481

for.cond.backedge.i.301:                          ; preds = %for.cond.backedge.i.301.loopexit, %if.end.i, %for.body.i.299
  %cmp.i.300 = icmp eq %union._gc_head* %56, %unreachable, !dbg !1481
  br i1 %cmp.i.300, label %while.cond.preheader.i, label %for.body.i.299, !dbg !1482

if.end.i:                                         ; preds = %for.body.i.299
  %add.ptr.i.302 = getelementptr %union._gc_head, %union._gc_head* %gc.0121.i, i64 1, !dbg !1503
  %60 = bitcast %union._gc_head* %add.ptr.i.302 to i8*, !dbg !1504
  %add.ptr7.i = getelementptr i8, i8* %60, i64 %59, !dbg !1504
  %61 = bitcast i8* %add.ptr7.i to %struct._PyWeakReference**, !dbg !1505
  call void @llvm.dbg.value(metadata %struct._PyWeakReference** %61, i64 0, metadata !829, metadata !1018) #1, !dbg !1506
  %wr.0.117.i = load %struct._PyWeakReference*, %struct._PyWeakReference** %61, align 8, !dbg !1507
  %cmp9.118.i = icmp eq %struct._PyWeakReference* %wr.0.117.i, null, !dbg !1508
  br i1 %cmp9.118.i, label %for.cond.backedge.i.301, label %for.body.10.i.preheader, !dbg !1509

for.body.10.i.preheader:                          ; preds = %if.end.i
  br label %for.body.10.i, !dbg !1510

for.body.10.i:                                    ; preds = %for.body.10.i.preheader, %for.cond.8.backedge.i
  %wr.0119.i = phi %struct._PyWeakReference* [ %wr.0.i, %for.cond.8.backedge.i ], [ %wr.0.117.i, %for.body.10.i.preheader ], !dbg !1496
  call void @_PyWeakref_ClearRef(%struct._PyWeakReference* %wr.0119.i) #1, !dbg !1510
  %wr_callback.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %wr.0119.i, i64 0, i32 2, !dbg !1511
  %62 = load %struct._object*, %struct._object** %wr_callback.i, align 8, !dbg !1511, !tbaa !1513
  %cmp11.i = icmp eq %struct._object* %62, null, !dbg !1515
  br i1 %cmp11.i, label %for.cond.8.backedge.i, label %if.end.13.i, !dbg !1516

if.end.13.i:                                      ; preds = %for.body.10.i
  %add.ptr14.i = getelementptr %struct._PyWeakReference, %struct._PyWeakReference* %wr.0119.i, i64 -1, i32 3, !dbg !1517
  %63 = getelementptr inbounds i64, i64* %add.ptr14.i, i64 2, !dbg !1517
  %64 = load i64, i64* %63, align 8, !dbg !1517, !tbaa !1249
  %shr.mask.i = and i64 %64, -2, !dbg !1517
  %cmp16.i = icmp eq i64 %shr.mask.i, -8, !dbg !1517
  br i1 %cmp16.i, label %for.cond.8.backedge.i, label %if.end.18.i, !dbg !1519

for.cond.8.backedge.i:                            ; preds = %if.end.18.i, %if.end.13.i, %for.body.10.i
  %wr.0.i = load %struct._PyWeakReference*, %struct._PyWeakReference** %61, align 8, !dbg !1507
  %cmp9.i = icmp eq %struct._PyWeakReference* %wr.0.i, null, !dbg !1508
  br i1 %cmp9.i, label %for.cond.backedge.i.301.loopexit, label %for.body.10.i, !dbg !1509

if.end.18.i:                                      ; preds = %if.end.13.i
  %ob_refcnt.i.303 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %wr.0119.i, i64 0, i32 0, i32 0, !dbg !1520
  %65 = load i64, i64* %ob_refcnt.i.303, align 8, !dbg !1520, !tbaa !1040
  %inc.i.304 = add i64 %65, 1, !dbg !1520
  store i64 %inc.i.304, i64* %ob_refcnt.i.303, align 8, !dbg !1520, !tbaa !1040
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !826, metadata !1018) #1, !dbg !1473
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !773, metadata !1018) #1, !dbg !1521
  %gc_prev.i.105.i = getelementptr inbounds i64, i64* %add.ptr14.i, i64 1, !dbg !1522
  %66 = bitcast i64* %gc_prev.i.105.i to %union._gc_head**, !dbg !1522
  %67 = load %union._gc_head*, %union._gc_head** %66, align 8, !dbg !1522, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %67, i64 0, metadata !775, metadata !1018) #1, !dbg !1523
  %gc_next.i.106.i = bitcast i64* %add.ptr14.i to %union._gc_head**, !dbg !1524
  %68 = load %union._gc_head*, %union._gc_head** %gc_next.i.106.i, align 8, !dbg !1524, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %68, i64 0, metadata !776, metadata !1018) #1, !dbg !1525
  %gc_next3.i.107.i = getelementptr inbounds %union._gc_head, %union._gc_head* %67, i64 0, i32 0, i32 0, !dbg !1526
  store %union._gc_head* %68, %union._gc_head** %gc_next3.i.107.i, align 8, !dbg !1527, !tbaa !1211
  %gc_prev5.i.108.i = getelementptr inbounds %union._gc_head, %union._gc_head* %68, i64 0, i32 0, i32 1, !dbg !1528
  store %union._gc_head* %67, %union._gc_head** %gc_prev5.i.108.i, align 8, !dbg !1529, !tbaa !1217
  %69 = load %union._gc_head*, %union._gc_head** %gc_prev.i.i.290, align 8, !dbg !1530, !tbaa !1217
  store %union._gc_head* %69, %union._gc_head** %66, align 8, !dbg !1531, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %69, i64 0, metadata !774, metadata !1018) #1, !dbg !1532
  store i64* %add.ptr14.i, i64** %55, align 8, !dbg !1483, !tbaa !1217
  %70 = bitcast %union._gc_head* %69 to i64**, !dbg !1533
  store i64* %add.ptr14.i, i64** %70, align 8, !dbg !1533, !tbaa !1211
  store %union._gc_head* %wrcb_to_call.i, %union._gc_head** %gc_next.i.106.i, align 8, !dbg !1534, !tbaa !1211
  br label %for.cond.8.backedge.i, !dbg !1535

while.body.i.305:                                 ; preds = %while.body.lr.ph.i.313, %if.then.54.i
  %71 = phi %union._gc_head* [ %87, %while.body.lr.ph.i.313 ], [ %86, %if.then.54.i ], !dbg !1496
  %add.ptr27.i = getelementptr %union._gc_head, %union._gc_head* %71, i64 1, !dbg !1536
  %72 = bitcast %union._gc_head* %add.ptr27.i to %struct._object*, !dbg !1536
  call void @llvm.dbg.value(metadata %struct._object* %72, i64 0, metadata !824, metadata !1018) #1, !dbg !1537
  %wr_callback28.i = getelementptr inbounds %union._gc_head, %union._gc_head* %71, i64 2, !dbg !1538
  %73 = bitcast %union._gc_head* %wr_callback28.i to %struct._object**, !dbg !1538
  %74 = load %struct._object*, %struct._object** %73, align 8, !dbg !1538, !tbaa !1513
  call void @llvm.dbg.value(metadata %struct._object* %74, i64 0, metadata !839, metadata !1018) #1, !dbg !1539
  %call29.i = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %74, %union._gc_head* %add.ptr27.i, i8* null) #1, !dbg !1540
  call void @llvm.dbg.value(metadata %struct._object* %call29.i, i64 0, metadata !837, metadata !1018) #1, !dbg !1541
  %cmp30.i = icmp eq %struct._object* %call29.i, null, !dbg !1542
  br i1 %cmp30.i, label %if.then.31.i, label %do.body.i.307, !dbg !1543

if.then.31.i:                                     ; preds = %while.body.i.305
  call void @PyErr_WriteUnraisable(%struct._object* %74) #1, !dbg !1544
  br label %do.body.39.i, !dbg !1544

do.body.i.307:                                    ; preds = %while.body.i.305
  call void @llvm.dbg.value(metadata %struct._object* %call29.i, i64 0, metadata !840, metadata !1018) #1, !dbg !1545
  %ob_refcnt32.i = getelementptr inbounds %struct._object, %struct._object* %call29.i, i64 0, i32 0, !dbg !1547
  %75 = load i64, i64* %ob_refcnt32.i, align 8, !dbg !1547, !tbaa !1040
  %dec.i.306 = add i64 %75, -1, !dbg !1547
  store i64 %dec.i.306, i64* %ob_refcnt32.i, align 8, !dbg !1547, !tbaa !1040
  %cmp33.i = icmp eq i64 %dec.i.306, 0, !dbg !1547
  br i1 %cmp33.i, label %if.else.35.i, label %do.body.39.i, !dbg !1549

if.else.35.i:                                     ; preds = %do.body.i.307
  %ob_type36.i = getelementptr inbounds %struct._object, %struct._object* %call29.i, i64 0, i32 1, !dbg !1550
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type36.i, align 8, !dbg !1550, !tbaa !1157
  %tp_dealloc.i.308 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i64 0, i32 4, !dbg !1550
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.308, align 8, !dbg !1550, !tbaa !1172
  call void %77(%struct._object* %call29.i) #1, !dbg !1550
  br label %do.body.39.i, !dbg !1496

do.body.39.i:                                     ; preds = %if.else.35.i, %do.body.i.307, %if.then.31.i
  call void @llvm.dbg.value(metadata %struct._object* %72, i64 0, metadata !843, metadata !1018) #1, !dbg !1552
  %ob_refcnt41.i = bitcast %union._gc_head* %add.ptr27.i to i64*, !dbg !1554
  %78 = load i64, i64* %ob_refcnt41.i, align 8, !dbg !1554, !tbaa !1040
  %dec42.i = add i64 %78, -1, !dbg !1554
  store i64 %dec42.i, i64* %ob_refcnt41.i, align 8, !dbg !1554, !tbaa !1040
  %cmp43.i = icmp eq i64 %dec42.i, 0, !dbg !1554
  br i1 %cmp43.i, label %if.else.45.i, label %if.end.48.i, !dbg !1556

if.else.45.i:                                     ; preds = %do.body.39.i
  %ob_type46.i = getelementptr inbounds %union._gc_head, %union._gc_head* %71, i64 1, i32 0, i32 1, !dbg !1557
  %79 = bitcast %union._gc_head** %ob_type46.i to %struct._typeobject**, !dbg !1557
  %80 = load %struct._typeobject*, %struct._typeobject** %79, align 8, !dbg !1557, !tbaa !1157
  %tp_dealloc47.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i64 0, i32 4, !dbg !1557
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47.i, align 8, !dbg !1557, !tbaa !1172
  call void %81(%struct._object* %72) #1, !dbg !1557
  br label %if.end.48.i, !dbg !1496

if.end.48.i:                                      ; preds = %if.else.45.i, %do.body.39.i
  %82 = load %union._gc_head*, %union._gc_head** %gc_next.i.i.291, align 8, !dbg !1485, !tbaa !1211
  %cmp53.i = icmp eq %union._gc_head* %82, %71, !dbg !1559
  br i1 %cmp53.i, label %if.then.54.i, label %if.else.55.i, !dbg !1560

if.then.54.i:                                     ; preds = %if.end.48.i
  call void @llvm.dbg.value(metadata %union._gc_head* %old.0, i64 0, metadata !773, metadata !1018) #1, !dbg !1561
  %gc_prev.i.103.i = getelementptr inbounds %union._gc_head, %union._gc_head* %71, i64 0, i32 0, i32 1, !dbg !1562
  %83 = load %union._gc_head*, %union._gc_head** %gc_prev.i.103.i, align 8, !dbg !1562, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %83, i64 0, metadata !775, metadata !1018) #1, !dbg !1563
  %gc_next.i.104.i = getelementptr inbounds %union._gc_head, %union._gc_head* %71, i64 0, i32 0, i32 0, !dbg !1564
  %84 = load %union._gc_head*, %union._gc_head** %gc_next.i.104.i, align 8, !dbg !1564, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %84, i64 0, metadata !776, metadata !1018) #1, !dbg !1565
  %gc_next3.i.i.309 = getelementptr inbounds %union._gc_head, %union._gc_head* %83, i64 0, i32 0, i32 0, !dbg !1566
  store %union._gc_head* %84, %union._gc_head** %gc_next3.i.i.309, align 8, !dbg !1567, !tbaa !1211
  %gc_prev5.i.i.310 = getelementptr inbounds %union._gc_head, %union._gc_head* %84, i64 0, i32 0, i32 1, !dbg !1568
  store %union._gc_head* %83, %union._gc_head** %gc_prev5.i.i.310, align 8, !dbg !1569, !tbaa !1217
  %85 = load %union._gc_head*, %union._gc_head** %gc_prev7.i.i.295, align 8, !dbg !1492, !tbaa !1217
  store %union._gc_head* %85, %union._gc_head** %gc_prev.i.103.i, align 8, !dbg !1570, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %85, i64 0, metadata !774, metadata !1018) #1, !dbg !1571
  store %union._gc_head* %71, %union._gc_head** %gc_prev7.i.i.295, align 8, !dbg !1572, !tbaa !1217
  %gc_next13.i.i.311 = getelementptr inbounds %union._gc_head, %union._gc_head* %85, i64 0, i32 0, i32 0, !dbg !1573
  store %union._gc_head* %71, %union._gc_head** %gc_next13.i.i.311, align 8, !dbg !1574, !tbaa !1211
  store %union._gc_head* %old.0, %union._gc_head** %gc_next.i.104.i, align 8, !dbg !1575, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !826, metadata !1018) #1, !dbg !1473
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !730, metadata !1018) #1, !dbg !1489
  %86 = load %union._gc_head*, %union._gc_head** %gc_next.i.i.291, align 8, !dbg !1485, !tbaa !1211
  %cmp.i.i.312 = icmp eq %union._gc_head* %86, %wrcb_to_call.i, !dbg !1490
  br i1 %cmp.i.i.312, label %handle_weakrefs.exit.loopexit, label %while.body.i.305, !dbg !1491

if.else.55.i:                                     ; preds = %if.end.48.i
  %.lcssa = phi %union._gc_head* [ %82, %if.end.48.i ]
  %inc56.i = add i32 %num_freed.0.ph115.i, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %inc56.i, i64 0, metadata !828, metadata !1018) #1, !dbg !1472
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !826, metadata !1018) #1, !dbg !1473
  call void @llvm.dbg.value(metadata %union._gc_head* %wrcb_to_call.i, i64 0, metadata !730, metadata !1018) #1, !dbg !1489
  %cmp.i.112.i = icmp eq %union._gc_head* %.lcssa, %wrcb_to_call.i, !dbg !1490
  br i1 %cmp.i.112.i, label %handle_weakrefs.exit.loopexit496, label %while.body.lr.ph.i.313, !dbg !1491

while.body.lr.ph.i.313:                           ; preds = %if.else.55.i, %while.body.lr.ph.lr.ph.i
  %87 = phi %union._gc_head* [ %.pre.i.294, %while.body.lr.ph.lr.ph.i ], [ %.lcssa, %if.else.55.i ], !dbg !1496
  %num_freed.0.ph115.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %inc56.i, %if.else.55.i ], !dbg !1496
  br label %while.body.i.305, !dbg !1491

handle_weakrefs.exit.loopexit:                    ; preds = %if.then.54.i
  %num_freed.0.ph115.i.lcssa500 = phi i32 [ %num_freed.0.ph115.i, %if.then.54.i ]
  br label %handle_weakrefs.exit, !dbg !1577

handle_weakrefs.exit.loopexit496:                 ; preds = %if.else.55.i
  %inc56.i.lcssa = phi i32 [ %inc56.i, %if.else.55.i ]
  br label %handle_weakrefs.exit, !dbg !1577

handle_weakrefs.exit:                             ; preds = %handle_weakrefs.exit.loopexit496, %handle_weakrefs.exit.loopexit, %for.end.64, %while.cond.preheader.i
  %num_freed.0.ph.lcssa.i = phi i32 [ 0, %while.cond.preheader.i ], [ 0, %for.end.64 ], [ %num_freed.0.ph115.i.lcssa500, %handle_weakrefs.exit.loopexit ], [ %inc56.i.lcssa, %handle_weakrefs.exit.loopexit496 ], !dbg !1496
  call void @llvm.lifetime.end(i64 24, i8* %54) #1, !dbg !1577
  %conv = sext i32 %num_freed.0.ph.lcssa.i to i64, !dbg !1496
  %add66 = add i64 %conv, %m.0.lcssa, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %add66, i64 0, metadata !688, metadata !1018), !dbg !1116
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !847, metadata !1018) #1, !dbg !1579
  %88 = bitcast %union._gc_head* %seen.i to i8*, !dbg !1581
  call void @llvm.lifetime.start(i64 24, i8* %88) #1, !dbg !1581
  call void @llvm.dbg.value(metadata %union._gc_head* %seen.i, i64 0, metadata !849, metadata !1018) #1, !dbg !1582
  call void @llvm.dbg.value(metadata %union._gc_head* %seen.i, i64 0, metadata !749, metadata !1018) #1, !dbg !1583
  %gc_prev.i.i.314 = getelementptr inbounds %union._gc_head, %union._gc_head* %seen.i, i64 0, i32 0, i32 1, !dbg !1585
  store %union._gc_head* %seen.i, %union._gc_head** %gc_prev.i.i.314, align 8, !dbg !1586, !tbaa !1217
  %gc_next.i.i.315 = getelementptr inbounds %union._gc_head, %union._gc_head* %seen.i, i64 0, i32 0, i32 0, !dbg !1587
  store %union._gc_head* %seen.i, %union._gc_head** %gc_next.i.i.315, align 8, !dbg !1588, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !730, metadata !1018) #1, !dbg !1589
  %89 = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1591, !tbaa !1211
  %cmp.i.43.i = icmp eq %union._gc_head* %89, %unreachable, !dbg !1592
  br i1 %cmp.i.43.i, label %finalize_garbage.exit.thread, label %while.body.i.322.preheader, !dbg !1593

while.body.i.322.preheader:                       ; preds = %handle_weakrefs.exit
  br label %while.body.i.322, !dbg !1594

while.body.i.322:                                 ; preds = %while.body.i.322.preheader, %while.cond.backedge.i.333
  %90 = phi %union._gc_head* [ %104, %while.cond.backedge.i.333 ], [ %89, %while.body.i.322.preheader ], !dbg !1595
  %add.ptr.i.316 = getelementptr %union._gc_head, %union._gc_head* %90, i64 1, !dbg !1594
  %91 = bitcast %union._gc_head* %add.ptr.i.316 to %struct._object*, !dbg !1594
  call void @llvm.dbg.value(metadata %struct._object* %91, i64 0, metadata !852, metadata !1018) #1, !dbg !1596
  call void @llvm.dbg.value(metadata %union._gc_head* %seen.i, i64 0, metadata !849, metadata !1018) #1, !dbg !1582
  call void @llvm.dbg.value(metadata %union._gc_head* %seen.i, i64 0, metadata !773, metadata !1018) #1, !dbg !1597
  %gc_prev.i.39.i = getelementptr inbounds %union._gc_head, %union._gc_head* %90, i64 0, i32 0, i32 1, !dbg !1599
  %92 = load %union._gc_head*, %union._gc_head** %gc_prev.i.39.i, align 8, !dbg !1599, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %92, i64 0, metadata !775, metadata !1018) #1, !dbg !1600
  %gc_next.i.40.i = getelementptr inbounds %union._gc_head, %union._gc_head* %90, i64 0, i32 0, i32 0, !dbg !1601
  %93 = load %union._gc_head*, %union._gc_head** %gc_next.i.40.i, align 8, !dbg !1601, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %93, i64 0, metadata !776, metadata !1018) #1, !dbg !1602
  %gc_next3.i.41.i = getelementptr inbounds %union._gc_head, %union._gc_head* %92, i64 0, i32 0, i32 0, !dbg !1603
  store %union._gc_head* %93, %union._gc_head** %gc_next3.i.41.i, align 8, !dbg !1604, !tbaa !1211
  %gc_prev5.i.i.317 = getelementptr inbounds %union._gc_head, %union._gc_head* %93, i64 0, i32 0, i32 1, !dbg !1605
  store %union._gc_head* %92, %union._gc_head** %gc_prev5.i.i.317, align 8, !dbg !1606, !tbaa !1217
  %94 = load %union._gc_head*, %union._gc_head** %gc_prev.i.i.314, align 8, !dbg !1607, !tbaa !1217
  store %union._gc_head* %94, %union._gc_head** %gc_prev.i.39.i, align 8, !dbg !1608, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %94, i64 0, metadata !774, metadata !1018) #1, !dbg !1609
  store %union._gc_head* %90, %union._gc_head** %gc_prev.i.i.314, align 8, !dbg !1610, !tbaa !1217
  %gc_next13.i.i.318 = getelementptr inbounds %union._gc_head, %union._gc_head* %94, i64 0, i32 0, i32 0, !dbg !1611
  store %union._gc_head* %90, %union._gc_head** %gc_next13.i.i.318, align 8, !dbg !1612, !tbaa !1211
  store %union._gc_head* %seen.i, %union._gc_head** %gc_next.i.40.i, align 8, !dbg !1613, !tbaa !1211
  %gc_refs.i.319 = getelementptr inbounds %union._gc_head, %union._gc_head* %90, i64 0, i32 0, i32 2, !dbg !1614
  %95 = load i64, i64* %gc_refs.i.319, align 8, !dbg !1614, !tbaa !1249
  %and.i.320 = and i64 %95, 1, !dbg !1614
  %cmp.i.321 = icmp eq i64 %and.i.320, 0, !dbg !1614
  br i1 %cmp.i.321, label %land.lhs.true.i, label %while.cond.backedge.i.333, !dbg !1615

land.lhs.true.i:                                  ; preds = %while.body.i.322
  %ob_type.i.323 = getelementptr inbounds %union._gc_head, %union._gc_head* %90, i64 1, i32 0, i32 1, !dbg !1616
  %96 = bitcast %union._gc_head** %ob_type.i.323 to %struct._typeobject**, !dbg !1616
  %97 = load %struct._typeobject*, %struct._typeobject** %96, align 8, !dbg !1616, !tbaa !1157
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i64 0, i32 19, !dbg !1616
  %98 = load i64, i64* %tp_flags.i, align 8, !dbg !1616, !tbaa !1617
  %and3.i = and i64 %98, 1, !dbg !1616
  %cmp4.i.324 = icmp eq i64 %and3.i, 0, !dbg !1616
  br i1 %cmp4.i.324, label %while.cond.backedge.i.333, label %land.lhs.true.5.i, !dbg !1618

land.lhs.true.5.i:                                ; preds = %land.lhs.true.i
  %tp_finalize.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i64 0, i32 47, !dbg !1619
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_finalize.i, align 8, !dbg !1619, !tbaa !1620
  call void @llvm.dbg.value(metadata void (%struct._object*)* %99, i64 0, metadata !848, metadata !1018) #1, !dbg !1621
  %cmp7.i = icmp eq void (%struct._object*)* %99, null, !dbg !1622
  br i1 %cmp7.i, label %while.cond.backedge.i.333, label %do.body.i.329, !dbg !1623

do.body.i.329:                                    ; preds = %land.lhs.true.5.i
  %or.i.325 = or i64 %95, 1, !dbg !1624
  store i64 %or.i.325, i64* %gc_refs.i.319, align 8, !dbg !1624, !tbaa !1249
  %ob_refcnt.i.326 = bitcast %union._gc_head* %add.ptr.i.316 to i64*, !dbg !1627
  %100 = load i64, i64* %ob_refcnt.i.326, align 8, !dbg !1627, !tbaa !1040
  %inc.i.327 = add i64 %100, 1, !dbg !1627
  store i64 %inc.i.327, i64* %ob_refcnt.i.326, align 8, !dbg !1627, !tbaa !1040
  call void %99(%struct._object* %91) #1, !dbg !1628
  call void @llvm.dbg.value(metadata %struct._object* %91, i64 0, metadata !853, metadata !1018) #1, !dbg !1629
  %101 = load i64, i64* %ob_refcnt.i.326, align 8, !dbg !1631, !tbaa !1040
  %dec.i.328 = add i64 %101, -1, !dbg !1631
  store i64 %dec.i.328, i64* %ob_refcnt.i.326, align 8, !dbg !1631, !tbaa !1040
  %cmp15.i = icmp eq i64 %dec.i.328, 0, !dbg !1631
  br i1 %cmp15.i, label %if.else.i.331, label %while.cond.backedge.i.333, !dbg !1633

if.else.i.331:                                    ; preds = %do.body.i.329
  %102 = load %struct._typeobject*, %struct._typeobject** %96, align 8, !dbg !1634, !tbaa !1157
  %tp_dealloc.i.330 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i64 0, i32 4, !dbg !1634
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.330, align 8, !dbg !1634, !tbaa !1172
  call void %103(%struct._object* %91) #1, !dbg !1634
  br label %while.cond.backedge.i.333, !dbg !1595

while.cond.backedge.i.333:                        ; preds = %if.else.i.331, %do.body.i.329, %land.lhs.true.5.i, %land.lhs.true.i, %while.body.i.322
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !730, metadata !1018) #1, !dbg !1589
  %104 = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1591, !tbaa !1211
  %cmp.i.i.332 = icmp eq %union._gc_head* %104, %unreachable, !dbg !1592
  br i1 %cmp.i.i.332, label %while.end.i, label %while.body.i.322, !dbg !1593

while.end.i:                                      ; preds = %while.cond.backedge.i.333
  %.pre.i.334 = load %union._gc_head*, %union._gc_head** %gc_next.i.i.315, align 8, !dbg !1636, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %seen.i, i64 0, metadata !849, metadata !1018) #1, !dbg !1582
  call void @llvm.dbg.value(metadata %union._gc_head* %seen.i, i64 0, metadata !723, metadata !1018) #1, !dbg !1639
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !724, metadata !1018) #1, !dbg !1640
  call void @llvm.dbg.value(metadata %union._gc_head* %seen.i, i64 0, metadata !730, metadata !1018) #1, !dbg !1641
  %cmp.i.i.i = icmp eq %union._gc_head* %.pre.i.334, %seen.i, !dbg !1642
  br i1 %cmp.i.i.i, label %finalize_garbage.exit.thread, label %finalize_garbage.exit, !dbg !1643

finalize_garbage.exit.thread:                     ; preds = %handle_weakrefs.exit, %while.end.i
  call void @llvm.dbg.value(metadata %union._gc_head* %seen.i, i64 0, metadata !749, metadata !1018) #1, !dbg !1644
  call void @llvm.lifetime.end(i64 24, i8* %88) #1, !dbg !1646
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !859, metadata !1018) #1, !dbg !1647
  br label %if.end.71, !dbg !1650

finalize_garbage.exit:                            ; preds = %while.end.i
  %105 = load %union._gc_head*, %union._gc_head** %gc_prev.i.215483, align 8, !dbg !1652, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %105, i64 0, metadata !725, metadata !1018) #1, !dbg !1653
  %gc_next3.i.i.335 = getelementptr inbounds %union._gc_head, %union._gc_head* %105, i64 0, i32 0, i32 0, !dbg !1654
  store %union._gc_head* %.pre.i.334, %union._gc_head** %gc_next3.i.i.335, align 8, !dbg !1655, !tbaa !1211
  %gc_prev7.i.i.336 = getelementptr inbounds %union._gc_head, %union._gc_head* %.pre.i.334, i64 0, i32 0, i32 1, !dbg !1656
  store %union._gc_head* %105, %union._gc_head** %gc_prev7.i.i.336, align 8, !dbg !1657, !tbaa !1217
  %106 = load %union._gc_head*, %union._gc_head** %gc_prev.i.i.314, align 8, !dbg !1658, !tbaa !1217
  store %union._gc_head* %106, %union._gc_head** %gc_prev.i.215483, align 8, !dbg !1659, !tbaa !1217
  %gc_next15.i.i = getelementptr inbounds %union._gc_head, %union._gc_head* %106, i64 0, i32 0, i32 0, !dbg !1660
  store %union._gc_head* %unreachable, %union._gc_head** %gc_next15.i.i, align 8, !dbg !1661, !tbaa !1211
  %gc.0.35.i.pre = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1662
  call void @llvm.dbg.value(metadata %union._gc_head* %seen.i, i64 0, metadata !749, metadata !1018) #1, !dbg !1644
  call void @llvm.lifetime.end(i64 24, i8* %88) #1, !dbg !1646
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !859, metadata !1018) #1, !dbg !1647
  %cmp.36.i = icmp eq %union._gc_head* %gc.0.35.i.pre, %unreachable, !dbg !1663
  br i1 %cmp.36.i, label %if.end.71, label %do.body.i.346.preheader, !dbg !1650

do.body.i.346.preheader:                          ; preds = %finalize_garbage.exit
  br label %do.body.i.346, !dbg !1665

do.body.i.346:                                    ; preds = %do.body.i.346.preheader, %do.body.i.346
  %gc.037.i = phi %union._gc_head* [ %gc.0.i.344, %do.body.i.346 ], [ %gc.0.35.i.pre, %do.body.i.346.preheader ], !dbg !1669
  %gc_refs.i.338 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.037.i, i64 0, i32 0, i32 2, !dbg !1665
  %107 = load i64, i64* %gc_refs.i.338, align 8, !dbg !1665, !tbaa !1249
  %and.i.339 = and i64 %107, 1, !dbg !1665
  %add.ptr.i.340 = getelementptr %union._gc_head, %union._gc_head* %gc.037.i, i64 1, !dbg !1665
  %ob_refcnt.i.341 = bitcast %union._gc_head* %add.ptr.i.340 to i64*, !dbg !1665
  %108 = load i64, i64* %ob_refcnt.i.341, align 8, !dbg !1665, !tbaa !1040
  %shl.i.342 = shl i64 %108, 1, !dbg !1665
  %or.i.343 = or i64 %shl.i.342, %and.i.339, !dbg !1665
  store i64 %or.i.343, i64* %gc_refs.i.338, align 8, !dbg !1665, !tbaa !1249
  %gc_next6.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.037.i, i64 0, i32 0, i32 0, !dbg !1670
  %gc.0.i.344 = load %union._gc_head*, %union._gc_head** %gc_next6.i, align 8, !dbg !1662
  %cmp.i.345 = icmp eq %union._gc_head* %gc.0.i.344, %unreachable, !dbg !1663
  br i1 %cmp.i.345, label %for.end.i, label %do.body.i.346, !dbg !1650

for.end.i:                                        ; preds = %do.body.i.346
  %gc.0.12.i.pre.i = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1671
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !737, metadata !1018) #1, !dbg !1673
  %cmp.13.i.i = icmp eq %union._gc_head* %gc.0.12.i.pre.i, %unreachable, !dbg !1674
  br i1 %cmp.13.i.i, label %if.end.71, label %for.body.i.i.preheader, !dbg !1675

for.body.i.i.preheader:                           ; preds = %for.end.i
  br label %for.body.i.i, !dbg !1676

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %gc.014.i.i = phi %union._gc_head* [ %gc.0.i.i, %for.body.i.i ], [ %gc.0.12.i.pre.i, %for.body.i.i.preheader ], !dbg !1677
  %add.ptr.i.i = getelementptr %union._gc_head, %union._gc_head* %gc.014.i.i, i64 1, !dbg !1676
  %109 = bitcast %union._gc_head* %add.ptr.i.i to %struct._object*, !dbg !1676
  %ob_type.i.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.014.i.i, i64 1, i32 0, i32 1, !dbg !1676
  %110 = bitcast %union._gc_head** %ob_type.i.i to %struct._typeobject**, !dbg !1676
  %111 = load %struct._typeobject*, %struct._typeobject** %110, align 8, !dbg !1676, !tbaa !1157
  %tp_traverse.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i64 0, i32 21, !dbg !1678
  %112 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse.i.i, align 8, !dbg !1678, !tbaa !1261
  call void @llvm.dbg.value(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %112, i64 0, metadata !738, metadata !1018) #1, !dbg !1679
  %call.i.i = call i32 %112(%struct._object* %109, i32 (%struct._object*, i8*)* nonnull @visit_decref, i8* null) #1, !dbg !1680
  %gc.0.in.i.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.014.i.i, i64 0, i32 0, i32 0, !dbg !1671
  %gc.0.i.i = load %union._gc_head*, %union._gc_head** %gc.0.in.i.i, align 8, !dbg !1671
  %cmp.i.i.347 = icmp eq %union._gc_head* %gc.0.i.i, %unreachable, !dbg !1674
  br i1 %cmp.i.i.347, label %for.cond.9.preheader.i, label %for.body.i.i, !dbg !1675

for.cond.9.preheader.i:                           ; preds = %for.body.i.i
  %gc.1.31.pre.i = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1681
  %cmp10.32.i = icmp eq %union._gc_head* %gc.1.31.pre.i, %unreachable, !dbg !1685
  br i1 %cmp10.32.i, label %if.end.71, label %for.body.11.i.preheader, !dbg !1688

for.body.11.i.preheader:                          ; preds = %for.cond.9.preheader.i
  br label %for.body.11.i, !dbg !1689

for.cond.9.i:                                     ; preds = %for.body.11.i
  %gc_next17.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.133.i, i64 0, i32 0, i32 0, !dbg !1692
  %gc.1.i = load %union._gc_head*, %union._gc_head** %gc_next17.i, align 8, !dbg !1693
  %cmp10.i.348 = icmp eq %union._gc_head* %gc.1.i, %unreachable, !dbg !1685
  br i1 %cmp10.i.348, label %if.else.70, label %for.body.11.i, !dbg !1688

for.body.11.i:                                    ; preds = %for.body.11.i.preheader, %for.cond.9.i
  %gc.133.i = phi %union._gc_head* [ %gc.1.i, %for.cond.9.i ], [ %gc.1.31.pre.i, %for.body.11.i.preheader ], !dbg !1669
  %gc_refs13.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.133.i, i64 0, i32 0, i32 2, !dbg !1689
  %113 = load i64, i64* %gc_refs13.i, align 8, !dbg !1689, !tbaa !1249
  %cmp14.i = icmp ugt i64 %113, 1, !dbg !1694
  br i1 %cmp14.i, label %do.body.i.359.preheader, label %for.cond.9.i, !dbg !1695

do.body.i.359.preheader:                          ; preds = %for.body.11.i
  br label %do.body.i.359, !dbg !1696

do.body.i.359:                                    ; preds = %do.body.i.359.preheader, %do.body.i.359
  %gc.015.i.352 = phi %union._gc_head* [ %gc.0.i.357, %do.body.i.359 ], [ %gc.1.31.pre.i, %do.body.i.359.preheader ], !dbg !1701
  %gc_refs.i.353 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.015.i.352, i64 0, i32 0, i32 2, !dbg !1696
  %114 = load i64, i64* %gc_refs.i.353, align 8, !dbg !1696, !tbaa !1249
  %and.i.354 = and i64 %114, 1, !dbg !1696
  %or.i.355 = or i64 %and.i.354, -6, !dbg !1696
  store i64 %or.i.355, i64* %gc_refs.i.353, align 8, !dbg !1696, !tbaa !1249
  %gc.0.in.i.356 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.015.i.352, i64 0, i32 0, i32 0, !dbg !1681
  %gc.0.i.357 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.356, align 8, !dbg !1681
  %cmp.i.358 = icmp eq %union._gc_head* %gc.0.i.357, %unreachable, !dbg !1702
  br i1 %cmp.i.358, label %revive_garbage.exit, label %do.body.i.359, !dbg !1703

revive_garbage.exit:                              ; preds = %do.body.i.359
  %.pre476 = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1704, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  tail call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !723, metadata !1018), !dbg !1707
  tail call void @llvm.dbg.value(metadata %union._gc_head* %old.0, i64 0, metadata !724, metadata !1018), !dbg !1708
  tail call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !730, metadata !1018), !dbg !1709
  %cmp.i.i.362 = icmp eq %union._gc_head* %.pre476, %unreachable, !dbg !1710
  br i1 %cmp.i.i.362, label %gc_list_merge.exit373, label %if.then.i.370, !dbg !1711

if.then.i.370:                                    ; preds = %revive_garbage.exit
  %gc_prev.i.365 = getelementptr inbounds %union._gc_head, %union._gc_head* %old.0, i64 0, i32 0, i32 1, !dbg !1712
  %115 = load %union._gc_head*, %union._gc_head** %gc_prev.i.365, align 8, !dbg !1712, !tbaa !1217
  tail call void @llvm.dbg.value(metadata %union._gc_head* %115, i64 0, metadata !725, metadata !1018), !dbg !1713
  %gc_next3.i.366 = getelementptr inbounds %union._gc_head, %union._gc_head* %115, i64 0, i32 0, i32 0, !dbg !1714
  store %union._gc_head* %.pre476, %union._gc_head** %gc_next3.i.366, align 8, !dbg !1715, !tbaa !1211
  %gc_prev7.i.367 = getelementptr inbounds %union._gc_head, %union._gc_head* %.pre476, i64 0, i32 0, i32 1, !dbg !1716
  store %union._gc_head* %115, %union._gc_head** %gc_prev7.i.367, align 8, !dbg !1717, !tbaa !1217
  %116 = load %union._gc_head*, %union._gc_head** %gc_prev.i.215483, align 8, !dbg !1718, !tbaa !1217
  store %union._gc_head* %116, %union._gc_head** %gc_prev.i.365, align 8, !dbg !1719, !tbaa !1217
  %gc_next15.i.369 = getelementptr inbounds %union._gc_head, %union._gc_head* %116, i64 0, i32 0, i32 0, !dbg !1720
  store %union._gc_head* %old.0, %union._gc_head** %gc_next15.i.369, align 8, !dbg !1721, !tbaa !1211
  br label %gc_list_merge.exit373, !dbg !1722

gc_list_merge.exit373:                            ; preds = %revive_garbage.exit, %if.then.i.370
  tail call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !749, metadata !1018), !dbg !1723
  store %union._gc_head* %unreachable, %union._gc_head** %gc_prev.i.215483, align 8, !dbg !1725, !tbaa !1217
  store %union._gc_head* %unreachable, %union._gc_head** %gc_next.i484, align 8, !dbg !1726, !tbaa !1211
  br label %if.end.71, !dbg !1727

if.else.70:                                       ; preds = %for.cond.9.i
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !692, metadata !1018), !dbg !1264
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !867, metadata !1018) #1, !dbg !1728
  call void @llvm.dbg.value(metadata %union._gc_head* %old.0, i64 0, metadata !868, metadata !1018) #1, !dbg !1731
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !730, metadata !1018) #1, !dbg !1732
  %cmp.i.42.i = icmp eq %union._gc_head* %gc.1.31.pre.i, %unreachable, !dbg !1734
  br i1 %cmp.i.42.i, label %if.end.71, label %while.body.lr.ph.i.376, !dbg !1735

while.body.lr.ph.i.376:                           ; preds = %if.else.70
  %gc_prev7.i.i.375 = getelementptr inbounds %union._gc_head, %union._gc_head* %old.0, i64 0, i32 0, i32 1, !dbg !1736
  br label %while.body.i.379, !dbg !1735

while.body.i.379:                                 ; preds = %while.cond.backedge.i.400, %while.body.lr.ph.i.376
  %117 = phi %union._gc_head* [ %gc.1.31.pre.i, %while.body.lr.ph.i.376 ], [ %133, %while.cond.backedge.i.400 ], !dbg !1740
  %add.ptr.i.377 = getelementptr %union._gc_head, %union._gc_head* %117, i64 1, !dbg !1741
  %118 = bitcast %union._gc_head* %add.ptr.i.377 to %struct._object*, !dbg !1741
  call void @llvm.dbg.value(metadata %struct._object* %118, i64 0, metadata !872, metadata !1018) #1, !dbg !1742
  %119 = load i32, i32* @debug, align 4, !dbg !1743, !tbaa !1124
  %and.i.378 = and i32 %119, 32, !dbg !1744
  %tobool2.i = icmp eq i32 %and.i.378, 0, !dbg !1744
  br i1 %tobool2.i, label %if.else.i.384, label %if.then.i.381, !dbg !1745

if.then.i.381:                                    ; preds = %while.body.i.379
  %120 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1746, !tbaa !1025
  %call3.i.380 = call i32 @PyList_Append(%struct._object* %120, %struct._object* %118) #1, !dbg !1748
  br label %if.end.12.i, !dbg !1749

if.else.i.384:                                    ; preds = %while.body.i.379
  %ob_type.i.382 = getelementptr inbounds %union._gc_head, %union._gc_head* %117, i64 1, i32 0, i32 1, !dbg !1750
  %121 = bitcast %union._gc_head** %ob_type.i.382 to %struct._typeobject**, !dbg !1750
  %122 = load %struct._typeobject*, %struct._typeobject** %121, align 8, !dbg !1750, !tbaa !1157
  %tp_clear.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i64 0, i32 22, !dbg !1751
  %123 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_clear.i, align 8, !dbg !1751, !tbaa !1752
  call void @llvm.dbg.value(metadata i32 (%struct._object*)* %123, i64 0, metadata !869, metadata !1018) #1, !dbg !1753
  %cmp.i.383 = icmp eq i32 (%struct._object*)* %123, null, !dbg !1754
  br i1 %cmp.i.383, label %if.end.12.i, label %if.then.4.i, !dbg !1755

if.then.4.i:                                      ; preds = %if.else.i.384
  %ob_refcnt.i.385 = bitcast %union._gc_head* %add.ptr.i.377 to i64*, !dbg !1756
  %124 = load i64, i64* %ob_refcnt.i.385, align 8, !dbg !1756, !tbaa !1040
  %inc.i.386 = add i64 %124, 1, !dbg !1756
  store i64 %inc.i.386, i64* %ob_refcnt.i.385, align 8, !dbg !1756, !tbaa !1040
  %call5.i.387 = call i32 %123(%struct._object* %118) #1, !dbg !1757
  call void @llvm.dbg.value(metadata %struct._object* %118, i64 0, metadata !873, metadata !1018) #1, !dbg !1758
  %125 = load i64, i64* %ob_refcnt.i.385, align 8, !dbg !1760, !tbaa !1040
  %dec.i.388 = add i64 %125, -1, !dbg !1760
  store i64 %dec.i.388, i64* %ob_refcnt.i.385, align 8, !dbg !1760, !tbaa !1040
  %cmp7.i.389 = icmp eq i64 %dec.i.388, 0, !dbg !1760
  br i1 %cmp7.i.389, label %if.else.9.i, label %if.end.12.i, !dbg !1762

if.else.9.i:                                      ; preds = %if.then.4.i
  %126 = load %struct._typeobject*, %struct._typeobject** %121, align 8, !dbg !1763, !tbaa !1157
  %tp_dealloc.i.390 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i64 0, i32 4, !dbg !1763
  %127 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.390, align 8, !dbg !1763, !tbaa !1172
  call void %127(%struct._object* %118) #1, !dbg !1763
  br label %if.end.12.i, !dbg !1740

if.end.12.i:                                      ; preds = %if.else.9.i, %if.then.4.i, %if.else.i.384, %if.then.i.381
  %128 = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1765, !tbaa !1211
  %cmp15.i.391 = icmp eq %union._gc_head* %128, %117, !dbg !1766
  br i1 %cmp15.i.391, label %if.then.16.i, label %while.cond.backedge.i.400, !dbg !1767

if.then.16.i:                                     ; preds = %if.end.12.i
  call void @llvm.dbg.value(metadata %union._gc_head* %old.0, i64 0, metadata !773, metadata !1018) #1, !dbg !1768
  %gc_prev.i.i.392 = getelementptr inbounds %union._gc_head, %union._gc_head* %117, i64 0, i32 0, i32 1, !dbg !1769
  %129 = load %union._gc_head*, %union._gc_head** %gc_prev.i.i.392, align 8, !dbg !1769, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %129, i64 0, metadata !775, metadata !1018) #1, !dbg !1770
  %gc_next.i.41.i = getelementptr inbounds %union._gc_head, %union._gc_head* %117, i64 0, i32 0, i32 0, !dbg !1771
  %130 = load %union._gc_head*, %union._gc_head** %gc_next.i.41.i, align 8, !dbg !1771, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %130, i64 0, metadata !776, metadata !1018) #1, !dbg !1772
  %gc_next3.i.i.393 = getelementptr inbounds %union._gc_head, %union._gc_head* %129, i64 0, i32 0, i32 0, !dbg !1773
  store %union._gc_head* %130, %union._gc_head** %gc_next3.i.i.393, align 8, !dbg !1774, !tbaa !1211
  %gc_prev5.i.i.394 = getelementptr inbounds %union._gc_head, %union._gc_head* %130, i64 0, i32 0, i32 1, !dbg !1775
  store %union._gc_head* %129, %union._gc_head** %gc_prev5.i.i.394, align 8, !dbg !1776, !tbaa !1217
  %131 = load %union._gc_head*, %union._gc_head** %gc_prev7.i.i.375, align 8, !dbg !1736, !tbaa !1217
  store %union._gc_head* %131, %union._gc_head** %gc_prev.i.i.392, align 8, !dbg !1777, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %131, i64 0, metadata !774, metadata !1018) #1, !dbg !1778
  store %union._gc_head* %117, %union._gc_head** %gc_prev7.i.i.375, align 8, !dbg !1779, !tbaa !1217
  %gc_next13.i.i.395 = getelementptr inbounds %union._gc_head, %union._gc_head* %131, i64 0, i32 0, i32 0, !dbg !1780
  store %union._gc_head* %117, %union._gc_head** %gc_next13.i.i.395, align 8, !dbg !1781, !tbaa !1211
  store %union._gc_head* %old.0, %union._gc_head** %gc_next.i.41.i, align 8, !dbg !1782, !tbaa !1211
  %gc_refs.i.396 = getelementptr inbounds %union._gc_head, %union._gc_head* %117, i64 0, i32 0, i32 2, !dbg !1783
  %132 = load i64, i64* %gc_refs.i.396, align 8, !dbg !1783, !tbaa !1249
  %and19.i = and i64 %132, 1, !dbg !1783
  %or.i.397 = or i64 %and19.i, -6, !dbg !1783
  store i64 %or.i.397, i64* %gc_refs.i.396, align 8, !dbg !1783, !tbaa !1249
  %.pre.i.398 = load %union._gc_head*, %union._gc_head** %gc_next.i484, align 8, !dbg !1786, !tbaa !1211
  br label %while.cond.backedge.i.400, !dbg !1787

while.cond.backedge.i.400:                        ; preds = %if.then.16.i, %if.end.12.i
  %133 = phi %union._gc_head* [ %.pre.i.398, %if.then.16.i ], [ %128, %if.end.12.i ], !dbg !1786
  call void @llvm.dbg.value(metadata %union._gc_head* %unreachable, i64 0, metadata !730, metadata !1018) #1, !dbg !1732
  %cmp.i.i.399 = icmp eq %union._gc_head* %133, %unreachable, !dbg !1734
  br i1 %cmp.i.i.399, label %if.end.71.loopexit, label %while.body.i.379, !dbg !1735

if.end.71.loopexit:                               ; preds = %while.cond.backedge.i.400
  br label %if.end.71, !dbg !1788

if.end.71:                                        ; preds = %if.end.71.loopexit, %finalize_garbage.exit.thread, %finalize_garbage.exit, %for.end.i, %for.cond.9.preheader.i, %if.else.70, %gc_list_merge.exit373
  %134 = load %union._gc_head*, %union._gc_head** %gc_next.i.265, align 8, !dbg !1788, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %134, i64 0, metadata !694, metadata !1018), !dbg !1447
  %cmp75.455 = icmp eq %union._gc_head* %134, %finalizers, !dbg !1790
  br i1 %cmp75.455, label %for.end.87, label %for.body.77.preheader, !dbg !1792

for.body.77.preheader:                            ; preds = %if.end.71
  br label %for.body.77, !dbg !1793

for.body.77:                                      ; preds = %for.body.77.preheader, %for.inc.84
  %gc.1457 = phi %union._gc_head* [ %139, %for.inc.84 ], [ %134, %for.body.77.preheader ]
  %n.0456 = phi i64 [ %inc78, %for.inc.84 ], [ 0, %for.body.77.preheader ]
  %inc78 = add i64 %n.0456, 1, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %inc78, i64 0, metadata !689, metadata !1018), !dbg !1117
  %135 = load i32, i32* @debug, align 4, !dbg !1795, !tbaa !1124
  %and79 = and i32 %135, 4, !dbg !1797
  %tobool80 = icmp eq i32 %and79, 0, !dbg !1797
  br i1 %tobool80, label %for.inc.84, label %if.then.81, !dbg !1798

if.then.81:                                       ; preds = %for.body.77
  %add.ptr82 = getelementptr %union._gc_head, %union._gc_head* %gc.1457, i64 1, !dbg !1799
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i64 0, metadata !815, metadata !1018) #1, !dbg !1800
  %ob_type.i.402 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.1457, i64 1, i32 0, i32 1, !dbg !1802
  %136 = bitcast %union._gc_head** %ob_type.i.402 to %struct._typeobject**, !dbg !1802
  %137 = load %struct._typeobject*, %struct._typeobject** %136, align 8, !dbg !1802, !tbaa !1157
  %tp_name.i.403 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %137, i64 0, i32 1, !dbg !1803
  %138 = load i8*, i8** %tp_name.i.403, align 8, !dbg !1803, !tbaa !1463
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* %138, %union._gc_head* %add.ptr82) #1, !dbg !1804
  br label %for.inc.84, !dbg !1805

for.inc.84:                                       ; preds = %for.body.77, %if.then.81
  %gc_next86 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.1457, i64 0, i32 0, i32 0, !dbg !1806
  %139 = load %union._gc_head*, %union._gc_head** %gc_next86, align 8, !dbg !1806, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %139, i64 0, metadata !694, metadata !1018), !dbg !1447
  %cmp75 = icmp eq %union._gc_head* %139, %finalizers, !dbg !1790
  br i1 %cmp75, label %for.end.87.loopexit, label %for.body.77, !dbg !1792

for.end.87.loopexit:                              ; preds = %for.inc.84
  %inc78.lcssa = phi i64 [ %inc78, %for.inc.84 ]
  br label %for.end.87, !dbg !1807

for.end.87:                                       ; preds = %for.end.87.loopexit, %if.end.71
  %n.0.lcssa = phi i64 [ 0, %if.end.71 ], [ %inc78.lcssa, %for.end.87.loopexit ]
  %140 = load i32, i32* @debug, align 4, !dbg !1807, !tbaa !1124
  %and88 = and i32 %140, 1, !dbg !1808
  %tobool89 = icmp eq i32 %and88, 0, !dbg !1808
  br i1 %tobool89, label %if.end.105, label %if.then.90, !dbg !1809

if.then.90:                                       ; preds = %for.end.87
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !711, metadata !1018) #1, !dbg !1810
  %141 = load %struct._object*, %struct._object** @tmod, align 8, !dbg !1812, !tbaa !1025
  %cmp.i.404 = icmp eq %struct._object* %141, null, !dbg !1813
  br i1 %cmp.i.404, label %get_time.exit425, label %if.then.i.407, !dbg !1814

if.then.i.407:                                    ; preds = %if.then.90
  %call.i.405 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %141, %struct._Py_Identifier* nonnull @get_time.PyId_time, i8* null) #1, !dbg !1815
  call void @llvm.dbg.value(metadata %struct._object* %call.i.405, i64 0, metadata !712, metadata !1018) #1, !dbg !1816
  %cmp1.i.406 = icmp eq %struct._object* %call.i.405, null, !dbg !1817
  br i1 %cmp1.i.406, label %if.then.2.i.408, label %if.else.i.411, !dbg !1818

if.then.2.i.408:                                  ; preds = %if.then.i.407
  call void @PyErr_Clear() #1, !dbg !1819
  br label %get_time.exit425, !dbg !1820

if.else.i.411:                                    ; preds = %if.then.i.407
  %ob_type.i.409 = getelementptr inbounds %struct._object, %struct._object* %call.i.405, i64 0, i32 1, !dbg !1821
  %142 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.409, align 8, !dbg !1821, !tbaa !1157
  %cmp3.i.410 = icmp eq %struct._typeobject* %142, @PyFloat_Type, !dbg !1821
  br i1 %cmp3.i.410, label %if.then.6.i.416, label %lor.lhs.false.i.414, !dbg !1821

lor.lhs.false.i.414:                              ; preds = %if.else.i.411
  %call5.i.412 = call i32 @PyType_IsSubtype(%struct._typeobject* %142, %struct._typeobject* nonnull @PyFloat_Type) #1, !dbg !1822
  %tobool.i.413 = icmp eq i32 %call5.i.412, 0, !dbg !1822
  br i1 %tobool.i.413, label %do.body.i.421, label %if.then.6.i.416, !dbg !1823

if.then.6.i.416:                                  ; preds = %lor.lhs.false.i.414, %if.else.i.411
  %call7.i.415 = call double @PyFloat_AsDouble(%struct._object* %call.i.405) #1, !dbg !1824
  call void @llvm.dbg.value(metadata double %call7.i.415, i64 0, metadata !711, metadata !1018) #1, !dbg !1810
  br label %do.body.i.421, !dbg !1825

do.body.i.421:                                    ; preds = %if.then.6.i.416, %lor.lhs.false.i.414
  %result.0.i.417 = phi double [ %call7.i.415, %if.then.6.i.416 ], [ 0.000000e+00, %lor.lhs.false.i.414 ], !dbg !1826
  call void @llvm.dbg.value(metadata %struct._object* %call.i.405, i64 0, metadata !715, metadata !1018) #1, !dbg !1827
  %ob_refcnt.i.418 = getelementptr inbounds %struct._object, %struct._object* %call.i.405, i64 0, i32 0, !dbg !1828
  %143 = load i64, i64* %ob_refcnt.i.418, align 8, !dbg !1828, !tbaa !1040
  %dec.i.419 = add i64 %143, -1, !dbg !1828
  store i64 %dec.i.419, i64* %ob_refcnt.i.418, align 8, !dbg !1828, !tbaa !1040
  %cmp8.i.420 = icmp eq i64 %dec.i.419, 0, !dbg !1828
  br i1 %cmp8.i.420, label %if.else.10.i.423, label %get_time.exit425, !dbg !1829

if.else.10.i.423:                                 ; preds = %do.body.i.421
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.409, align 8, !dbg !1830, !tbaa !1157
  %tp_dealloc.i.422 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %144, i64 0, i32 4, !dbg !1830
  %145 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.422, align 8, !dbg !1830, !tbaa !1172
  call void %145(%struct._object* %call.i.405) #1, !dbg !1830
  br label %get_time.exit425, !dbg !1826

get_time.exit425:                                 ; preds = %if.then.90, %if.then.2.i.408, %do.body.i.421, %if.else.10.i.423
  %result.2.i.424 = phi double [ 0.000000e+00, %if.then.90 ], [ 0.000000e+00, %if.then.2.i.408 ], [ %result.0.i.417, %do.body.i.421 ], [ %result.0.i.417, %if.else.10.i.423 ], !dbg !1826
  call void @llvm.dbg.value(metadata double %result.2.i.424, i64 0, metadata !697, metadata !1018), !dbg !1831
  %146 = or i64 %n.0.lcssa, %add66, !dbg !1832
  %147 = icmp eq i64 %146, 0, !dbg !1832
  br i1 %147, label %if.then.96, label %if.else.97, !dbg !1832

if.then.96:                                       ; preds = %get_time.exit425
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0)) #1, !dbg !1834
  br label %if.end.99, !dbg !1834

if.else.97:                                       ; preds = %get_time.exit425
  %add98 = add i64 %n.0.lcssa, %add66, !dbg !1835
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.49, i64 0, i64 0), i64 %add98, i64 %n.0.lcssa) #1, !dbg !1836
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.96
  %tobool100 = fcmp une double %t1.0, 0.000000e+00, !dbg !1837
  %tobool102 = fcmp une double %result.2.i.424, 0.000000e+00, !dbg !1839
  %or.cond134 = and i1 %tobool100, %tobool102, !dbg !1841
  br i1 %or.cond134, label %if.then.103, label %if.end.104, !dbg !1841

if.then.103:                                      ; preds = %if.end.99
  %sub = fsub double %result.2.i.424, %t1.0, !dbg !1842
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), double %sub) #1, !dbg !1844
  br label %if.end.104, !dbg !1845

if.end.104:                                       ; preds = %if.then.103, %if.end.99
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #1, !dbg !1846
  br label %if.end.105, !dbg !1847

if.end.105:                                       ; preds = %for.end.87, %if.end.104
  call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !693, metadata !1018), !dbg !1388
  %148 = load %union._gc_head*, %union._gc_head** %gc_next.i.265, align 8, !dbg !1848, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %148, i64 0, metadata !883, metadata !1018) #1, !dbg !1850
  %149 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1851, !tbaa !1025
  %cmp.i.427 = icmp eq %struct._object* %149, null, !dbg !1853
  br i1 %cmp.i.427, label %if.then.i.429, label %for.cond.preheader.i, !dbg !1854

for.cond.preheader.i:                             ; preds = %if.then.i.429, %if.end.105
  %cmp5.1.i = icmp eq %union._gc_head* %148, %finalizers, !dbg !1855
  br i1 %cmp5.1.i, label %for.end.i.443, label %for.body.i.433.preheader, !dbg !1856

for.body.i.433.preheader:                         ; preds = %for.cond.preheader.i
  br label %for.body.i.433, !dbg !1857

if.then.i.429:                                    ; preds = %if.end.105
  %call.i.428 = call %struct._object* @PyList_New(i64 0) #1, !dbg !1858
  store %struct._object* %call.i.428, %struct._object** @garbage, align 8, !dbg !1860, !tbaa !1025
  %cmp2.i = icmp eq %struct._object* %call.i.428, null, !dbg !1861
  br i1 %cmp2.i, label %if.then.3.i, label %for.cond.preheader.i, !dbg !1863

if.then.3.i:                                      ; preds = %if.then.i.429
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !1864
  unreachable, !dbg !1864

for.body.i.433:                                   ; preds = %for.body.i.433.preheader, %for.inc.critedge.i
  %gc.02.i = phi %union._gc_head* [ %154, %for.inc.critedge.i ], [ %148, %for.body.i.433.preheader ], !dbg !1865
  %add.ptr.i.430 = getelementptr %union._gc_head, %union._gc_head* %gc.02.i, i64 1, !dbg !1857
  %150 = bitcast %union._gc_head* %add.ptr.i.430 to %struct._object*, !dbg !1857
  call void @llvm.dbg.value(metadata %struct._object* %150, i64 0, metadata !884, metadata !1018) #1, !dbg !1866
  %151 = load i32, i32* @debug, align 4, !dbg !1867, !tbaa !1124
  %and.i.431 = and i32 %151, 32, !dbg !1869
  %tobool.i.432 = icmp eq i32 %and.i.431, 0, !dbg !1869
  br i1 %tobool.i.432, label %lor.lhs.false.i.439, label %if.then.8.i, !dbg !1870

lor.lhs.false.i.439:                              ; preds = %for.body.i.433
  %.idx.i.434 = getelementptr %union._gc_head, %union._gc_head* %gc.02.i, i64 1, i32 0, i32 1, !dbg !1865
  %152 = bitcast %union._gc_head** %.idx.i.434 to %struct._typeobject**, !dbg !1865
  %.idx.val.i.435 = load %struct._typeobject*, %struct._typeobject** %152, align 8, !dbg !1865, !tbaa !1157
  %.idx.val.idx.i.436 = getelementptr %struct._typeobject, %struct._typeobject* %.idx.val.i.435, i64 0, i32 45, !dbg !1865
  %.idx.val.idx.val.i.437 = load void (%struct._object*)*, void (%struct._object*)** %.idx.val.idx.i.436, align 8, !dbg !1865, !tbaa !1405
  %cmp.i.i.438 = icmp eq void (%struct._object*)* %.idx.val.idx.val.i.437, null, !dbg !1871
  br i1 %cmp.i.i.438, label %for.inc.critedge.i, label %if.then.8.i, !dbg !1873

if.then.8.i:                                      ; preds = %lor.lhs.false.i.439, %for.body.i.433
  %153 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1874, !tbaa !1025
  %call9.i = call i32 @PyList_Append(%struct._object* %153, %struct._object* %150) #1, !dbg !1877
  %cmp10.i.440 = icmp slt i32 %call9.i, 0, !dbg !1878
  br i1 %cmp10.i.440, label %handle_legacy_finalizers.exit.loopexit, label %for.inc.critedge.i, !dbg !1879

for.inc.critedge.i:                               ; preds = %if.then.8.i, %lor.lhs.false.i.439
  %gc_next15.i.441 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.02.i, i64 0, i32 0, i32 0, !dbg !1880
  %154 = load %union._gc_head*, %union._gc_head** %gc_next15.i.441, align 8, !dbg !1880, !tbaa !1211
  call void @llvm.dbg.value(metadata %union._gc_head* %154, i64 0, metadata !883, metadata !1018) #1, !dbg !1850
  %cmp5.i = icmp eq %union._gc_head* %154, %finalizers, !dbg !1855
  br i1 %cmp5.i, label %for.end.i.443.loopexit, label %for.body.i.433, !dbg !1856

for.end.i.443.loopexit:                           ; preds = %for.inc.critedge.i
  br label %for.end.i.443, !dbg !1881

for.end.i.443:                                    ; preds = %for.end.i.443.loopexit, %for.cond.preheader.i
  call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !723, metadata !1018) #1, !dbg !1881
  call void @llvm.dbg.value(metadata %union._gc_head* %old.0, i64 0, metadata !724, metadata !1018) #1, !dbg !1883
  call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !730, metadata !1018) #1, !dbg !1884
  %155 = load %union._gc_head*, %union._gc_head** %gc_next.i.265, align 8, !dbg !1886, !tbaa !1211
  %cmp.i.i.i.442 = icmp eq %union._gc_head* %155, %finalizers, !dbg !1887
  br i1 %cmp.i.i.i.442, label %gc_list_merge.exit.i, label %if.then.i.i.448, !dbg !1888

if.then.i.i.448:                                  ; preds = %for.end.i.443
  %gc_prev.i.i.444 = getelementptr inbounds %union._gc_head, %union._gc_head* %old.0, i64 0, i32 0, i32 1, !dbg !1889
  %156 = load %union._gc_head*, %union._gc_head** %gc_prev.i.i.444, align 8, !dbg !1889, !tbaa !1217
  call void @llvm.dbg.value(metadata %union._gc_head* %156, i64 0, metadata !725, metadata !1018) #1, !dbg !1890
  %gc_next3.i.i.445 = getelementptr inbounds %union._gc_head, %union._gc_head* %156, i64 0, i32 0, i32 0, !dbg !1891
  store %union._gc_head* %155, %union._gc_head** %gc_next3.i.i.445, align 8, !dbg !1892, !tbaa !1211
  %gc_prev7.i.i.446 = getelementptr inbounds %union._gc_head, %union._gc_head* %155, i64 0, i32 0, i32 1, !dbg !1893
  store %union._gc_head* %156, %union._gc_head** %gc_prev7.i.i.446, align 8, !dbg !1894, !tbaa !1217
  %157 = load %union._gc_head*, %union._gc_head** %gc_prev.i.264, align 8, !dbg !1895, !tbaa !1217
  store %union._gc_head* %157, %union._gc_head** %gc_prev.i.i.444, align 8, !dbg !1896, !tbaa !1217
  %gc_next15.i.i.447 = getelementptr inbounds %union._gc_head, %union._gc_head* %157, i64 0, i32 0, i32 0, !dbg !1897
  store %union._gc_head* %old.0, %union._gc_head** %gc_next15.i.i.447, align 8, !dbg !1898, !tbaa !1211
  br label %gc_list_merge.exit.i, !dbg !1899

gc_list_merge.exit.i:                             ; preds = %for.end.i.443, %if.then.i.i.448
  call void @llvm.dbg.value(metadata %union._gc_head* %finalizers, i64 0, metadata !749, metadata !1018) #1, !dbg !1900
  store %union._gc_head* %finalizers, %union._gc_head** %gc_prev.i.264, align 8, !dbg !1902, !tbaa !1217
  store %union._gc_head* %finalizers, %union._gc_head** %gc_next.i.265, align 8, !dbg !1903, !tbaa !1211
  br label %handle_legacy_finalizers.exit, !dbg !1904

handle_legacy_finalizers.exit.loopexit:           ; preds = %if.then.8.i
  br label %handle_legacy_finalizers.exit, !dbg !1905

handle_legacy_finalizers.exit:                    ; preds = %handle_legacy_finalizers.exit.loopexit, %gc_list_merge.exit.i
  %cmp107 = icmp eq i32 %generation, 2, !dbg !1905
  br i1 %cmp107, label %if.then.109, label %if.end.110, !dbg !1907

if.then.109:                                      ; preds = %handle_legacy_finalizers.exit
  %call.i = call i32 @PyMethod_ClearFreeList() #1, !dbg !1908
  %call1.i = call i32 @PyFrame_ClearFreeList() #1, !dbg !1911
  %call2.i = call i32 @PyCFunction_ClearFreeList() #1, !dbg !1912
  %call3.i = call i32 @PyTuple_ClearFreeList() #1, !dbg !1913
  %call4.i = call i32 @PyUnicode_ClearFreeList() #1, !dbg !1914
  %call5.i = call i32 @PyFloat_ClearFreeList() #1, !dbg !1915
  %call6.i = call i32 @PyList_ClearFreeList() #1, !dbg !1916
  %call7.i = call i32 @PyDict_ClearFreeList() #1, !dbg !1917
  %call8.i = call i32 @PySet_ClearFreeList() #1, !dbg !1918
  br label %if.end.110, !dbg !1919

if.end.110:                                       ; preds = %if.then.109, %handle_legacy_finalizers.exit
  %call111 = call %struct._object* @PyErr_Occurred() #1, !dbg !1920
  %tobool112 = icmp eq %struct._object* %call111, null, !dbg !1920
  br i1 %tobool112, label %if.end.123, label %if.then.113, !dbg !1922

if.then.113:                                      ; preds = %if.end.110
  %tobool114 = icmp eq i32 %nofail, 0, !dbg !1923
  br i1 %tobool114, label %if.else.116, label %if.then.115, !dbg !1926

if.then.115:                                      ; preds = %if.then.113
  call void @PyErr_Clear() #1, !dbg !1927
  br label %if.end.123, !dbg !1929

if.else.116:                                      ; preds = %if.then.113
  %158 = load %struct._object*, %struct._object** @gc_str, align 8, !dbg !1930, !tbaa !1025
  %cmp117 = icmp eq %struct._object* %158, null, !dbg !1933
  br i1 %cmp117, label %if.then.119, label %if.end.121, !dbg !1934

if.then.119:                                      ; preds = %if.else.116
  %call120 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0)) #1, !dbg !1935
  store %struct._object* %call120, %struct._object** @gc_str, align 8, !dbg !1936, !tbaa !1025
  br label %if.end.121, !dbg !1937

if.end.121:                                       ; preds = %if.then.119, %if.else.116
  %159 = phi %struct._object* [ %call120, %if.then.119 ], [ %158, %if.else.116 ], !dbg !1938
  call void @PyErr_WriteUnraisable(%struct._object* %159) #1, !dbg !1939
  call void @Py_FatalError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.53, i64 0, i64 0)) #6, !dbg !1940
  unreachable, !dbg !1940

if.end.123:                                       ; preds = %if.end.110, %if.then.115
  %tobool124 = icmp eq i64* %n_collected, null, !dbg !1941
  br i1 %tobool124, label %if.end.126, label %if.then.125, !dbg !1943

if.then.125:                                      ; preds = %if.end.123
  store i64 %add66, i64* %n_collected, align 8, !dbg !1944, !tbaa !1100
  br label %if.end.126, !dbg !1945

if.end.126:                                       ; preds = %if.end.123, %if.then.125
  %tobool127 = icmp eq i64* %n_uncollectable, null, !dbg !1946
  br i1 %tobool127, label %if.end.129, label %if.then.128, !dbg !1948

if.then.128:                                      ; preds = %if.end.126
  store i64 %n.0.lcssa, i64* %n_uncollectable, align 8, !dbg !1949, !tbaa !1100
  br label %if.end.129, !dbg !1950

if.end.129:                                       ; preds = %if.end.126, %if.then.128
  %collections = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* @generation_stats, i64 0, i64 %idxprom, i32 0, !dbg !1951
  %160 = bitcast i64* %collections to <2 x i64>*, !dbg !1952
  %161 = load <2 x i64>, <2 x i64>* %160, align 8, !dbg !1952, !tbaa !1100
  %162 = insertelement <2 x i64> <i64 1, i64 undef>, i64 %add66, i32 1, !dbg !1952
  %163 = add <2 x i64> %161, %162, !dbg !1952
  %164 = bitcast i64* %collections to <2 x i64>*, !dbg !1952
  store <2 x i64> %163, <2 x i64>* %164, align 8, !dbg !1952, !tbaa !1100
  %uncollectable = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* @generation_stats, i64 0, i64 %idxprom, i32 2, !dbg !1953
  %165 = load i64, i64* %uncollectable, align 8, !dbg !1954, !tbaa !1955
  %add132 = add i64 %165, %n.0.lcssa, !dbg !1954
  store i64 %add132, i64* %uncollectable, align 8, !dbg !1954, !tbaa !1955
  %add133 = add i64 %n.0.lcssa, %add66, !dbg !1957
  call void @llvm.lifetime.end(i64 24, i8* %1) #1, !dbg !1958
  call void @llvm.lifetime.end(i64 24, i8* %0) #1, !dbg !1958
  ret i64 %add133, !dbg !1959

for.cond.i.1:                                     ; preds = %for.cond.i.1, %gc_list_size.exit
  %list.pn.i.1 = phi %union._gc_head* [ getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 0), %gc_list_size.exit ], [ %gc.0.i.1, %for.cond.i.1 ], !dbg !1139
  %n.0.i.1 = phi i64 [ 0, %gc_list_size.exit ], [ %inc.i.1, %for.cond.i.1 ], !dbg !1139
  %gc.0.in.i.1 = getelementptr inbounds %union._gc_head, %union._gc_head* %list.pn.i.1, i64 0, i32 0, i32 0, !dbg !1140
  %gc.0.i.1 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.1, align 8, !dbg !1140
  %cmp.i.1 = icmp eq %union._gc_head* %gc.0.i.1, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 0), !dbg !1141
  %inc.i.1 = add i64 %n.0.i.1, 1, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !706, metadata !1018), !dbg !1136
  br i1 %cmp.i.1, label %gc_list_size.exit.1, label %for.cond.i.1, !dbg !1145

gc_list_size.exit.1:                              ; preds = %for.cond.i.1
  %n.0.i.1.lcssa = phi i64 [ %n.0.i.1, %for.cond.i.1 ]
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i64 %n.0.i.1.lcssa) #1, !dbg !1146
  tail call void @llvm.dbg.value(metadata %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), i64 0, metadata !704, metadata !1018), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !706, metadata !1018), !dbg !1136
  br label %for.cond.i.2, !dbg !1137

for.cond.i.2:                                     ; preds = %for.cond.i.2, %gc_list_size.exit.1
  %list.pn.i.2 = phi %union._gc_head* [ getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 0), %gc_list_size.exit.1 ], [ %gc.0.i.2, %for.cond.i.2 ], !dbg !1139
  %n.0.i.2 = phi i64 [ 0, %gc_list_size.exit.1 ], [ %inc.i.2, %for.cond.i.2 ], !dbg !1139
  %gc.0.in.i.2 = getelementptr inbounds %union._gc_head, %union._gc_head* %list.pn.i.2, i64 0, i32 0, i32 0, !dbg !1140
  %gc.0.i.2 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.2, align 8, !dbg !1140
  %cmp.i.2 = icmp eq %union._gc_head* %gc.0.i.2, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 0), !dbg !1141
  %inc.i.2 = add i64 %n.0.i.2, 1, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !706, metadata !1018), !dbg !1136
  br i1 %cmp.i.2, label %gc_list_size.exit.2, label %for.cond.i.2, !dbg !1145

gc_list_size.exit.2:                              ; preds = %for.cond.i.2
  %n.0.i.2.lcssa = phi i64 [ %n.0.i.2, %for.cond.i.2 ]
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i64 %n.0.i.2.lcssa) #1, !dbg !1146
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !711, metadata !1018) #1, !dbg !1162
  %166 = load %struct._object*, %struct._object** @tmod, align 8, !dbg !1960, !tbaa !1025
  %cmp.i.199 = icmp eq %struct._object* %166, null, !dbg !1961
  br i1 %cmp.i.199, label %get_time.exit, label %if.then.i, !dbg !1962
}

; Function Attrs: nounwind uwtable
define void @_PyGC_DumpShutdownStats() #0 {
entry:
  %0 = load i32, i32* @debug, align 4, !dbg !1963, !tbaa !1124
  %and = and i32 %0, 32, !dbg !1964
  %tobool = icmp eq i32 %and, 0, !dbg !1964
  %1 = load %struct._object*, %struct._object** @garbage, align 8
  %cmp = icmp ne %struct._object* %1, null, !dbg !1965
  %or.cond = and i1 %tobool, %cmp, !dbg !1966
  br i1 %or.cond, label %land.lhs.true.1, label %if.end.50, !dbg !1966

land.lhs.true.1:                                  ; preds = %entry
  %2 = getelementptr inbounds %struct._object, %struct._object* %1, i64 1, i32 0, !dbg !1967
  %3 = load i64, i64* %2, align 8, !dbg !1967, !tbaa !1969
  %cmp2 = icmp sgt i64 %3, 0, !dbg !1970
  br i1 %cmp2, label %if.then, label %if.end.50, !dbg !1971

if.then:                                          ; preds = %land.lhs.true.1
  %and3 = and i32 %0, 4, !dbg !1972
  %tobool4 = icmp eq i32 %and3, 0, !dbg !1972
  %. = select i1 %tobool4, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0)
  %4 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8, !dbg !1974, !tbaa !1025
  %5 = getelementptr inbounds %struct._object, %struct._object* %1, i64 1, i32 0, !dbg !1976
  %6 = load i64, i64* %5, align 8, !dbg !1976, !tbaa !1969
  %call = tail call i32 (%struct._object*, i8*, i32, i8*, %struct._object*, i8*, ...) @PyErr_WarnExplicitFormat(%struct._object* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct._object* null, i8* %., i64 %6) #1, !dbg !1977
  %tobool7 = icmp eq i32 %call, 0, !dbg !1977
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !1978

if.then.8:                                        ; preds = %if.then
  tail call void @PyErr_WriteUnraisable(%struct._object* null) #1, !dbg !1979
  br label %if.end.9, !dbg !1979

if.end.9:                                         ; preds = %if.then, %if.then.8
  %7 = load i32, i32* @debug, align 4, !dbg !1980, !tbaa !1124
  %and10 = and i32 %7, 4, !dbg !1981
  %tobool11 = icmp eq i32 %and10, 0, !dbg !1981
  br i1 %tobool11, label %if.end.50, label %if.then.12, !dbg !1982

if.then.12:                                       ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !416, metadata !1018), !dbg !1983
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !419, metadata !1018), !dbg !1984
  %8 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1985, !tbaa !1025
  %call13 = tail call %struct._object* @PyObject_Repr(%struct._object* %8) #1, !dbg !1986
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !416, metadata !1018), !dbg !1983
  %tobool14 = icmp eq %struct._object* %call13, null, !dbg !1987
  br i1 %tobool14, label %if.end.27.thread, label %lor.lhs.false, !dbg !1989

lor.lhs.false:                                    ; preds = %if.then.12
  %call15 = tail call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %call13) #1, !dbg !1990
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !419, metadata !1018), !dbg !1984
  %tobool16 = icmp eq %struct._object* %call15, null, !dbg !1991
  br i1 %tobool16, label %do.body.thread69, label %do.body.thread, !dbg !1992

do.body.thread69:                                 ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1993, !tbaa !1025
  tail call void @PyErr_WriteUnraisable(%struct._object* %9) #1, !dbg !1994
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !420, metadata !1018), !dbg !1995
  br label %do.body.22, !dbg !1997

do.body.thread:                                   ; preds = %lor.lhs.false
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %call15, i64 2, !dbg !1998
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %struct._object* %ob_sval) #1, !dbg !2000
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !420, metadata !1018), !dbg !1995
  br label %do.body.22, !dbg !1997

if.end.27.thread:                                 ; preds = %if.then.12
  %10 = load %struct._object*, %struct._object** @garbage, align 8, !dbg !1993, !tbaa !1025
  tail call void @PyErr_WriteUnraisable(%struct._object* %10) #1, !dbg !1994
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !420, metadata !1018), !dbg !1995
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !1018), !dbg !2001
  br label %if.end.50, !dbg !2003

do.body.22:                                       ; preds = %do.body.thread69, %do.body.thread
  %bytes.168 = phi %struct._object* [ %call15, %do.body.thread ], [ null, %do.body.thread69 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !422, metadata !1018), !dbg !2004
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call13, i64 0, i32 0, !dbg !2006
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !2006, !tbaa !1040
  %dec = add i64 %11, -1, !dbg !2006
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2006, !tbaa !1040
  %cmp23 = icmp eq i64 %dec, 0, !dbg !2006
  br i1 %cmp23, label %if.else.25, label %if.end.27, !dbg !2008

if.else.25:                                       ; preds = %do.body.22
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call13, i64 0, i32 1, !dbg !2009
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2009, !tbaa !1157
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !2009
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2009, !tbaa !1172
  tail call void %13(%struct._object* %call13) #1, !dbg !2009
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %do.body.22
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !1018), !dbg !2001
  %cmp32 = icmp eq %struct._object* %bytes.168, null, !dbg !2011
  br i1 %cmp32, label %if.end.50, label %do.body.34, !dbg !2003

do.body.34:                                       ; preds = %if.end.27
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !427, metadata !1018), !dbg !2012
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %bytes.168, i64 0, i32 0, !dbg !2014
  %14 = load i64, i64* %ob_refcnt36, align 8, !dbg !2014, !tbaa !1040
  %dec37 = add i64 %14, -1, !dbg !2014
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !2014, !tbaa !1040
  %cmp38 = icmp eq i64 %dec37, 0, !dbg !2014
  br i1 %cmp38, label %if.else.40, label %if.end.50, !dbg !2016

if.else.40:                                       ; preds = %do.body.34
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %bytes.168, i64 0, i32 1, !dbg !2017
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2017, !tbaa !1157
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !2017
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !2017, !tbaa !1172
  tail call void %16(%struct._object* %bytes.168) #1, !dbg !2017
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.27.thread, %if.end.9, %if.else.40, %do.body.34, %if.end.27, %entry, %land.lhs.true.1
  ret void, !dbg !2019
}

declare i32 @PyErr_WarnExplicitFormat(%struct._object*, i8*, i32, i8*, %struct._object*, i8*, ...) #3

declare void @PyErr_WriteUnraisable(%struct._object*) #3

declare %struct._object* @PyObject_Repr(%struct._object*) #3

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #3

declare void @PySys_WriteStderr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @_PyGC_Fini() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !2020, !tbaa !1025
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !432, metadata !1018), !dbg !2020
  %cmp = icmp eq %struct._object* %0, null, !dbg !2022
  br i1 %cmp, label %if.end.4, label %if.then, !dbg !2023

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** @callbacks, align 8, !dbg !2024, !tbaa !1025
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !434, metadata !1018), !dbg !2026
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !2028
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2028, !tbaa !1040
  %dec = add i64 %1, -1, !dbg !2028
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2028, !tbaa !1040
  %cmp2 = icmp eq i64 %dec, 0, !dbg !2028
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !2030

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !2031
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2031, !tbaa !1157
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2031
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2031, !tbaa !1172
  tail call void %3(%struct._object* %0) #1, !dbg !2031
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then, %entry
  %4 = load %struct._object*, %struct._object** @tmod, align 8, !dbg !2033, !tbaa !1025
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !438, metadata !1018), !dbg !2033
  %cmp9 = icmp eq %struct._object* %4, null, !dbg !2035
  br i1 %cmp9, label %if.end.23, label %if.then.10, !dbg !2036

if.then.10:                                       ; preds = %if.end.4
  store %struct._object* null, %struct._object** @tmod, align 8, !dbg !2037, !tbaa !1025
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !440, metadata !1018), !dbg !2039
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !2041
  %5 = load i64, i64* %ob_refcnt13, align 8, !dbg !2041, !tbaa !1040
  %dec14 = add i64 %5, -1, !dbg !2041
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !2041, !tbaa !1040
  %cmp15 = icmp eq i64 %dec14, 0, !dbg !2041
  br i1 %cmp15, label %if.else.17, label %if.end.23, !dbg !2043

if.else.17:                                       ; preds = %if.then.10
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !2044
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !2044, !tbaa !1157
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2044
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !2044, !tbaa !1172
  tail call void %7(%struct._object* %4) #1, !dbg !2044
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.17, %if.then.10, %if.end.4
  ret void, !dbg !2046
}

; Function Attrs: nounwind uwtable
define void @_PyGC_Dump(%union._gc_head* %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %union._gc_head* %g, i64 0, metadata !448, metadata !1018), !dbg !2047
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %g, i64 1, !dbg !2048
  %0 = bitcast %union._gc_head* %add.ptr to %struct._object*, !dbg !2048
  tail call void @_PyObject_Dump(%struct._object* %0) #1, !dbg !2049
  ret void, !dbg !2050
}

declare void @_PyObject_Dump(%struct._object*) #3

; Function Attrs: nounwind uwtable
define void @PyObject_GC_Track(i8* %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %op, i64 0, metadata !451, metadata !1018), !dbg !2051
  %add.ptr = getelementptr i8, i8* %op, i64 -24, !dbg !2052
  %gc_refs = getelementptr inbounds i8, i8* %op, i64 -8, !dbg !2054
  %0 = bitcast i8* %gc_refs to i64*, !dbg !2054
  %1 = load i64, i64* %0, align 8, !dbg !2054, !tbaa !1249
  %shr.mask = and i64 %1, -2, !dbg !2054
  %cmp = icmp eq i64 %shr.mask, -4, !dbg !2054
  br i1 %cmp, label %do.body.1, label %if.then, !dbg !2056

if.then:                                          ; preds = %entry
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2057
  unreachable, !dbg !2057

do.body.1:                                        ; preds = %entry
  %and = and i64 %1, 1, !dbg !2059
  %or = or i64 %and, -6, !dbg !2059
  store i64 %or, i64* %0, align 8, !dbg !2059, !tbaa !1249
  %2 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !2062, !tbaa !1025
  %3 = bitcast i8* %add.ptr to i64*, !dbg !2062
  store i64 %2, i64* %3, align 8, !dbg !2062, !tbaa !1211
  %4 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2062, !tbaa !1025
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 1, !dbg !2062
  %5 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2062, !tbaa !1217
  %gc_prev9 = getelementptr inbounds i8, i8* %op, i64 -16, !dbg !2062
  %6 = bitcast i8* %gc_prev9 to %union._gc_head**, !dbg !2062
  store %union._gc_head* %5, %union._gc_head** %6, align 8, !dbg !2062, !tbaa !1217
  %7 = bitcast %union._gc_head* %5 to i8**, !dbg !2062
  store i8* %add.ptr, i8** %7, align 8, !dbg !2062, !tbaa !1211
  %8 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2062, !tbaa !1025
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !2062
  %9 = bitcast %union._gc_head** %gc_prev15 to i8**, !dbg !2062
  store i8* %add.ptr, i8** %9, align 8, !dbg !2062, !tbaa !1217
  ret void, !dbg !2064
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind uwtable
define void @PyObject_GC_UnTrack(i8* nocapture %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %op, i64 0, metadata !456, metadata !1018), !dbg !2065
  %add.ptr = getelementptr i8, i8* %op, i64 -24, !dbg !2066
  %gc_refs = getelementptr inbounds i8, i8* %op, i64 -8, !dbg !2066
  %0 = bitcast i8* %gc_refs to i64*, !dbg !2066
  %1 = load i64, i64* %0, align 8, !dbg !2066, !tbaa !1249
  %shr.mask = and i64 %1, -2, !dbg !2066
  %cmp = icmp eq i64 %shr.mask, -4, !dbg !2066
  br i1 %cmp, label %if.end, label %do.body, !dbg !2067

do.body:                                          ; preds = %entry
  %and = and i64 %1, 1, !dbg !2068
  %or = or i64 %and, -4, !dbg !2068
  store i64 %or, i64* %0, align 8, !dbg !2068, !tbaa !1249
  %gc_next = bitcast i8* %add.ptr to %union._gc_head**, !dbg !2071
  %2 = bitcast i8* %add.ptr to i64*, !dbg !2071
  %3 = load i64, i64* %2, align 8, !dbg !2071, !tbaa !1211
  %gc_prev = getelementptr inbounds i8, i8* %op, i64 -16, !dbg !2071
  %4 = bitcast i8* %gc_prev to i64**, !dbg !2071
  %5 = load i64*, i64** %4, align 8, !dbg !2071, !tbaa !1217
  store i64 %3, i64* %5, align 8, !dbg !2071, !tbaa !1211
  %6 = ptrtoint i64* %5 to i64, !dbg !2071
  %7 = bitcast i8* %add.ptr to %struct.anon**, !dbg !2071
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !2071, !tbaa !1211
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !2071
  %9 = bitcast %union._gc_head** %gc_prev16 to i64*, !dbg !2071
  store i64 %6, i64* %9, align 8, !dbg !2071, !tbaa !1217
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !2071, !tbaa !1211
  br label %if.end, !dbg !2073

if.end:                                           ; preds = %entry, %do.body
  ret void, !dbg !2075
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_GC_Malloc(i64 %basicsize) #0 {
entry:
  %collected.i.i = alloca i64, align 8
  %uncollectable.i.i = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i64 %basicsize, i64 0, metadata !464, metadata !1018), !dbg !2076
  %cmp = icmp ugt i64 %basicsize, 9223372036854775783, !dbg !2077
  br i1 %cmp, label %if.then, label %if.end, !dbg !2079

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2080
  br label %cleanup, !dbg !2081

if.end:                                           ; preds = %entry
  %add = add i64 %basicsize, 24, !dbg !2082
  %call1 = tail call i8* @PyObject_Malloc(i64 %add) #1, !dbg !2083
  %cmp2 = icmp eq i8* %call1, null, !dbg !2084
  br i1 %cmp2, label %if.then.3, label %if.end.5, !dbg !2086

if.then.3:                                        ; preds = %if.end
  %call4 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2087
  br label %cleanup, !dbg !2088

if.end.5:                                         ; preds = %if.end
  %gc_refs = getelementptr inbounds i8, i8* %call1, i64 16, !dbg !2089
  %0 = bitcast i8* %gc_refs to i64*, !dbg !2089
  store i64 -4, i64* %0, align 8, !dbg !2090, !tbaa !1249
  %1 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 2), align 4, !dbg !2093, !tbaa !1184
  %inc = add i32 %1, 1, !dbg !2093
  store i32 %inc, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 2), align 4, !dbg !2093, !tbaa !1184
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 1), align 8, !dbg !2094, !tbaa !2096
  %cmp10 = icmp sgt i32 %inc, %2, !dbg !2097
  %.b31 = load i1, i1* @enabled, align 1
  %tobool = xor i1 %.b31, true, !dbg !2098
  %or.cond = and i1 %cmp10, %tobool, !dbg !2099
  %tobool12 = icmp ne i32 %2, 0, !dbg !2100
  %or.cond22 = and i1 %tobool12, %or.cond, !dbg !2099
  %or.cond22.not = xor i1 %or.cond22, true, !dbg !2099
  %.b = load i1, i1* @collecting, align 1
  %or.cond23 = or i1 %.b, %or.cond22.not, !dbg !2099
  br i1 %or.cond23, label %if.end.20, label %land.lhs.true.15, !dbg !2099

land.lhs.true.15:                                 ; preds = %if.end.5
  %call16 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !2101
  %tobool17 = icmp eq %struct._object* %call16, null, !dbg !2101
  br i1 %tobool17, label %if.then.18, label %if.end.20, !dbg !2102

if.then.18:                                       ; preds = %land.lhs.true.15
  store i1 true, i1* @collecting, align 1
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !892, metadata !1018) #1, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !891, metadata !1018) #1, !dbg !2106
  %3 = load i64, i64* @long_lived_pending, align 8, !dbg !2107, !tbaa !1100
  %4 = load i64, i64* @long_lived_total, align 8, !dbg !2115, !tbaa !1100
  %div.i = sdiv i64 %4, 4, !dbg !2116
  %cmp5.i = icmp slt i64 %3, %div.i, !dbg !2117
  br i1 %cmp5.i, label %for.inc.us.i, label %entry.entry.split_crit_edge.i, !dbg !2118

entry.entry.split_crit_edge.i:                    ; preds = %if.then.18
  %5 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 2), align 4, !dbg !2119, !tbaa !1184
  %6 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 1), align 8, !dbg !2120, !tbaa !2096
  %cmp3.i = icmp sgt i32 %5, %6, !dbg !2121
  br i1 %cmp3.i, label %if.end.i, label %for.inc.i, !dbg !2122

for.inc.us.i:                                     ; preds = %if.then.18
  %7 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 2), align 4, !dbg !2119, !tbaa !1184
  %8 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 1), align 8, !dbg !2120, !tbaa !2096
  %cmp3.us.1.i = icmp sgt i32 %7, %8, !dbg !2121
  br i1 %cmp3.us.1.i, label %if.end.i, label %for.inc.us.1.i, !dbg !2122

if.end.i:                                         ; preds = %for.inc.us.1.i, %for.inc.1.i, %for.inc.i, %for.inc.us.i, %entry.entry.split_crit_edge.i
  %i.0.lcssa1.i = phi i32 [ 2, %entry.entry.split_crit_edge.i ], [ 1, %for.inc.i ], [ 0, %for.inc.1.i ], [ 1, %for.inc.us.i ], [ 0, %for.inc.us.1.i ], !dbg !2123
  %9 = bitcast i64* %collected.i.i to i8*, !dbg !2124
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !2124
  %10 = bitcast i64* %uncollectable.i.i to i8*, !dbg !2124
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2124
  tail call fastcc void @invoke_gc_callback(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 %i.0.lcssa1.i, i64 0, i64 0) #1, !dbg !2126
  tail call void @llvm.dbg.value(metadata i64* %collected.i.i, i64 0, metadata !650, metadata !1018) #1, !dbg !2127
  tail call void @llvm.dbg.value(metadata i64* %uncollectable.i.i, i64 0, metadata !651, metadata !1018) #1, !dbg !2128
  %call.i.i = call fastcc i64 @collect(i32 %i.0.lcssa1.i, i64* nonnull %collected.i.i, i64* nonnull %uncollectable.i.i, i32 0) #1, !dbg !2129
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !649, metadata !1018) #1, !dbg !2130
  call void @llvm.dbg.value(metadata i64* %collected.i.i, i64 0, metadata !650, metadata !1018) #1, !dbg !2127
  %11 = load i64, i64* %collected.i.i, align 8, !dbg !2131, !tbaa !1100
  call void @llvm.dbg.value(metadata i64* %uncollectable.i.i, i64 0, metadata !651, metadata !1018) #1, !dbg !2128
  %12 = load i64, i64* %uncollectable.i.i, align 8, !dbg !2132, !tbaa !1100
  call fastcc void @invoke_gc_callback(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 %i.0.lcssa1.i, i64 %11, i64 %12) #1, !dbg !2133
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !2134
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !2134
  br label %collect_generations.exit, !dbg !2135

for.inc.i:                                        ; preds = %entry.entry.split_crit_edge.i
  %13 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 2), align 4, !dbg !2119, !tbaa !1184
  %14 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 1), align 8, !dbg !2120, !tbaa !2096
  %cmp3.1.i = icmp sgt i32 %13, %14, !dbg !2121
  br i1 %cmp3.1.i, label %if.end.i, label %for.inc.1.i, !dbg !2122

for.inc.1.i:                                      ; preds = %for.inc.i
  %15 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 2), align 4, !dbg !2119, !tbaa !1184
  %16 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 1), align 8, !dbg !2120, !tbaa !2096
  %cmp3.2.i = icmp sgt i32 %15, %16, !dbg !2121
  br i1 %cmp3.2.i, label %if.end.i, label %collect_generations.exit, !dbg !2122

for.inc.us.1.i:                                   ; preds = %for.inc.us.i
  %17 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 2), align 4, !dbg !2119, !tbaa !1184
  %18 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 1), align 8, !dbg !2120, !tbaa !2096
  %cmp3.us.2.i = icmp sgt i32 %17, %18, !dbg !2121
  br i1 %cmp3.us.2.i, label %if.end.i, label %collect_generations.exit, !dbg !2122

collect_generations.exit:                         ; preds = %if.end.i, %for.inc.1.i, %for.inc.us.1.i
  store i1 false, i1* @collecting, align 1
  br label %if.end.20, !dbg !2136

if.end.20:                                        ; preds = %land.lhs.true.15, %if.end.5, %collect_generations.exit
  %add.ptr = getelementptr i8, i8* %call1, i64 24, !dbg !2137
  %19 = bitcast i8* %add.ptr to %struct._object*, !dbg !2137
  call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !465, metadata !1018), !dbg !2138
  br label %cleanup, !dbg !2139

cleanup:                                          ; preds = %if.end.20, %if.then.3, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ %call4, %if.then.3 ], [ %19, %if.end.20 ]
  ret %struct._object* %retval.0, !dbg !2140
}

declare %struct._object* @PyErr_NoMemory() #3

declare i8* @PyObject_Malloc(i64) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_GC_New(%struct._typeobject* %tp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %tp, i64 0, metadata !473, metadata !1018), !dbg !2141
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %tp, i64 0, i32 2, !dbg !2142
  %0 = load i64, i64* %tp_basicsize, align 8, !dbg !2142, !tbaa !2143
  %call = tail call %struct._object* @_PyObject_GC_Malloc(i64 %0), !dbg !2144
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !474, metadata !1018), !dbg !2145
  %cmp = icmp eq %struct._object* %call, null, !dbg !2146
  br i1 %cmp, label %if.end, label %if.then, !dbg !2148

if.then:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2149
  store %struct._typeobject* %tp, %struct._typeobject** %ob_type, align 8, !dbg !2149, !tbaa !1157
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2149
  store i64 1, i64* %ob_refcnt, align 8, !dbg !2149, !tbaa !1040
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !474, metadata !1018), !dbg !2145
  br label %if.end, !dbg !2150

if.end:                                           ; preds = %entry, %if.then
  ret %struct._object* %call, !dbg !2151
}

; Function Attrs: nounwind uwtable
define %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* %tp, i64 %nitems) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %tp, i64 0, metadata !479, metadata !1018), !dbg !2152
  tail call void @llvm.dbg.value(metadata i64 %nitems, i64 0, metadata !480, metadata !1018), !dbg !2153
  %cmp = icmp slt i64 %nitems, 0, !dbg !2154
  br i1 %cmp, label %if.then, label %if.end, !dbg !2156

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 1761) #1, !dbg !2157
  br label %cleanup, !dbg !2159

if.end:                                           ; preds = %entry
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %tp, i64 0, i32 2, !dbg !2160
  %0 = load i64, i64* %tp_basicsize, align 8, !dbg !2160, !tbaa !2143
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %tp, i64 0, i32 3, !dbg !2160
  %1 = load i64, i64* %tp_itemsize, align 8, !dbg !2160, !tbaa !2161
  %mul = mul i64 %1, %nitems, !dbg !2160
  %add = add i64 %0, 7, !dbg !2160
  %add1 = add i64 %add, %mul, !dbg !2160
  %and = and i64 %add1, -8, !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %and, i64 0, metadata !481, metadata !1018), !dbg !2162
  %call = tail call %struct._object* @_PyObject_GC_Malloc(i64 %and), !dbg !2163
  %2 = bitcast %struct._object* %call to %struct.PyVarObject*, !dbg !2164
  tail call void @llvm.dbg.value(metadata %struct.PyVarObject* %2, i64 0, metadata !482, metadata !1018), !dbg !2165
  %cmp2 = icmp eq %struct._object* %call, null, !dbg !2166
  br i1 %cmp2, label %cleanup, label %if.then.3, !dbg !2168

if.then.3:                                        ; preds = %if.end
  %3 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 0, !dbg !2169
  store i64 %nitems, i64* %3, align 8, !dbg !2169, !tbaa !1969
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2169
  store %struct._typeobject* %tp, %struct._typeobject** %ob_type, align 8, !dbg !2169, !tbaa !1157
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2169
  store i64 1, i64* %ob_refcnt, align 8, !dbg !2169, !tbaa !1040
  tail call void @llvm.dbg.value(metadata %struct.PyVarObject* %2, i64 0, metadata !482, metadata !1018), !dbg !2165
  br label %cleanup, !dbg !2170

cleanup:                                          ; preds = %if.then.3, %if.end, %if.then
  %retval.0 = phi %struct.PyVarObject* [ null, %if.then ], [ %2, %if.end ], [ %2, %if.then.3 ]
  ret %struct.PyVarObject* %retval.0, !dbg !2171
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

; Function Attrs: nounwind uwtable
define %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject* %op, i64 %nitems) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyVarObject* %op, i64 0, metadata !487, metadata !1018), !dbg !2172
  tail call void @llvm.dbg.value(metadata i64 %nitems, i64 0, metadata !488, metadata !1018), !dbg !2173
  %ob_type = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %op, i64 0, i32 0, i32 1, !dbg !2174
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2174, !tbaa !1157
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 2, !dbg !2174
  %1 = load i64, i64* %tp_basicsize, align 8, !dbg !2174, !tbaa !2143
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 3, !dbg !2174
  %2 = load i64, i64* %tp_itemsize, align 8, !dbg !2174, !tbaa !2161
  %mul = mul i64 %2, %nitems, !dbg !2174
  %add = add i64 %1, 7, !dbg !2174
  %add2 = add i64 %add, %mul, !dbg !2174
  %and = and i64 %add2, -8, !dbg !2174
  tail call void @llvm.dbg.value(metadata i64 %and, i64 0, metadata !489, metadata !1018), !dbg !2175
  %cmp = icmp ugt i64 %and, 9223372036854775783, !dbg !2176
  br i1 %cmp, label %if.then, label %if.end, !dbg !2178

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2179
  %3 = bitcast %struct._object* %call to %struct.PyVarObject*, !dbg !2180
  br label %cleanup, !dbg !2181

if.end:                                           ; preds = %entry
  %add.ptr21 = getelementptr %struct.PyVarObject, %struct.PyVarObject* %op, i64 -1, !dbg !2182
  %4 = bitcast %struct.PyVarObject* %add.ptr21 to i8*, !dbg !2183
  %add3 = add i64 %and, 24, !dbg !2184
  %call4 = tail call i8* @PyObject_Realloc(i8* %4, i64 %add3) #1, !dbg !2185
  %cmp5 = icmp eq i8* %call4, null, !dbg !2186
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !2188

if.then.6:                                        ; preds = %if.end
  %call7 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2189
  %5 = bitcast %struct._object* %call7 to %struct.PyVarObject*, !dbg !2190
  br label %cleanup, !dbg !2191

if.end.8:                                         ; preds = %if.end
  %add.ptr9 = getelementptr i8, i8* %call4, i64 24, !dbg !2192
  %6 = bitcast i8* %add.ptr9 to %struct.PyVarObject*, !dbg !2193
  tail call void @llvm.dbg.value(metadata %struct.PyVarObject* %6, i64 0, metadata !487, metadata !1018), !dbg !2172
  %ob_size = getelementptr inbounds i8, i8* %call4, i64 40, !dbg !2194
  %7 = bitcast i8* %ob_size to i64*, !dbg !2194
  store i64 %nitems, i64* %7, align 8, !dbg !2195, !tbaa !1969
  br label %cleanup, !dbg !2196

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then
  %retval.0 = phi %struct.PyVarObject* [ %3, %if.then ], [ %5, %if.then.6 ], [ %6, %if.end.8 ]
  ret %struct.PyVarObject* %retval.0, !dbg !2197
}

declare i8* @PyObject_Realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @PyObject_GC_Del(i8* %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %op, i64 0, metadata !494, metadata !1018), !dbg !2198
  %add.ptr = getelementptr i8, i8* %op, i64 -24, !dbg !2199
  %gc_refs = getelementptr inbounds i8, i8* %op, i64 -8, !dbg !2200
  %0 = bitcast i8* %gc_refs to i64*, !dbg !2200
  %1 = load i64, i64* %0, align 8, !dbg !2200, !tbaa !1249
  %shr.mask = and i64 %1, -2, !dbg !2200
  %cmp = icmp eq i64 %shr.mask, -4, !dbg !2200
  br i1 %cmp, label %if.end, label %if.then, !dbg !2202

if.then:                                          ; preds = %entry
  %gc_next.i = bitcast i8* %add.ptr to %union._gc_head**, !dbg !2203
  %2 = bitcast i8* %add.ptr to i64*, !dbg !2203
  %3 = load i64, i64* %2, align 8, !dbg !2203, !tbaa !1211
  %gc_prev.i = getelementptr inbounds i8, i8* %op, i64 -16, !dbg !2205
  %4 = bitcast i8* %gc_prev.i to i64**, !dbg !2205
  %5 = load i64*, i64** %4, align 8, !dbg !2205, !tbaa !1217
  store i64 %3, i64* %5, align 8, !dbg !2206, !tbaa !1211
  %6 = ptrtoint i64* %5 to i64, !dbg !2207
  %7 = bitcast i8* %add.ptr to %struct.anon**, !dbg !2208
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !2208, !tbaa !1211
  %gc_prev9.i = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !2209
  %9 = bitcast %union._gc_head** %gc_prev9.i to i64*, !dbg !2210
  store i64 %6, i64* %9, align 8, !dbg !2210, !tbaa !1217
  store %union._gc_head* null, %union._gc_head** %gc_next.i, align 8, !dbg !2211, !tbaa !1211
  br label %if.end, !dbg !2212

if.end:                                           ; preds = %entry, %if.then
  %10 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 2), align 4, !dbg !2213, !tbaa !1184
  %cmp2 = icmp sgt i32 %10, 0, !dbg !2215
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2216

if.then.3:                                        ; preds = %if.end
  %dec = add i32 %10, -1, !dbg !2217
  store i32 %dec, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 2), align 4, !dbg !2217, !tbaa !1184
  br label %if.end.4, !dbg !2219

if.end.4:                                         ; preds = %if.then.3, %if.end
  tail call void @PyObject_Free(i8* %add.ptr) #1, !dbg !2220
  ret void, !dbg !2221
}

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_enable(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %noargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !498, metadata !1018), !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct._object* %noargs, i64 0, metadata !499, metadata !1018), !dbg !2223
  store i1 false, i1* @enabled, align 1
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2224, !tbaa !1040
  %inc = add i64 %0, 1, !dbg !2224
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2224, !tbaa !1040
  ret %struct._object* @_Py_NoneStruct, !dbg !2225
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_disable(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %noargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !502, metadata !1018), !dbg !2226
  tail call void @llvm.dbg.value(metadata %struct._object* %noargs, i64 0, metadata !503, metadata !1018), !dbg !2227
  store i1 true, i1* @enabled, align 1
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2228, !tbaa !1040
  %inc = add i64 %0, 1, !dbg !2228
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2228, !tbaa !1040
  ret %struct._object* @_Py_NoneStruct, !dbg !2229
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_isenabled(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %noargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !506, metadata !1018), !dbg !2230
  tail call void @llvm.dbg.value(metadata %struct._object* %noargs, i64 0, metadata !507, metadata !1018), !dbg !2231
  %.b = load i1, i1* @enabled, align 1
  %0 = zext i1 %.b to i64
  %1 = xor i64 %0, 1
  %call = tail call %struct._object* @PyBool_FromLong(i64 %1) #1, !dbg !2232
  ret %struct._object* %call, !dbg !2233
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_set_debug(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !510, metadata !1018), !dbg !2234
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !511, metadata !1018), !dbg !2235
  %call = tail call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32* nonnull @debug) #1, !dbg !2236
  %tobool = icmp eq i32 %call, 0, !dbg !2236
  br i1 %tobool, label %return, label %if.end, !dbg !2238

if.end:                                           ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2239, !tbaa !1040
  %inc = add i64 %0, 1, !dbg !2239
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2239, !tbaa !1040
  br label %return, !dbg !2240

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2241
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_debug(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %noargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !514, metadata !1018), !dbg !2242
  tail call void @llvm.dbg.value(metadata %struct._object* %noargs, i64 0, metadata !515, metadata !1018), !dbg !2243
  %0 = load i32, i32* @debug, align 4, !dbg !2244, !tbaa !1124
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 %0) #1, !dbg !2245
  ret %struct._object* %call, !dbg !2246
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_count(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %noargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !518, metadata !1018), !dbg !2247
  tail call void @llvm.dbg.value(metadata %struct._object* %noargs, i64 0, metadata !519, metadata !1018), !dbg !2248
  %0 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 2), align 4, !dbg !2249, !tbaa !1184
  %1 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 2), align 4, !dbg !2250, !tbaa !1184
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 2), align 4, !dbg !2251, !tbaa !1184
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %0, i32 %1, i32 %2) #1, !dbg !2252
  ret %struct._object* %call, !dbg !2253
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_set_thresh(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !522, metadata !1018), !dbg !2254
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !523, metadata !1018), !dbg !2255
  %call = tail call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 1), i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 1), i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 1)) #1, !dbg !2256
  %tobool = icmp eq i32 %call, 0, !dbg !2256
  br i1 %tobool, label %cleanup, label %for.cond.preheader, !dbg !2258

for.cond.preheader:                               ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2259, !tbaa !1040
  %inc1 = add i64 %0, 1, !dbg !2259
  store i64 %inc1, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2259, !tbaa !1040
  br label %cleanup, !dbg !2260

cleanup:                                          ; preds = %entry, %for.cond.preheader
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %for.cond.preheader ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2261
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_thresh(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %noargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !527, metadata !1018), !dbg !2262
  tail call void @llvm.dbg.value(metadata %struct._object* %noargs, i64 0, metadata !528, metadata !1018), !dbg !2263
  %0 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 1), align 8, !dbg !2264, !tbaa !2096
  %1 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 1), align 8, !dbg !2265, !tbaa !2096
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 1), align 8, !dbg !2266, !tbaa !2096
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %0, i32 %1, i32 %2) #1, !dbg !2267
  ret %struct._object* %call, !dbg !2268
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_collect(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* %kws) #0 {
entry:
  %collected.i = alloca i64, align 8
  %uncollectable.i = alloca i64, align 8
  %genarg = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !531, metadata !1018), !dbg !2269
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !532, metadata !1018), !dbg !2270
  tail call void @llvm.dbg.value(metadata %struct._object* %kws, i64 0, metadata !533, metadata !1018), !dbg !2271
  %0 = bitcast i32* %genarg to i8*, !dbg !2272
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !534, metadata !1018), !dbg !2273
  store i32 2, i32* %genarg, align 4, !dbg !2273, !tbaa !1124
  tail call void @llvm.dbg.value(metadata i32* %genarg, i64 0, metadata !534, metadata !1018), !dbg !2273
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kws, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @gc_collect.keywords, i64 0, i64 0), i32* nonnull %genarg) #1, !dbg !2274
  %tobool = icmp eq i32 %call, 0, !dbg !2274
  br i1 %tobool, label %cleanup, label %if.else, !dbg !2276

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %genarg, i64 0, metadata !534, metadata !1018), !dbg !2273
  %1 = load i32, i32* %genarg, align 4, !dbg !2277, !tbaa !1124
  %2 = icmp ugt i32 %1, 2, !dbg !2280
  br i1 %2, label %if.then.2, label %if.end.3, !dbg !2280

if.then.2:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2282, !tbaa !1025
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0)) #1, !dbg !2284
  br label %cleanup, !dbg !2285

if.end.3:                                         ; preds = %if.else
  %.b = load i1, i1* @collecting, align 1
  br i1 %.b, label %if.end.8, label %if.else.6, !dbg !2286

if.else.6:                                        ; preds = %if.end.3
  store i1 true, i1* @collecting, align 1
  call void @llvm.dbg.value(metadata i32* %genarg, i64 0, metadata !534, metadata !1018), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !648, metadata !1018) #1, !dbg !2287
  %4 = bitcast i64* %collected.i to i8*, !dbg !2289
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2289
  %5 = bitcast i64* %uncollectable.i to i8*, !dbg !2289
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2289
  call fastcc void @invoke_gc_callback(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 %1, i64 0, i64 0) #1, !dbg !2290
  call void @llvm.dbg.value(metadata i64* %collected.i, i64 0, metadata !650, metadata !1018) #1, !dbg !2291
  call void @llvm.dbg.value(metadata i64* %uncollectable.i, i64 0, metadata !651, metadata !1018) #1, !dbg !2292
  %call.i = call fastcc i64 @collect(i32 %1, i64* nonnull %collected.i, i64* nonnull %uncollectable.i, i32 0) #1, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !649, metadata !1018) #1, !dbg !2294
  call void @llvm.dbg.value(metadata i64* %collected.i, i64 0, metadata !650, metadata !1018) #1, !dbg !2291
  %6 = load i64, i64* %collected.i, align 8, !dbg !2295, !tbaa !1100
  call void @llvm.dbg.value(metadata i64* %uncollectable.i, i64 0, metadata !651, metadata !1018) #1, !dbg !2292
  %7 = load i64, i64* %uncollectable.i, align 8, !dbg !2296, !tbaa !1100
  call fastcc void @invoke_gc_callback(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 %1, i64 %6, i64 %7) #1, !dbg !2297
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !2298
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !535, metadata !1018), !dbg !2299
  store i1 false, i1* @collecting, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.3, %if.else.6
  %n.0 = phi i64 [ %call.i, %if.else.6 ], [ 0, %if.end.3 ]
  %call9 = call %struct._object* @PyLong_FromSsize_t(i64 %n.0) #1, !dbg !2300
  br label %cleanup, !dbg !2301

cleanup:                                          ; preds = %entry, %if.end.8, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ %call9, %if.end.8 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #1, !dbg !2302
  ret %struct._object* %retval.0, !dbg !2302
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_objects(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %noargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !538, metadata !1018), !dbg !2303
  tail call void @llvm.dbg.value(metadata %struct._object* %noargs, i64 0, metadata !539, metadata !1018), !dbg !2304
  %call = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !2305
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !541, metadata !1018), !dbg !2306
  %cmp = icmp eq %struct._object* %call, null, !dbg !2307
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !2309

for.cond.preheader:                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !553, metadata !1018) #1, !dbg !2310
  tail call void @llvm.dbg.value(metadata %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), i64 0, metadata !554, metadata !1018) #1, !dbg !2312
  %gc.0.16.i = load %union._gc_head*, %union._gc_head** getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0, i32 0, i32 0), align 16, !dbg !2313
  %cmp.17.i = icmp eq %union._gc_head* %gc.0.16.i, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), !dbg !2314
  br i1 %cmp.17.i, label %for.inc, label %for.body.i.preheader, !dbg !2315

for.body.i.preheader:                             ; preds = %for.cond.preheader
  br label %for.body.i, !dbg !2316

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.backedge.i
  %gc.018.i = phi %union._gc_head* [ %gc.0.i, %for.cond.backedge.i ], [ %gc.0.16.i, %for.body.i.preheader ], !dbg !2317
  %add.ptr.i = getelementptr %union._gc_head, %union._gc_head* %gc.018.i, i64 1, !dbg !2316
  %0 = bitcast %union._gc_head* %add.ptr.i to %struct._object*, !dbg !2316
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !556, metadata !1018) #1, !dbg !2318
  %cmp2.i = icmp eq %struct._object* %0, %call, !dbg !2319
  br i1 %cmp2.i, label %for.cond.backedge.i, label %if.then.i, !dbg !2321

for.cond.backedge.i:                              ; preds = %if.then.i, %for.body.i
  %gc.0.in.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.018.i, i64 0, i32 0, i32 0, !dbg !2313
  %gc.0.i = load %union._gc_head*, %union._gc_head** %gc.0.in.i, align 8, !dbg !2313
  %cmp.i = icmp eq %union._gc_head* %gc.0.i, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), !dbg !2314
  br i1 %cmp.i, label %for.inc.loopexit, label %for.body.i, !dbg !2315

if.then.i:                                        ; preds = %for.body.i
  %call.i = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %0) #1, !dbg !2322
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !2322
  br i1 %tobool.i, label %for.cond.backedge.i, label %do.body.loopexit27, !dbg !2325

do.body.loopexit:                                 ; preds = %if.then.i.2
  br label %do.body, !dbg !2326

do.body.loopexit26:                               ; preds = %if.then.i.1
  br label %do.body, !dbg !2326

do.body.loopexit27:                               ; preds = %if.then.i
  br label %do.body, !dbg !2326

do.body:                                          ; preds = %do.body.loopexit27, %do.body.loopexit26, %do.body.loopexit
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !542, metadata !1018), !dbg !2326
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2328
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2328, !tbaa !1040
  %dec = add i64 %1, -1, !dbg !2328
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2328, !tbaa !1040
  %cmp4 = icmp eq i64 %dec, 0, !dbg !2328
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !2330

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2331
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2331, !tbaa !1157
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2331
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2331, !tbaa !1172
  tail call void %3(%struct._object* %call) #1, !dbg !2331
  br label %cleanup

for.inc.loopexit:                                 ; preds = %for.cond.backedge.i
  br label %for.inc, !dbg !2310

for.inc:                                          ; preds = %for.inc.loopexit, %for.cond.preheader
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !553, metadata !1018) #1, !dbg !2310
  tail call void @llvm.dbg.value(metadata %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), i64 0, metadata !554, metadata !1018) #1, !dbg !2312
  %gc.0.16.i.1 = load %union._gc_head*, %union._gc_head** getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 0, i32 0, i32 0), align 16, !dbg !2313
  %cmp.17.i.1 = icmp eq %union._gc_head* %gc.0.16.i.1, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 0), !dbg !2314
  br i1 %cmp.17.i.1, label %for.inc.1, label %for.body.i.1.preheader, !dbg !2315

for.body.i.1.preheader:                           ; preds = %for.inc
  br label %for.body.i.1, !dbg !2316

cleanup.loopexit:                                 ; preds = %for.cond.backedge.i.2
  br label %cleanup, !dbg !2333

cleanup:                                          ; preds = %cleanup.loopexit, %for.inc.1, %if.else, %do.body, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ %call, %for.inc.1 ], [ %call, %cleanup.loopexit ]
  ret %struct._object* %retval.0, !dbg !2333

for.body.i.1:                                     ; preds = %for.body.i.1.preheader, %for.cond.backedge.i.1
  %gc.018.i.1 = phi %union._gc_head* [ %gc.0.i.1, %for.cond.backedge.i.1 ], [ %gc.0.16.i.1, %for.body.i.1.preheader ], !dbg !2317
  %add.ptr.i.1 = getelementptr %union._gc_head, %union._gc_head* %gc.018.i.1, i64 1, !dbg !2316
  %4 = bitcast %union._gc_head* %add.ptr.i.1 to %struct._object*, !dbg !2316
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !556, metadata !1018) #1, !dbg !2318
  %cmp2.i.1 = icmp eq %struct._object* %4, %call, !dbg !2319
  br i1 %cmp2.i.1, label %for.cond.backedge.i.1, label %if.then.i.1, !dbg !2321

if.then.i.1:                                      ; preds = %for.body.i.1
  %call.i.1 = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %4) #1, !dbg !2322
  %tobool.i.1 = icmp eq i32 %call.i.1, 0, !dbg !2322
  br i1 %tobool.i.1, label %for.cond.backedge.i.1, label %do.body.loopexit26, !dbg !2325

for.cond.backedge.i.1:                            ; preds = %if.then.i.1, %for.body.i.1
  %gc.0.in.i.1 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.018.i.1, i64 0, i32 0, i32 0, !dbg !2313
  %gc.0.i.1 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.1, align 8, !dbg !2313
  %cmp.i.1 = icmp eq %union._gc_head* %gc.0.i.1, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 0), !dbg !2314
  br i1 %cmp.i.1, label %for.inc.1.loopexit, label %for.body.i.1, !dbg !2315

for.inc.1.loopexit:                               ; preds = %for.cond.backedge.i.1
  br label %for.inc.1, !dbg !2310

for.inc.1:                                        ; preds = %for.inc.1.loopexit, %for.inc
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !553, metadata !1018) #1, !dbg !2310
  tail call void @llvm.dbg.value(metadata %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), i64 0, metadata !554, metadata !1018) #1, !dbg !2312
  %gc.0.16.i.2 = load %union._gc_head*, %union._gc_head** getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 0, i32 0, i32 0), align 16, !dbg !2313
  %cmp.17.i.2 = icmp eq %union._gc_head* %gc.0.16.i.2, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 0), !dbg !2314
  br i1 %cmp.17.i.2, label %cleanup, label %for.body.i.2.preheader, !dbg !2315

for.body.i.2.preheader:                           ; preds = %for.inc.1
  br label %for.body.i.2, !dbg !2316

for.body.i.2:                                     ; preds = %for.body.i.2.preheader, %for.cond.backedge.i.2
  %gc.018.i.2 = phi %union._gc_head* [ %gc.0.i.2, %for.cond.backedge.i.2 ], [ %gc.0.16.i.2, %for.body.i.2.preheader ], !dbg !2317
  %add.ptr.i.2 = getelementptr %union._gc_head, %union._gc_head* %gc.018.i.2, i64 1, !dbg !2316
  %5 = bitcast %union._gc_head* %add.ptr.i.2 to %struct._object*, !dbg !2316
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !556, metadata !1018) #1, !dbg !2318
  %cmp2.i.2 = icmp eq %struct._object* %5, %call, !dbg !2319
  br i1 %cmp2.i.2, label %for.cond.backedge.i.2, label %if.then.i.2, !dbg !2321

if.then.i.2:                                      ; preds = %for.body.i.2
  %call.i.2 = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %5) #1, !dbg !2322
  %tobool.i.2 = icmp eq i32 %call.i.2, 0, !dbg !2322
  br i1 %tobool.i.2, label %for.cond.backedge.i.2, label %do.body.loopexit, !dbg !2325

for.cond.backedge.i.2:                            ; preds = %if.then.i.2, %for.body.i.2
  %gc.0.in.i.2 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.018.i.2, i64 0, i32 0, i32 0, !dbg !2313
  %gc.0.i.2 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.2, align 8, !dbg !2313
  %cmp.i.2 = icmp eq %union._gc_head* %gc.0.i.2, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 0), !dbg !2314
  br i1 %cmp.i.2, label %cleanup.loopexit, label %for.body.i.2, !dbg !2315
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_stats(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %noargs) #0 {
entry:
  %stats = alloca [3 x %struct.gc_generation_stats], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !562, metadata !1018), !dbg !2334
  tail call void @llvm.dbg.value(metadata %struct._object* %noargs, i64 0, metadata !563, metadata !1018), !dbg !2335
  %0 = bitcast [3 x %struct.gc_generation_stats]* %stats to i8*, !dbg !2336
  call void @llvm.lifetime.start(i64 72, i8* %0) #1, !dbg !2336
  tail call void @llvm.dbg.declare(metadata [3 x %struct.gc_generation_stats]* %stats, metadata !566, metadata !1018), !dbg !2337
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !564, metadata !1018), !dbg !2338
  %1 = bitcast [3 x %struct.gc_generation_stats]* %stats to i8*, !dbg !2339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([3 x %struct.gc_generation_stats]* @generation_stats to i8*), i64 24, i32 16, i1 false), !dbg !2339, !tbaa.struct !2343
  %arrayidx.1 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 1, !dbg !2344
  %2 = bitcast %struct.gc_generation_stats* %arrayidx.1 to i8*, !dbg !2339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.gc_generation_stats* getelementptr inbounds ([3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* @generation_stats, i64 0, i64 1) to i8*), i64 24, i32 8, i1 false), !dbg !2339, !tbaa.struct !2343
  %arrayidx.2 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 2, !dbg !2344
  %3 = bitcast %struct.gc_generation_stats* %arrayidx.2 to i8*, !dbg !2339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.gc_generation_stats* getelementptr inbounds ([3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* @generation_stats, i64 0, i64 2) to i8*), i64 24, i32 16, i1 false), !dbg !2339, !tbaa.struct !2343
  %call = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !2345
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !565, metadata !1018), !dbg !2346
  %cmp3 = icmp eq %struct._object* %call, null, !dbg !2347
  br i1 %cmp3, label %cleanup.52, label %for.cond.4.preheader, !dbg !2349

for.cond.4.preheader:                             ; preds = %entry
  %collections = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 0, i32 0, !dbg !2350
  %4 = load i64, i64* %collections, align 16, !dbg !2350, !tbaa !2351
  %collected = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 0, i32 1, !dbg !2352
  %5 = load i64, i64* %collected, align 8, !dbg !2352, !tbaa !2353
  %uncollectable = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 0, i32 2, !dbg !2354
  %6 = load i64, i64* %uncollectable, align 16, !dbg !2354, !tbaa !1955
  %call9 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i64 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i64 %6) #1, !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !577, metadata !1018), !dbg !2356
  %cmp10 = icmp eq %struct._object* %call9, null, !dbg !2357
  br i1 %cmp10, label %do.body.37, label %if.end.12, !dbg !2359

if.end.12:                                        ; preds = %for.cond.4.preheader
  %call13 = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %call9) #1, !dbg !2360
  %tobool = icmp eq i32 %call13, 0, !dbg !2360
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 0, !dbg !2361
  %7 = load i64, i64* %ob_refcnt21, align 8, !dbg !2361, !tbaa !1040
  %dec22 = add i64 %7, -1, !dbg !2361
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !2361, !tbaa !1040
  %cmp23 = icmp eq i64 %dec22, 0, !dbg !2361
  br i1 %tobool, label %do.body.19, label %do.body, !dbg !2363

do.body:                                          ; preds = %if.end.12.2, %if.end.12.1, %if.end.12
  %cmp23.lcssa = phi i1 [ %cmp23, %if.end.12 ], [ %cmp23.1, %if.end.12.1 ], [ %cmp23.2, %if.end.12.2 ]
  %call9.lcssa88 = phi %struct._object* [ %call9, %if.end.12 ], [ %call9.1, %if.end.12.1 ], [ %call9.2, %if.end.12.2 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !581, metadata !1018), !dbg !2364
  br i1 %cmp23.lcssa, label %if.else, label %do.body.37, !dbg !2366

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call9.lcssa88, i64 0, i32 1, !dbg !2367
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2367, !tbaa !1157
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2367
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2367, !tbaa !1172
  tail call void %9(%struct._object* %call9.lcssa88) #1, !dbg !2367
  br label %do.body.37

do.body.19:                                       ; preds = %if.end.12
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !585, metadata !1018), !dbg !2370
  br i1 %cmp23, label %if.else.25, label %for.inc.31, !dbg !2372

if.else.25:                                       ; preds = %do.body.19
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 1, !dbg !2373
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !2373, !tbaa !1157
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !2373
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !2373, !tbaa !1172
  tail call void %11(%struct._object* %call9) #1, !dbg !2373
  br label %for.inc.31

for.inc.31:                                       ; preds = %do.body.19, %if.else.25
  %collections.1 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 1, i32 0, !dbg !2350
  %12 = load i64, i64* %collections.1, align 8, !dbg !2350, !tbaa !2351
  %collected.1 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 1, i32 1, !dbg !2352
  %13 = load i64, i64* %collected.1, align 8, !dbg !2352, !tbaa !2353
  %uncollectable.1 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 1, i32 2, !dbg !2354
  %14 = load i64, i64* %uncollectable.1, align 8, !dbg !2354, !tbaa !1955
  %call9.1 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i64 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i64 %14) #1, !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !577, metadata !1018), !dbg !2356
  %cmp10.1 = icmp eq %struct._object* %call9.1, null, !dbg !2357
  br i1 %cmp10.1, label %do.body.37, label %if.end.12.1, !dbg !2359

do.body.37:                                       ; preds = %if.else, %do.body, %for.inc.31.1, %for.inc.31, %for.cond.4.preheader
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !587, metadata !1018), !dbg !2375
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !589, metadata !1018), !dbg !2377
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2379
  %15 = load i64, i64* %ob_refcnt39, align 8, !dbg !2379, !tbaa !1040
  %dec40 = add i64 %15, -1, !dbg !2379
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !2379, !tbaa !1040
  %cmp41 = icmp eq i64 %dec40, 0, !dbg !2379
  br i1 %cmp41, label %if.else.43, label %cleanup.52, !dbg !2381

if.else.43:                                       ; preds = %do.body.37
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2382
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !2382, !tbaa !1157
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !2382
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !2382, !tbaa !1172
  tail call void %17(%struct._object* %call) #1, !dbg !2382
  br label %cleanup.52

cleanup.52:                                       ; preds = %do.body.19.2, %if.else.25.2, %do.body.37, %if.else.43, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else.43 ], [ null, %do.body.37 ], [ %call, %if.else.25.2 ], [ %call, %do.body.19.2 ]
  call void @llvm.lifetime.end(i64 72, i8* %0) #1, !dbg !2384
  ret %struct._object* %retval.0, !dbg !2384

if.end.12.1:                                      ; preds = %for.inc.31
  %call13.1 = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %call9.1) #1, !dbg !2360
  %tobool.1 = icmp eq i32 %call13.1, 0, !dbg !2360
  %ob_refcnt21.1 = getelementptr inbounds %struct._object, %struct._object* %call9.1, i64 0, i32 0, !dbg !2361
  %18 = load i64, i64* %ob_refcnt21.1, align 8, !dbg !2361, !tbaa !1040
  %dec22.1 = add i64 %18, -1, !dbg !2361
  store i64 %dec22.1, i64* %ob_refcnt21.1, align 8, !dbg !2361, !tbaa !1040
  %cmp23.1 = icmp eq i64 %dec22.1, 0, !dbg !2361
  br i1 %tobool.1, label %do.body.19.1, label %do.body, !dbg !2363

do.body.19.1:                                     ; preds = %if.end.12.1
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !585, metadata !1018), !dbg !2370
  br i1 %cmp23.1, label %if.else.25.1, label %for.inc.31.1, !dbg !2372

if.else.25.1:                                     ; preds = %do.body.19.1
  %ob_type26.1 = getelementptr inbounds %struct._object, %struct._object* %call9.1, i64 0, i32 1, !dbg !2373
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type26.1, align 8, !dbg !2373, !tbaa !1157
  %tp_dealloc27.1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !2373
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27.1, align 8, !dbg !2373, !tbaa !1172
  tail call void %20(%struct._object* %call9.1) #1, !dbg !2373
  br label %for.inc.31.1

for.inc.31.1:                                     ; preds = %if.else.25.1, %do.body.19.1
  %collections.2 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 2, i32 0, !dbg !2350
  %21 = load i64, i64* %collections.2, align 16, !dbg !2350, !tbaa !2351
  %collected.2 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 2, i32 1, !dbg !2352
  %22 = load i64, i64* %collected.2, align 8, !dbg !2352, !tbaa !2353
  %uncollectable.2 = getelementptr [3 x %struct.gc_generation_stats], [3 x %struct.gc_generation_stats]* %stats, i64 0, i64 2, i32 2, !dbg !2354
  %23 = load i64, i64* %uncollectable.2, align 16, !dbg !2354, !tbaa !1955
  %call9.2 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i64 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i64 %23) #1, !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !577, metadata !1018), !dbg !2356
  %cmp10.2 = icmp eq %struct._object* %call9.2, null, !dbg !2357
  br i1 %cmp10.2, label %do.body.37, label %if.end.12.2, !dbg !2359

if.end.12.2:                                      ; preds = %for.inc.31.1
  %call13.2 = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %call9.2) #1, !dbg !2360
  %tobool.2 = icmp eq i32 %call13.2, 0, !dbg !2360
  %ob_refcnt21.2 = getelementptr inbounds %struct._object, %struct._object* %call9.2, i64 0, i32 0, !dbg !2361
  %24 = load i64, i64* %ob_refcnt21.2, align 8, !dbg !2361, !tbaa !1040
  %dec22.2 = add i64 %24, -1, !dbg !2361
  store i64 %dec22.2, i64* %ob_refcnt21.2, align 8, !dbg !2361, !tbaa !1040
  %cmp23.2 = icmp eq i64 %dec22.2, 0, !dbg !2361
  br i1 %tobool.2, label %do.body.19.2, label %do.body, !dbg !2363

do.body.19.2:                                     ; preds = %if.end.12.2
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !585, metadata !1018), !dbg !2370
  br i1 %cmp23.2, label %if.else.25.2, label %cleanup.52, !dbg !2372

if.else.25.2:                                     ; preds = %do.body.19.2
  %ob_type26.2 = getelementptr inbounds %struct._object, %struct._object* %call9.2, i64 0, i32 1, !dbg !2373
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type26.2, align 8, !dbg !2373, !tbaa !1157
  %tp_dealloc27.2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !2373
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27.2, align 8, !dbg !2373, !tbaa !1172
  tail call void %26(%struct._object* %call9.2) #1, !dbg !2373
  br label %cleanup.52
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_is_tracked(%struct._object* nocapture readnone %self, %struct._object* %obj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !594, metadata !1018), !dbg !2385
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !595, metadata !1018), !dbg !2386
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !2387
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2387, !tbaa !1157
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2387
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2387, !tbaa !1617
  %and = and i64 %1, 16384, !dbg !2387
  %cmp = icmp eq i64 %and, 0, !dbg !2387
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !2387

land.lhs.true:                                    ; preds = %entry
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 39, !dbg !2389
  %2 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !2389, !tbaa !2391
  %cmp2 = icmp eq i32 (%struct._object*)* %2, null, !dbg !2389
  br i1 %cmp2, label %land.lhs.true.5, label %lor.lhs.false, !dbg !2389

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call i32 %2(%struct._object* %obj) #1, !dbg !2392
  %tobool = icmp eq i32 %call, 0, !dbg !2392
  br i1 %tobool, label %if.else, label %land.lhs.true.5, !dbg !2394

land.lhs.true.5:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %add.ptr = getelementptr %struct._object, %struct._object* %obj, i64 -2, i32 1, !dbg !2395
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !2395
  %3 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !2395
  %4 = load i64, i64* %3, align 8, !dbg !2395, !tbaa !1249
  %shr.mask = and i64 %4, -2, !dbg !2395
  %cmp6 = icmp eq i64 %shr.mask, -4, !dbg !2395
  br i1 %cmp6, label %if.else, label %if.end, !dbg !2398

if.else:                                          ; preds = %land.lhs.true.5, %lor.lhs.false, %entry
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !596, metadata !1018), !dbg !2399
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.5, %if.else
  %result.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.else ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %land.lhs.true.5 ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %result.0, i64 0, i32 0, !dbg !2400
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2400, !tbaa !1040
  %inc = add i64 %5, 1, !dbg !2400
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2400, !tbaa !1040
  ret %struct._object* %result.0, !dbg !2401
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_referrers(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !599, metadata !1018), !dbg !2402
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !600, metadata !1018), !dbg !2403
  %call = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !2404
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !602, metadata !1018), !dbg !2405
  %tobool = icmp eq %struct._object* %call, null, !dbg !2406
  br i1 %tobool, label %cleanup, label %for.cond.preheader, !dbg !2408

for.cond.preheader:                               ; preds = %entry
  %0 = bitcast %struct._object* %args to i8*, !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !614, metadata !1018) #1, !dbg !2415
  tail call void @llvm.dbg.value(metadata %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), i64 0, metadata !615, metadata !1018) #1, !dbg !2416
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !616, metadata !1018) #1, !dbg !2417
  %gc.0.27.i = load %union._gc_head*, %union._gc_head** getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0, i32 0, i32 0), align 16, !dbg !2418
  %cmp.28.i = icmp eq %union._gc_head* %gc.0.27.i, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), !dbg !2419
  br i1 %cmp.28.i, label %for.inc, label %for.body.i.preheader, !dbg !2420

for.body.i.preheader:                             ; preds = %for.cond.preheader
  br label %for.body.i, !dbg !2421

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.backedge.i
  %gc.029.i = phi %union._gc_head* [ %gc.0.i, %for.cond.backedge.i ], [ %gc.0.27.i, %for.body.i.preheader ], !dbg !2422
  %add.ptr.i = getelementptr %union._gc_head, %union._gc_head* %gc.029.i, i64 1, !dbg !2421
  %1 = bitcast %union._gc_head* %add.ptr.i to %struct._object*, !dbg !2421
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !618, metadata !1018) #1, !dbg !2423
  %cmp2.i = icmp eq %struct._object* %1, %args, !dbg !2424
  %cmp3.i = icmp eq %struct._object* %1, %call, !dbg !2426
  %or.cond.i = or i1 %cmp2.i, %cmp3.i, !dbg !2427
  br i1 %or.cond.i, label %for.cond.backedge.i, label %if.end.i, !dbg !2427

if.end.i:                                         ; preds = %for.body.i
  %ob_type.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.029.i, i64 1, i32 0, i32 1, !dbg !2428
  %2 = bitcast %union._gc_head** %ob_type.i to %struct._typeobject**, !dbg !2428
  %3 = load %struct._typeobject*, %struct._typeobject** %2, align 8, !dbg !2428, !tbaa !1157
  %tp_traverse.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 21, !dbg !2429
  %4 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse.i, align 8, !dbg !2429, !tbaa !1261
  %call.i = tail call i32 %4(%struct._object* %1, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @referrersvisit to i32 (%struct._object*, i8*)*), i8* %0) #1, !dbg !2430
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !2430
  br i1 %tobool.i, label %for.cond.backedge.i, label %if.then.4.i, !dbg !2431

for.cond.backedge.i:                              ; preds = %if.then.4.i, %if.end.i, %for.body.i
  %gc.0.in.i = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.029.i, i64 0, i32 0, i32 0, !dbg !2418
  %gc.0.i = load %union._gc_head*, %union._gc_head** %gc.0.in.i, align 8, !dbg !2418
  %cmp.i = icmp eq %union._gc_head* %gc.0.i, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), !dbg !2419
  br i1 %cmp.i, label %for.inc.loopexit, label %for.body.i, !dbg !2420

if.then.4.i:                                      ; preds = %if.end.i
  %call5.i = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %1) #1, !dbg !2432
  %cmp6.i = icmp slt i32 %call5.i, 0, !dbg !2435
  br i1 %cmp6.i, label %do.body.loopexit28, label %for.cond.backedge.i, !dbg !2436

do.body.loopexit:                                 ; preds = %if.then.4.i.2
  br label %do.body, !dbg !2437

do.body.loopexit27:                               ; preds = %if.then.4.i.1
  br label %do.body, !dbg !2437

do.body.loopexit28:                               ; preds = %if.then.4.i
  br label %do.body, !dbg !2437

do.body:                                          ; preds = %do.body.loopexit28, %do.body.loopexit27, %do.body.loopexit
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !603, metadata !1018), !dbg !2437
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2439
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2439, !tbaa !1040
  %dec = add i64 %5, -1, !dbg !2439
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2439, !tbaa !1040
  %cmp4 = icmp eq i64 %dec, 0, !dbg !2439
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !2441

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2442
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2442, !tbaa !1157
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2442
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2442, !tbaa !1172
  tail call void %7(%struct._object* %call) #1, !dbg !2442
  br label %cleanup

for.inc.loopexit:                                 ; preds = %for.cond.backedge.i
  br label %for.inc, !dbg !2415

for.inc:                                          ; preds = %for.inc.loopexit, %for.cond.preheader
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !614, metadata !1018) #1, !dbg !2415
  tail call void @llvm.dbg.value(metadata %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), i64 0, metadata !615, metadata !1018) #1, !dbg !2416
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !616, metadata !1018) #1, !dbg !2417
  %gc.0.27.i.1 = load %union._gc_head*, %union._gc_head** getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 0, i32 0, i32 0), align 16, !dbg !2418
  %cmp.28.i.1 = icmp eq %union._gc_head* %gc.0.27.i.1, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 0), !dbg !2419
  br i1 %cmp.28.i.1, label %for.inc.1, label %for.body.i.1.preheader, !dbg !2420

for.body.i.1.preheader:                           ; preds = %for.inc
  br label %for.body.i.1, !dbg !2421

cleanup.loopexit:                                 ; preds = %for.cond.backedge.i.2
  br label %cleanup, !dbg !2444

cleanup:                                          ; preds = %cleanup.loopexit, %for.inc.1, %if.else, %do.body, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ %call, %for.inc.1 ], [ %call, %cleanup.loopexit ]
  ret %struct._object* %retval.0, !dbg !2444

for.body.i.1:                                     ; preds = %for.body.i.1.preheader, %for.cond.backedge.i.1
  %gc.029.i.1 = phi %union._gc_head* [ %gc.0.i.1, %for.cond.backedge.i.1 ], [ %gc.0.27.i.1, %for.body.i.1.preheader ], !dbg !2422
  %add.ptr.i.1 = getelementptr %union._gc_head, %union._gc_head* %gc.029.i.1, i64 1, !dbg !2421
  %8 = bitcast %union._gc_head* %add.ptr.i.1 to %struct._object*, !dbg !2421
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !618, metadata !1018) #1, !dbg !2423
  %cmp2.i.1 = icmp eq %struct._object* %8, %args, !dbg !2424
  %cmp3.i.1 = icmp eq %struct._object* %8, %call, !dbg !2426
  %or.cond.i.1 = or i1 %cmp2.i.1, %cmp3.i.1, !dbg !2427
  br i1 %or.cond.i.1, label %for.cond.backedge.i.1, label %if.end.i.1, !dbg !2427

if.end.i.1:                                       ; preds = %for.body.i.1
  %ob_type.i.1 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.029.i.1, i64 1, i32 0, i32 1, !dbg !2428
  %9 = bitcast %union._gc_head** %ob_type.i.1 to %struct._typeobject**, !dbg !2428
  %10 = load %struct._typeobject*, %struct._typeobject** %9, align 8, !dbg !2428, !tbaa !1157
  %tp_traverse.i.1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 21, !dbg !2429
  %11 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse.i.1, align 8, !dbg !2429, !tbaa !1261
  %call.i.1 = tail call i32 %11(%struct._object* %8, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @referrersvisit to i32 (%struct._object*, i8*)*), i8* %0) #1, !dbg !2430
  %tobool.i.1 = icmp eq i32 %call.i.1, 0, !dbg !2430
  br i1 %tobool.i.1, label %for.cond.backedge.i.1, label %if.then.4.i.1, !dbg !2431

if.then.4.i.1:                                    ; preds = %if.end.i.1
  %call5.i.1 = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %8) #1, !dbg !2432
  %cmp6.i.1 = icmp slt i32 %call5.i.1, 0, !dbg !2435
  br i1 %cmp6.i.1, label %do.body.loopexit27, label %for.cond.backedge.i.1, !dbg !2436

for.cond.backedge.i.1:                            ; preds = %if.then.4.i.1, %if.end.i.1, %for.body.i.1
  %gc.0.in.i.1 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.029.i.1, i64 0, i32 0, i32 0, !dbg !2418
  %gc.0.i.1 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.1, align 8, !dbg !2418
  %cmp.i.1 = icmp eq %union._gc_head* %gc.0.i.1, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 1, i32 0), !dbg !2419
  br i1 %cmp.i.1, label %for.inc.1.loopexit, label %for.body.i.1, !dbg !2420

for.inc.1.loopexit:                               ; preds = %for.cond.backedge.i.1
  br label %for.inc.1, !dbg !2415

for.inc.1:                                        ; preds = %for.inc.1.loopexit, %for.inc
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !614, metadata !1018) #1, !dbg !2415
  tail call void @llvm.dbg.value(metadata %union._gc_head* getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 0, i32 0), i64 0, metadata !615, metadata !1018) #1, !dbg !2416
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !616, metadata !1018) #1, !dbg !2417
  %gc.0.27.i.2 = load %union._gc_head*, %union._gc_head** getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 0, i32 0, i32 0), align 16, !dbg !2418
  %cmp.28.i.2 = icmp eq %union._gc_head* %gc.0.27.i.2, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 0), !dbg !2419
  br i1 %cmp.28.i.2, label %cleanup, label %for.body.i.2.preheader, !dbg !2420

for.body.i.2.preheader:                           ; preds = %for.inc.1
  br label %for.body.i.2, !dbg !2421

for.body.i.2:                                     ; preds = %for.body.i.2.preheader, %for.cond.backedge.i.2
  %gc.029.i.2 = phi %union._gc_head* [ %gc.0.i.2, %for.cond.backedge.i.2 ], [ %gc.0.27.i.2, %for.body.i.2.preheader ], !dbg !2422
  %add.ptr.i.2 = getelementptr %union._gc_head, %union._gc_head* %gc.029.i.2, i64 1, !dbg !2421
  %12 = bitcast %union._gc_head* %add.ptr.i.2 to %struct._object*, !dbg !2421
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !618, metadata !1018) #1, !dbg !2423
  %cmp2.i.2 = icmp eq %struct._object* %12, %args, !dbg !2424
  %cmp3.i.2 = icmp eq %struct._object* %12, %call, !dbg !2426
  %or.cond.i.2 = or i1 %cmp2.i.2, %cmp3.i.2, !dbg !2427
  br i1 %or.cond.i.2, label %for.cond.backedge.i.2, label %if.end.i.2, !dbg !2427

if.end.i.2:                                       ; preds = %for.body.i.2
  %ob_type.i.2 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.029.i.2, i64 1, i32 0, i32 1, !dbg !2428
  %13 = bitcast %union._gc_head** %ob_type.i.2 to %struct._typeobject**, !dbg !2428
  %14 = load %struct._typeobject*, %struct._typeobject** %13, align 8, !dbg !2428, !tbaa !1157
  %tp_traverse.i.2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 21, !dbg !2429
  %15 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse.i.2, align 8, !dbg !2429, !tbaa !1261
  %call.i.2 = tail call i32 %15(%struct._object* %12, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @referrersvisit to i32 (%struct._object*, i8*)*), i8* %0) #1, !dbg !2430
  %tobool.i.2 = icmp eq i32 %call.i.2, 0, !dbg !2430
  br i1 %tobool.i.2, label %for.cond.backedge.i.2, label %if.then.4.i.2, !dbg !2431

if.then.4.i.2:                                    ; preds = %if.end.i.2
  %call5.i.2 = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %12) #1, !dbg !2432
  %cmp6.i.2 = icmp slt i32 %call5.i.2, 0, !dbg !2435
  br i1 %cmp6.i.2, label %do.body.loopexit, label %for.cond.backedge.i.2, !dbg !2436

for.cond.backedge.i.2:                            ; preds = %if.then.4.i.2, %if.end.i.2, %for.body.i.2
  %gc.0.in.i.2 = getelementptr inbounds %union._gc_head, %union._gc_head* %gc.029.i.2, i64 0, i32 0, i32 0, !dbg !2418
  %gc.0.i.2 = load %union._gc_head*, %union._gc_head** %gc.0.in.i.2, align 8, !dbg !2418
  %cmp.i.2 = icmp eq %union._gc_head* %gc.0.i.2, getelementptr inbounds ([3 x %struct.gc_generation], [3 x %struct.gc_generation]* @generations, i64 0, i64 2, i32 0), !dbg !2419
  br i1 %cmp.i.2, label %cleanup.loopexit, label %for.body.i.2, !dbg !2420
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gc_get_referents(%struct._object* nocapture readnone %self, %struct._object* nocapture readonly %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !627, metadata !1018), !dbg !2445
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !628, metadata !1018), !dbg !2446
  %call = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !630, metadata !1018), !dbg !2448
  %cmp = icmp eq %struct._object* %call, null, !dbg !2449
  br i1 %cmp, label %cleanup.23, label %for.cond.preheader, !dbg !2451

for.cond.preheader:                               ; preds = %entry
  %0 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !2452
  %1 = load i64, i64* %0, align 8, !dbg !2452, !tbaa !1969
  %cmp1.44 = icmp sgt i64 %1, 0, !dbg !2453
  br i1 %cmp1.44, label %for.body.lr.ph, label %cleanup.23, !dbg !2454

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !2455
  %2 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !2455
  %3 = bitcast %struct._object* %call to i8*, !dbg !2456
  br label %for.body, !dbg !2454

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.045 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %2, i64 0, i64 %i.045, !dbg !2455
  %4 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2455, !tbaa !1025
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !635, metadata !1018), !dbg !2457
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !2458
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2458, !tbaa !1157
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !2458
  %6 = load i64, i64* %tp_flags, align 8, !dbg !2458, !tbaa !1617
  %and = and i64 %6, 16384, !dbg !2458
  %cmp2 = icmp eq i64 %and, 0, !dbg !2458
  br i1 %cmp2, label %for.inc, label %land.lhs.true, !dbg !2458

land.lhs.true:                                    ; preds = %for.body
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 39, !dbg !2460
  %7 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !2460, !tbaa !2391
  %cmp4 = icmp eq i32 (%struct._object*)* %7, null, !dbg !2460
  br i1 %cmp4, label %if.end.9, label %lor.lhs.false, !dbg !2460

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call7 = tail call i32 %7(%struct._object* %4) #1, !dbg !2462
  %tobool = icmp eq i32 %call7, 0, !dbg !2462
  br i1 %tobool, label %for.inc, label %lor.lhs.false.if.end.9_crit_edge, !dbg !2464

lor.lhs.false.if.end.9_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2465, !tbaa !1157
  br label %if.end.9, !dbg !2464

if.end.9:                                         ; preds = %lor.lhs.false.if.end.9_crit_edge, %land.lhs.true
  %8 = phi %struct._typeobject* [ %.pre, %lor.lhs.false.if.end.9_crit_edge ], [ %5, %land.lhs.true ], !dbg !2465
  %tp_traverse = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 21, !dbg !2466
  %9 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %tp_traverse, align 8, !dbg !2466, !tbaa !1261
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %9, i64 0, metadata !631, metadata !1018), !dbg !2467
  %tobool11 = icmp eq i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %9, null, !dbg !2468
  br i1 %tobool11, label %for.inc, label %if.end.13, !dbg !2470

if.end.13:                                        ; preds = %if.end.9
  %call14 = tail call i32 %9(%struct._object* %4, i32 (%struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @referentsvisit to i32 (%struct._object*, i8*)*), i8* %3) #1, !dbg !2471
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2471
  br i1 %tobool15, label %for.inc, label %do.body, !dbg !2472

do.body:                                          ; preds = %if.end.13
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !636, metadata !1018), !dbg !2473
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2475
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !2475, !tbaa !1040
  %dec = add i64 %10, -1, !dbg !2475
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2475, !tbaa !1040
  %cmp17 = icmp eq i64 %dec, 0, !dbg !2475
  br i1 %cmp17, label %if.else, label %cleanup.23, !dbg !2477

if.else:                                          ; preds = %do.body
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2478
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !2478, !tbaa !1157
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2478
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2478, !tbaa !1172
  tail call void %12(%struct._object* %call) #1, !dbg !2478
  br label %cleanup.23

for.inc:                                          ; preds = %lor.lhs.false, %for.body, %if.end.9, %if.end.13
  %inc = add i64 %i.045, 1, !dbg !2480
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !629, metadata !1018), !dbg !2481
  %13 = load i64, i64* %0, align 8, !dbg !2452, !tbaa !1969
  %cmp1 = icmp slt i64 %inc, %13, !dbg !2453
  br i1 %cmp1, label %for.body, label %cleanup.23.loopexit, !dbg !2454

cleanup.23.loopexit:                              ; preds = %for.inc
  br label %cleanup.23, !dbg !2482

cleanup.23:                                       ; preds = %cleanup.23.loopexit, %for.cond.preheader, %do.body, %if.else, %entry
  %retval.2 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body ], [ %call, %for.cond.preheader ], [ %call, %cleanup.23.loopexit ]
  ret %struct._object* %retval.2, !dbg !2482
}

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind readonly uwtable
define internal i32 @referrersvisit(%struct._object* readnone %obj, %struct._object* nocapture readonly %objs) #5 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !622, metadata !1018), !dbg !2483
  tail call void @llvm.dbg.value(metadata %struct._object* %objs, i64 0, metadata !623, metadata !1018), !dbg !2484
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !624, metadata !1018), !dbg !2485
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %objs, i64 1, i32 1, !dbg !2486
  %0 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !2486
  %1 = getelementptr inbounds %struct._object, %struct._object* %objs, i64 1, i32 0, !dbg !2490
  %2 = load i64, i64* %1, align 8, !dbg !2490, !tbaa !1969
  %cmp.6 = icmp sgt i64 %2, 0, !dbg !2491
  br i1 %cmp.6, label %for.body.preheader, label %cleanup, !dbg !2492

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !2486

for.cond:                                         ; preds = %for.body
  %cmp = icmp slt i64 %inc, %2, !dbg !2491
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !2492

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.07 = phi i64 [ %inc, %for.cond ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %0, i64 0, i64 %i.07, !dbg !2486
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2486, !tbaa !1025
  %cmp1 = icmp eq %struct._object* %3, %obj, !dbg !2493
  %inc = add i64 %i.07, 1, !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !624, metadata !1018), !dbg !2485
  br i1 %cmp1, label %cleanup.loopexit, label %for.cond, !dbg !2495

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i32 [ 1, %for.body ], [ 0, %for.cond ]
  br label %cleanup, !dbg !2496

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.loopexit ]
  ret i32 %retval.0, !dbg !2496
}

; Function Attrs: nounwind uwtable
define internal i32 @referentsvisit(%struct._object* %obj, %struct._object* %list) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !642, metadata !1018), !dbg !2497
  tail call void @llvm.dbg.value(metadata %struct._object* %list, i64 0, metadata !643, metadata !1018), !dbg !2498
  %call = tail call i32 @PyList_Append(%struct._object* %list, %struct._object* %obj) #1, !dbg !2499
  %call.lobit = lshr i32 %call, 31, !dbg !2500
  ret i32 %call.lobit, !dbg !2501
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invoke_gc_callback(i8* %phase, i32 %generation, i64 %collected, i64 %uncollectable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %phase, i64 0, metadata !656, metadata !1018), !dbg !2502
  tail call void @llvm.dbg.value(metadata i32 %generation, i64 0, metadata !657, metadata !1018), !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %collected, i64 0, metadata !658, metadata !1018), !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %uncollectable, i64 0, metadata !659, metadata !1018), !dbg !2505
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !661, metadata !1018), !dbg !2506
  %0 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !2507, !tbaa !1025
  %cmp = icmp eq %struct._object* %0, null, !dbg !2509
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2510

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %0, i64 1, i32 0, !dbg !2511
  %2 = load i64, i64* %1, align 8, !dbg !2511, !tbaa !1969
  %cmp1 = icmp eq i64 %2, 0, !dbg !2513
  br i1 %cmp1, label %cleanup, label %if.then.2, !dbg !2514

if.then.2:                                        ; preds = %if.end
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 %generation, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 %collected, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i64 %uncollectable) #1, !dbg !2515
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !661, metadata !1018), !dbg !2506
  %cmp3 = icmp eq %struct._object* %call, null, !dbg !2517
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !2519

if.then.4:                                        ; preds = %if.then.2
  tail call void @PyErr_WriteUnraisable(%struct._object* null) #1, !dbg !2520
  br label %cleanup, !dbg !2522

if.end.6:                                         ; preds = %if.then.2
  %.pre = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !2523, !tbaa !1025
  %.phi.trans.insert = getelementptr inbounds %struct._object, %struct._object* %.pre, i64 1, i32 0, !dbg !2523
  %.pre83 = load i64, i64* %.phi.trans.insert, align 8, !dbg !2523, !tbaa !1969
  %phitmp = icmp sgt i64 %.pre83, 0, !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !660, metadata !1018), !dbg !2524
  br i1 %phitmp, label %for.body.preheader, label %do.body.40, !dbg !2525

for.body.preheader:                               ; preds = %if.end.6
  br label %for.body, !dbg !2526

for.body:                                         ; preds = %for.body.preheader, %if.end.32
  %3 = phi %struct._object* [ %14, %if.end.32 ], [ %.pre, %for.body.preheader ]
  %i.082 = phi i64 [ %inc35, %if.end.32 ], [ 0, %for.body.preheader ]
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %3, i64 1, i32 1, !dbg !2526
  %4 = bitcast %struct._typeobject** %ob_item to %struct._object***, !dbg !2526
  %5 = load %struct._object**, %struct._object*** %4, align 8, !dbg !2526, !tbaa !2527
  %arrayidx = getelementptr %struct._object*, %struct._object** %5, i64 %i.082, !dbg !2526
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2526, !tbaa !1025
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !666, metadata !1018), !dbg !2529
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !2530
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !2530, !tbaa !1040
  %inc = add i64 %7, 1, !dbg !2530
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2530, !tbaa !1040
  %call9 = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %phase, %struct._object* %call) #1, !dbg !2531
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !662, metadata !1018), !dbg !2532
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !667, metadata !1018), !dbg !2533
  %cond = icmp eq %struct._object* %call9, null, !dbg !2535
  br i1 %cond, label %if.then.21, label %do.body.12, !dbg !2535

do.body.12:                                       ; preds = %for.body
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !669, metadata !1018), !dbg !2536
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 0, !dbg !2538
  %8 = load i64, i64* %ob_refcnt13, align 8, !dbg !2538, !tbaa !1040
  %dec = add i64 %8, -1, !dbg !2538
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !2538, !tbaa !1040
  %cmp14 = icmp eq i64 %dec, 0, !dbg !2538
  br i1 %cmp14, label %if.else, label %do.body.23, !dbg !2540

if.else:                                          ; preds = %do.body.12
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 1, !dbg !2541
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2541, !tbaa !1157
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !2541
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2541, !tbaa !1172
  tail call void %10(%struct._object* %call9) #1, !dbg !2541
  br label %do.body.23

if.then.21:                                       ; preds = %for.body
  tail call void @PyErr_WriteUnraisable(%struct._object* %6) #1, !dbg !2543
  br label %do.body.23, !dbg !2543

do.body.23:                                       ; preds = %do.body.12, %if.else, %if.then.21
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !672, metadata !1018), !dbg !2545
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !2547, !tbaa !1040
  %dec26 = add i64 %11, -1, !dbg !2547
  store i64 %dec26, i64* %ob_refcnt, align 8, !dbg !2547, !tbaa !1040
  %cmp27 = icmp eq i64 %dec26, 0, !dbg !2547
  br i1 %cmp27, label %if.else.29, label %if.end.32, !dbg !2549

if.else.29:                                       ; preds = %do.body.23
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !2550
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !2550, !tbaa !1157
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !2550
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !2550, !tbaa !1172
  tail call void %13(%struct._object* %6) #1, !dbg !2550
  br label %if.end.32

if.end.32:                                        ; preds = %do.body.23, %if.else.29
  %inc35 = add i64 %i.082, 1, !dbg !2552
  tail call void @llvm.dbg.value(metadata i64 %inc35, i64 0, metadata !660, metadata !1018), !dbg !2524
  %14 = load %struct._object*, %struct._object** @callbacks, align 8, !dbg !2523, !tbaa !1025
  %15 = getelementptr inbounds %struct._object, %struct._object* %14, i64 1, i32 0, !dbg !2523
  %16 = load i64, i64* %15, align 8, !dbg !2523, !tbaa !1969
  %cmp8 = icmp slt i64 %inc35, %16, !dbg !2553
  br i1 %cmp8, label %for.body, label %do.body.36, !dbg !2525

do.body.36:                                       ; preds = %if.end.32
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !674, metadata !1018), !dbg !2554
  %cmp38 = icmp eq %struct._object* %call, null, !dbg !2556
  br i1 %cmp38, label %cleanup, label %do.body.40, !dbg !2557

do.body.40:                                       ; preds = %if.end.6, %do.body.36
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !676, metadata !1018), !dbg !2558
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2560
  %17 = load i64, i64* %ob_refcnt42, align 8, !dbg !2560, !tbaa !1040
  %dec43 = add i64 %17, -1, !dbg !2560
  store i64 %dec43, i64* %ob_refcnt42, align 8, !dbg !2560, !tbaa !1040
  %cmp44 = icmp eq i64 %dec43, 0, !dbg !2560
  br i1 %cmp44, label %if.else.46, label %cleanup, !dbg !2562

if.else.46:                                       ; preds = %do.body.40
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2563
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !2563, !tbaa !1157
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !2563
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !2563, !tbaa !1172
  tail call void %19(%struct._object* %call) #1, !dbg !2563
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body.36, %do.body.40, %if.else.46, %entry, %if.then.4
  ret void, !dbg !2565
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare double @PyFloat_AsDouble(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @visit_decref(%struct._object* %op, i8* nocapture readnone %data) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !742, metadata !1018), !dbg !2566
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !743, metadata !1018), !dbg !2567
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !2568
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2568, !tbaa !1157
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2568
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2568, !tbaa !1617
  %and = and i64 %1, 16384, !dbg !2568
  %cmp = icmp eq i64 %and, 0, !dbg !2568
  br i1 %cmp, label %if.end.10, label %land.lhs.true, !dbg !2568

land.lhs.true:                                    ; preds = %entry
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 39, !dbg !2569
  %2 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !2569, !tbaa !2391
  %cmp2 = icmp eq i32 (%struct._object*)* %2, null, !dbg !2569
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !2569

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call i32 %2(%struct._object* %op) #1, !dbg !2571
  %tobool = icmp eq i32 %call, 0, !dbg !2571
  br i1 %tobool, label %if.end.10, label %if.then, !dbg !2573

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %add.ptr = getelementptr %struct._object, %struct._object* %op, i64 -2, i32 1, !dbg !2574
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !2575
  %3 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !2575
  %4 = load i64, i64* %3, align 8, !dbg !2575, !tbaa !1249
  %shr = ashr i64 %4, 1, !dbg !2575
  %cmp6 = icmp sgt i64 %shr, 0, !dbg !2577
  br i1 %cmp6, label %if.then.7, label %if.end.10, !dbg !2578

if.then.7:                                        ; preds = %if.then
  %sub = add i64 %4, -2, !dbg !2579
  store i64 %sub, i64* %3, align 8, !dbg !2579, !tbaa !1249
  br label %if.end.10, !dbg !2579

if.end.10:                                        ; preds = %if.then, %if.then.7, %lor.lhs.false, %entry
  ret i32 0, !dbg !2580
}

; Function Attrs: nounwind uwtable
define internal i32 @visit_reachable(%struct._object* %op, %union._gc_head* %reachable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !763, metadata !1018), !dbg !2581
  tail call void @llvm.dbg.value(metadata %union._gc_head* %reachable, i64 0, metadata !764, metadata !1018), !dbg !2582
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !2583
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2583, !tbaa !1157
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2583
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2583, !tbaa !1617
  %and = and i64 %1, 16384, !dbg !2583
  %cmp = icmp eq i64 %and, 0, !dbg !2583
  br i1 %cmp, label %if.end.27, label %land.lhs.true, !dbg !2583

land.lhs.true:                                    ; preds = %entry
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 39, !dbg !2584
  %2 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !2584, !tbaa !2391
  %cmp2 = icmp eq i32 (%struct._object*)* %2, null, !dbg !2584
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !2584

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call i32 %2(%struct._object* %op) #1, !dbg !2586
  %tobool = icmp eq i32 %call, 0, !dbg !2586
  br i1 %tobool, label %if.end.27, label %if.then, !dbg !2588

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %add.ptr = getelementptr %struct._object, %struct._object* %op, i64 -2, i32 1, !dbg !2589
  %gc_refs6 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !2590
  %3 = bitcast %struct._typeobject** %gc_refs6 to i64*, !dbg !2590
  %4 = load i64, i64* %3, align 8, !dbg !2591, !tbaa !1249
  %shr = ashr i64 %4, 1, !dbg !2590
  tail call void @llvm.dbg.value(metadata i64 %shr, i64 0, metadata !768, metadata !1018), !dbg !2597
  switch i64 %shr, label %if.end.27 [
    i64 0, label %do.body
    i64 -4, label %if.then.15
  ], !dbg !2598

do.body:                                          ; preds = %if.then
  %and11 = and i64 %4, 1, !dbg !2599
  %or = or i64 %and11, 2, !dbg !2599
  store i64 %or, i64* %3, align 8, !dbg !2599, !tbaa !1249
  br label %if.end.27, !dbg !2603

if.then.15:                                       ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %union._gc_head* %reachable, i64 0, metadata !773, metadata !1018), !dbg !2604
  %gc_prev.i = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !2606
  %5 = bitcast %struct._typeobject** %gc_prev.i to %union._gc_head**, !dbg !2606
  %6 = load %union._gc_head*, %union._gc_head** %5, align 8, !dbg !2606, !tbaa !1217
  tail call void @llvm.dbg.value(metadata %union._gc_head* %6, i64 0, metadata !775, metadata !1018), !dbg !2607
  %gc_next.i = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !2608
  %7 = load %union._gc_head*, %union._gc_head** %gc_next.i, align 8, !dbg !2608, !tbaa !1211
  tail call void @llvm.dbg.value(metadata %union._gc_head* %7, i64 0, metadata !776, metadata !1018), !dbg !2609
  %gc_next3.i = getelementptr inbounds %union._gc_head, %union._gc_head* %6, i64 0, i32 0, i32 0, !dbg !2610
  store %union._gc_head* %7, %union._gc_head** %gc_next3.i, align 8, !dbg !2611, !tbaa !1211
  %gc_prev5.i = getelementptr inbounds %union._gc_head, %union._gc_head* %7, i64 0, i32 0, i32 1, !dbg !2612
  store %union._gc_head* %6, %union._gc_head** %gc_prev5.i, align 8, !dbg !2613, !tbaa !1217
  %gc_prev7.i = getelementptr inbounds %union._gc_head, %union._gc_head* %reachable, i64 0, i32 0, i32 1, !dbg !2614
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev7.i, align 8, !dbg !2614, !tbaa !1217
  store %union._gc_head* %8, %union._gc_head** %5, align 8, !dbg !2615, !tbaa !1217
  tail call void @llvm.dbg.value(metadata %union._gc_head* %8, i64 0, metadata !774, metadata !1018), !dbg !2616
  %9 = bitcast %union._gc_head** %gc_prev7.i to %struct._typeobject***, !dbg !2617
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %9, align 8, !dbg !2617, !tbaa !1217
  %10 = bitcast %union._gc_head* %8 to %struct._typeobject***, !dbg !2618
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %10, align 8, !dbg !2618, !tbaa !1211
  store %union._gc_head* %reachable, %union._gc_head** %gc_next.i, align 8, !dbg !2619, !tbaa !1211
  %and19 = and i64 %4, 1, !dbg !2591
  %or20 = or i64 %and19, 2, !dbg !2591
  store i64 %or20, i64* %3, align 8, !dbg !2591, !tbaa !1249
  br label %if.end.27, !dbg !2620

if.end.27:                                        ; preds = %do.body, %if.then.15, %if.then, %lor.lhs.false, %entry
  ret i32 0, !dbg !2621
}

declare void @_PyTuple_MaybeUntrack(%struct._object*) #3

declare void @_PyDict_MaybeUntrack(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @visit_move(%struct._object* %op, %union._gc_head* %tolist) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !804, metadata !1018), !dbg !2622
  tail call void @llvm.dbg.value(metadata %union._gc_head* %tolist, i64 0, metadata !805, metadata !1018), !dbg !2623
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !2624
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2624, !tbaa !1157
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2624
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2624, !tbaa !1617
  %and = and i64 %1, 16384, !dbg !2624
  %cmp = icmp eq i64 %and, 0, !dbg !2624
  br i1 %cmp, label %if.end.14, label %land.lhs.true, !dbg !2624

land.lhs.true:                                    ; preds = %entry
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 39, !dbg !2625
  %2 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !2625, !tbaa !2391
  %cmp2 = icmp eq i32 (%struct._object*)* %2, null, !dbg !2625
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !2625

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call i32 %2(%struct._object* %op) #1, !dbg !2627
  %tobool = icmp eq i32 %call, 0, !dbg !2627
  br i1 %tobool, label %if.end.14, label %if.then, !dbg !2629

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %add.ptr = getelementptr %struct._object, %struct._object* %op, i64 -2, i32 1, !dbg !2630
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !2630
  %3 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !2630
  %4 = load i64, i64* %3, align 8, !dbg !2631, !tbaa !1249
  %shr.mask = and i64 %4, -2, !dbg !2630
  %cmp5 = icmp eq i64 %shr.mask, -8, !dbg !2630
  br i1 %cmp5, label %if.then.6, label %if.end.14, !dbg !2634

if.then.6:                                        ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %union._gc_head* %tolist, i64 0, metadata !773, metadata !1018), !dbg !2635
  %gc_prev.i = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !2637
  %5 = bitcast %struct._typeobject** %gc_prev.i to %union._gc_head**, !dbg !2637
  %6 = load %union._gc_head*, %union._gc_head** %5, align 8, !dbg !2637, !tbaa !1217
  tail call void @llvm.dbg.value(metadata %union._gc_head* %6, i64 0, metadata !775, metadata !1018), !dbg !2638
  %gc_next.i = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !2639
  %7 = load %union._gc_head*, %union._gc_head** %gc_next.i, align 8, !dbg !2639, !tbaa !1211
  tail call void @llvm.dbg.value(metadata %union._gc_head* %7, i64 0, metadata !776, metadata !1018), !dbg !2640
  %gc_next3.i = getelementptr inbounds %union._gc_head, %union._gc_head* %6, i64 0, i32 0, i32 0, !dbg !2641
  store %union._gc_head* %7, %union._gc_head** %gc_next3.i, align 8, !dbg !2642, !tbaa !1211
  %gc_prev5.i = getelementptr inbounds %union._gc_head, %union._gc_head* %7, i64 0, i32 0, i32 1, !dbg !2643
  store %union._gc_head* %6, %union._gc_head** %gc_prev5.i, align 8, !dbg !2644, !tbaa !1217
  %gc_prev7.i = getelementptr inbounds %union._gc_head, %union._gc_head* %tolist, i64 0, i32 0, i32 1, !dbg !2645
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev7.i, align 8, !dbg !2645, !tbaa !1217
  store %union._gc_head* %8, %union._gc_head** %5, align 8, !dbg !2646, !tbaa !1217
  tail call void @llvm.dbg.value(metadata %union._gc_head* %8, i64 0, metadata !774, metadata !1018), !dbg !2647
  %9 = bitcast %union._gc_head** %gc_prev7.i to %struct._typeobject***, !dbg !2648
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %9, align 8, !dbg !2648, !tbaa !1217
  %10 = bitcast %union._gc_head* %8 to %struct._typeobject***, !dbg !2649
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %10, align 8, !dbg !2649, !tbaa !1211
  store %union._gc_head* %tolist, %union._gc_head** %gc_next.i, align 8, !dbg !2650, !tbaa !1211
  %and11 = and i64 %4, 1, !dbg !2631
  %or = or i64 %and11, -6, !dbg !2631
  store i64 %or, i64* %3, align 8, !dbg !2631, !tbaa !1249
  br label %if.end.14, !dbg !2651

if.end.14:                                        ; preds = %lor.lhs.false, %entry, %if.then, %if.then.6
  ret i32 0, !dbg !2652
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

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1014, !1015}
!llvm.ident = !{!1016}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !395, globals: !896)
!1 = !DIFile(filename: "Modules/gcmodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343, !344, !352, !94, !11, !17, !263, !366, !374, !383, !381, !52, !384}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!346 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!347 = !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 31, size: 320, align: 64, elements: !348)
!348 = !{!349, !350, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !347, file: !346, line: 32, baseType: !23, size: 192, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !347, file: !346, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !347, file: !346, line: 34, baseType: !81, size: 8, align: 8, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !354, line: 253, baseType: !355)
!354 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!368 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!369 = !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 25, size: 256, align: 64, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !369, file: !368, line: 26, baseType: !23, size: 192, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !369, file: !368, line: 27, baseType: !373, size: 64, align: 64, offset: 192)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !376, line: 40, baseType: !377)
!376 = !DIFile(filename: "Include/listobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!377 = !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 23, size: 320, align: 64, elements: !378)
!378 = !{!379, !380, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !377, file: !376, line: 24, baseType: !23, size: 192, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !377, file: !376, line: 26, baseType: !381, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !377, file: !376, line: 39, baseType: !11, size: 64, align: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWeakReference", file: !386, line: 10, baseType: !387)
!386 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PyWeakReference", file: !386, line: 16, size: 448, align: 64, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !387, file: !386, line: 17, baseType: !6, size: 128, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wr_object", scope: !387, file: !386, line: 23, baseType: !5, size: 64, align: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !387, file: !386, line: 26, baseType: !5, size: 64, align: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !387, file: !386, line: 31, baseType: !218, size: 64, align: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wr_prev", scope: !387, file: !386, line: 38, baseType: !384, size: 64, align: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wr_next", scope: !387, file: !386, line: 39, baseType: !384, size: 64, align: 64, offset: 384)
!395 = !{!396, !401, !406, !409, !430, !444, !449, !454, !460, !467, !475, !483, !492, !496, !500, !504, !508, !512, !516, !520, !525, !529, !536, !549, !560, !592, !597, !610, !620, !625, !640, !644, !652, !679, !700, !707, !719, !726, !731, !735, !740, !747, !750, !761, !770, !777, !784, !794, !797, !802, !811, !817, !845, !857, !861, !865, !879, !888, !889, !893}
!396 = !DISubprogram(name: "PyInit_gc", scope: !1, file: !1, line: 1557, type: !397, isLocal: false, isDefinition: true, scopeLine: 1558, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_gc, variables: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{!5}
!399 = !{!400}
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !396, file: !1, line: 1559, type: !5)
!401 = !DISubprogram(name: "PyGC_Collect", scope: !1, file: !1, line: 1608, type: !402, isLocal: false, isDefinition: true, scopeLine: 1609, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @PyGC_Collect, variables: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!11}
!404 = !{!405}
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !401, file: !1, line: 1610, type: !11)
!406 = !DISubprogram(name: "_PyGC_CollectNoFail", scope: !1, file: !1, line: 1624, type: !402, isLocal: false, isDefinition: true, scopeLine: 1625, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @_PyGC_CollectNoFail, variables: !407)
!407 = !{!408}
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !406, file: !1, line: 1626, type: !11)
!409 = !DISubprogram(name: "_PyGC_DumpShutdownStats", scope: !1, file: !1, line: 1645, type: !410, isLocal: false, isDefinition: true, scopeLine: 1646, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyGC_DumpShutdownStats, variables: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{null}
!412 = !{!413, !416, !419, !420, !422, !425, !427}
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !414, file: !1, line: 1649, type: !52)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 1648, column: 61)
!415 = distinct !DILexicalBlock(scope: !409, file: !1, line: 1647, column: 9)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repr", scope: !417, file: !1, line: 1664, type: !5)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 1663, column: 42)
!418 = distinct !DILexicalBlock(scope: !414, file: !1, line: 1663, column: 13)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !417, file: !1, line: 1664, type: !5)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !421, file: !1, line: 1674, type: !5)
!421 = distinct !DILexicalBlock(scope: !417, file: !1, line: 1674, column: 13)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !423, file: !1, line: 1674, type: !5)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 1674, column: 13)
!424 = distinct !DILexicalBlock(scope: !421, file: !1, line: 1674, column: 13)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !426, file: !1, line: 1675, type: !5)
!426 = distinct !DILexicalBlock(scope: !417, file: !1, line: 1675, column: 13)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !428, file: !1, line: 1675, type: !5)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 1675, column: 13)
!429 = distinct !DILexicalBlock(scope: !426, file: !1, line: 1675, column: 13)
!430 = !DISubprogram(name: "_PyGC_Fini", scope: !1, file: !1, line: 1681, type: !410, isLocal: false, isDefinition: true, scopeLine: 1682, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyGC_Fini, variables: !431)
!431 = !{!432, !434, !438, !440}
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !433, file: !1, line: 1683, type: !5)
!433 = distinct !DILexicalBlock(scope: !430, file: !1, line: 1683, column: 5)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !435, file: !1, line: 1683, type: !5)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 1683, column: 5)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1683, column: 5)
!437 = distinct !DILexicalBlock(scope: !433, file: !1, line: 1683, column: 5)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !439, file: !1, line: 1684, type: !5)
!439 = distinct !DILexicalBlock(scope: !430, file: !1, line: 1684, column: 5)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !441, file: !1, line: 1684, type: !5)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 1684, column: 5)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 1684, column: 5)
!443 = distinct !DILexicalBlock(scope: !439, file: !1, line: 1684, column: 5)
!444 = !DISubprogram(name: "_PyGC_Dump", scope: !1, file: !1, line: 1689, type: !445, isLocal: false, isDefinition: true, scopeLine: 1690, flags: DIFlagPrototyped, isOptimized: true, function: void (%union._gc_head*)* @_PyGC_Dump, variables: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !352}
!447 = !{!448}
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !444, file: !1, line: 1689, type: !352)
!449 = !DISubprogram(name: "PyObject_GC_Track", scope: !1, file: !1, line: 1703, type: !331, isLocal: false, isDefinition: true, scopeLine: 1704, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyObject_GC_Track, variables: !450)
!450 = !{!451, !452}
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !449, file: !1, line: 1703, type: !4)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !453, file: !1, line: 1705, type: !352)
!453 = distinct !DILexicalBlock(scope: !449, file: !1, line: 1705, column: 5)
!454 = !DISubprogram(name: "PyObject_GC_UnTrack", scope: !1, file: !1, line: 1709, type: !331, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyObject_GC_UnTrack, variables: !455)
!455 = !{!456, !457}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !454, file: !1, line: 1709, type: !4)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !458, file: !1, line: 1715, type: !352)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 1715, column: 9)
!459 = distinct !DILexicalBlock(scope: !454, file: !1, line: 1714, column: 9)
!460 = !DISubprogram(name: "_PyObject_GC_Malloc", scope: !1, file: !1, line: 1719, type: !461, isLocal: false, isDefinition: true, scopeLine: 1720, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64)* @_PyObject_GC_Malloc, variables: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!5, !94}
!463 = !{!464, !465, !466}
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "basicsize", arg: 1, scope: !460, file: !1, line: 1719, type: !94)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !460, file: !1, line: 1721, type: !5)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !460, file: !1, line: 1722, type: !352)
!467 = !DISubprogram(name: "_PyObject_GC_New", scope: !1, file: !1, line: 1746, type: !468, isLocal: false, isDefinition: true, scopeLine: 1747, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*)* @_PyObject_GC_New, variables: !472)
!468 = !DISubroutineType(types: !469)
!469 = !{!5, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!472 = !{!473, !474}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tp", arg: 1, scope: !467, file: !1, line: 1746, type: !470)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !467, file: !1, line: 1748, type: !5)
!475 = !DISubprogram(name: "_PyObject_GC_NewVar", scope: !1, file: !1, line: 1755, type: !476, isLocal: false, isDefinition: true, scopeLine: 1756, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyVarObject* (%struct._typeobject*, i64)* @_PyObject_GC_NewVar, variables: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!343, !470, !11}
!478 = !{!479, !480, !481, !482}
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tp", arg: 1, scope: !475, file: !1, line: 1755, type: !470)
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nitems", arg: 2, scope: !475, file: !1, line: 1755, type: !11)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !475, file: !1, line: 1757, type: !94)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !475, file: !1, line: 1758, type: !343)
!483 = !DISubprogram(name: "_PyObject_GC_Resize", scope: !1, file: !1, line: 1772, type: !484, isLocal: false, isDefinition: true, scopeLine: 1773, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyVarObject* (%struct.PyVarObject*, i64)* @_PyObject_GC_Resize, variables: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!343, !343, !11}
!486 = !{!487, !488, !489, !491}
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !483, file: !1, line: 1772, type: !343)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nitems", arg: 2, scope: !483, file: !1, line: 1772, type: !11)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "basicsize", scope: !483, file: !1, line: 1774, type: !490)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !483, file: !1, line: 1775, type: !352)
!492 = !DISubprogram(name: "PyObject_GC_Del", scope: !1, file: !1, line: 1787, type: !331, isLocal: false, isDefinition: true, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyObject_GC_Del, variables: !493)
!493 = !{!494, !495}
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !492, file: !1, line: 1787, type: !4)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !492, file: !1, line: 1789, type: !352)
!496 = !DISubprogram(name: "gc_enable", scope: !1, file: !1, line: 1176, type: !126, isLocal: true, isDefinition: true, scopeLine: 1177, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_enable, variables: !497)
!497 = !{!498, !499}
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !496, file: !1, line: 1176, type: !5)
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !496, file: !1, line: 1176, type: !5)
!500 = !DISubprogram(name: "gc_disable", scope: !1, file: !1, line: 1189, type: !126, isLocal: true, isDefinition: true, scopeLine: 1190, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_disable, variables: !501)
!501 = !{!502, !503}
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !500, file: !1, line: 1189, type: !5)
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !500, file: !1, line: 1189, type: !5)
!504 = !DISubprogram(name: "gc_isenabled", scope: !1, file: !1, line: 1202, type: !126, isLocal: true, isDefinition: true, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_isenabled, variables: !505)
!505 = !{!506, !507}
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !504, file: !1, line: 1202, type: !5)
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !504, file: !1, line: 1202, type: !5)
!508 = !DISubprogram(name: "gc_set_debug", scope: !1, file: !1, line: 1256, type: !126, isLocal: true, isDefinition: true, scopeLine: 1257, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_set_debug, variables: !509)
!509 = !{!510, !511}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !508, file: !1, line: 1256, type: !5)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !508, file: !1, line: 1256, type: !5)
!512 = !DISubprogram(name: "gc_get_debug", scope: !1, file: !1, line: 1271, type: !126, isLocal: true, isDefinition: true, scopeLine: 1272, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_debug, variables: !513)
!513 = !{!514, !515}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !512, file: !1, line: 1271, type: !5)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !512, file: !1, line: 1271, type: !5)
!516 = !DISubprogram(name: "gc_get_count", scope: !1, file: !1, line: 1320, type: !126, isLocal: true, isDefinition: true, scopeLine: 1321, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_count, variables: !517)
!517 = !{!518, !519}
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !516, file: !1, line: 1320, type: !5)
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !516, file: !1, line: 1320, type: !5)
!520 = !DISubprogram(name: "gc_set_thresh", scope: !1, file: !1, line: 1283, type: !126, isLocal: true, isDefinition: true, scopeLine: 1284, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_set_thresh, variables: !521)
!521 = !{!522, !523, !524}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !520, file: !1, line: 1283, type: !5)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !520, file: !1, line: 1283, type: !5)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !520, file: !1, line: 1285, type: !44)
!525 = !DISubprogram(name: "gc_get_thresh", scope: !1, file: !1, line: 1306, type: !126, isLocal: true, isDefinition: true, scopeLine: 1307, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_thresh, variables: !526)
!526 = !{!527, !528}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !525, file: !1, line: 1306, type: !5)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !525, file: !1, line: 1306, type: !5)
!529 = !DISubprogram(name: "gc_collect", scope: !1, file: !1, line: 1216, type: !135, isLocal: true, isDefinition: true, scopeLine: 1217, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @gc_collect, variables: !530)
!530 = !{!531, !532, !533, !534, !535}
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !529, file: !1, line: 1216, type: !5)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !529, file: !1, line: 1216, type: !5)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kws", arg: 3, scope: !529, file: !1, line: 1216, type: !5)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "genarg", scope: !529, file: !1, line: 1219, type: !44)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !529, file: !1, line: 1220, type: !11)
!536 = !DISubprogram(name: "gc_get_objects", scope: !1, file: !1, line: 1421, type: !126, isLocal: true, isDefinition: true, scopeLine: 1422, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_objects, variables: !537)
!537 = !{!538, !539, !540, !541, !542}
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !536, file: !1, line: 1421, type: !5)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !536, file: !1, line: 1421, type: !5)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !536, file: !1, line: 1423, type: !44)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !536, file: !1, line: 1424, type: !5)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !543, file: !1, line: 1431, type: !5)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 1431, column: 13)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 1430, column: 50)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 1430, column: 13)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 1429, column: 43)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 1429, column: 5)
!548 = distinct !DILexicalBlock(scope: !536, file: !1, line: 1429, column: 5)
!549 = !DISubprogram(name: "append_objects", scope: !1, file: !1, line: 318, type: !550, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, variables: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!44, !5, !352}
!552 = !{!553, !554, !555, !556}
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "py_list", arg: 1, scope: !549, file: !1, line: 318, type: !5)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gc_list", arg: 2, scope: !549, file: !1, line: 318, type: !352)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !549, file: !1, line: 320, type: !352)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !557, file: !1, line: 322, type: !5)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 321, column: 72)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 321, column: 5)
!559 = distinct !DILexicalBlock(scope: !549, file: !1, line: 321, column: 5)
!560 = !DISubprogram(name: "gc_get_stats", scope: !1, file: !1, line: 1444, type: !126, isLocal: true, isDefinition: true, scopeLine: 1445, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_stats, variables: !561)
!561 = !{!562, !563, !564, !565, !566, !575, !577, !581, !585, !587, !589}
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !560, file: !1, line: 1444, type: !5)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !560, file: !1, line: 1444, type: !5)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !560, file: !1, line: 1446, type: !44)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !560, file: !1, line: 1447, type: !5)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stats", scope: !560, file: !1, line: 1448, type: !567)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 576, align: 64, elements: !573)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "gc_generation_stats", file: !1, line: 172, size: 192, align: 64, elements: !569)
!569 = !{!570, !571, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "collections", scope: !568, file: !1, line: 174, baseType: !11, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "collected", scope: !568, file: !1, line: 176, baseType: !11, size: 64, align: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "uncollectable", scope: !568, file: !1, line: 178, baseType: !11, size: 64, align: 64, offset: 128)
!573 = !{!574}
!574 = !DISubrange(count: 3)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !560, file: !1, line: 1448, type: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !578, file: !1, line: 1461, type: !5)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 1460, column: 43)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 1460, column: 5)
!580 = distinct !DILexicalBlock(scope: !560, file: !1, line: 1460, column: 5)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !582, file: !1, line: 1471, type: !5)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 1471, column: 13)
!583 = distinct !DILexicalBlock(scope: !584, file: !1, line: 1470, column: 42)
!584 = distinct !DILexicalBlock(scope: !578, file: !1, line: 1470, column: 13)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !586, file: !1, line: 1474, type: !5)
!586 = distinct !DILexicalBlock(scope: !578, file: !1, line: 1474, column: 9)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !588, file: !1, line: 1479, type: !5)
!588 = distinct !DILexicalBlock(scope: !560, file: !1, line: 1479, column: 5)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !1, line: 1479, type: !5)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 1479, column: 5)
!591 = distinct !DILexicalBlock(scope: !588, file: !1, line: 1479, column: 5)
!592 = !DISubprogram(name: "gc_is_tracked", scope: !1, file: !1, line: 1492, type: !126, isLocal: true, isDefinition: true, scopeLine: 1493, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_is_tracked, variables: !593)
!593 = !{!594, !595, !596}
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !592, file: !1, line: 1492, type: !5)
!595 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !592, file: !1, line: 1492, type: !5)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !592, file: !1, line: 1494, type: !5)
!597 = !DISubprogram(name: "gc_get_referrers", scope: !1, file: !1, line: 1362, type: !126, isLocal: true, isDefinition: true, scopeLine: 1363, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_referrers, variables: !598)
!598 = !{!599, !600, !601, !602, !603}
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !597, file: !1, line: 1362, type: !5)
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !597, file: !1, line: 1362, type: !5)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !597, file: !1, line: 1364, type: !44)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !597, file: !1, line: 1365, type: !5)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !604, file: !1, line: 1370, type: !5)
!604 = distinct !DILexicalBlock(scope: !605, file: !1, line: 1370, column: 13)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 1369, column: 61)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 1369, column: 13)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 1368, column: 43)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 1368, column: 5)
!609 = distinct !DILexicalBlock(scope: !597, file: !1, line: 1368, column: 5)
!610 = !DISubprogram(name: "gc_referrers_for", scope: !1, file: !1, line: 1339, type: !611, isLocal: true, isDefinition: true, scopeLine: 1340, flags: DIFlagPrototyped, isOptimized: true, variables: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!44, !5, !352, !5}
!613 = !{!614, !615, !616, !617, !618, !619}
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "objs", arg: 1, scope: !610, file: !1, line: 1339, type: !5)
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 2, scope: !610, file: !1, line: 1339, type: !352)
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resultlist", arg: 3, scope: !610, file: !1, line: 1339, type: !5)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !610, file: !1, line: 1341, type: !352)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !610, file: !1, line: 1342, type: !5)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !610, file: !1, line: 1343, type: !259)
!620 = !DISubprogram(name: "referrersvisit", scope: !1, file: !1, line: 1329, type: !197, isLocal: true, isDefinition: true, scopeLine: 1330, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @referrersvisit, variables: !621)
!621 = !{!622, !623, !624}
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !620, file: !1, line: 1329, type: !5)
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "objs", arg: 2, scope: !620, file: !1, line: 1329, type: !5)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !620, file: !1, line: 1331, type: !11)
!625 = !DISubprogram(name: "gc_get_referents", scope: !1, file: !1, line: 1389, type: !126, isLocal: true, isDefinition: true, scopeLine: 1390, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @gc_get_referents, variables: !626)
!626 = !{!627, !628, !629, !630, !631, !635, !636}
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !625, file: !1, line: 1389, type: !5)
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !625, file: !1, line: 1389, type: !5)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !625, file: !1, line: 1391, type: !11)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !625, file: !1, line: 1392, type: !5)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !632, file: !1, line: 1398, type: !259)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 1397, column: 50)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 1397, column: 5)
!634 = distinct !DILexicalBlock(scope: !625, file: !1, line: 1397, column: 5)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !632, file: !1, line: 1399, type: !5)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !637, file: !1, line: 1407, type: !5)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 1407, column: 13)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 1406, column: 63)
!639 = distinct !DILexicalBlock(scope: !632, file: !1, line: 1406, column: 13)
!640 = !DISubprogram(name: "referentsvisit", scope: !1, file: !1, line: 1379, type: !197, isLocal: true, isDefinition: true, scopeLine: 1380, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @referentsvisit, variables: !641)
!641 = !{!642, !643}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !640, file: !1, line: 1379, type: !5)
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 2, scope: !640, file: !1, line: 1379, type: !5)
!644 = !DISubprogram(name: "collect_with_callback", scope: !1, file: !1, line: 1136, type: !645, isLocal: true, isDefinition: true, scopeLine: 1137, flags: DIFlagPrototyped, isOptimized: true, variables: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{!11, !44}
!647 = !{!648, !649, !650, !651}
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "generation", arg: 1, scope: !644, file: !1, line: 1136, type: !44)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !644, file: !1, line: 1138, type: !11)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "collected", scope: !644, file: !1, line: 1138, type: !11)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uncollectable", scope: !644, file: !1, line: 1138, type: !11)
!652 = !DISubprogram(name: "invoke_gc_callback", scope: !1, file: !1, line: 1099, type: !653, isLocal: true, isDefinition: true, scopeLine: 1101, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i64, i64)* @invoke_gc_callback, variables: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !29, !44, !11, !11}
!655 = !{!656, !657, !658, !659, !660, !661, !662, !666, !667, !669, !672, !674, !676}
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "phase", arg: 1, scope: !652, file: !1, line: 1099, type: !29)
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "generation", arg: 2, scope: !652, file: !1, line: 1099, type: !44)
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collected", arg: 3, scope: !652, file: !1, line: 1100, type: !11)
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "uncollectable", arg: 4, scope: !652, file: !1, line: 1100, type: !11)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !652, file: !1, line: 1102, type: !11)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !652, file: !1, line: 1103, type: !5)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !663, file: !1, line: 1121, type: !5)
!663 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1120, column: 50)
!664 = distinct !DILexicalBlock(scope: !665, file: !1, line: 1120, column: 5)
!665 = distinct !DILexicalBlock(scope: !652, file: !1, line: 1120, column: 5)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !663, file: !1, line: 1121, type: !5)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !668, file: !1, line: 1124, type: !5)
!668 = distinct !DILexicalBlock(scope: !663, file: !1, line: 1124, column: 9)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !670, file: !1, line: 1124, type: !5)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 1124, column: 9)
!671 = distinct !DILexicalBlock(scope: !668, file: !1, line: 1124, column: 9)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !673, file: !1, line: 1127, type: !5)
!673 = distinct !DILexicalBlock(scope: !663, file: !1, line: 1127, column: 9)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !675, file: !1, line: 1129, type: !5)
!675 = distinct !DILexicalBlock(scope: !652, file: !1, line: 1129, column: 5)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !677, file: !1, line: 1129, type: !5)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 1129, column: 5)
!678 = distinct !DILexicalBlock(scope: !675, file: !1, line: 1129, column: 5)
!679 = !DISubprogram(name: "collect", scope: !1, file: !1, line: 920, type: !680, isLocal: true, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i32, i64*, i64*, i32)* @collect, variables: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{!11, !44, !247, !247, !44}
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "generation", arg: 1, scope: !679, file: !1, line: 920, type: !44)
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_collected", arg: 2, scope: !679, file: !1, line: 920, type: !247)
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_uncollectable", arg: 3, scope: !679, file: !1, line: 920, type: !247)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nofail", arg: 4, scope: !679, file: !1, line: 921, type: !44)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !679, file: !1, line: 923, type: !44)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !679, file: !1, line: 924, type: !11)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !679, file: !1, line: 925, type: !11)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "young", scope: !679, file: !1, line: 926, type: !352)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old", scope: !679, file: !1, line: 927, type: !352)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unreachable", scope: !679, file: !1, line: 928, type: !353)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "finalizers", scope: !679, file: !1, line: 929, type: !353)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !679, file: !1, line: 930, type: !352)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t1", scope: !679, file: !1, line: 931, type: !365)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stats", scope: !679, file: !1, line: 932, type: !576)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t2", scope: !698, file: !1, line: 1045, type: !365)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 1044, column: 30)
!699 = distinct !DILexicalBlock(scope: !679, file: !1, line: 1044, column: 9)
!700 = !DISubprogram(name: "gc_list_size", scope: !1, file: !1, line: 304, type: !701, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, variables: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!11, !352}
!703 = !{!704, !705, !706}
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !700, file: !1, line: 304, type: !352)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !700, file: !1, line: 306, type: !352)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !700, file: !1, line: 307, type: !11)
!707 = !DISubprogram(name: "get_time", scope: !1, file: !1, line: 898, type: !708, isLocal: true, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: true, variables: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!365}
!710 = !{!711, !712, !715}
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !707, file: !1, line: 900, type: !365)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !713, file: !1, line: 904, type: !5)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 901, column: 23)
!714 = distinct !DILexicalBlock(scope: !707, file: !1, line: 901, column: 9)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !716, file: !1, line: 911, type: !5)
!716 = distinct !DILexicalBlock(scope: !717, file: !1, line: 911, column: 13)
!717 = distinct !DILexicalBlock(scope: !718, file: !1, line: 908, column: 14)
!718 = distinct !DILexicalBlock(scope: !713, file: !1, line: 905, column: 13)
!719 = !DISubprogram(name: "gc_list_merge", scope: !1, file: !1, line: 289, type: !720, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, variables: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !352, !352}
!722 = !{!723, !724, !725}
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "from", arg: 1, scope: !719, file: !1, line: 289, type: !352)
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "to", arg: 2, scope: !719, file: !1, line: 289, type: !352)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !719, file: !1, line: 291, type: !352)
!726 = !DISubprogram(name: "gc_list_is_empty", scope: !1, file: !1, line: 241, type: !727, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, variables: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{!44, !352}
!729 = !{!730}
!730 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !726, file: !1, line: 241, type: !352)
!731 = !DISubprogram(name: "update_refs", scope: !1, file: !1, line: 340, type: !445, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, variables: !732)
!732 = !{!733, !734}
!733 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "containers", arg: 1, scope: !731, file: !1, line: 340, type: !352)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !731, file: !1, line: 342, type: !352)
!735 = !DISubprogram(name: "subtract_refs", scope: !1, file: !1, line: 392, type: !445, isLocal: true, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, variables: !736)
!736 = !{!737, !738, !739}
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "containers", arg: 1, scope: !735, file: !1, line: 392, type: !352)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !735, file: !1, line: 394, type: !259)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !735, file: !1, line: 395, type: !352)
!740 = !DISubprogram(name: "visit_decref", scope: !1, file: !1, line: 370, type: !265, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @visit_decref, variables: !741)
!741 = !{!742, !743, !744}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !740, file: !1, line: 370, type: !5)
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !740, file: !1, line: 370, type: !4)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !745, file: !1, line: 374, type: !352)
!745 = distinct !DILexicalBlock(scope: !746, file: !1, line: 373, column: 29)
!746 = distinct !DILexicalBlock(scope: !740, file: !1, line: 373, column: 9)
!747 = !DISubprogram(name: "gc_list_init", scope: !1, file: !1, line: 234, type: !445, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, variables: !748)
!748 = !{!749}
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !747, file: !1, line: 234, type: !352)
!750 = !DISubprogram(name: "move_unreachable", scope: !1, file: !1, line: 456, type: !720, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, variables: !751)
!751 = !{!752, !753, !754, !755, !757, !760}
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "young", arg: 1, scope: !750, file: !1, line: 456, type: !352)
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unreachable", arg: 2, scope: !750, file: !1, line: 456, type: !352)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !750, file: !1, line: 458, type: !352)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !756, file: !1, line: 470, type: !352)
!756 = distinct !DILexicalBlock(scope: !750, file: !1, line: 469, column: 25)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !758, file: !1, line: 481, type: !5)
!758 = distinct !DILexicalBlock(scope: !759, file: !1, line: 472, column: 33)
!759 = distinct !DILexicalBlock(scope: !756, file: !1, line: 472, column: 13)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !758, file: !1, line: 482, type: !259)
!761 = !DISubprogram(name: "visit_reachable", scope: !1, file: !1, line: 406, type: !550, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %union._gc_head*)* @visit_reachable, variables: !762)
!762 = !{!763, !764, !765, !768}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !761, file: !1, line: 406, type: !5)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reachable", arg: 2, scope: !761, file: !1, line: 406, type: !352)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !766, file: !1, line: 409, type: !352)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 408, column: 29)
!767 = distinct !DILexicalBlock(scope: !761, file: !1, line: 408, column: 9)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc_refs", scope: !766, file: !1, line: 410, type: !769)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!770 = !DISubprogram(name: "gc_list_move", scope: !1, file: !1, line: 273, type: !720, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, variables: !771)
!771 = !{!772, !773, !774, !775, !776}
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !770, file: !1, line: 273, type: !352)
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 2, scope: !770, file: !1, line: 273, type: !352)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_prev", scope: !770, file: !1, line: 275, type: !352)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current_prev", scope: !770, file: !1, line: 276, type: !352)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current_next", scope: !770, file: !1, line: 277, type: !352)
!777 = !DISubprogram(name: "untrack_dicts", scope: !1, file: !1, line: 511, type: !445, isLocal: true, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, variables: !778)
!778 = !{!779, !780, !781, !782}
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 1, scope: !777, file: !1, line: 511, type: !352)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !777, file: !1, line: 513, type: !352)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !777, file: !1, line: 513, type: !352)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !783, file: !1, line: 515, type: !5)
!783 = distinct !DILexicalBlock(scope: !777, file: !1, line: 514, column: 24)
!784 = !DISubprogram(name: "move_legacy_finalizers", scope: !1, file: !1, line: 535, type: !720, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, variables: !785)
!785 = !{!786, !787, !788, !789, !790}
!786 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unreachable", arg: 1, scope: !784, file: !1, line: 535, type: !352)
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "finalizers", arg: 2, scope: !784, file: !1, line: 535, type: !352)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !784, file: !1, line: 537, type: !352)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !784, file: !1, line: 538, type: !352)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !791, file: !1, line: 544, type: !5)
!791 = distinct !DILexicalBlock(scope: !792, file: !1, line: 543, column: 70)
!792 = distinct !DILexicalBlock(scope: !793, file: !1, line: 543, column: 5)
!793 = distinct !DILexicalBlock(scope: !784, file: !1, line: 543, column: 5)
!794 = !DISubprogram(name: "has_legacy_finalizer", scope: !1, file: !1, line: 525, type: !144, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: true, variables: !795)
!795 = !{!796}
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !794, file: !1, line: 525, type: !5)
!797 = !DISubprogram(name: "move_legacy_finalizer_reachable", scope: !1, file: !1, line: 574, type: !445, isLocal: true, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true, variables: !798)
!798 = !{!799, !800, !801}
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "finalizers", arg: 1, scope: !797, file: !1, line: 574, type: !352)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traverse", scope: !797, file: !1, line: 576, type: !259)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !797, file: !1, line: 577, type: !352)
!802 = !DISubprogram(name: "visit_move", scope: !1, file: !1, line: 558, type: !550, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %union._gc_head*)* @visit_move, variables: !803)
!803 = !{!804, !805, !806}
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !802, file: !1, line: 558, type: !5)
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tolist", arg: 2, scope: !802, file: !1, line: 558, type: !352)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !807, file: !1, line: 562, type: !352)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 561, column: 45)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 561, column: 13)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 560, column: 29)
!810 = distinct !DILexicalBlock(scope: !802, file: !1, line: 560, column: 9)
!811 = !DISubprogram(name: "debug_cycle", scope: !1, file: !1, line: 741, type: !812, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, variables: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !52, !5}
!814 = !{!815, !816}
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 1, scope: !811, file: !1, line: 741, type: !52)
!816 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 2, scope: !811, file: !1, line: 741, type: !5)
!817 = !DISubprogram(name: "handle_weakrefs", scope: !1, file: !1, line: 599, type: !818, isLocal: true, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: true, variables: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!44, !352, !352}
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829, !833, !837, !839, !840, !843}
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unreachable", arg: 1, scope: !817, file: !1, line: 599, type: !352)
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "old", arg: 2, scope: !817, file: !1, line: 599, type: !352)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !817, file: !1, line: 601, type: !352)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !817, file: !1, line: 602, type: !5)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !817, file: !1, line: 603, type: !384)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrcb_to_call", scope: !817, file: !1, line: 604, type: !353)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !817, file: !1, line: 605, type: !352)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_freed", scope: !817, file: !1, line: 606, type: !44)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrlist", scope: !830, file: !1, line: 619, type: !383)
!830 = distinct !DILexicalBlock(scope: !831, file: !1, line: 618, column: 70)
!831 = distinct !DILexicalBlock(scope: !832, file: !1, line: 618, column: 5)
!832 = distinct !DILexicalBlock(scope: !817, file: !1, line: 618, column: 5)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrasgc", scope: !834, file: !1, line: 637, type: !352)
!834 = distinct !DILexicalBlock(scope: !835, file: !1, line: 636, column: 54)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 636, column: 9)
!836 = distinct !DILexicalBlock(scope: !830, file: !1, line: 636, column: 9)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !838, file: !1, line: 699, type: !5)
!838 = distinct !DILexicalBlock(scope: !817, file: !1, line: 698, column: 47)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !838, file: !1, line: 700, type: !5)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !841, file: !1, line: 715, type: !5)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 715, column: 13)
!842 = distinct !DILexicalBlock(scope: !838, file: !1, line: 712, column: 13)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !844, file: !1, line: 728, type: !5)
!844 = distinct !DILexicalBlock(scope: !838, file: !1, line: 728, column: 9)
!845 = !DISubprogram(name: "finalize_garbage", scope: !1, file: !1, line: 784, type: !445, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, variables: !846)
!846 = !{!847, !848, !849, !850, !852, !853}
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collectable", arg: 1, scope: !845, file: !1, line: 784, type: !352)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "finalize", scope: !845, file: !1, line: 786, type: !35)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seen", scope: !845, file: !1, line: 787, type: !353)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !851, file: !1, line: 800, type: !352)
!851 = distinct !DILexicalBlock(scope: !845, file: !1, line: 799, column: 44)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !851, file: !1, line: 801, type: !5)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !854, file: !1, line: 809, type: !5)
!854 = distinct !DILexicalBlock(scope: !855, file: !1, line: 809, column: 13)
!855 = distinct !DILexicalBlock(scope: !856, file: !1, line: 805, column: 64)
!856 = distinct !DILexicalBlock(scope: !851, file: !1, line: 803, column: 13)
!857 = !DISubprogram(name: "check_garbage", scope: !1, file: !1, line: 819, type: !727, isLocal: true, isDefinition: true, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: true, variables: !858)
!858 = !{!859, !860}
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collectable", arg: 1, scope: !857, file: !1, line: 819, type: !352)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !857, file: !1, line: 821, type: !352)
!861 = !DISubprogram(name: "revive_garbage", scope: !1, file: !1, line: 838, type: !445, isLocal: true, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: true, variables: !862)
!862 = !{!863, !864}
!863 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collectable", arg: 1, scope: !861, file: !1, line: 838, type: !352)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !861, file: !1, line: 840, type: !352)
!865 = !DISubprogram(name: "delete_garbage", scope: !1, file: !1, line: 852, type: !720, isLocal: true, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, variables: !866)
!866 = !{!867, !868, !869, !870, !872, !873}
!867 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "collectable", arg: 1, scope: !865, file: !1, line: 852, type: !352)
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "old", arg: 2, scope: !865, file: !1, line: 852, type: !352)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "clear", scope: !865, file: !1, line: 854, type: !142)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !871, file: !1, line: 857, type: !352)
!871 = distinct !DILexicalBlock(scope: !865, file: !1, line: 856, column: 44)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !871, file: !1, line: 858, type: !5)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !874, file: !1, line: 867, type: !5)
!874 = distinct !DILexicalBlock(scope: !875, file: !1, line: 867, column: 17)
!875 = distinct !DILexicalBlock(scope: !876, file: !1, line: 864, column: 58)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 864, column: 17)
!877 = distinct !DILexicalBlock(scope: !878, file: !1, line: 863, column: 14)
!878 = distinct !DILexicalBlock(scope: !871, file: !1, line: 860, column: 13)
!879 = !DISubprogram(name: "handle_legacy_finalizers", scope: !1, file: !1, line: 757, type: !818, isLocal: true, isDefinition: true, scopeLine: 758, flags: DIFlagPrototyped, isOptimized: true, variables: !880)
!880 = !{!881, !882, !883, !884}
!881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "finalizers", arg: 1, scope: !879, file: !1, line: 757, type: !352)
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "old", arg: 2, scope: !879, file: !1, line: 757, type: !352)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !879, file: !1, line: 759, type: !352)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !885, file: !1, line: 767, type: !5)
!885 = distinct !DILexicalBlock(scope: !886, file: !1, line: 766, column: 51)
!886 = distinct !DILexicalBlock(scope: !887, file: !1, line: 766, column: 5)
!887 = distinct !DILexicalBlock(scope: !879, file: !1, line: 766, column: 5)
!888 = !DISubprogram(name: "clear_freelists", scope: !1, file: !1, line: 884, type: !410, isLocal: true, isDefinition: true, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: true, variables: !2)
!889 = !DISubprogram(name: "collect_generations", scope: !1, file: !1, line: 1146, type: !402, isLocal: true, isDefinition: true, scopeLine: 1147, flags: DIFlagPrototyped, isOptimized: true, variables: !890)
!890 = !{!891, !892}
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !889, file: !1, line: 1148, type: !44)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !889, file: !1, line: 1149, type: !11)
!893 = !DISubprogram(name: "gc_list_remove", scope: !1, file: !1, line: 261, type: !445, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, variables: !894)
!894 = !{!895}
!895 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !893, file: !1, line: 261, type: !352)
!896 = !{!897, !898, !899, !906, !929, !933, !937, !941, !945, !949, !953, !957, !961, !965, !969, !973, !977, !981, !982, !986, !990, !994, !998, !999, !1000, !1001, !1002, !1010, !1011, !1012, !1013}
!897 = !DIGlobalVariable(name: "_PyGC_generation0", scope: !0, file: !1, line: 55, type: !352, isLocal: false, isDefinition: true, variable: %union._gc_head** @_PyGC_generation0)
!898 = !DIGlobalVariable(name: "debug", scope: !0, file: !1, line: 168, type: !44, isLocal: true, isDefinition: true, variable: i32* @debug)
!899 = !DIGlobalVariable(name: "generations", scope: !0, file: !1, line: 48, type: !900, isLocal: true, isDefinition: true, variable: [3 x %struct.gc_generation]* @generations)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 768, align: 64, elements: !573)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "gc_generation", file: !1, line: 37, size: 256, align: 64, elements: !902)
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !901, file: !1, line: 38, baseType: !353, size: 192, align: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !901, file: !1, line: 39, baseType: !44, size: 32, align: 32, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !901, file: !1, line: 40, baseType: !44, size: 32, align: 32, offset: 224)
!906 = !DIGlobalVariable(name: "gcmodule", scope: !0, file: !1, line: 1544, type: !907, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @gcmodule)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !908, line: 47, size: 832, align: 64, elements: !909)
!908 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!909 = !{!910, !919, !920, !921, !922, !925, !926, !927, !928}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !907, file: !908, line: 48, baseType: !911, size: 320, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !908, line: 38, baseType: !912)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !908, line: 33, size: 320, align: 64, elements: !913)
!913 = !{!914, !915, !917, !918}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !912, file: !908, line: 34, baseType: !6, size: 128, align: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !912, file: !908, line: 35, baseType: !916, size: 64, align: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !912, file: !908, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !912, file: !908, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !907, file: !908, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !907, file: !908, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !907, file: !908, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !907, file: !908, line: 52, baseType: !923, size: 64, align: 64, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64, align: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !907, file: !908, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !907, file: !908, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !907, file: !908, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !907, file: !908, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!929 = !DIGlobalVariable(name: "gc__doc__", scope: !0, file: !1, line: 1505, type: !930, isLocal: true, isDefinition: true, variable: [876 x i8]* @gc__doc__)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 7008, align: 8, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 876)
!933 = !DIGlobalVariable(name: "GcMethods", scope: !0, file: !1, line: 1523, type: !934, isLocal: true, isDefinition: true, variable: [15 x %struct.PyMethodDef]* @GcMethods)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !924, size: 3840, align: 64, elements: !935)
!935 = !{!936}
!936 = !DISubrange(count: 15)
!937 = !DIGlobalVariable(name: "gc_enable__doc__", scope: !0, file: !1, line: 1170, type: !938, isLocal: true, isDefinition: true, variable: [56 x i8]* @gc_enable__doc__)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 448, align: 8, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 56)
!941 = !DIGlobalVariable(name: "gc_disable__doc__", scope: !0, file: !1, line: 1183, type: !942, isLocal: true, isDefinition: true, variable: [58 x i8]* @gc_disable__doc__)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 464, align: 8, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 58)
!945 = !DIGlobalVariable(name: "gc_isenabled__doc__", scope: !0, file: !1, line: 1196, type: !946, isLocal: true, isDefinition: true, variable: [81 x i8]* @gc_isenabled__doc__)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 648, align: 8, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 81)
!949 = !DIGlobalVariable(name: "gc_set_debug__doc__", scope: !0, file: !1, line: 1241, type: !950, isLocal: true, isDefinition: true, variable: [499 x i8]* @gc_set_debug__doc__)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3992, align: 8, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 499)
!953 = !DIGlobalVariable(name: "gc_get_debug__doc__", scope: !0, file: !1, line: 1265, type: !954, isLocal: true, isDefinition: true, variable: [67 x i8]* @gc_get_debug__doc__)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 536, align: 8, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: 67)
!957 = !DIGlobalVariable(name: "gc_get_count__doc__", scope: !0, file: !1, line: 1314, type: !958, isLocal: true, isDefinition: true, variable: [79 x i8]* @gc_get_count__doc__)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 632, align: 8, elements: !959)
!959 = !{!960}
!960 = !DISubrange(count: 79)
!961 = !DIGlobalVariable(name: "gc_set_thresh__doc__", scope: !0, file: !1, line: 1276, type: !962, isLocal: true, isDefinition: true, variable: [143 x i8]* @gc_set_thresh__doc__)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1144, align: 8, elements: !963)
!963 = !{!964}
!964 = !DISubrange(count: 143)
!965 = !DIGlobalVariable(name: "gc_get_thresh__doc__", scope: !0, file: !1, line: 1300, type: !966, isLocal: true, isDefinition: true, variable: [99 x i8]* @gc_get_thresh__doc__)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 792, align: 8, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 99)
!969 = !DIGlobalVariable(name: "keywords", scope: !529, file: !1, line: 1218, type: !970, isLocal: true, isDefinition: true, variable: [2 x i8*]* @gc_collect.keywords)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, align: 64, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 2)
!973 = !DIGlobalVariable(name: "gc_collect__doc__", scope: !0, file: !1, line: 1207, type: !974, isLocal: true, isDefinition: true, variable: [261 x i8]* @gc_collect__doc__)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2088, align: 8, elements: !975)
!975 = !{!976}
!976 = !DISubrange(count: 261)
!977 = !DIGlobalVariable(name: "gc_get_objects__doc__", scope: !0, file: !1, line: 1414, type: !978, isLocal: true, isDefinition: true, variable: [106 x i8]* @gc_get_objects__doc__)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 848, align: 8, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 106)
!981 = !DIGlobalVariable(name: "generation_stats", scope: !0, file: !1, line: 181, type: !567, isLocal: true, isDefinition: true, variable: [3 x %struct.gc_generation_stats]* @generation_stats)
!982 = !DIGlobalVariable(name: "gc_get_stats__doc__", scope: !0, file: !1, line: 1438, type: !983, isLocal: true, isDefinition: true, variable: [91 x i8]* @gc_get_stats__doc__)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 728, align: 8, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 91)
!986 = !DIGlobalVariable(name: "gc_is_tracked__doc__", scope: !0, file: !1, line: 1484, type: !987, isLocal: true, isDefinition: true, variable: [131 x i8]* @gc_is_tracked__doc__)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1048, align: 8, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 131)
!990 = !DIGlobalVariable(name: "gc_get_referrers__doc__", scope: !0, file: !1, line: 1357, type: !991, isLocal: true, isDefinition: true, variable: [92 x i8]* @gc_get_referrers__doc__)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 736, align: 8, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 92)
!994 = !DIGlobalVariable(name: "gc_get_referents__doc__", scope: !0, file: !1, line: 1384, type: !995, isLocal: true, isDefinition: true, variable: [95 x i8]* @gc_get_referents__doc__)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 760, align: 8, elements: !996)
!996 = !{!997}
!997 = !DISubrange(count: 95)
!998 = !DIGlobalVariable(name: "garbage", scope: !0, file: !1, line: 63, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @garbage)
!999 = !DIGlobalVariable(name: "callbacks", scope: !0, file: !1, line: 69, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @callbacks)
!1000 = !DIGlobalVariable(name: "tmod", scope: !0, file: !1, line: 169, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @tmod)
!1001 = !DIGlobalVariable(name: "collecting", scope: !0, file: !1, line: 60, type: !44, isLocal: true, isDefinition: true)
!1002 = !DIGlobalVariable(name: "PyId_time", scope: !707, file: !1, line: 902, type: !1003, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @get_time.PyId_time)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !7, line: 144, baseType: !1004)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !7, line: 140, size: 192, align: 64, elements: !1005)
!1005 = !{!1006, !1008, !1009}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1004, file: !7, line: 141, baseType: !1007, size: 64, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64, align: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1004, file: !7, line: 142, baseType: !29, size: 64, align: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1004, file: !7, line: 143, baseType: !5, size: 64, align: 64, offset: 128)
!1010 = !DIGlobalVariable(name: "long_lived_pending", scope: !0, file: !1, line: 82, type: !11, isLocal: true, isDefinition: true, variable: i64* @long_lived_pending)
!1011 = !DIGlobalVariable(name: "long_lived_total", scope: !0, file: !1, line: 76, type: !11, isLocal: true, isDefinition: true, variable: i64* @long_lived_total)
!1012 = !DIGlobalVariable(name: "gc_str", scope: !0, file: !1, line: 66, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @gc_str)
!1013 = !DIGlobalVariable(name: "enabled", scope: !0, file: !1, line: 57, type: !44, isLocal: true, isDefinition: true)
!1014 = !{i32 2, !"Dwarf Version", i32 4}
!1015 = !{i32 2, !"Debug Info Version", i32 3}
!1016 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1017 = !DILocation(line: 1561, column: 9, scope: !396)
!1018 = !DIExpression()
!1019 = !DILocation(line: 1559, column: 15, scope: !396)
!1020 = !DILocation(line: 1563, column: 11, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1563, column: 9)
!1022 = !DILocation(line: 1563, column: 9, scope: !396)
!1023 = !DILocation(line: 1566, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1566, column: 9)
!1025 = !{!1026, !1026, i64 0}
!1026 = !{!"any pointer", !1027, i64 0}
!1027 = !{!"omnipotent char", !1028, i64 0}
!1028 = !{!"Simple C/C++ TBAA"}
!1029 = !DILocation(line: 1566, column: 17, scope: !1024)
!1030 = !DILocation(line: 1566, column: 9, scope: !396)
!1031 = !DILocation(line: 1567, column: 19, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 1566, column: 26)
!1033 = !DILocation(line: 1567, column: 17, scope: !1032)
!1034 = !DILocation(line: 1568, column: 21, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 1568, column: 13)
!1036 = !DILocation(line: 1568, column: 13, scope: !1032)
!1037 = !DILocation(line: 1572, column: 42, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1572, column: 9)
!1039 = !DILocation(line: 1571, column: 5, scope: !396)
!1040 = !{!1041, !1042, i64 0}
!1041 = !{!"_object", !1042, i64 0, !1026, i64 8}
!1042 = !{!"long", !1027, i64 0}
!1043 = !DILocation(line: 1572, column: 9, scope: !1038)
!1044 = !DILocation(line: 1572, column: 51, scope: !1038)
!1045 = !DILocation(line: 1572, column: 9, scope: !396)
!1046 = !DILocation(line: 1575, column: 9, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1575, column: 9)
!1048 = !DILocation(line: 1575, column: 19, scope: !1047)
!1049 = !DILocation(line: 1575, column: 9, scope: !396)
!1050 = !DILocation(line: 1576, column: 21, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 1575, column: 28)
!1052 = !DILocation(line: 1576, column: 19, scope: !1051)
!1053 = !DILocation(line: 1577, column: 23, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 1577, column: 13)
!1055 = !DILocation(line: 1577, column: 13, scope: !1051)
!1056 = !DILocation(line: 1581, column: 44, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1581, column: 9)
!1058 = !DILocation(line: 1580, column: 5, scope: !396)
!1059 = !DILocation(line: 1581, column: 9, scope: !1057)
!1060 = !DILocation(line: 1581, column: 55, scope: !1057)
!1061 = !DILocation(line: 1581, column: 9, scope: !396)
!1062 = !DILocation(line: 1590, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1590, column: 9)
!1064 = !DILocation(line: 1590, column: 14, scope: !1063)
!1065 = !DILocation(line: 1590, column: 9, scope: !396)
!1066 = !DILocation(line: 1591, column: 16, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 1590, column: 23)
!1068 = !DILocation(line: 1591, column: 14, scope: !1067)
!1069 = !DILocation(line: 1592, column: 18, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 1592, column: 13)
!1071 = !DILocation(line: 1592, column: 13, scope: !1067)
!1072 = !DILocation(line: 1593, column: 13, scope: !1070)
!1073 = !DILocation(line: 1597, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1597, column: 5)
!1075 = !DILocation(line: 1597, column: 5, scope: !396)
!1076 = !DILocation(line: 1598, column: 5, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1598, column: 5)
!1078 = !DILocation(line: 1598, column: 5, scope: !396)
!1079 = !DILocation(line: 1599, column: 5, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1599, column: 5)
!1081 = !DILocation(line: 1599, column: 5, scope: !396)
!1082 = !DILocation(line: 1600, column: 5, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1600, column: 5)
!1084 = !DILocation(line: 1600, column: 5, scope: !396)
!1085 = !DILocation(line: 1601, column: 5, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !396, file: !1, line: 1601, column: 5)
!1087 = !DILocation(line: 1604, column: 1, scope: !396)
!1088 = !DILocation(line: 1612, column: 9, scope: !401)
!1089 = !DILocation(line: 1136, column: 27, scope: !644, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 1616, column: 13, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 1614, column: 10)
!1092 = distinct !DILexicalBlock(scope: !401, file: !1, line: 1612, column: 9)
!1093 = !DILocation(line: 1138, column: 5, scope: !644, inlinedAt: !1090)
!1094 = !DILocation(line: 1139, column: 5, scope: !644, inlinedAt: !1090)
!1095 = !DILocation(line: 1138, column: 24, scope: !644, inlinedAt: !1090)
!1096 = !DILocation(line: 1138, column: 35, scope: !644, inlinedAt: !1090)
!1097 = !DILocation(line: 1140, column: 14, scope: !644, inlinedAt: !1090)
!1098 = !DILocation(line: 1138, column: 16, scope: !644, inlinedAt: !1090)
!1099 = !DILocation(line: 1141, column: 44, scope: !644, inlinedAt: !1090)
!1100 = !{!1042, !1042, i64 0}
!1101 = !DILocation(line: 1141, column: 55, scope: !644, inlinedAt: !1090)
!1102 = !DILocation(line: 1141, column: 5, scope: !644, inlinedAt: !1090)
!1103 = !DILocation(line: 1143, column: 1, scope: !644, inlinedAt: !1090)
!1104 = !DILocation(line: 1610, column: 16, scope: !401)
!1105 = !DILocation(line: 1620, column: 5, scope: !401)
!1106 = !DILocation(line: 1634, column: 9, scope: !406)
!1107 = !DILocation(line: 1638, column: 13, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 1636, column: 10)
!1109 = distinct !DILexicalBlock(scope: !406, file: !1, line: 1634, column: 9)
!1110 = !DILocation(line: 1626, column: 16, scope: !406)
!1111 = !DILocation(line: 1641, column: 5, scope: !406)
!1112 = !DILocation(line: 920, column: 13, scope: !679)
!1113 = !DILocation(line: 920, column: 37, scope: !679)
!1114 = !DILocation(line: 920, column: 62, scope: !679)
!1115 = !DILocation(line: 921, column: 13, scope: !679)
!1116 = !DILocation(line: 924, column: 16, scope: !679)
!1117 = !DILocation(line: 925, column: 16, scope: !679)
!1118 = !DILocation(line: 928, column: 5, scope: !679)
!1119 = !DILocation(line: 929, column: 5, scope: !679)
!1120 = !DILocation(line: 931, column: 12, scope: !679)
!1121 = !DILocation(line: 932, column: 42, scope: !679)
!1122 = !DILocation(line: 934, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !679, file: !1, line: 934, column: 9)
!1124 = !{!1125, !1125, i64 0}
!1125 = !{!"int", !1027, i64 0}
!1126 = !DILocation(line: 934, column: 15, scope: !1123)
!1127 = !DILocation(line: 934, column: 9, scope: !679)
!1128 = !DILocation(line: 935, column: 9, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 934, column: 30)
!1130 = !DILocation(line: 937, column: 9, scope: !1129)
!1131 = !DILocation(line: 923, column: 9, scope: !679)
!1132 = !DILocation(line: 304, column: 25, scope: !700, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 940, column: 31, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 938, column: 9)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 938, column: 9)
!1136 = !DILocation(line: 307, column: 16, scope: !700, inlinedAt: !1133)
!1137 = !DILocation(line: 308, column: 10, scope: !1138, inlinedAt: !1133)
!1138 = distinct !DILexicalBlock(scope: !700, file: !1, line: 308, column: 5)
!1139 = !DILocation(line: 940, column: 31, scope: !1134)
!1140 = !DILocation(line: 308, column: 24, scope: !1138, inlinedAt: !1133)
!1141 = !DILocation(line: 308, column: 36, scope: !1142, inlinedAt: !1133)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 308, column: 5)
!1143 = !DILocation(line: 309, column: 10, scope: !1144, inlinedAt: !1133)
!1144 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 308, column: 66)
!1145 = !DILocation(line: 308, column: 5, scope: !1138, inlinedAt: !1133)
!1146 = !DILocation(line: 939, column: 13, scope: !1134)
!1147 = !DILocation(line: 904, column: 23, scope: !713, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 941, column: 14, scope: !1129)
!1149 = !DILocation(line: 904, column: 19, scope: !713, inlinedAt: !1148)
!1150 = !DILocation(line: 905, column: 15, scope: !718, inlinedAt: !1148)
!1151 = !DILocation(line: 905, column: 13, scope: !713, inlinedAt: !1148)
!1152 = !DILocation(line: 906, column: 13, scope: !1153, inlinedAt: !1148)
!1153 = distinct !DILexicalBlock(scope: !718, file: !1, line: 905, column: 24)
!1154 = !DILocation(line: 907, column: 9, scope: !1153, inlinedAt: !1148)
!1155 = !DILocation(line: 909, column: 17, scope: !1156, inlinedAt: !1148)
!1156 = distinct !DILexicalBlock(scope: !717, file: !1, line: 909, column: 17)
!1157 = !{!1041, !1026, i64 8}
!1158 = !DILocation(line: 909, column: 17, scope: !1159, inlinedAt: !1148)
!1159 = !DILexicalBlockFile(scope: !1156, file: !1, discriminator: 1)
!1160 = !DILocation(line: 909, column: 17, scope: !717, inlinedAt: !1148)
!1161 = !DILocation(line: 910, column: 26, scope: !1156, inlinedAt: !1148)
!1162 = !DILocation(line: 900, column: 12, scope: !707, inlinedAt: !1148)
!1163 = !DILocation(line: 910, column: 17, scope: !1156, inlinedAt: !1148)
!1164 = !DILocation(line: 941, column: 14, scope: !1129)
!1165 = !DILocation(line: 911, column: 13, scope: !1166, inlinedAt: !1148)
!1166 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 1)
!1167 = !DILocation(line: 911, column: 13, scope: !1168, inlinedAt: !1148)
!1168 = distinct !DILexicalBlock(scope: !716, file: !1, line: 911, column: 13)
!1169 = !DILocation(line: 911, column: 13, scope: !716, inlinedAt: !1148)
!1170 = !DILocation(line: 911, column: 13, scope: !1171, inlinedAt: !1148)
!1171 = !DILexicalBlockFile(scope: !1168, file: !1, discriminator: 3)
!1172 = !{!1173, !1026, i64 48}
!1173 = !{!"_typeobject", !1174, i64 0, !1026, i64 24, !1042, i64 32, !1042, i64 40, !1026, i64 48, !1026, i64 56, !1026, i64 64, !1026, i64 72, !1026, i64 80, !1026, i64 88, !1026, i64 96, !1026, i64 104, !1026, i64 112, !1026, i64 120, !1026, i64 128, !1026, i64 136, !1026, i64 144, !1026, i64 152, !1026, i64 160, !1042, i64 168, !1026, i64 176, !1026, i64 184, !1026, i64 192, !1026, i64 200, !1042, i64 208, !1026, i64 216, !1026, i64 224, !1026, i64 232, !1026, i64 240, !1026, i64 248, !1026, i64 256, !1026, i64 264, !1026, i64 272, !1026, i64 280, !1042, i64 288, !1026, i64 296, !1026, i64 304, !1026, i64 312, !1026, i64 320, !1026, i64 328, !1026, i64 336, !1026, i64 344, !1026, i64 352, !1026, i64 360, !1026, i64 368, !1026, i64 376, !1125, i64 384, !1026, i64 392}
!1174 = !{!"", !1041, i64 0, !1042, i64 16}
!1175 = !DILocation(line: 942, column: 9, scope: !1129)
!1176 = !DILocation(line: 943, column: 5, scope: !1129)
!1177 = !DILocation(line: 946, column: 19, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !679, file: !1, line: 946, column: 9)
!1179 = !DILocation(line: 946, column: 22, scope: !1178)
!1180 = !DILocation(line: 946, column: 9, scope: !679)
!1181 = !DILocation(line: 947, column: 9, scope: !1178)
!1182 = !DILocation(line: 947, column: 35, scope: !1178)
!1183 = !DILocation(line: 947, column: 41, scope: !1178)
!1184 = !{!1185, !1125, i64 28}
!1185 = !{!"gc_generation", !1027, i64 0, !1125, i64 24, !1125, i64 28}
!1186 = !DILocation(line: 948, column: 19, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 948, column: 5)
!1188 = distinct !DILexicalBlock(scope: !679, file: !1, line: 948, column: 5)
!1189 = !DILocation(line: 948, column: 5, scope: !1188)
!1190 = !DILocation(line: 949, column: 9, scope: !1187)
!1191 = !DILocation(line: 952, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 952, column: 5)
!1193 = distinct !DILexicalBlock(scope: !679, file: !1, line: 952, column: 5)
!1194 = !DILocation(line: 952, column: 5, scope: !1193)
!1195 = !DILocation(line: 957, column: 13, scope: !679)
!1196 = !DILocation(line: 953, column: 36, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 952, column: 38)
!1198 = !DILocation(line: 294, column: 23, scope: !1199, inlinedAt: !1201)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 293, column: 34)
!1200 = distinct !DILexicalBlock(scope: !719, file: !1, line: 293, column: 9)
!1201 = distinct !DILocation(line: 953, column: 9, scope: !1197)
!1202 = !DILocation(line: 949, column: 24, scope: !1187)
!1203 = !DILocation(line: 949, column: 30, scope: !1187)
!1204 = !DILocation(line: 948, column: 35, scope: !1187)
!1205 = !DILocation(line: 953, column: 23, scope: !1197)
!1206 = !DILocation(line: 289, column: 26, scope: !719, inlinedAt: !1201)
!1207 = !DILocation(line: 289, column: 43, scope: !719, inlinedAt: !1201)
!1208 = !DILocation(line: 241, column: 29, scope: !726, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 293, column: 10, scope: !1200, inlinedAt: !1201)
!1210 = !DILocation(line: 243, column: 22, scope: !726, inlinedAt: !1209)
!1211 = !{!1212, !1026, i64 0}
!1212 = !{!"", !1026, i64 0, !1026, i64 8, !1042, i64 16}
!1213 = !DILocation(line: 243, column: 30, scope: !726, inlinedAt: !1209)
!1214 = !DILocation(line: 293, column: 9, scope: !719, inlinedAt: !1201)
!1215 = !DILocation(line: 236, column: 14, scope: !747, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 300, column: 5, scope: !719, inlinedAt: !1201)
!1217 = !{!1212, !1026, i64 8}
!1218 = !DILocation(line: 291, column: 16, scope: !719, inlinedAt: !1201)
!1219 = !DILocation(line: 295, column: 18, scope: !1199, inlinedAt: !1201)
!1220 = !DILocation(line: 295, column: 26, scope: !1199, inlinedAt: !1201)
!1221 = !DILocation(line: 296, column: 30, scope: !1199, inlinedAt: !1201)
!1222 = !DILocation(line: 296, column: 38, scope: !1199, inlinedAt: !1201)
!1223 = !DILocation(line: 297, column: 35, scope: !1199, inlinedAt: !1201)
!1224 = !DILocation(line: 297, column: 24, scope: !1199, inlinedAt: !1201)
!1225 = !DILocation(line: 298, column: 28, scope: !1199, inlinedAt: !1201)
!1226 = !DILocation(line: 298, column: 36, scope: !1199, inlinedAt: !1201)
!1227 = !DILocation(line: 299, column: 5, scope: !1199, inlinedAt: !1201)
!1228 = !DILocation(line: 234, column: 25, scope: !747, inlinedAt: !1216)
!1229 = !DILocation(line: 236, column: 22, scope: !747, inlinedAt: !1216)
!1230 = !DILocation(line: 237, column: 22, scope: !747, inlinedAt: !1216)
!1231 = !DILocation(line: 926, column: 16, scope: !679)
!1232 = !DILocation(line: 958, column: 20, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !679, file: !1, line: 958, column: 9)
!1234 = !DILocation(line: 959, column: 15, scope: !1233)
!1235 = !DILocation(line: 927, column: 16, scope: !679)
!1236 = !DILocation(line: 958, column: 9, scope: !679)
!1237 = !DILocation(line: 340, column: 24, scope: !731, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 968, column: 5, scope: !679)
!1239 = !DILocation(line: 342, column: 36, scope: !731, inlinedAt: !1238)
!1240 = !DILocation(line: 343, column: 15, scope: !1241, inlinedAt: !1238)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 343, column: 5)
!1242 = distinct !DILexicalBlock(scope: !731, file: !1, line: 343, column: 5)
!1243 = !DILocation(line: 343, column: 5, scope: !1242, inlinedAt: !1238)
!1244 = !DILocation(line: 345, column: 9, scope: !1245, inlinedAt: !1238)
!1245 = !DILexicalBlockFile(scope: !1246, file: !1, discriminator: 1)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 345, column: 9)
!1247 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 343, column: 51)
!1248 = !DILocation(line: 968, column: 5, scope: !679)
!1249 = !{!1212, !1042, i64 16}
!1250 = !DILocation(line: 395, column: 36, scope: !735, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 969, column: 5, scope: !679)
!1252 = !DILocation(line: 392, column: 26, scope: !735, inlinedAt: !1251)
!1253 = !DILocation(line: 396, column: 15, scope: !1254, inlinedAt: !1251)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 396, column: 5)
!1255 = distinct !DILexicalBlock(scope: !735, file: !1, line: 396, column: 5)
!1256 = !DILocation(line: 396, column: 5, scope: !1255, inlinedAt: !1251)
!1257 = !DILocation(line: 397, column: 20, scope: !1258, inlinedAt: !1251)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 396, column: 49)
!1259 = !DILocation(line: 969, column: 5, scope: !679)
!1260 = !DILocation(line: 397, column: 42, scope: !1258, inlinedAt: !1251)
!1261 = !{!1173, !1026, i64 184}
!1262 = !DILocation(line: 394, column: 18, scope: !735, inlinedAt: !1251)
!1263 = !DILocation(line: 398, column: 16, scope: !1258, inlinedAt: !1251)
!1264 = !DILocation(line: 928, column: 15, scope: !679)
!1265 = !DILocation(line: 234, column: 25, scope: !747, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 977, column: 5, scope: !679)
!1267 = !DILocation(line: 236, column: 14, scope: !747, inlinedAt: !1266)
!1268 = !DILocation(line: 236, column: 22, scope: !747, inlinedAt: !1266)
!1269 = !DILocation(line: 237, column: 14, scope: !747, inlinedAt: !1266)
!1270 = !DILocation(line: 237, column: 22, scope: !747, inlinedAt: !1266)
!1271 = !DILocation(line: 456, column: 29, scope: !750, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 978, column: 5, scope: !679)
!1273 = !DILocation(line: 456, column: 47, scope: !750, inlinedAt: !1272)
!1274 = !DILocation(line: 458, column: 16, scope: !750, inlinedAt: !1272)
!1275 = !DILocation(line: 469, column: 5, scope: !750, inlinedAt: !1272)
!1276 = !DILocation(line: 458, column: 31, scope: !750, inlinedAt: !1272)
!1277 = !DILocation(line: 469, column: 15, scope: !750, inlinedAt: !1272)
!1278 = !DILocation(line: 487, column: 29, scope: !758, inlinedAt: !1272)
!1279 = !DILocation(line: 978, column: 5, scope: !679)
!1280 = !DILocation(line: 472, column: 13, scope: !759, inlinedAt: !1272)
!1281 = !DILocation(line: 503, column: 13, scope: !1282, inlinedAt: !1272)
!1282 = !DILexicalBlockFile(scope: !1283, file: !1, discriminator: 1)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 503, column: 13)
!1284 = distinct !DILexicalBlock(scope: !759, file: !1, line: 493, column: 14)
!1285 = !DILocation(line: 472, column: 13, scope: !756, inlinedAt: !1272)
!1286 = !DILocation(line: 481, column: 28, scope: !758, inlinedAt: !1272)
!1287 = !DILocation(line: 481, column: 23, scope: !758, inlinedAt: !1272)
!1288 = !DILocation(line: 482, column: 37, scope: !758, inlinedAt: !1272)
!1289 = !DILocation(line: 482, column: 50, scope: !758, inlinedAt: !1272)
!1290 = !DILocation(line: 482, column: 26, scope: !758, inlinedAt: !1272)
!1291 = !DILocation(line: 484, column: 13, scope: !1292, inlinedAt: !1272)
!1292 = !DILexicalBlockFile(scope: !1293, file: !1, discriminator: 1)
!1293 = distinct !DILexicalBlock(scope: !758, file: !1, line: 484, column: 13)
!1294 = !DILocation(line: 485, column: 20, scope: !758, inlinedAt: !1272)
!1295 = !DILocation(line: 488, column: 27, scope: !758, inlinedAt: !1272)
!1296 = !DILocation(line: 470, column: 20, scope: !756, inlinedAt: !1272)
!1297 = !DILocation(line: 489, column: 17, scope: !1298, inlinedAt: !1272)
!1298 = distinct !DILexicalBlock(scope: !758, file: !1, line: 489, column: 17)
!1299 = !DILocation(line: 489, column: 17, scope: !758, inlinedAt: !1272)
!1300 = !DILocation(line: 490, column: 17, scope: !1301, inlinedAt: !1272)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 489, column: 41)
!1302 = !DILocation(line: 491, column: 13, scope: !1301, inlinedAt: !1272)
!1303 = !DILocation(line: 501, column: 27, scope: !1284, inlinedAt: !1272)
!1304 = !DILocation(line: 273, column: 42, scope: !770, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 502, column: 13, scope: !1284, inlinedAt: !1272)
!1306 = !DILocation(line: 276, column: 40, scope: !770, inlinedAt: !1305)
!1307 = !DILocation(line: 276, column: 16, scope: !770, inlinedAt: !1305)
!1308 = !DILocation(line: 277, column: 16, scope: !770, inlinedAt: !1305)
!1309 = !DILocation(line: 279, column: 22, scope: !770, inlinedAt: !1305)
!1310 = !DILocation(line: 279, column: 30, scope: !770, inlinedAt: !1305)
!1311 = !DILocation(line: 280, column: 22, scope: !770, inlinedAt: !1305)
!1312 = !DILocation(line: 280, column: 30, scope: !770, inlinedAt: !1305)
!1313 = !DILocation(line: 282, column: 44, scope: !770, inlinedAt: !1305)
!1314 = !DILocation(line: 282, column: 33, scope: !770, inlinedAt: !1305)
!1315 = !DILocation(line: 275, column: 16, scope: !770, inlinedAt: !1305)
!1316 = !DILocation(line: 283, column: 45, scope: !770, inlinedAt: !1305)
!1317 = !DILocation(line: 283, column: 18, scope: !770, inlinedAt: !1305)
!1318 = !DILocation(line: 283, column: 26, scope: !770, inlinedAt: !1305)
!1319 = !DILocation(line: 284, column: 22, scope: !770, inlinedAt: !1305)
!1320 = !DILocation(line: 981, column: 15, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !679, file: !1, line: 981, column: 9)
!1322 = !DILocation(line: 981, column: 9, scope: !679)
!1323 = !DILocation(line: 982, column: 24, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 982, column: 13)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 981, column: 23)
!1326 = !DILocation(line: 982, column: 13, scope: !1325)
!1327 = !DILocation(line: 308, column: 24, scope: !1138, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 983, column: 35, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 982, column: 48)
!1330 = !DILocation(line: 983, column: 35, scope: !1329)
!1331 = !DILocation(line: 308, column: 36, scope: !1142, inlinedAt: !1328)
!1332 = !DILocation(line: 309, column: 10, scope: !1144, inlinedAt: !1328)
!1333 = !DILocation(line: 307, column: 16, scope: !700, inlinedAt: !1328)
!1334 = !DILocation(line: 308, column: 5, scope: !1138, inlinedAt: !1328)
!1335 = !DILocation(line: 983, column: 32, scope: !1329)
!1336 = !DILocation(line: 984, column: 9, scope: !1329)
!1337 = !DILocation(line: 289, column: 26, scope: !719, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 985, column: 9, scope: !1325)
!1339 = !DILocation(line: 289, column: 43, scope: !719, inlinedAt: !1338)
!1340 = !DILocation(line: 241, column: 29, scope: !726, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 293, column: 10, scope: !1200, inlinedAt: !1338)
!1342 = !DILocation(line: 243, column: 22, scope: !726, inlinedAt: !1341)
!1343 = !DILocation(line: 243, column: 30, scope: !726, inlinedAt: !1341)
!1344 = !DILocation(line: 293, column: 9, scope: !719, inlinedAt: !1338)
!1345 = !DILocation(line: 236, column: 14, scope: !747, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 300, column: 5, scope: !719, inlinedAt: !1338)
!1347 = !DILocation(line: 294, column: 23, scope: !1199, inlinedAt: !1338)
!1348 = !DILocation(line: 291, column: 16, scope: !719, inlinedAt: !1338)
!1349 = !DILocation(line: 295, column: 18, scope: !1199, inlinedAt: !1338)
!1350 = !DILocation(line: 295, column: 26, scope: !1199, inlinedAt: !1338)
!1351 = !DILocation(line: 296, column: 30, scope: !1199, inlinedAt: !1338)
!1352 = !DILocation(line: 296, column: 38, scope: !1199, inlinedAt: !1338)
!1353 = !DILocation(line: 297, column: 35, scope: !1199, inlinedAt: !1338)
!1354 = !DILocation(line: 297, column: 24, scope: !1199, inlinedAt: !1338)
!1355 = !DILocation(line: 298, column: 28, scope: !1199, inlinedAt: !1338)
!1356 = !DILocation(line: 298, column: 36, scope: !1199, inlinedAt: !1338)
!1357 = !DILocation(line: 299, column: 5, scope: !1199, inlinedAt: !1338)
!1358 = !DILocation(line: 234, column: 25, scope: !747, inlinedAt: !1346)
!1359 = !DILocation(line: 236, column: 22, scope: !747, inlinedAt: !1346)
!1360 = !DILocation(line: 237, column: 22, scope: !747, inlinedAt: !1346)
!1361 = !DILocation(line: 986, column: 5, scope: !1325)
!1362 = !DILocation(line: 511, column: 26, scope: !777, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 990, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 987, column: 10)
!1365 = !DILocation(line: 513, column: 37, scope: !777, inlinedAt: !1363)
!1366 = !DILocation(line: 513, column: 23, scope: !777, inlinedAt: !1363)
!1367 = !DILocation(line: 514, column: 15, scope: !777, inlinedAt: !1363)
!1368 = !DILocation(line: 514, column: 5, scope: !777, inlinedAt: !1363)
!1369 = !DILocation(line: 516, column: 23, scope: !783, inlinedAt: !1363)
!1370 = !DILocation(line: 990, column: 9, scope: !1364)
!1371 = !DILocation(line: 513, column: 16, scope: !777, inlinedAt: !1363)
!1372 = !DILocation(line: 517, column: 13, scope: !1373, inlinedAt: !1363)
!1373 = distinct !DILexicalBlock(scope: !783, file: !1, line: 517, column: 13)
!1374 = !DILocation(line: 517, column: 13, scope: !783, inlinedAt: !1363)
!1375 = !DILocation(line: 515, column: 24, scope: !783, inlinedAt: !1363)
!1376 = !DILocation(line: 518, column: 13, scope: !1373, inlinedAt: !1363)
!1377 = !DILocation(line: 991, column: 28, scope: !1364)
!1378 = !DILocation(line: 304, column: 25, scope: !700, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 992, column: 28, scope: !1364)
!1380 = !DILocation(line: 307, column: 16, scope: !700, inlinedAt: !1379)
!1381 = !DILocation(line: 308, column: 10, scope: !1138, inlinedAt: !1379)
!1382 = !DILocation(line: 992, column: 28, scope: !1364)
!1383 = !DILocation(line: 308, column: 24, scope: !1138, inlinedAt: !1379)
!1384 = !DILocation(line: 308, column: 36, scope: !1142, inlinedAt: !1379)
!1385 = !DILocation(line: 309, column: 10, scope: !1144, inlinedAt: !1379)
!1386 = !DILocation(line: 308, column: 5, scope: !1138, inlinedAt: !1379)
!1387 = !DILocation(line: 992, column: 26, scope: !1364)
!1388 = !DILocation(line: 929, column: 15, scope: !679)
!1389 = !DILocation(line: 234, column: 25, scope: !747, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 998, column: 5, scope: !679)
!1391 = !DILocation(line: 236, column: 14, scope: !747, inlinedAt: !1390)
!1392 = !DILocation(line: 236, column: 22, scope: !747, inlinedAt: !1390)
!1393 = !DILocation(line: 237, column: 14, scope: !747, inlinedAt: !1390)
!1394 = !DILocation(line: 237, column: 22, scope: !747, inlinedAt: !1390)
!1395 = !DILocation(line: 535, column: 35, scope: !784, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 999, column: 5, scope: !679)
!1397 = !DILocation(line: 535, column: 59, scope: !784, inlinedAt: !1396)
!1398 = !DILocation(line: 543, column: 31, scope: !793, inlinedAt: !1396)
!1399 = !DILocation(line: 537, column: 16, scope: !784, inlinedAt: !1396)
!1400 = !DILocation(line: 543, column: 43, scope: !792, inlinedAt: !1396)
!1401 = !DILocation(line: 543, column: 5, scope: !793, inlinedAt: !1396)
!1402 = !DILocation(line: 547, column: 23, scope: !791, inlinedAt: !1396)
!1403 = !DILocation(line: 999, column: 5, scope: !679)
!1404 = !DILocation(line: 538, column: 16, scope: !784, inlinedAt: !1396)
!1405 = !{!1173, !1026, i64 376}
!1406 = !DILocation(line: 527, column: 32, scope: !794, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 549, column: 13, scope: !1408, inlinedAt: !1396)
!1408 = distinct !DILexicalBlock(scope: !791, file: !1, line: 549, column: 13)
!1409 = !DILocation(line: 549, column: 13, scope: !791, inlinedAt: !1396)
!1410 = !DILocation(line: 273, column: 25, scope: !770, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 550, column: 13, scope: !1412, inlinedAt: !1396)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 549, column: 39)
!1413 = !DILocation(line: 273, column: 42, scope: !770, inlinedAt: !1411)
!1414 = !DILocation(line: 276, column: 40, scope: !770, inlinedAt: !1411)
!1415 = !DILocation(line: 276, column: 16, scope: !770, inlinedAt: !1411)
!1416 = !DILocation(line: 277, column: 16, scope: !770, inlinedAt: !1411)
!1417 = !DILocation(line: 279, column: 22, scope: !770, inlinedAt: !1411)
!1418 = !DILocation(line: 279, column: 30, scope: !770, inlinedAt: !1411)
!1419 = !DILocation(line: 280, column: 22, scope: !770, inlinedAt: !1411)
!1420 = !DILocation(line: 280, column: 30, scope: !770, inlinedAt: !1411)
!1421 = !DILocation(line: 282, column: 44, scope: !770, inlinedAt: !1411)
!1422 = !DILocation(line: 282, column: 33, scope: !770, inlinedAt: !1411)
!1423 = !DILocation(line: 275, column: 16, scope: !770, inlinedAt: !1411)
!1424 = !DILocation(line: 283, column: 45, scope: !770, inlinedAt: !1411)
!1425 = !DILocation(line: 283, column: 18, scope: !770, inlinedAt: !1411)
!1426 = !DILocation(line: 283, column: 26, scope: !770, inlinedAt: !1411)
!1427 = !DILocation(line: 284, column: 22, scope: !770, inlinedAt: !1411)
!1428 = !DILocation(line: 551, column: 13, scope: !1429, inlinedAt: !1396)
!1429 = !DILexicalBlockFile(scope: !1430, file: !1, discriminator: 1)
!1430 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 551, column: 13)
!1431 = !DILocation(line: 552, column: 9, scope: !1412, inlinedAt: !1396)
!1432 = !DILocation(line: 577, column: 36, scope: !797, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 1004, column: 5, scope: !679)
!1434 = !DILocation(line: 574, column: 44, scope: !797, inlinedAt: !1433)
!1435 = !DILocation(line: 578, column: 15, scope: !1436, inlinedAt: !1433)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 578, column: 5)
!1437 = distinct !DILexicalBlock(scope: !797, file: !1, line: 578, column: 5)
!1438 = !DILocation(line: 578, column: 5, scope: !1437, inlinedAt: !1433)
!1439 = !DILocation(line: 580, column: 20, scope: !1440, inlinedAt: !1433)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 578, column: 51)
!1441 = !DILocation(line: 1004, column: 5, scope: !679)
!1442 = !DILocation(line: 580, column: 42, scope: !1440, inlinedAt: !1433)
!1443 = !DILocation(line: 576, column: 18, scope: !797, inlinedAt: !1433)
!1444 = !DILocation(line: 581, column: 16, scope: !1440, inlinedAt: !1433)
!1445 = !DILocation(line: 1009, column: 30, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !679, file: !1, line: 1009, column: 5)
!1447 = !DILocation(line: 930, column: 16, scope: !679)
!1448 = !DILocation(line: 1009, column: 42, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1009, column: 5)
!1450 = !DILocation(line: 1009, column: 5, scope: !1446)
!1451 = !DILocation(line: 1011, column: 10, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 1010, column: 42)
!1453 = !DILocation(line: 1012, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1452, file: !1, line: 1012, column: 13)
!1455 = !DILocation(line: 1012, column: 19, scope: !1454)
!1456 = !DILocation(line: 1012, column: 13, scope: !1452)
!1457 = !DILocation(line: 1013, column: 40, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 1012, column: 40)
!1459 = !DILocation(line: 741, column: 19, scope: !811, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 1013, column: 13, scope: !1458)
!1461 = !DILocation(line: 744, column: 29, scope: !811, inlinedAt: !1460)
!1462 = !DILocation(line: 744, column: 42, scope: !811, inlinedAt: !1460)
!1463 = !{!1173, !1026, i64 24}
!1464 = !DILocation(line: 743, column: 5, scope: !811, inlinedAt: !1460)
!1465 = !DILocation(line: 1014, column: 9, scope: !1458)
!1466 = !DILocation(line: 1010, column: 33, scope: !1449)
!1467 = !DILocation(line: 618, column: 31, scope: !832, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 1018, column: 10, scope: !679)
!1469 = !DILocation(line: 599, column: 28, scope: !817, inlinedAt: !1468)
!1470 = !DILocation(line: 599, column: 52, scope: !817, inlinedAt: !1468)
!1471 = !DILocation(line: 604, column: 5, scope: !817, inlinedAt: !1468)
!1472 = !DILocation(line: 606, column: 9, scope: !817, inlinedAt: !1468)
!1473 = !DILocation(line: 604, column: 15, scope: !817, inlinedAt: !1468)
!1474 = !DILocation(line: 234, column: 25, scope: !747, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 608, column: 5, scope: !817, inlinedAt: !1468)
!1476 = !DILocation(line: 236, column: 14, scope: !747, inlinedAt: !1475)
!1477 = !DILocation(line: 236, column: 22, scope: !747, inlinedAt: !1475)
!1478 = !DILocation(line: 237, column: 14, scope: !747, inlinedAt: !1475)
!1479 = !DILocation(line: 237, column: 22, scope: !747, inlinedAt: !1475)
!1480 = !DILocation(line: 601, column: 16, scope: !817, inlinedAt: !1468)
!1481 = !DILocation(line: 618, column: 43, scope: !831, inlinedAt: !1468)
!1482 = !DILocation(line: 618, column: 5, scope: !832, inlinedAt: !1468)
!1483 = !DILocation(line: 283, column: 45, scope: !770, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 691, column: 13, scope: !834, inlinedAt: !1468)
!1485 = !DILocation(line: 243, column: 22, scope: !726, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 698, column: 14, scope: !1487, inlinedAt: !1468)
!1487 = !DILexicalBlockFile(scope: !1488, file: !1, discriminator: 2)
!1488 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 1)
!1489 = !DILocation(line: 241, column: 29, scope: !726, inlinedAt: !1486)
!1490 = !DILocation(line: 243, column: 30, scope: !726, inlinedAt: !1486)
!1491 = !DILocation(line: 698, column: 5, scope: !817, inlinedAt: !1468)
!1492 = !DILocation(line: 282, column: 44, scope: !770, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 731, column: 13, scope: !1494, inlinedAt: !1468)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 729, column: 44)
!1495 = distinct !DILexicalBlock(scope: !838, file: !1, line: 729, column: 13)
!1496 = !DILocation(line: 1018, column: 10, scope: !679)
!1497 = !DILocation(line: 623, column: 23, scope: !830, inlinedAt: !1468)
!1498 = !DILocation(line: 605, column: 16, scope: !817, inlinedAt: !1468)
!1499 = !DILocation(line: 625, column: 15, scope: !1500, inlinedAt: !1468)
!1500 = distinct !DILexicalBlock(scope: !830, file: !1, line: 625, column: 13)
!1501 = !{!1173, !1042, i64 208}
!1502 = !DILocation(line: 625, column: 13, scope: !830, inlinedAt: !1468)
!1503 = !DILocation(line: 621, column: 14, scope: !830, inlinedAt: !1468)
!1504 = !DILocation(line: 630, column: 33, scope: !830, inlinedAt: !1468)
!1505 = !DILocation(line: 629, column: 18, scope: !830, inlinedAt: !1468)
!1506 = !DILocation(line: 619, column: 27, scope: !830, inlinedAt: !1468)
!1507 = !DILocation(line: 636, column: 19, scope: !836, inlinedAt: !1468)
!1508 = !DILocation(line: 636, column: 31, scope: !835, inlinedAt: !1468)
!1509 = !DILocation(line: 636, column: 9, scope: !836, inlinedAt: !1468)
!1510 = !DILocation(line: 644, column: 13, scope: !834, inlinedAt: !1468)
!1511 = !DILocation(line: 646, column: 21, scope: !1512, inlinedAt: !1468)
!1512 = distinct !DILexicalBlock(scope: !834, file: !1, line: 646, column: 17)
!1513 = !{!1514, !1026, i64 24}
!1514 = !{!"_PyWeakReference", !1041, i64 0, !1026, i64 16, !1026, i64 24, !1042, i64 32, !1026, i64 40, !1026, i64 48}
!1515 = !DILocation(line: 646, column: 33, scope: !1512, inlinedAt: !1468)
!1516 = !DILocation(line: 646, column: 17, scope: !834, inlinedAt: !1468)
!1517 = !DILocation(line: 677, column: 17, scope: !1518, inlinedAt: !1468)
!1518 = distinct !DILexicalBlock(scope: !834, file: !1, line: 677, column: 17)
!1519 = !DILocation(line: 677, column: 17, scope: !834, inlinedAt: !1468)
!1520 = !DILocation(line: 684, column: 13, scope: !834, inlinedAt: !1468)
!1521 = !DILocation(line: 273, column: 42, scope: !770, inlinedAt: !1484)
!1522 = !DILocation(line: 276, column: 40, scope: !770, inlinedAt: !1484)
!1523 = !DILocation(line: 276, column: 16, scope: !770, inlinedAt: !1484)
!1524 = !DILocation(line: 277, column: 40, scope: !770, inlinedAt: !1484)
!1525 = !DILocation(line: 277, column: 16, scope: !770, inlinedAt: !1484)
!1526 = !DILocation(line: 279, column: 22, scope: !770, inlinedAt: !1484)
!1527 = !DILocation(line: 279, column: 30, scope: !770, inlinedAt: !1484)
!1528 = !DILocation(line: 280, column: 22, scope: !770, inlinedAt: !1484)
!1529 = !DILocation(line: 280, column: 30, scope: !770, inlinedAt: !1484)
!1530 = !DILocation(line: 282, column: 44, scope: !770, inlinedAt: !1484)
!1531 = !DILocation(line: 282, column: 33, scope: !770, inlinedAt: !1484)
!1532 = !DILocation(line: 275, column: 16, scope: !770, inlinedAt: !1484)
!1533 = !DILocation(line: 283, column: 26, scope: !770, inlinedAt: !1484)
!1534 = !DILocation(line: 284, column: 22, scope: !770, inlinedAt: !1484)
!1535 = !DILocation(line: 692, column: 9, scope: !835, inlinedAt: !1468)
!1536 = !DILocation(line: 703, column: 14, scope: !838, inlinedAt: !1468)
!1537 = !DILocation(line: 602, column: 15, scope: !817, inlinedAt: !1468)
!1538 = !DILocation(line: 707, column: 24, scope: !838, inlinedAt: !1468)
!1539 = !DILocation(line: 700, column: 19, scope: !838, inlinedAt: !1468)
!1540 = !DILocation(line: 711, column: 16, scope: !838, inlinedAt: !1468)
!1541 = !DILocation(line: 699, column: 19, scope: !838, inlinedAt: !1468)
!1542 = !DILocation(line: 712, column: 18, scope: !842, inlinedAt: !1468)
!1543 = !DILocation(line: 712, column: 13, scope: !838, inlinedAt: !1468)
!1544 = !DILocation(line: 713, column: 13, scope: !842, inlinedAt: !1468)
!1545 = !DILocation(line: 715, column: 13, scope: !1546, inlinedAt: !1468)
!1546 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 1)
!1547 = !DILocation(line: 715, column: 13, scope: !1548, inlinedAt: !1468)
!1548 = distinct !DILexicalBlock(scope: !841, file: !1, line: 715, column: 13)
!1549 = !DILocation(line: 715, column: 13, scope: !841, inlinedAt: !1468)
!1550 = !DILocation(line: 715, column: 13, scope: !1551, inlinedAt: !1468)
!1551 = !DILexicalBlockFile(scope: !1548, file: !1, discriminator: 3)
!1552 = !DILocation(line: 728, column: 9, scope: !1553, inlinedAt: !1468)
!1553 = !DILexicalBlockFile(scope: !844, file: !1, discriminator: 1)
!1554 = !DILocation(line: 728, column: 9, scope: !1555, inlinedAt: !1468)
!1555 = distinct !DILexicalBlock(scope: !844, file: !1, line: 728, column: 9)
!1556 = !DILocation(line: 728, column: 9, scope: !844, inlinedAt: !1468)
!1557 = !DILocation(line: 728, column: 9, scope: !1558, inlinedAt: !1468)
!1558 = !DILexicalBlockFile(scope: !1555, file: !1, discriminator: 3)
!1559 = !DILocation(line: 729, column: 37, scope: !1495, inlinedAt: !1468)
!1560 = !DILocation(line: 729, column: 13, scope: !838, inlinedAt: !1468)
!1561 = !DILocation(line: 273, column: 42, scope: !770, inlinedAt: !1493)
!1562 = !DILocation(line: 276, column: 40, scope: !770, inlinedAt: !1493)
!1563 = !DILocation(line: 276, column: 16, scope: !770, inlinedAt: !1493)
!1564 = !DILocation(line: 277, column: 40, scope: !770, inlinedAt: !1493)
!1565 = !DILocation(line: 277, column: 16, scope: !770, inlinedAt: !1493)
!1566 = !DILocation(line: 279, column: 22, scope: !770, inlinedAt: !1493)
!1567 = !DILocation(line: 279, column: 30, scope: !770, inlinedAt: !1493)
!1568 = !DILocation(line: 280, column: 22, scope: !770, inlinedAt: !1493)
!1569 = !DILocation(line: 280, column: 30, scope: !770, inlinedAt: !1493)
!1570 = !DILocation(line: 282, column: 33, scope: !770, inlinedAt: !1493)
!1571 = !DILocation(line: 275, column: 16, scope: !770, inlinedAt: !1493)
!1572 = !DILocation(line: 283, column: 45, scope: !770, inlinedAt: !1493)
!1573 = !DILocation(line: 283, column: 18, scope: !770, inlinedAt: !1493)
!1574 = !DILocation(line: 283, column: 26, scope: !770, inlinedAt: !1493)
!1575 = !DILocation(line: 284, column: 22, scope: !770, inlinedAt: !1493)
!1576 = !DILocation(line: 734, column: 13, scope: !1495, inlinedAt: !1468)
!1577 = !DILocation(line: 738, column: 1, scope: !817, inlinedAt: !1468)
!1578 = !DILocation(line: 1018, column: 7, scope: !679)
!1579 = !DILocation(line: 784, column: 29, scope: !845, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 1021, column: 5, scope: !679)
!1581 = !DILocation(line: 787, column: 5, scope: !845, inlinedAt: !1580)
!1582 = !DILocation(line: 787, column: 15, scope: !845, inlinedAt: !1580)
!1583 = !DILocation(line: 234, column: 25, scope: !747, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 797, column: 5, scope: !845, inlinedAt: !1580)
!1585 = !DILocation(line: 236, column: 14, scope: !747, inlinedAt: !1584)
!1586 = !DILocation(line: 236, column: 22, scope: !747, inlinedAt: !1584)
!1587 = !DILocation(line: 237, column: 14, scope: !747, inlinedAt: !1584)
!1588 = !DILocation(line: 237, column: 22, scope: !747, inlinedAt: !1584)
!1589 = !DILocation(line: 241, column: 29, scope: !726, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 799, column: 13, scope: !845, inlinedAt: !1580)
!1591 = !DILocation(line: 243, column: 22, scope: !726, inlinedAt: !1590)
!1592 = !DILocation(line: 243, column: 30, scope: !726, inlinedAt: !1590)
!1593 = !DILocation(line: 799, column: 5, scope: !845, inlinedAt: !1580)
!1594 = !DILocation(line: 801, column: 24, scope: !851, inlinedAt: !1580)
!1595 = !DILocation(line: 1021, column: 5, scope: !679)
!1596 = !DILocation(line: 801, column: 19, scope: !851, inlinedAt: !1580)
!1597 = !DILocation(line: 273, column: 42, scope: !770, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 802, column: 9, scope: !851, inlinedAt: !1580)
!1599 = !DILocation(line: 276, column: 40, scope: !770, inlinedAt: !1598)
!1600 = !DILocation(line: 276, column: 16, scope: !770, inlinedAt: !1598)
!1601 = !DILocation(line: 277, column: 40, scope: !770, inlinedAt: !1598)
!1602 = !DILocation(line: 277, column: 16, scope: !770, inlinedAt: !1598)
!1603 = !DILocation(line: 279, column: 22, scope: !770, inlinedAt: !1598)
!1604 = !DILocation(line: 279, column: 30, scope: !770, inlinedAt: !1598)
!1605 = !DILocation(line: 280, column: 22, scope: !770, inlinedAt: !1598)
!1606 = !DILocation(line: 280, column: 30, scope: !770, inlinedAt: !1598)
!1607 = !DILocation(line: 282, column: 44, scope: !770, inlinedAt: !1598)
!1608 = !DILocation(line: 282, column: 33, scope: !770, inlinedAt: !1598)
!1609 = !DILocation(line: 275, column: 16, scope: !770, inlinedAt: !1598)
!1610 = !DILocation(line: 283, column: 45, scope: !770, inlinedAt: !1598)
!1611 = !DILocation(line: 283, column: 18, scope: !770, inlinedAt: !1598)
!1612 = !DILocation(line: 283, column: 26, scope: !770, inlinedAt: !1598)
!1613 = !DILocation(line: 284, column: 22, scope: !770, inlinedAt: !1598)
!1614 = !DILocation(line: 803, column: 14, scope: !856, inlinedAt: !1580)
!1615 = !DILocation(line: 803, column: 38, scope: !856, inlinedAt: !1580)
!1616 = !DILocation(line: 804, column: 17, scope: !856, inlinedAt: !1580)
!1617 = !{!1173, !1042, i64 168}
!1618 = !DILocation(line: 804, column: 74, scope: !856, inlinedAt: !1580)
!1619 = !DILocation(line: 805, column: 42, scope: !856, inlinedAt: !1580)
!1620 = !{!1173, !1026, i64 392}
!1621 = !DILocation(line: 786, column: 16, scope: !845, inlinedAt: !1580)
!1622 = !DILocation(line: 805, column: 55, scope: !856, inlinedAt: !1580)
!1623 = !DILocation(line: 803, column: 13, scope: !851, inlinedAt: !1580)
!1624 = !DILocation(line: 806, column: 13, scope: !1625, inlinedAt: !1580)
!1625 = !DILexicalBlockFile(scope: !1626, file: !1, discriminator: 1)
!1626 = distinct !DILexicalBlock(scope: !855, file: !1, line: 806, column: 13)
!1627 = !DILocation(line: 807, column: 13, scope: !855, inlinedAt: !1580)
!1628 = !DILocation(line: 808, column: 13, scope: !855, inlinedAt: !1580)
!1629 = !DILocation(line: 809, column: 13, scope: !1630, inlinedAt: !1580)
!1630 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 1)
!1631 = !DILocation(line: 809, column: 13, scope: !1632, inlinedAt: !1580)
!1632 = distinct !DILexicalBlock(scope: !854, file: !1, line: 809, column: 13)
!1633 = !DILocation(line: 809, column: 13, scope: !854, inlinedAt: !1580)
!1634 = !DILocation(line: 809, column: 13, scope: !1635, inlinedAt: !1580)
!1635 = !DILexicalBlockFile(scope: !1632, file: !1, discriminator: 3)
!1636 = !DILocation(line: 243, column: 22, scope: !726, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 293, column: 10, scope: !1200, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 812, column: 5, scope: !845, inlinedAt: !1580)
!1639 = !DILocation(line: 289, column: 26, scope: !719, inlinedAt: !1638)
!1640 = !DILocation(line: 289, column: 43, scope: !719, inlinedAt: !1638)
!1641 = !DILocation(line: 241, column: 29, scope: !726, inlinedAt: !1637)
!1642 = !DILocation(line: 243, column: 30, scope: !726, inlinedAt: !1637)
!1643 = !DILocation(line: 293, column: 9, scope: !719, inlinedAt: !1638)
!1644 = !DILocation(line: 234, column: 25, scope: !747, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 300, column: 5, scope: !719, inlinedAt: !1638)
!1646 = !DILocation(line: 813, column: 1, scope: !845, inlinedAt: !1580)
!1647 = !DILocation(line: 819, column: 26, scope: !857, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 1023, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !679, file: !1, line: 1023, column: 9)
!1650 = !DILocation(line: 822, column: 5, scope: !1651, inlinedAt: !1648)
!1651 = distinct !DILexicalBlock(scope: !857, file: !1, line: 822, column: 5)
!1652 = !DILocation(line: 294, column: 23, scope: !1199, inlinedAt: !1638)
!1653 = !DILocation(line: 291, column: 16, scope: !719, inlinedAt: !1638)
!1654 = !DILocation(line: 295, column: 18, scope: !1199, inlinedAt: !1638)
!1655 = !DILocation(line: 295, column: 26, scope: !1199, inlinedAt: !1638)
!1656 = !DILocation(line: 296, column: 30, scope: !1199, inlinedAt: !1638)
!1657 = !DILocation(line: 296, column: 38, scope: !1199, inlinedAt: !1638)
!1658 = !DILocation(line: 297, column: 35, scope: !1199, inlinedAt: !1638)
!1659 = !DILocation(line: 297, column: 24, scope: !1199, inlinedAt: !1638)
!1660 = !DILocation(line: 298, column: 28, scope: !1199, inlinedAt: !1638)
!1661 = !DILocation(line: 298, column: 36, scope: !1199, inlinedAt: !1638)
!1662 = !DILocation(line: 822, column: 31, scope: !1651, inlinedAt: !1648)
!1663 = !DILocation(line: 822, column: 43, scope: !1664, inlinedAt: !1648)
!1664 = distinct !DILexicalBlock(scope: !1651, file: !1, line: 822, column: 5)
!1665 = !DILocation(line: 824, column: 9, scope: !1666, inlinedAt: !1648)
!1666 = !DILexicalBlockFile(scope: !1667, file: !1, discriminator: 1)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 824, column: 9)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 823, column: 31)
!1669 = !DILocation(line: 1023, column: 9, scope: !1649)
!1670 = !DILocation(line: 823, column: 22, scope: !1664, inlinedAt: !1648)
!1671 = !DILocation(line: 395, column: 36, scope: !735, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 827, column: 5, scope: !857, inlinedAt: !1648)
!1673 = !DILocation(line: 392, column: 26, scope: !735, inlinedAt: !1672)
!1674 = !DILocation(line: 396, column: 15, scope: !1254, inlinedAt: !1672)
!1675 = !DILocation(line: 396, column: 5, scope: !1255, inlinedAt: !1672)
!1676 = !DILocation(line: 397, column: 20, scope: !1258, inlinedAt: !1672)
!1677 = !DILocation(line: 827, column: 5, scope: !857, inlinedAt: !1648)
!1678 = !DILocation(line: 397, column: 42, scope: !1258, inlinedAt: !1672)
!1679 = !DILocation(line: 394, column: 18, scope: !735, inlinedAt: !1672)
!1680 = !DILocation(line: 398, column: 16, scope: !1258, inlinedAt: !1672)
!1681 = !DILocation(line: 841, column: 31, scope: !1682, inlinedAt: !1683)
!1682 = distinct !DILexicalBlock(scope: !861, file: !1, line: 841, column: 5)
!1683 = distinct !DILocation(line: 1024, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 1023, column: 38)
!1685 = !DILocation(line: 828, column: 43, scope: !1686, inlinedAt: !1648)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !1, line: 828, column: 5)
!1687 = distinct !DILexicalBlock(scope: !857, file: !1, line: 828, column: 5)
!1688 = !DILocation(line: 828, column: 5, scope: !1687, inlinedAt: !1648)
!1689 = !DILocation(line: 831, column: 13, scope: !1690, inlinedAt: !1648)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !1, line: 831, column: 13)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 829, column: 31)
!1692 = !DILocation(line: 829, column: 22, scope: !1686, inlinedAt: !1648)
!1693 = !DILocation(line: 828, column: 31, scope: !1687, inlinedAt: !1648)
!1694 = !DILocation(line: 831, column: 32, scope: !1690, inlinedAt: !1648)
!1695 = !DILocation(line: 831, column: 13, scope: !1691, inlinedAt: !1648)
!1696 = !DILocation(line: 843, column: 9, scope: !1697, inlinedAt: !1683)
!1697 = !DILexicalBlockFile(scope: !1698, file: !1, discriminator: 1)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !1, line: 843, column: 9)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !1, line: 842, column: 31)
!1700 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 841, column: 5)
!1701 = !DILocation(line: 1024, column: 9, scope: !1684)
!1702 = !DILocation(line: 841, column: 43, scope: !1700, inlinedAt: !1683)
!1703 = !DILocation(line: 841, column: 5, scope: !1682, inlinedAt: !1683)
!1704 = !DILocation(line: 243, column: 22, scope: !726, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 293, column: 10, scope: !1200, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 1025, column: 9, scope: !1684)
!1707 = !DILocation(line: 289, column: 26, scope: !719, inlinedAt: !1706)
!1708 = !DILocation(line: 289, column: 43, scope: !719, inlinedAt: !1706)
!1709 = !DILocation(line: 241, column: 29, scope: !726, inlinedAt: !1705)
!1710 = !DILocation(line: 243, column: 30, scope: !726, inlinedAt: !1705)
!1711 = !DILocation(line: 293, column: 9, scope: !719, inlinedAt: !1706)
!1712 = !DILocation(line: 294, column: 23, scope: !1199, inlinedAt: !1706)
!1713 = !DILocation(line: 291, column: 16, scope: !719, inlinedAt: !1706)
!1714 = !DILocation(line: 295, column: 18, scope: !1199, inlinedAt: !1706)
!1715 = !DILocation(line: 295, column: 26, scope: !1199, inlinedAt: !1706)
!1716 = !DILocation(line: 296, column: 30, scope: !1199, inlinedAt: !1706)
!1717 = !DILocation(line: 296, column: 38, scope: !1199, inlinedAt: !1706)
!1718 = !DILocation(line: 297, column: 35, scope: !1199, inlinedAt: !1706)
!1719 = !DILocation(line: 297, column: 24, scope: !1199, inlinedAt: !1706)
!1720 = !DILocation(line: 298, column: 28, scope: !1199, inlinedAt: !1706)
!1721 = !DILocation(line: 298, column: 36, scope: !1199, inlinedAt: !1706)
!1722 = !DILocation(line: 299, column: 5, scope: !1199, inlinedAt: !1706)
!1723 = !DILocation(line: 234, column: 25, scope: !747, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 300, column: 5, scope: !719, inlinedAt: !1706)
!1725 = !DILocation(line: 236, column: 22, scope: !747, inlinedAt: !1724)
!1726 = !DILocation(line: 237, column: 22, scope: !747, inlinedAt: !1724)
!1727 = !DILocation(line: 1026, column: 5, scope: !1684)
!1728 = !DILocation(line: 852, column: 27, scope: !865, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 1032, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 1027, column: 10)
!1731 = !DILocation(line: 852, column: 51, scope: !865, inlinedAt: !1729)
!1732 = !DILocation(line: 241, column: 29, scope: !726, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 856, column: 13, scope: !865, inlinedAt: !1729)
!1734 = !DILocation(line: 243, column: 30, scope: !726, inlinedAt: !1733)
!1735 = !DILocation(line: 856, column: 5, scope: !865, inlinedAt: !1729)
!1736 = !DILocation(line: 282, column: 44, scope: !770, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 872, column: 13, scope: !1738, inlinedAt: !1729)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 870, column: 44)
!1739 = distinct !DILexicalBlock(scope: !871, file: !1, line: 870, column: 13)
!1740 = !DILocation(line: 1032, column: 9, scope: !1730)
!1741 = !DILocation(line: 858, column: 24, scope: !871, inlinedAt: !1729)
!1742 = !DILocation(line: 858, column: 19, scope: !871, inlinedAt: !1729)
!1743 = !DILocation(line: 860, column: 13, scope: !878, inlinedAt: !1729)
!1744 = !DILocation(line: 860, column: 19, scope: !878, inlinedAt: !1729)
!1745 = !DILocation(line: 860, column: 13, scope: !871, inlinedAt: !1729)
!1746 = !DILocation(line: 861, column: 27, scope: !1747, inlinedAt: !1729)
!1747 = distinct !DILexicalBlock(scope: !878, file: !1, line: 860, column: 36)
!1748 = !DILocation(line: 861, column: 13, scope: !1747, inlinedAt: !1729)
!1749 = !DILocation(line: 862, column: 9, scope: !1747, inlinedAt: !1729)
!1750 = !DILocation(line: 864, column: 26, scope: !876, inlinedAt: !1729)
!1751 = !DILocation(line: 864, column: 39, scope: !876, inlinedAt: !1729)
!1752 = !{!1173, !1026, i64 192}
!1753 = !DILocation(line: 854, column: 13, scope: !865, inlinedAt: !1729)
!1754 = !DILocation(line: 864, column: 49, scope: !876, inlinedAt: !1729)
!1755 = !DILocation(line: 864, column: 17, scope: !877, inlinedAt: !1729)
!1756 = !DILocation(line: 865, column: 17, scope: !875, inlinedAt: !1729)
!1757 = !DILocation(line: 866, column: 17, scope: !875, inlinedAt: !1729)
!1758 = !DILocation(line: 867, column: 17, scope: !1759, inlinedAt: !1729)
!1759 = !DILexicalBlockFile(scope: !874, file: !1, discriminator: 1)
!1760 = !DILocation(line: 867, column: 17, scope: !1761, inlinedAt: !1729)
!1761 = distinct !DILexicalBlock(scope: !874, file: !1, line: 867, column: 17)
!1762 = !DILocation(line: 867, column: 17, scope: !874, inlinedAt: !1729)
!1763 = !DILocation(line: 867, column: 17, scope: !1764, inlinedAt: !1729)
!1764 = !DILexicalBlockFile(scope: !1761, file: !1, discriminator: 3)
!1765 = !DILocation(line: 870, column: 29, scope: !1739, inlinedAt: !1729)
!1766 = !DILocation(line: 870, column: 37, scope: !1739, inlinedAt: !1729)
!1767 = !DILocation(line: 870, column: 13, scope: !871, inlinedAt: !1729)
!1768 = !DILocation(line: 273, column: 42, scope: !770, inlinedAt: !1737)
!1769 = !DILocation(line: 276, column: 40, scope: !770, inlinedAt: !1737)
!1770 = !DILocation(line: 276, column: 16, scope: !770, inlinedAt: !1737)
!1771 = !DILocation(line: 277, column: 40, scope: !770, inlinedAt: !1737)
!1772 = !DILocation(line: 277, column: 16, scope: !770, inlinedAt: !1737)
!1773 = !DILocation(line: 279, column: 22, scope: !770, inlinedAt: !1737)
!1774 = !DILocation(line: 279, column: 30, scope: !770, inlinedAt: !1737)
!1775 = !DILocation(line: 280, column: 22, scope: !770, inlinedAt: !1737)
!1776 = !DILocation(line: 280, column: 30, scope: !770, inlinedAt: !1737)
!1777 = !DILocation(line: 282, column: 33, scope: !770, inlinedAt: !1737)
!1778 = !DILocation(line: 275, column: 16, scope: !770, inlinedAt: !1737)
!1779 = !DILocation(line: 283, column: 45, scope: !770, inlinedAt: !1737)
!1780 = !DILocation(line: 283, column: 18, scope: !770, inlinedAt: !1737)
!1781 = !DILocation(line: 283, column: 26, scope: !770, inlinedAt: !1737)
!1782 = !DILocation(line: 284, column: 22, scope: !770, inlinedAt: !1737)
!1783 = !DILocation(line: 873, column: 13, scope: !1784, inlinedAt: !1729)
!1784 = !DILexicalBlockFile(scope: !1785, file: !1, discriminator: 1)
!1785 = distinct !DILexicalBlock(scope: !1738, file: !1, line: 873, column: 13)
!1786 = !DILocation(line: 243, column: 22, scope: !726, inlinedAt: !1733)
!1787 = !DILocation(line: 874, column: 9, scope: !1738, inlinedAt: !1729)
!1788 = !DILocation(line: 1037, column: 29, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !679, file: !1, line: 1037, column: 5)
!1790 = !DILocation(line: 1038, column: 13, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1789, file: !1, line: 1037, column: 5)
!1792 = !DILocation(line: 1037, column: 5, scope: !1789)
!1793 = !DILocation(line: 1040, column: 10, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1791, file: !1, line: 1039, column: 31)
!1795 = !DILocation(line: 1041, column: 13, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1794, file: !1, line: 1041, column: 13)
!1797 = !DILocation(line: 1041, column: 19, scope: !1796)
!1798 = !DILocation(line: 1041, column: 13, scope: !1794)
!1799 = !DILocation(line: 1042, column: 42, scope: !1796)
!1800 = !DILocation(line: 741, column: 19, scope: !811, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 1042, column: 13, scope: !1796)
!1802 = !DILocation(line: 744, column: 29, scope: !811, inlinedAt: !1801)
!1803 = !DILocation(line: 744, column: 42, scope: !811, inlinedAt: !1801)
!1804 = !DILocation(line: 743, column: 5, scope: !811, inlinedAt: !1801)
!1805 = !DILocation(line: 1042, column: 13, scope: !1796)
!1806 = !DILocation(line: 1039, column: 22, scope: !1791)
!1807 = !DILocation(line: 1044, column: 9, scope: !699)
!1808 = !DILocation(line: 1044, column: 15, scope: !699)
!1809 = !DILocation(line: 1044, column: 9, scope: !679)
!1810 = !DILocation(line: 900, column: 12, scope: !707, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 1045, column: 21, scope: !698)
!1812 = !DILocation(line: 901, column: 9, scope: !714, inlinedAt: !1811)
!1813 = !DILocation(line: 901, column: 14, scope: !714, inlinedAt: !1811)
!1814 = !DILocation(line: 901, column: 9, scope: !707, inlinedAt: !1811)
!1815 = !DILocation(line: 904, column: 23, scope: !713, inlinedAt: !1811)
!1816 = !DILocation(line: 904, column: 19, scope: !713, inlinedAt: !1811)
!1817 = !DILocation(line: 905, column: 15, scope: !718, inlinedAt: !1811)
!1818 = !DILocation(line: 905, column: 13, scope: !713, inlinedAt: !1811)
!1819 = !DILocation(line: 906, column: 13, scope: !1153, inlinedAt: !1811)
!1820 = !DILocation(line: 907, column: 9, scope: !1153, inlinedAt: !1811)
!1821 = !DILocation(line: 909, column: 17, scope: !1156, inlinedAt: !1811)
!1822 = !DILocation(line: 909, column: 17, scope: !1159, inlinedAt: !1811)
!1823 = !DILocation(line: 909, column: 17, scope: !717, inlinedAt: !1811)
!1824 = !DILocation(line: 910, column: 26, scope: !1156, inlinedAt: !1811)
!1825 = !DILocation(line: 910, column: 17, scope: !1156, inlinedAt: !1811)
!1826 = !DILocation(line: 1045, column: 21, scope: !698)
!1827 = !DILocation(line: 911, column: 13, scope: !1166, inlinedAt: !1811)
!1828 = !DILocation(line: 911, column: 13, scope: !1168, inlinedAt: !1811)
!1829 = !DILocation(line: 911, column: 13, scope: !716, inlinedAt: !1811)
!1830 = !DILocation(line: 911, column: 13, scope: !1171, inlinedAt: !1811)
!1831 = !DILocation(line: 1045, column: 16, scope: !698)
!1832 = !DILocation(line: 1046, column: 20, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !698, file: !1, line: 1046, column: 13)
!1834 = !DILocation(line: 1047, column: 13, scope: !1833)
!1835 = !DILocation(line: 1053, column: 18, scope: !1833)
!1836 = !DILocation(line: 1049, column: 13, scope: !1833)
!1837 = !DILocation(line: 1054, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !698, file: !1, line: 1054, column: 13)
!1839 = !DILocation(line: 1054, column: 19, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1838, file: !1, discriminator: 1)
!1841 = !DILocation(line: 1054, column: 16, scope: !1838)
!1842 = !DILocation(line: 1055, column: 52, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1838, file: !1, line: 1054, column: 23)
!1844 = !DILocation(line: 1055, column: 13, scope: !1843)
!1845 = !DILocation(line: 1056, column: 9, scope: !1843)
!1846 = !DILocation(line: 1057, column: 9, scope: !698)
!1847 = !DILocation(line: 1058, column: 5, scope: !698)
!1848 = !DILocation(line: 759, column: 36, scope: !879, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 1064, column: 11, scope: !679)
!1850 = !DILocation(line: 759, column: 16, scope: !879, inlinedAt: !1849)
!1851 = !DILocation(line: 761, column: 9, scope: !1852, inlinedAt: !1849)
!1852 = distinct !DILexicalBlock(scope: !879, file: !1, line: 761, column: 9)
!1853 = !DILocation(line: 761, column: 17, scope: !1852, inlinedAt: !1849)
!1854 = !DILocation(line: 761, column: 9, scope: !879, inlinedAt: !1849)
!1855 = !DILocation(line: 766, column: 15, scope: !886, inlinedAt: !1849)
!1856 = !DILocation(line: 766, column: 5, scope: !887, inlinedAt: !1849)
!1857 = !DILocation(line: 767, column: 24, scope: !885, inlinedAt: !1849)
!1858 = !DILocation(line: 762, column: 19, scope: !1859, inlinedAt: !1849)
!1859 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 761, column: 26)
!1860 = !DILocation(line: 762, column: 17, scope: !1859, inlinedAt: !1849)
!1861 = !DILocation(line: 763, column: 21, scope: !1862, inlinedAt: !1849)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 763, column: 13)
!1863 = !DILocation(line: 763, column: 13, scope: !1859, inlinedAt: !1849)
!1864 = !DILocation(line: 764, column: 13, scope: !1862, inlinedAt: !1849)
!1865 = !DILocation(line: 1064, column: 11, scope: !679)
!1866 = !DILocation(line: 767, column: 19, scope: !885, inlinedAt: !1849)
!1867 = !DILocation(line: 769, column: 14, scope: !1868, inlinedAt: !1849)
!1868 = distinct !DILexicalBlock(scope: !885, file: !1, line: 769, column: 13)
!1869 = !DILocation(line: 769, column: 20, scope: !1868, inlinedAt: !1849)
!1870 = !DILocation(line: 769, column: 37, scope: !1868, inlinedAt: !1849)
!1871 = !DILocation(line: 527, column: 32, scope: !794, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 769, column: 40, scope: !1868, inlinedAt: !1849)
!1873 = !DILocation(line: 769, column: 13, scope: !885, inlinedAt: !1849)
!1874 = !DILocation(line: 770, column: 31, scope: !1875, inlinedAt: !1849)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 770, column: 17)
!1876 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 769, column: 66)
!1877 = !DILocation(line: 770, column: 17, scope: !1875, inlinedAt: !1849)
!1878 = !DILocation(line: 770, column: 44, scope: !1875, inlinedAt: !1849)
!1879 = !DILocation(line: 770, column: 17, scope: !1876, inlinedAt: !1849)
!1880 = !DILocation(line: 766, column: 42, scope: !886, inlinedAt: !1849)
!1881 = !DILocation(line: 289, column: 26, scope: !719, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 775, column: 5, scope: !879, inlinedAt: !1849)
!1883 = !DILocation(line: 289, column: 43, scope: !719, inlinedAt: !1882)
!1884 = !DILocation(line: 241, column: 29, scope: !726, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 293, column: 10, scope: !1200, inlinedAt: !1882)
!1886 = !DILocation(line: 243, column: 22, scope: !726, inlinedAt: !1885)
!1887 = !DILocation(line: 243, column: 30, scope: !726, inlinedAt: !1885)
!1888 = !DILocation(line: 293, column: 9, scope: !719, inlinedAt: !1882)
!1889 = !DILocation(line: 294, column: 23, scope: !1199, inlinedAt: !1882)
!1890 = !DILocation(line: 291, column: 16, scope: !719, inlinedAt: !1882)
!1891 = !DILocation(line: 295, column: 18, scope: !1199, inlinedAt: !1882)
!1892 = !DILocation(line: 295, column: 26, scope: !1199, inlinedAt: !1882)
!1893 = !DILocation(line: 296, column: 30, scope: !1199, inlinedAt: !1882)
!1894 = !DILocation(line: 296, column: 38, scope: !1199, inlinedAt: !1882)
!1895 = !DILocation(line: 297, column: 35, scope: !1199, inlinedAt: !1882)
!1896 = !DILocation(line: 297, column: 24, scope: !1199, inlinedAt: !1882)
!1897 = !DILocation(line: 298, column: 28, scope: !1199, inlinedAt: !1882)
!1898 = !DILocation(line: 298, column: 36, scope: !1199, inlinedAt: !1882)
!1899 = !DILocation(line: 299, column: 5, scope: !1199, inlinedAt: !1882)
!1900 = !DILocation(line: 234, column: 25, scope: !747, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 300, column: 5, scope: !719, inlinedAt: !1882)
!1902 = !DILocation(line: 236, column: 22, scope: !747, inlinedAt: !1901)
!1903 = !DILocation(line: 237, column: 22, scope: !747, inlinedAt: !1901)
!1904 = !DILocation(line: 776, column: 5, scope: !879, inlinedAt: !1849)
!1905 = !DILocation(line: 1068, column: 20, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !679, file: !1, line: 1068, column: 9)
!1907 = !DILocation(line: 1068, column: 9, scope: !679)
!1908 = !DILocation(line: 886, column: 11, scope: !888, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 1069, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !1, line: 1068, column: 42)
!1911 = !DILocation(line: 887, column: 11, scope: !888, inlinedAt: !1909)
!1912 = !DILocation(line: 888, column: 11, scope: !888, inlinedAt: !1909)
!1913 = !DILocation(line: 889, column: 11, scope: !888, inlinedAt: !1909)
!1914 = !DILocation(line: 890, column: 11, scope: !888, inlinedAt: !1909)
!1915 = !DILocation(line: 891, column: 11, scope: !888, inlinedAt: !1909)
!1916 = !DILocation(line: 892, column: 11, scope: !888, inlinedAt: !1909)
!1917 = !DILocation(line: 893, column: 11, scope: !888, inlinedAt: !1909)
!1918 = !DILocation(line: 894, column: 11, scope: !888, inlinedAt: !1909)
!1919 = !DILocation(line: 1070, column: 5, scope: !1910)
!1920 = !DILocation(line: 1072, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !679, file: !1, line: 1072, column: 9)
!1922 = !DILocation(line: 1072, column: 9, scope: !679)
!1923 = !DILocation(line: 1073, column: 13, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !1, line: 1073, column: 13)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 1072, column: 27)
!1926 = !DILocation(line: 1073, column: 13, scope: !1925)
!1927 = !DILocation(line: 1074, column: 13, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 1073, column: 21)
!1929 = !DILocation(line: 1082, column: 5, scope: !1925)
!1930 = !DILocation(line: 1077, column: 17, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 1077, column: 17)
!1932 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 1076, column: 14)
!1933 = !DILocation(line: 1077, column: 24, scope: !1931)
!1934 = !DILocation(line: 1077, column: 17, scope: !1932)
!1935 = !DILocation(line: 1078, column: 26, scope: !1931)
!1936 = !DILocation(line: 1078, column: 24, scope: !1931)
!1937 = !DILocation(line: 1078, column: 17, scope: !1931)
!1938 = !DILocation(line: 1079, column: 35, scope: !1932)
!1939 = !DILocation(line: 1079, column: 13, scope: !1932)
!1940 = !DILocation(line: 1080, column: 13, scope: !1932)
!1941 = !DILocation(line: 1085, column: 9, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !679, file: !1, line: 1085, column: 9)
!1943 = !DILocation(line: 1085, column: 9, scope: !679)
!1944 = !DILocation(line: 1086, column: 22, scope: !1942)
!1945 = !DILocation(line: 1086, column: 9, scope: !1942)
!1946 = !DILocation(line: 1087, column: 9, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !679, file: !1, line: 1087, column: 9)
!1948 = !DILocation(line: 1087, column: 9, scope: !679)
!1949 = !DILocation(line: 1088, column: 26, scope: !1947)
!1950 = !DILocation(line: 1088, column: 9, scope: !1947)
!1951 = !DILocation(line: 1089, column: 12, scope: !679)
!1952 = !DILocation(line: 1089, column: 23, scope: !679)
!1953 = !DILocation(line: 1091, column: 12, scope: !679)
!1954 = !DILocation(line: 1091, column: 26, scope: !679)
!1955 = !{!1956, !1042, i64 16}
!1956 = !{!"gc_generation_stats", !1042, i64 0, !1042, i64 8, !1042, i64 16}
!1957 = !DILocation(line: 1092, column: 13, scope: !679)
!1958 = !DILocation(line: 1093, column: 1, scope: !679)
!1959 = !DILocation(line: 1092, column: 5, scope: !679)
!1960 = !DILocation(line: 901, column: 9, scope: !714, inlinedAt: !1148)
!1961 = !DILocation(line: 901, column: 14, scope: !714, inlinedAt: !1148)
!1962 = !DILocation(line: 901, column: 9, scope: !707, inlinedAt: !1148)
!1963 = !DILocation(line: 1647, column: 11, scope: !415)
!1964 = !DILocation(line: 1647, column: 17, scope: !415)
!1965 = !DILocation(line: 1648, column: 20, scope: !415)
!1966 = !DILocation(line: 1648, column: 9, scope: !415)
!1967 = !DILocation(line: 1648, column: 31, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !415, file: !1, discriminator: 2)
!1969 = !{!1174, !1042, i64 16}
!1970 = !DILocation(line: 1648, column: 56, scope: !415)
!1971 = !DILocation(line: 1647, column: 9, scope: !409)
!1972 = !DILocation(line: 1650, column: 19, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !414, file: !1, line: 1650, column: 13)
!1974 = !DILocation(line: 1659, column: 38, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !414, file: !1, line: 1659, column: 13)
!1976 = !DILocation(line: 1661, column: 38, scope: !1975)
!1977 = !DILocation(line: 1659, column: 13, scope: !1975)
!1978 = !DILocation(line: 1659, column: 13, scope: !414)
!1979 = !DILocation(line: 1662, column: 13, scope: !1975)
!1980 = !DILocation(line: 1663, column: 13, scope: !418)
!1981 = !DILocation(line: 1663, column: 19, scope: !418)
!1982 = !DILocation(line: 1663, column: 13, scope: !414)
!1983 = !DILocation(line: 1664, column: 23, scope: !417)
!1984 = !DILocation(line: 1664, column: 37, scope: !417)
!1985 = !DILocation(line: 1665, column: 34, scope: !417)
!1986 = !DILocation(line: 1665, column: 20, scope: !417)
!1987 = !DILocation(line: 1666, column: 18, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !417, file: !1, line: 1666, column: 17)
!1989 = !DILocation(line: 1666, column: 23, scope: !1988)
!1990 = !DILocation(line: 1666, column: 36, scope: !1988)
!1991 = !DILocation(line: 1666, column: 34, scope: !1988)
!1992 = !DILocation(line: 1666, column: 17, scope: !417)
!1993 = !DILocation(line: 1667, column: 39, scope: !1988)
!1994 = !DILocation(line: 1667, column: 17, scope: !1988)
!1995 = !DILocation(line: 1674, column: 13, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 1)
!1997 = !DILocation(line: 1674, column: 13, scope: !421)
!1998 = !DILocation(line: 1671, column: 21, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1988, file: !1, line: 1668, column: 18)
!2000 = !DILocation(line: 1669, column: 17, scope: !1999)
!2001 = !DILocation(line: 1675, column: 13, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !426, file: !1, discriminator: 1)
!2003 = !DILocation(line: 1675, column: 13, scope: !426)
!2004 = !DILocation(line: 1674, column: 13, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 4)
!2006 = !DILocation(line: 1674, column: 13, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !423, file: !1, line: 1674, column: 13)
!2008 = !DILocation(line: 1674, column: 13, scope: !423)
!2009 = !DILocation(line: 1674, column: 13, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !2007, file: !1, discriminator: 6)
!2011 = !DILocation(line: 1675, column: 13, scope: !429)
!2012 = !DILocation(line: 1675, column: 13, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 4)
!2014 = !DILocation(line: 1675, column: 13, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !428, file: !1, line: 1675, column: 13)
!2016 = !DILocation(line: 1675, column: 13, scope: !428)
!2017 = !DILocation(line: 1675, column: 13, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !2015, file: !1, discriminator: 6)
!2019 = !DILocation(line: 1678, column: 1, scope: !409)
!2020 = !DILocation(line: 1683, column: 5, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 1)
!2022 = !DILocation(line: 1683, column: 5, scope: !437)
!2023 = !DILocation(line: 1683, column: 5, scope: !433)
!2024 = !DILocation(line: 1683, column: 5, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 2)
!2026 = !DILocation(line: 1683, column: 5, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !435, file: !1, discriminator: 4)
!2028 = !DILocation(line: 1683, column: 5, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !435, file: !1, line: 1683, column: 5)
!2030 = !DILocation(line: 1683, column: 5, scope: !435)
!2031 = !DILocation(line: 1683, column: 5, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2029, file: !1, discriminator: 6)
!2033 = !DILocation(line: 1684, column: 5, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 1)
!2035 = !DILocation(line: 1684, column: 5, scope: !443)
!2036 = !DILocation(line: 1684, column: 5, scope: !439)
!2037 = !DILocation(line: 1684, column: 5, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 2)
!2039 = !DILocation(line: 1684, column: 5, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 4)
!2041 = !DILocation(line: 1684, column: 5, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !441, file: !1, line: 1684, column: 5)
!2043 = !DILocation(line: 1684, column: 5, scope: !441)
!2044 = !DILocation(line: 1684, column: 5, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2042, file: !1, discriminator: 6)
!2046 = !DILocation(line: 1685, column: 1, scope: !430)
!2047 = !DILocation(line: 1689, column: 23, scope: !444)
!2048 = !DILocation(line: 1691, column: 20, scope: !444)
!2049 = !DILocation(line: 1691, column: 5, scope: !444)
!2050 = !DILocation(line: 1692, column: 1, scope: !444)
!2051 = !DILocation(line: 1703, column: 25, scope: !449)
!2052 = !DILocation(line: 1705, column: 5, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 1)
!2054 = !DILocation(line: 1705, column: 5, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !453, file: !1, line: 1705, column: 5)
!2056 = !DILocation(line: 1705, column: 5, scope: !453)
!2057 = !DILocation(line: 1705, column: 5, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2055, file: !1, discriminator: 2)
!2059 = !DILocation(line: 1705, column: 5, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2061, file: !1, discriminator: 4)
!2061 = distinct !DILexicalBlock(scope: !453, file: !1, line: 1705, column: 5)
!2062 = !DILocation(line: 1705, column: 5, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 6)
!2064 = !DILocation(line: 1706, column: 1, scope: !449)
!2065 = !DILocation(line: 1709, column: 27, scope: !454)
!2066 = !DILocation(line: 1714, column: 9, scope: !459)
!2067 = !DILocation(line: 1714, column: 9, scope: !454)
!2068 = !DILocation(line: 1715, column: 9, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2070, file: !1, discriminator: 2)
!2070 = distinct !DILexicalBlock(scope: !458, file: !1, line: 1715, column: 9)
!2071 = !DILocation(line: 1715, column: 9, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !458, file: !1, discriminator: 4)
!2073 = !DILocation(line: 1715, column: 9, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !458, file: !1, discriminator: 5)
!2075 = !DILocation(line: 1716, column: 1, scope: !454)
!2076 = !DILocation(line: 1719, column: 28, scope: !460)
!2077 = !DILocation(line: 1723, column: 19, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !460, file: !1, line: 1723, column: 9)
!2079 = !DILocation(line: 1723, column: 9, scope: !460)
!2080 = !DILocation(line: 1724, column: 16, scope: !2078)
!2081 = !DILocation(line: 1724, column: 9, scope: !2078)
!2082 = !DILocation(line: 1726, column: 27, scope: !460)
!2083 = !DILocation(line: 1725, column: 22, scope: !460)
!2084 = !DILocation(line: 1727, column: 11, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !460, file: !1, line: 1727, column: 9)
!2086 = !DILocation(line: 1727, column: 9, scope: !460)
!2087 = !DILocation(line: 1728, column: 16, scope: !2085)
!2088 = !DILocation(line: 1728, column: 9, scope: !2085)
!2089 = !DILocation(line: 1729, column: 11, scope: !460)
!2090 = !DILocation(line: 1730, column: 5, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2092, file: !1, discriminator: 1)
!2092 = distinct !DILexicalBlock(scope: !460, file: !1, line: 1730, column: 5)
!2093 = !DILocation(line: 1731, column: 25, scope: !460)
!2094 = !DILocation(line: 1732, column: 47, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !460, file: !1, line: 1732, column: 9)
!2096 = !{!1185, !1125, i64 24}
!2097 = !DILocation(line: 1732, column: 30, scope: !2095)
!2098 = !DILocation(line: 1733, column: 9, scope: !2095)
!2099 = !DILocation(line: 1732, column: 57, scope: !2095)
!2100 = !DILocation(line: 1734, column: 9, scope: !2095)
!2101 = !DILocation(line: 1736, column: 10, scope: !2095)
!2102 = !DILocation(line: 1732, column: 9, scope: !460)
!2103 = !DILocation(line: 1149, column: 16, scope: !889, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 1738, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2095, file: !1, line: 1736, column: 28)
!2106 = !DILocation(line: 1148, column: 9, scope: !889, inlinedAt: !2104)
!2107 = !DILocation(line: 1161, column: 20, scope: !2108, inlinedAt: !2104)
!2108 = !DILexicalBlockFile(scope: !2109, file: !1, discriminator: 1)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !1, line: 1160, column: 17)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !1, line: 1155, column: 62)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 1155, column: 13)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !1, line: 1154, column: 46)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 1154, column: 5)
!2114 = distinct !DILexicalBlock(scope: !889, file: !1, line: 1154, column: 5)
!2115 = !DILocation(line: 1161, column: 41, scope: !2109, inlinedAt: !2104)
!2116 = !DILocation(line: 1161, column: 58, scope: !2109, inlinedAt: !2104)
!2117 = !DILocation(line: 1161, column: 39, scope: !2109, inlinedAt: !2104)
!2118 = !DILocation(line: 1160, column: 17, scope: !2110, inlinedAt: !2104)
!2119 = !DILocation(line: 1155, column: 28, scope: !2111, inlinedAt: !2104)
!2120 = !DILocation(line: 1155, column: 51, scope: !2111, inlinedAt: !2104)
!2121 = !DILocation(line: 1155, column: 34, scope: !2111, inlinedAt: !2104)
!2122 = !DILocation(line: 1155, column: 13, scope: !2112, inlinedAt: !2104)
!2123 = !DILocation(line: 1738, column: 9, scope: !2105)
!2124 = !DILocation(line: 1138, column: 5, scope: !644, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 1163, column: 17, scope: !2110, inlinedAt: !2104)
!2126 = !DILocation(line: 1139, column: 5, scope: !644, inlinedAt: !2125)
!2127 = !DILocation(line: 1138, column: 24, scope: !644, inlinedAt: !2125)
!2128 = !DILocation(line: 1138, column: 35, scope: !644, inlinedAt: !2125)
!2129 = !DILocation(line: 1140, column: 14, scope: !644, inlinedAt: !2125)
!2130 = !DILocation(line: 1138, column: 16, scope: !644, inlinedAt: !2125)
!2131 = !DILocation(line: 1141, column: 44, scope: !644, inlinedAt: !2125)
!2132 = !DILocation(line: 1141, column: 55, scope: !644, inlinedAt: !2125)
!2133 = !DILocation(line: 1141, column: 5, scope: !644, inlinedAt: !2125)
!2134 = !DILocation(line: 1143, column: 1, scope: !644, inlinedAt: !2125)
!2135 = !DILocation(line: 1164, column: 13, scope: !2110, inlinedAt: !2104)
!2136 = !DILocation(line: 1740, column: 5, scope: !2105)
!2137 = !DILocation(line: 1741, column: 10, scope: !460)
!2138 = !DILocation(line: 1721, column: 15, scope: !460)
!2139 = !DILocation(line: 1742, column: 5, scope: !460)
!2140 = !DILocation(line: 1743, column: 1, scope: !460)
!2141 = !DILocation(line: 1746, column: 32, scope: !467)
!2142 = !DILocation(line: 1748, column: 40, scope: !467)
!2143 = !{!1173, !1042, i64 32}
!2144 = !DILocation(line: 1748, column: 20, scope: !467)
!2145 = !DILocation(line: 1748, column: 15, scope: !467)
!2146 = !DILocation(line: 1749, column: 12, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !467, file: !1, line: 1749, column: 9)
!2148 = !DILocation(line: 1749, column: 9, scope: !467)
!2149 = !DILocation(line: 1750, column: 14, scope: !2147)
!2150 = !DILocation(line: 1750, column: 9, scope: !2147)
!2151 = !DILocation(line: 1751, column: 5, scope: !467)
!2152 = !DILocation(line: 1755, column: 35, scope: !475)
!2153 = !DILocation(line: 1755, column: 50, scope: !475)
!2154 = !DILocation(line: 1760, column: 16, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !475, file: !1, line: 1760, column: 9)
!2156 = !DILocation(line: 1760, column: 9, scope: !475)
!2157 = !DILocation(line: 1761, column: 9, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2155, file: !1, line: 1760, column: 21)
!2159 = !DILocation(line: 1762, column: 9, scope: !2158)
!2160 = !DILocation(line: 1764, column: 12, scope: !475)
!2161 = !{!1173, !1042, i64 40}
!2162 = !DILocation(line: 1757, column: 12, scope: !475)
!2163 = !DILocation(line: 1765, column: 26, scope: !475)
!2164 = !DILocation(line: 1765, column: 10, scope: !475)
!2165 = !DILocation(line: 1758, column: 18, scope: !475)
!2166 = !DILocation(line: 1766, column: 12, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !475, file: !1, line: 1766, column: 9)
!2168 = !DILocation(line: 1766, column: 9, scope: !475)
!2169 = !DILocation(line: 1767, column: 14, scope: !2167)
!2170 = !DILocation(line: 1767, column: 9, scope: !2167)
!2171 = !DILocation(line: 1769, column: 1, scope: !475)
!2172 = !DILocation(line: 1772, column: 34, scope: !483)
!2173 = !DILocation(line: 1772, column: 49, scope: !483)
!2174 = !DILocation(line: 1774, column: 30, scope: !483)
!2175 = !DILocation(line: 1774, column: 18, scope: !483)
!2176 = !DILocation(line: 1776, column: 19, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !483, file: !1, line: 1776, column: 9)
!2178 = !DILocation(line: 1776, column: 9, scope: !483)
!2179 = !DILocation(line: 1777, column: 31, scope: !2177)
!2180 = !DILocation(line: 1777, column: 16, scope: !2177)
!2181 = !DILocation(line: 1777, column: 9, scope: !2177)
!2182 = !DILocation(line: 1775, column: 20, scope: !483)
!2183 = !DILocation(line: 1778, column: 39, scope: !483)
!2184 = !DILocation(line: 1778, column: 61, scope: !483)
!2185 = !DILocation(line: 1778, column: 22, scope: !483)
!2186 = !DILocation(line: 1779, column: 11, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !483, file: !1, line: 1779, column: 9)
!2188 = !DILocation(line: 1779, column: 9, scope: !483)
!2189 = !DILocation(line: 1780, column: 31, scope: !2187)
!2190 = !DILocation(line: 1780, column: 16, scope: !2187)
!2191 = !DILocation(line: 1780, column: 9, scope: !2187)
!2192 = !DILocation(line: 1781, column: 26, scope: !483)
!2193 = !DILocation(line: 1781, column: 10, scope: !483)
!2194 = !DILocation(line: 1782, column: 5, scope: !483)
!2195 = !DILocation(line: 1782, column: 17, scope: !483)
!2196 = !DILocation(line: 1783, column: 5, scope: !483)
!2197 = !DILocation(line: 1784, column: 1, scope: !483)
!2198 = !DILocation(line: 1787, column: 23, scope: !492)
!2199 = !DILocation(line: 1789, column: 20, scope: !492)
!2200 = !DILocation(line: 1790, column: 9, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !492, file: !1, line: 1790, column: 9)
!2202 = !DILocation(line: 1790, column: 9, scope: !492)
!2203 = !DILocation(line: 263, column: 45, scope: !893, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 1791, column: 9, scope: !2201)
!2205 = !DILocation(line: 263, column: 14, scope: !893, inlinedAt: !2204)
!2206 = !DILocation(line: 263, column: 34, scope: !893, inlinedAt: !2204)
!2207 = !DILocation(line: 264, column: 45, scope: !893, inlinedAt: !2204)
!2208 = !DILocation(line: 264, column: 14, scope: !893, inlinedAt: !2204)
!2209 = !DILocation(line: 264, column: 26, scope: !893, inlinedAt: !2204)
!2210 = !DILocation(line: 264, column: 34, scope: !893, inlinedAt: !2204)
!2211 = !DILocation(line: 265, column: 22, scope: !893, inlinedAt: !2204)
!2212 = !DILocation(line: 1791, column: 9, scope: !2201)
!2213 = !DILocation(line: 1792, column: 24, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !492, file: !1, line: 1792, column: 9)
!2215 = !DILocation(line: 1792, column: 30, scope: !2214)
!2216 = !DILocation(line: 1792, column: 9, scope: !492)
!2217 = !DILocation(line: 1793, column: 29, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !1, line: 1792, column: 35)
!2219 = !DILocation(line: 1794, column: 5, scope: !2218)
!2220 = !DILocation(line: 1795, column: 5, scope: !492)
!2221 = !DILocation(line: 1796, column: 1, scope: !492)
!2222 = !DILocation(line: 1176, column: 21, scope: !496)
!2223 = !DILocation(line: 1176, column: 37, scope: !496)
!2224 = !DILocation(line: 1179, column: 5, scope: !496)
!2225 = !DILocation(line: 1180, column: 5, scope: !496)
!2226 = !DILocation(line: 1189, column: 22, scope: !500)
!2227 = !DILocation(line: 1189, column: 38, scope: !500)
!2228 = !DILocation(line: 1192, column: 5, scope: !500)
!2229 = !DILocation(line: 1193, column: 5, scope: !500)
!2230 = !DILocation(line: 1202, column: 24, scope: !504)
!2231 = !DILocation(line: 1202, column: 40, scope: !504)
!2232 = !DILocation(line: 1204, column: 12, scope: !504)
!2233 = !DILocation(line: 1204, column: 5, scope: !504)
!2234 = !DILocation(line: 1256, column: 24, scope: !508)
!2235 = !DILocation(line: 1256, column: 40, scope: !508)
!2236 = !DILocation(line: 1258, column: 10, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1258, column: 9)
!2238 = !DILocation(line: 1258, column: 9, scope: !508)
!2239 = !DILocation(line: 1261, column: 5, scope: !508)
!2240 = !DILocation(line: 1262, column: 5, scope: !508)
!2241 = !DILocation(line: 1263, column: 1, scope: !508)
!2242 = !DILocation(line: 1271, column: 24, scope: !512)
!2243 = !DILocation(line: 1271, column: 40, scope: !512)
!2244 = !DILocation(line: 1273, column: 31, scope: !512)
!2245 = !DILocation(line: 1273, column: 12, scope: !512)
!2246 = !DILocation(line: 1273, column: 5, scope: !512)
!2247 = !DILocation(line: 1320, column: 24, scope: !516)
!2248 = !DILocation(line: 1320, column: 40, scope: !516)
!2249 = !DILocation(line: 1323, column: 41, scope: !516)
!2250 = !DILocation(line: 1324, column: 41, scope: !516)
!2251 = !DILocation(line: 1325, column: 41, scope: !516)
!2252 = !DILocation(line: 1322, column: 12, scope: !516)
!2253 = !DILocation(line: 1322, column: 5, scope: !516)
!2254 = !DILocation(line: 1283, column: 25, scope: !520)
!2255 = !DILocation(line: 1283, column: 41, scope: !520)
!2256 = !DILocation(line: 1286, column: 10, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !520, file: !1, line: 1286, column: 9)
!2258 = !DILocation(line: 1286, column: 9, scope: !520)
!2259 = !DILocation(line: 1296, column: 5, scope: !520)
!2260 = !DILocation(line: 1297, column: 5, scope: !520)
!2261 = !DILocation(line: 1298, column: 1, scope: !520)
!2262 = !DILocation(line: 1306, column: 25, scope: !525)
!2263 = !DILocation(line: 1306, column: 41, scope: !525)
!2264 = !DILocation(line: 1309, column: 41, scope: !525)
!2265 = !DILocation(line: 1310, column: 41, scope: !525)
!2266 = !DILocation(line: 1311, column: 41, scope: !525)
!2267 = !DILocation(line: 1308, column: 12, scope: !525)
!2268 = !DILocation(line: 1308, column: 5, scope: !525)
!2269 = !DILocation(line: 1216, column: 22, scope: !529)
!2270 = !DILocation(line: 1216, column: 38, scope: !529)
!2271 = !DILocation(line: 1216, column: 54, scope: !529)
!2272 = !DILocation(line: 1219, column: 5, scope: !529)
!2273 = !DILocation(line: 1219, column: 9, scope: !529)
!2274 = !DILocation(line: 1222, column: 10, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !529, file: !1, line: 1222, column: 9)
!2276 = !DILocation(line: 1222, column: 9, scope: !529)
!2277 = !DILocation(line: 1234, column: 35, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 1232, column: 10)
!2279 = distinct !DILexicalBlock(scope: !529, file: !1, line: 1230, column: 9)
!2280 = !DILocation(line: 1225, column: 25, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2275, file: !1, line: 1225, column: 14)
!2282 = !DILocation(line: 1226, column: 25, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2281, file: !1, line: 1225, column: 55)
!2284 = !DILocation(line: 1226, column: 9, scope: !2283)
!2285 = !DILocation(line: 1227, column: 9, scope: !2283)
!2286 = !DILocation(line: 1230, column: 9, scope: !529)
!2287 = !DILocation(line: 1136, column: 27, scope: !644, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 1234, column: 13, scope: !2278)
!2289 = !DILocation(line: 1138, column: 5, scope: !644, inlinedAt: !2288)
!2290 = !DILocation(line: 1139, column: 5, scope: !644, inlinedAt: !2288)
!2291 = !DILocation(line: 1138, column: 24, scope: !644, inlinedAt: !2288)
!2292 = !DILocation(line: 1138, column: 35, scope: !644, inlinedAt: !2288)
!2293 = !DILocation(line: 1140, column: 14, scope: !644, inlinedAt: !2288)
!2294 = !DILocation(line: 1138, column: 16, scope: !644, inlinedAt: !2288)
!2295 = !DILocation(line: 1141, column: 44, scope: !644, inlinedAt: !2288)
!2296 = !DILocation(line: 1141, column: 55, scope: !644, inlinedAt: !2288)
!2297 = !DILocation(line: 1141, column: 5, scope: !644, inlinedAt: !2288)
!2298 = !DILocation(line: 1143, column: 1, scope: !644, inlinedAt: !2288)
!2299 = !DILocation(line: 1220, column: 16, scope: !529)
!2300 = !DILocation(line: 1238, column: 12, scope: !529)
!2301 = !DILocation(line: 1238, column: 5, scope: !529)
!2302 = !DILocation(line: 1239, column: 1, scope: !529)
!2303 = !DILocation(line: 1421, column: 26, scope: !536)
!2304 = !DILocation(line: 1421, column: 42, scope: !536)
!2305 = !DILocation(line: 1426, column: 14, scope: !536)
!2306 = !DILocation(line: 1424, column: 15, scope: !536)
!2307 = !DILocation(line: 1427, column: 16, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !536, file: !1, line: 1427, column: 9)
!2309 = !DILocation(line: 1427, column: 9, scope: !536)
!2310 = !DILocation(line: 318, column: 26, scope: !549, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 1430, column: 13, scope: !545)
!2312 = !DILocation(line: 318, column: 46, scope: !549, inlinedAt: !2311)
!2313 = !DILocation(line: 321, column: 27, scope: !559, inlinedAt: !2311)
!2314 = !DILocation(line: 321, column: 39, scope: !558, inlinedAt: !2311)
!2315 = !DILocation(line: 321, column: 5, scope: !559, inlinedAt: !2311)
!2316 = !DILocation(line: 322, column: 24, scope: !557, inlinedAt: !2311)
!2317 = !DILocation(line: 1430, column: 13, scope: !545)
!2318 = !DILocation(line: 322, column: 19, scope: !557, inlinedAt: !2311)
!2319 = !DILocation(line: 323, column: 16, scope: !2320, inlinedAt: !2311)
!2320 = distinct !DILexicalBlock(scope: !557, file: !1, line: 323, column: 13)
!2321 = !DILocation(line: 323, column: 13, scope: !557, inlinedAt: !2311)
!2322 = !DILocation(line: 324, column: 17, scope: !2323, inlinedAt: !2311)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 324, column: 17)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !1, line: 323, column: 28)
!2325 = !DILocation(line: 324, column: 17, scope: !2324, inlinedAt: !2311)
!2326 = !DILocation(line: 1431, column: 13, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 1)
!2328 = !DILocation(line: 1431, column: 13, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !543, file: !1, line: 1431, column: 13)
!2330 = !DILocation(line: 1431, column: 13, scope: !543)
!2331 = !DILocation(line: 1431, column: 13, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2329, file: !1, discriminator: 3)
!2333 = !DILocation(line: 1436, column: 1, scope: !536)
!2334 = !DILocation(line: 1444, column: 24, scope: !560)
!2335 = !DILocation(line: 1444, column: 40, scope: !560)
!2336 = !DILocation(line: 1448, column: 5, scope: !560)
!2337 = !DILocation(line: 1448, column: 32, scope: !560)
!2338 = !DILocation(line: 1446, column: 9, scope: !560)
!2339 = !DILocation(line: 1453, column: 20, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !1, line: 1452, column: 43)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !1, line: 1452, column: 5)
!2342 = distinct !DILexicalBlock(scope: !560, file: !1, line: 1452, column: 5)
!2343 = !{i64 0, i64 8, !1100, i64 8, i64 8, !1100, i64 16, i64 8, !1100}
!2344 = !DILocation(line: 1453, column: 9, scope: !2340)
!2345 = !DILocation(line: 1456, column: 14, scope: !560)
!2346 = !DILocation(line: 1447, column: 15, scope: !560)
!2347 = !DILocation(line: 1457, column: 16, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !560, file: !1, line: 1457, column: 9)
!2349 = !DILocation(line: 1457, column: 9, scope: !560)
!2350 = !DILocation(line: 1464, column: 49, scope: !578)
!2351 = !{!1956, !1042, i64 0}
!2352 = !DILocation(line: 1465, column: 47, scope: !578)
!2353 = !{!1956, !1042, i64 8}
!2354 = !DILocation(line: 1466, column: 51, scope: !578)
!2355 = !DILocation(line: 1463, column: 16, scope: !578)
!2356 = !DILocation(line: 1461, column: 19, scope: !578)
!2357 = !DILocation(line: 1468, column: 18, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !578, file: !1, line: 1468, column: 13)
!2359 = !DILocation(line: 1468, column: 13, scope: !578)
!2360 = !DILocation(line: 1470, column: 13, scope: !584)
!2361 = !DILocation(line: 1474, column: 9, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !586, file: !1, line: 1474, column: 9)
!2363 = !DILocation(line: 1470, column: 13, scope: !578)
!2364 = !DILocation(line: 1471, column: 13, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 1)
!2366 = !DILocation(line: 1471, column: 13, scope: !582)
!2367 = !DILocation(line: 1471, column: 13, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2369, file: !1, discriminator: 3)
!2369 = distinct !DILexicalBlock(scope: !582, file: !1, line: 1471, column: 13)
!2370 = !DILocation(line: 1474, column: 9, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 1)
!2372 = !DILocation(line: 1474, column: 9, scope: !586)
!2373 = !DILocation(line: 1474, column: 9, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !2362, file: !1, discriminator: 3)
!2375 = !DILocation(line: 1479, column: 5, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 1)
!2377 = !DILocation(line: 1479, column: 5, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !590, file: !1, discriminator: 4)
!2379 = !DILocation(line: 1479, column: 5, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !590, file: !1, line: 1479, column: 5)
!2381 = !DILocation(line: 1479, column: 5, scope: !590)
!2382 = !DILocation(line: 1479, column: 5, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2380, file: !1, discriminator: 6)
!2384 = !DILocation(line: 1481, column: 1, scope: !560)
!2385 = !DILocation(line: 1492, column: 25, scope: !592)
!2386 = !DILocation(line: 1492, column: 41, scope: !592)
!2387 = !DILocation(line: 1496, column: 9, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !592, file: !1, line: 1496, column: 9)
!2389 = !DILocation(line: 1496, column: 9, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2388, file: !1, discriminator: 1)
!2391 = !{!1173, !1026, i64 328}
!2392 = !DILocation(line: 1496, column: 9, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2388, file: !1, discriminator: 3)
!2394 = !DILocation(line: 1496, column: 29, scope: !2388)
!2395 = !DILocation(line: 1496, column: 32, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2397, file: !1, discriminator: 4)
!2397 = !DILexicalBlockFile(scope: !2388, file: !1, discriminator: 2)
!2398 = !DILocation(line: 1496, column: 9, scope: !592)
!2399 = !DILocation(line: 1494, column: 15, scope: !592)
!2400 = !DILocation(line: 1500, column: 5, scope: !592)
!2401 = !DILocation(line: 1501, column: 5, scope: !592)
!2402 = !DILocation(line: 1362, column: 28, scope: !597)
!2403 = !DILocation(line: 1362, column: 44, scope: !597)
!2404 = !DILocation(line: 1365, column: 24, scope: !597)
!2405 = !DILocation(line: 1365, column: 15, scope: !597)
!2406 = !DILocation(line: 1366, column: 10, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !597, file: !1, line: 1366, column: 9)
!2408 = !DILocation(line: 1366, column: 9, scope: !597)
!2409 = !DILocation(line: 1349, column: 54, scope: !2410, inlinedAt: !2414)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 1349, column: 13)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !1, line: 1344, column: 66)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !1, line: 1344, column: 5)
!2413 = distinct !DILexicalBlock(scope: !610, file: !1, line: 1344, column: 5)
!2414 = distinct !DILocation(line: 1369, column: 15, scope: !606)
!2415 = !DILocation(line: 1339, column: 28, scope: !610, inlinedAt: !2414)
!2416 = !DILocation(line: 1339, column: 45, scope: !610, inlinedAt: !2414)
!2417 = !DILocation(line: 1339, column: 61, scope: !610, inlinedAt: !2414)
!2418 = !DILocation(line: 1344, column: 24, scope: !2413, inlinedAt: !2414)
!2419 = !DILocation(line: 1344, column: 36, scope: !2412, inlinedAt: !2414)
!2420 = !DILocation(line: 1344, column: 5, scope: !2413, inlinedAt: !2414)
!2421 = !DILocation(line: 1345, column: 15, scope: !2411, inlinedAt: !2414)
!2422 = !DILocation(line: 1369, column: 15, scope: !606)
!2423 = !DILocation(line: 1342, column: 15, scope: !610, inlinedAt: !2414)
!2424 = !DILocation(line: 1347, column: 17, scope: !2425, inlinedAt: !2414)
!2425 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 1347, column: 13)
!2426 = !DILocation(line: 1347, column: 32, scope: !2425, inlinedAt: !2414)
!2427 = !DILocation(line: 1347, column: 25, scope: !2425, inlinedAt: !2414)
!2428 = !DILocation(line: 1346, column: 20, scope: !2411, inlinedAt: !2414)
!2429 = !DILocation(line: 1346, column: 34, scope: !2411, inlinedAt: !2414)
!2430 = !DILocation(line: 1349, column: 13, scope: !2410, inlinedAt: !2414)
!2431 = !DILocation(line: 1349, column: 13, scope: !2411, inlinedAt: !2414)
!2432 = !DILocation(line: 1350, column: 17, scope: !2433, inlinedAt: !2414)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 1350, column: 17)
!2434 = distinct !DILexicalBlock(scope: !2410, file: !1, line: 1349, column: 61)
!2435 = !DILocation(line: 1350, column: 48, scope: !2433, inlinedAt: !2414)
!2436 = !DILocation(line: 1350, column: 17, scope: !2434, inlinedAt: !2414)
!2437 = !DILocation(line: 1370, column: 13, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !604, file: !1, discriminator: 1)
!2439 = !DILocation(line: 1370, column: 13, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !604, file: !1, line: 1370, column: 13)
!2441 = !DILocation(line: 1370, column: 13, scope: !604)
!2442 = !DILocation(line: 1370, column: 13, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2440, file: !1, discriminator: 3)
!2444 = !DILocation(line: 1375, column: 1, scope: !597)
!2445 = !DILocation(line: 1389, column: 28, scope: !625)
!2446 = !DILocation(line: 1389, column: 44, scope: !625)
!2447 = !DILocation(line: 1392, column: 24, scope: !625)
!2448 = !DILocation(line: 1392, column: 15, scope: !625)
!2449 = !DILocation(line: 1394, column: 16, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !625, file: !1, line: 1394, column: 9)
!2451 = !DILocation(line: 1394, column: 9, scope: !625)
!2452 = !DILocation(line: 1397, column: 21, scope: !633)
!2453 = !DILocation(line: 1397, column: 19, scope: !633)
!2454 = !DILocation(line: 1397, column: 5, scope: !634)
!2455 = !DILocation(line: 1399, column: 25, scope: !632)
!2456 = !DILocation(line: 1406, column: 54, scope: !639)
!2457 = !DILocation(line: 1399, column: 19, scope: !632)
!2458 = !DILocation(line: 1401, column: 15, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !632, file: !1, line: 1401, column: 13)
!2460 = !DILocation(line: 1401, column: 15, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2459, file: !1, discriminator: 1)
!2462 = !DILocation(line: 1401, column: 15, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2459, file: !1, discriminator: 2)
!2464 = !DILocation(line: 1401, column: 13, scope: !632)
!2465 = !DILocation(line: 1403, column: 20, scope: !632)
!2466 = !DILocation(line: 1403, column: 34, scope: !632)
!2467 = !DILocation(line: 1398, column: 22, scope: !632)
!2468 = !DILocation(line: 1404, column: 15, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !632, file: !1, line: 1404, column: 13)
!2470 = !DILocation(line: 1404, column: 13, scope: !632)
!2471 = !DILocation(line: 1406, column: 13, scope: !639)
!2472 = !DILocation(line: 1406, column: 13, scope: !632)
!2473 = !DILocation(line: 1407, column: 13, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !637, file: !1, discriminator: 1)
!2475 = !DILocation(line: 1407, column: 13, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !637, file: !1, line: 1407, column: 13)
!2477 = !DILocation(line: 1407, column: 13, scope: !637)
!2478 = !DILocation(line: 1407, column: 13, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 3)
!2480 = !DILocation(line: 1397, column: 46, scope: !633)
!2481 = !DILocation(line: 1391, column: 16, scope: !625)
!2482 = !DILocation(line: 1412, column: 1, scope: !625)
!2483 = !DILocation(line: 1329, column: 26, scope: !620)
!2484 = !DILocation(line: 1329, column: 41, scope: !620)
!2485 = !DILocation(line: 1331, column: 16, scope: !620)
!2486 = !DILocation(line: 1333, column: 13, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !1, line: 1333, column: 13)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 1332, column: 5)
!2489 = distinct !DILexicalBlock(scope: !620, file: !1, line: 1332, column: 5)
!2490 = !DILocation(line: 1332, column: 21, scope: !2488)
!2491 = !DILocation(line: 1332, column: 19, scope: !2488)
!2492 = !DILocation(line: 1332, column: 5, scope: !2489)
!2493 = !DILocation(line: 1333, column: 39, scope: !2487)
!2494 = !DILocation(line: 1332, column: 46, scope: !2488)
!2495 = !DILocation(line: 1333, column: 13, scope: !2488)
!2496 = !DILocation(line: 1336, column: 1, scope: !620)
!2497 = !DILocation(line: 1379, column: 26, scope: !640)
!2498 = !DILocation(line: 1379, column: 41, scope: !640)
!2499 = !DILocation(line: 1381, column: 12, scope: !640)
!2500 = !DILocation(line: 1381, column: 37, scope: !640)
!2501 = !DILocation(line: 1381, column: 5, scope: !640)
!2502 = !DILocation(line: 1099, column: 32, scope: !652)
!2503 = !DILocation(line: 1099, column: 43, scope: !652)
!2504 = !DILocation(line: 1100, column: 31, scope: !652)
!2505 = !DILocation(line: 1100, column: 53, scope: !652)
!2506 = !DILocation(line: 1103, column: 15, scope: !652)
!2507 = !DILocation(line: 1106, column: 9, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !652, file: !1, line: 1106, column: 9)
!2509 = !DILocation(line: 1106, column: 19, scope: !2508)
!2510 = !DILocation(line: 1106, column: 9, scope: !652)
!2511 = !DILocation(line: 1110, column: 9, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !652, file: !1, line: 1110, column: 9)
!2513 = !DILocation(line: 1110, column: 36, scope: !2512)
!2514 = !DILocation(line: 1110, column: 9, scope: !652)
!2515 = !DILocation(line: 1111, column: 16, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !1, line: 1110, column: 42)
!2517 = !DILocation(line: 1115, column: 18, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2516, file: !1, line: 1115, column: 13)
!2519 = !DILocation(line: 1115, column: 13, scope: !2516)
!2520 = !DILocation(line: 1116, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 1115, column: 27)
!2522 = !DILocation(line: 1117, column: 13, scope: !2521)
!2523 = !DILocation(line: 1120, column: 17, scope: !664)
!2524 = !DILocation(line: 1102, column: 16, scope: !652)
!2525 = !DILocation(line: 1120, column: 5, scope: !665)
!2526 = !DILocation(line: 1121, column: 28, scope: !663)
!2527 = !{!2528, !1026, i64 24}
!2528 = !{!"", !1174, i64 0, !1026, i64 24, !1042, i64 32}
!2529 = !DILocation(line: 1121, column: 23, scope: !663)
!2530 = !DILocation(line: 1122, column: 9, scope: !663)
!2531 = !DILocation(line: 1123, column: 13, scope: !663)
!2532 = !DILocation(line: 1121, column: 19, scope: !663)
!2533 = !DILocation(line: 1124, column: 9, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !668, file: !1, discriminator: 1)
!2535 = !DILocation(line: 1124, column: 9, scope: !668)
!2536 = !DILocation(line: 1124, column: 9, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !670, file: !1, discriminator: 4)
!2538 = !DILocation(line: 1124, column: 9, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !670, file: !1, line: 1124, column: 9)
!2540 = !DILocation(line: 1124, column: 9, scope: !670)
!2541 = !DILocation(line: 1124, column: 9, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2539, file: !1, discriminator: 6)
!2543 = !DILocation(line: 1126, column: 13, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !663, file: !1, line: 1125, column: 13)
!2545 = !DILocation(line: 1127, column: 9, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 1)
!2547 = !DILocation(line: 1127, column: 9, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !673, file: !1, line: 1127, column: 9)
!2549 = !DILocation(line: 1127, column: 9, scope: !673)
!2550 = !DILocation(line: 1127, column: 9, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2548, file: !1, discriminator: 3)
!2552 = !DILocation(line: 1120, column: 46, scope: !664)
!2553 = !DILocation(line: 1120, column: 16, scope: !664)
!2554 = !DILocation(line: 1129, column: 5, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !675, file: !1, discriminator: 1)
!2556 = !DILocation(line: 1129, column: 5, scope: !678)
!2557 = !DILocation(line: 1129, column: 5, scope: !675)
!2558 = !DILocation(line: 1129, column: 5, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !677, file: !1, discriminator: 4)
!2560 = !DILocation(line: 1129, column: 5, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1129, column: 5)
!2562 = !DILocation(line: 1129, column: 5, scope: !677)
!2563 = !DILocation(line: 1129, column: 5, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2561, file: !1, discriminator: 6)
!2565 = !DILocation(line: 1130, column: 1, scope: !652)
!2566 = !DILocation(line: 370, column: 24, scope: !740)
!2567 = !DILocation(line: 370, column: 34, scope: !740)
!2568 = !DILocation(line: 373, column: 9, scope: !746)
!2569 = !DILocation(line: 373, column: 9, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 1)
!2571 = !DILocation(line: 373, column: 9, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 2)
!2573 = !DILocation(line: 373, column: 9, scope: !740)
!2574 = !DILocation(line: 374, column: 25, scope: !745)
!2575 = !DILocation(line: 380, column: 13, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !745, file: !1, line: 380, column: 13)
!2577 = !DILocation(line: 380, column: 32, scope: !2576)
!2578 = !DILocation(line: 380, column: 13, scope: !745)
!2579 = !DILocation(line: 381, column: 13, scope: !2576)
!2580 = !DILocation(line: 383, column: 5, scope: !740)
!2581 = !DILocation(line: 406, column: 27, scope: !761)
!2582 = !DILocation(line: 406, column: 42, scope: !761)
!2583 = !DILocation(line: 408, column: 9, scope: !767)
!2584 = !DILocation(line: 408, column: 9, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !767, file: !1, discriminator: 1)
!2586 = !DILocation(line: 408, column: 9, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !767, file: !1, discriminator: 2)
!2588 = !DILocation(line: 408, column: 9, scope: !761)
!2589 = !DILocation(line: 409, column: 25, scope: !766)
!2590 = !DILocation(line: 410, column: 36, scope: !766)
!2591 = !DILocation(line: 428, column: 13, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2593, file: !1, discriminator: 1)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !1, line: 428, column: 13)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !1, line: 420, column: 57)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 420, column: 18)
!2596 = distinct !DILexicalBlock(scope: !766, file: !1, line: 412, column: 13)
!2597 = !DILocation(line: 410, column: 26, scope: !766)
!2598 = !DILocation(line: 412, column: 13, scope: !766)
!2599 = !DILocation(line: 418, column: 13, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2601, file: !1, discriminator: 1)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !1, line: 418, column: 13)
!2602 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 412, column: 27)
!2603 = !DILocation(line: 419, column: 9, scope: !2602)
!2604 = !DILocation(line: 273, column: 42, scope: !770, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 427, column: 13, scope: !2594)
!2606 = !DILocation(line: 276, column: 40, scope: !770, inlinedAt: !2605)
!2607 = !DILocation(line: 276, column: 16, scope: !770, inlinedAt: !2605)
!2608 = !DILocation(line: 277, column: 40, scope: !770, inlinedAt: !2605)
!2609 = !DILocation(line: 277, column: 16, scope: !770, inlinedAt: !2605)
!2610 = !DILocation(line: 279, column: 22, scope: !770, inlinedAt: !2605)
!2611 = !DILocation(line: 279, column: 30, scope: !770, inlinedAt: !2605)
!2612 = !DILocation(line: 280, column: 22, scope: !770, inlinedAt: !2605)
!2613 = !DILocation(line: 280, column: 30, scope: !770, inlinedAt: !2605)
!2614 = !DILocation(line: 282, column: 44, scope: !770, inlinedAt: !2605)
!2615 = !DILocation(line: 282, column: 33, scope: !770, inlinedAt: !2605)
!2616 = !DILocation(line: 275, column: 16, scope: !770, inlinedAt: !2605)
!2617 = !DILocation(line: 283, column: 45, scope: !770, inlinedAt: !2605)
!2618 = !DILocation(line: 283, column: 26, scope: !770, inlinedAt: !2605)
!2619 = !DILocation(line: 284, column: 22, scope: !770, inlinedAt: !2605)
!2620 = !DILocation(line: 429, column: 9, scope: !2594)
!2621 = !DILocation(line: 444, column: 5, scope: !761)
!2622 = !DILocation(line: 558, column: 22, scope: !802)
!2623 = !DILocation(line: 558, column: 37, scope: !802)
!2624 = !DILocation(line: 560, column: 9, scope: !810)
!2625 = !DILocation(line: 560, column: 9, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !810, file: !1, discriminator: 1)
!2627 = !DILocation(line: 560, column: 9, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !810, file: !1, discriminator: 2)
!2629 = !DILocation(line: 560, column: 9, scope: !802)
!2630 = !DILocation(line: 561, column: 13, scope: !808)
!2631 = !DILocation(line: 564, column: 13, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2633, file: !1, discriminator: 1)
!2633 = distinct !DILexicalBlock(scope: !807, file: !1, line: 564, column: 13)
!2634 = !DILocation(line: 561, column: 13, scope: !809)
!2635 = !DILocation(line: 273, column: 42, scope: !770, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 563, column: 13, scope: !807)
!2637 = !DILocation(line: 276, column: 40, scope: !770, inlinedAt: !2636)
!2638 = !DILocation(line: 276, column: 16, scope: !770, inlinedAt: !2636)
!2639 = !DILocation(line: 277, column: 40, scope: !770, inlinedAt: !2636)
!2640 = !DILocation(line: 277, column: 16, scope: !770, inlinedAt: !2636)
!2641 = !DILocation(line: 279, column: 22, scope: !770, inlinedAt: !2636)
!2642 = !DILocation(line: 279, column: 30, scope: !770, inlinedAt: !2636)
!2643 = !DILocation(line: 280, column: 22, scope: !770, inlinedAt: !2636)
!2644 = !DILocation(line: 280, column: 30, scope: !770, inlinedAt: !2636)
!2645 = !DILocation(line: 282, column: 44, scope: !770, inlinedAt: !2636)
!2646 = !DILocation(line: 282, column: 33, scope: !770, inlinedAt: !2636)
!2647 = !DILocation(line: 275, column: 16, scope: !770, inlinedAt: !2636)
!2648 = !DILocation(line: 283, column: 45, scope: !770, inlinedAt: !2636)
!2649 = !DILocation(line: 283, column: 26, scope: !770, inlinedAt: !2636)
!2650 = !DILocation(line: 284, column: 22, scope: !770, inlinedAt: !2636)
!2651 = !DILocation(line: 565, column: 9, scope: !807)
!2652 = !DILocation(line: 567, column: 5, scope: !802)
