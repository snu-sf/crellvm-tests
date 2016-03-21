; ModuleID = 'irs-onlybc/xxsubtype.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.spamdictobject = type { %struct.PyDictObject, i32 }
%struct.PyDictObject = type { %struct._object, i64, %struct._dictkeysobject*, %struct._object** }
%struct._dictkeysobject = type opaque
%struct.spamlistobject = type { %struct.PyListObject, i32 }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@PyDict_Type = external global %struct._typeobject, align 8
@spamdict_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @spamdict_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @spamdict_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.spamdictobject*, %struct._object*, %struct._object*)* @spamdict_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyList_Type = external global %struct._typeobject, align 8
@spamlist_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @spamlist_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @spamlist_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.spamlistobject*, %struct._object*, %struct._object*)* @spamlist_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@xxsubtypemodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([290 x i8], [290 x i8]* @xxsubtype__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @xxsubtype_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"spamlist\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"spamdict\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"xxsubtype.spamdict\00", align 1
@spamdict_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.spamdictobject*, %struct._object*)* @spamdict_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.spamdictobject*, %struct._object*)* @spamdict_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@spamdict_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 1, i64 40, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"getstate\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"getstate() -> state\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"setstate\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"setstate(state)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c":getstate\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"i:setstate\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"an int variable for demonstration purposes\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"xxsubtype.spamlist\00", align 1
@spamlist_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.spamlistobject*, %struct._object*)* @spamlist_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.spamlistobject*, %struct._object*)* @spamlist_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @spamlist_specialmeth to %struct._object* (%struct._object*, %struct._object*)*), i32 19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @spamlist_specialmeth to %struct._object* (%struct._object*, %struct._object*)*), i32 35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@spamlist_getsets = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.spamlistobject*)* @spamlist_state_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [10 x i8] c"classmeth\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"classmeth(*args, **kw)\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"staticmeth\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"staticmeth(*args, **kw)\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"xxsubtype\00", align 1
@xxsubtype__doc__ = internal global [290 x i8] c"xxsubtype is an example module showing how to subtype builtin types from C.\0Atest_descr.py in the standard test suite requires it in order to complete.\0AIf you don't care about the examples, and don't intend to run the Python\0Atest suite, you can recompile Python without Modules/xxsubtype.c.\00", align 16
@xxsubtype_functions = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @spam_bench, i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"bench\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"OS|i\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_xxsubtype() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !512
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !512
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !365, metadata !513), !dbg !514
  store %struct._typeobject* @PyDict_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i32 0, i32 30), align 8, !dbg !515, !tbaa !516
  %call = call i32 @PyType_Ready(%struct._typeobject* @spamdict_type), !dbg !525
  %cmp = icmp slt i32 %call, 0, !dbg !527
  br i1 %cmp, label %if.then, label %if.end, !dbg !528

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !529
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !529

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyList_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i32 0, i32 30), align 8, !dbg !530, !tbaa !516
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @spamlist_type), !dbg !531
  %cmp2 = icmp slt i32 %call1, 0, !dbg !533
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !534

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !535
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !535

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @xxsubtypemodule, i32 1013), !dbg !536
  store %struct._object* %call5, %struct._object** %m, align 8, !dbg !537, !tbaa !538
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !539, !tbaa !538
  %cmp6 = icmp eq %struct._object* %1, null, !dbg !541
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !542

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !543
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !543

if.end.8:                                         ; preds = %if.end.4
  %call9 = call i32 @PyType_Ready(%struct._typeobject* @spamlist_type), !dbg !544
  %cmp10 = icmp slt i32 %call9, 0, !dbg !546
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !547

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval, !dbg !548
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !548

if.end.12:                                        ; preds = %if.end.8
  %call13 = call i32 @PyType_Ready(%struct._typeobject* @spamdict_type), !dbg !549
  %cmp14 = icmp slt i32 %call13, 0, !dbg !551
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !552

if.then.15:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval, !dbg !553
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !553

if.end.16:                                        ; preds = %if.end.12
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !554, !tbaa !555
  %inc = add i64 %2, 1, !dbg !554
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !554, !tbaa !555
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !556, !tbaa !538
  %call17 = call i32 @PyModule_AddObject(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i32 0, i32 0, i32 0)), !dbg !558
  %cmp18 = icmp slt i32 %call17, 0, !dbg !559
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !560

if.then.19:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval, !dbg !561
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !561

if.end.20:                                        ; preds = %if.end.16
  %4 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !562, !tbaa !555
  %inc21 = add i64 %4, 1, !dbg !562
  store i64 %inc21, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !562, !tbaa !555
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !563, !tbaa !538
  %call22 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i32 0, i32 0, i32 0)), !dbg !565
  %cmp23 = icmp slt i32 %call22, 0, !dbg !566
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !567

if.then.24:                                       ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval, !dbg !568
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !568

if.end.25:                                        ; preds = %if.end.20
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !569, !tbaa !538
  store %struct._object* %6, %struct._object** %retval, !dbg !570
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !570

cleanup:                                          ; preds = %if.end.25, %if.then.24, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %7 = bitcast %struct._object** %m to i8*, !dbg !571
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !571
  %8 = load %struct._object*, %struct._object** %retval, !dbg !571
  ret %struct._object* %8, !dbg !571
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @spamdict_init(%struct.spamdictobject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.spamdictobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct.spamdictobject* %self, %struct.spamdictobject** %self.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct.spamdictobject** %self.addr, metadata !399, metadata !513), !dbg !572
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !400, metadata !513), !dbg !573
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !401, metadata !513), !dbg !574
  %0 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 35), align 8, !dbg !575, !tbaa !577
  %1 = load %struct.spamdictobject*, %struct.spamdictobject** %self.addr, align 8, !dbg !578, !tbaa !538
  %2 = bitcast %struct.spamdictobject* %1 to %struct._object*, !dbg !579
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !580, !tbaa !538
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !581, !tbaa !538
  %call = call i32 %0(%struct._object* %2, %struct._object* %3, %struct._object* %4), !dbg !582
  %cmp = icmp slt i32 %call, 0, !dbg !583
  br i1 %cmp, label %if.then, label %if.end, !dbg !584

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !585
  br label %return, !dbg !585

