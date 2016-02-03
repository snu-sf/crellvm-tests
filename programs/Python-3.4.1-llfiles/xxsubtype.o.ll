; ModuleID = 'xxsubtype.o.bc'
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
  store %struct._typeobject* @PyDict_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i64 0, i32 30), align 8, !dbg !511, !tbaa !512
  %call = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @spamdict_type) #1, !dbg !521
  %cmp = icmp slt i32 %call, 0, !dbg !523
  br i1 %cmp, label %cleanup, label %if.end, !dbg !524

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyList_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i64 0, i32 30), align 8, !dbg !525, !tbaa !512
  %call1 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @spamlist_type) #1, !dbg !526
  %cmp2 = icmp slt i32 %call1, 0, !dbg !528
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !529

if.end.4:                                         ; preds = %if.end
  %call5 = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @xxsubtypemodule, i32 1013) #1, !dbg !530
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !364, metadata !531), !dbg !532
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !533
  br i1 %cmp6, label %cleanup, label %if.end.8, !dbg !535

if.end.8:                                         ; preds = %if.end.4
  %call9 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @spamlist_type) #1, !dbg !536
  %cmp10 = icmp slt i32 %call9, 0, !dbg !538
  br i1 %cmp10, label %cleanup, label %if.end.12, !dbg !539

if.end.12:                                        ; preds = %if.end.8
  %call13 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @spamdict_type) #1, !dbg !540
  %cmp14 = icmp slt i32 %call13, 0, !dbg !542
  br i1 %cmp14, label %cleanup, label %if.end.16, !dbg !543

if.end.16:                                        ; preds = %if.end.12
  %0 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !544, !tbaa !545
  %inc = add i64 %0, 1, !dbg !544
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !544, !tbaa !545
  %call17 = tail call i32 @PyModule_AddObject(%struct._object* %call5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i64 0, i32 0, i32 0)) #1, !dbg !546
  %cmp18 = icmp slt i32 %call17, 0, !dbg !548
  br i1 %cmp18, label %cleanup, label %if.end.20, !dbg !549

if.end.20:                                        ; preds = %if.end.16
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !550, !tbaa !545
  %inc21 = add i64 %1, 1, !dbg !550
  store i64 %inc21, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !550, !tbaa !545
  %call22 = tail call i32 @PyModule_AddObject(%struct._object* %call5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i64 0, i32 0, i32 0)) #1, !dbg !551
  %cmp23 = icmp slt i32 %call22, 0, !dbg !553
  %.call5 = select i1 %cmp23, %struct._object* null, %struct._object* %call5, !dbg !554
  br label %cleanup, !dbg !554

