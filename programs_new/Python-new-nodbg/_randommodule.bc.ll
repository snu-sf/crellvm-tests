; ModuleID = './_randommodule.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.RandomObject = type { %struct._object, [624 x i64], i32 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@Random_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i64 5016, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @random_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([6 x %struct.PyMethodDef], [6 x %struct.PyMethodDef]* @random_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @random_new, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_randommodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* null, i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"_random.Random\00", align 1
@random_doc = internal global [74 x i8] c"Random() -> create a random number generator with its own internal state.\00", align 16
@random_methods = internal global [6 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.RandomObject*)* @random_random to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.RandomObject*, %struct._object*)* @random_seed to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.RandomObject*)* @random_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.RandomObject*, %struct._object*)* @random_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.RandomObject*, %struct._object*)* @random_getrandbits to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"random() -> x in the interval [0, 1).\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"seed([n]) -> None.  Defaults to current time.\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"getstate\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"getstate() -> tuple containing the current state.\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"setstate\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"setstate(state) -> None.  Restores generator state.\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"getrandbits\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"getrandbits(k) -> x.  Generates an int with k random bits.\00", align 1
@genrand_int32.mag01 = internal global [2 x i64] [i64 0, i64 2567483615], align 16
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [29 x i8] c"state vector must be a tuple\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [31 x i8] c"state vector is the wrong size\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"i:getrandbits\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"number of bits must be greater than zero\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Random()\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"_random\00", align 1
@module_doc = internal global [64 x i8] c"Module implements the Mersenne Twister random number generator.\00", align 16

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__random() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @Random_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_randommodule, i32 1013)
  store %struct._object* %call1, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp2 = icmp eq %struct._object* %0, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Random_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Random_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Random_Type, i32 0, i32 0, i32 0))
  %3 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @random_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.RandomObject*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @Random_Type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 36
  %3 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call1 = call %struct._object* %3(%struct._typeobject* %4, i64 0)
  %5 = bitcast %struct._object* %call1 to %struct.RandomObject*
  store %struct.RandomObject* %5, %struct.RandomObject** %self, align 8
  %6 = load %struct.RandomObject*, %struct.RandomObject** %self, align 8
  %cmp2 = icmp eq %struct.RandomObject* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.RandomObject*, %struct.RandomObject** %self, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %call5 = call %struct._object* @random_seed(%struct.RandomObject* %7, %struct._object* %8)
  store %struct._object* %call5, %struct._object** %tmp, align 8
  %9 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp6 = icmp eq %struct._object* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %10 = load %struct.RandomObject*, %struct.RandomObject** %self, align 8
  %11 = bitcast %struct.RandomObject* %10 to %struct._object*
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.4
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  %18 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp15, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %20, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.13
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.13
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %23(%struct._object* %24)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %25 = load %struct.RandomObject*, %struct.RandomObject** %self, align 8
  %26 = bitcast %struct.RandomObject* %25 to %struct._object*
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.24, %do.end, %if.then.3, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @random_random(%struct.RandomObject* %self) #0 {
entry:
  %self.addr = alloca %struct.RandomObject*, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  store %struct.RandomObject* %self, %struct.RandomObject** %self.addr, align 8
  %0 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %call = call i64 @genrand_int32(%struct.RandomObject* %0)
  %shr = lshr i64 %call, 5
  store i64 %shr, i64* %a, align 8
  %1 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %call1 = call i64 @genrand_int32(%struct.RandomObject* %1)
  %shr2 = lshr i64 %call1, 6
  store i64 %shr2, i64* %b, align 8
  %2 = load i64, i64* %a, align 8
  %conv = uitofp i64 %2 to double
  %mul = fmul double %conv, 0x4190000000000000
  %3 = load i64, i64* %b, align 8
  %conv3 = uitofp i64 %3 to double
  %add = fadd double %mul, %conv3
  %mul4 = fmul double %add, 0x3CA0000000000000
  %call5 = call %struct._object* @PyFloat_FromDouble(double %mul4)
  ret %struct._object* %call5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @random_seed(%struct.RandomObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.RandomObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca %struct._object*, align 8
  %key = alloca i64*, align 8
  %key_as_bytes = alloca i8*, align 8
  %bits = alloca i64, align 8
  %keyused = alloca i64, align 8
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  %arg = alloca %struct._object*, align 8
  %now = alloca i64, align 8
  %hash = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.RandomObject* %self, %struct.RandomObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %n, align 8
  store i64* null, i64** %key, align 8
  store i8* null, i8** %key_as_bytes, align 8
  store %struct._object* null, %struct._object** %arg, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 0, i64 1, %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %arg, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %call3 = call i64 @time(i64* %now) #3
  %3 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %4 = load i64, i64* %now, align 8
  call void @init_genrand(%struct.RandomObject* %3, i64 %4)
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19
  %8 = load i64, i64* %tp_flags, align 8
  %and = and i64 %8, 16777216
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %arg, align 8
  %call7 = call %struct._object* @PyNumber_Absolute(%struct._object* %9)
  store %struct._object* %call7, %struct._object** %n, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %arg, align 8
  %call8 = call i64 @PyObject_Hash(%struct._object* %10)
  store i64 %call8, i64* %hash, align 8
  %11 = load i64, i64* %hash, align 8
  %cmp9 = icmp eq i64 %11, -1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else
  br label %Done

if.end.11:                                        ; preds = %if.else
  %12 = load i64, i64* %hash, align 8
  %call12 = call %struct._object* @PyLong_FromSize_t(i64 %12)
  store %struct._object* %call12, %struct._object** %n, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.11, %if.then.6
  %13 = load %struct._object*, %struct._object** %n, align 8
  %cmp14 = icmp eq %struct._object* %13, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  br label %Done

if.end.16:                                        ; preds = %if.end.13
  %14 = load %struct._object*, %struct._object** %n, align 8
  %call17 = call i64 @_PyLong_NumBits(%struct._object* %14)
  store i64 %call17, i64* %bits, align 8
  %15 = load i64, i64* %bits, align 8
  %cmp18 = icmp eq i64 %15, -1
  br i1 %cmp18, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.16
  %call19 = call %struct._object* @PyErr_Occurred()
  %tobool20 = icmp ne %struct._object* %call19, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  br label %Done

if.end.22:                                        ; preds = %land.lhs.true, %if.end.16
  %16 = load i64, i64* %bits, align 8
  %cmp23 = icmp eq i64 %16, 0
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  %17 = load i64, i64* %bits, align 8
  %sub = sub i64 %17, 1
  %div = udiv i64 %sub, 32
  %add = add i64 %div, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %add, %cond.false ]
  store i64 %cond, i64* %keyused, align 8
  %18 = load i64, i64* %keyused, align 8
  %mul = mul i64 4, %18
  %call24 = call i8* @PyMem_Malloc(i64 %mul)
  store i8* %call24, i8** %key_as_bytes, align 8
  %19 = load i8*, i8** %key_as_bytes, align 8
  %cmp25 = icmp eq i8* %19, null
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %cond.end
  %call27 = call %struct._object* @PyErr_NoMemory()
  br label %Done