if.end:                                           ; preds = %entry
  %5 = load %struct.spamdictobject*, %struct.spamdictobject** %self.addr, align 8, !dbg !586, !tbaa !538
  %state = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %5, i32 0, i32 1, !dbg !587
  store i32 0, i32* %state, align 4, !dbg !588, !tbaa !589
  store i32 0, i32* %retval, !dbg !592
  br label %return, !dbg !592

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, !dbg !593
  ret i32 %6, !dbg !593
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamdict_getstate(%struct.spamdictobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.spamdictobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.spamdictobject* %self, %struct.spamdictobject** %self.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct.spamdictobject** %self.addr, metadata !388, metadata !513), !dbg !594
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !389, metadata !513), !dbg !595
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !596, !tbaa !538
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)), !dbg !598
  %tobool = icmp ne i32 %call, 0, !dbg !598
  br i1 %tobool, label %if.end, label %if.then, !dbg !599

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !600
  br label %return, !dbg !600

if.end:                                           ; preds = %entry
  %1 = load %struct.spamdictobject*, %struct.spamdictobject** %self.addr, align 8, !dbg !601, !tbaa !538
  %state = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %1, i32 0, i32 1, !dbg !602
  %2 = load i32, i32* %state, align 4, !dbg !602, !tbaa !589
  %conv = sext i32 %2 to i64, !dbg !601
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !603
  store %struct._object* %call1, %struct._object** %retval, !dbg !604
  br label %return, !dbg !604

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !605
  ret %struct._object* %3, !dbg !605
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamdict_setstate(%struct.spamdictobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.spamdictobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.spamdictobject* %self, %struct.spamdictobject** %self.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct.spamdictobject** %self.addr, metadata !392, metadata !513), !dbg !606
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !393, metadata !513), !dbg !607
  %0 = bitcast i32* %state to i8*, !dbg !608
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !608
  call void @llvm.dbg.declare(metadata i32* %state, metadata !394, metadata !513), !dbg !609
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !610, !tbaa !538
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32* %state), !dbg !612
  %tobool = icmp ne i32 %call, 0, !dbg !612
  br i1 %tobool, label %if.end, label %if.then, !dbg !613

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !614
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !614

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %state, align 4, !dbg !615, !tbaa !616
  %3 = load %struct.spamdictobject*, %struct.spamdictobject** %self.addr, align 8, !dbg !617, !tbaa !538
  %state1 = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %3, i32 0, i32 1, !dbg !618
  store i32 %2, i32* %state1, align 4, !dbg !619, !tbaa !589
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !620, !tbaa !555
  %inc = add i64 %4, 1, !dbg !620
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !620, !tbaa !555
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !621
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !621

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %state to i8*, !dbg !622
  call void @llvm.lifetime.end(i64 4, i8* %5) #1, !dbg !622
  %6 = load %struct._object*, %struct._object** %retval, !dbg !622
  ret %struct._object* %6, !dbg !622
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @spamlist_init(%struct.spamlistobject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.spamlistobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct.spamlistobject* %self, %struct.spamlistobject** %self.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct.spamlistobject** %self.addr, metadata !441, metadata !513), !dbg !623
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !442, metadata !513), !dbg !624
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !443, metadata !513), !dbg !625
  %0 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyList_Type, i32 0, i32 35), align 8, !dbg !626, !tbaa !577
  %1 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8, !dbg !628, !tbaa !538
  %2 = bitcast %struct.spamlistobject* %1 to %struct._object*, !dbg !629
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !630, !tbaa !538
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !631, !tbaa !538
  %call = call i32 %0(%struct._object* %2, %struct._object* %3, %struct._object* %4), !dbg !632
  %cmp = icmp slt i32 %call, 0, !dbg !633
  br i1 %cmp, label %if.then, label %if.end, !dbg !634

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !635
  br label %return, !dbg !635

if.end:                                           ; preds = %entry
  %5 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8, !dbg !636, !tbaa !538
  %state = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %5, i32 0, i32 1, !dbg !637
  store i32 0, i32* %state, align 4, !dbg !638, !tbaa !639
  store i32 0, i32* %retval, !dbg !642
  br label %return, !dbg !642

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, !dbg !643
  ret i32 %6, !dbg !643
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_getstate(%struct.spamlistobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.spamlistobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.spamlistobject* %self, %struct.spamlistobject** %self.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct.spamlistobject** %self.addr, metadata !419, metadata !513), !dbg !644
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !420, metadata !513), !dbg !645
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !646, !tbaa !538
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)), !dbg !648
  %tobool = icmp ne i32 %call, 0, !dbg !648
  br i1 %tobool, label %if.end, label %if.then, !dbg !649

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !650
  br label %return, !dbg !650

if.end:                                           ; preds = %entry
  %1 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8, !dbg !651, !tbaa !538
  %state = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %1, i32 0, i32 1, !dbg !652
  %2 = load i32, i32* %state, align 4, !dbg !652, !tbaa !639
  %conv = sext i32 %2 to i64, !dbg !651
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !653
  store %struct._object* %call1, %struct._object** %retval, !dbg !654
  br label %return, !dbg !654

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !655
  ret %struct._object* %3, !dbg !655
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_setstate(%struct.spamlistobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.spamlistobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.spamlistobject* %self, %struct.spamlistobject** %self.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct.spamlistobject** %self.addr, metadata !423, metadata !513), !dbg !656
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !424, metadata !513), !dbg !657
  %0 = bitcast i32* %state to i8*, !dbg !658
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !658
  call void @llvm.dbg.declare(metadata i32* %state, metadata !425, metadata !513), !dbg !659
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !660, !tbaa !538
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32* %state), !dbg !662
  %tobool = icmp ne i32 %call, 0, !dbg !662
  br i1 %tobool, label %if.end, label %if.then, !dbg !663

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !664
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !664

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %state, align 4, !dbg !665, !tbaa !616
  %3 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8, !dbg !666, !tbaa !538
  %state1 = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %3, i32 0, i32 1, !dbg !667
  store i32 %2, i32* %state1, align 4, !dbg !668, !tbaa !639
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !669, !tbaa !555
  %inc = add i64 %4, 1, !dbg !669
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !669, !tbaa !555
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !670
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !670

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %state to i8*, !dbg !671
  call void @llvm.lifetime.end(i64 4, i8* %5) #1, !dbg !671
  %6 = load %struct._object*, %struct._object** %retval, !dbg !671
  ret %struct._object* %6, !dbg !671
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_specialmeth(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !428, metadata !513), !dbg !672
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !429, metadata !513), !dbg !673
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !430, metadata !513), !dbg !674
  %0 = bitcast %struct._object** %result to i8*, !dbg !675
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !675
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !431, metadata !513), !dbg !676
  %call = call %struct._object* @PyTuple_New(i64 3), !dbg !677
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !676, !tbaa !538
  %1 = load %struct._object*, %struct._object** %result, align 8, !dbg !678, !tbaa !538
  %cmp = icmp ne %struct._object* %1, null, !dbg !680
  br i1 %cmp, label %if.then, label %if.end.14, !dbg !681

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !682, !tbaa !538
  %cmp1 = icmp eq %struct._object* %2, null, !dbg !685
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !686

