; ModuleID = './enumobject.bc'
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.enumobject = type { %struct._object, i64, %struct._object*, %struct._object*, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.reversedobject = type { %struct._object, i64, %struct._object* }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [10 x i8] c"enumerate\00", align 1
@enum_doc = internal global [392 x i8] c"enumerate(iterable[, start]) -> iterator for index, value of iterable\0A\0AReturn an enumerate object.  iterable must be another object that supports\0Aiteration.  The enumerate object yields pairs containing a count (from\0Astart, which defaults to zero) and a value yielded by the iterable argument.\0Aenumerate is useful for obtaining an indexed list:\0A    (0, seq[0]), (1, seq[1]), (2, seq[2]), ...\00", align 16
@enum_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.enumobject*)* @enum_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyEnum_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.enumobject*)* @enum_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([392 x i8], [392 x i8]* @enum_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.enumobject*, i32 (%struct._object*, i8*)*, i8*)* @enum_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.enumobject*)* @enum_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @enum_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @enum_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"reversed\00", align 1
@reversed_doc = internal global [94 x i8] c"reversed(sequence) -> reverse iterator over values of the sequence\0A\0AReturn a reverse iterator\00", align 16
@reversediter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.reversedobject*)* @reversed_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.reversedobject*)* @reversed_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.reversedobject*, %struct._object*)* @reversed_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyReversed_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.reversedobject*)* @reversed_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @reversed_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.reversedobject*, i32 (%struct._object*, i8*)*, i8*)* @reversed_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.reversedobject*)* @reversed_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @reversediter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @reversed_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@enum_next_long.one = internal global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"O(OO)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"O(On)\00", align 1
@enum_new.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"iterable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"O|O:enumerate\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_IndexError = external global %struct._object*, align 8
@PyExc_StopIteration = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.9 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"O(O)n\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"O(())\00", align 1
@reversed_new.PyId___reversed__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), %struct._object* null }, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"__reversed__\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"reversed()\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.14 = private unnamed_addr constant [42 x i8] c"argument to reversed() must be a sequence\00", align 1

; Function Attrs: nounwind uwtable
define internal void @enum_dealloc(%struct.enumobject* %en) #0 {
entry:
  %en.addr = alloca %struct.enumobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8
  %0 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %1 = bitcast %struct.enumobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %en_sit, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
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
  %12 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %en_result, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %22 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %22, i32 0, i32 4
  %23 = load %struct._object*, %struct._object** %en_longindex, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp24, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %24, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %27, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %32 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %33 = bitcast %struct.enumobject* %32 to %struct._object*
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 38
  %35 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %36 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %37 = bitcast %struct.enumobject* %36 to i8*
  call void %35(i8* %37)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @enum_traverse(%struct.enumobject* %en, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %en.addr = alloca %struct.enumobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %en_sit, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_sit1 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %en_sit1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %en_result, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_result9 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %en_result9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %16 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %16, i32 0, i32 4
  %17 = load %struct._object*, %struct._object** %en_longindex, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex20 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %19, i32 0, i32 4
  %20 = load %struct._object*, %struct._object** %en_longindex20, align 8
  %21 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %18(%struct._object* %20, i8* %21)
  store i32 %call21, i32* %vret19, align 4
  %22 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %23 = load i32, i32* %vret19, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.23, %if.then.12, %if.then.3
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_next(%struct.enumobject* %en) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %en.addr = alloca %struct.enumobject*, align 8
  %next_index = alloca %struct._object*, align 8
  %next_item = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8
  %0 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %en_result, align 8
  store %struct._object* %1, %struct._object** %result, align 8
  %2 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %en_sit, align 8
  store %struct._object* %3, %struct._object** %it, align 8
  %4 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 26
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  %7 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* %6(%struct._object* %7)
  store %struct._object* %call, %struct._object** %next_item, align 8
  %8 = load %struct._object*, %struct._object** %next_item, align 8
  %cmp = icmp eq %struct._object* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_index = getelementptr inbounds %struct.enumobject, %struct.enumobject* %9, i32 0, i32 1
  %10 = load i64, i64* %en_index, align 8
  %cmp1 = icmp eq i64 %10, 9223372036854775807
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %11 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %12 = load %struct._object*, %struct._object** %next_item, align 8
  %call3 = call %struct._object* @enum_next_long(%struct.enumobject* %11, %struct._object* %12)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_index5 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %13, i32 0, i32 1
  %14 = load i64, i64* %en_index5, align 8
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %14)
  store %struct._object* %call6, %struct._object** %next_index, align 8
  %15 = load %struct._object*, %struct._object** %next_index, align 8
  %cmp7 = icmp eq %struct._object* %15, null
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %16 = load %struct._object*, %struct._object** %next_item, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %23 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_index14 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %23, i32 0, i32 1
  %24 = load i64, i64* %en_index14, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %en_index14, align 8
  %25 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt15, align 8
  %cmp16 = icmp eq i64 %26, 1
  br i1 %cmp16, label %if.then.17, label %if.else.44