if.end.28:                                        ; preds = %cond.end
  %20 = load %struct._object*, %struct._object** %n, align 8
  %21 = bitcast %struct._object* %20 to %struct._longobject*
  %22 = load i8*, i8** %key_as_bytes, align 8
  %23 = load i64, i64* %keyused, align 8
  %mul29 = mul i64 %23, 4
  %call30 = call i32 @_PyLong_AsByteArray(%struct._longobject* %21, i8* %22, i64 %mul29, i32 1, i32 0)
  store i32 %call30, i32* %res, align 4
  %24 = load i32, i32* %res, align 4
  %cmp31 = icmp eq i32 %24, -1
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %25 = load i8*, i8** %key_as_bytes, align 8
  call void @PyMem_Free(i8* %25)
  br label %Done

if.end.33:                                        ; preds = %if.end.28
  %26 = load i64, i64* %keyused, align 8
  %mul34 = mul i64 8, %26
  %call35 = call i8* @PyMem_Malloc(i64 %mul34)
  %27 = bitcast i8* %call35 to i64*
  store i64* %27, i64** %key, align 8
  %28 = load i64*, i64** %key, align 8
  %cmp36 = icmp eq i64* %28, null
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.33
  %call38 = call %struct._object* @PyErr_NoMemory()
  %29 = load i8*, i8** %key_as_bytes, align 8
  call void @PyMem_Free(i8* %29)
  br label %Done