if.then.2:                                        ; preds = %if.then
  store %struct._object* @_Py_NoneStruct, %struct._object** %self.addr, align 8, !dbg !687, !tbaa !538
  br label %if.end, !dbg !688

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !689, !tbaa !538
  %cmp3 = icmp eq %struct._object* %3, null, !dbg !691
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !692

if.then.4:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %kw.addr, align 8, !dbg !693, !tbaa !538
  br label %if.end.5, !dbg !694

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !695, !tbaa !538
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !696
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !697, !tbaa !555
  %inc = add i64 %5, 1, !dbg !697
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !697, !tbaa !555
  %6 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !698, !tbaa !538
  %7 = load %struct._object*, %struct._object** %result, align 8, !dbg !699, !tbaa !538
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*, !dbg !700
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1, !dbg !701
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !702
  store %struct._object* %6, %struct._object** %arrayidx, align 8, !dbg !703, !tbaa !538
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !704, !tbaa !538
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !705
  %10 = load i64, i64* %ob_refcnt6, align 8, !dbg !706, !tbaa !555
  %inc7 = add i64 %10, 1, !dbg !706
  store i64 %inc7, i64* %ob_refcnt6, align 8, !dbg !706, !tbaa !555
  %11 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !707, !tbaa !538
  %12 = load %struct._object*, %struct._object** %result, align 8, !dbg !708, !tbaa !538
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*, !dbg !709
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1, !dbg !710
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 1, !dbg !711
  store %struct._object* %11, %struct._object** %arrayidx9, align 8, !dbg !712, !tbaa !538
  %14 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !713, !tbaa !538
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !714
  %15 = load i64, i64* %ob_refcnt10, align 8, !dbg !715, !tbaa !555
  %inc11 = add i64 %15, 1, !dbg !715
  store i64 %inc11, i64* %ob_refcnt10, align 8, !dbg !715, !tbaa !555
  %16 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !716, !tbaa !538
  %17 = load %struct._object*, %struct._object** %result, align 8, !dbg !717, !tbaa !538
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*, !dbg !718
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1, !dbg !719
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 2, !dbg !720
  store %struct._object* %16, %struct._object** %arrayidx13, align 8, !dbg !721, !tbaa !538
  br label %if.end.14, !dbg !722

if.end.14:                                        ; preds = %if.end.5, %entry
  %19 = load %struct._object*, %struct._object** %result, align 8, !dbg !723, !tbaa !538
  %20 = bitcast %struct._object** %result to i8*, !dbg !724
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !724
  ret %struct._object* %19, !dbg !725
}

declare %struct._object* @PyTuple_New(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_state_get(%struct.spamlistobject* %self) #0 {
entry:
  %self.addr = alloca %struct.spamlistobject*, align 8
  store %struct.spamlistobject* %self, %struct.spamlistobject** %self.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct.spamlistobject** %self.addr, metadata !436, metadata !513), !dbg !726
  %0 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8, !dbg !727, !tbaa !538
  %state = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %0, i32 0, i32 1, !dbg !728
  %1 = load i32, i32* %state, align 4, !dbg !728, !tbaa !639
  %conv = sext i32 %1 to i64, !dbg !727
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !729
  ret %struct._object* %call, !dbg !730
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spam_bench(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %n = alloca i32, align 4
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !446, metadata !513), !dbg !731
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !538
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !447, metadata !513), !dbg !732
  %0 = bitcast %struct._object** %obj to i8*, !dbg !733
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !733
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !448, metadata !513), !dbg !734
  %1 = bitcast %struct._object** %name to i8*, !dbg !733
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !733
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !449, metadata !513), !dbg !735
  %2 = bitcast %struct._object** %res to i8*, !dbg !733
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !733
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !450, metadata !513), !dbg !736
  %3 = bitcast i32* %n to i8*, !dbg !737
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !737
  call void @llvm.dbg.declare(metadata i32* %n, metadata !451, metadata !513), !dbg !738
  store i32 1000, i32* %n, align 4, !dbg !738, !tbaa !616
  %4 = bitcast i64* %t0 to i8*, !dbg !739
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !739
  call void @llvm.dbg.declare(metadata i64* %t0, metadata !452, metadata !513), !dbg !740
  %5 = bitcast i64* %t1 to i8*, !dbg !739
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !739
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !456, metadata !513), !dbg !741
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !742, !tbaa !538
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %struct._object** %obj, %struct._object** %name, i32* %n), !dbg !744
  %tobool = icmp ne i32 %call, 0, !dbg !744
  br i1 %tobool, label %if.end, label %if.then, !dbg !745

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !746
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !746

if.end:                                           ; preds = %entry
  %call1 = call i64 @clock() #1, !dbg !747
  store i64 %call1, i64* %t0, align 8, !dbg !748, !tbaa !749
  br label %while.cond, !dbg !750

while.cond:                                       ; preds = %do.end, %if.end
  %7 = load i32, i32* %n, align 4, !dbg !751, !tbaa !616
  %dec = add i32 %7, -1, !dbg !751
  store i32 %dec, i32* %n, align 4, !dbg !751, !tbaa !616
  %cmp = icmp sge i32 %dec, 0, !dbg !754
  br i1 %cmp, label %while.body, label %while.end, !dbg !750

while.body:                                       ; preds = %while.cond
  %8 = load %struct._object*, %struct._object** %obj, align 8, !dbg !755, !tbaa !538
  %9 = load %struct._object*, %struct._object** %name, align 8, !dbg !756, !tbaa !538
  %call2 = call %struct._object* @PyObject_GetAttr(%struct._object* %8, %struct._object* %9), !dbg !757
  store %struct._object* %call2, %struct._object** %res, align 8, !dbg !758, !tbaa !538
  %10 = load %struct._object*, %struct._object** %res, align 8, !dbg !759, !tbaa !538
  %cmp3 = icmp eq %struct._object* %10, null, !dbg !761
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !762

if.then.4:                                        ; preds = %while.body
  store %struct._object* null, %struct._object** %retval, !dbg !763
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !763