cleanup:                                          ; preds = %if.end.20, %if.end.16, %if.end.12, %if.end.8, %if.end.4, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ null, %if.end.4 ], [ null, %if.end.8 ], [ null, %if.end.12 ], [ null, %if.end.16 ], [ %.call5, %if.end.20 ]
  ret %struct._object* %retval.0, !dbg !555
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @PyType_Ready(%struct._typeobject*) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @spamdict_init(%struct.spamdictobject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.spamdictobject* %self, i64 0, metadata !398, metadata !531), !dbg !556
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !399, metadata !531), !dbg !557
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !400, metadata !531), !dbg !558
  %0 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i64 0, i32 35), align 8, !dbg !559, !tbaa !561
  %1 = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %self, i64 0, i32 0, i32 0, !dbg !562
  %call = tail call i32 %0(%struct._object* %1, %struct._object* %args, %struct._object* %kwds) #1, !dbg !563
  %cmp = icmp slt i32 %call, 0, !dbg !564
  br i1 %cmp, label %return, label %if.end, !dbg !565

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %self, i64 0, i32 1, !dbg !566
  store i32 0, i32* %state, align 4, !dbg !567, !tbaa !568
  br label %return, !dbg !571

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0, !dbg !572
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamdict_getstate(%struct.spamdictobject* nocapture readonly %self, %struct._object* %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.spamdictobject* %self, i64 0, metadata !387, metadata !531), !dbg !573
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !388, metadata !531), !dbg !574
  %call = tail call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #1, !dbg !575
  %tobool = icmp eq i32 %call, 0, !dbg !575
  br i1 %tobool, label %return, label %if.end, !dbg !577

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %self, i64 0, i32 1, !dbg !578
  %0 = load i32, i32* %state, align 4, !dbg !578, !tbaa !568
  %conv = sext i32 %0 to i64, !dbg !579
  %call1 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #1, !dbg !580
  br label %return, !dbg !581

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !582
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamdict_setstate(%struct.spamdictobject* nocapture %self, %struct._object* %args) #0 {
entry:
  %state = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.spamdictobject* %self, i64 0, metadata !391, metadata !531), !dbg !583
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !392, metadata !531), !dbg !584
  %0 = bitcast i32* %state to i8*, !dbg !585
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !585
  tail call void @llvm.dbg.value(metadata i32* %state, i64 0, metadata !393, metadata !531), !dbg !586
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* nonnull %state) #1, !dbg !587
  %tobool = icmp eq i32 %call, 0, !dbg !587
  br i1 %tobool, label %cleanup, label %if.end, !dbg !589

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %state, i64 0, metadata !393, metadata !531), !dbg !586
  %1 = load i32, i32* %state, align 4, !dbg !590, !tbaa !591
  %state1 = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %self, i64 0, i32 1, !dbg !592
  store i32 %1, i32* %state1, align 4, !dbg !593, !tbaa !568
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !594, !tbaa !545
  %inc = add i64 %2, 1, !dbg !594
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !594, !tbaa !545
  br label %cleanup, !dbg !595

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #1, !dbg !596
  ret %struct._object* %retval.0, !dbg !596
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare %struct._object* @PyLong_FromLong(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @spamlist_init(%struct.spamlistobject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.spamlistobject* %self, i64 0, metadata !440, metadata !531), !dbg !597
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !441, metadata !531), !dbg !598
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !442, metadata !531), !dbg !599
  %0 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyList_Type, i64 0, i32 35), align 8, !dbg !600, !tbaa !561
  %1 = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %self, i64 0, i32 0, i32 0, i32 0, !dbg !602
  %call = tail call i32 %0(%struct._object* %1, %struct._object* %args, %struct._object* %kwds) #1, !dbg !603
  %cmp = icmp slt i32 %call, 0, !dbg !604
  br i1 %cmp, label %return, label %if.end, !dbg !605

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %self, i64 0, i32 1, !dbg !606
  store i32 0, i32* %state, align 4, !dbg !607, !tbaa !608
  br label %return, !dbg !611

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0, !dbg !612
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_getstate(%struct.spamlistobject* nocapture readonly %self, %struct._object* %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.spamlistobject* %self, i64 0, metadata !418, metadata !531), !dbg !613
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !419, metadata !531), !dbg !614
  %call = tail call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #1, !dbg !615
  %tobool = icmp eq i32 %call, 0, !dbg !615
  br i1 %tobool, label %return, label %if.end, !dbg !617

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %self, i64 0, i32 1, !dbg !618
  %0 = load i32, i32* %state, align 4, !dbg !618, !tbaa !608
  %conv = sext i32 %0 to i64, !dbg !619
  %call1 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #1, !dbg !620
  br label %return, !dbg !621

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !622
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_setstate(%struct.spamlistobject* nocapture %self, %struct._object* %args) #0 {
entry:
  %state = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.spamlistobject* %self, i64 0, metadata !422, metadata !531), !dbg !623
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !423, metadata !531), !dbg !624
  %0 = bitcast i32* %state to i8*, !dbg !625
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !625
  tail call void @llvm.dbg.value(metadata i32* %state, i64 0, metadata !424, metadata !531), !dbg !626
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* nonnull %state) #1, !dbg !627
  %tobool = icmp eq i32 %call, 0, !dbg !627
  br i1 %tobool, label %cleanup, label %if.end, !dbg !629

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %state, i64 0, metadata !424, metadata !531), !dbg !626
  %1 = load i32, i32* %state, align 4, !dbg !630, !tbaa !591
  %state1 = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %self, i64 0, i32 1, !dbg !631
  store i32 %1, i32* %state1, align 4, !dbg !632, !tbaa !608
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !633, !tbaa !545
  %inc = add i64 %2, 1, !dbg !633
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !633, !tbaa !545
  br label %cleanup, !dbg !634

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #1, !dbg !635
  ret %struct._object* %retval.0, !dbg !635
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_specialmeth(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !427, metadata !531), !dbg !636
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !428, metadata !531), !dbg !637
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !429, metadata !531), !dbg !638
  %call = tail call %struct._object* @PyTuple_New(i64 3) #1, !dbg !639
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !430, metadata !531), !dbg !640
  %cmp = icmp eq %struct._object* %call, null, !dbg !641
  br i1 %cmp, label %if.end.14, label %if.then, !dbg !643

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq %struct._object* %self, null, !dbg !644
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !427, metadata !531), !dbg !636
  %_Py_NoneStruct.self = select i1 %cmp1, %struct._object* @_Py_NoneStruct, %struct._object* %self, !dbg !647
  %cmp3 = icmp eq %struct._object* %kw, null, !dbg !648
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !429, metadata !531), !dbg !638
  %kw.addr.0 = select i1 %cmp3, %struct._object* @_Py_NoneStruct, %struct._object* %kw, !dbg !650
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %_Py_NoneStruct.self, i64 0, i32 0, !dbg !651
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !651, !tbaa !545
  %inc = add i64 %0, 1, !dbg !651
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !651, !tbaa !545
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !652
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !652
  store %struct._object* %_Py_NoneStruct.self, %struct._object** %arrayidx, align 8, !dbg !652, !tbaa !653
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 0, !dbg !654
  %1 = load i64, i64* %ob_refcnt6, align 8, !dbg !654, !tbaa !545
  %inc7 = add i64 %1, 1, !dbg !654
  store i64 %inc7, i64* %ob_refcnt6, align 8, !dbg !654, !tbaa !545
  %arrayidx9 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !655
  %2 = bitcast %struct._typeobject** %arrayidx9 to %struct._object**, !dbg !655
  store %struct._object* %args, %struct._object** %2, align 8, !dbg !655, !tbaa !653
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %kw.addr.0, i64 0, i32 0, !dbg !656
  %3 = load i64, i64* %ob_refcnt10, align 8, !dbg !656, !tbaa !545
  %inc11 = add i64 %3, 1, !dbg !656
  store i64 %inc11, i64* %ob_refcnt10, align 8, !dbg !656, !tbaa !545
  %arrayidx13 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 2, !dbg !657
  %4 = bitcast %struct._typeobject** %arrayidx13 to %struct._object**, !dbg !657
  store %struct._object* %kw.addr.0, %struct._object** %4, align 8, !dbg !657, !tbaa !653
  br label %if.end.14, !dbg !658