if.end.39:                                        ; preds = %if.end.33
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %30 = load i64, i64* %i, align 8
  %31 = load i64, i64* %keyused, align 8
  %cmp40 = icmp ult i64 %30, %31
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i64, i64* %i, align 8
  %mul41 = mul i64 4, %32
  %add42 = add i64 %mul41, 0
  %33 = load i8*, i8** %key_as_bytes, align 8
  %arrayidx = getelementptr i8, i8* %33, i64 %add42
  %34 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %34 to i64
  %shl = shl i64 %conv, 0
  %35 = load i64, i64* %i, align 8
  %mul43 = mul i64 4, %35
  %add44 = add i64 %mul43, 1
  %36 = load i8*, i8** %key_as_bytes, align 8
  %arrayidx45 = getelementptr i8, i8* %36, i64 %add44
  %37 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %37 to i64
  %shl47 = shl i64 %conv46, 8
  %add48 = add i64 %shl, %shl47
  %38 = load i64, i64* %i, align 8
  %mul49 = mul i64 4, %38
  %add50 = add i64 %mul49, 2
  %39 = load i8*, i8** %key_as_bytes, align 8
  %arrayidx51 = getelementptr i8, i8* %39, i64 %add50
  %40 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %40 to i64
  %shl53 = shl i64 %conv52, 16
  %add54 = add i64 %add48, %shl53
  %41 = load i64, i64* %i, align 8
  %mul55 = mul i64 4, %41
  %add56 = add i64 %mul55, 3
  %42 = load i8*, i8** %key_as_bytes, align 8
  %arrayidx57 = getelementptr i8, i8* %42, i64 %add56
  %43 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %43 to i64
  %shl59 = shl i64 %conv58, 24
  %add60 = add i64 %add54, %shl59
  %44 = load i64, i64* %i, align 8
  %45 = load i64*, i64** %key, align 8
  %arrayidx61 = getelementptr i64, i64* %45, i64 %44
  store i64 %add60, i64* %arrayidx61, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i64, i64* %i, align 8
  %inc62 = add i64 %46, 1
  store i64 %inc62, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load i8*, i8** %key_as_bytes, align 8
  call void @PyMem_Free(i8* %47)
  %48 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %49 = load i64*, i64** %key, align 8
  %50 = load i64, i64* %keyused, align 8
  %call63 = call %struct._object* @init_by_array(%struct.RandomObject* %48, i64* %49, i64 %50)
  store %struct._object* %call63, %struct._object** %result, align 8
  br label %Done

Done:                                             ; preds = %for.end, %if.then.37, %if.then.32, %if.then.26, %if.then.21, %if.then.15, %if.then.10
  br label %do.body

do.body:                                          ; preds = %Done
  %51 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp64 = icmp ne %struct._object* %52, null
  br i1 %cmp64, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %do.body
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.66
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %55, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp68 = icmp ne i64 %dec, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.67
  br label %if.end.73

if.else.71:                                       ; preds = %do.body.67
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %58(%struct._object* %59)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end

do.end:                                           ; preds = %if.end.73
  br label %if.end.74

if.end.74:                                        ; preds = %do.end, %do.body
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %60 = load i64*, i64** %key, align 8
  %61 = bitcast i64* %60 to i8*
  call void @PyMem_Free(i8* %61)
  %62 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %62, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.75, %if.then.2, %if.then
  %63 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %63
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @random_getstate(%struct.RandomObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.RandomObject*, align 8
  %state = alloca %struct._object*, align 8
  %element = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.RandomObject* %self, %struct.RandomObject** %self.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 625)
  store %struct._object* %call, %struct._object** %state, align 8
  %0 = load %struct._object*, %struct._object** %state, align 8
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
  %cmp1 = icmp slt i32 %1, 624
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %state2 = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %3, i32 0, i32 1
  %arrayidx = getelementptr [624 x i64], [624 x i64]* %state2, i32 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %call3 = call %struct._object* @PyLong_FromUnsignedLong(i64 %4)
  store %struct._object* %call3, %struct._object** %element, align 8
  %5 = load %struct._object*, %struct._object** %element, align 8
  %cmp4 = icmp eq %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %Fail

if.end.6:                                         ; preds = %for.body
  %6 = load %struct._object*, %struct._object** %element, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load %struct._object*, %struct._object** %state, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom7
  store %struct._object* %6, %struct._object** %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %index = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %11, i32 0, i32 2
  %12 = load i32, i32* %index, align 4
  %conv = sext i32 %12 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call9, %struct._object** %element, align 8
  %13 = load %struct._object*, %struct._object** %element, align 8
  %cmp10 = icmp eq %struct._object* %13, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  br label %Fail

if.end.13:                                        ; preds = %for.end
  %14 = load %struct._object*, %struct._object** %element, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct._object*, %struct._object** %state, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 %idxprom14
  store %struct._object* %14, %struct._object** %arrayidx16, align 8
  %18 = load %struct._object*, %struct._object** %state, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

Fail:                                             ; preds = %if.then.12, %if.then.5
  br label %do.body

