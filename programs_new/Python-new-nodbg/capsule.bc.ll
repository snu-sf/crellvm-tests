; ModuleID = './capsule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyCapsule = type { %struct._object, i8*, i8*, i8*, void (%struct._object*)* }

@PyExc_ValueError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [39 x i8] c"PyCapsule_New called with null pointer\00", align 1
@PyCapsule_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* @capsule_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @capsule_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 0, i8* getelementptr inbounds ([417 x i8], [417 x i8]* @PyCapsule_Type__doc__, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"PyCapsule_GetPointer called with invalid PyCapsule object\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"PyCapsule_GetPointer called with incorrect name\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"PyCapsule_GetName called with invalid PyCapsule object\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"PyCapsule_GetDestructor called with invalid PyCapsule object\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"PyCapsule_GetContext called with invalid PyCapsule object\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"PyCapsule_SetPointer called with null pointer\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"PyCapsule_SetPointer called with invalid PyCapsule object\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"PyCapsule_SetName called with invalid PyCapsule object\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"PyCapsule_SetDestructor called with invalid PyCapsule object\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"PyCapsule_SetContext called with invalid PyCapsule object\00", align 1
@PyExc_ImportError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [46 x i8] c"PyCapsule_Import could not import module \22%s\22\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"PyCapsule_Import \22%s\22 is not valid\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"PyCapsule\00", align 1
@PyCapsule_Type__doc__ = internal global [417 x i8] c"Capsule objects let you wrap a C \22void *\22 pointer in a Python\0Aobject.  They're a way of passing data through the Python interpreter\0Awithout creating your own custom type.\0A\0ACapsules are used for communication between extension modules.\0AThey provide a way for an extension module to export a C interface\0Ato other extension modules, so that extension modules can use the\0APython import mechanism to link to one another.\0A\00", align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"<capsule object %s%s%s at %p>\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyCapsule_New(i8* %pointer, i8* %name, void (%struct._object*)* %destructor) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pointer.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %destructor.addr = alloca void (%struct._object*)*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store i8* %pointer, i8** %pointer.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store void (%struct._object*)* %destructor, void (%struct._object*)** %destructor.addr, align 8
  %0 = load i8*, i8** %pointer.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCapsule_Type, i32 0, i32 2), align 8
  %call = call i8* @PyObject_Malloc(i64 %2)
  %3 = bitcast i8* %call to %struct._object*
  %call1 = call %struct._object* @PyObject_Init(%struct._object* %3, %struct._typeobject* @PyCapsule_Type)
  %4 = bitcast %struct._object* %call1 to %struct.PyCapsule*
  store %struct.PyCapsule* %4, %struct.PyCapsule** %capsule, align 8
  %5 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %cmp = icmp eq %struct.PyCapsule* %5, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i8*, i8** %pointer.addr, align 8
  %7 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %pointer4 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %7, i32 0, i32 1
  store i8* %6, i8** %pointer4, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %9 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %name5 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %9, i32 0, i32 2
  store i8* %8, i8** %name5, align 8
  %10 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %context = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %10, i32 0, i32 3
  store i8* null, i8** %context, align 8
  %11 = load void (%struct._object*)*, void (%struct._object*)** %destructor.addr, align 8
  %12 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %destructor6 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %12, i32 0, i32 4
  store void (%struct._object*)* %11, void (%struct._object*)** %destructor6, align 8
  %13 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %14 = bitcast %struct.PyCapsule* %13 to %struct._object*
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyObject_Init(%struct._object*, %struct._typeobject*) #1

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_IsValid(%struct._object* %o, i8* %name) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %cmp = icmp ne %struct.PyCapsule* %2, null
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %4 = bitcast %struct.PyCapsule* %3 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %5, @PyCapsule_Type
  br i1 %cmp1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %pointer = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %6, i32 0, i32 1
  %7 = load i8*, i8** %pointer, align 8
  %cmp3 = icmp ne i8* %7, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.2
  %8 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %name4 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %8, i32 0, i32 2
  %9 = load i8*, i8** %name4, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call = call i32 @name_matches(i8* %9, i8* %10)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2, %land.lhs.true, %entry
  %11 = phi i1 [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @name_matches(i8* %name1, i8* %name2) #0 {
entry:
  %retval = alloca i32, align 4
  %name1.addr = alloca i8*, align 8
  %name2.addr = alloca i8*, align 8
  store i8* %name1, i8** %name1.addr, align 8
  store i8* %name2, i8** %name2.addr, align 8
  %0 = load i8*, i8** %name1.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name2.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** %name1.addr, align 8
  %3 = load i8*, i8** %name2.addr, align 8
  %cmp = icmp eq i8* %2, %3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %name1.addr, align 8
  %5 = load i8*, i8** %name2.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #4
  %tobool2 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_GetPointer(%struct._object* %o, i8* %name) #0 {
entry:
  %retval = alloca i8*, align 8
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %name1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 2
  %5 = load i8*, i8** %name1, align 8
  %call2 = call i32 @name_matches(i8* %3, i8* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %pointer = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %7, i32 0, i32 1
  %8 = load i8*, i8** %pointer, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i32 @_is_legal_capsule(%struct.PyCapsule* %capsule, i8* %invalid_capsule) #0 {
entry:
  %retval = alloca i32, align 4
  %capsule.addr = alloca %struct.PyCapsule*, align 8
  %invalid_capsule.addr = alloca i8*, align 8
  store %struct.PyCapsule* %capsule, %struct.PyCapsule** %capsule.addr, align 8
  store i8* %invalid_capsule, i8** %invalid_capsule.addr, align 8
  %0 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule.addr, align 8
  %tobool = icmp ne %struct.PyCapsule* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule.addr, align 8
  %2 = bitcast %struct.PyCapsule* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %3, @PyCapsule_Type
  br i1 %cmp, label %lor.lhs.false.1, label %if.then

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule.addr, align 8
  %pointer = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 1
  %5 = load i8*, i8** %pointer, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %7 = load i8*, i8** %invalid_capsule.addr, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* %7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_GetName(%struct._object* %o) #0 {
entry:
  %retval = alloca i8*, align 8
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %name = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %3, i32 0, i32 2
  %4 = load i8*, i8** %name, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define void (%struct._object*)* @PyCapsule_GetDestructor(%struct._object* %o) #0 {
entry:
  %retval = alloca void (%struct._object*)*, align 8
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store void (%struct._object*)* null, void (%struct._object*)** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %destructor = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %3, i32 0, i32 4
  %4 = load void (%struct._object*)*, void (%struct._object*)** %destructor, align 8
  store void (%struct._object*)* %4, void (%struct._object*)** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load void (%struct._object*)*, void (%struct._object*)** %retval
  ret void (%struct._object*)* %5
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_GetContext(%struct._object* %o) #0 {
entry:
  %retval = alloca i8*, align 8
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %context = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %3, i32 0, i32 3
  %4 = load i8*, i8** %context, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetPointer(%struct._object* %o, i8* %pointer) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %pointer.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %pointer, i8** %pointer.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load i8*, i8** %pointer.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i32 0, i32 0))
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i8*, i8** %pointer.addr, align 8
  %6 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %pointer4 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %6, i32 0, i32 1
  store i8* %5, i8** %pointer4, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetName(%struct._object* %o, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %name1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 2
  store i8* %3, i8** %name1, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetDestructor(%struct._object* %o, void (%struct._object*)* %destructor) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %destructor.addr = alloca void (%struct._object*)*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store void (%struct._object*)* %destructor, void (%struct._object*)** %destructor.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load void (%struct._object*)*, void (%struct._object*)** %destructor.addr, align 8
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %destructor1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 4
  store void (%struct._object*)* %3, void (%struct._object*)** %destructor1, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetContext(%struct._object* %o, i8* %context) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %context.addr, align 8
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %context1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 3
  store i8* %3, i8** %context1, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_Import(i8* %name, i32 %no_block) #0 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %no_block.addr = alloca i32, align 4
  %object = alloca %struct._object*, align 8
  %return_value = alloca i8*, align 8
  %trace = alloca i8*, align 8
  %name_length = alloca i64, align 8
  %name_dup = alloca i8*, align 8
  %dot = alloca i8*, align 8
  %object2 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %no_block, i32* %no_block.addr, align 4
  store %struct._object* null, %struct._object** %object, align 8
  store i8* null, i8** %return_value, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %add = add i64 %call, 1
  %mul = mul i64 %add, 1
  store i64 %mul, i64* %name_length, align 8
  %1 = load i64, i64* %name_length, align 8
  %call1 = call i8* @PyMem_Malloc(i64 %1)
  store i8* %call1, i8** %name_dup, align 8
  %2 = load i8*, i8** %name_dup, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name_dup, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i64, i64* %name_length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %5, i32 1, i1 false)
  %6 = load i8*, i8** %name_dup, align 8
  store i8* %6, i8** %trace, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %if.end
  %7 = load i8*, i8** %trace, align 8
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %trace, align 8
  %call3 = call i8* @strchr(i8* %8, i32 46) #4
  store i8* %call3, i8** %dot, align 8
  %9 = load i8*, i8** %dot, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  %10 = load i8*, i8** %dot, align 8
  %incdec.ptr = getelementptr i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %dot, align 8
  store i8 0, i8* %10, align 1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %while.body
  %11 = load %struct._object*, %struct._object** %object, align 8
  %cmp = icmp eq %struct._object* %11, null
  br i1 %cmp, label %if.then.7, label %if.else.17