if.end.14:                                        ; preds = %entry, %if.then
  ret %struct._object* %call, !dbg !659
}

declare %struct._object* @PyTuple_New(i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_state_get(%struct.spamlistobject* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.spamlistobject* %self, i64 0, metadata !435, metadata !531), !dbg !660
  %state = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %self, i64 0, i32 1, !dbg !661
  %0 = load i32, i32* %state, align 4, !dbg !661, !tbaa !608
  %conv = sext i32 %0 to i64, !dbg !662
  %call = tail call %struct._object* @PyLong_FromLong(i64 %conv) #1, !dbg !663
  ret %struct._object* %call, !dbg !664
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spam_bench(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %obj = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %n = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !445, metadata !531), !dbg !665
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !446, metadata !531), !dbg !666
  %0 = bitcast %struct._object** %obj to i8*, !dbg !667
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !667
  %1 = bitcast %struct._object** %name to i8*, !dbg !667
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !667
  %2 = bitcast i32* %n to i8*, !dbg !668
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !668
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !450, metadata !531), !dbg !669
  store i32 1000, i32* %n, align 4, !dbg !669, !tbaa !591
  tail call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !447, metadata !531), !dbg !670
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !448, metadata !531), !dbg !671
  tail call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !450, metadata !531), !dbg !669
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct._object** nonnull %obj, %struct._object** nonnull %name, i32* nonnull %n) #1, !dbg !672
  %tobool = icmp eq i32 %call, 0, !dbg !672
  br i1 %tobool, label %cleanup, label %if.end, !dbg !674

if.end:                                           ; preds = %entry
  %call1 = call i64 @clock() #1, !dbg !675
  call void @llvm.dbg.value(metadata i64 %call1, i64 0, metadata !451, metadata !531), !dbg !676
  call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !450, metadata !531), !dbg !669
  %3 = load i32, i32* %n, align 4, !dbg !677, !tbaa !591
  %dec.24 = add i32 %3, -1, !dbg !677
  call void @llvm.dbg.value(metadata i32 %dec.24, i64 0, metadata !450, metadata !531), !dbg !669
  store i32 %dec.24, i32* %n, align 4, !dbg !677, !tbaa !591
  %cmp.25 = icmp sgt i32 %dec.24, -1, !dbg !680
  br i1 %cmp.25, label %while.body.preheader, label %while.end, !dbg !681

while.body.preheader:                             ; preds = %if.end
  br label %while.body, !dbg !670

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !447, metadata !531), !dbg !670
  %4 = load %struct._object*, %struct._object** %obj, align 8, !dbg !682, !tbaa !653
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !448, metadata !531), !dbg !671
  %5 = load %struct._object*, %struct._object** %name, align 8, !dbg !683, !tbaa !653
  %call2 = call %struct._object* @PyObject_GetAttr(%struct._object* %4, %struct._object* %5) #1, !dbg !684
  call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !449, metadata !531), !dbg !685
  %cmp3 = icmp eq %struct._object* %call2, null, !dbg !686
  br i1 %cmp3, label %cleanup.loopexit, label %do.body, !dbg !688

do.body:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !456, metadata !531), !dbg !689
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 0, !dbg !691
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !691, !tbaa !545
  %dec6 = add i64 %6, -1, !dbg !691
  store i64 %dec6, i64* %ob_refcnt, align 8, !dbg !691, !tbaa !545
  %cmp7 = icmp eq i64 %dec6, 0, !dbg !691
  br i1 %cmp7, label %if.else, label %while.cond.backedge, !dbg !693