do.body:                                          ; preds = %Fail
  %19 = load %struct._object*, %struct._object** %state, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.13, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @random_setstate(%struct.RandomObject* %self, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.RandomObject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %element = alloca i64, align 8
  %index = alloca i64, align 8
  store %struct.RandomObject* %self, %struct.RandomObject** %self.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %4)
  %cmp1 = icmp ne i64 %call, 625
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %6, 624
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._object*, %struct._object** %state.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call5 = call i64 @PyLong_AsUnsignedLong(%struct._object* %10)
  store i64 %call5, i64* %element, align 8
  %11 = load i64, i64* %element, align 8
  %cmp6 = icmp eq i64 %11, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %for.body
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call7, null
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %for.body
  %12 = load i64, i64* %element, align 8
  %and10 = and i64 %12, 4294967295
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %state12 = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %14, i32 0, i32 1
  %arrayidx13 = getelementptr [624 x i64], [624 x i64]* %state12, i32 0, i64 %idxprom11
  store i64 %and10, i64* %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct._object*, %struct._object** %state.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 %idxprom14
  %19 = load %struct._object*, %struct._object** %arrayidx16, align 8
  %call17 = call i64 @PyLong_AsLong(%struct._object* %19)
  store i64 %call17, i64* %index, align 8
  %20 = load i64, i64* %index, align 8
  %cmp18 = icmp eq i64 %20, -1
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.23

land.lhs.true.19:                                 ; preds = %for.end
  %call20 = call %struct._object* @PyErr_Occurred()
  %tobool21 = icmp ne %struct._object* %call20, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.19, %for.end
  %21 = load i64, i64* %index, align 8
  %conv = trunc i64 %21 to i32
  %22 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %index24 = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %22, i32 0, i32 2
  store i32 %conv, i32* %index24, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc25 = add i64 %23, 1
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.8, %if.then.2, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @random_getrandbits(%struct.RandomObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.RandomObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %bytes = alloca i32, align 4
  %r = alloca i64, align 8
  %bytearray = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  store %struct.RandomObject* %self, %struct.RandomObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32* %k)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %k, align 4
  %cmp3 = icmp sle i32 %3, 32
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end.2
  %4 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %call5 = call i64 @genrand_int32(%struct.RandomObject* %4)
  %5 = load i32, i32* %k, align 4
  %sub = sub i32 32, %5
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %call5, %sh_prom
  %call6 = call %struct._object* @PyLong_FromUnsignedLong(i64 %shr)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %6 = load i32, i32* %k, align 4
  %sub8 = sub i32 %6, 1
  %div = sdiv i32 %sub8, 32
  %add = add i32 %div, 1
  %mul = mul i32 %add, 4
  store i32 %mul, i32* %bytes, align 4
  %7 = load i32, i32* %bytes, align 4
  %conv = sext i32 %7 to i64
  %call9 = call i8* @PyMem_Malloc(i64 %conv)
  store i8* %call9, i8** %bytearray, align 8
  %8 = load i8*, i8** %bytearray, align 8
  %cmp10 = icmp eq i8* %8, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.7
  %call13 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %bytes, align 4
  %cmp15 = icmp slt i32 %9, %10
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %call17 = call i64 @genrand_int32(%struct.RandomObject* %11)
  store i64 %call17, i64* %r, align 8
  %12 = load i32, i32* %k, align 4
  %cmp18 = icmp slt i32 %12, 32
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %for.body
  %13 = load i32, i32* %k, align 4
  %sub21 = sub i32 32, %13
  %14 = load i64, i64* %r, align 8
  %sh_prom22 = zext i32 %sub21 to i64
  %shr23 = lshr i64 %14, %sh_prom22
  store i64 %shr23, i64* %r, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %for.body
  %15 = load i64, i64* %r, align 8
  %conv25 = trunc i64 %15 to i8
  %16 = load i32, i32* %i, align 4
  %add26 = add i32 %16, 0
  %idxprom = sext i32 %add26 to i64
  %17 = load i8*, i8** %bytearray, align 8
  %arrayidx = getelementptr i8, i8* %17, i64 %idxprom
  store i8 %conv25, i8* %arrayidx, align 1
  %18 = load i64, i64* %r, align 8
  %shr27 = lshr i64 %18, 8
  %conv28 = trunc i64 %shr27 to i8
  %19 = load i32, i32* %i, align 4
  %add29 = add i32 %19, 1
  %idxprom30 = sext i32 %add29 to i64
  %20 = load i8*, i8** %bytearray, align 8
  %arrayidx31 = getelementptr i8, i8* %20, i64 %idxprom30
  store i8 %conv28, i8* %arrayidx31, align 1
  %21 = load i64, i64* %r, align 8
  %shr32 = lshr i64 %21, 16
  %conv33 = trunc i64 %shr32 to i8
  %22 = load i32, i32* %i, align 4
  %add34 = add i32 %22, 2
  %idxprom35 = sext i32 %add34 to i64
  %23 = load i8*, i8** %bytearray, align 8
  %arrayidx36 = getelementptr i8, i8* %23, i64 %idxprom35
  store i8 %conv33, i8* %arrayidx36, align 1
  %24 = load i64, i64* %r, align 8
  %shr37 = lshr i64 %24, 24
  %conv38 = trunc i64 %shr37 to i8
  %25 = load i32, i32* %i, align 4
  %add39 = add i32 %25, 3
  %idxprom40 = sext i32 %add39 to i64
  %26 = load i8*, i8** %bytearray, align 8
  %arrayidx41 = getelementptr i8, i8* %26, i64 %idxprom40
  store i8 %conv38, i8* %arrayidx41, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %27 = load i32, i32* %i, align 4
  %add42 = add i32 %27, 4
  store i32 %add42, i32* %i, align 4
  %28 = load i32, i32* %k, align 4
  %sub43 = sub i32 %28, 32
  store i32 %sub43, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i8*, i8** %bytearray, align 8
  %30 = load i32, i32* %bytes, align 4
  %conv44 = sext i32 %30 to i64
  %call45 = call %struct._object* @_PyLong_FromByteArray(i8* %29, i64 %conv44, i32 1, i32 0)
  store %struct._object* %call45, %struct._object** %result, align 8
  %31 = load i8*, i8** %bytearray, align 8
  call void @PyMem_Free(i8* %31)
  %32 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then.4, %if.then.1, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define internal i64 @genrand_int32(%struct.RandomObject* %self) #0 {