if.then.17:                                       ; preds = %if.end.13
  %27 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %28, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.17
  %29 = load %struct._object*, %struct._object** %result, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %31 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp21, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %33, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %36(%struct._object* %37)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %38 = load %struct._object*, %struct._object** %result, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyTupleObject*
  %ob_item33 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %39, i32 0, i32 1
  %arrayidx34 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item33, i32 0, i64 1
  %40 = load %struct._object*, %struct._object** %arrayidx34, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp32, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %42, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.31
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.31
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %45(%struct._object* %46)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.71

if.else.44:                                       ; preds = %if.end.13
  %call45 = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call45, %struct._object** %result, align 8
  %47 = load %struct._object*, %struct._object** %result, align 8
  %cmp46 = icmp eq %struct._object* %47, null
  br i1 %cmp46, label %if.then.47, label %if.end.70

if.then.47:                                       ; preds = %if.else.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %48 = load %struct._object*, %struct._object** %next_index, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp49, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %50, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %53(%struct._object* %54)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %do.body.59

do.body.59:                                       ; preds = %do.end.58
  %55 = load %struct._object*, %struct._object** %next_item, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp60, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %57, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.59
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %60(%struct._object* %61)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.70:                                        ; preds = %if.else.44
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %do.end.43
  %62 = load %struct._object*, %struct._object** %next_index, align 8
  %63 = load %struct._object*, %struct._object** %result, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyTupleObject*
  %ob_item72 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %64, i32 0, i32 1
  %arrayidx73 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item72, i32 0, i64 0
  store %struct._object* %62, %struct._object** %arrayidx73, align 8
  %65 = load %struct._object*, %struct._object** %next_item, align 8
  %66 = load %struct._object*, %struct._object** %result, align 8
  %67 = bitcast %struct._object* %66 to %struct.PyTupleObject*
  %ob_item74 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %67, i32 0, i32 1
  %arrayidx75 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item74, i32 0, i64 1
  store %struct._object* %65, %struct._object** %arrayidx75, align 8
  %68 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %68, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.71, %do.end.69, %do.end, %if.then.2, %if.then
  %69 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %69
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %en = alloca %struct.enumobject*, align 8
  %seq = alloca %struct._object*, align 8
  %start = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %seq, align 8
  store %struct._object* null, %struct._object** %start, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @enum_new.kwlist, i32 0, i32 0), %struct._object** %seq, %struct._object** %start)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 36
  %3 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call1 = call %struct._object* %3(%struct._typeobject* %4, i64 0)
  %5 = bitcast %struct._object* %call1 to %struct.enumobject*
  store %struct.enumobject* %5, %struct.enumobject** %en, align 8
  %6 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %cmp = icmp eq %struct.enumobject* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %start, align 8
  %cmp4 = icmp ne %struct._object* %7, null
  br i1 %cmp4, label %if.then.5, label %if.else.34

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %start, align 8
  %call6 = call %struct._object* @PyNumber_Index(%struct._object* %8)
  store %struct._object* %call6, %struct._object** %start, align 8
  %9 = load %struct._object*, %struct._object** %start, align 8
  %cmp7 = icmp eq %struct._object* %9, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %10 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %11 = bitcast %struct.enumobject* %10 to %struct._object*
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

