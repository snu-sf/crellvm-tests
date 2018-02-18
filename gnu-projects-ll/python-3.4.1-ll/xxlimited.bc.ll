; ModuleID = './xxlimited.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type opaque
%struct.PyType_Slot = type { i32, i8* }
%struct.PyType_Spec = type { i8*, i32, i32, i32, %struct.PyType_Slot* }
%struct._object = type { i64, %struct._typeobject* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.XxoObject = type { %struct._object, %struct._object* }

@PyBaseObject_Type = external global %struct._typeobject, align 1
@Null_Type_slots = internal global [4 x %struct.PyType_Slot] [%struct.PyType_Slot { i32 48, i8* null }, %struct.PyType_Slot { i32 65, i8* null }, %struct.PyType_Slot { i32 67, i8* bitcast (%struct._object* (%struct._object*, %struct._object*, i32)* @null_richcompare to i8*) }, %struct.PyType_Slot zeroinitializer], align 16
@PyUnicode_Type = external global %struct._typeobject, align 1
@Str_Type_slots = internal global [2 x %struct.PyType_Slot] [%struct.PyType_Slot { i32 48, i8* null }, %struct.PyType_Slot zeroinitializer], align 16
@Xxo_Type_spec = internal global %struct.PyType_Spec { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 24, i32 0, i32 262144, %struct.PyType_Slot* getelementptr inbounds ([6 x %struct.PyType_Slot], [6 x %struct.PyType_Slot]* @Xxo_Type_slots, i32 0, i32 0) }, align 8
@Xxo_Type = internal global %struct._object* null, align 8
@xxmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @xx_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@ErrorObject = internal global %struct._object* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"xxlimited.error\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@Str_Type_spec = internal global %struct.PyType_Spec { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 263168, %struct.PyType_Slot* getelementptr inbounds ([2 x %struct.PyType_Slot], [2 x %struct.PyType_Slot]* @Str_Type_slots, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"Str\00", align 1
@Null_Type_spec = internal global %struct.PyType_Spec { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 0, i32 263168, %struct.PyType_Slot* getelementptr inbounds ([4 x %struct.PyType_Slot], [4 x %struct.PyType_Slot]* @Null_Type_slots, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"Null\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"xxlimited.Xxo\00", align 1
@Xxo_Type_slots = internal global [6 x %struct.PyType_Slot] [%struct.PyType_Slot { i32 56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct.PyType_Slot { i32 52, i8* bitcast (void (%struct.XxoObject*)* @Xxo_dealloc to i8*) }, %struct.PyType_Slot { i32 58, i8* bitcast (%struct._object* (%struct.XxoObject*, %struct._object*)* @Xxo_getattro to i8*) }, %struct.PyType_Slot { i32 68, i8* bitcast (i32 (%struct.XxoObject*, i8*, %struct._object*)* @Xxo_setattr to i8*) }, %struct.PyType_Slot { i32 64, i8* bitcast ([2 x %struct.PyMethodDef]* @Xxo_methods to i8*) }, %struct.PyType_Slot zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [13 x i8] c"The Xxo type\00", align 1
@Xxo_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.XxoObject*, %struct._object*)* @Xxo_demo to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"delete non-existing Xxo attribute\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"demo\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"demo() -> None\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"|O:demo\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"xxlimited\00", align 1
@module_doc = internal global [48 x i8] c"This is a template module just for instruction.\00", align 16
@xx_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @xx_roj, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @xx_foo, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @xx_foo_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @xx_new, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"roj\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"roj(a,b) -> None\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@xx_foo_doc = internal global [37 x i8] c"foo(i,j)\0A\0AReturn the sum of i and j.\00", align 16
@.str.14 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"new() -> new Xx object\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"O#:roj\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"ll:foo\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c":new\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"xxlimited.Str\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"xxlimited.Null\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_xxlimited() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* null, %struct._object** %m, align 8
  store i8* bitcast (%struct._typeobject* @PyBaseObject_Type to i8*), i8** getelementptr inbounds ([4 x %struct.PyType_Slot], [4 x %struct.PyType_Slot]* @Null_Type_slots, i32 0, i64 0, i32 1), align 8
  store i8* bitcast (%struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew to i8*), i8** getelementptr inbounds ([4 x %struct.PyType_Slot], [4 x %struct.PyType_Slot]* @Null_Type_slots, i32 0, i64 1, i32 1), align 8
  store i8* bitcast (%struct._typeobject* @PyUnicode_Type to i8*), i8** getelementptr inbounds ([2 x %struct.PyType_Slot], [2 x %struct.PyType_Slot]* @Str_Type_slots, i32 0, i64 0, i32 1), align 8
  %call = call %struct._object* @PyType_FromSpec(%struct.PyType_Spec* @Xxo_Type_spec)
  store %struct._object* %call, %struct._object** @Xxo_Type, align 8
  %0 = load %struct._object*, %struct._object** @Xxo_Type, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @xxmodule, i32 3)
  store %struct._object* %call1, %struct._object** %m, align 8
  %1 = load %struct._object*, %struct._object** %m, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %fail

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %cmp5 = icmp eq %struct._object* %2, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.4
  %call7 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call7, %struct._object** @ErrorObject, align 8
  %3 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %cmp8 = icmp eq %struct._object* %3, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  br label %fail

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.4
  %4 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %m, align 8
  %7 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %call12 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %7)
  %call13 = call %struct._object* @PyType_FromSpec(%struct.PyType_Spec* @Str_Type_spec)
  store %struct._object* %call13, %struct._object** %o, align 8
  %8 = load %struct._object*, %struct._object** %o, align 8
  %cmp14 = icmp eq %struct._object* %8, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  br label %fail

if.end.16:                                        ; preds = %if.end.11
  %9 = load %struct._object*, %struct._object** %m, align 8
  %10 = load %struct._object*, %struct._object** %o, align 8
  %call17 = call i32 @PyModule_AddObject(%struct._object* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct._object* %10)
  %call18 = call %struct._object* @PyType_FromSpec(%struct.PyType_Spec* @Null_Type_spec)
  store %struct._object* %call18, %struct._object** %o, align 8
  %11 = load %struct._object*, %struct._object** %o, align 8
  %cmp19 = icmp eq %struct._object* %11, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  br label %fail

if.end.21:                                        ; preds = %if.end.16
  %12 = load %struct._object*, %struct._object** %m, align 8
  %13 = load %struct._object*, %struct._object** %o, align 8
  %call22 = call i32 @PyModule_AddObject(%struct._object* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._object* %13)
  %14 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.20, %if.then.15, %if.then.9, %if.then.3, %if.then
  br label %do.body

do.body:                                          ; preds = %fail
  %15 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp23 = icmp ne %struct._object* %16, null
  br i1 %cmp23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %do.body
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt26, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt26, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body.25
  br label %if.end.29

if.else:                                          ; preds = %do.body.25
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void @_Py_Dealloc(%struct._object* %20)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.29
  br label %if.end.30

if.end.30:                                        ; preds = %do.end, %do.body
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.31, %if.end.21
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyType_FromSpec(%struct.PyType_Spec*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare void @_Py_Dealloc(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @null_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NotImplementedStruct
}

; Function Attrs: nounwind uwtable
define internal void @Xxo_dealloc(%struct.XxoObject* %self) #0 {
entry:
  %self.addr = alloca %struct.XxoObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.XxoObject* %self, %struct.XxoObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %x_attr = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %x_attr, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void @_Py_Dealloc(%struct._object* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %7 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %8 = bitcast %struct.XxoObject* %7 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %call = call i8* @PyType_GetSlot(%struct._typeobject* %9, i32 74)
  %10 = bitcast i8* %call to void (i8*)*
  %11 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %12 = bitcast %struct.XxoObject* %11 to i8*
  call void %10(i8* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Xxo_getattro(%struct.XxoObject* %self, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.XxoObject*, align 8
  %name.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  store %struct.XxoObject* %self, %struct.XxoObject** %self.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %x_attr = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %x_attr, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %x_attr1 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %x_attr1, align 8
  %4 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %3, %struct._object* %4)
  store %struct._object* %call, %struct._object** %v, align 8
  %5 = load %struct._object*, %struct._object** %v, align 8
  %cmp2 = icmp ne %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %10 = bitcast %struct.XxoObject* %9 to %struct._object*
  %11 = load %struct._object*, %struct._object** %name.addr, align 8
  %call5 = call %struct._object* @PyObject_GenericGetAttr(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal i32 @Xxo_setattr(%struct.XxoObject* %self, i8* %name, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.XxoObject*, align 8
  %name.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  store %struct.XxoObject* %self, %struct.XxoObject** %self.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %x_attr = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %x_attr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New()
  %2 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %x_attr1 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %2, i32 0, i32 1
  store %struct._object* %call, %struct._object** %x_attr1, align 8
  %3 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %x_attr2 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %x_attr2, align 8
  %cmp3 = icmp eq %struct._object* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp6 = icmp eq %struct._object* %5, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %6 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %x_attr8 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %x_attr8, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %call9 = call i32 @PyDict_DelItemString(%struct._object* %7, i8* %8)
  store i32 %call9, i32* %rv, align 4
  %9 = load i32, i32* %rv, align 4
  %cmp10 = icmp slt i32 %9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  %10 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.7
  %11 = load i32, i32* %rv, align 4
  store i32 %11, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.5
  %12 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8
  %x_attr13 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %x_attr13, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %call14 = call i32 @PyDict_SetItemString(%struct._object* %13, i8* %14, %struct._object* %15)
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.12, %if.then.4
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i8* @PyType_GetSlot(%struct._typeobject*, i32) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare %struct._object* @PyDict_New() #1

declare i32 @PyDict_DelItemString(%struct._object*, i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @Xxo_demo(%struct.XxoObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.XxoObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  store %struct.XxoObject* %self, %struct.XxoObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %o, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object** %o)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %o, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %call1 = call i64 @PyType_GetFlags(%struct._typeobject* %3)
  %and = and i64 %call1, 268435456
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %o, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc5 = add i64 %7, 1
  store i64 %inc5, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i64 @PyType_GetFlags(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @xx_roj(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %a = alloca %struct._object*, align 8
  %b = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._object** %a, i64* %b)
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
define internal %struct._object* @xx_foo(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %res = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i64* %i, i64* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %j, align 8
  %add = add i64 %1, %2
  store i64 %add, i64* %res, align 8
  %3 = load i64, i64* %res, align 8
  %call1 = call %struct._object* @PyLong_FromLong(i64 %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xx_new(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rv = alloca %struct.XxoObject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call %struct.XxoObject* @newXxoObject(%struct._object* %1)
  store %struct.XxoObject* %call1, %struct.XxoObject** %rv, align 8
  %2 = load %struct.XxoObject*, %struct.XxoObject** %rv, align 8
  %cmp = icmp eq %struct.XxoObject* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.XxoObject*, %struct.XxoObject** %rv, align 8
  %4 = bitcast %struct.XxoObject* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.XxoObject* @newXxoObject(%struct._object* %arg) #0 {
entry:
  %retval = alloca %struct.XxoObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %self = alloca %struct.XxoObject*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** @Xxo_Type, align 8
  %1 = bitcast %struct._object* %0 to %struct._typeobject*
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* %1)
  %2 = bitcast %struct._object* %call to %struct.XxoObject*
  store %struct.XxoObject* %2, %struct.XxoObject** %self, align 8
  %3 = load %struct.XxoObject*, %struct.XxoObject** %self, align 8
  %cmp = icmp eq %struct.XxoObject* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.XxoObject* null, %struct.XxoObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.XxoObject*, %struct.XxoObject** %self, align 8
  %x_attr = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %4, i32 0, i32 1
  store %struct._object* null, %struct._object** %x_attr, align 8
  %5 = load %struct.XxoObject*, %struct.XxoObject** %self, align 8
  store %struct.XxoObject* %5, %struct.XxoObject** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.XxoObject*, %struct.XxoObject** %retval
  ret %struct.XxoObject* %6
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