entry:
  %self.addr = alloca %struct.RandomObject*, align 8
  %y = alloca i64, align 8
  %mt = alloca i64*, align 8
  %kk = alloca i32, align 4
  store %struct.RandomObject* %self, %struct.RandomObject** %self.addr, align 8
  %0 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %state = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [624 x i64], [624 x i64]* %state, i32 0, i32 0
  store i64* %arraydecay, i64** %mt, align 8
  %1 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %index = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %1, i32 0, i32 2
  %2 = load i32, i32* %index, align 4
  %cmp = icmp sge i32 %2, 624
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %kk, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %kk, align 4
  %cmp1 = icmp slt i32 %3, 227
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %kk, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i64*, i64** %mt, align 8
  %arrayidx = getelementptr i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %and = and i64 %6, 2147483648
  %7 = load i32, i32* %kk, align 4
  %add = add i32 %7, 1
  %idxprom2 = sext i32 %add to i64
  %8 = load i64*, i64** %mt, align 8
  %arrayidx3 = getelementptr i64, i64* %8, i64 %idxprom2
  %9 = load i64, i64* %arrayidx3, align 8
  %and4 = and i64 %9, 2147483647
  %or = or i64 %and, %and4
  store i64 %or, i64* %y, align 8
  %10 = load i32, i32* %kk, align 4
  %add5 = add i32 %10, 397
  %idxprom6 = sext i32 %add5 to i64
  %11 = load i64*, i64** %mt, align 8
  %arrayidx7 = getelementptr i64, i64* %11, i64 %idxprom6
  %12 = load i64, i64* %arrayidx7, align 8
  %13 = load i64, i64* %y, align 8
  %shr = lshr i64 %13, 1
  %xor = xor i64 %12, %shr
  %14 = load i64, i64* %y, align 8
  %and8 = and i64 %14, 1
  %arrayidx9 = getelementptr [2 x i64], [2 x i64]* @genrand_int32.mag01, i32 0, i64 %and8
  %15 = load i64, i64* %arrayidx9, align 8
  %xor10 = xor i64 %xor, %15
  %16 = load i32, i32* %kk, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load i64*, i64** %mt, align 8
  %arrayidx12 = getelementptr i64, i64* %17, i64 %idxprom11
  store i64 %xor10, i64* %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %kk, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %kk, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.34, %for.end
  %19 = load i32, i32* %kk, align 4
  %cmp14 = icmp slt i32 %19, 623
  br i1 %cmp14, label %for.body.15, label %for.end.36