if.end.5:                                         ; preds = %while.body
  br label %do.body, !dbg !764

do.body:                                          ; preds = %if.end.5
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !765
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !765
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !457, metadata !513), !dbg !767
  %12 = load %struct._object*, %struct._object** %res, align 8, !dbg !768, !tbaa !538
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !767, !tbaa !538
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !769, !tbaa !538
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !771
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !772, !tbaa !555
  %dec6 = add i64 %14, -1, !dbg !772
  store i64 %dec6, i64* %ob_refcnt, align 8, !dbg !772, !tbaa !555
  %cmp7 = icmp ne i64 %dec6, 0, !dbg !773
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !774

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !775

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !777, !tbaa !538
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !779
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !779, !tbaa !780
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !781
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !781, !tbaa !782
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !783, !tbaa !538
  call void %17(%struct._object* %18), !dbg !784
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !785
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !785
  br label %do.cond, !dbg !787

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !788

do.end:                                           ; preds = %do.cond
  br label %while.cond, !dbg !750

while.end:                                        ; preds = %while.cond
  %call10 = call i64 @clock() #1, !dbg !790
  store i64 %call10, i64* %t1, align 8, !dbg !791, !tbaa !749
  %20 = load i64, i64* %t1, align 8, !dbg !792, !tbaa !749
  %21 = load i64, i64* %t0, align 8, !dbg !793, !tbaa !749
  %sub = sub i64 %20, %21, !dbg !794
  %conv = sitofp i64 %sub to double, !dbg !795
  %div = fdiv double %conv, 1.000000e+06, !dbg !796
  %call11 = call %struct._object* @PyFloat_FromDouble(double %div), !dbg !797
  store %struct._object* %call11, %struct._object** %retval, !dbg !798
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !798

cleanup:                                          ; preds = %while.end, %if.then.4, %if.then
  %22 = bitcast i64* %t1 to i8*, !dbg !799
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !799
  %23 = bitcast i64* %t0 to i8*, !dbg !799
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !799
  %24 = bitcast i32* %n to i8*, !dbg !799
  call void @llvm.lifetime.end(i64 4, i8* %24) #1, !dbg !799
  %25 = bitcast %struct._object** %res to i8*, !dbg !799
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !799
  %26 = bitcast %struct._object** %name to i8*, !dbg !799
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !799
  %27 = bitcast %struct._object** %obj to i8*, !dbg !799
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !799
  %28 = load %struct._object*, %struct._object** %retval, !dbg !799
  ret %struct._object* %28, !dbg !799
}