if.end.12:                                        ; preds = %if.then.5
  %18 = load %struct._object*, %struct._object** %start, align 8
  %call13 = call i64 @PyLong_AsSsize_t(%struct._object* %18)
  %19 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_index = getelementptr inbounds %struct.enumobject, %struct.enumobject* %19, i32 0, i32 1
  store i64 %call13, i64* %en_index, align 8
  %20 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_index14 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %20, i32 0, i32 1
  %21 = load i64, i64* %en_index14, align 8
  %cmp15 = icmp eq i64 %21, -1
  br i1 %cmp15, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %if.end.12
  %call16 = call %struct._object* @PyErr_Occurred()
  %tobool17 = icmp ne %struct._object* %call16, null
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear()
  %22 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_index19 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %22, i32 0, i32 1
  store i64 9223372036854775807, i64* %en_index19, align 8
  %23 = load %struct._object*, %struct._object** %start, align 8
  %24 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %24, i32 0, i32 4
  store %struct._object* %23, %struct._object** %en_longindex, align 8
  br label %if.end.33

if.else.20:                                       ; preds = %land.lhs.true, %if.end.12
  %25 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_longindex21 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %25, i32 0, i32 4
  store %struct._object* null, %struct._object** %en_longindex21, align 8
  br label %do.body.22

do.body.22:                                       ; preds = %if.else.20
  %26 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp23, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %28, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %31(%struct._object* %32)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %if.then.18
  br label %if.end.37

if.else.34:                                       ; preds = %if.end.3
  %33 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_index35 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %33, i32 0, i32 1
  store i64 0, i64* %en_index35, align 8
  %34 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_longindex36 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %34, i32 0, i32 4
  store %struct._object* null, %struct._object** %en_longindex36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.end.33
  %35 = load %struct._object*, %struct._object** %seq, align 8
  %call38 = call %struct._object* @PyObject_GetIter(%struct._object* %35)
  %36 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %36, i32 0, i32 2
  store %struct._object* %call38, %struct._object** %en_sit, align 8
  %37 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_sit39 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %37, i32 0, i32 2
  %38 = load %struct._object*, %struct._object** %en_sit39, align 8
  %cmp40 = icmp eq %struct._object* %38, null
  br i1 %cmp40, label %if.then.41, label %if.end.53

