; ModuleID = './xxsubtype.bc'
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
  store %struct._typeobject* @PyDict_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i32 0, i32 30), align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @spamdict_type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyList_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i32 0, i32 30), align 8
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @spamlist_type)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @xxsubtypemodule, i32 1013)
  store %struct._object* %call5, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp6 = icmp eq %struct._object* %0, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call i32 @PyType_Ready(%struct._typeobject* @spamlist_type)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %call13 = call i32 @PyType_Ready(%struct._typeobject* @spamdict_type)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call17 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamlist_type, i32 0, i32 0, i32 0))
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc21 = add i64 %3, 1
  store i64 %inc21, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call22 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @spamdict_type, i32 0, i32 0, i32 0))
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.20
  %5 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @spamdict_init(%struct.spamdictobject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.spamdictobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct.spamdictobject* %self, %struct.spamdictobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 35), align 8
  %1 = load %struct.spamdictobject*, %struct.spamdictobject** %self.addr, align 8
  %2 = bitcast %struct.spamdictobject* %1 to %struct._object*
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 %0(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.spamdictobject*, %struct.spamdictobject** %self.addr, align 8
  %state = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %5, i32 0, i32 1
  store i32 0, i32* %state, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamdict_getstate(%struct.spamdictobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.spamdictobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.spamdictobject* %self, %struct.spamdictobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.spamdictobject*, %struct.spamdictobject** %self.addr, align 8
  %state = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %1, i32 0, i32 1
  %2 = load i32, i32* %state, align 4
  %conv = sext i32 %2 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamdict_setstate(%struct.spamdictobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.spamdictobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %state = alloca i32, align 4
  store %struct.spamdictobject* %self, %struct.spamdictobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32* %state)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %state, align 4
  %2 = load %struct.spamdictobject*, %struct.spamdictobject** %self.addr, align 8
  %state1 = getelementptr inbounds %struct.spamdictobject, %struct.spamdictobject* %2, i32 0, i32 1
  store i32 %1, i32* %state1, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @spamlist_init(%struct.spamlistobject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.spamlistobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct.spamlistobject* %self, %struct.spamlistobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyList_Type, i32 0, i32 35), align 8
  %1 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8
  %2 = bitcast %struct.spamlistobject* %1 to %struct._object*
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 %0(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8
  %state = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %5, i32 0, i32 1
  store i32 0, i32* %state, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_getstate(%struct.spamlistobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.spamlistobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.spamlistobject* %self, %struct.spamlistobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8
  %state = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %1, i32 0, i32 1
  %2 = load i32, i32* %state, align 4
  %conv = sext i32 %2 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_setstate(%struct.spamlistobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.spamlistobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %state = alloca i32, align 4
  store %struct.spamlistobject* %self, %struct.spamlistobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32* %state)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %state, align 4
  %2 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8
  %state1 = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %2, i32 0, i32 1
  store i32 %1, i32* %state1, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_specialmeth(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 3)
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* @_Py_NoneStruct, %struct._object** %self.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %2 = load %struct._object*, %struct._object** %kw.addr, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %kw.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %6 = load %struct._object*, %struct._object** %result, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %5, %struct._object** %arrayidx, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt6, align 8
  %inc7 = add i64 %9, 1
  store i64 %inc7, i64* %ob_refcnt6, align 8
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 1
  store %struct._object* %10, %struct._object** %arrayidx9, align 8
  %13 = load %struct._object*, %struct._object** %kw.addr, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %14, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  %15 = load %struct._object*, %struct._object** %kw.addr, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 2
  store %struct._object* %15, %struct._object** %arrayidx13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.5, %entry
  %18 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %18
}

declare %struct._object* @PyTuple_New(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @spamlist_state_get(%struct.spamlistobject* %self) #0 {
entry:
  %self.addr = alloca %struct.spamlistobject*, align 8
  store %struct.spamlistobject* %self, %struct.spamlistobject** %self.addr, align 8
  %0 = load %struct.spamlistobject*, %struct.spamlistobject** %self.addr, align 8
  %state = getelementptr inbounds %struct.spamlistobject, %struct.spamlistobject* %0, i32 0, i32 1
  %1 = load i32, i32* %state, align 4
  %conv = sext i32 %1 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 1000, i32* %n, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %struct._object** %obj, %struct._object** %name, i32* %n)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @clock() #3
  store i64 %call1, i64* %t0, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %1 = load i32, i32* %n, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %n, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %3 = load %struct._object*, %struct._object** %name, align 8
  %call2 = call %struct._object* @PyObject_GetAttr(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call2, %struct._object** %res, align 8
  %4 = load %struct._object*, %struct._object** %res, align 8
  %cmp3 = icmp eq %struct._object* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %5 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec6 = add i64 %7, -1
  store i64 %dec6, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec6, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call10 = call i64 @clock() #3
  store i64 %call10, i64* %t1, align 8
  %12 = load i64, i64* %t1, align 8
  %13 = load i64, i64* %t0, align 8
  %sub = sub i64 %12, %13
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  %call11 = call %struct._object* @PyFloat_FromDouble(double %div)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind
declare i64 @clock() #2

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
