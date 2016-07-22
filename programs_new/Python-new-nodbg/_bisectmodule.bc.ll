; ModuleID = './_bisectmodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }

@_bisectmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([266 x i8], [266 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([7 x %struct.PyMethodDef], [7 x %struct.PyMethodDef]* @bisect_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"_bisect\00", align 1
@module_doc = internal global [266 x i8] c"Bisection algorithms.\0A\0AThis module provides support for maintaining a list in sorted order without\0Ahaving to sort the list after each insertion. For long lists of items with\0Aexpensive comparison operations, this can be an improvement over the more\0Acommon approach.\0A\00", align 16
@bisect_methods = internal global [7 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bisect_right to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([387 x i8], [387 x i8]* @bisect_right_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bisect_right to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @bisect_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @insort_right to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @insort_right_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @insort_right to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @insort_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bisect_left to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([386 x i8], [386 x i8]* @bisect_left_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @insort_left to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @insort_left_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"bisect_right\00", align 1
@bisect_right_doc = internal global [387 x i8] c"bisect_right(a, x[, lo[, hi]]) -> index\0A\0AReturn the index where to insert item x in list a, assuming a is sorted.\0A\0AThe return value i is such that all e in a[:i] have e <= x, and all e in\0Aa[i:] have e > x.  So if x already appears in the list, i points just\0Abeyond the rightmost x already there\0A\0AOptional args lo (default 0) and hi (default len(a)) bound the\0Aslice of a to be searched.\0A\00", align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"bisect\00", align 1
@bisect_doc = internal global [27 x i8] c"Alias for bisect_right().\0A\00", align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"insort_right\00", align 1
@insort_right_doc = internal global [256 x i8] c"insort_right(a, x[, lo[, hi]])\0A\0AInsert item x in list a, and keep it sorted assuming a is sorted.\0A\0AIf x is already in a, insert it to the right of the rightmost x.\0A\0AOptional args lo (default 0) and hi (default len(a)) bound the\0Aslice of a to be searched.\0A\00", align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"insort\00", align 1
@insort_doc = internal global [27 x i8] c"Alias for insort_right().\0A\00", align 16
@.str.5 = private unnamed_addr constant [12 x i8] c"bisect_left\00", align 1
@bisect_left_doc = internal global [386 x i8] c"bisect_left(a, x[, lo[, hi]]) -> index\0A\0AReturn the index where to insert item x in list a, assuming a is sorted.\0A\0AThe return value i is such that all e in a[:i] have e < x, and all e in\0Aa[i:] have e >= x.  So if x already appears in the list, i points just\0Abefore the leftmost x already there.\0A\0AOptional args lo (default 0) and hi (default len(a)) bound the\0Aslice of a to be searched.\0A\00", align 16
@.str.6 = private unnamed_addr constant [12 x i8] c"insort_left\00", align 1
@insort_left_doc = internal global [253 x i8] c"insort_left(a, x[, lo[, hi]])\0A\0AInsert item x in list a, and keep it sorted assuming a is sorted.\0A\0AIf x is already in a, insert it to the left of the leftmost x.\0A\0AOptional args lo (default 0) and hi (default len(a)) bound the\0Aslice of a to be searched.\0A\00", align 16
@bisect_right.keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"OO|nn:bisect_right\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"lo must be non-negative\00", align 1
@insort_right.keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [19 x i8] c"OO|nn:insort_right\00", align 1
@PyList_Type = external global %struct._typeobject, align 8
@PyId_insert = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._object* null }, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"nO\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@bisect_left.keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.16 = private unnamed_addr constant [18 x i8] c"OO|nn:bisect_left\00", align 1
@insort_left.keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.17 = private unnamed_addr constant [18 x i8] c"OO|nn:insort_left\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__bisect() #0 {
entry:
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_bisectmodule, i32 1013)
  ret %struct._object* %call
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bisect_right(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %index = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store i64 0, i64* %lo, align 8
  store i64 -1, i64* %hi, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @bisect_right.keywords, i32 0, i32 0), %struct._object** %list, %struct._object** %item, i64* %lo, i64* %hi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %list, align 8
  %3 = load %struct._object*, %struct._object** %item, align 8
  %4 = load i64, i64* %lo, align 8
  %5 = load i64, i64* %hi, align 8
  %call1 = call i64 @internal_bisect_right(%struct._object* %2, %struct._object* %3, i64 %4, i64 %5)
  store i64 %call1, i64* %index, align 8
  %6 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load i64, i64* %index, align 8
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @insort_right(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %index = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store i64 0, i64* %lo, align 8
  store i64 -1, i64* %hi, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @insort_right.keywords, i32 0, i32 0), %struct._object** %list, %struct._object** %item, i64* %lo, i64* %hi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %list, align 8
  %3 = load %struct._object*, %struct._object** %item, align 8
  %4 = load i64, i64* %lo, align 8
  %5 = load i64, i64* %hi, align 8
  %call1 = call i64 @internal_bisect_right(%struct._object* %2, %struct._object* %3, i64 %4, i64 %5)
  store i64 %call1, i64* %index, align 8
  %6 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %list, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %8, @PyList_Type
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %list, align 8
  %10 = load i64, i64* %index, align 8
  %11 = load %struct._object*, %struct._object** %item, align 8
  %call6 = call i32 @PyList_Insert(%struct._object* %9, i64 %10, %struct._object* %11)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.19

if.else:                                          ; preds = %if.end.3
  %12 = load %struct._object*, %struct._object** %list, align 8
  %13 = load i64, i64* %index, align 8
  %14 = load %struct._object*, %struct._object** %item, align 8
  %call10 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %12, %struct._Py_Identifier* @PyId_insert, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i64 %13, %struct._object* %14)
  store %struct._object* %call10, %struct._object** %result, align 8
  %15 = load %struct._object*, %struct._object** %result, align 8
  %cmp11 = icmp eq %struct._object* %15, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %16 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body
  br label %if.end.18

if.else.16:                                       ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %if.end.9
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.12, %if.then.8, %if.then.2, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bisect_left(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %index = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store i64 0, i64* %lo, align 8
  store i64 -1, i64* %hi, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @bisect_left.keywords, i32 0, i32 0), %struct._object** %list, %struct._object** %item, i64* %lo, i64* %hi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %list, align 8
  %3 = load %struct._object*, %struct._object** %item, align 8
  %4 = load i64, i64* %lo, align 8
  %5 = load i64, i64* %hi, align 8
  %call1 = call i64 @internal_bisect_left(%struct._object* %2, %struct._object* %3, i64 %4, i64 %5)
  store i64 %call1, i64* %index, align 8
  %6 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load i64, i64* %index, align 8
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @insort_left(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %index = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store i64 0, i64* %lo, align 8
  store i64 -1, i64* %hi, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @insort_left.keywords, i32 0, i32 0), %struct._object** %list, %struct._object** %item, i64* %lo, i64* %hi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %list, align 8
  %3 = load %struct._object*, %struct._object** %item, align 8
  %4 = load i64, i64* %lo, align 8
  %5 = load i64, i64* %hi, align 8
  %call1 = call i64 @internal_bisect_left(%struct._object* %2, %struct._object* %3, i64 %4, i64 %5)
  store i64 %call1, i64* %index, align 8
  %6 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %list, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %8, @PyList_Type
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %list, align 8
  %10 = load i64, i64* %index, align 8
  %11 = load %struct._object*, %struct._object** %item, align 8
  %call6 = call i32 @PyList_Insert(%struct._object* %9, i64 %10, %struct._object* %11)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.19

if.else:                                          ; preds = %if.end.3
  %12 = load %struct._object*, %struct._object** %list, align 8
  %13 = load i64, i64* %index, align 8
  %14 = load %struct._object*, %struct._object** %item, align 8
  %call10 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %12, %struct._Py_Identifier* @PyId_insert, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i64 %13, %struct._object* %14)
  store %struct._object* %call10, %struct._object** %result, align 8
  %15 = load %struct._object*, %struct._object** %result, align 8
  %cmp11 = icmp eq %struct._object* %15, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %16 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body
  br label %if.end.18

if.else.16:                                       ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %if.end.9
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.12, %if.then.8, %if.then.2, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @internal_bisect_right(%struct._object* %list, %struct._object* %item, i64 %lo, i64 %hi) #0 {
entry:
  %retval = alloca i64, align 8
  %list.addr = alloca %struct._object*, align 8
  %item.addr = alloca %struct._object*, align 8
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  %litem = alloca %struct._object*, align 8
  %mid = alloca i64, align 8
  %res = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %list, %struct._object** %list.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store i64 %lo, i64* %lo.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  %0 = load i64, i64* %lo.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %hi.addr, align 8
  %cmp1 = icmp eq i64 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %list.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %3)
  store i64 %call, i64* %hi.addr, align 8
  %4 = load i64, i64* %hi.addr, align 8
  %cmp3 = icmp slt i64 %4, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  store i64 -1, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end.6
  %5 = load i64, i64* %lo.addr, align 8
  %6 = load i64, i64* %hi.addr, align 8
  %cmp7 = icmp slt i64 %5, %6
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, i64* %lo.addr, align 8
  %8 = load i64, i64* %hi.addr, align 8
  %add = add i64 %7, %8
  %div = udiv i64 %add, 2
  store i64 %div, i64* %mid, align 8
  %9 = load %struct._object*, %struct._object** %list.addr, align 8
  %10 = load i64, i64* %mid, align 8
  %call8 = call %struct._object* @PySequence_GetItem(%struct._object* %9, i64 %10)
  store %struct._object* %call8, %struct._object** %litem, align 8
  %11 = load %struct._object*, %struct._object** %litem, align 8
  %cmp9 = icmp eq %struct._object* %11, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  store i64 -1, i64* %retval
  br label %return

if.end.11:                                        ; preds = %while.body
  %12 = load %struct._object*, %struct._object** %item.addr, align 8
  %13 = load %struct._object*, %struct._object** %litem, align 8
  %call12 = call i32 @PyObject_RichCompareBool(%struct._object* %12, %struct._object* %13, i32 0)
  %conv = sext i32 %call12 to i64
  store i64 %conv, i64* %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %litem, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %21 = load i64, i64* %res, align 8
  %cmp17 = icmp slt i64 %21, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  store i64 -1, i64* %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  %22 = load i64, i64* %res, align 8
  %tobool = icmp ne i64 %22, 0
  br i1 %tobool, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.end.20
  %23 = load i64, i64* %mid, align 8
  store i64 %23, i64* %hi.addr, align 8
  br label %if.end.24

if.else.22:                                       ; preds = %if.end.20
  %24 = load i64, i64* %mid, align 8
  %add23 = add i64 %24, 1
  store i64 %add23, i64* %lo.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i64, i64* %lo.addr, align 8
  store i64 %25, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.19, %if.then.10, %if.then.4, %if.then
  %26 = load i64, i64* %retval
  ret i64 %26
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i64 @PySequence_Size(%struct._object*) #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare i32 @PyList_Insert(%struct._object*, i64, %struct._object*) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @internal_bisect_left(%struct._object* %list, %struct._object* %item, i64 %lo, i64 %hi) #0 {
entry:
  %retval = alloca i64, align 8
  %list.addr = alloca %struct._object*, align 8
  %item.addr = alloca %struct._object*, align 8
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  %litem = alloca %struct._object*, align 8
  %mid = alloca i64, align 8
  %res = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %list, %struct._object** %list.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store i64 %lo, i64* %lo.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  %0 = load i64, i64* %lo.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %hi.addr, align 8
  %cmp1 = icmp eq i64 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %list.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %3)
  store i64 %call, i64* %hi.addr, align 8
  %4 = load i64, i64* %hi.addr, align 8
  %cmp3 = icmp slt i64 %4, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  store i64 -1, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end.6
  %5 = load i64, i64* %lo.addr, align 8
  %6 = load i64, i64* %hi.addr, align 8
  %cmp7 = icmp slt i64 %5, %6
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, i64* %lo.addr, align 8
  %8 = load i64, i64* %hi.addr, align 8
  %add = add i64 %7, %8
  %div = udiv i64 %add, 2
  store i64 %div, i64* %mid, align 8
  %9 = load %struct._object*, %struct._object** %list.addr, align 8
  %10 = load i64, i64* %mid, align 8
  %call8 = call %struct._object* @PySequence_GetItem(%struct._object* %9, i64 %10)
  store %struct._object* %call8, %struct._object** %litem, align 8
  %11 = load %struct._object*, %struct._object** %litem, align 8
  %cmp9 = icmp eq %struct._object* %11, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  store i64 -1, i64* %retval
  br label %return

if.end.11:                                        ; preds = %while.body
  %12 = load %struct._object*, %struct._object** %litem, align 8
  %13 = load %struct._object*, %struct._object** %item.addr, align 8
  %call12 = call i32 @PyObject_RichCompareBool(%struct._object* %12, %struct._object* %13, i32 0)
  %conv = sext i32 %call12 to i64
  store i64 %conv, i64* %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %litem, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %21 = load i64, i64* %res, align 8
  %cmp17 = icmp slt i64 %21, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  store i64 -1, i64* %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  %22 = load i64, i64* %res, align 8
  %tobool = icmp ne i64 %22, 0
  br i1 %tobool, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.20
  %23 = load i64, i64* %mid, align 8
  %add22 = add i64 %23, 1
  store i64 %add22, i64* %lo.addr, align 8
  br label %if.end.24

if.else.23:                                       ; preds = %if.end.20
  %24 = load i64, i64* %mid, align 8
  store i64 %24, i64* %hi.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i64, i64* %lo.addr, align 8
  store i64 %25, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.19, %if.then.10, %if.then.4, %if.then
  %26 = load i64, i64* %retval
  ret i64 %26
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