if.then.41:                                       ; preds = %if.end.37
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %39 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %40 = bitcast %struct.enumobject* %39 to %struct._object*
  store %struct._object* %40, %struct._object** %_py_decref_tmp43, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %42, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %45(%struct._object* %46)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.37
  %call54 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct)
  %47 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %47, i32 0, i32 3
  store %struct._object* %call54, %struct._object** %en_result, align 8
  %48 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %en_result55 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %48, i32 0, i32 3
  %49 = load %struct._object*, %struct._object** %en_result55, align 8
  %cmp56 = icmp eq %struct._object* %49, null
  br i1 %cmp56, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %if.end.53
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %50 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %51 = bitcast %struct.enumobject* %50 to %struct._object*
  store %struct._object* %51, %struct._object** %_py_decref_tmp59, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %53, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.58
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %56(%struct._object* %57)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.69:                                        ; preds = %if.end.53
  %58 = load %struct.enumobject*, %struct.enumobject** %en, align 8
  %59 = bitcast %struct.enumobject* %58 to %struct._object*
  store %struct._object* %59, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.69, %do.end.68, %do.end.52, %do.end, %if.then.2, %if.then
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @reversed_dealloc(%struct.reversedobject* %ro) #0 {
entry:
  %ro.addr = alloca %struct.reversedobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8
  %0 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %1 = bitcast %struct.reversedobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %12 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %13 = bitcast %struct.reversedobject* %12 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 38
  %15 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %16 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %17 = bitcast %struct.reversedobject* %16 to i8*
  call void %15(i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @reversed_traverse(%struct.reversedobject* %ro, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ro.addr = alloca %struct.reversedobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %seq, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq1 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %seq1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_next(%struct.reversedobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.reversedobject*, align 8
  %item = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8
  %0 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %index1 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %0, i32 0, i32 1
  %1 = load i64, i64* %index1, align 8
  store i64 %1, i64* %index, align 8
  %2 = load i64, i64* %index, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %seq, align 8
  %5 = load i64, i64* %index, align 8
  %call = call %struct._object* @PySequence_GetItem(%struct._object* %4, i64 %5)
  store %struct._object* %call, %struct._object** %item, align 8
  %6 = load %struct._object*, %struct._object** %item, align 8
  %cmp2 = icmp ne %struct._object* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %index4 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %7, i32 0, i32 1
  %8 = load i64, i64* %index4, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %index4, align 8
  %9 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call5 = call i32 @PyErr_ExceptionMatches(%struct._object* %10)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  call void @PyErr_Clear()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %12 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %index11 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %12, i32 0, i32 1
  store i64 -1, i64* %index11, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %13 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq12 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %seq12, align 8
  store %struct._object* %14, %struct._object** %_py_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp13 = icmp ne %struct._object* %15, null
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %do.body
  %16 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq15 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %16, i32 0, i32 2
  store %struct._object* null, %struct._object** %seq15, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.14
  %17 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec17 = add i64 %19, -1
  store i64 %dec17, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body.16
  br label %if.end.20

if.else:                                          ; preds = %do.body.16
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %do.body
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.then.3
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %seq = alloca %struct._object*, align 8
  %reversed_meth = alloca %struct._object*, align 8
  %ro = alloca %struct.reversedobject*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @PyReversed_Type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 1, i64 1, %struct._object** %seq)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %seq, align 8
  %call5 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %3, %struct._Py_Identifier* @reversed_new.PyId___reversed__)
  store %struct._object* %call5, %struct._object** %reversed_meth, align 8
  %4 = load %struct._object*, %struct._object** %reversed_meth, align 8
  %cmp6 = icmp ne %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.else.12

if.then.7:                                        ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %reversed_meth, align 8
  %call8 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %5, i8* null)
  store %struct._object* %call8, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %6 = load %struct._object*, %struct._object** %reversed_meth, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

if.else.12:                                       ; preds = %if.end.4
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.else.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._object*, %struct._object** %seq, align 8
  %call18 = call i32 @PySequence_Check(%struct._object* %14)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %16 = load %struct._object*, %struct._object** %seq, align 8
  %call22 = call i64 @PySequence_Size(%struct._object* %16)
  store i64 %call22, i64* %n, align 8
  %17 = load i64, i64* %n, align 8
  %cmp23 = icmp eq i64 %17, -1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  %18 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 36
  %19 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %20 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call26 = call %struct._object* %19(%struct._typeobject* %20, i64 0)
  %21 = bitcast %struct._object* %call26 to %struct.reversedobject*
  store %struct.reversedobject* %21, %struct.reversedobject** %ro, align 8
  %22 = load %struct.reversedobject*, %struct.reversedobject** %ro, align 8
  %cmp27 = icmp eq %struct.reversedobject* %22, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  %23 = load i64, i64* %n, align 8
  %sub = sub i64 %23, 1
  %24 = load %struct.reversedobject*, %struct.reversedobject** %ro, align 8
  %index = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %24, i32 0, i32 1
  store i64 %sub, i64* %index, align 8
  %25 = load %struct._object*, %struct._object** %seq, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt30, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %ob_refcnt30, align 8
  %27 = load %struct._object*, %struct._object** %seq, align 8
  %28 = load %struct.reversedobject*, %struct.reversedobject** %ro, align 8
  %seq31 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %28, i32 0, i32 2
  store %struct._object* %27, %struct._object** %seq31, align 8
  %29 = load %struct.reversedobject*, %struct.reversedobject** %ro, align 8
  %30 = bitcast %struct.reversedobject* %29 to %struct._object*
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.24, %if.then.20, %if.then.15, %do.end, %if.then.3, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