while.cond.backedge:                              ; preds = %do.body, %if.else
  call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !450, metadata !531), !dbg !669
  %7 = load i32, i32* %n, align 4, !dbg !677, !tbaa !591
  %dec = add i32 %7, -1, !dbg !677
  call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !450, metadata !531), !dbg !669
  store i32 %dec, i32* %n, align 4, !dbg !677, !tbaa !591
  %cmp = icmp sgt i32 %dec, -1, !dbg !680
  br i1 %cmp, label %while.body, label %while.end.loopexit, !dbg !681

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 1, !dbg !694
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !694, !tbaa !696
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !694
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !694, !tbaa !697
  call void %9(%struct._object* %call2) #1, !dbg !694
  br label %while.cond.backedge

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end, !dbg !698

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %call10 = call i64 @clock() #1, !dbg !698
  call void @llvm.dbg.value(metadata i64 %call10, i64 0, metadata !455, metadata !531), !dbg !699
  %sub = sub i64 %call10, %call1, !dbg !700
  %conv = sitofp i64 %sub to double, !dbg !701
  %div = fdiv double %conv, 1.000000e+06, !dbg !702
  %call11 = call %struct._object* @PyFloat_FromDouble(double %div) #1, !dbg !703
  br label %cleanup, !dbg !704

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !705

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %while.end
  %retval.0 = phi %struct._object* [ %call11, %while.end ], [ null, %entry ], [ null, %cleanup.loopexit ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #1, !dbg !705
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !705
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !705
  ret %struct._object* %retval.0, !dbg !705
}

; Function Attrs: nounwind
declare i64 @clock() #3

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #2