for.body.15:                                      ; preds = %for.cond.13
  %20 = load i32, i32* %kk, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load i64*, i64** %mt, align 8
  %arrayidx17 = getelementptr i64, i64* %21, i64 %idxprom16
  %22 = load i64, i64* %arrayidx17, align 8
  %and18 = and i64 %22, 2147483648
  %23 = load i32, i32* %kk, align 4
  %add19 = add i32 %23, 1
  %idxprom20 = sext i32 %add19 to i64
  %24 = load i64*, i64** %mt, align 8
  %arrayidx21 = getelementptr i64, i64* %24, i64 %idxprom20
  %25 = load i64, i64* %arrayidx21, align 8
  %and22 = and i64 %25, 2147483647
  %or23 = or i64 %and18, %and22
  store i64 %or23, i64* %y, align 8
  %26 = load i32, i32* %kk, align 4
  %add24 = add i32 %26, -227
  %idxprom25 = sext i32 %add24 to i64
  %27 = load i64*, i64** %mt, align 8
  %arrayidx26 = getelementptr i64, i64* %27, i64 %idxprom25
  %28 = load i64, i64* %arrayidx26, align 8
  %29 = load i64, i64* %y, align 8
  %shr27 = lshr i64 %29, 1
  %xor28 = xor i64 %28, %shr27
  %30 = load i64, i64* %y, align 8
  %and29 = and i64 %30, 1
  %arrayidx30 = getelementptr [2 x i64], [2 x i64]* @genrand_int32.mag01, i32 0, i64 %and29
  %31 = load i64, i64* %arrayidx30, align 8
  %xor31 = xor i64 %xor28, %31
  %32 = load i32, i32* %kk, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load i64*, i64** %mt, align 8
  %arrayidx33 = getelementptr i64, i64* %33, i64 %idxprom32
  store i64 %xor31, i64* %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.15
  %34 = load i32, i32* %kk, align 4
  %inc35 = add i32 %34, 1
  store i32 %inc35, i32* %kk, align 4
  br label %for.cond.13

for.end.36:                                       ; preds = %for.cond.13
  %35 = load i64*, i64** %mt, align 8
  %arrayidx37 = getelementptr i64, i64* %35, i64 623
  %36 = load i64, i64* %arrayidx37, align 8
  %and38 = and i64 %36, 2147483648
  %37 = load i64*, i64** %mt, align 8
  %arrayidx39 = getelementptr i64, i64* %37, i64 0
  %38 = load i64, i64* %arrayidx39, align 8
  %and40 = and i64 %38, 2147483647
  %or41 = or i64 %and38, %and40
  store i64 %or41, i64* %y, align 8
  %39 = load i64*, i64** %mt, align 8
  %arrayidx42 = getelementptr i64, i64* %39, i64 396
  %40 = load i64, i64* %arrayidx42, align 8
  %41 = load i64, i64* %y, align 8
  %shr43 = lshr i64 %41, 1
  %xor44 = xor i64 %40, %shr43
  %42 = load i64, i64* %y, align 8
  %and45 = and i64 %42, 1
  %arrayidx46 = getelementptr [2 x i64], [2 x i64]* @genrand_int32.mag01, i32 0, i64 %and45
  %43 = load i64, i64* %arrayidx46, align 8
  %xor47 = xor i64 %xor44, %43
  %44 = load i64*, i64** %mt, align 8
  %arrayidx48 = getelementptr i64, i64* %44, i64 623
  store i64 %xor47, i64* %arrayidx48, align 8
  %45 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %index49 = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %45, i32 0, i32 2
  store i32 0, i32* %index49, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.36, %entry
  %46 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %index50 = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %46, i32 0, i32 2
  %47 = load i32, i32* %index50, align 4
  %inc51 = add i32 %47, 1
  store i32 %inc51, i32* %index50, align 4
  %idxprom52 = sext i32 %47 to i64
  %48 = load i64*, i64** %mt, align 8
  %arrayidx53 = getelementptr i64, i64* %48, i64 %idxprom52
  %49 = load i64, i64* %arrayidx53, align 8
  store i64 %49, i64* %y, align 8
  %50 = load i64, i64* %y, align 8
  %shr54 = lshr i64 %50, 11
  %51 = load i64, i64* %y, align 8
  %xor55 = xor i64 %51, %shr54
  store i64 %xor55, i64* %y, align 8
  %52 = load i64, i64* %y, align 8
  %shl = shl i64 %52, 7
  %and56 = and i64 %shl, 2636928640
  %53 = load i64, i64* %y, align 8
  %xor57 = xor i64 %53, %and56
  store i64 %xor57, i64* %y, align 8
  %54 = load i64, i64* %y, align 8
  %shl58 = shl i64 %54, 15
  %and59 = and i64 %shl58, 4022730752
  %55 = load i64, i64* %y, align 8
  %xor60 = xor i64 %55, %and59
  store i64 %xor60, i64* %y, align 8
  %56 = load i64, i64* %y, align 8
  %shr61 = lshr i64 %56, 18
  %57 = load i64, i64* %y, align 8
  %xor62 = xor i64 %57, %shr61
  store i64 %xor62, i64* %y, align 8
  %58 = load i64, i64* %y, align 8
  ret i64 %58
}