if.then.7:                                        ; preds = %if.end.6
  %12 = load i32, i32* %no_block.addr, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %13 = load i8*, i8** %trace, align 8
  %call10 = call %struct._object* @PyImport_ImportModuleNoBlock(i8* %13)
  store %struct._object* %call10, %struct._object** %object, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.then.7
  %14 = load i8*, i8** %trace, align 8
  %call11 = call %struct._object* @PyImport_ImportModule(i8* %14)
  store %struct._object* %call11, %struct._object** %object, align 8
  %15 = load %struct._object*, %struct._object** %object, align 8
  %tobool12 = icmp ne %struct._object* %15, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.else
  %16 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %17 = load i8*, i8** %trace, align 8
  %call14 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0), i8* %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  br label %if.end.23

if.else.17:                                       ; preds = %if.end.6
  %18 = load %struct._object*, %struct._object** %object, align 8
  %19 = load i8*, i8** %trace, align 8
  %call18 = call %struct._object* @PyObject_GetAttrString(%struct._object* %18, i8* %19)
  store %struct._object* %call18, %struct._object** %object2, align 8
  br label %do.body

do.body:                                          ; preds = %if.else.17
  %20 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else.21:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %27 = load %struct._object*, %struct._object** %object2, align 8
  store %struct._object* %27, %struct._object** %object, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %if.end.16
  %28 = load %struct._object*, %struct._object** %object, align 8
  %tobool24 = icmp ne %struct._object* %28, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.23
  br label %EXIT