declare %struct._object* @PyFloat_FromDouble(double) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!508, !509}
!llvm.ident = !{!510}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !359, globals: !459)
!1 = !DIFile(filename: "./Modules/xxsubtype.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !350, !358}
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
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!352 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 25, size: 256, align: 64, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 26, baseType: !23, size: 192, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !353, file: !352, line: 27, baseType: !357, size: 64, align: 64, offset: 192)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!358 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!359 = !{!360, !365, !389, !394, !401, !420, !425, !431, !436, !443}
!360 = !DISubprogram(name: "PyInit_xxsubtype", scope: !1, file: !1, line: 274, type: !361, isLocal: false, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_xxsubtype, variables: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!5}
!363 = !{!364}
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !360, file: !1, line: 276, type: !5)
!365 = !DISubprogram(name: "spamdict_getstate", scope: !1, file: !1, line: 152, type: !366, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamdictobject*, %struct._object*)* @spamdict_getstate, variables: !386)
!366 = !DISubroutineType(types: !367)
!367 = !{!5, !368, !5}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "spamdictobject", file: !1, line: 149, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 146, size: 384, align: 64, elements: !371)
!371 = !{!372, !385}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !370, file: !1, line: 147, baseType: !373, size: 320, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictObject", file: !374, line: 28, baseType: !375)
!374 = !DIFile(filename: "Include/dictobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!375 = !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 23, size: 320, align: 64, elements: !376)
!376 = !{!377, !378, !379, !383}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !375, file: !374, line: 24, baseType: !6, size: 128, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ma_used", scope: !375, file: !374, line: 25, baseType: !11, size: 64, align: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ma_keys", scope: !375, file: !374, line: 26, baseType: !380, size: 64, align: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictKeysObject", file: !374, line: 18, baseType: !382)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_dictkeysobject", file: !7, line: 461, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ma_values", scope: !375, file: !374, line: 27, baseType: !384, size: 64, align: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !1, line: 148, baseType: !44, size: 32, align: 32, offset: 320)
!386 = !{!387, !388}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !365, file: !1, line: 152, type: !368)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !365, file: !1, line: 152, type: !5)
!389 = !DISubprogram(name: "spamdict_setstate", scope: !1, file: !1, line: 160, type: !366, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamdictobject*, %struct._object*)* @spamdict_setstate, variables: !390)
!390 = !{!391, !392, !393}
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !389, file: !1, line: 160, type: !368)
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !389, file: !1, line: 160, type: !5)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !389, file: !1, line: 162, type: !44)
!394 = !DISubprogram(name: "spamdict_init", scope: !1, file: !1, line: 180, type: !395, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.spamdictobject*, %struct._object*, %struct._object*)* @spamdict_init, variables: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!44, !368, !5, !5}
!397 = !{!398, !399, !400}
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !394, file: !1, line: 180, type: !368)
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !394, file: !1, line: 180, type: !5)
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !394, file: !1, line: 180, type: !5)
!401 = !DISubprogram(name: "spamlist_getstate", scope: !1, file: !1, line: 27, type: !402, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamlistobject*, %struct._object*)* @spamlist_getstate, variables: !417)
!402 = !DISubroutineType(types: !403)
!403 = !{!5, !404, !5}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "spamlistobject", file: !1, line: 24, baseType: !406)
!406 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 21, size: 384, align: 64, elements: !407)
!407 = !{!408, !416}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !406, file: !1, line: 22, baseType: !409, size: 320, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !410, line: 40, baseType: !411)
!410 = !DIFile(filename: "Include/listobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!411 = !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 23, size: 320, align: 64, elements: !412)
!412 = !{!413, !414, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !411, file: !410, line: 24, baseType: !23, size: 192, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !411, file: !410, line: 26, baseType: !384, size: 64, align: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !411, file: !410, line: 39, baseType: !11, size: 64, align: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !406, file: !1, line: 23, baseType: !44, size: 32, align: 32, offset: 320)
!417 = !{!418, !419}
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !401, file: !1, line: 27, type: !404)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !401, file: !1, line: 27, type: !5)
!420 = !DISubprogram(name: "spamlist_setstate", scope: !1, file: !1, line: 35, type: !402, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamlistobject*, %struct._object*)* @spamlist_setstate, variables: !421)
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !420, file: !1, line: 35, type: !404)
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !420, file: !1, line: 35, type: !5)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !420, file: !1, line: 37, type: !44)
!425 = !DISubprogram(name: "spamlist_specialmeth", scope: !1, file: !1, line: 47, type: !135, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @spamlist_specialmeth, variables: !426)
!426 = !{!427, !428, !429, !430}
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !425, file: !1, line: 47, type: !5)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !425, file: !1, line: 47, type: !5)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !425, file: !1, line: 47, type: !5)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !425, file: !1, line: 49, type: !5)
!431 = !DISubprogram(name: "spamlist_state_get", scope: !1, file: !1, line: 92, type: !432, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spamlistobject*)* @spamlist_state_get, variables: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!5, !404}
!434 = !{!435}
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !431, file: !1, line: 92, type: !404)
!436 = !DISubprogram(name: "spamlist_init", scope: !1, file: !1, line: 83, type: !437, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.spamlistobject*, %struct._object*, %struct._object*)* @spamlist_init, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!44, !404, !5, !5}
!439 = !{!440, !441, !442}
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !436, file: !1, line: 83, type: !404)
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !436, file: !1, line: 83, type: !5)
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !436, file: !1, line: 83, type: !5)
!443 = !DISubprogram(name: "spam_bench", scope: !1, file: !1, line: 236, type: !126, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @spam_bench, variables: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !455, !456}
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !443, file: !1, line: 236, type: !5)
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !443, file: !1, line: 236, type: !5)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !443, file: !1, line: 238, type: !5)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !443, file: !1, line: 238, type: !5)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !443, file: !1, line: 238, type: !5)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !443, file: !1, line: 239, type: !44)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t0", scope: !443, file: !1, line: 240, type: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !453, line: 75, baseType: !454)
!453 = !DIFile(filename: "/usr/include/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !16, line: 148, baseType: !17)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t1", scope: !443, file: !1, line: 240, type: !452)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !457, file: !1, line: 249, type: !5)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 249, column: 9)
!458 = distinct !DILexicalBlock(scope: !443, file: !1, line: 245, column: 22)
!459 = !{!460, !462, !467, !472, !473, !477, !480, !502, !506}
!460 = !DIGlobalVariable(name: "spamdict_type", scope: !0, file: !1, line: 194, type: !461, isLocal: true, isDefinition: true, variable: %struct._typeobject* @spamdict_type)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!462 = !DIGlobalVariable(name: "spamdict_methods", scope: !0, file: !1, line: 171, type: !463, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @spamdict_methods)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 768, align: 64, elements: !465)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!465 = !{!466}
!466 = !DISubrange(count: 3)
!467 = !DIGlobalVariable(name: "spamdict_members", scope: !0, file: !1, line: 188, type: !468, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @spamdict_members)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 640, align: 64, elements: !470)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!470 = !{!471}
!471 = !DISubrange(count: 2)
!472 = !DIGlobalVariable(name: "spamlist_type", scope: !0, file: !1, line: 103, type: !461, isLocal: true, isDefinition: true, variable: %struct._typeobject* @spamlist_type)
!473 = !DIGlobalVariable(name: "spamlist_methods", scope: !0, file: !1, line: 66, type: !474, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @spamlist_methods)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1280, align: 64, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 5)
!477 = !DIGlobalVariable(name: "spamlist_getsets", scope: !0, file: !1, line: 97, type: !478, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @spamlist_getsets)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 640, align: 64, elements: !470)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !301, line: 17, baseType: !300)
!480 = !DIGlobalVariable(name: "xxsubtypemodule", scope: !0, file: !1, line: 260, type: !481, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @xxsubtypemodule)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !482, line: 47, size: 832, align: 64, elements: !483)
!482 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!483 = !{!484, !493, !494, !495, !496, !498, !499, !500, !501}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !481, file: !482, line: 48, baseType: !485, size: 320, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !482, line: 38, baseType: !486)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !482, line: 33, size: 320, align: 64, elements: !487)
!487 = !{!488, !489, !491, !492}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !486, file: !482, line: 34, baseType: !6, size: 128, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !486, file: !482, line: 35, baseType: !490, size: 64, align: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !486, file: !482, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !486, file: !482, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !481, file: !482, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !481, file: !482, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !481, file: !482, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !481, file: !482, line: 52, baseType: !497, size: 64, align: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !481, file: !482, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !481, file: !482, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !481, file: !482, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !481, file: !482, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!502 = !DIGlobalVariable(name: "xxsubtype__doc__", scope: !0, file: !1, line: 4, type: !503, isLocal: true, isDefinition: true, variable: [290 x i8]* @xxsubtype__doc__)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2320, align: 8, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 290)
!506 = !DIGlobalVariable(name: "xxsubtype_functions", scope: !0, file: !1, line: 255, type: !507, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @xxsubtype_functions)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 512, align: 64, elements: !470)
!508 = !{i32 2, !"Dwarf Version", i32 4}
!509 = !{i32 2, !"Debug Info Version", i32 3}
!510 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!511 = !DILocation(line: 282, column: 27, scope: !360)
!512 = !{!513, !519, i64 256}
!513 = !{!"_typeobject", !514, i64 0, !519, i64 24, !516, i64 32, !516, i64 40, !519, i64 48, !519, i64 56, !519, i64 64, !519, i64 72, !519, i64 80, !519, i64 88, !519, i64 96, !519, i64 104, !519, i64 112, !519, i64 120, !519, i64 128, !519, i64 136, !519, i64 144, !519, i64 152, !519, i64 160, !516, i64 168, !519, i64 176, !519, i64 184, !519, i64 192, !519, i64 200, !516, i64 208, !519, i64 216, !519, i64 224, !519, i64 232, !519, i64 240, !519, i64 248, !519, i64 256, !519, i64 264, !519, i64 272, !519, i64 280, !516, i64 288, !519, i64 296, !519, i64 304, !519, i64 312, !519, i64 320, !519, i64 328, !519, i64 336, !519, i64 344, !519, i64 352, !519, i64 360, !519, i64 368, !519, i64 376, !520, i64 384, !519, i64 392}
!514 = !{!"", !515, i64 0, !516, i64 16}
!515 = !{!"_object", !516, i64 0, !519, i64 8}
!516 = !{!"long", !517, i64 0}
!517 = !{!"omnipotent char", !518, i64 0}
!518 = !{!"Simple C/C++ TBAA"}
!519 = !{!"any pointer", !517, i64 0}
!520 = !{!"int", !517, i64 0}
!521 = !DILocation(line: 283, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !360, file: !1, line: 283, column: 9)
!523 = !DILocation(line: 283, column: 38, scope: !522)
!524 = !DILocation(line: 283, column: 9, scope: !360)
!525 = !DILocation(line: 286, column: 27, scope: !360)
!526 = !DILocation(line: 287, column: 9, scope: !527)
!527 = distinct !DILexicalBlock(scope: !360, file: !1, line: 287, column: 9)
!528 = !DILocation(line: 287, column: 38, scope: !527)
!529 = !DILocation(line: 287, column: 9, scope: !360)
!530 = !DILocation(line: 290, column: 9, scope: !360)
!531 = !DIExpression()
!532 = !DILocation(line: 276, column: 15, scope: !360)
!533 = !DILocation(line: 291, column: 11, scope: !534)
!534 = distinct !DILexicalBlock(scope: !360, file: !1, line: 291, column: 9)
!535 = !DILocation(line: 291, column: 9, scope: !360)
!536 = !DILocation(line: 294, column: 9, scope: !537)
!537 = distinct !DILexicalBlock(scope: !360, file: !1, line: 294, column: 9)
!538 = !DILocation(line: 294, column: 38, scope: !537)
!539 = !DILocation(line: 294, column: 9, scope: !360)
!540 = !DILocation(line: 296, column: 9, scope: !541)
!541 = distinct !DILexicalBlock(scope: !360, file: !1, line: 296, column: 9)
!542 = !DILocation(line: 296, column: 38, scope: !541)
!543 = !DILocation(line: 296, column: 9, scope: !360)
!544 = !DILocation(line: 299, column: 5, scope: !360)
!545 = !{!515, !516, i64 0}
!546 = !DILocation(line: 300, column: 9, scope: !547)
!547 = distinct !DILexicalBlock(scope: !360, file: !1, line: 300, column: 9)
!548 = !DILocation(line: 301, column: 57, scope: !547)
!549 = !DILocation(line: 300, column: 9, scope: !360)
!550 = !DILocation(line: 304, column: 5, scope: !360)
!551 = !DILocation(line: 305, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !360, file: !1, line: 305, column: 9)
!553 = !DILocation(line: 306, column: 57, scope: !552)
!554 = !DILocation(line: 307, column: 9, scope: !552)
!555 = !DILocation(line: 309, column: 1, scope: !360)
!556 = !DILocation(line: 180, column: 31, scope: !394)
!557 = !DILocation(line: 180, column: 47, scope: !394)
!558 = !DILocation(line: 180, column: 63, scope: !394)
!559 = !DILocation(line: 182, column: 21, scope: !560)
!560 = distinct !DILexicalBlock(scope: !394, file: !1, line: 182, column: 9)
!561 = !{!513, !519, i64 296}
!562 = !DILocation(line: 182, column: 29, scope: !560)
!563 = !DILocation(line: 182, column: 9, scope: !560)
!564 = !DILocation(line: 182, column: 59, scope: !560)
!565 = !DILocation(line: 182, column: 9, scope: !394)
!566 = !DILocation(line: 184, column: 11, scope: !394)
!567 = !DILocation(line: 184, column: 17, scope: !394)
!568 = !{!569, !520, i64 40}
!569 = !{!"", !570, i64 0, !520, i64 40}
!570 = !{!"", !515, i64 0, !516, i64 16, !519, i64 24, !519, i64 32}
!571 = !DILocation(line: 185, column: 5, scope: !394)
!572 = !DILocation(line: 186, column: 1, scope: !394)
!573 = !DILocation(line: 152, column: 35, scope: !365)
!574 = !DILocation(line: 152, column: 51, scope: !365)
!575 = !DILocation(line: 154, column: 10, scope: !576)
!576 = distinct !DILexicalBlock(scope: !365, file: !1, line: 154, column: 9)
!577 = !DILocation(line: 154, column: 9, scope: !365)
!578 = !DILocation(line: 156, column: 34, scope: !365)
!579 = !DILocation(line: 156, column: 28, scope: !365)
!580 = !DILocation(line: 156, column: 12, scope: !365)
!581 = !DILocation(line: 156, column: 5, scope: !365)
!582 = !DILocation(line: 157, column: 1, scope: !365)
!583 = !DILocation(line: 160, column: 35, scope: !389)
!584 = !DILocation(line: 160, column: 51, scope: !389)
!585 = !DILocation(line: 162, column: 5, scope: !389)
!586 = !DILocation(line: 162, column: 9, scope: !389)
!587 = !DILocation(line: 164, column: 10, scope: !588)
!588 = distinct !DILexicalBlock(scope: !389, file: !1, line: 164, column: 9)
!589 = !DILocation(line: 164, column: 9, scope: !389)
!590 = !DILocation(line: 166, column: 19, scope: !389)
!591 = !{!520, !520, i64 0}
!592 = !DILocation(line: 166, column: 11, scope: !389)
!593 = !DILocation(line: 166, column: 17, scope: !389)
!594 = !DILocation(line: 167, column: 5, scope: !389)
!595 = !DILocation(line: 168, column: 5, scope: !389)
!596 = !DILocation(line: 169, column: 1, scope: !389)
!597 = !DILocation(line: 83, column: 31, scope: !436)
!598 = !DILocation(line: 83, column: 47, scope: !436)
!599 = !DILocation(line: 83, column: 63, scope: !436)
!600 = !DILocation(line: 85, column: 21, scope: !601)
!601 = distinct !DILexicalBlock(scope: !436, file: !1, line: 85, column: 9)
!602 = !DILocation(line: 85, column: 29, scope: !601)
!603 = !DILocation(line: 85, column: 9, scope: !601)
!604 = !DILocation(line: 85, column: 59, scope: !601)
!605 = !DILocation(line: 85, column: 9, scope: !436)
!606 = !DILocation(line: 87, column: 11, scope: !436)
!607 = !DILocation(line: 87, column: 17, scope: !436)
!608 = !{!609, !520, i64 40}
!609 = !{!"", !610, i64 0, !520, i64 40}
!610 = !{!"", !514, i64 0, !519, i64 24, !516, i64 32}
!611 = !DILocation(line: 88, column: 5, scope: !436)
!612 = !DILocation(line: 89, column: 1, scope: !436)
!613 = !DILocation(line: 27, column: 35, scope: !401)
!614 = !DILocation(line: 27, column: 51, scope: !401)
!615 = !DILocation(line: 29, column: 10, scope: !616)
!616 = distinct !DILexicalBlock(scope: !401, file: !1, line: 29, column: 9)
!617 = !DILocation(line: 29, column: 9, scope: !401)
!618 = !DILocation(line: 31, column: 34, scope: !401)
!619 = !DILocation(line: 31, column: 28, scope: !401)
!620 = !DILocation(line: 31, column: 12, scope: !401)
!621 = !DILocation(line: 31, column: 5, scope: !401)
!622 = !DILocation(line: 32, column: 1, scope: !401)
!623 = !DILocation(line: 35, column: 35, scope: !420)
!624 = !DILocation(line: 35, column: 51, scope: !420)
!625 = !DILocation(line: 37, column: 5, scope: !420)
!626 = !DILocation(line: 37, column: 9, scope: !420)
!627 = !DILocation(line: 39, column: 10, scope: !628)
!628 = distinct !DILexicalBlock(scope: !420, file: !1, line: 39, column: 9)
!629 = !DILocation(line: 39, column: 9, scope: !420)
!630 = !DILocation(line: 41, column: 19, scope: !420)
!631 = !DILocation(line: 41, column: 11, scope: !420)
!632 = !DILocation(line: 41, column: 17, scope: !420)
!633 = !DILocation(line: 42, column: 5, scope: !420)
!634 = !DILocation(line: 43, column: 5, scope: !420)
!635 = !DILocation(line: 44, column: 1, scope: !420)
!636 = !DILocation(line: 47, column: 32, scope: !425)
!637 = !DILocation(line: 47, column: 48, scope: !425)
!638 = !DILocation(line: 47, column: 64, scope: !425)
!639 = !DILocation(line: 49, column: 24, scope: !425)
!640 = !DILocation(line: 49, column: 15, scope: !425)
!641 = !DILocation(line: 51, column: 16, scope: !642)
!642 = distinct !DILexicalBlock(scope: !425, file: !1, line: 51, column: 9)
!643 = !DILocation(line: 51, column: 9, scope: !425)
!644 = !DILocation(line: 52, column: 18, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 52, column: 13)
!646 = distinct !DILexicalBlock(scope: !642, file: !1, line: 51, column: 25)
!647 = !DILocation(line: 52, column: 13, scope: !646)
!648 = !DILocation(line: 54, column: 16, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !1, line: 54, column: 13)
!650 = !DILocation(line: 54, column: 13, scope: !646)
!651 = !DILocation(line: 56, column: 9, scope: !646)
!652 = !DILocation(line: 57, column: 9, scope: !646)
!653 = !{!519, !519, i64 0}
!654 = !DILocation(line: 58, column: 9, scope: !646)
!655 = !DILocation(line: 59, column: 9, scope: !646)
!656 = !DILocation(line: 60, column: 9, scope: !646)
!657 = !DILocation(line: 61, column: 9, scope: !646)
!658 = !DILocation(line: 62, column: 5, scope: !646)
!659 = !DILocation(line: 63, column: 5, scope: !425)
!660 = !DILocation(line: 92, column: 36, scope: !431)
!661 = !DILocation(line: 94, column: 34, scope: !431)
!662 = !DILocation(line: 94, column: 28, scope: !431)
!663 = !DILocation(line: 94, column: 12, scope: !431)
!664 = !DILocation(line: 94, column: 5, scope: !431)
!665 = !DILocation(line: 236, column: 22, scope: !443)
!666 = !DILocation(line: 236, column: 38, scope: !443)
!667 = !DILocation(line: 238, column: 5, scope: !443)
!668 = !DILocation(line: 239, column: 5, scope: !443)
!669 = !DILocation(line: 239, column: 9, scope: !443)
!670 = !DILocation(line: 238, column: 15, scope: !443)
!671 = !DILocation(line: 238, column: 21, scope: !443)
!672 = !DILocation(line: 242, column: 10, scope: !673)
!673 = distinct !DILexicalBlock(scope: !443, file: !1, line: 242, column: 9)
!674 = !DILocation(line: 242, column: 9, scope: !443)
!675 = !DILocation(line: 244, column: 10, scope: !443)
!676 = !DILocation(line: 240, column: 12, scope: !443)
!677 = !DILocation(line: 245, column: 12, scope: !678)
!678 = !DILexicalBlockFile(scope: !679, file: !1, discriminator: 2)
!679 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 1)
!680 = !DILocation(line: 245, column: 16, scope: !443)
!681 = !DILocation(line: 245, column: 5, scope: !443)
!682 = !DILocation(line: 246, column: 32, scope: !458)
!683 = !DILocation(line: 246, column: 37, scope: !458)
!684 = !DILocation(line: 246, column: 15, scope: !458)
!685 = !DILocation(line: 238, column: 28, scope: !443)
!686 = !DILocation(line: 247, column: 17, scope: !687)
!687 = distinct !DILexicalBlock(scope: !458, file: !1, line: 247, column: 13)
!688 = !DILocation(line: 247, column: 13, scope: !458)
!689 = !DILocation(line: 249, column: 9, scope: !690)
!690 = !DILexicalBlockFile(scope: !457, file: !1, discriminator: 1)
!691 = !DILocation(line: 249, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !457, file: !1, line: 249, column: 9)
!693 = !DILocation(line: 249, column: 9, scope: !457)
!694 = !DILocation(line: 249, column: 9, scope: !695)
!695 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 3)
!696 = !{!515, !519, i64 8}
!697 = !{!513, !519, i64 48}
!698 = !DILocation(line: 251, column: 10, scope: !443)
!699 = !DILocation(line: 240, column: 16, scope: !443)
!700 = !DILocation(line: 252, column: 42, scope: !443)
!701 = !DILocation(line: 252, column: 31, scope: !443)
!702 = !DILocation(line: 252, column: 47, scope: !443)
!703 = !DILocation(line: 252, column: 12, scope: !443)
!704 = !DILocation(line: 252, column: 5, scope: !443)
!705 = !DILocation(line: 253, column: 1, scope: !443)