declare %struct._object* @PyFloat_FromDouble(double) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind uwtable
define internal void @init_genrand(%struct.RandomObject* %self, i64 %s) #0 {
entry:
  %self.addr = alloca %struct.RandomObject*, align 8
  %s.addr = alloca i64, align 8
  %mti = alloca i32, align 4
  %mt = alloca i64*, align 8
  store %struct.RandomObject* %self, %struct.RandomObject** %self.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %state = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [624 x i64], [624 x i64]* %state, i32 0, i32 0
  store i64* %arraydecay, i64** %mt, align 8
  %1 = load i64, i64* %s.addr, align 8
  %and = and i64 %1, 4294967295
  %2 = load i64*, i64** %mt, align 8
  %arrayidx = getelementptr i64, i64* %2, i64 0
  store i64 %and, i64* %arrayidx, align 8
  store i32 1, i32* %mti, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %mti, align 4
  %cmp = icmp slt i32 %3, 624
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %mti, align 4
  %sub = sub i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load i64*, i64** %mt, align 8
  %arrayidx1 = getelementptr i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx1, align 8
  %7 = load i32, i32* %mti, align 4
  %sub2 = sub i32 %7, 1
  %idxprom3 = sext i32 %sub2 to i64
  %8 = load i64*, i64** %mt, align 8
  %arrayidx4 = getelementptr i64, i64* %8, i64 %idxprom3
  %9 = load i64, i64* %arrayidx4, align 8
  %shr = lshr i64 %9, 30
  %xor = xor i64 %6, %shr
  %mul = mul i64 1812433253, %xor
  %10 = load i32, i32* %mti, align 4
  %conv = sext i32 %10 to i64
  %add = add i64 %mul, %conv
  %11 = load i32, i32* %mti, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i64*, i64** %mt, align 8
  %arrayidx6 = getelementptr i64, i64* %12, i64 %idxprom5
  store i64 %add, i64* %arrayidx6, align 8
  %13 = load i32, i32* %mti, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i64*, i64** %mt, align 8
  %arrayidx8 = getelementptr i64, i64* %14, i64 %idxprom7
  %15 = load i64, i64* %arrayidx8, align 8
  %and9 = and i64 %15, 4294967295
  store i64 %and9, i64* %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %mti, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %mti, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %mti, align 4
  %18 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %index = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %18, i32 0, i32 2
  store i32 %17, i32* %index, align 4
  ret void
}

declare %struct._object* @PyNumber_Absolute(%struct._object*) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare %struct._object* @PyLong_FromSize_t(i64) #1

declare i64 @_PyLong_NumBits(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i32 @_PyLong_AsByteArray(%struct._longobject*, i8*, i64, i32, i32) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @init_by_array(%struct.RandomObject* %self, i64* %init_key, i64 %key_length) #0 {
entry:
  %self.addr = alloca %struct.RandomObject*, align 8
  %init_key.addr = alloca i64*, align 8
  %key_length.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %mt = alloca i64*, align 8
  store %struct.RandomObject* %self, %struct.RandomObject** %self.addr, align 8
  store i64* %init_key, i64** %init_key.addr, align 8
  store i64 %key_length, i64* %key_length.addr, align 8
  %0 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  %state = getelementptr inbounds %struct.RandomObject, %struct.RandomObject* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [624 x i64], [624 x i64]* %state, i32 0, i32 0
  store i64* %arraydecay, i64** %mt, align 8
  %1 = load %struct.RandomObject*, %struct.RandomObject** %self.addr, align 8
  call void @init_genrand(%struct.RandomObject* %1, i64 19650218)
  store i64 1, i64* %i, align 8
  store i64 0, i64* %j, align 8
  %2 = load i64, i64* %key_length.addr, align 8
  %cmp = icmp ugt i64 624, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %key_length.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 624, %cond.true ], [ %3, %cond.false ]
  store i64 %cond, i64* %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i64, i64* %k, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %6 = load i64*, i64** %mt, align 8
  %arrayidx = getelementptr i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx, align 8
  %8 = load i64, i64* %i, align 8
  %sub = sub i64 %8, 1
  %9 = load i64*, i64** %mt, align 8
  %arrayidx1 = getelementptr i64, i64* %9, i64 %sub
  %10 = load i64, i64* %arrayidx1, align 8
  %11 = load i64, i64* %i, align 8
  %sub2 = sub i64 %11, 1
  %12 = load i64*, i64** %mt, align 8
  %arrayidx3 = getelementptr i64, i64* %12, i64 %sub2
  %13 = load i64, i64* %arrayidx3, align 8
  %shr = lshr i64 %13, 30
  %xor = xor i64 %10, %shr
  %mul = mul i64 %xor, 1664525
  %xor4 = xor i64 %7, %mul
  %14 = load i64, i64* %j, align 8
  %15 = load i64*, i64** %init_key.addr, align 8
  %arrayidx5 = getelementptr i64, i64* %15, i64 %14
  %16 = load i64, i64* %arrayidx5, align 8
  %add = add i64 %xor4, %16
  %17 = load i64, i64* %j, align 8
  %add6 = add i64 %add, %17
  %18 = load i64, i64* %i, align 8
  %19 = load i64*, i64** %mt, align 8
  %arrayidx7 = getelementptr i64, i64* %19, i64 %18
  store i64 %add6, i64* %arrayidx7, align 8
  %20 = load i64, i64* %i, align 8
  %21 = load i64*, i64** %mt, align 8
  %arrayidx8 = getelementptr i64, i64* %21, i64 %20
  %22 = load i64, i64* %arrayidx8, align 8
  %and = and i64 %22, 4294967295
  store i64 %and, i64* %arrayidx8, align 8
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  %24 = load i64, i64* %j, align 8
  %inc9 = add i64 %24, 1
  store i64 %inc9, i64* %j, align 8
  %25 = load i64, i64* %i, align 8
  %cmp10 = icmp uge i64 %25, 624
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %26 = load i64*, i64** %mt, align 8
  %arrayidx11 = getelementptr i64, i64* %26, i64 623
  %27 = load i64, i64* %arrayidx11, align 8
  %28 = load i64*, i64** %mt, align 8
  %arrayidx12 = getelementptr i64, i64* %28, i64 0
  store i64 %27, i64* %arrayidx12, align 8
  store i64 1, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %29 = load i64, i64* %j, align 8
  %30 = load i64, i64* %key_length.addr, align 8
  %cmp13 = icmp uge i64 %29, %30
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i64 0, i64* %j, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %31 = load i64, i64* %k, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %k, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 623, i64* %k, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.38, %for.end
  %32 = load i64, i64* %k, align 8
  %tobool17 = icmp ne i64 %32, 0
  br i1 %tobool17, label %for.body.18, label %for.end.40