if.end.26:                                        ; preds = %if.end.23
  %29 = load i8*, i8** %dot, align 8
  store i8* %29, i8** %trace, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load %struct._object*, %struct._object** %object, align 8
  %31 = load i8*, i8** %name.addr, align 8
  %call27 = call i32 @PyCapsule_IsValid(%struct._object* %30, i8* %31)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %while.end
  %32 = load %struct._object*, %struct._object** %object, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyCapsule*
  store %struct.PyCapsule* %33, %struct.PyCapsule** %capsule, align 8
  %34 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %pointer = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %34, i32 0, i32 1
  %35 = load i8*, i8** %pointer, align 8
  store i8* %35, i8** %return_value, align 8
  br label %if.end.32

if.else.30:                                       ; preds = %while.end
  %36 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %37 = load i8*, i8** %name.addr, align 8
  %call31 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i8* %37)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %EXIT

EXIT:                                             ; preds = %if.end.32, %if.then.25
  br label %do.body.33

do.body.33:                                       ; preds = %EXIT
  %38 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp34 = icmp ne %struct._object* %39, null
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %do.body.33
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp37, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %42, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %45(%struct._object* %46)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.body.33
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %47 = load i8*, i8** %name_dup, align 8
  %tobool49 = icmp ne i8* %47, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.end.48
  %48 = load i8*, i8** %name_dup, align 8
  call void @PyMem_Free(i8* %48)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %do.end.48
  %49 = load i8*, i8** %return_value, align 8
  store i8* %49, i8** %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then
  %50 = load i8*, i8** %retval
  ret i8* %50
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @capsule_dealloc(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %destructor = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %2, i32 0, i32 4
  %3 = load void (%struct._object*)*, void (%struct._object*)** %destructor, align 8
  %tobool = icmp ne void (%struct._object*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %destructor1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 4
  %5 = load void (%struct._object*)*, void (%struct._object*)** %destructor1, align 8
  %6 = load %struct._object*, %struct._object** %o.addr, align 8
  call void %5(%struct._object* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._object*, %struct._object** %o.addr, align 8
  %8 = bitcast %struct._object* %7 to i8*
  call void @PyObject_Free(i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @capsule_repr(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %name = alloca i8*, align 8
  %quote = alloca i8*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCapsule*
  store %struct.PyCapsule* %1, %struct.PyCapsule** %capsule, align 8
  %2 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %name1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %2, i32 0, i32 2
  %3 = load i8*, i8** %name1, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %quote, align 8
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %name2 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 2
  %5 = load i8*, i8** %name2, align 8
  store i8* %5, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %quote, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %quote, align 8
  %7 = load i8*, i8** %name, align 8
  %8 = load i8*, i8** %quote, align 8
  %9 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i8* %6, i8* %7, i8* %8, %struct.PyCapsule* %9)
  ret %struct._object* %call
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @PyObject_Free(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