; Function Attrs: nounwind
declare i64 @clock() #4

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!509, !510}
!llvm.ident = !{!511}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !359, globals: !460)
!1 = !DIFile(filename: "xxsubtype.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !350, !358}
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
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
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
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !52, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!5, !5, !4}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!44, !5, !5, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!5, !19, !11}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!5, !19, !5, !5}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !4}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !352, line: 33, baseType: !353)
!352 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 25, size: 256, align: 64, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 26, baseType: !23, size: 192, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !353, file: !352, line: 27, baseType: !357, size: 64, align: 64, offset: 192)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!358 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!359 = !{!360, !366, !390, !395, !402, !421, !426, !432, !437, !444}
!360 = !DISubprogram(name: "PyInit_xxsubtype", scope: !361, file: !361, line: 274, type: !362, isLocal: false, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_xxsubtype, variables: !364)
!361 = !DIFile(filename: "./Modules/xxsubtype.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!362 = !DISubroutineType(types: !363)
!363 = !{!5}
!364 = !{!365}
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !360, file: !361, line: 276, type: !5)
!366 = !DISubprogram(name: "spamdict_getstate", scope: !361, file: !361, line: 152, type: !367, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamdictobject*, %struct._object*)* @spamdict_getstate, variables: !387)
!367 = !DISubroutineType(types: !368)
!368 = !{!5, !369, !5}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "spamdictobject", file: !361, line: 149, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 146, size: 384, align: 64, elements: !372)
!372 = !{!373, !386}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !371, file: !361, line: 147, baseType: !374, size: 320, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictObject", file: !375, line: 28, baseType: !376)
!375 = !DIFile(filename: "Include/dictobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!376 = !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 23, size: 320, align: 64, elements: !377)
!377 = !{!378, !379, !380, !384}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !376, file: !375, line: 24, baseType: !6, size: 128, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ma_used", scope: !376, file: !375, line: 25, baseType: !11, size: 64, align: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ma_keys", scope: !376, file: !375, line: 26, baseType: !381, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictKeysObject", file: !375, line: 18, baseType: !383)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "_dictkeysobject", file: !7, line: 461, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ma_values", scope: !376, file: !375, line: 27, baseType: !385, size: 64, align: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !371, file: !361, line: 148, baseType: !44, size: 32, align: 32, offset: 320)
!387 = !{!388, !389}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !366, file: !361, line: 152, type: !369)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !366, file: !361, line: 152, type: !5)
!390 = !DISubprogram(name: "spamdict_setstate", scope: !361, file: !361, line: 160, type: !367, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamdictobject*, %struct._object*)* @spamdict_setstate, variables: !391)
!391 = !{!392, !393, !394}
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !390, file: !361, line: 160, type: !369)
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !390, file: !361, line: 160, type: !5)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !390, file: !361, line: 162, type: !44)
!395 = !DISubprogram(name: "spamdict_init", scope: !361, file: !361, line: 180, type: !396, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.spamdictobject*, %struct._object*, %struct._object*)* @spamdict_init, variables: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!44, !369, !5, !5}
!398 = !{!399, !400, !401}
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !395, file: !361, line: 180, type: !369)
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !395, file: !361, line: 180, type: !5)
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !395, file: !361, line: 180, type: !5)
!402 = !DISubprogram(name: "spamlist_getstate", scope: !361, file: !361, line: 27, type: !403, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamlistobject*, %struct._object*)* @spamlist_getstate, variables: !418)
!403 = !DISubroutineType(types: !404)
!404 = !{!5, !405, !5}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "spamlistobject", file: !361, line: 24, baseType: !407)
!407 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 21, size: 384, align: 64, elements: !408)
!408 = !{!409, !417}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !407, file: !361, line: 22, baseType: !410, size: 320, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !411, line: 40, baseType: !412)
!411 = !DIFile(filename: "Include/listobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!412 = !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 23, size: 320, align: 64, elements: !413)
!413 = !{!414, !415, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !412, file: !411, line: 24, baseType: !23, size: 192, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !412, file: !411, line: 26, baseType: !385, size: 64, align: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !412, file: !411, line: 39, baseType: !11, size: 64, align: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !407, file: !361, line: 23, baseType: !44, size: 32, align: 32, offset: 320)
!418 = !{!419, !420}
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !402, file: !361, line: 27, type: !405)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !402, file: !361, line: 27, type: !5)
!421 = !DISubprogram(name: "spamlist_setstate", scope: !361, file: !361, line: 35, type: !403, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamlistobject*, %struct._object*)* @spamlist_setstate, variables: !422)
!422 = !{!423, !424, !425}
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !421, file: !361, line: 35, type: !405)
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !421, file: !361, line: 35, type: !5)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !421, file: !361, line: 37, type: !44)
!426 = !DISubprogram(name: "spamlist_specialmeth", scope: !361, file: !361, line: 47, type: !135, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @spamlist_specialmeth, variables: !427)
!427 = !{!428, !429, !430, !431}
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !426, file: !361, line: 47, type: !5)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !426, file: !361, line: 47, type: !5)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !426, file: !361, line: 47, type: !5)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !426, file: !361, line: 49, type: !5)
!432 = !DISubprogram(name: "spamlist_state_get", scope: !361, file: !361, line: 92, type: !433, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamlistobject*)* @spamlist_state_get, variables: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{!5, !405}
!435 = !{!436}
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !432, file: !361, line: 92, type: !405)
!437 = !DISubprogram(name: "spamlist_init", scope: !361, file: !361, line: 83, type: !438, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.spamlistobject*, %struct._object*, %struct._object*)* @spamlist_init, variables: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{!44, !405, !5, !5}
!440 = !{!441, !442, !443}
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !437, file: !361, line: 83, type: !405)
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !437, file: !361, line: 83, type: !5)
!443 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !437, file: !361, line: 83, type: !5)
!444 = !DISubprogram(name: "spam_bench", scope: !361, file: !361, line: 236, type: !126, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @spam_bench, variables: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !456, !457}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !444, file: !361, line: 236, type: !5)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !444, file: !361, line: 236, type: !5)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !444, file: !361, line: 238, type: !5)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !444, file: !361, line: 238, type: !5)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !444, file: !361, line: 238, type: !5)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !444, file: !361, line: 239, type: !44)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t0", scope: !444, file: !361, line: 240, type: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !454, line: 75, baseType: !455)
!454 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !16, line: 148, baseType: !17)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t1", scope: !444, file: !361, line: 240, type: !453)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !458, file: !361, line: 249, type: !5)
!458 = distinct !DILexicalBlock(scope: !459, file: !361, line: 249, column: 12)
!459 = distinct !DILexicalBlock(scope: !444, file: !361, line: 245, column: 22)
!460 = !{!461, !463, !468, !473, !474, !478, !481, !503, !507}
!461 = !DIGlobalVariable(name: "spamdict_type", scope: !0, file: !361, line: 194, type: !462, isLocal: true, isDefinition: true, variable: %struct._typeobject* @spamdict_type)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!463 = !DIGlobalVariable(name: "spamdict_methods", scope: !0, file: !361, line: 171, type: !464, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @spamdict_methods)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 768, align: 64, elements: !466)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!466 = !{!467}
!467 = !DISubrange(count: 3)
!468 = !DIGlobalVariable(name: "spamdict_members", scope: !0, file: !361, line: 188, type: !469, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @spamdict_members)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 640, align: 64, elements: !471)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!471 = !{!472}
!472 = !DISubrange(count: 2)
!473 = !DIGlobalVariable(name: "spamlist_type", scope: !0, file: !361, line: 103, type: !462, isLocal: true, isDefinition: true, variable: %struct._typeobject* @spamlist_type)
!474 = !DIGlobalVariable(name: "spamlist_methods", scope: !0, file: !361, line: 66, type: !475, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @spamlist_methods)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 1280, align: 64, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 5)
!478 = !DIGlobalVariable(name: "spamlist_getsets", scope: !0, file: !361, line: 97, type: !479, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @spamlist_getsets)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 640, align: 64, elements: !471)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !301, line: 17, baseType: !300)
!481 = !DIGlobalVariable(name: "xxsubtypemodule", scope: !0, file: !361, line: 260, type: !482, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @xxsubtypemodule)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !483, line: 47, size: 832, align: 64, elements: !484)
!483 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!484 = !{!485, !494, !495, !496, !497, !499, !500, !501, !502}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !482, file: !483, line: 48, baseType: !486, size: 320, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !483, line: 38, baseType: !487)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !483, line: 33, size: 320, align: 64, elements: !488)
!488 = !{!489, !490, !492, !493}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !487, file: !483, line: 34, baseType: !6, size: 128, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !487, file: !483, line: 35, baseType: !491, size: 64, align: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !487, file: !483, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !487, file: !483, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !482, file: !483, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !482, file: !483, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !482, file: !483, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !482, file: !483, line: 52, baseType: !498, size: 64, align: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !482, file: !483, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !482, file: !483, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !482, file: !483, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !482, file: !483, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!503 = !DIGlobalVariable(name: "xxsubtype__doc__", scope: !0, file: !361, line: 4, type: !504, isLocal: true, isDefinition: true, variable: [290 x i8]* @xxsubtype__doc__)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2320, align: 8, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 290)
!507 = !DIGlobalVariable(name: "xxsubtype_functions", scope: !0, file: !361, line: 255, type: !508, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @xxsubtype_functions)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 512, align: 64, elements: !471)
!509 = !{i32 2, !"Dwarf Version", i32 4}
!510 = !{i32 2, !"Debug Info Version", i32 3}
!511 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!512 = !DILocation(line: 276, column: 5, scope: !360)
!513 = !DIExpression()
!514 = !DILocation(line: 276, column: 15, scope: !360)
!515 = !DILocation(line: 282, column: 27, scope: !360)
!516 = !{!517, !523, i64 256}
!517 = !{!"_typeobject", !518, i64 0, !523, i64 24, !520, i64 32, !520, i64 40, !523, i64 48, !523, i64 56, !523, i64 64, !523, i64 72, !523, i64 80, !523, i64 88, !523, i64 96, !523, i64 104, !523, i64 112, !523, i64 120, !523, i64 128, !523, i64 136, !523, i64 144, !523, i64 152, !523, i64 160, !520, i64 168, !523, i64 176, !523, i64 184, !523, i64 192, !523, i64 200, !520, i64 208, !523, i64 216, !523, i64 224, !523, i64 232, !523, i64 240, !523, i64 248, !523, i64 256, !523, i64 264, !523, i64 272, !523, i64 280, !520, i64 288, !523, i64 296, !523, i64 304, !523, i64 312, !523, i64 320, !523, i64 328, !523, i64 336, !523, i64 344, !523, i64 352, !523, i64 360, !523, i64 368, !523, i64 376, !524, i64 384, !523, i64 392}
!518 = !{!"", !519, i64 0, !520, i64 16}
!519 = !{!"_object", !520, i64 0, !523, i64 8}
!520 = !{!"long", !521, i64 0}
!521 = !{!"omnipotent char", !522, i64 0}
!522 = !{!"Simple C/C++ TBAA"}
!523 = !{!"any pointer", !521, i64 0}
!524 = !{!"int", !521, i64 0}
!525 = !DILocation(line: 283, column: 9, scope: !526)
!526 = distinct !DILexicalBlock(scope: !360, file: !361, line: 283, column: 9)
!527 = !DILocation(line: 283, column: 38, scope: !526)
!528 = !DILocation(line: 283, column: 9, scope: !360)
!529 = !DILocation(line: 284, column: 9, scope: !526)
!530 = !DILocation(line: 286, column: 27, scope: !360)
!531 = !DILocation(line: 287, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !360, file: !361, line: 287, column: 9)
!533 = !DILocation(line: 287, column: 38, scope: !532)
!534 = !DILocation(line: 287, column: 9, scope: !360)
!535 = !DILocation(line: 288, column: 9, scope: !532)
!536 = !DILocation(line: 290, column: 9, scope: !360)
!537 = !DILocation(line: 290, column: 7, scope: !360)
!538 = !{!523, !523, i64 0}
!539 = !DILocation(line: 291, column: 9, scope: !540)
!540 = distinct !DILexicalBlock(scope: !360, file: !361, line: 291, column: 9)
!541 = !DILocation(line: 291, column: 11, scope: !540)
!542 = !DILocation(line: 291, column: 9, scope: !360)
!543 = !DILocation(line: 292, column: 9, scope: !540)
!544 = !DILocation(line: 294, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !360, file: !361, line: 294, column: 9)
!546 = !DILocation(line: 294, column: 38, scope: !545)
!547 = !DILocation(line: 294, column: 9, scope: !360)
!548 = !DILocation(line: 295, column: 9, scope: !545)
!549 = !DILocation(line: 296, column: 9, scope: !550)
!550 = distinct !DILexicalBlock(scope: !360, file: !361, line: 296, column: 9)
!551 = !DILocation(line: 296, column: 38, scope: !550)
!552 = !DILocation(line: 296, column: 9, scope: !360)
!553 = !DILocation(line: 297, column: 9, scope: !550)
!554 = !DILocation(line: 299, column: 48, scope: !360)
!555 = !{!519, !520, i64 0}
!556 = !DILocation(line: 300, column: 28, scope: !557)
!557 = distinct !DILexicalBlock(scope: !360, file: !361, line: 300, column: 9)
!558 = !DILocation(line: 300, column: 9, scope: !557)
!559 = !DILocation(line: 301, column: 57, scope: !557)
!560 = !DILocation(line: 300, column: 9, scope: !360)
!561 = !DILocation(line: 302, column: 9, scope: !557)
!562 = !DILocation(line: 304, column: 48, scope: !360)
!563 = !DILocation(line: 305, column: 28, scope: !564)
!564 = distinct !DILexicalBlock(scope: !360, file: !361, line: 305, column: 9)
!565 = !DILocation(line: 305, column: 9, scope: !564)
!566 = !DILocation(line: 306, column: 57, scope: !564)
!567 = !DILocation(line: 305, column: 9, scope: !360)
!568 = !DILocation(line: 307, column: 9, scope: !564)
!569 = !DILocation(line: 308, column: 12, scope: !360)
!570 = !DILocation(line: 308, column: 5, scope: !360)
!571 = !DILocation(line: 309, column: 1, scope: !360)
!572 = !DILocation(line: 180, column: 31, scope: !395)
!573 = !DILocation(line: 180, column: 47, scope: !395)
!574 = !DILocation(line: 180, column: 63, scope: !395)
!575 = !DILocation(line: 182, column: 21, scope: !576)
!576 = distinct !DILexicalBlock(scope: !395, file: !361, line: 182, column: 9)
!577 = !{!517, !523, i64 296}
!578 = !DILocation(line: 182, column: 41, scope: !576)
!579 = !DILocation(line: 182, column: 29, scope: !576)
!580 = !DILocation(line: 182, column: 47, scope: !576)
!581 = !DILocation(line: 182, column: 53, scope: !576)
!582 = !DILocation(line: 182, column: 9, scope: !576)
!583 = !DILocation(line: 182, column: 59, scope: !576)
!584 = !DILocation(line: 182, column: 9, scope: !395)
!585 = !DILocation(line: 183, column: 9, scope: !576)
!586 = !DILocation(line: 184, column: 5, scope: !395)
!587 = !DILocation(line: 184, column: 11, scope: !395)
!588 = !DILocation(line: 184, column: 17, scope: !395)
!589 = !{!590, !524, i64 40}
!590 = !{!"", !591, i64 0, !524, i64 40}
!591 = !{!"", !519, i64 0, !520, i64 16, !523, i64 24, !523, i64 32}
!592 = !DILocation(line: 185, column: 5, scope: !395)
!593 = !DILocation(line: 186, column: 1, scope: !395)
!594 = !DILocation(line: 152, column: 35, scope: !366)
!595 = !DILocation(line: 152, column: 51, scope: !366)
!596 = !DILocation(line: 154, column: 27, scope: !597)
!597 = distinct !DILexicalBlock(scope: !366, file: !361, line: 154, column: 9)
!598 = !DILocation(line: 154, column: 10, scope: !597)
!599 = !DILocation(line: 154, column: 9, scope: !366)
!600 = !DILocation(line: 155, column: 9, scope: !597)
!601 = !DILocation(line: 156, column: 28, scope: !366)
!602 = !DILocation(line: 156, column: 34, scope: !366)
!603 = !DILocation(line: 156, column: 12, scope: !366)
!604 = !DILocation(line: 156, column: 5, scope: !366)
!605 = !DILocation(line: 157, column: 1, scope: !366)
!606 = !DILocation(line: 160, column: 35, scope: !390)
!607 = !DILocation(line: 160, column: 51, scope: !390)
!608 = !DILocation(line: 162, column: 5, scope: !390)
!609 = !DILocation(line: 162, column: 9, scope: !390)
!610 = !DILocation(line: 164, column: 27, scope: !611)
!611 = distinct !DILexicalBlock(scope: !390, file: !361, line: 164, column: 9)
!612 = !DILocation(line: 164, column: 10, scope: !611)
!613 = !DILocation(line: 164, column: 9, scope: !390)
!614 = !DILocation(line: 165, column: 9, scope: !611)
!615 = !DILocation(line: 166, column: 19, scope: !390)
!616 = !{!524, !524, i64 0}
!617 = !DILocation(line: 166, column: 5, scope: !390)
!618 = !DILocation(line: 166, column: 11, scope: !390)
!619 = !DILocation(line: 166, column: 17, scope: !390)
!620 = !DILocation(line: 167, column: 51, scope: !390)
!621 = !DILocation(line: 168, column: 5, scope: !390)
!622 = !DILocation(line: 169, column: 1, scope: !390)
!623 = !DILocation(line: 83, column: 31, scope: !437)
!624 = !DILocation(line: 83, column: 47, scope: !437)
!625 = !DILocation(line: 83, column: 63, scope: !437)
!626 = !DILocation(line: 85, column: 21, scope: !627)
!627 = distinct !DILexicalBlock(scope: !437, file: !361, line: 85, column: 9)
!628 = !DILocation(line: 85, column: 41, scope: !627)
!629 = !DILocation(line: 85, column: 29, scope: !627)
!630 = !DILocation(line: 85, column: 47, scope: !627)
!631 = !DILocation(line: 85, column: 53, scope: !627)
!632 = !DILocation(line: 85, column: 9, scope: !627)
!633 = !DILocation(line: 85, column: 59, scope: !627)
!634 = !DILocation(line: 85, column: 9, scope: !437)
!635 = !DILocation(line: 86, column: 9, scope: !627)
!636 = !DILocation(line: 87, column: 5, scope: !437)
!637 = !DILocation(line: 87, column: 11, scope: !437)
!638 = !DILocation(line: 87, column: 17, scope: !437)
!639 = !{!640, !524, i64 40}
!640 = !{!"", !641, i64 0, !524, i64 40}
!641 = !{!"", !518, i64 0, !523, i64 24, !520, i64 32}
!642 = !DILocation(line: 88, column: 5, scope: !437)
!643 = !DILocation(line: 89, column: 1, scope: !437)
!644 = !DILocation(line: 27, column: 35, scope: !402)
!645 = !DILocation(line: 27, column: 51, scope: !402)
!646 = !DILocation(line: 29, column: 27, scope: !647)
!647 = distinct !DILexicalBlock(scope: !402, file: !361, line: 29, column: 9)
!648 = !DILocation(line: 29, column: 10, scope: !647)
!649 = !DILocation(line: 29, column: 9, scope: !402)
!650 = !DILocation(line: 30, column: 9, scope: !647)
!651 = !DILocation(line: 31, column: 28, scope: !402)
!652 = !DILocation(line: 31, column: 34, scope: !402)
!653 = !DILocation(line: 31, column: 12, scope: !402)
!654 = !DILocation(line: 31, column: 5, scope: !402)
!655 = !DILocation(line: 32, column: 1, scope: !402)
!656 = !DILocation(line: 35, column: 35, scope: !421)
!657 = !DILocation(line: 35, column: 51, scope: !421)
!658 = !DILocation(line: 37, column: 5, scope: !421)
!659 = !DILocation(line: 37, column: 9, scope: !421)
!660 = !DILocation(line: 39, column: 27, scope: !661)
!661 = distinct !DILexicalBlock(scope: !421, file: !361, line: 39, column: 9)
!662 = !DILocation(line: 39, column: 10, scope: !661)
!663 = !DILocation(line: 39, column: 9, scope: !421)
!664 = !DILocation(line: 40, column: 9, scope: !661)
!665 = !DILocation(line: 41, column: 19, scope: !421)
!666 = !DILocation(line: 41, column: 5, scope: !421)
!667 = !DILocation(line: 41, column: 11, scope: !421)
!668 = !DILocation(line: 41, column: 17, scope: !421)
!669 = !DILocation(line: 42, column: 51, scope: !421)
!670 = !DILocation(line: 43, column: 5, scope: !421)
!671 = !DILocation(line: 44, column: 1, scope: !421)
!672 = !DILocation(line: 47, column: 32, scope: !426)
!673 = !DILocation(line: 47, column: 48, scope: !426)
!674 = !DILocation(line: 47, column: 64, scope: !426)
!675 = !DILocation(line: 49, column: 5, scope: !426)
!676 = !DILocation(line: 49, column: 15, scope: !426)
!677 = !DILocation(line: 49, column: 24, scope: !426)
!678 = !DILocation(line: 51, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !426, file: !361, line: 51, column: 9)
!680 = !DILocation(line: 51, column: 16, scope: !679)
!681 = !DILocation(line: 51, column: 9, scope: !426)
!682 = !DILocation(line: 52, column: 13, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !361, line: 52, column: 13)
!684 = distinct !DILexicalBlock(scope: !679, file: !361, line: 51, column: 31)
!685 = !DILocation(line: 52, column: 18, scope: !683)
!686 = !DILocation(line: 52, column: 13, scope: !684)
!687 = !DILocation(line: 53, column: 18, scope: !683)
!688 = !DILocation(line: 53, column: 13, scope: !683)
!689 = !DILocation(line: 54, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !684, file: !361, line: 54, column: 13)
!691 = !DILocation(line: 54, column: 16, scope: !690)
!692 = !DILocation(line: 54, column: 13, scope: !684)
!693 = !DILocation(line: 55, column: 16, scope: !690)
!694 = !DILocation(line: 55, column: 13, scope: !690)
!695 = !DILocation(line: 56, column: 25, scope: !684)
!696 = !DILocation(line: 56, column: 33, scope: !684)
!697 = !DILocation(line: 56, column: 42, scope: !684)
!698 = !DILocation(line: 57, column: 52, scope: !684)
!699 = !DILocation(line: 57, column: 29, scope: !684)
!700 = !DILocation(line: 57, column: 11, scope: !684)
!701 = !DILocation(line: 57, column: 39, scope: !684)
!702 = !DILocation(line: 57, column: 10, scope: !684)
!703 = !DILocation(line: 57, column: 50, scope: !684)
!704 = !DILocation(line: 58, column: 25, scope: !684)
!705 = !DILocation(line: 58, column: 33, scope: !684)
!706 = !DILocation(line: 58, column: 42, scope: !684)
!707 = !DILocation(line: 59, column: 52, scope: !684)
!708 = !DILocation(line: 59, column: 29, scope: !684)
!709 = !DILocation(line: 59, column: 11, scope: !684)
!710 = !DILocation(line: 59, column: 39, scope: !684)
!711 = !DILocation(line: 59, column: 10, scope: !684)
!712 = !DILocation(line: 59, column: 50, scope: !684)
!713 = !DILocation(line: 60, column: 25, scope: !684)
!714 = !DILocation(line: 60, column: 31, scope: !684)
!715 = !DILocation(line: 60, column: 40, scope: !684)
!716 = !DILocation(line: 61, column: 52, scope: !684)
!717 = !DILocation(line: 61, column: 29, scope: !684)
!718 = !DILocation(line: 61, column: 11, scope: !684)
!719 = !DILocation(line: 61, column: 39, scope: !684)
!720 = !DILocation(line: 61, column: 10, scope: !684)
!721 = !DILocation(line: 61, column: 50, scope: !684)
!722 = !DILocation(line: 62, column: 5, scope: !684)
!723 = !DILocation(line: 63, column: 12, scope: !426)
!724 = !DILocation(line: 64, column: 1, scope: !426)
!725 = !DILocation(line: 63, column: 5, scope: !426)
!726 = !DILocation(line: 92, column: 36, scope: !432)
!727 = !DILocation(line: 94, column: 28, scope: !432)
!728 = !DILocation(line: 94, column: 34, scope: !432)
!729 = !DILocation(line: 94, column: 12, scope: !432)
!730 = !DILocation(line: 94, column: 5, scope: !432)
!731 = !DILocation(line: 236, column: 22, scope: !444)
!732 = !DILocation(line: 236, column: 38, scope: !444)
!733 = !DILocation(line: 238, column: 5, scope: !444)
!734 = !DILocation(line: 238, column: 15, scope: !444)
!735 = !DILocation(line: 238, column: 21, scope: !444)
!736 = !DILocation(line: 238, column: 28, scope: !444)
!737 = !DILocation(line: 239, column: 5, scope: !444)
!738 = !DILocation(line: 239, column: 9, scope: !444)
!739 = !DILocation(line: 240, column: 5, scope: !444)
!740 = !DILocation(line: 240, column: 12, scope: !444)
!741 = !DILocation(line: 240, column: 16, scope: !444)
!742 = !DILocation(line: 242, column: 27, scope: !743)
!743 = distinct !DILexicalBlock(scope: !444, file: !361, line: 242, column: 9)
!744 = !DILocation(line: 242, column: 10, scope: !743)
!745 = !DILocation(line: 242, column: 9, scope: !444)
!746 = !DILocation(line: 243, column: 9, scope: !743)
!747 = !DILocation(line: 244, column: 10, scope: !444)
!748 = !DILocation(line: 244, column: 8, scope: !444)
!749 = !{!520, !520, i64 0}
!750 = !DILocation(line: 245, column: 5, scope: !444)
!751 = !DILocation(line: 245, column: 12, scope: !752)
!752 = !DILexicalBlockFile(scope: !753, file: !361, discriminator: 2)
!753 = !DILexicalBlockFile(scope: !444, file: !361, discriminator: 1)
!754 = !DILocation(line: 245, column: 16, scope: !444)
!755 = !DILocation(line: 246, column: 32, scope: !459)
!756 = !DILocation(line: 246, column: 37, scope: !459)
!757 = !DILocation(line: 246, column: 15, scope: !459)
!758 = !DILocation(line: 246, column: 13, scope: !459)
!759 = !DILocation(line: 247, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !459, file: !361, line: 247, column: 13)
!761 = !DILocation(line: 247, column: 17, scope: !760)
!762 = !DILocation(line: 247, column: 13, scope: !459)
!763 = !DILocation(line: 248, column: 13, scope: !760)
!764 = !DILocation(line: 249, column: 9, scope: !459)
!765 = !DILocation(line: 249, column: 14, scope: !766)
!766 = !DILexicalBlockFile(scope: !458, file: !361, discriminator: 1)
!767 = !DILocation(line: 249, column: 24, scope: !458)
!768 = !DILocation(line: 249, column: 54, scope: !458)
!769 = !DILocation(line: 249, column: 68, scope: !770)
!770 = distinct !DILexicalBlock(scope: !458, file: !361, line: 249, column: 65)
!771 = !DILocation(line: 249, column: 85, scope: !770)
!772 = !DILocation(line: 249, column: 65, scope: !770)
!773 = !DILocation(line: 249, column: 95, scope: !770)
!774 = !DILocation(line: 249, column: 65, scope: !458)
!775 = !DILocation(line: 249, column: 65, scope: !776)
!776 = !DILexicalBlockFile(scope: !458, file: !361, discriminator: 2)
!777 = !DILocation(line: 249, column: 126, scope: !778)
!778 = !DILexicalBlockFile(scope: !770, file: !361, discriminator: 3)
!779 = !DILocation(line: 249, column: 144, scope: !770)
!780 = !{!519, !523, i64 8}
!781 = !DILocation(line: 249, column: 154, scope: !770)
!782 = !{!517, !523, i64 48}
!783 = !DILocation(line: 249, column: 179, scope: !770)
!784 = !DILocation(line: 249, column: 110, scope: !770)
!785 = !DILocation(line: 249, column: 198, scope: !786)
!786 = !DILexicalBlockFile(scope: !459, file: !361, discriminator: 4)
!787 = !DILocation(line: 249, column: 198, scope: !458)
!788 = !DILocation(line: 249, column: 198, scope: !789)
!789 = !DILexicalBlockFile(scope: !458, file: !361, discriminator: 5)
!790 = !DILocation(line: 251, column: 10, scope: !444)
!791 = !DILocation(line: 251, column: 8, scope: !444)
!792 = !DILocation(line: 252, column: 40, scope: !444)
!793 = !DILocation(line: 252, column: 43, scope: !444)
!794 = !DILocation(line: 252, column: 42, scope: !444)
!795 = !DILocation(line: 252, column: 31, scope: !444)
!796 = !DILocation(line: 252, column: 47, scope: !444)
!797 = !DILocation(line: 252, column: 12, scope: !444)
!798 = !DILocation(line: 252, column: 5, scope: !444)
!799 = !DILocation(line: 253, column: 1, scope: !444)