for.body.18:                                      ; preds = %for.cond.16
  %33 = load i64, i64* %i, align 8
  %34 = load i64*, i64** %mt, align 8
  %arrayidx19 = getelementptr i64, i64* %34, i64 %33
  %35 = load i64, i64* %arrayidx19, align 8
  %36 = load i64, i64* %i, align 8
  %sub20 = sub i64 %36, 1
  %37 = load i64*, i64** %mt, align 8
  %arrayidx21 = getelementptr i64, i64* %37, i64 %sub20
  %38 = load i64, i64* %arrayidx21, align 8
  %39 = load i64, i64* %i, align 8
  %sub22 = sub i64 %39, 1
  %40 = load i64*, i64** %mt, align 8
  %arrayidx23 = getelementptr i64, i64* %40, i64 %sub22
  %41 = load i64, i64* %arrayidx23, align 8
  %shr24 = lshr i64 %41, 30
  %xor25 = xor i64 %38, %shr24
  %mul26 = mul i64 %xor25, 1566083941
  %xor27 = xor i64 %35, %mul26
  %42 = load i64, i64* %i, align 8
  %sub28 = sub i64 %xor27, %42
  %43 = load i64, i64* %i, align 8
  %44 = load i64*, i64** %mt, align 8
  %arrayidx29 = getelementptr i64, i64* %44, i64 %43
  store i64 %sub28, i64* %arrayidx29, align 8
  %45 = load i64, i64* %i, align 8
  %46 = load i64*, i64** %mt, align 8
  %arrayidx30 = getelementptr i64, i64* %46, i64 %45
  %47 = load i64, i64* %arrayidx30, align 8
  %and31 = and i64 %47, 4294967295
  store i64 %and31, i64* %arrayidx30, align 8
  %48 = load i64, i64* %i, align 8
  %inc32 = add i64 %48, 1
  store i64 %inc32, i64* %i, align 8
  %49 = load i64, i64* %i, align 8
  %cmp33 = icmp uge i64 %49, 624
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %for.body.18
  %50 = load i64*, i64** %mt, align 8
  %arrayidx35 = getelementptr i64, i64* %50, i64 623
  %51 = load i64, i64* %arrayidx35, align 8
  %52 = load i64*, i64** %mt, align 8
  %arrayidx36 = getelementptr i64, i64* %52, i64 0
  store i64 %51, i64* %arrayidx36, align 8
  store i64 1, i64* %i, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %for.body.18
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %53 = load i64, i64* %k, align 8
  %dec39 = add i64 %53, -1
  store i64 %dec39, i64* %k, align 8
  br label %for.cond.16

for.end.40:                                       ; preds = %for.cond.16
  %54 = load i64*, i64** %mt, align 8
  %arrayidx41 = getelementptr i64, i64* %54, i64 0
  store i64 2147483648, i64* %arrayidx41, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc42 = add i64 %55, 1
  store i64 %inc42, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyLong_FromByteArray(i8*, i64, i32, i32) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