declare void @PyObject_GC_UnTrack(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_next_long(%struct.enumobject* %en, %struct._object* %next_item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %en.addr = alloca %struct.enumobject*, align 8
  %next_item.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %next_index = alloca %struct._object*, align 8
  %stepped_up = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8
  store %struct._object* %next_item, %struct._object** %next_item.addr, align 8
  %0 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %en_result, align 8
  store %struct._object* %1, %struct._object** %result, align 8
  %2 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %2, i32 0, i32 4
  %3 = load %struct._object*, %struct._object** %en_longindex, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromSsize_t(i64 9223372036854775807)
  %4 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex1 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %4, i32 0, i32 4
  store %struct._object* %call, %struct._object** %en_longindex1, align 8
  %5 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex2 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %5, i32 0, i32 4
  %6 = load %struct._object*, %struct._object** %en_longindex2, align 8
  %cmp3 = icmp eq %struct._object* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %7 = load %struct._object*, %struct._object** @enum_next_long.one, align 8
  %cmp6 = icmp eq %struct._object* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.5
  %call8 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call8, %struct._object** @enum_next_long.one, align 8
  %8 = load %struct._object*, %struct._object** @enum_next_long.one, align 8
  %cmp9 = icmp eq %struct._object* %8, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.5
  %9 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex13 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %9, i32 0, i32 4
  %10 = load %struct._object*, %struct._object** %en_longindex13, align 8
  store %struct._object* %10, %struct._object** %next_index, align 8
  %11 = load %struct._object*, %struct._object** %next_index, align 8
  %12 = load %struct._object*, %struct._object** @enum_next_long.one, align 8
  %call14 = call %struct._object* @PyNumber_Add(%struct._object* %11, %struct._object* %12)
  store %struct._object* %call14, %struct._object** %stepped_up, align 8
  %13 = load %struct._object*, %struct._object** %stepped_up, align 8
  %cmp15 = icmp eq %struct._object* %13, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %14 = load %struct._object*, %struct._object** %stepped_up, align 8
  %15 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex18 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %15, i32 0, i32 4
  store %struct._object* %14, %struct._object** %en_longindex18, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %cmp19 = icmp eq i64 %17, 1
  br i1 %cmp19, label %if.then.20, label %if.else.39

if.then.20:                                       ; preds = %if.end.17
  %18 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt21, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt21, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %20 = load %struct._object*, %struct._object** %result, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %22 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt22, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt22, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body
  br label %if.end.25

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %do.body.26

do.body.26:                                       ; preds = %do.end
  %29 = load %struct._object*, %struct._object** %result, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 1
  %31 = load %struct._object*, %struct._object** %arrayidx29, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp27, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %33, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.26
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.26
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %36(%struct._object* %37)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %if.end.66

if.else.39:                                       ; preds = %if.end.17
  %call40 = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call40, %struct._object** %result, align 8
  %38 = load %struct._object*, %struct._object** %result, align 8
  %cmp41 = icmp eq %struct._object* %38, null
  br i1 %cmp41, label %if.then.42, label %if.end.65

if.then.42:                                       ; preds = %if.else.39
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %39 = load %struct._object*, %struct._object** %next_index, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp44, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %41, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %44(%struct._object* %45)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %46 = load %struct._object*, %struct._object** %next_item.addr, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp55, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %48, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %51(%struct._object* %52)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.65:                                        ; preds = %if.else.39
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %do.end.38
  %53 = load %struct._object*, %struct._object** %next_index, align 8
  %54 = load %struct._object*, %struct._object** %result, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyTupleObject*
  %ob_item67 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %55, i32 0, i32 1
  %arrayidx68 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item67, i32 0, i64 0
  store %struct._object* %53, %struct._object** %arrayidx68, align 8
  %56 = load %struct._object*, %struct._object** %next_item.addr, align 8
  %57 = load %struct._object*, %struct._object** %result, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyTupleObject*
  %ob_item69 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %58, i32 0, i32 1
  %arrayidx70 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item69, i32 0, i64 1
  store %struct._object* %56, %struct._object** %arrayidx70, align 8
  %59 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %59, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.66, %do.end.64, %if.then.16, %if.then.10, %if.then.4
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_reduce(%struct.enumobject* %en) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %en.addr = alloca %struct.enumobject*, align 8
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8
  %0 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %en_longindex, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %3 = bitcast %struct.enumobject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %en_sit, align 8
  %7 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_longindex1 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %7, i32 0, i32 4
  %8 = load %struct._object*, %struct._object** %en_longindex1, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._typeobject* %4, %struct._object* %6, %struct._object* %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %10 = bitcast %struct.enumobject* %9 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %12 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_sit3 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %en_sit3, align 8
  %14 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8
  %en_index = getelementptr inbounds %struct.enumobject, %struct.enumobject* %14, i32 0, i32 1
  %15 = load i64, i64* %en_index, align 8
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._typeobject* %11, %struct._object* %13, i64 %15)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_len(%struct.reversedobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.reversedobject*, align 8
  %position = alloca i64, align 8
  %seqsize = alloca i64, align 8
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8
  %0 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %seq, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq1 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %seq1, align 8
  %call2 = call i64 @PySequence_Size(%struct._object* %3)
  store i64 %call2, i64* %seqsize, align 8
  %4 = load i64, i64* %seqsize, align 8
  %cmp3 = icmp eq i64 %4, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %index = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %5, i32 0, i32 1
  %6 = load i64, i64* %index, align 8
  %add = add i64 %6, 1
  store i64 %add, i64* %position, align 8
  %7 = load i64, i64* %seqsize, align 8
  %8 = load i64, i64* %position, align 8
  %cmp6 = icmp slt i64 %7, %8
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %9 = load i64, i64* %position, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %9, %cond.false ]
  %call7 = call %struct._object* @PyLong_FromSsize_t(i64 %cond)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.4, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_reduce(%struct.reversedobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.reversedobject*, align 8
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8
  %0 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %seq, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %3 = bitcast %struct.reversedobject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq1 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %seq1, align 8
  %7 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %index = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %7, i32 0, i32 1
  %8 = load i64, i64* %index, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._typeobject* %4, %struct._object* %6, i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %10 = bitcast %struct.reversedobject* %9 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %struct._typeobject* %11)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_setstate(%struct.reversedobject* %ro, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.reversedobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %0)
  store i64 %call, i64* %index, align 8
  %1 = load i64, i64* %index, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %seq, align 8
  %cmp2 = icmp ne %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.17

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %seq4 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %seq4, align 8
  %call5 = call i64 @PySequence_Size(%struct._object* %5)
  store i64 %call5, i64* %n, align 8
  %6 = load i64, i64* %n, align 8
  %cmp6 = icmp slt i64 %6, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.3
  %7 = load i64, i64* %index, align 8
  %cmp9 = icmp slt i64 %7, -1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  store i64 -1, i64* %index, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end.8
  %8 = load i64, i64* %index, align 8
  %9 = load i64, i64* %n, align 8
  %sub = sub i64 %9, 1
  %cmp11 = icmp sgt i64 %8, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.else
  %10 = load i64, i64* %n, align 8
  %sub13 = sub i64 %10, 1
  store i64 %sub13, i64* %index, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.10
  %11 = load i64, i64* %index, align 8
  %12 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8
  %index16 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %12, i32 0, i32 1
  store i64 %11, i64* %index16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.7, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare i64 @PySequence_Size(%struct._object*) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @PySequence_Check(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
