; ModuleID = './abstract.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, {}*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, {}*, {}*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, {}*, {}*, i32 (%struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}*, i8*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_atomic_address = type { i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyFloatObject = type { %struct._object, double }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@PyObject_LengthHint.PyId___length_hint__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._object* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"__length_hint__ must be an integer, not %.100s\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"__length_hint__() should return >= 0\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"sequence index must be integer, not '%.200s'\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"'%.200s' object is not subscriptable\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"'%.200s' object does not support item assignment\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"'%.200s' object does not support item deletion\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"expected bytes, bytearray or buffer compatible object\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"expected an object with a buffer interface\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"expected an object with a writable buffer interface\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"'%.100s' does not support the buffer interface\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"both destination and source must have the buffer interface\00", align 1
@PyExc_BufferError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [53 x i8] c"destination is too small to receive data from source\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Object is not writable.\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@PyObject_Format.PyId___format__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %struct._object* null }, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"__format__\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Type %.100s doesn't define __format__\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"__format__ method did not return string\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"divmod()\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"** or pow()\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"//=\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"**=\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"bad operand type for unary -: '%.200s'\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"bad operand type for unary +: '%.200s'\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"bad operand type for unary ~: '%.200s'\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"bad operand type for abs(): '%.200s'\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"'%.200s' object cannot be interpreted as an integer\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@.str.48 = private unnamed_addr constant [41 x i8] c"__index__ returned non-int (type %.200s)\00", align 1
@PyExc_DeprecationWarning = external global %struct._object*, align 8
@.str.49 = private unnamed_addr constant [170 x i8] c"__index__ returned non-int (type %.200s).  The ability to return an instance of a strict subclass of int is deprecated, and may be removed in a future version of Python.\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.50 = private unnamed_addr constant [48 x i8] c"cannot fit '%.200s' into an index-sized integer\00", align 1
@PyNumber_Long.PyId___trunc__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), %struct._object* null }, align 8
@.str.51 = private unnamed_addr constant [10 x i8] c"__trunc__\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"__trunc__ returned non-Integral (type %.200s)\00", align 1
@.str.53 = private unnamed_addr constant [58 x i8] c"int() argument must be a string or a number, not '%.200s'\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@.str.54 = private unnamed_addr constant [43 x i8] c"__float__ returned non-float (type %.200s)\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"PyNumber_ToBase: index not int\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"object of type '%.200s' has no len()\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"'%.200s' object can't be concatenated\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"'%.200s' object can't be repeated\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"'%.200s' object does not support indexing\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"'%.200s' object is unsliceable\00", align 1
@.str.61 = private unnamed_addr constant [46 x i8] c"'%.200s' object doesn't support item deletion\00", align 1
@.str.62 = private unnamed_addr constant [49 x i8] c"'%.200s' object doesn't support slice assignment\00", align 1
@.str.63 = private unnamed_addr constant [47 x i8] c"'%.200s' object doesn't support slice deletion\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@PyList_Type = external global %struct._typeobject, align 8
@.str.64 = private unnamed_addr constant [42 x i8] c"argument of type '%.200s' is not iterable\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"count exceeds C integer size\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"index exceeds C integer size\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"sequence.index(x): x not in sequence\00", align 1
@PyMapping_Keys.PyId_keys = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %struct._object* null }, align 8
@.str.68 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@.str.69 = private unnamed_addr constant [26 x i8] c"o.keys() are not iterable\00", align 1
@PyMapping_Items.PyId_items = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), %struct._object* null }, align 8
@.str.70 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"o.items() are not iterable\00", align 1
@PyMapping_Values.PyId_values = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), %struct._object* null }, align 8
@.str.72 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"o.values() are not iterable\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@_Py_CheckRecursionLimit = external global i32, align 4
@.str.74 = private unnamed_addr constant [31 x i8] c" while calling a Python object\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.75 = private unnamed_addr constant [43 x i8] c"NULL result without error in PyObject_Call\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"'%.200s' object is not callable\00", align 1
@PyObject_IsInstance.PyId___instancecheck__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0), %struct._object* null }, align 8
@.str.77 = private unnamed_addr constant [18 x i8] c"__instancecheck__\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c" in __instancecheck__\00", align 1
@PyObject_IsSubclass.PyId___subclasscheck__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), %struct._object* null }, align 8
@.str.79 = private unnamed_addr constant [18 x i8] c"__subclasscheck__\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c" in __subclasscheck__\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"'%.200s' object is not iterable\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"iter() returned non-iterator of type '%.100s'\00", align 1
@PyExc_StopIteration = external global %struct._object*, align 8
@.str.83 = private unnamed_addr constant [34 x i8] c"null argument to internal routine\00", align 1
@.str.84 = private unnamed_addr constant [62 x i8] c"unsupported operand type(s) for %.100s: '%.100s' and '%.100s'\00", align 1
@.str.85 = private unnamed_addr constant [52 x i8] c"can't multiply sequence by non-int of type '%.200s'\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.86 = private unnamed_addr constant [67 x i8] c"unsupported operand type(s) for ** or pow(): '%.100s' and '%.100s'\00", align 1
@.str.87 = private unnamed_addr constant [68 x i8] c"unsupported operand type(s) for pow(): '%.100s', '%.100s', '%.100s'\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"attribute of type '%.200s' is not callable\00", align 1
@recursive_isinstance.PyId___class__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), %struct._object* null }, align 8
@.str.89 = private unnamed_addr constant [10 x i8] c"__class__\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.90 = private unnamed_addr constant [52 x i8] c"isinstance() arg 2 must be a type or tuple of types\00", align 1
@abstract_get_bases.PyId___bases__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), %struct._object* null }, align 8
@.str.91 = private unnamed_addr constant [10 x i8] c"__bases__\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"issubclass() arg 1 must be a class\00", align 1
@.str.93 = private unnamed_addr constant [55 x i8] c"issubclass() arg 2 must be a class or tuple of classes\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_Type(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = bitcast %struct._typeobject* %2 to %struct._object*
  store %struct._object* %3, %struct._object** %v, align 8
  %4 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @null_error() #0 {
entry:
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define i64 @PyObject_Size(%struct._object* %o) #0 {
entry:
  %retval = alloca i64, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 11
  %3 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %3, %struct.PySequenceMethods** %m, align 8
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %5, i32 0, i32 0
  %6 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length, align 8
  %tobool1 = icmp ne i64 (%struct._object*)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length3 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %7, i32 0, i32 0
  %8 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length3, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %call4 = call i64 %8(%struct._object* %9)
  store i64 %call4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %call6 = call i64 @PyMapping_Size(%struct._object* %10)
  store i64 %call6, i64* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @PyMapping_Size(%struct._object* %o) #0 {
entry:
  %retval = alloca i64, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyMappingMethods*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 12
  %3 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  store %struct.PyMappingMethods* %3, %struct.PyMappingMethods** %m, align 8
  %4 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %tobool = icmp ne %struct.PyMappingMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %mp_length = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %5, i32 0, i32 0
  %6 = load i64 (%struct._object*)*, i64 (%struct._object*)** %mp_length, align 8
  %tobool1 = icmp ne i64 (%struct._object*)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %mp_length3 = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %7, i32 0, i32 0
  %8 = load i64 (%struct._object*)*, i64 (%struct._object*)** %mp_length3, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %call4 = call i64 %8(%struct._object* %9)
  store i64 %call4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %call6 = call %struct._object* @type_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i32 0, i32 0), %struct._object* %10)
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @PyObject_Length(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i64 @PyObject_Size(%struct._object* %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @_PyObject_HasLen(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 11
  %2 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %2, null
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_sequence2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 11
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence2, align 8
  %sq_length = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %5, i32 0, i32 0
  %6 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length, align 8
  %tobool3 = icmp ne i64 (%struct._object*)* %6, null
  br i1 %tobool3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %7 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 12
  %9 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  %tobool5 = icmp ne %struct.PyMappingMethods* %9, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_as_mapping7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 12
  %12 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping7, align 8
  %mp_length = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %12, i32 0, i32 0
  %13 = load i64 (%struct._object*)*, i64 (%struct._object*)** %mp_length, align 8
  %tobool8 = icmp ne i64 (%struct._object*)* %13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %14 = phi i1 [ false, %lor.rhs ], [ %tobool8, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %15 = phi i1 [ true, %land.lhs.true ], [ %14, %land.end ]
  %lor.ext = zext i1 %15 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i64 @PyObject_LengthHint(%struct._object* %o, i64 %defaultvalue) #0 {
entry:
  %retval = alloca i64, align 8
  %o.addr = alloca %struct._object*, align 8
  %defaultvalue.addr = alloca i64, align 8
  %hint = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %res = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i64 %defaultvalue, i64* %defaultvalue.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i32 @_PyObject_HasLen(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %call1 = call i64 @PyObject_Size(%struct._object* %1)
  store i64 %call1, i64* %res, align 8
  %2 = load i64, i64* %res, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool3 = icmp ne %struct._object* %call2, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call5 = call i32 @PyErr_ExceptionMatches(%struct._object* %3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  call void @PyErr_Clear()
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load i64, i64* %res, align 8
  store i64 %4, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %5 = load %struct._object*, %struct._object** %o.addr, align 8
  %call10 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %5, %struct._Py_Identifier* @PyObject_LengthHint.PyId___length_hint__)
  store %struct._object* %call10, %struct._object** %hint, align 8
  %6 = load %struct._object*, %struct._object** %hint, align 8
  %cmp11 = icmp eq %struct._object* %6, null
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.9
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i64 -1, i64* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %7 = load i64, i64* %defaultvalue.addr, align 8
  store i64 %7, i64* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.9
  %8 = load %struct._object*, %struct._object** %hint, align 8
  %call18 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %8, i8* null)
  store %struct._object* %call18, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %9 = load %struct._object*, %struct._object** %hint, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else.21:                                       ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %16 = load %struct._object*, %struct._object** %result, align 8
  %cmp23 = icmp eq %struct._object* %16, null
  br i1 %cmp23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %do.end
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call25 = call i32 @PyErr_ExceptionMatches(%struct._object* %17)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  call void @PyErr_Clear()
  %18 = load i64, i64* %defaultvalue.addr, align 8
  store i64 %18, i64* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.24
  store i64 -1, i64* %retval
  br label %return

if.else.29:                                       ; preds = %do.end
  %19 = load %struct._object*, %struct._object** %result, align 8
  %cmp30 = icmp eq %struct._object* %19, @_Py_NotImplementedStruct
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %if.else.29
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %20 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp33, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %22, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %25(%struct._object* %26)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %27 = load i64, i64* %defaultvalue.addr, align 8
  store i64 %27, i64* %retval
  br label %return

if.end.43:                                        ; preds = %if.else.29
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  %28 = load %struct._object*, %struct._object** %result, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 19
  %30 = load i64, i64* %tp_flags, align 8
  %and = and i64 %30, 16777216
  %cmp46 = icmp ne i64 %and, 0
  br i1 %cmp46, label %if.end.61, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  %31 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %32 = load %struct._object*, %struct._object** %result, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 1
  %34 = load i8*, i8** %tp_name, align 8
  %call49 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i8* %34)
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.47
  %35 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp51, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %37, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.50
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %40(%struct._object* %41)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  store i64 -1, i64* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.44
  %42 = load %struct._object*, %struct._object** %result, align 8
  %call62 = call i64 @PyLong_AsSsize_t(%struct._object* %42)
  store i64 %call62, i64* %res, align 8
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.61
  %43 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp64, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %45, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.63
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %48(%struct._object* %49)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %50 = load i64, i64* %res, align 8
  %cmp74 = icmp slt i64 %50, 0
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.79

land.lhs.true.75:                                 ; preds = %do.end.73
  %call76 = call %struct._object* @PyErr_Occurred()
  %tobool77 = icmp ne %struct._object* %call76, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %land.lhs.true.75
  store i64 -1, i64* %retval
  br label %return

if.end.79:                                        ; preds = %land.lhs.true.75, %do.end.73
  %51 = load i64, i64* %res, align 8
  %cmp80 = icmp slt i64 %51, 0
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %52 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call82 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end.83:                                        ; preds = %if.end.79
  %53 = load i64, i64* %res, align 8
  store i64 %53, i64* %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then.81, %if.then.78, %do.end.60, %do.end.42, %if.end.28, %if.then.27, %if.end.16, %if.then.15, %if.else, %if.then.7
  %54 = load i64, i64* %retval
  ret i64 %54
}

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_CallFunctionObjArgs(%struct._object* %callable, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  %0 = load %struct._object*, %struct._object** %callable.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call4 = call %struct._object* @objargs_mktuple(%struct.__va_list_tag* %arraydecay3)
  store %struct._object* %call4, %struct._object** %args, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %1 = load %struct._object*, %struct._object** %args, align 8
  %cmp7 = icmp eq %struct._object* %1, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %callable.addr, align 8
  %3 = load %struct._object*, %struct._object** %args, align 8
  %call10 = call %struct._object* @PyObject_Call(%struct._object* %2, %struct._object* %3, %struct._object* null)
  store %struct._object* %call10, %struct._object** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %4 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %11 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.8, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_GetItem(%struct._object* %o, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyMappingMethods*, align 8
  %key_value = alloca i64, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 12
  %4 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  store %struct.PyMappingMethods* %4, %struct.PyMappingMethods** %m, align 8
  %5 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %tobool = icmp ne %struct.PyMappingMethods* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %mp_subscript = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %6, i32 0, i32 1
  %7 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %mp_subscript, align 8
  %tobool2 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %mp_subscript4 = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %8, i32 0, i32 1
  %9 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %mp_subscript4, align 8
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %11 = load %struct._object*, %struct._object** %key.addr, align 8
  %call5 = call %struct._object* %9(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %12 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 11
  %14 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  %tobool8 = icmp ne %struct.PySequenceMethods* %14, null
  br i1 %tobool8, label %if.then.9, label %if.end.33

if.then.9:                                        ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 10
  %17 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp11 = icmp ne %struct.PyNumberMethods* %17, null
  br i1 %cmp11, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %if.then.9
  %18 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_as_number14 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 10
  %20 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number14, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %20, i32 0, i32 33
  %nb_index15 = bitcast {}** %nb_index to %struct._object* (%struct._object*)**
  %21 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index15, align 8
  %cmp16 = icmp ne %struct._object* (%struct._object*)* %21, null
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true.12
  %22 = load %struct._object*, %struct._object** %key.addr, align 8
  %23 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call18 = call i64 @PyNumber_AsSsize_t(%struct._object* %22, %struct._object* %23)
  store i64 %call18, i64* %key_value, align 8
  %24 = load i64, i64* %key_value, align 8
  %cmp19 = icmp eq i64 %24, -1
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %if.then.17
  %call21 = call %struct._object* @PyErr_Occurred()
  %tobool22 = icmp ne %struct._object* %call21, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.20, %if.then.17
  %25 = load %struct._object*, %struct._object** %o.addr, align 8
  %26 = load i64, i64* %key_value, align 8
  %call25 = call %struct._object* @PySequence_GetItem(%struct._object* %25, i64 %26)
  store %struct._object* %call25, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.12, %if.then.9
  %27 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_as_sequence27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 11
  %29 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence27, align 8
  %sq_item = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %29, i32 0, i32 3
  %30 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_item, align 8
  %tobool28 = icmp ne %struct._object* (%struct._object*, i64)* %30, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.else
  %31 = load %struct._object*, %struct._object** %key.addr, align 8
  %call30 = call %struct._object* @type_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), %struct._object* %31)
  store %struct._object* %call30, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.6
  %32 = load %struct._object*, %struct._object** %o.addr, align 8
  %call34 = call %struct._object* @type_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), %struct._object* %32)
  store %struct._object* %call34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.29, %if.end.24, %if.then.23, %if.then.3, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define i64 @PyNumber_AsSsize_t(%struct._object* %item, %struct._object* %err) #0 {
entry:
  %retval = alloca i64, align 8
  %item.addr = alloca %struct._object*, align 8
  %err.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  %runerr = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store %struct._object* %err, %struct._object** %err.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %value, align 8
  %1 = load %struct._object*, %struct._object** %value, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %value, align 8
  %call1 = call i64 @PyLong_AsSsize_t(%struct._object* %2)
  store i64 %call1, i64* %result, align 8
  %3 = load i64, i64* %result, align 8
  %cmp2 = icmp ne i64 %3, -1
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call %struct._object* @PyErr_Occurred()
  store %struct._object* %call3, %struct._object** %runerr, align 8
  %tobool = icmp ne %struct._object* %call3, null
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  br label %finish

if.end.5:                                         ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %runerr, align 8
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call6 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %4, %struct._object* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %finish

if.end.9:                                         ; preds = %if.end.5
  call void @PyErr_Clear()
  %6 = load %struct._object*, %struct._object** %err.addr, align 8
  %tobool10 = icmp ne %struct._object* %6, null
  br i1 %tobool10, label %if.else.16, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %7 = load %struct._object*, %struct._object** %value, align 8
  %call12 = call i32 @_PyLong_Sign(%struct._object* %7)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.11
  store i64 -9223372036854775808, i64* %result, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.then.11
  store i64 9223372036854775807, i64* %result, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %if.end.18

if.else.16:                                       ; preds = %if.end.9
  %8 = load %struct._object*, %struct._object** %err.addr, align 8
  %9 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name, align 8
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i32 0, i32 0), i8* %11)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.end.15
  br label %finish

finish:                                           ; preds = %if.end.18, %if.then.8, %if.then.4
  br label %do.body

do.body:                                          ; preds = %finish
  %12 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body
  br label %if.end.23

if.else.21:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %19 = load i64, i64* %result, align 8
  store i64 %19, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %20 = load i64, i64* %retval
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define %struct._object* @PySequence_GetItem(%struct._object* %s, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  %l = alloca i64, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 11
  %3 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %3, %struct.PySequenceMethods** %m, align 8
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_item = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %5, i32 0, i32 3
  %6 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_item, align 8
  %tobool1 = icmp ne %struct._object* (%struct._object*, i64)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.16

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* %i.addr, align 8
  %cmp3 = icmp slt i64 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %8, i32 0, i32 0
  %9 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length, align 8
  %tobool5 = icmp ne i64 (%struct._object*)* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.then.4
  %10 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length7 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %10, i32 0, i32 0
  %11 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length7, align 8
  %12 = load %struct._object*, %struct._object** %s.addr, align 8
  %call8 = call i64 %11(%struct._object* %12)
  store i64 %call8, i64* %l, align 8
  %13 = load i64, i64* %l, align 8
  %cmp9 = icmp slt i64 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.6
  %14 = load i64, i64* %l, align 8
  %15 = load i64, i64* %i.addr, align 8
  %add = add i64 %15, %14
  store i64 %add, i64* %i.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.2
  %16 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_item14 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %16, i32 0, i32 3
  %17 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_item14, align 8
  %18 = load %struct._object*, %struct._object** %s.addr, align 8
  %19 = load i64, i64* %i.addr, align 8
  %call15 = call %struct._object* %17(%struct._object* %18, i64 %19)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end
  %20 = load %struct._object*, %struct._object** %s.addr, align 8
  %call17 = call %struct._object* @type_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i32 0, i32 0), %struct._object* %20)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.end.13, %if.then.10, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @type_error(i8* %msg, %struct._object* %obj) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %obj.addr = alloca %struct._object*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* %1, i8* %4)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_SetItem(%struct._object* %o, %struct._object* %key, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyMappingMethods*, align 8
  %key_value = alloca i64, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 12
  %5 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  store %struct.PyMappingMethods* %5, %struct.PyMappingMethods** %m, align 8
  %6 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %tobool = icmp ne %struct.PyMappingMethods* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %mp_ass_subscript = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %7, i32 0, i32 2
  %8 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %mp_ass_subscript, align 8
  %tobool4 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %mp_ass_subscript6 = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %9, i32 0, i32 2
  %10 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %mp_ass_subscript6, align 8
  %11 = load %struct._object*, %struct._object** %o.addr, align 8
  %12 = load %struct._object*, %struct._object** %key.addr, align 8
  %13 = load %struct._object*, %struct._object** %value.addr, align 8
  %call7 = call i32 %10(%struct._object* %11, %struct._object* %12, %struct._object* %13)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  %14 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 11
  %16 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  %tobool10 = icmp ne %struct.PySequenceMethods* %16, null
  br i1 %tobool10, label %if.then.11, label %if.end.35

if.then.11:                                       ; preds = %if.end.8
  %17 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 10
  %19 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp13 = icmp ne %struct.PyNumberMethods* %19, null
  br i1 %cmp13, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %if.then.11
  %20 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_as_number16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 10
  %22 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number16, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %22, i32 0, i32 33
  %nb_index17 = bitcast {}** %nb_index to %struct._object* (%struct._object*)**
  %23 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index17, align 8
  %cmp18 = icmp ne %struct._object* (%struct._object*)* %23, null
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true.14
  %24 = load %struct._object*, %struct._object** %key.addr, align 8
  %25 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call20 = call i64 @PyNumber_AsSsize_t(%struct._object* %24, %struct._object* %25)
  store i64 %call20, i64* %key_value, align 8
  %26 = load i64, i64* %key_value, align 8
  %cmp21 = icmp eq i64 %26, -1
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.26

land.lhs.true.22:                                 ; preds = %if.then.19
  %call23 = call %struct._object* @PyErr_Occurred()
  %tobool24 = icmp ne %struct._object* %call23, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.22
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.22, %if.then.19
  %27 = load %struct._object*, %struct._object** %o.addr, align 8
  %28 = load i64, i64* %key_value, align 8
  %29 = load %struct._object*, %struct._object** %value.addr, align 8
  %call27 = call i32 @PySequence_SetItem(%struct._object* %27, i64 %28, %struct._object* %29)
  store i32 %call27, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.14, %if.then.11
  %30 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_as_sequence29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 11
  %32 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence29, align 8
  %sq_ass_item = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %32, i32 0, i32 5
  %33 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %sq_ass_item, align 8
  %tobool30 = icmp ne i32 (%struct._object*, i64, %struct._object*)* %33, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.else
  %34 = load %struct._object*, %struct._object** %key.addr, align 8
  %call32 = call %struct._object* @type_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), %struct._object* %34)
  store i32 -1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.8
  %35 = load %struct._object*, %struct._object** %o.addr, align 8
  %call36 = call %struct._object* @type_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), %struct._object* %35)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.31, %if.end.26, %if.then.25, %if.then.5, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @PySequence_SetItem(%struct._object* %s, i64 %i, %struct._object* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  %l = alloca i64, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 11
  %3 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %3, %struct.PySequenceMethods** %m, align 8
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_ass_item = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %5, i32 0, i32 5
  %6 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %sq_ass_item, align 8
  %tobool1 = icmp ne i32 (%struct._object*, i64, %struct._object*)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.16

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* %i.addr, align 8
  %cmp3 = icmp slt i64 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %8, i32 0, i32 0
  %9 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length, align 8
  %tobool5 = icmp ne i64 (%struct._object*)* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.then.4
  %10 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length7 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %10, i32 0, i32 0
  %11 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length7, align 8
  %12 = load %struct._object*, %struct._object** %s.addr, align 8
  %call8 = call i64 %11(%struct._object* %12)
  store i64 %call8, i64* %l, align 8
  %13 = load i64, i64* %l, align 8
  %cmp9 = icmp slt i64 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.6
  %14 = load i64, i64* %l, align 8
  %15 = load i64, i64* %i.addr, align 8
  %add = add i64 %15, %14
  store i64 %add, i64* %i.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.2
  %16 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_ass_item14 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %16, i32 0, i32 5
  %17 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %sq_ass_item14, align 8
  %18 = load %struct._object*, %struct._object** %s.addr, align 8
  %19 = load i64, i64* %i.addr, align 8
  %20 = load %struct._object*, %struct._object** %o.addr, align 8
  %call15 = call i32 %17(%struct._object* %18, i64 %19, %struct._object* %20)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end
  %21 = load %struct._object*, %struct._object** %s.addr, align 8
  %call17 = call %struct._object* @type_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), %struct._object* %21)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.end.13, %if.then.10, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_DelItem(%struct._object* %o, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyMappingMethods*, align 8
  %key_value = alloca i64, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 12
  %4 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  store %struct.PyMappingMethods* %4, %struct.PyMappingMethods** %m, align 8
  %5 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %tobool = icmp ne %struct.PyMappingMethods* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %mp_ass_subscript = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %6, i32 0, i32 2
  %7 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %mp_ass_subscript, align 8
  %tobool2 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %m, align 8
  %mp_ass_subscript4 = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %8, i32 0, i32 2
  %9 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %mp_ass_subscript4, align 8
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %11 = load %struct._object*, %struct._object** %key.addr, align 8
  %call5 = call i32 %9(%struct._object* %10, %struct._object* %11, %struct._object* null)
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %12 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 11
  %14 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  %tobool8 = icmp ne %struct.PySequenceMethods* %14, null
  br i1 %tobool8, label %if.then.9, label %if.end.33

if.then.9:                                        ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 10
  %17 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp11 = icmp ne %struct.PyNumberMethods* %17, null
  br i1 %cmp11, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %if.then.9
  %18 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_as_number14 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 10
  %20 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number14, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %20, i32 0, i32 33
  %nb_index15 = bitcast {}** %nb_index to %struct._object* (%struct._object*)**
  %21 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index15, align 8
  %cmp16 = icmp ne %struct._object* (%struct._object*)* %21, null
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true.12
  %22 = load %struct._object*, %struct._object** %key.addr, align 8
  %23 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call18 = call i64 @PyNumber_AsSsize_t(%struct._object* %22, %struct._object* %23)
  store i64 %call18, i64* %key_value, align 8
  %24 = load i64, i64* %key_value, align 8
  %cmp19 = icmp eq i64 %24, -1
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %if.then.17
  %call21 = call %struct._object* @PyErr_Occurred()
  %tobool22 = icmp ne %struct._object* %call21, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.20, %if.then.17
  %25 = load %struct._object*, %struct._object** %o.addr, align 8
  %26 = load i64, i64* %key_value, align 8
  %call25 = call i32 @PySequence_DelItem(%struct._object* %25, i64 %26)
  store i32 %call25, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.12, %if.then.9
  %27 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_as_sequence27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 11
  %29 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence27, align 8
  %sq_ass_item = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %29, i32 0, i32 5
  %30 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %sq_ass_item, align 8
  %tobool28 = icmp ne i32 (%struct._object*, i64, %struct._object*)* %30, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.else
  %31 = load %struct._object*, %struct._object** %key.addr, align 8
  %call30 = call %struct._object* @type_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), %struct._object* %31)
  store i32 -1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.6
  %32 = load %struct._object*, %struct._object** %o.addr, align 8
  %call34 = call %struct._object* @type_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), %struct._object* %32)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.29, %if.end.24, %if.then.23, %if.then.3, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @PySequence_DelItem(%struct._object* %s, i64 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  %l = alloca i64, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 11
  %3 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %3, %struct.PySequenceMethods** %m, align 8
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_ass_item = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %5, i32 0, i32 5
  %6 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %sq_ass_item, align 8
  %tobool1 = icmp ne i32 (%struct._object*, i64, %struct._object*)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.16

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* %i.addr, align 8
  %cmp3 = icmp slt i64 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %8, i32 0, i32 0
  %9 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length, align 8
  %tobool5 = icmp ne i64 (%struct._object*)* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.then.4
  %10 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length7 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %10, i32 0, i32 0
  %11 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length7, align 8
  %12 = load %struct._object*, %struct._object** %s.addr, align 8
  %call8 = call i64 %11(%struct._object* %12)
  store i64 %call8, i64* %l, align 8
  %13 = load i64, i64* %l, align 8
  %cmp9 = icmp slt i64 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.6
  %14 = load i64, i64* %l, align 8
  %15 = load i64, i64* %i.addr, align 8
  %add = add i64 %15, %14
  store i64 %add, i64* %i.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.2
  %16 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_ass_item14 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %16, i32 0, i32 5
  %17 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %sq_ass_item14, align 8
  %18 = load %struct._object*, %struct._object** %s.addr, align 8
  %19 = load i64, i64* %i.addr, align 8
  %call15 = call i32 %17(%struct._object* %18, i64 %19, %struct._object* null)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end
  %20 = load %struct._object*, %struct._object** %s.addr, align 8
  %call17 = call %struct._object* @type_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.61, i32 0, i32 0), %struct._object* %20)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.end.13, %if.then.10, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_DelItemString(%struct._object* %o, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %okey = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %key.addr, align 8
  %call2 = call %struct._object* @PyUnicode_FromString(i8* %2)
  store %struct._object* %call2, %struct._object** %okey, align 8
  %3 = load %struct._object*, %struct._object** %okey, align 8
  %cmp3 = icmp eq %struct._object* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %o.addr, align 8
  %5 = load %struct._object*, %struct._object** %okey, align 8
  %call6 = call i32 @PyObject_DelItem(%struct._object* %4, %struct._object* %5)
  store i32 %call6, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %6 = load %struct._object*, %struct._object** %okey, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyObject_AsCharBuffer(%struct._object* %obj, i8** %buffer, i64* %buffer_len) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %buffer.addr = alloca i8**, align 8
  %buffer_len.addr = alloca i64*, align 8
  %pb = alloca %struct.PyBufferProcs*, align 8
  %view = alloca %struct.bufferinfo, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64* %buffer_len, i64** %buffer_len.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %buffer.addr, align 8
  %cmp1 = icmp eq i8** %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i64*, i64** %buffer_len.addr, align 8
  %cmp3 = icmp eq i64* %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 18
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  store %struct.PyBufferProcs* %5, %struct.PyBufferProcs** %pb, align 8
  %6 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %cmp4 = icmp eq %struct.PyBufferProcs* %6, null
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %7 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %7, i32 0, i32 0
  %8 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp6 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.5, %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false.5
  %10 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_getbuffer9 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %10, i32 0, i32 0
  %11 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer9, align 8
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call10 = call i32 %11(%struct._object* %12, %struct.bufferinfo* %view, i32 0)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 0
  %13 = load i8*, i8** %buf, align 8
  %14 = load i8**, i8*** %buffer.addr, align 8
  store i8* %13, i8** %14, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %15 = load i64, i64* %len, align 8
  %16 = load i64*, i64** %buffer_len.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_releasebuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %17, i32 0, i32 1
  %18 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer, align 8
  %cmp13 = icmp ne void (%struct._object*, %struct.bufferinfo*)* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %19 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_releasebuffer15 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %19, i32 0, i32 1
  %20 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer15, align 8
  %21 = load %struct._object*, %struct._object** %obj.addr, align 8
  call void %20(%struct._object* %21, %struct.bufferinfo* %view)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %obj17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %obj17, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp18 = icmp ne %struct._object* %23, null
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %do.body
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else:                                          ; preds = %do.body.20
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  br label %if.end.25

if.end.25:                                        ; preds = %do.end, %do.body
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.11, %if.then.7, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyObject_CheckReadBuffer(%struct._object* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %pb = alloca %struct.PyBufferProcs*, align 8
  %view = alloca %struct.bufferinfo, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 18
  %2 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  store %struct.PyBufferProcs* %2, %struct.PyBufferProcs** %pb, align 8
  %3 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %cmp = icmp eq %struct.PyBufferProcs* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %4, i32 0, i32 0
  %5 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp1 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_getbuffer2 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %6, i32 0, i32 0
  %7 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer2, align 8
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 %7(%struct._object* %8, %struct.bufferinfo* %view, i32 0)
  %cmp3 = icmp eq i32 %call, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @PyBuffer_Release(%struct.bufferinfo* %view) #0 {
entry:
  %view.addr = alloca %struct.bufferinfo*, align 8
  %obj = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %obj1, align 8
  store %struct._object* %1, %struct._object** %obj, align 8
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 18
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %tobool2 = icmp ne %struct.PyBufferProcs* %5, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_as_buffer5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 18
  %8 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer5, align 8
  %bf_releasebuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %8, i32 0, i32 1
  %9 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer, align 8
  %tobool6 = icmp ne void (%struct._object*, %struct.bufferinfo*)* %9, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %10 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_as_buffer8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 18
  %12 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer8, align 8
  %bf_releasebuffer9 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %12, i32 0, i32 1
  %13 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer9, align 8
  %14 = load %struct._object*, %struct._object** %obj, align 8
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  call void %13(%struct._object* %14, %struct.bufferinfo* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %17, null
  br i1 %cmp, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else:                                          ; preds = %do.body.11
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %do.body
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 1
  store %struct._object* null, %struct._object** %obj18, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_AsReadBuffer(%struct._object* %obj, i8** %buffer, i64* %buffer_len) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %buffer.addr = alloca i8**, align 8
  %buffer_len.addr = alloca i64*, align 8
  %pb = alloca %struct.PyBufferProcs*, align 8
  %view = alloca %struct.bufferinfo, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64* %buffer_len, i64** %buffer_len.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %buffer.addr, align 8
  %cmp1 = icmp eq i8** %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i64*, i64** %buffer_len.addr, align 8
  %cmp3 = icmp eq i64* %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 18
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  store %struct.PyBufferProcs* %5, %struct.PyBufferProcs** %pb, align 8
  %6 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %cmp4 = icmp eq %struct.PyBufferProcs* %6, null
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %7 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %7, i32 0, i32 0
  %8 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp6 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.5, %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false.5
  %10 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_getbuffer9 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %10, i32 0, i32 0
  %11 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer9, align 8
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call10 = call i32 %11(%struct._object* %12, %struct.bufferinfo* %view, i32 0)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 0
  %13 = load i8*, i8** %buf, align 8
  %14 = load i8**, i8*** %buffer.addr, align 8
  store i8* %13, i8** %14, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %15 = load i64, i64* %len, align 8
  %16 = load i64*, i64** %buffer_len.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_releasebuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %17, i32 0, i32 1
  %18 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer, align 8
  %cmp13 = icmp ne void (%struct._object*, %struct.bufferinfo*)* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %19 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_releasebuffer15 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %19, i32 0, i32 1
  %20 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer15, align 8
  %21 = load %struct._object*, %struct._object** %obj.addr, align 8
  call void %20(%struct._object* %21, %struct.bufferinfo* %view)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %obj17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %obj17, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp18 = icmp ne %struct._object* %23, null
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %do.body
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else:                                          ; preds = %do.body.20
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  br label %if.end.25

if.end.25:                                        ; preds = %do.end, %do.body
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.11, %if.then.7, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_AsWriteBuffer(%struct._object* %obj, i8** %buffer, i64* %buffer_len) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %buffer.addr = alloca i8**, align 8
  %buffer_len.addr = alloca i64*, align 8
  %pb = alloca %struct.PyBufferProcs*, align 8
  %view = alloca %struct.bufferinfo, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64* %buffer_len, i64** %buffer_len.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %buffer.addr, align 8
  %cmp1 = icmp eq i8** %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i64*, i64** %buffer_len.addr, align 8
  %cmp3 = icmp eq i64* %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 18
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  store %struct.PyBufferProcs* %5, %struct.PyBufferProcs** %pb, align 8
  %6 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %cmp4 = icmp eq %struct.PyBufferProcs* %6, null
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %7 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %7, i32 0, i32 0
  %8 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp6 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %8, null
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.5
  %9 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_getbuffer8 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %9, i32 0, i32 0
  %10 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer8, align 8
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call9 = call i32 %10(%struct._object* %11, %struct.bufferinfo* %view, i32 1)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.5, %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false.7
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 0
  %13 = load i8*, i8** %buf, align 8
  %14 = load i8**, i8*** %buffer.addr, align 8
  store i8* %13, i8** %14, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %15 = load i64, i64* %len, align 8
  %16 = load i64*, i64** %buffer_len.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_releasebuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %17, i32 0, i32 1
  %18 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer, align 8
  %cmp13 = icmp ne void (%struct._object*, %struct.bufferinfo*)* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %19 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_releasebuffer15 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %19, i32 0, i32 1
  %20 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer15, align 8
  %21 = load %struct._object*, %struct._object** %obj.addr, align 8
  call void %20(%struct._object* %21, %struct.bufferinfo* %view)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %obj17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %obj17, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp18 = icmp ne %struct._object* %23, null
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %do.body
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else:                                          ; preds = %do.body.20
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  br label %if.end.25

if.end.25:                                        ; preds = %do.end, %do.body
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.11, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_GetBuffer(%struct._object* %obj, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 18
  %2 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp = icmp ne %struct.PyBufferProcs* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_buffer2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 18
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer2, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %5, i32 0, i32 0
  %6 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp3 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %6, null
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), i8* %10)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_as_buffer6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 18
  %13 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer6, align 8
  %bf_getbuffer7 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %13, i32 0, i32 0
  %14 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer7, align 8
  %15 = load %struct._object*, %struct._object** %obj.addr, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %17 = load i32, i32* %flags.addr, align 4
  %call8 = call i32 %14(%struct._object* %15, %struct.bufferinfo* %16, i32 %17)
  store i32 %call8, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %view, i8 signext %order) #0 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct.bufferinfo*, align 8
  %order.addr = alloca i8, align 1
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i8 %order, i8* %order.addr, align 1
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 9
  %1 = load i64*, i64** %suboffsets, align 8
  %cmp = icmp ne i64* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %order.addr, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 67
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %call = call i32 @_IsCContiguous(%struct.bufferinfo* %3)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i8, i8* %order.addr, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 70
  br i1 %cmp5, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %call8 = call i32 @_IsFortranContiguous(%struct.bufferinfo* %5)
  store i32 %call8, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.else
  %6 = load i8, i8* %order.addr, align 1
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 65
  br i1 %cmp11, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.else.9
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %call14 = call i32 @_IsCContiguous(%struct.bufferinfo* %7)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.13
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %call15 = call i32 @_IsFortranContiguous(%struct.bufferinfo* %8)
  %tobool16 = icmp ne i32 %call15, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.13
  %9 = phi i1 [ true, %if.then.13 ], [ %tobool16, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.else.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %lor.end, %if.then.7, %if.then.3, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @_IsCContiguous(%struct.bufferinfo* %view) #0 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct.bufferinfo*, align 8
  %sd = alloca i64, align 8
  %dim = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 5
  %1 = load i32, i32* %ndim, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 8
  %3 = load i64*, i64** %strides, align 8
  %cmp1 = icmp eq i64* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 3
  %5 = load i64, i64* %itemsize, align 8
  store i64 %5, i64* %sd, align 8
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 5
  %7 = load i32, i32* %ndim4, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.3
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 7
  %9 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %9, i64 0
  %10 = load i64, i64* %arrayidx, align 8
  %cmp7 = icmp eq i64 %10, 1
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.6
  %11 = load i64, i64* %sd, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 8
  %13 = load i64*, i64** %strides8, align 8
  %arrayidx9 = getelementptr i64, i64* %13, i64 0
  %14 = load i64, i64* %arrayidx9, align 8
  %cmp10 = icmp eq i64 %11, %14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.6
  %15 = phi i1 [ true, %if.then.6 ], [ %cmp10, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.3
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 5
  %17 = load i32, i32* %ndim12, align 4
  %sub = sub i32 %17, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %18 = load i32, i32* %i, align 4
  %cmp13 = icmp sge i32 %18, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape14 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 7
  %21 = load i64*, i64** %shape14, align 8
  %arrayidx15 = getelementptr i64, i64* %21, i64 %idxprom
  %22 = load i64, i64* %arrayidx15, align 8
  store i64 %22, i64* %dim, align 8
  %23 = load i64, i64* %dim, align 8
  %cmp16 = icmp eq i64 %23, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 8
  %26 = load i64*, i64** %strides20, align 8
  %arrayidx21 = getelementptr i64, i64* %26, i64 %idxprom19
  %27 = load i64, i64* %arrayidx21, align 8
  %28 = load i64, i64* %sd, align 8
  %cmp22 = icmp ne i64 %27, %28
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %29 = load i64, i64* %dim, align 8
  %30 = load i64, i64* %sd, align 8
  %mul = mul i64 %30, %29
  store i64 %mul, i64* %sd, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %31 = load i32, i32* %i, align 4
  %dec = add i32 %31, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.23, %if.then.17, %lor.end, %if.then.2, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @_IsFortranContiguous(%struct.bufferinfo* %view) #0 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct.bufferinfo*, align 8
  %sd = alloca i64, align 8
  %dim = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 5
  %1 = load i32, i32* %ndim, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 8
  %3 = load i64*, i64** %strides, align 8
  %cmp1 = icmp eq i64* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 5
  %5 = load i32, i32* %ndim3, align 4
  %cmp4 = icmp eq i32 %5, 1
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 3
  %7 = load i64, i64* %itemsize, align 8
  store i64 %7, i64* %sd, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 5
  %9 = load i32, i32* %ndim6, align 4
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.5
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 7
  %11 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %11, i64 0
  %12 = load i64, i64* %arrayidx, align 8
  %cmp10 = icmp eq i64 %12, 1
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.9
  %13 = load i64, i64* %sd, align 8
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 8
  %15 = load i64*, i64** %strides12, align 8
  %arrayidx13 = getelementptr i64, i64* %15, i64 0
  %16 = load i64, i64* %arrayidx13, align 8
  %cmp14 = icmp eq i64 %13, %16
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.9
  %17 = phi i1 [ true, %if.then.9 ], [ %cmp14, %lor.rhs ]
  %lor.ext = zext i1 %17 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 5
  %20 = load i32, i32* %ndim17, align 4
  %cmp18 = icmp slt i32 %18, %20
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 7
  %23 = load i64*, i64** %shape20, align 8
  %arrayidx21 = getelementptr i64, i64* %23, i64 %idxprom
  %24 = load i64, i64* %arrayidx21, align 8
  store i64 %24, i64* %dim, align 8
  %25 = load i64, i64* %dim, align 8
  %cmp22 = icmp eq i64 %25, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 8
  %28 = load i64*, i64** %strides27, align 8
  %arrayidx28 = getelementptr i64, i64* %28, i64 %idxprom26
  %29 = load i64, i64* %arrayidx28, align 8
  %30 = load i64, i64* %sd, align 8
  %cmp29 = icmp ne i64 %29, %30
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.25
  %31 = load i64, i64* %dim, align 8
  %32 = load i64, i64* %sd, align 8
  %mul = mul i64 %32, %31
  store i64 %mul, i64* %sd, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %33 = load i32, i32* %i, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.31, %if.then.24, %lor.end, %if.then.2, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i8* @PyBuffer_GetPointer(%struct.bufferinfo* %view, i64* %indices) #0 {
entry:
  %view.addr = alloca %struct.bufferinfo*, align 8
  %indices.addr = alloca i64*, align 8
  %pointer = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i64* %indices, i64** %indices.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %pointer, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 5
  %4 = load i32, i32* %ndim, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 8
  %7 = load i64*, i64** %strides, align 8
  %arrayidx = getelementptr i64, i64* %7, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load i64*, i64** %indices.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %10, i64 %idxprom1
  %11 = load i64, i64* %arrayidx2, align 8
  %mul = mul i64 %8, %11
  %12 = load i8*, i8** %pointer, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 %mul
  store i8* %add.ptr, i8** %pointer, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 9
  %14 = load i64*, i64** %suboffsets, align 8
  %cmp3 = icmp ne i64* %14, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %suboffsets5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 9
  %17 = load i64*, i64** %suboffsets5, align 8
  %arrayidx6 = getelementptr i64, i64* %17, i64 %idxprom4
  %18 = load i64, i64* %arrayidx6, align 8
  %cmp7 = icmp sge i64 %18, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i8*, i8** %pointer, align 8
  %20 = bitcast i8* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %22 to i64
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %suboffsets9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 9
  %24 = load i64*, i64** %suboffsets9, align 8
  %arrayidx10 = getelementptr i64, i64* %24, i64 %idxprom8
  %25 = load i64, i64* %arrayidx10, align 8
  %add.ptr11 = getelementptr i8, i8* %21, i64 %25
  store i8* %add.ptr11, i8** %pointer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i8*, i8** %pointer, align 8
  ret i8* %27
}

; Function Attrs: nounwind uwtable
define void @_Py_add_one_to_index_F(i32 %nd, i64* %index, i64* %shape) #0 {
entry:
  %nd.addr = alloca i32, align 4
  %index.addr = alloca i64*, align 8
  %shape.addr = alloca i64*, align 8
  %k = alloca i32, align 4
  store i32 %nd, i32* %nd.addr, align 4
  store i64* %index, i64** %index.addr, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %nd.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i64*, i64** %index.addr, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i64*, i64** %shape.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %6, i64 %idxprom1
  %7 = load i64, i64* %arrayidx2, align 8
  %sub = sub i64 %7, 1
  %cmp3 = icmp slt i64 %4, %sub
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i64*, i64** %index.addr, align 8
  %arrayidx5 = getelementptr i64, i64* %9, i64 %idxprom4
  %10 = load i64, i64* %arrayidx5, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %arrayidx5, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i64*, i64** %index.addr, align 8
  %arrayidx7 = getelementptr i64, i64* %12, i64 %idxprom6
  store i64 0, i64* %arrayidx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %k, align 4
  %inc8 = add i32 %13, 1
  store i32 %inc8, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Py_add_one_to_index_C(i32 %nd, i64* %index, i64* %shape) #0 {
entry:
  %nd.addr = alloca i32, align 4
  %index.addr = alloca i64*, align 8
  %shape.addr = alloca i64*, align 8
  %k = alloca i32, align 4
  store i32 %nd, i32* %nd.addr, align 4
  store i64* %index, i64** %index.addr, align 8
  store i64* %shape, i64** %shape.addr, align 8
  %0 = load i32, i32* %nd.addr, align 4
  %sub = sub i32 %0, 1
  store i32 %sub, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i64*, i64** %index.addr, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i64*, i64** %shape.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %6, i64 %idxprom1
  %7 = load i64, i64* %arrayidx2, align 8
  %sub3 = sub i64 %7, 1
  %cmp4 = icmp slt i64 %4, %sub3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i64*, i64** %index.addr, align 8
  %arrayidx6 = getelementptr i64, i64* %9, i64 %idxprom5
  %10 = load i64, i64* %arrayidx6, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %arrayidx6, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i64*, i64** %index.addr, align 8
  %arrayidx8 = getelementptr i64, i64* %12, i64 %idxprom7
  store i64 0, i64* %arrayidx8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %k, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyBuffer_FromContiguous(%struct.bufferinfo* %view, i8* %buf, i64 %len, i8 signext %fort) #0 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct.bufferinfo*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %fort.addr = alloca i8, align 1
  %k = alloca i32, align 4
  %addone = alloca void (i32, i64*, i64*)*, align 8
  %indices = alloca i64*, align 8
  %elements = alloca i64, align 8
  %src = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8 %fort, i8* %fort.addr, align 1
  %0 = load i64, i64* %len.addr, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 2
  %2 = load i64, i64* %len1, align 8
  %cmp = icmp sgt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len2, align 8
  store i64 %4, i64* %len.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %6 = load i8, i8* %fort.addr, align 1
  %call = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %5, i8 signext %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %buf4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf4, align 8
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %10, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 5
  %12 = load i32, i32* %ndim, align 4
  %conv = sext i32 %12 to i64
  %mul = mul i64 8, %conv
  %call6 = call i8* @PyMem_Malloc(i64 %mul)
  %13 = bitcast i8* %call6 to i64*
  store i64* %13, i64** %indices, align 8
  %14 = load i64*, i64** %indices, align 8
  %cmp7 = icmp eq i64* %14, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %call10 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %15 = load i32, i32* %k, align 4
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 5
  %17 = load i32, i32* %ndim12, align 4
  %cmp13 = icmp slt i32 %15, %17
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %k, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i64*, i64** %indices, align 8
  %arrayidx = getelementptr i64, i64* %19, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %k, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8, i8* %fort.addr, align 1
  %conv15 = sext i8 %21 to i32
  %cmp16 = icmp eq i32 %conv15, 70
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.end
  store void (i32, i64*, i64*)* @_Py_add_one_to_index_F, void (i32, i64*, i64*)** %addone, align 8
  br label %if.end.19

if.else:                                          ; preds = %for.end
  store void (i32, i64*, i64*)* @_Py_add_one_to_index_C, void (i32, i64*, i64*)** %addone, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %22 = load i8*, i8** %buf.addr, align 8
  store i8* %22, i8** %src, align 8
  %23 = load i64, i64* %len.addr, align 8
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 3
  %25 = load i64, i64* %itemsize, align 8
  %div = sdiv i64 %23, %25
  store i64 %div, i64* %elements, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.19
  %26 = load i64, i64* %elements, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %elements, align 8
  %tobool20 = icmp ne i64 %26, 0
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load void (i32, i64*, i64*)*, void (i32, i64*, i64*)** %addone, align 8
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 5
  %29 = load i32, i32* %ndim21, align 4
  %30 = load i64*, i64** %indices, align 8
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 7
  %32 = load i64*, i64** %shape, align 8
  call void %27(i32 %29, i64* %30, i64* %32)
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %34 = load i64*, i64** %indices, align 8
  %call22 = call i8* @PyBuffer_GetPointer(%struct.bufferinfo* %33, i64* %34)
  store i8* %call22, i8** %ptr, align 8
  %35 = load i8*, i8** %ptr, align 8
  %36 = load i8*, i8** %src, align 8
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize23 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 3
  %38 = load i64, i64* %itemsize23, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 %38, i32 1, i1 false)
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 3
  %40 = load i64, i64* %itemsize24, align 8
  %41 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr i8, i8* %41, i64 %40
  store i8* %add.ptr, i8** %src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i64*, i64** %indices, align 8
  %43 = bitcast i64* %42 to i8*
  call void @PyMem_Free(i8* %43)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.9, %if.then.3
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyObject_CopyData(%struct._object* %dest, %struct._object* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct._object*, align 8
  %src.addr = alloca %struct._object*, align 8
  %view_dest = alloca %struct.bufferinfo, align 8
  %view_src = alloca %struct.bufferinfo, align 8
  %k = alloca i32, align 4
  %indices = alloca i64*, align 8
  %elements = alloca i64, align 8
  %dptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  store %struct._object* %dest, %struct._object** %dest.addr, align 8
  store %struct._object* %src, %struct._object** %src.addr, align 8
  %0 = load %struct._object*, %struct._object** %dest.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 18
  %2 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp = icmp ne %struct.PyBufferProcs* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %dest.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_buffer2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 18
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer2, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %5, i32 0, i32 0
  %6 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp3 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %6, null
  br i1 %cmp3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %src.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_as_buffer5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 18
  %9 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer5, align 8
  %cmp6 = icmp ne %struct.PyBufferProcs* %9, null
  br i1 %cmp6, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %10 = load %struct._object*, %struct._object** %src.addr, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_as_buffer9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 18
  %12 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer9, align 8
  %bf_getbuffer10 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %12, i32 0, i32 0
  %13 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer10, align 8
  %cmp11 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %13, null
  br i1 %cmp11, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.7, %lor.lhs.false, %land.lhs.true, %entry
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7
  %15 = load %struct._object*, %struct._object** %dest.addr, align 8
  %call = call i32 @PyObject_GetBuffer(%struct._object* %15, %struct.bufferinfo* %view_dest, i32 285)
  %cmp12 = icmp ne i32 %call, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %src.addr, align 8
  %call15 = call i32 @PyObject_GetBuffer(%struct._object* %16, %struct.bufferinfo* %view_src, i32 284)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  call void @PyBuffer_Release(%struct.bufferinfo* %view_dest)
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_dest, i32 0, i32 2
  %17 = load i64, i64* %len, align 8
  %len19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 2
  %18 = load i64, i64* %len19, align 8
  %cmp20 = icmp slt i64 %17, %18
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %19 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %view_dest)
  call void @PyBuffer_Release(%struct.bufferinfo* %view_src)
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %call23 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %view_dest, i8 signext 67)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %land.lhs.true.24, label %lor.lhs.false.27

land.lhs.true.24:                                 ; preds = %if.end.22
  %call25 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %view_src, i8 signext 67)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.33, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.24, %if.end.22
  %call28 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %view_dest, i8 signext 70)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.36

land.lhs.true.30:                                 ; preds = %lor.lhs.false.27
  %call31 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %view_src, i8 signext 70)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %land.lhs.true.30, %land.lhs.true.24
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_dest, i32 0, i32 0
  %20 = load i8*, i8** %buf, align 8
  %buf34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 0
  %21 = load i8*, i8** %buf34, align 8
  %len35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 2
  %22 = load i64, i64* %len35, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 %22, i32 1, i1 false)
  call void @PyBuffer_Release(%struct.bufferinfo* %view_dest)
  call void @PyBuffer_Release(%struct.bufferinfo* %view_src)
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %land.lhs.true.30, %lor.lhs.false.27
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 5
  %23 = load i32, i32* %ndim, align 4
  %conv = sext i32 %23 to i64
  %mul = mul i64 8, %conv
  %call37 = call i8* @PyMem_Malloc(i64 %mul)
  %24 = bitcast i8* %call37 to i64*
  store i64* %24, i64** %indices, align 8
  %25 = load i64*, i64** %indices, align 8
  %cmp38 = icmp eq i64* %25, null
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.36
  %call41 = call %struct._object* @PyErr_NoMemory()
  call void @PyBuffer_Release(%struct.bufferinfo* %view_dest)
  call void @PyBuffer_Release(%struct.bufferinfo* %view_src)
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.36
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.42
  %26 = load i32, i32* %k, align 4
  %ndim43 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 5
  %27 = load i32, i32* %ndim43, align 4
  %cmp44 = icmp slt i32 %26, %27
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %k, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i64*, i64** %indices, align 8
  %arrayidx = getelementptr i64, i64* %29, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %k, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 1, i64* %elements, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.54, %for.end
  %31 = load i32, i32* %k, align 4
  %ndim47 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 5
  %32 = load i32, i32* %ndim47, align 4
  %cmp48 = icmp slt i32 %31, %32
  br i1 %cmp48, label %for.body.50, label %for.end.56

for.body.50:                                      ; preds = %for.cond.46
  %33 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %33 to i64
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 7
  %34 = load i64*, i64** %shape, align 8
  %arrayidx52 = getelementptr i64, i64* %34, i64 %idxprom51
  %35 = load i64, i64* %arrayidx52, align 8
  %36 = load i64, i64* %elements, align 8
  %mul53 = mul i64 %36, %35
  store i64 %mul53, i64* %elements, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.50
  %37 = load i32, i32* %k, align 4
  %inc55 = add i32 %37, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond.46

for.end.56:                                       ; preds = %for.cond.46
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.56
  %38 = load i64, i64* %elements, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %elements, align 8
  %tobool57 = icmp ne i64 %38, 0
  br i1 %tobool57, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %ndim58 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 5
  %39 = load i32, i32* %ndim58, align 4
  %40 = load i64*, i64** %indices, align 8
  %shape59 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 7
  %41 = load i64*, i64** %shape59, align 8
  call void @_Py_add_one_to_index_C(i32 %39, i64* %40, i64* %41)
  %42 = load i64*, i64** %indices, align 8
  %call60 = call i8* @PyBuffer_GetPointer(%struct.bufferinfo* %view_dest, i64* %42)
  store i8* %call60, i8** %dptr, align 8
  %43 = load i64*, i64** %indices, align 8
  %call61 = call i8* @PyBuffer_GetPointer(%struct.bufferinfo* %view_src, i64* %43)
  store i8* %call61, i8** %sptr, align 8
  %44 = load i8*, i8** %dptr, align 8
  %45 = load i8*, i8** %sptr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_src, i32 0, i32 3
  %46 = load i64, i64* %itemsize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 %46, i32 1, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load i64*, i64** %indices, align 8
  %48 = bitcast i64* %47 to i8*
  call void @PyMem_Free(i8* %48)
  call void @PyBuffer_Release(%struct.bufferinfo* %view_dest)
  call void @PyBuffer_Release(%struct.bufferinfo* %view_src)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.40, %if.then.33, %if.then.21, %if.then.17, %if.then.13, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define void @PyBuffer_FillContiguousStrides(i32 %nd, i64* %shape, i64* %strides, i32 %itemsize, i8 signext %fort) #0 {
entry:
  %nd.addr = alloca i32, align 4
  %shape.addr = alloca i64*, align 8
  %strides.addr = alloca i64*, align 8
  %itemsize.addr = alloca i32, align 4
  %fort.addr = alloca i8, align 1
  %k = alloca i32, align 4
  %sd = alloca i64, align 8
  store i32 %nd, i32* %nd.addr, align 4
  store i64* %shape, i64** %shape.addr, align 8
  store i64* %strides, i64** %strides.addr, align 8
  store i32 %itemsize, i32* %itemsize.addr, align 4
  store i8 %fort, i8* %fort.addr, align 1
  %0 = load i32, i32* %itemsize.addr, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* %sd, align 8
  %1 = load i8, i8* %fort.addr, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv1, 70
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %k, align 4
  %3 = load i32, i32* %nd.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %sd, align 8
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i64*, i64** %strides.addr, align 8
  %arrayidx = getelementptr i64, i64* %6, i64 %idxprom
  store i64 %4, i64* %arrayidx, align 8
  %7 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i64*, i64** %shape.addr, align 8
  %arrayidx6 = getelementptr i64, i64* %8, i64 %idxprom5
  %9 = load i64, i64* %arrayidx6, align 8
  %10 = load i64, i64* %sd, align 8
  %mul = mul i64 %10, %9
  store i64 %mul, i64* %sd, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i32, i32* %nd.addr, align 4
  %sub = sub i32 %12, 1
  store i32 %sub, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.16, %if.else
  %13 = load i32, i32* %k, align 4
  %cmp8 = icmp sge i32 %13, 0
  br i1 %cmp8, label %for.body.10, label %for.end.17

for.body.10:                                      ; preds = %for.cond.7
  %14 = load i64, i64* %sd, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i64*, i64** %strides.addr, align 8
  %arrayidx12 = getelementptr i64, i64* %16, i64 %idxprom11
  store i64 %14, i64* %arrayidx12, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load i64*, i64** %shape.addr, align 8
  %arrayidx14 = getelementptr i64, i64* %18, i64 %idxprom13
  %19 = load i64, i64* %arrayidx14, align 8
  %20 = load i64, i64* %sd, align 8
  %mul15 = mul i64 %20, %19
  store i64 %mul15, i64* %sd, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.10
  %21 = load i32, i32* %k, align 4
  %dec = add i32 %21, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.7

for.end.17:                                       ; preds = %for.cond.7
  br label %if.end

if.end:                                           ; preds = %for.end.17, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyBuffer_FillInfo(%struct.bufferinfo* %view, %struct._object* %obj, i8* %buf, i64 %len, i32 %readonly, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct.bufferinfo*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %readonly.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %readonly, i32* %readonly.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %cmp = icmp eq %struct.bufferinfo* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4
  %and = and i32 %1, 1
  %cmp1 = icmp eq i32 %and, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %readonly.addr, align 4
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 1
  store %struct._object* %4, %struct._object** %obj5, align 8
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %tobool = icmp ne %struct._object* %6, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %buf8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0
  store i8* %9, i8** %buf8, align 8
  %11 = load i64, i64* %len.addr, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 2
  store i64 %11, i64* %len9, align 8
  %13 = load i32, i32* %readonly.addr, align 4
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %readonly10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 4
  store i32 %13, i32* %readonly10, align 4
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 3
  store i64 1, i64* %itemsize, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 6
  store i8* null, i8** %format, align 8
  %17 = load i32, i32* %flags.addr, align 4
  %and11 = and i32 %17, 4
  %cmp12 = icmp eq i32 %and11, 4
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.7
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format14 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 6
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %format14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.7
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 5
  store i32 1, i32* %ndim, align 4
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 7
  store i64* null, i64** %shape, align 8
  %21 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %21, 8
  %cmp17 = icmp eq i32 %and16, 8
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.15
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 2
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 7
  store i64* %len19, i64** %shape20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.15
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 8
  store i64* null, i64** %strides, align 8
  %25 = load i32, i32* %flags.addr, align 4
  %and22 = and i32 %25, 24
  %cmp23 = icmp eq i32 %and22, 24
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize25 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 3
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 8
  store i64* %itemsize25, i64** %strides26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.21
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 9
  store i64* null, i64** %suboffsets, align 8
  %29 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %internal = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %29, i32 0, i32 10
  store i8* null, i8** %internal, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.3, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_Format(%struct._object* %obj, %struct._object* %format_spec) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %format_spec.addr = alloca %struct._object*, align 8
  %meth = alloca %struct._object*, align 8
  %empty = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %format_spec, %struct._object** %format_spec.addr, align 8
  store %struct._object* null, %struct._object** %empty, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_New(i64 0, i32 0)
  store %struct._object* %call, %struct._object** %empty, align 8
  %1 = load %struct._object*, %struct._object** %empty, align 8
  store %struct._object* %1, %struct._object** %format_spec.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call1 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %2, %struct._Py_Identifier* @PyObject_Format.PyId___format__)
  store %struct._object* %call1, %struct._object** %meth, align 8
  %3 = load %struct._object*, %struct._object** %meth, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i8* %7)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.3
  br label %done

if.end.8:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %meth, align 8
  %9 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %call9 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %8, %struct._object* %9, i8* null)
  store %struct._object* %call9, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %10 = load %struct._object*, %struct._object** %meth, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %17 = load %struct._object*, %struct._object** %result, align 8
  %tobool14 = icmp ne %struct._object* %17, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %do.end
  %18 = load %struct._object*, %struct._object** %result, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19
  %20 = load i64, i64* %tp_flags, align 8
  %and = and i64 %20, 268435456
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.end.29, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0))
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %22 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp19, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %24, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %27(%struct._object* %28)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store %struct._object* null, %struct._object** %result, align 8
  br label %done

if.end.29:                                        ; preds = %land.lhs.true, %do.end
  br label %done

done:                                             ; preds = %if.end.29, %do.end.28, %if.end.7
  br label %do.body.30

do.body.30:                                       ; preds = %done
  %29 = load %struct._object*, %struct._object** %empty, align 8
  store %struct._object* %29, %struct._object** %_py_xdecref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp31 = icmp ne %struct._object* %30, null
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %do.body.30
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp34, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %33, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %36(%struct._object* %37)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.body.30
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %38 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %38
}

declare %struct._object* @PyUnicode_New(i64, i32) #1

; Function Attrs: nounwind uwtable
define i32 @PyNumber_Check(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 10
  %3 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %tobool1 = icmp ne %struct.PyNumberMethods* %3, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_as_number3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 10
  %6 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number3, align 8
  %nb_int = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %6, i32 0, i32 16
  %nb_int4 = bitcast {}** %nb_int to %struct._object* (%struct._object*)**
  %7 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_int4, align 8
  %tobool5 = icmp ne %struct._object* (%struct._object*)* %7, null
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_as_number7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 10
  %10 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number7, align 8
  %nb_float = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %10, i32 0, i32 18
  %nb_float8 = bitcast {}** %nb_float to %struct._object* (%struct._object*)**
  %11 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float8, align 8
  %tobool9 = icmp ne %struct._object* (%struct._object*)* %11, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ %tobool9, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %entry
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %12, %lor.end ]
  %land.ext = zext i1 %13 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Or(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binary_op(%struct._object* %v, %struct._object* %w, i32 %op_slot, i8* %op_name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op_slot.addr = alloca i32, align 4
  %op_name.addr = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op_slot, i32* %op_slot.addr, align 4
  store i8* %op_name, i8** %op_name.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %2 = load i32, i32* %op_slot.addr, align 4
  %call = call %struct._object* @binary_op1(%struct._object* %0, %struct._object* %1, i32 %2)
  store %struct._object* %call, %struct._object** %result, align 8
  %3 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %3, @_Py_NotImplementedStruct
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %13 = load i8*, i8** %op_name.addr, align 8
  %call3 = call %struct._object* @binop_type_error(%struct._object* %11, %struct._object* %12, i8* %13)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %14 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %do.end
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Xor(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_And(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Lshift(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Rshift(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Subtract(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Divmod(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Add(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op1(%struct._object* %0, %struct._object* %1, i32 0)
  store %struct._object* %call, %struct._object** %result, align 8
  %2 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %2, @_Py_NotImplementedStruct
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 11
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %5, %struct.PySequenceMethods** %m, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  %13 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %do.end
  %14 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_concat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %14, i32 0, i32 1
  %15 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_concat, align 8
  %tobool4 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %15, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %16 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_concat6 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %16, i32 0, i32 1
  %17 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_concat6, align 8
  %18 = load %struct._object*, %struct._object** %v.addr, align 8
  %19 = load %struct._object*, %struct._object** %w.addr, align 8
  %call7 = call %struct._object* %17(%struct._object* %18, %struct._object* %19)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %do.end
  %20 = load %struct._object*, %struct._object** %v.addr, align 8
  %21 = load %struct._object*, %struct._object** %w.addr, align 8
  %call9 = call %struct._object* @binop_type_error(%struct._object* %20, %struct._object* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* %call9, %struct._object** %result, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.8, %entry
  %22 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.5
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binary_op1(%struct._object* %v, %struct._object* %w, i32 %op_slot) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op_slot.addr = alloca i32, align 4
  %x = alloca %struct._object*, align 8
  %slotv = alloca %struct._object* (%struct._object*, %struct._object*)*, align 8
  %slotw = alloca %struct._object* (%struct._object*, %struct._object*)*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op_slot, i32* %op_slot.addr, align 4
  store %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)** %slotv, align 8
  store %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)** %slotw, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %op_slot.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 10
  %6 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %7 = bitcast %struct.PyNumberMethods* %6 to i8*
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom
  %8 = bitcast i8* %arrayidx to %struct._object* (%struct._object*, %struct._object*)**
  %9 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %8, align 8
  store %struct._object* (%struct._object*, %struct._object*)* %9, %struct._object* (%struct._object*, %struct._object*)** %slotv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %12 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp ne %struct._typeobject* %11, %13
  br i1 %cmp5, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_as_number7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 10
  %16 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number7, align 8
  %cmp8 = icmp ne %struct.PyNumberMethods* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* %op_slot.addr, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_as_number12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 10
  %20 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number12, align 8
  %21 = bitcast %struct.PyNumberMethods* %20 to i8*
  %arrayidx13 = getelementptr i8, i8* %21, i64 %idxprom10
  %22 = bitcast i8* %arrayidx13 to %struct._object* (%struct._object*, %struct._object*)**
  %23 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %22, align 8
  store %struct._object* (%struct._object*, %struct._object*)* %23, %struct._object* (%struct._object*, %struct._object*)** %slotw, align 8
  %24 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slotw, align 8
  %25 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slotv, align 8
  %cmp14 = icmp eq %struct._object* (%struct._object*, %struct._object*)* %24, %25
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.9
  store %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)** %slotw, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %if.end
  %26 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slotv, align 8
  %tobool = icmp ne %struct._object* (%struct._object*, %struct._object*)* %26, null
  br i1 %tobool, label %if.then.18, label %if.end.49

if.then.18:                                       ; preds = %if.end.17
  %27 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slotw, align 8
  %tobool19 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %27, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.33

land.lhs.true.20:                                 ; preds = %if.then.18
  %28 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %30 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %29, %struct._typeobject* %31)
  %tobool23 = icmp ne i32 %call, 0
  br i1 %tobool23, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %land.lhs.true.20
  %32 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slotw, align 8
  %33 = load %struct._object*, %struct._object** %v.addr, align 8
  %34 = load %struct._object*, %struct._object** %w.addr, align 8
  %call25 = call %struct._object* %32(%struct._object* %33, %struct._object* %34)
  store %struct._object* %call25, %struct._object** %x, align 8
  %35 = load %struct._object*, %struct._object** %x, align 8
  %cmp26 = icmp ne %struct._object* %35, @_Py_NotImplementedStruct
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  %36 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.then.24
  br label %do.body

do.body:                                          ; preds = %if.end.28
  %37 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp29 = icmp ne i64 %dec, 0
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body
  br label %if.end.32

if.else:                                          ; preds = %do.body
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.32
  store %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)** %slotw, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %do.end, %land.lhs.true.20, %if.then.18
  %44 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slotv, align 8
  %45 = load %struct._object*, %struct._object** %v.addr, align 8
  %46 = load %struct._object*, %struct._object** %w.addr, align 8
  %call34 = call %struct._object* %44(%struct._object* %45, %struct._object* %46)
  store %struct._object* %call34, %struct._object** %x, align 8
  %47 = load %struct._object*, %struct._object** %x, align 8
  %cmp35 = icmp ne %struct._object* %47, @_Py_NotImplementedStruct
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  %48 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %49 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp39, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %51, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47

if.else.44:                                       ; preds = %do.body.38
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %54(%struct._object* %55)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %if.end.17
  %56 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slotw, align 8
  %tobool50 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %56, null
  br i1 %tobool50, label %if.then.51, label %if.end.67

if.then.51:                                       ; preds = %if.end.49
  %57 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slotw, align 8
  %58 = load %struct._object*, %struct._object** %v.addr, align 8
  %59 = load %struct._object*, %struct._object** %w.addr, align 8
  %call52 = call %struct._object* %57(%struct._object* %58, %struct._object* %59)
  store %struct._object* %call52, %struct._object** %x, align 8
  %60 = load %struct._object*, %struct._object** %x, align 8
  %cmp53 = icmp ne %struct._object* %60, @_Py_NotImplementedStruct
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.51
  %61 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %61, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %if.then.51
  br label %do.body.56

do.body.56:                                       ; preds = %if.end.55
  %62 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp57, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %64, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %67(%struct._object* %68)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %if.end.49
  %69 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %69, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.54, %if.then.36, %if.then.27
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binop_type_error(%struct._object* %v, %struct._object* %w, i8* %op_name) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op_name.addr = alloca i8*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i8* %op_name, i8** %op_name.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load i8*, i8** %op_name.addr, align 8
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %5 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name2, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.84, i32 0, i32 0), i8* %1, i8* %4, i8* %7)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Multiply(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %mv = alloca %struct.PySequenceMethods*, align 8
  %mw = alloca %struct.PySequenceMethods*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op1(%struct._object* %0, %struct._object* %1, i32 16)
  store %struct._object* %call, %struct._object** %result, align 8
  %2 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %2, @_Py_NotImplementedStruct
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 11
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %5, %struct.PySequenceMethods** %mv, align 8
  %6 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_sequence2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 11
  %8 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence2, align 8
  store %struct.PySequenceMethods* %8, %struct.PySequenceMethods** %mw, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %9 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  %16 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mv, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %16, null
  br i1 %tobool, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %do.end
  %17 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mv, align 8
  %sq_repeat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %17, i32 0, i32 2
  %18 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat, align 8
  %tobool6 = icmp ne %struct._object* (%struct._object*, i64)* %18, null
  br i1 %tobool6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %land.lhs.true
  %19 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mv, align 8
  %sq_repeat8 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %19, i32 0, i32 2
  %20 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat8, align 8
  %21 = load %struct._object*, %struct._object** %v.addr, align 8
  %22 = load %struct._object*, %struct._object** %w.addr, align 8
  %call9 = call %struct._object* @sequence_repeat(%struct._object* (%struct._object*, i64)* %20, %struct._object* %21, %struct._object* %22)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.else.10:                                       ; preds = %land.lhs.true, %do.end
  %23 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mw, align 8
  %tobool11 = icmp ne %struct.PySequenceMethods* %23, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %if.else.10
  %24 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mw, align 8
  %sq_repeat13 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %24, i32 0, i32 2
  %25 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat13, align 8
  %tobool14 = icmp ne %struct._object* (%struct._object*, i64)* %25, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %land.lhs.true.12
  %26 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mw, align 8
  %sq_repeat16 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %26, i32 0, i32 2
  %27 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat16, align 8
  %28 = load %struct._object*, %struct._object** %w.addr, align 8
  %29 = load %struct._object*, %struct._object** %v.addr, align 8
  %call17 = call %struct._object* @sequence_repeat(%struct._object* (%struct._object*, i64)* %27, %struct._object* %28, %struct._object* %29)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.12, %if.else.10
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  %30 = load %struct._object*, %struct._object** %v.addr, align 8
  %31 = load %struct._object*, %struct._object** %w.addr, align 8
  %call20 = call %struct._object* @binop_type_error(%struct._object* %30, %struct._object* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  store %struct._object* %call20, %struct._object** %result, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %entry
  %32 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.15, %if.then.7
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sequence_repeat(%struct._object* (%struct._object*, i64)* %repeatfunc, %struct._object* %seq, %struct._object* %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %repeatfunc.addr = alloca %struct._object* (%struct._object*, i64)*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %n.addr = alloca %struct._object*, align 8
  %count = alloca i64, align 8
  store %struct._object* (%struct._object*, i64)* %repeatfunc, %struct._object* (%struct._object*, i64)** %repeatfunc.addr, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  store %struct._object* %n, %struct._object** %n.addr, align 8
  %0 = load %struct._object*, %struct._object** %n.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %n.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33
  %nb_index3 = bitcast {}** %nb_index to %struct._object* (%struct._object*)**
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index3, align 8
  %cmp4 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %n.addr, align 8
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %7, %struct._object* %8)
  store i64 %call, i64* %count, align 8
  %9 = load i64, i64* %count, align 8
  %cmp5 = icmp eq i64 %9, -1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.then
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call7, null
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %if.then
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct._object*, %struct._object** %n.addr, align 8
  %call9 = call %struct._object* @type_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.85, i32 0, i32 0), %struct._object* %10)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %11 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %repeatfunc.addr, align 8
  %12 = load %struct._object*, %struct._object** %seq.addr, align 8
  %13 = load i64, i64* %count, align 8
  %call11 = call %struct._object* %11(%struct._object* %12, i64 %13)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else, %if.then.8
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_FloorDivide(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_TrueDivide(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Remainder(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_op(%struct._object* %0, %struct._object* %1, i32 24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Power(%struct._object* %v, %struct._object* %w, %struct._object* %z) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %z.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store %struct._object* %z, %struct._object** %z.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %2 = load %struct._object*, %struct._object** %z.addr, align 8
  %call = call %struct._object* @ternary_op(%struct._object* %0, %struct._object* %1, %struct._object* %2, i32 40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ternary_op(%struct._object* %v, %struct._object* %w, %struct._object* %z, i32 %op_slot, i8* %op_name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %z.addr = alloca %struct._object*, align 8
  %op_slot.addr = alloca i32, align 4
  %op_name.addr = alloca i8*, align 8
  %mv = alloca %struct.PyNumberMethods*, align 8
  %mw = alloca %struct.PyNumberMethods*, align 8
  %mz = alloca %struct.PyNumberMethods*, align 8
  %x = alloca %struct._object*, align 8
  %slotv = alloca %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, align 8
  %slotw = alloca %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, align 8
  %slotz = alloca %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store %struct._object* %z, %struct._object** %z.addr, align 8
  store i32 %op_slot, i32* %op_slot.addr, align 4
  store i8* %op_name, i8** %op_name.addr, align 8
  store %struct._object* null, %struct._object** %x, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotv, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotz, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %2, %struct.PyNumberMethods** %mv, align 8
  %3 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  store %struct.PyNumberMethods* %5, %struct.PyNumberMethods** %mw, align 8
  %6 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %mv, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %op_slot.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %mv, align 8
  %9 = bitcast %struct.PyNumberMethods* %8 to i8*
  %arrayidx = getelementptr i8, i8* %9, i64 %idxprom
  %10 = bitcast i8* %arrayidx to %struct._object* (%struct._object*, %struct._object*, %struct._object*)**
  %11 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %10, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %11, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %14 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp ne %struct._typeobject* %13, %15
  br i1 %cmp5, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %mw, align 8
  %cmp6 = icmp ne %struct.PyNumberMethods* %16, null
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* %op_slot.addr, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %mw, align 8
  %19 = bitcast %struct.PyNumberMethods* %18 to i8*
  %arrayidx9 = getelementptr i8, i8* %19, i64 %idxprom8
  %20 = bitcast i8* %arrayidx9 to %struct._object* (%struct._object*, %struct._object*, %struct._object*)**
  %21 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %20, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %21, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  %22 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  %23 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotv, align 8
  %cmp10 = icmp eq %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %22, %23
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %land.lhs.true, %if.end
  %24 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotv, align 8
  %tobool = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %24, null
  br i1 %tobool, label %if.then.14, label %if.end.45

if.then.14:                                       ; preds = %if.end.13
  %25 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  %tobool15 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %25, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.29

land.lhs.true.16:                                 ; preds = %if.then.14
  %26 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %28 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %27, %struct._typeobject* %29)
  %tobool19 = icmp ne i32 %call, 0
  br i1 %tobool19, label %if.then.20, label %if.end.29

if.then.20:                                       ; preds = %land.lhs.true.16
  %30 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  %31 = load %struct._object*, %struct._object** %v.addr, align 8
  %32 = load %struct._object*, %struct._object** %w.addr, align 8
  %33 = load %struct._object*, %struct._object** %z.addr, align 8
  %call21 = call %struct._object* %30(%struct._object* %31, %struct._object* %32, %struct._object* %33)
  store %struct._object* %call21, %struct._object** %x, align 8
  %34 = load %struct._object*, %struct._object** %x, align 8
  %cmp22 = icmp ne %struct._object* %34, @_Py_NotImplementedStruct
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  %35 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.then.20
  br label %do.body

do.body:                                          ; preds = %if.end.24
  %36 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body
  br label %if.end.28

if.else:                                          ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.28
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %do.end, %land.lhs.true.16, %if.then.14
  %43 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotv, align 8
  %44 = load %struct._object*, %struct._object** %v.addr, align 8
  %45 = load %struct._object*, %struct._object** %w.addr, align 8
  %46 = load %struct._object*, %struct._object** %z.addr, align 8
  %call30 = call %struct._object* %43(%struct._object* %44, %struct._object* %45, %struct._object* %46)
  store %struct._object* %call30, %struct._object** %x, align 8
  %47 = load %struct._object*, %struct._object** %x, align 8
  %cmp31 = icmp ne %struct._object* %47, @_Py_NotImplementedStruct
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %48 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.29
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %49 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp35, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %51, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %54(%struct._object* %55)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %if.end.13
  %56 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  %tobool46 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %56, null
  br i1 %tobool46, label %if.then.47, label %if.end.63

if.then.47:                                       ; preds = %if.end.45
  %57 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  %58 = load %struct._object*, %struct._object** %v.addr, align 8
  %59 = load %struct._object*, %struct._object** %w.addr, align 8
  %60 = load %struct._object*, %struct._object** %z.addr, align 8
  %call48 = call %struct._object* %57(%struct._object* %58, %struct._object* %59, %struct._object* %60)
  store %struct._object* %call48, %struct._object** %x, align 8
  %61 = load %struct._object*, %struct._object** %x, align 8
  %cmp49 = icmp ne %struct._object* %61, @_Py_NotImplementedStruct
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.47
  %62 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %62, %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %if.then.47
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.51
  %63 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp53, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %65, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %68(%struct._object* %69)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %if.end.45
  %70 = load %struct._object*, %struct._object** %z.addr, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_as_number65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 10
  %72 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number65, align 8
  store %struct.PyNumberMethods* %72, %struct.PyNumberMethods** %mz, align 8
  %73 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %mz, align 8
  %cmp66 = icmp ne %struct.PyNumberMethods* %73, null
  br i1 %cmp66, label %if.then.67, label %if.end.92

if.then.67:                                       ; preds = %if.end.63
  %74 = load i32, i32* %op_slot.addr, align 4
  %idxprom68 = sext i32 %74 to i64
  %75 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %mz, align 8
  %76 = bitcast %struct.PyNumberMethods* %75 to i8*
  %arrayidx69 = getelementptr i8, i8* %76, i64 %idxprom68
  %77 = bitcast i8* %arrayidx69 to %struct._object* (%struct._object*, %struct._object*, %struct._object*)**
  %78 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %77, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %78, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotz, align 8
  %79 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotz, align 8
  %80 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotv, align 8
  %cmp70 = icmp eq %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %79, %80
  br i1 %cmp70, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.67
  %81 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotz, align 8
  %82 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotw, align 8
  %cmp71 = icmp eq %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %81, %82
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false, %if.then.67
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotz, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %lor.lhs.false
  %83 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotz, align 8
  %tobool74 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %83, null
  br i1 %tobool74, label %if.then.75, label %if.end.91

if.then.75:                                       ; preds = %if.end.73
  %84 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %slotz, align 8
  %85 = load %struct._object*, %struct._object** %v.addr, align 8
  %86 = load %struct._object*, %struct._object** %w.addr, align 8
  %87 = load %struct._object*, %struct._object** %z.addr, align 8
  %call76 = call %struct._object* %84(%struct._object* %85, %struct._object* %86, %struct._object* %87)
  store %struct._object* %call76, %struct._object** %x, align 8
  %88 = load %struct._object*, %struct._object** %x, align 8
  %cmp77 = icmp ne %struct._object* %88, @_Py_NotImplementedStruct
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.75
  %89 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %89, %struct._object** %retval
  br label %return

if.end.79:                                        ; preds = %if.then.75
  br label %do.body.80

do.body.80:                                       ; preds = %if.end.79
  %90 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp81, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %92, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.80
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %95(%struct._object* %96)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %if.end.91

if.end.91:                                        ; preds = %do.end.90, %if.end.73
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.63
  %97 = load %struct._object*, %struct._object** %z.addr, align 8
  %cmp93 = icmp eq %struct._object* %97, @_Py_NoneStruct
  br i1 %cmp93, label %if.then.94, label %if.else.99

if.then.94:                                       ; preds = %if.end.92
  %98 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %99 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 1
  %101 = load i8*, i8** %tp_name, align 8
  %102 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8
  %tp_name97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 1
  %104 = load i8*, i8** %tp_name97, align 8
  %call98 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %98, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.86, i32 0, i32 0), i8* %101, i8* %104)
  br label %if.end.107

if.else.99:                                       ; preds = %if.end.92
  %105 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %106 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_name101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 1
  %108 = load i8*, i8** %tp_name101, align 8
  %109 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_name103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 1
  %111 = load i8*, i8** %tp_name103, align 8
  %112 = load %struct._object*, %struct._object** %z.addr, align 8
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8
  %tp_name105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 1
  %114 = load i8*, i8** %tp_name105, align 8
  %call106 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %105, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.87, i32 0, i32 0), i8* %108, i8* %111, i8* %114)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.99, %if.then.94
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.107, %if.then.78, %if.then.50, %if.then.32, %if.then.23
  %115 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %115
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceOr(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop(%struct._object* %0, %struct._object* %1, i32 224, i32 120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binary_iop(%struct._object* %v, %struct._object* %w, i32 %iop_slot, i32 %op_slot, i8* %op_name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %iop_slot.addr = alloca i32, align 4
  %op_slot.addr = alloca i32, align 4
  %op_name.addr = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %iop_slot, i32* %iop_slot.addr, align 4
  store i32 %op_slot, i32* %op_slot.addr, align 4
  store i8* %op_name, i8** %op_name.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %2 = load i32, i32* %iop_slot.addr, align 4
  %3 = load i32, i32* %op_slot.addr, align 4
  %call = call %struct._object* @binary_iop1(%struct._object* %0, %struct._object* %1, i32 %2, i32 %3)
  store %struct._object* %call, %struct._object** %result, align 8
  %4 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %4, @_Py_NotImplementedStruct
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %v.addr, align 8
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %14 = load i8*, i8** %op_name.addr, align 8
  %call3 = call %struct._object* @binop_type_error(%struct._object* %12, %struct._object* %13, i8* %14)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %15 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %do.end
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceXor(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop(%struct._object* %0, %struct._object* %1, i32 216, i32 112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceAnd(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop(%struct._object* %0, %struct._object* %1, i32 208, i32 104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceLshift(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop(%struct._object* %0, %struct._object* %1, i32 192, i32 88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceRshift(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop(%struct._object* %0, %struct._object* %1, i32 200, i32 96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceSubtract(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop(%struct._object* %0, %struct._object* %1, i32 160, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop(%struct._object* %0, %struct._object* %1, i32 248, i32 232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop(%struct._object* %0, %struct._object* %1, i32 256, i32 240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceAdd(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %f = alloca %struct._object* (%struct._object*, %struct._object*)*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop1(%struct._object* %0, %struct._object* %1, i32 152, i32 0)
  store %struct._object* %call, %struct._object** %result, align 8
  %2 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %2, @_Py_NotImplementedStruct
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 11
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %5, %struct.PySequenceMethods** %m, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  %13 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %cmp4 = icmp ne %struct.PySequenceMethods* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %do.end
  store %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)** %f, align 8
  %14 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_inplace_concat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %14, i32 0, i32 8
  %15 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_inplace_concat, align 8
  store %struct._object* (%struct._object*, %struct._object*)* %15, %struct._object* (%struct._object*, %struct._object*)** %f, align 8
  %16 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %f, align 8
  %cmp6 = icmp eq %struct._object* (%struct._object*, %struct._object*)* %16, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %17 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_concat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %17, i32 0, i32 1
  %18 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_concat, align 8
  store %struct._object* (%struct._object*, %struct._object*)* %18, %struct._object* (%struct._object*, %struct._object*)** %f, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  %19 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %f, align 8
  %cmp9 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %19, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %20 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %f, align 8
  %21 = load %struct._object*, %struct._object** %v.addr, align 8
  %22 = load %struct._object*, %struct._object** %w.addr, align 8
  %call11 = call %struct._object* %20(%struct._object* %21, %struct._object* %22)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.end
  %23 = load %struct._object*, %struct._object** %v.addr, align 8
  %24 = load %struct._object*, %struct._object** %w.addr, align 8
  %call14 = call %struct._object* @binop_type_error(%struct._object* %23, %struct._object* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call14, %struct._object** %result, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.13, %entry
  %25 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.10
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binary_iop1(%struct._object* %v, %struct._object* %w, i32 %iop_slot, i32 %op_slot) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %iop_slot.addr = alloca i32, align 4
  %op_slot.addr = alloca i32, align 4
  %mv = alloca %struct.PyNumberMethods*, align 8
  %slot = alloca %struct._object* (%struct._object*, %struct._object*)*, align 8
  %x = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %iop_slot, i32* %iop_slot.addr, align 4
  store i32 %op_slot, i32* %op_slot.addr, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %2, %struct.PyNumberMethods** %mv, align 8
  %3 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %mv, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %3, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %iop_slot.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %mv, align 8
  %6 = bitcast %struct.PyNumberMethods* %5 to i8*
  %arrayidx = getelementptr i8, i8* %6, i64 %idxprom
  %7 = bitcast i8* %arrayidx to %struct._object* (%struct._object*, %struct._object*)**
  %8 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %7, align 8
  store %struct._object* (%struct._object*, %struct._object*)* %8, %struct._object* (%struct._object*, %struct._object*)** %slot, align 8
  %9 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slot, align 8
  %tobool = icmp ne %struct._object* (%struct._object*, %struct._object*)* %9, null
  br i1 %tobool, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.then
  %10 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %slot, align 8
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* %10(%struct._object* %11, %struct._object* %12)
  store %struct._object* %call, %struct._object** %x, align 8
  %13 = load %struct._object*, %struct._object** %x, align 8
  %cmp2 = icmp ne %struct._object* %13, @_Py_NotImplementedStruct
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then.1
  %14 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.1
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %22 = load %struct._object*, %struct._object** %v.addr, align 8
  %23 = load %struct._object*, %struct._object** %w.addr, align 8
  %24 = load i32, i32* %op_slot.addr, align 4
  %call10 = call %struct._object* @binary_op1(%struct._object* %22, %struct._object* %23, i32 %24)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.3
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceMultiply(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %f = alloca %struct._object* (%struct._object*, i64)*, align 8
  %mv = alloca %struct.PySequenceMethods*, align 8
  %mw = alloca %struct.PySequenceMethods*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop1(%struct._object* %0, %struct._object* %1, i32 168, i32 16)
  store %struct._object* %call, %struct._object** %result, align 8
  %2 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %2, @_Py_NotImplementedStruct
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  store %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)** %f, align 8
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 11
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %5, %struct.PySequenceMethods** %mv, align 8
  %6 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_sequence2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 11
  %8 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence2, align 8
  store %struct.PySequenceMethods* %8, %struct.PySequenceMethods** %mw, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %9 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  %16 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mv, align 8
  %cmp6 = icmp ne %struct.PySequenceMethods* %16, null
  br i1 %cmp6, label %if.then.7, label %if.else.15

if.then.7:                                        ; preds = %do.end
  %17 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mv, align 8
  %sq_inplace_repeat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %17, i32 0, i32 9
  %18 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_inplace_repeat, align 8
  store %struct._object* (%struct._object*, i64)* %18, %struct._object* (%struct._object*, i64)** %f, align 8
  %19 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %f, align 8
  %cmp8 = icmp eq %struct._object* (%struct._object*, i64)* %19, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  %20 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mv, align 8
  %sq_repeat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %20, i32 0, i32 2
  %21 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat, align 8
  store %struct._object* (%struct._object*, i64)* %21, %struct._object* (%struct._object*, i64)** %f, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.7
  %22 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %f, align 8
  %cmp11 = icmp ne %struct._object* (%struct._object*, i64)* %22, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %23 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %f, align 8
  %24 = load %struct._object*, %struct._object** %v.addr, align 8
  %25 = load %struct._object*, %struct._object** %w.addr, align 8
  %call13 = call %struct._object* @sequence_repeat(%struct._object* (%struct._object*, i64)* %23, %struct._object* %24, %struct._object* %25)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  br label %if.end.24

if.else.15:                                       ; preds = %do.end
  %26 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mw, align 8
  %cmp16 = icmp ne %struct.PySequenceMethods* %26, null
  br i1 %cmp16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %if.else.15
  %27 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mw, align 8
  %sq_repeat18 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %27, i32 0, i32 2
  %28 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat18, align 8
  %tobool = icmp ne %struct._object* (%struct._object*, i64)* %28, null
  br i1 %tobool, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.17
  %29 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %mw, align 8
  %sq_repeat20 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %29, i32 0, i32 2
  %30 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat20, align 8
  %31 = load %struct._object*, %struct._object** %w.addr, align 8
  %32 = load %struct._object*, %struct._object** %v.addr, align 8
  %call21 = call %struct._object* @sequence_repeat(%struct._object* (%struct._object*, i64)* %30, %struct._object* %31, %struct._object* %32)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.else.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.14
  %33 = load %struct._object*, %struct._object** %v.addr, align 8
  %34 = load %struct._object*, %struct._object** %w.addr, align 8
  %call25 = call %struct._object* @binop_type_error(%struct._object* %33, %struct._object* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0))
  store %struct._object* %call25, %struct._object** %result, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.24, %entry
  %35 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.19, %if.then.12
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlaceRemainder(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @binary_iop(%struct._object* %0, %struct._object* %1, i32 176, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_InPlacePower(%struct._object* %v, %struct._object* %w, %struct._object* %z) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %z.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store %struct._object* %z, %struct._object** %z.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %tobool = icmp ne %struct.PyNumberMethods* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %nb_inplace_power = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 23
  %6 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %nb_inplace_power, align 8
  %cmp = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %8 = load %struct._object*, %struct._object** %w.addr, align 8
  %9 = load %struct._object*, %struct._object** %z.addr, align 8
  %call = call %struct._object* @ternary_op(%struct._object* %7, %struct._object* %8, %struct._object* %9, i32 184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %11 = load %struct._object*, %struct._object** %w.addr, align 8
  %12 = load %struct._object*, %struct._object** %z.addr, align 8
  %call3 = call %struct._object* @ternary_op(%struct._object* %10, %struct._object* %11, %struct._object* %12, i32 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Negative(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyNumberMethods*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 10
  %3 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %3, %struct.PyNumberMethods** %m, align 8
  %4 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %tobool = icmp ne %struct.PyNumberMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_negative = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 6
  %nb_negative1 = bitcast {}** %nb_negative to %struct._object* (%struct._object*)**
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_negative1, align 8
  %tobool2 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_negative4 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %7, i32 0, i32 6
  %nb_negative5 = bitcast {}** %nb_negative4 to %struct._object* (%struct._object*)**
  %8 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_negative5, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %call6 = call %struct._object* %8(%struct._object* %9)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %call8 = call %struct._object* @type_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), %struct._object* %10)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.3, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Positive(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyNumberMethods*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 10
  %3 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %3, %struct.PyNumberMethods** %m, align 8
  %4 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %tobool = icmp ne %struct.PyNumberMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_positive = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 7
  %nb_positive1 = bitcast {}** %nb_positive to %struct._object* (%struct._object*)**
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_positive1, align 8
  %tobool2 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_positive4 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %7, i32 0, i32 7
  %nb_positive5 = bitcast {}** %nb_positive4 to %struct._object* (%struct._object*)**
  %8 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_positive5, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %call6 = call %struct._object* %8(%struct._object* %9)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %call8 = call %struct._object* @type_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), %struct._object* %10)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.3, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Invert(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyNumberMethods*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 10
  %3 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %3, %struct.PyNumberMethods** %m, align 8
  %4 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %tobool = icmp ne %struct.PyNumberMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_invert = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 10
  %nb_invert1 = bitcast {}** %nb_invert to %struct._object* (%struct._object*)**
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_invert1, align 8
  %tobool2 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_invert4 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %7, i32 0, i32 10
  %nb_invert5 = bitcast {}** %nb_invert4 to %struct._object* (%struct._object*)**
  %8 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_invert5, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %call6 = call %struct._object* %8(%struct._object* %9)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %call8 = call %struct._object* @type_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0), %struct._object* %10)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.3, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Absolute(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyNumberMethods*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 10
  %3 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %3, %struct.PyNumberMethods** %m, align 8
  %4 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %tobool = icmp ne %struct.PyNumberMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_absolute = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 8
  %nb_absolute1 = bitcast {}** %nb_absolute to %struct._object* (%struct._object*)**
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_absolute1, align 8
  %tobool2 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_absolute4 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %7, i32 0, i32 8
  %nb_absolute5 = bitcast {}** %nb_absolute4 to %struct._object* (%struct._object*)**
  %8 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_absolute5, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %call6 = call %struct._object* %8(%struct._object* %9)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %call8 = call %struct._object* @type_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i32 0, i32 0), %struct._object* %10)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.3, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Index(%struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %item.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 16777216
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %item.addr, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 10
  %9 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp5 = icmp ne %struct.PyNumberMethods* %9, null
  br i1 %cmp5, label %land.lhs.true, label %if.then.10

land.lhs.true:                                    ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_as_number7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 10
  %12 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number7, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %12, i32 0, i32 33
  %nb_index8 = bitcast {}** %nb_index to %struct._object* (%struct._object*)**
  %13 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index8, align 8
  %cmp9 = icmp ne %struct._object* (%struct._object*)* %13, null
  br i1 %cmp9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true, %if.end.3
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %15 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1
  %17 = load i8*, i8** %tp_name, align 8
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.47, i32 0, i32 0), i8* %17)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true
  %18 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_as_number15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 10
  %20 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number15, align 8
  %nb_index16 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %20, i32 0, i32 33
  %nb_index17 = bitcast {}** %nb_index16 to %struct._object* (%struct._object*)**
  %21 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index17, align 8
  %22 = load %struct._object*, %struct._object** %item.addr, align 8
  %call18 = call %struct._object* %21(%struct._object* %22)
  store %struct._object* %call18, %struct._object** %result, align 8
  %23 = load %struct._object*, %struct._object** %result, align 8
  %tobool = icmp ne %struct._object* %23, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.21

lor.lhs.false:                                    ; preds = %if.end.13
  %24 = load %struct._object*, %struct._object** %result, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %cmp20 = icmp eq %struct._typeobject* %25, @PyLong_Type
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.13
  %26 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  %27 = load %struct._object*, %struct._object** %result, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_flags24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19
  %29 = load i64, i64* %tp_flags24, align 8
  %and25 = and i64 %29, 16777216
  %cmp26 = icmp ne i64 %and25, 0
  br i1 %cmp26, label %if.end.36, label %if.then.27

if.then.27:                                       ; preds = %if.end.22
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %31 = load %struct._object*, %struct._object** %result, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_name29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 1
  %33 = load i8*, i8** %tp_name29, align 8
  %call30 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0), i8* %33)
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %34 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt31, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %ob_refcnt31, align 8
  %cmp32 = icmp ne i64 %dec, 0
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %do.body
  br label %if.end.35

if.else:                                          ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.33
  br label %do.end

do.end:                                           ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.22
  %41 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %42 = load %struct._object*, %struct._object** %result, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_name38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 1
  %44 = load i8*, i8** %tp_name38, align 8
  %call39 = call i32 (%struct._object*, i64, i8*, ...) @PyErr_WarnFormat(%struct._object* %41, i64 1, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.49, i32 0, i32 0), i8* %44)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.53

if.then.41:                                       ; preds = %if.end.36
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %45 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp43, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %47, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %50(%struct._object* %51)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.36
  %52 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.53, %do.end.52, %do.end, %if.then.21, %if.then.10, %if.then.2, %if.then
  %53 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %53
}

declare i32 @PyErr_WarnFormat(%struct._object*, i64, i8*, ...) #1

declare i32 @PyErr_GivenExceptionMatches(%struct._object*, %struct._object*) #1

declare i32 @_PyLong_Sign(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Long(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyNumberMethods*, align 8
  %trunc_func = alloca %struct._object*, align 8
  %buffer = alloca i8*, align 8
  %buffer_len = alloca i64, align 8
  %truncated = alloca %struct._object*, align 8
  %int_instance = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @PyLong_Type
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %o.addr, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 10
  %8 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %8, %struct.PyNumberMethods** %m, align 8
  %9 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %tobool = icmp ne %struct.PyNumberMethods* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.3
  %10 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_int = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %10, i32 0, i32 16
  %nb_int5 = bitcast {}** %nb_int to %struct._object* (%struct._object*)**
  %11 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_int5, align 8
  %tobool6 = icmp ne %struct._object* (%struct._object*)* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %land.lhs.true
  %12 = load %struct._object*, %struct._object** %o.addr, align 8
  %call8 = call %struct._longobject* @_PyLong_FromNbInt(%struct._object* %12)
  %13 = bitcast %struct._longobject* %call8 to %struct._object*
  store %struct._object* %13, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %if.end.3
  %14 = load %struct._object*, %struct._object** %o.addr, align 8
  %call10 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %14, %struct._Py_Identifier* @PyNumber_Long.PyId___trunc__)
  store %struct._object* %call10, %struct._object** %trunc_func, align 8
  %15 = load %struct._object*, %struct._object** %trunc_func, align 8
  %tobool11 = icmp ne %struct._object* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.58

if.then.12:                                       ; preds = %if.end.9
  %16 = load %struct._object*, %struct._object** %trunc_func, align 8
  %call13 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %16, %struct._object* null, %struct._object* null)
  store %struct._object* %call13, %struct._object** %truncated, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %trunc_func, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt14, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt14, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %24 = load %struct._object*, %struct._object** %truncated, align 8
  %cmp19 = icmp eq %struct._object* %24, null
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %25 = load %struct._object*, %struct._object** %truncated, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 19
  %27 = load i64, i64* %tp_flags, align 8
  %and = and i64 %27, 16777216
  %cmp21 = icmp ne i64 %and, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %do.end
  %28 = load %struct._object*, %struct._object** %truncated, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %lor.lhs.false
  %29 = load %struct._object*, %struct._object** %truncated, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_as_number25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 10
  %31 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number25, align 8
  store %struct.PyNumberMethods* %31, %struct.PyNumberMethods** %m, align 8
  %32 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %cmp26 = icmp eq %struct.PyNumberMethods* %32, null
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.23
  %33 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_int28 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %33, i32 0, i32 16
  %nb_int29 = bitcast {}** %nb_int28 to %struct._object* (%struct._object*)**
  %34 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_int29, align 8
  %cmp30 = icmp eq %struct._object* (%struct._object*)* %34, null
  br i1 %cmp30, label %if.then.31, label %if.end.45

if.then.31:                                       ; preds = %lor.lhs.false.27, %if.end.23
  %35 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %36 = load %struct._object*, %struct._object** %truncated, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 1
  %38 = load i8*, i8** %tp_name, align 8
  %call33 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i32 0, i32 0), i8* %38)
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.31
  %39 = load %struct._object*, %struct._object** %truncated, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp35, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %41, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %44(%struct._object* %45)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %lor.lhs.false.27
  %46 = load %struct._object*, %struct._object** %truncated, align 8
  %call46 = call %struct._longobject* @_PyLong_FromNbInt(%struct._object* %46)
  %47 = bitcast %struct._longobject* %call46 to %struct._object*
  store %struct._object* %47, %struct._object** %int_instance, align 8
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.45
  %48 = load %struct._object*, %struct._object** %truncated, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp48, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %50, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %53(%struct._object* %54)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %55 = load %struct._object*, %struct._object** %int_instance, align 8
  store %struct._object* %55, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %if.end.9
  %call59 = call %struct._object* @PyErr_Occurred()
  %tobool60 = icmp ne %struct._object* %call59, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.62:                                        ; preds = %if.end.58
  %56 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_flags64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 19
  %58 = load i64, i64* %tp_flags64, align 8
  %and65 = and i64 %58, 134217728
  %cmp66 = icmp ne i64 %and65, 0
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.62
  %59 = load %struct._object*, %struct._object** %o.addr, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %60, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %61 = load %struct._object*, %struct._object** %o.addr, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %62, i32 0, i32 1
  %63 = load i64, i64* %ob_size, align 8
  %call68 = call %struct._object* @_PyLong_FromBytes(i8* %arraydecay, i64 %63, i32 10)
  store %struct._object* %call68, %struct._object** %retval
  br label %return

if.end.69:                                        ; preds = %if.end.62
  %64 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_flags71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 19
  %66 = load i64, i64* %tp_flags71, align 8
  %and72 = and i64 %66, 268435456
  %cmp73 = icmp ne i64 %and72, 0
  br i1 %cmp73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.69
  %67 = load %struct._object*, %struct._object** %o.addr, align 8
  %call75 = call %struct._object* @PyLong_FromUnicodeObject(%struct._object* %67, i32 10)
  store %struct._object* %call75, %struct._object** %retval
  br label %return

if.end.76:                                        ; preds = %if.end.69
  %68 = load %struct._object*, %struct._object** %o.addr, align 8
  %call77 = call i32 @PyObject_AsCharBuffer(%struct._object* %68, i8** %buffer, i64* %buffer_len)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.81, label %if.then.79

if.then.79:                                       ; preds = %if.end.76
  %69 = load i8*, i8** %buffer, align 8
  %70 = load i64, i64* %buffer_len, align 8
  %call80 = call %struct._object* @_PyLong_FromBytes(i8* %69, i64 %70, i32 10)
  store %struct._object* %call80, %struct._object** %retval
  br label %return

if.end.81:                                        ; preds = %if.end.76
  %71 = load %struct._object*, %struct._object** %o.addr, align 8
  %call82 = call %struct._object* @type_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.53, i32 0, i32 0), %struct._object* %71)
  store %struct._object* %call82, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.then.79, %if.then.74, %if.then.67, %if.then.61, %do.end.57, %do.end.44, %if.then.22, %if.then.7, %if.then.2, %if.then
  %72 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %72
}

declare %struct._longobject* @_PyLong_FromNbInt(%struct._object*) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @_PyLong_FromBytes(i8*, i64, i32) #1

declare %struct._object* @PyLong_FromUnicodeObject(%struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_Float(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyNumberMethods*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %po = alloca %struct.PyFloatObject*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 10
  %3 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %3, %struct.PyNumberMethods** %m, align 8
  %4 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %tobool = icmp ne %struct.PyNumberMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_float = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 18
  %nb_float1 = bitcast {}** %nb_float to %struct._object* (%struct._object*)**
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float1, align 8
  %tobool2 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.22

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %m, align 8
  %nb_float4 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %7, i32 0, i32 18
  %nb_float5 = bitcast {}** %nb_float4 to %struct._object* (%struct._object*)**
  %8 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float5, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %call6 = call %struct._object* %8(%struct._object* %9)
  store %struct._object* %call6, %struct._object** %res, align 8
  %10 = load %struct._object*, %struct._object** %res, align 8
  %tobool7 = icmp ne %struct._object* %10, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.21

land.lhs.true.8:                                  ; preds = %if.then.3
  %11 = load %struct._object*, %struct._object** %res, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %12, @PyFloat_Type
  br i1 %cmp10, label %if.end.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %13 = load %struct._object*, %struct._object** %res, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %call12 = call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* @PyFloat_Type)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.21, label %if.then.14

if.then.14:                                       ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %16 = load %struct._object*, %struct._object** %res, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 1
  %18 = load i8*, i8** %tp_name, align 8
  %call16 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i32 0, i32 0), i8* %18)
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %19 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false, %land.lhs.true.8, %if.then.3
  %26 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %if.end
  %27 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %cmp24 = icmp eq %struct._typeobject* %28, @PyFloat_Type
  br i1 %cmp24, label %if.then.29, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.22
  %29 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %call27 = call i32 @PyType_IsSubtype(%struct._typeobject* %30, %struct._typeobject* @PyFloat_Type)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %lor.lhs.false.25, %if.end.22
  %31 = load %struct._object*, %struct._object** %o.addr, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyFloatObject*
  store %struct.PyFloatObject* %32, %struct.PyFloatObject** %po, align 8
  %33 = load %struct.PyFloatObject*, %struct.PyFloatObject** %po, align 8
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %33, i32 0, i32 1
  %34 = load double, double* %ob_fval, align 8
  %call30 = call %struct._object* @PyFloat_FromDouble(double %34)
  store %struct._object* %call30, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false.25
  %35 = load %struct._object*, %struct._object** %o.addr, align 8
  %call32 = call %struct._object* @PyFloat_FromString(%struct._object* %35)
  store %struct._object* %call32, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.29, %if.end.21, %do.end, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare %struct._object* @PyFloat_FromString(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyNumber_ToBase(%struct._object* %n, i32 %base) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %n.addr = alloca %struct._object*, align 8
  %base.addr = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %index = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %n, %struct._object** %n.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct._object*, %struct._object** %n.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %index, align 8
  %1 = load %struct._object*, %struct._object** %index, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %index, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %index, align 8
  %6 = load i32, i32* %base.addr, align 4
  %call2 = call %struct._object* @_PyLong_Format(%struct._object* %5, i32 %6)
  store %struct._object* %call2, %struct._object** %res, align 8
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %index, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body
  br label %if.end.8

if.else.6:                                        ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %15 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare %struct._object* @_PyLong_Format(%struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @PySequence_Check(%struct._object* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %s.addr, align 8
  %cmp1 = icmp ne %struct._object* %3, null
  br i1 %cmp1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 11
  %6 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_as_sequence4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 11
  %9 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence4, align 8
  %sq_item = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %9, i32 0, i32 3
  %10 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_item, align 8
  %cmp5 = icmp ne %struct._object* (%struct._object*, i64)* %10, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i64 @PySequence_Size(%struct._object* %s) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 11
  %3 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %3, %struct.PySequenceMethods** %m, align 8
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %5, i32 0, i32 0
  %6 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length, align 8
  %tobool1 = icmp ne i64 (%struct._object*)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_length3 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %7, i32 0, i32 0
  %8 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length3, align 8
  %9 = load %struct._object*, %struct._object** %s.addr, align 8
  %call4 = call i64 %8(%struct._object* %9)
  store i64 %call4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._object*, %struct._object** %s.addr, align 8
  %call6 = call %struct._object* @type_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i32 0, i32 0), %struct._object* %10)
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @PySequence_Length(%struct._object* %s) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PySequence_Concat(%struct._object* %s, %struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 11
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %4, %struct.PySequenceMethods** %m, align 8
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_concat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %6, i32 0, i32 1
  %7 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_concat, align 8
  %tobool2 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_concat4 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %8, i32 0, i32 1
  %9 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_concat4, align 8
  %10 = load %struct._object*, %struct._object** %s.addr, align 8
  %11 = load %struct._object*, %struct._object** %o.addr, align 8
  %call5 = call %struct._object* %9(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %12 = load %struct._object*, %struct._object** %s.addr, align 8
  %call7 = call i32 @PySequence_Check(%struct._object* %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.21

land.lhs.true.9:                                  ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %o.addr, align 8
  %call10 = call i32 @PySequence_Check(%struct._object* %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %land.lhs.true.9
  %14 = load %struct._object*, %struct._object** %s.addr, align 8
  %15 = load %struct._object*, %struct._object** %o.addr, align 8
  %call13 = call %struct._object* @binary_op1(%struct._object* %14, %struct._object* %15, i32 0)
  store %struct._object* %call13, %struct._object** %result, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %cmp14 = icmp ne %struct._object* %16, @_Py_NotImplementedStruct
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %18 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %land.lhs.true.9, %if.end.6
  %25 = load %struct._object*, %struct._object** %s.addr, align 8
  %call22 = call %struct._object* @type_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i32 0, i32 0), %struct._object* %25)
  store %struct._object* %call22, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.15, %if.then.3, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define %struct._object* @PySequence_Repeat(%struct._object* %o, i64 %count) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %count.addr = alloca i64, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  %n = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 11
  %3 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %3, %struct.PySequenceMethods** %m, align 8
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_repeat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %5, i32 0, i32 2
  %6 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat, align 8
  %tobool1 = icmp ne %struct._object* (%struct._object*, i64)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_repeat3 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %7, i32 0, i32 2
  %8 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat3, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %10 = load i64, i64* %count.addr, align 8
  %call4 = call %struct._object* %8(%struct._object* %9, i64 %10)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct._object*, %struct._object** %o.addr, align 8
  %call6 = call i32 @PySequence_Check(%struct._object* %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.32

if.then.8:                                        ; preds = %if.end.5
  %12 = load i64, i64* %count.addr, align 8
  %call9 = call %struct._object* @PyLong_FromSsize_t(i64 %12)
  store %struct._object* %call9, %struct._object** %n, align 8
  %13 = load %struct._object*, %struct._object** %n, align 8
  %cmp10 = icmp eq %struct._object* %13, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  %14 = load %struct._object*, %struct._object** %o.addr, align 8
  %15 = load %struct._object*, %struct._object** %n, align 8
  %call13 = call %struct._object* @binary_op1(%struct._object* %14, %struct._object* %15, i32 16)
  store %struct._object* %call13, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %23 = load %struct._object*, %struct._object** %result, align 8
  %cmp18 = icmp ne %struct._object* %23, @_Py_NotImplementedStruct
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %24 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %25 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp22, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %27, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %30(%struct._object* %31)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %if.end.5
  %32 = load %struct._object*, %struct._object** %o.addr, align 8
  %call33 = call %struct._object* @type_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0), %struct._object* %32)
  store %struct._object* %call33, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.19, %if.then.11, %if.then.2, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PySequence_InPlaceConcat(%struct._object* %s, %struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 11
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %4, %struct.PySequenceMethods** %m, align 8
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_inplace_concat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %6, i32 0, i32 8
  %7 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_inplace_concat, align 8
  %tobool2 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_inplace_concat4 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %8, i32 0, i32 8
  %9 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_inplace_concat4, align 8
  %10 = load %struct._object*, %struct._object** %s.addr, align 8
  %11 = load %struct._object*, %struct._object** %o.addr, align 8
  %call5 = call %struct._object* %9(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %12 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool7 = icmp ne %struct.PySequenceMethods* %12, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.13

land.lhs.true.8:                                  ; preds = %if.end.6
  %13 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_concat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %13, i32 0, i32 1
  %14 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_concat, align 8
  %tobool9 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %land.lhs.true.8
  %15 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_concat11 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %15, i32 0, i32 1
  %16 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %sq_concat11, align 8
  %17 = load %struct._object*, %struct._object** %s.addr, align 8
  %18 = load %struct._object*, %struct._object** %o.addr, align 8
  %call12 = call %struct._object* %16(%struct._object* %17, %struct._object* %18)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.8, %if.end.6
  %19 = load %struct._object*, %struct._object** %s.addr, align 8
  %call14 = call i32 @PySequence_Check(%struct._object* %19)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.28

land.lhs.true.16:                                 ; preds = %if.end.13
  %20 = load %struct._object*, %struct._object** %o.addr, align 8
  %call17 = call i32 @PySequence_Check(%struct._object* %20)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %land.lhs.true.16
  %21 = load %struct._object*, %struct._object** %s.addr, align 8
  %22 = load %struct._object*, %struct._object** %o.addr, align 8
  %call20 = call %struct._object* @binary_iop1(%struct._object* %21, %struct._object* %22, i32 152, i32 0)
  store %struct._object* %call20, %struct._object** %result, align 8
  %23 = load %struct._object*, %struct._object** %result, align 8
  %cmp21 = icmp ne %struct._object* %23, @_Py_NotImplementedStruct
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  %24 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.19
  br label %do.body

do.body:                                          ; preds = %if.end.23
  %25 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  br label %if.end.28

if.end.28:                                        ; preds = %do.end, %land.lhs.true.16, %if.end.13
  %32 = load %struct._object*, %struct._object** %s.addr, align 8
  %call29 = call %struct._object* @type_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i32 0, i32 0), %struct._object* %32)
  store %struct._object* %call29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.22, %if.then.10, %if.then.3, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define %struct._object* @PySequence_InPlaceRepeat(%struct._object* %o, i64 %count) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %count.addr = alloca i64, align 8
  %m = alloca %struct.PySequenceMethods*, align 8
  %n = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 11
  %3 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %3, %struct.PySequenceMethods** %m, align 8
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool = icmp ne %struct.PySequenceMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_inplace_repeat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %5, i32 0, i32 9
  %6 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_inplace_repeat, align 8
  %tobool1 = icmp ne %struct._object* (%struct._object*, i64)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_inplace_repeat3 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %7, i32 0, i32 9
  %8 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_inplace_repeat3, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %10 = load i64, i64* %count.addr, align 8
  %call4 = call %struct._object* %8(%struct._object* %9, i64 %10)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %tobool6 = icmp ne %struct.PySequenceMethods* %11, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %if.end.5
  %12 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_repeat = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %12, i32 0, i32 2
  %13 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat, align 8
  %tobool8 = icmp ne %struct._object* (%struct._object*, i64)* %13, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %land.lhs.true.7
  %14 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %m, align 8
  %sq_repeat10 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %14, i32 0, i32 2
  %15 = load %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)** %sq_repeat10, align 8
  %16 = load %struct._object*, %struct._object** %o.addr, align 8
  %17 = load i64, i64* %count.addr, align 8
  %call11 = call %struct._object* %15(%struct._object* %16, i64 %17)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true.7, %if.end.5
  %18 = load %struct._object*, %struct._object** %o.addr, align 8
  %call13 = call i32 @PySequence_Check(%struct._object* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.39

if.then.15:                                       ; preds = %if.end.12
  %19 = load i64, i64* %count.addr, align 8
  %call16 = call %struct._object* @PyLong_FromSsize_t(i64 %19)
  store %struct._object* %call16, %struct._object** %n, align 8
  %20 = load %struct._object*, %struct._object** %n, align 8
  %cmp17 = icmp eq %struct._object* %20, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  %21 = load %struct._object*, %struct._object** %o.addr, align 8
  %22 = load %struct._object*, %struct._object** %n, align 8
  %call20 = call %struct._object* @binary_iop1(%struct._object* %21, %struct._object* %22, i32 168, i32 16)
  store %struct._object* %call20, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.19
  %23 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  %30 = load %struct._object*, %struct._object** %result, align 8
  %cmp25 = icmp ne %struct._object* %30, @_Py_NotImplementedStruct
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.end
  %31 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %do.end
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %32 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp29, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %34, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %37(%struct._object* %38)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %if.end.12
  %39 = load %struct._object*, %struct._object** %o.addr, align 8
  %call40 = call %struct._object* @type_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0), %struct._object* %39)
  store %struct._object* %call40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.26, %if.then.18, %if.then.9, %if.then.2, %if.then
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: nounwind uwtable
define %struct._object* @PySequence_GetSlice(%struct._object* %s, i64 %i1, i64 %i2) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %i1.addr = alloca i64, align 8
  %i2.addr = alloca i64, align 8
  %mp = alloca %struct.PyMappingMethods*, align 8
  %res = alloca %struct._object*, align 8
  %slice = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store i64 %i1, i64* %i1.addr, align 8
  store i64 %i2, i64* %i2.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 12
  %3 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  store %struct.PyMappingMethods* %3, %struct.PyMappingMethods** %mp, align 8
  %4 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %mp, align 8
  %tobool1 = icmp ne %struct.PyMappingMethods* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %mp, align 8
  %mp_subscript = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %5, i32 0, i32 1
  %6 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %mp_subscript, align 8
  %tobool2 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* %i1.addr, align 8
  %8 = load i64, i64* %i2.addr, align 8
  %call4 = call %struct._object* @_PySlice_FromIndices(i64 %7, i64 %8)
  store %struct._object* %call4, %struct._object** %slice, align 8
  %9 = load %struct._object*, %struct._object** %slice, align 8
  %tobool5 = icmp ne %struct._object* %9, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %10 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %mp, align 8
  %mp_subscript8 = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %10, i32 0, i32 1
  %11 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %mp_subscript8, align 8
  %12 = load %struct._object*, %struct._object** %s.addr, align 8
  %13 = load %struct._object*, %struct._object** %slice, align 8
  %call9 = call %struct._object* %11(%struct._object* %12, %struct._object* %13)
  store %struct._object* %call9, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %14 = load %struct._object*, %struct._object** %slice, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %21 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end
  %22 = load %struct._object*, %struct._object** %s.addr, align 8
  %call14 = call %struct._object* @type_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i32 0, i32 0), %struct._object* %22)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %do.end, %if.then.6, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

declare %struct._object* @_PySlice_FromIndices(i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @PySequence_SetSlice(%struct._object* %s, i64 %i1, i64 %i2, %struct._object* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct._object*, align 8
  %i1.addr = alloca i64, align 8
  %i2.addr = alloca i64, align 8
  %o.addr = alloca %struct._object*, align 8
  %mp = alloca %struct.PyMappingMethods*, align 8
  %res = alloca i32, align 4
  %slice = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store i64 %i1, i64* %i1.addr, align 8
  store i64 %i2, i64* %i2.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 12
  %3 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  store %struct.PyMappingMethods* %3, %struct.PyMappingMethods** %mp, align 8
  %4 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %mp, align 8
  %tobool = icmp ne %struct.PyMappingMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %mp, align 8
  %mp_ass_subscript = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %5, i32 0, i32 2
  %6 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %mp_ass_subscript, align 8
  %tobool1 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* %i1.addr, align 8
  %8 = load i64, i64* %i2.addr, align 8
  %call3 = call %struct._object* @_PySlice_FromIndices(i64 %7, i64 %8)
  store %struct._object* %call3, %struct._object** %slice, align 8
  %9 = load %struct._object*, %struct._object** %slice, align 8
  %tobool4 = icmp ne %struct._object* %9, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  %10 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %mp, align 8
  %mp_ass_subscript7 = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %10, i32 0, i32 2
  %11 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %mp_ass_subscript7, align 8
  %12 = load %struct._object*, %struct._object** %s.addr, align 8
  %13 = load %struct._object*, %struct._object** %slice, align 8
  %14 = load %struct._object*, %struct._object** %o.addr, align 8
  %call8 = call i32 %11(%struct._object* %12, %struct._object* %13, %struct._object* %14)
  store i32 %call8, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %slice, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %22 = load i32, i32* %res, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end
  %23 = load %struct._object*, %struct._object** %s.addr, align 8
  %call14 = call %struct._object* @type_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.62, i32 0, i32 0), %struct._object* %23)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %do.end, %if.then.5, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @PySequence_DelSlice(%struct._object* %s, i64 %i1, i64 %i2) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct._object*, align 8
  %i1.addr = alloca i64, align 8
  %i2.addr = alloca i64, align 8
  %mp = alloca %struct.PyMappingMethods*, align 8
  %res = alloca i32, align 4
  %slice = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store i64 %i1, i64* %i1.addr, align 8
  store i64 %i2, i64* %i2.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %s.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 12
  %3 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  store %struct.PyMappingMethods* %3, %struct.PyMappingMethods** %mp, align 8
  %4 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %mp, align 8
  %tobool = icmp ne %struct.PyMappingMethods* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %mp, align 8
  %mp_ass_subscript = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %5, i32 0, i32 2
  %6 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %mp_ass_subscript, align 8
  %tobool1 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* %i1.addr, align 8
  %8 = load i64, i64* %i2.addr, align 8
  %call3 = call %struct._object* @_PySlice_FromIndices(i64 %7, i64 %8)
  store %struct._object* %call3, %struct._object** %slice, align 8
  %9 = load %struct._object*, %struct._object** %slice, align 8
  %tobool4 = icmp ne %struct._object* %9, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  %10 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %mp, align 8
  %mp_ass_subscript7 = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %10, i32 0, i32 2
  %11 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %mp_ass_subscript7, align 8
  %12 = load %struct._object*, %struct._object** %s.addr, align 8
  %13 = load %struct._object*, %struct._object** %slice, align 8
  %call8 = call i32 %11(%struct._object* %12, %struct._object* %13, %struct._object* null)
  store i32 %call8, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %14 = load %struct._object*, %struct._object** %slice, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %21 = load i32, i32* %res, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end
  %22 = load %struct._object*, %struct._object** %s.addr, align 8
  %call14 = call %struct._object* @type_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.63, i32 0, i32 0), %struct._object* %22)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %do.end, %if.then.5, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define %struct._object* @PySequence_Tuple(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %j = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %oldn = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @PyTuple_Type
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19
  %8 = load i64, i64* %tp_flags, align 8
  %and = and i64 %8, 33554432
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %call7 = call %struct._object* @PyList_AsTuple(%struct._object* %9)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %call9 = call %struct._object* @PyObject_GetIter(%struct._object* %10)
  store %struct._object* %call9, %struct._object** %it, align 8
  %11 = load %struct._object*, %struct._object** %it, align 8
  %cmp10 = icmp eq %struct._object* %11, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %v.addr, align 8
  %call13 = call i64 @PyObject_LengthHint(%struct._object* %12, i64 10)
  store i64 %call13, i64* %n, align 8
  %13 = load i64, i64* %n, align 8
  %cmp14 = icmp eq i64 %13, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %Fail

if.end.16:                                        ; preds = %if.end.12
  %14 = load i64, i64* %n, align 8
  %call17 = call %struct._object* @PyTuple_New(i64 %14)
  store %struct._object* %call17, %struct._object** %result, align 8
  %15 = load %struct._object*, %struct._object** %result, align 8
  %cmp18 = icmp eq %struct._object* %15, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %Fail

if.end.20:                                        ; preds = %if.end.16
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %16 = load %struct._object*, %struct._object** %it, align 8
  %call21 = call %struct._object* @PyIter_Next(%struct._object* %16)
  store %struct._object* %call21, %struct._object** %item, align 8
  %17 = load %struct._object*, %struct._object** %item, align 8
  %cmp22 = icmp eq %struct._object* %17, null
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %for.cond
  %call24 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call24, null
  br i1 %tobool, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  br label %Fail

if.end.26:                                        ; preds = %if.then.23
  br label %for.end

if.end.27:                                        ; preds = %for.cond
  %18 = load i64, i64* %j, align 8
  %19 = load i64, i64* %n, align 8
  %cmp28 = icmp sge i64 %18, %19
  br i1 %cmp28, label %if.then.29, label %if.end.55

if.then.29:                                       ; preds = %if.end.27
  %20 = load i64, i64* %n, align 8
  store i64 %20, i64* %oldn, align 8
  %21 = load i64, i64* %n, align 8
  %add = add i64 %21, 10
  store i64 %add, i64* %n, align 8
  %22 = load i64, i64* %n, align 8
  %shr = ashr i64 %22, 2
  %23 = load i64, i64* %n, align 8
  %add30 = add i64 %23, %shr
  store i64 %add30, i64* %n, align 8
  %24 = load i64, i64* %n, align 8
  %25 = load i64, i64* %oldn, align 8
  %cmp31 = icmp slt i64 %24, %25
  br i1 %cmp31, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.then.29
  %call33 = call %struct._object* @PyErr_NoMemory()
  br label %do.body

do.body:                                          ; preds = %if.then.32
  %26 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt34, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt34, align 8
  %cmp35 = icmp ne i64 %dec, 0
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %do.body
  br label %if.end.38

if.else:                                          ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.36
  br label %do.end

do.end:                                           ; preds = %if.end.38
  br label %Fail

if.end.39:                                        ; preds = %if.then.29
  %33 = load i64, i64* %n, align 8
  %call40 = call i32 @_PyTuple_Resize(%struct._object** %result, i64 %33)
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %if.end.39
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %34 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp44, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %36, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %39(%struct._object* %40)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %Fail

if.end.54:                                        ; preds = %if.end.39
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.27
  %41 = load %struct._object*, %struct._object** %item, align 8
  %42 = load i64, i64* %j, align 8
  %43 = load %struct._object*, %struct._object** %result, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %42
  store %struct._object* %41, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %45 = load i64, i64* %j, align 8
  %inc56 = add i64 %45, 1
  store i64 %inc56, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.26
  %46 = load i64, i64* %j, align 8
  %47 = load i64, i64* %n, align 8
  %cmp57 = icmp slt i64 %46, %47
  br i1 %cmp57, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %for.end
  %48 = load i64, i64* %j, align 8
  %call58 = call i32 @_PyTuple_Resize(%struct._object** %result, i64 %48)
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true
  br label %Fail

if.end.61:                                        ; preds = %land.lhs.true, %for.end
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.61
  %49 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp63, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %51, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %54(%struct._object* %55)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %56 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %56, %struct._object** %retval
  br label %return

Fail:                                             ; preds = %if.then.60, %do.end.53, %do.end, %if.then.25, %if.then.19, %if.then.15
  br label %do.body.73

do.body.73:                                       ; preds = %Fail
  %57 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %57, %struct._object** %_py_xdecref_tmp, align 8
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp74 = icmp ne %struct._object* %58, null
  br i1 %cmp74, label %if.then.75, label %if.end.87

if.then.75:                                       ; preds = %do.body.73
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp77, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %61, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.76
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %64(%struct._object* %65)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.86, %do.body.73
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %do.body.89

do.body.89:                                       ; preds = %do.end.88
  %66 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp90, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt91, align 8
  %dec92 = add i64 %68, -1
  store i64 %dec92, i64* %ob_refcnt91, align 8
  %cmp93 = icmp ne i64 %dec92, 0
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %do.body.89
  br label %if.end.98

if.else.95:                                       ; preds = %do.body.89
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  call void %71(%struct._object* %72)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.99, %do.end.72, %if.then.11, %if.then.6, %if.then.2, %if.then
  %73 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %73
}

declare %struct._object* @PyList_AsTuple(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_GetIter(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %t = alloca %struct._typeobject*, align 8
  %f = alloca %struct._object* (%struct._object*)*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %t, align 8
  store %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)** %f, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %t, align 8
  %tp_iter = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 25
  %tp_iter1 = bitcast {}** %tp_iter to %struct._object* (%struct._object*)**
  %3 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iter1, align 8
  store %struct._object* (%struct._object*)* %3, %struct._object* (%struct._object*)** %f, align 8
  %4 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %f, align 8
  %cmp = icmp eq %struct._object* (%struct._object*)* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i32 @PySequence_Check(%struct._object* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %o.addr, align 8
  %call3 = call %struct._object* @PySeqIter_New(%struct._object* %6)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %o.addr, align 8
  %call4 = call %struct._object* @type_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.81, i32 0, i32 0), %struct._object* %7)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %f, align 8
  %9 = load %struct._object*, %struct._object** %o.addr, align 8
  %call5 = call %struct._object* %8(%struct._object* %9)
  store %struct._object* %call5, %struct._object** %res, align 8
  %10 = load %struct._object*, %struct._object** %res, align 8
  %cmp6 = icmp ne %struct._object* %10, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %res, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 26
  %tp_iternext8 = bitcast {}** %tp_iternext to %struct._object* (%struct._object*)**
  %13 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext8, align 8
  %cmp9 = icmp ne %struct._object* (%struct._object*)* %13, null
  br i1 %cmp9, label %land.lhs.true.10, label %if.then.15

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** %res, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_iternext12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 26
  %tp_iternext13 = bitcast {}** %tp_iternext12 to %struct._object* (%struct._object*)**
  %16 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext13, align 8
  %cmp14 = icmp ne %struct._object* (%struct._object*)* %16, @_PyObject_NextNotImplemented
  br i1 %cmp14, label %if.end.23, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.10, %land.lhs.true
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %18 = load %struct._object*, %struct._object** %res, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 1
  %20 = load i8*, i8** %tp_name, align 8
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.82, i32 0, i32 0), i8* %20)
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %21 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body
  br label %if.end.22

if.else.20:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.22
  store %struct._object* null, %struct._object** %res, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %land.lhs.true.10, %if.else
  %28 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.end, %if.then.2
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

declare %struct._object* @PyTuple_New(i64) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyIter_Next(%struct._object* %iter) #0 {
entry:
  %iter.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %iter, %struct._object** %iter.addr, align 8
  %0 = load %struct._object*, %struct._object** %iter.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 26
  %tp_iternext1 = bitcast {}** %tp_iternext to %struct._object* (%struct._object*)**
  %2 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext1, align 8
  %3 = load %struct._object*, %struct._object** %iter.addr, align 8
  %call = call %struct._object* %2(%struct._object* %3)
  store %struct._object* %call, %struct._object** %result, align 8
  %4 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call4 = call i32 @PyErr_ExceptionMatches(%struct._object* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.lhs.true, %entry
  %6 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %6
}

declare i32 @_PyTuple_Resize(%struct._object**, i64) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PySequence_List(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call1, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %result, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyListObject*
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %call5 = call %struct._object* @_PyList_Extend(%struct.PyListObject* %3, %struct._object* %4)
  store %struct._object* %call5, %struct._object** %rv, align 8
  %5 = load %struct._object*, %struct._object** %rv, align 8
  %cmp6 = icmp eq %struct._object* %5, null
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %13 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp13, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %15, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %18(%struct._object* %19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %20 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.22, %do.end, %if.then.3, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @_PyList_Extend(%struct.PyListObject*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PySequence_Fast(%struct._object* %v, i8* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %m.addr = alloca i8*, align 8
  %it = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %m, i8** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @PyList_Type
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %4, @PyTuple_Type
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  %call6 = call %struct._object* @PyObject_GetIter(%struct._object* %8)
  store %struct._object* %call6, %struct._object** %it, align 8
  %9 = load %struct._object*, %struct._object** %it, align 8
  %cmp7 = icmp eq %struct._object* %9, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call9 = call i32 @PyErr_ExceptionMatches(%struct._object* %10)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %12 = load i8*, i8** %m.addr, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.5
  %13 = load %struct._object*, %struct._object** %it, align 8
  %call13 = call %struct._object* @PySequence_List(%struct._object* %13)
  store %struct._object* %call13, %struct._object** %v.addr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %14 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt14, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt14, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.11, %if.then.4, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define i64 @_PySequence_IterSearch(%struct._object* %seq, %struct._object* %obj, i32 %operation) #0 {
entry:
  %retval = alloca i64, align 8
  %seq.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %operation.addr = alloca i32, align 4
  %n = alloca i64, align 8
  %wrapped = alloca i32, align 4
  %it = alloca %struct._object*, align 8
  %cmp7 = alloca i32, align 4
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %seq.addr, align 8
  %call2 = call %struct._object* @PyObject_GetIter(%struct._object* %2)
  store %struct._object* %call2, %struct._object** %it, align 8
  %3 = load %struct._object*, %struct._object** %it, align 8
  %cmp3 = icmp eq %struct._object* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %seq.addr, align 8
  %call5 = call %struct._object* @type_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.64, i32 0, i32 0), %struct._object* %4)
  store i64 -1, i64* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %wrapped, align 4
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.39, %if.end.6
  %5 = load %struct._object*, %struct._object** %it, align 8
  %call8 = call %struct._object* @PyIter_Next(%struct._object* %5)
  store %struct._object* %call8, %struct._object** %item, align 8
  %6 = load %struct._object*, %struct._object** %item, align 8
  %cmp9 = icmp eq %struct._object* %6, null
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %for.cond
  %call11 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call11, null
  br i1 %tobool, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  br label %Fail

if.end.13:                                        ; preds = %if.then.10
  br label %for.end

if.end.14:                                        ; preds = %for.cond
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %8 = load %struct._object*, %struct._object** %item, align 8
  %call15 = call i32 @PyObject_RichCompareBool(%struct._object* %7, %struct._object* %8, i32 2)
  store i32 %call15, i32* %cmp7, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %9 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %16 = load i32, i32* %cmp7, align 4
  %cmp19 = icmp slt i32 %16, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end
  br label %Fail

if.end.21:                                        ; preds = %do.end
  %17 = load i32, i32* %cmp7, align 4
  %cmp22 = icmp sgt i32 %17, 0
  br i1 %cmp22, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.end.21
  %18 = load i32, i32* %operation.addr, align 4
  switch i32 %18, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.27
    i32 3, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.then.23
  %19 = load i64, i64* %n, align 8
  %cmp24 = icmp eq i64 %19, 9223372036854775807
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.bb
  %20 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i32 0, i32 0))
  br label %Fail

if.end.26:                                        ; preds = %sw.bb
  %21 = load i64, i64* %n, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %n, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.then.23
  %22 = load i32, i32* %wrapped, align 4
  %tobool28 = icmp ne i32 %22, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %sw.bb.27
  %23 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0))
  br label %Fail

if.end.30:                                        ; preds = %sw.bb.27
  br label %Done

sw.bb.31:                                         ; preds = %if.then.23
  store i64 1, i64* %n, align 8
  br label %Done

sw.default:                                       ; preds = %if.then.23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.26
  br label %if.end.32

if.end.32:                                        ; preds = %sw.epilog, %if.end.21
  %24 = load i32, i32* %operation.addr, align 4
  %cmp33 = icmp eq i32 %24, 2
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.32
  %25 = load i64, i64* %n, align 8
  %cmp35 = icmp eq i64 %25, 9223372036854775807
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.34
  store i32 1, i32* %wrapped, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.34
  %26 = load i64, i64* %n, align 8
  %inc38 = add i64 %26, 1
  store i64 %inc38, i64* %n, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.37, %if.end.32
  br label %for.cond

for.end:                                          ; preds = %if.end.13
  %27 = load i32, i32* %operation.addr, align 4
  %cmp40 = icmp ne i32 %27, 2
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end
  br label %Done

if.end.42:                                        ; preds = %for.end
  %28 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.67, i32 0, i32 0))
  br label %Fail

Fail:                                             ; preds = %if.end.42, %if.then.29, %if.then.25, %if.then.20, %if.then.12
  store i64 -1, i64* %n, align 8
  br label %Done

Done:                                             ; preds = %Fail, %if.then.41, %sw.bb.31, %if.end.30
  br label %do.body.43

do.body.43:                                       ; preds = %Done
  %29 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp44, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %31, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %34(%struct._object* %35)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %36 = load i64, i64* %n, align 8
  store i64 %36, i64* %retval
  br label %return

return:                                           ; preds = %do.end.53, %if.then.4, %if.then
  %37 = load i64, i64* %retval
  ret i64 %37
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define i64 @PySequence_Count(%struct._object* %s, %struct._object* %o) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i64 @_PySequence_IterSearch(%struct._object* %0, %struct._object* %1, i32 1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @PySequence_Contains(%struct._object* %seq, %struct._object* %ob) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca %struct._object*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  %sqm = alloca %struct.PySequenceMethods*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 11
  %2 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  store %struct.PySequenceMethods* %2, %struct.PySequenceMethods** %sqm, align 8
  %3 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %sqm, align 8
  %cmp = icmp ne %struct.PySequenceMethods* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %sqm, align 8
  %sq_contains = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %4, i32 0, i32 7
  %5 = load i32 (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*)** %sq_contains, align 8
  %cmp1 = icmp ne i32 (%struct._object*, %struct._object*)* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %sqm, align 8
  %sq_contains2 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %6, i32 0, i32 7
  %7 = load i32 (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*)** %sq_contains2, align 8
  %8 = load %struct._object*, %struct._object** %seq.addr, align 8
  %9 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call = call i32 %7(%struct._object* %8, %struct._object* %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct._object*, %struct._object** %seq.addr, align 8
  %11 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call3 = call i64 @_PySequence_IterSearch(%struct._object* %10, %struct._object* %11, i32 3)
  store i64 %call3, i64* %result, align 8
  %12 = load i64, i64* %result, align 8
  %conv = trunc i64 %12 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @PySequence_In(%struct._object* %w, %struct._object* %v) #0 {
entry:
  %w.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %w.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PySequence_Contains(%struct._object* %0, %struct._object* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i64 @PySequence_Index(%struct._object* %s, %struct._object* %o) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i64 @_PySequence_IterSearch(%struct._object* %0, %struct._object* %1, i32 2)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyMapping_Check(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 12
  %3 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  %tobool1 = icmp ne %struct.PyMappingMethods* %3, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_as_mapping3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 12
  %6 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping3, align 8
  %mp_subscript = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %6, i32 0, i32 1
  %7 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %mp_subscript, align 8
  %tobool4 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i64 @PyMapping_Length(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i64 @PyMapping_Size(%struct._object* %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMapping_GetItemString(%struct._object* %o, i8* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %okey = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call %struct._object* @PyUnicode_FromString(i8* %1)
  store %struct._object* %call1, %struct._object** %okey, align 8
  %2 = load %struct._object*, %struct._object** %okey, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %4 = load %struct._object*, %struct._object** %okey, align 8
  %call5 = call %struct._object* @PyObject_GetItem(%struct._object* %3, %struct._object* %4)
  store %struct._object* %call5, %struct._object** %r, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %okey, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define i32 @PyMapping_SetItemString(%struct._object* %o, i8* %key, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %okey = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call %struct._object* @PyUnicode_FromString(i8* %1)
  store %struct._object* %call1, %struct._object** %okey, align 8
  %2 = load %struct._object*, %struct._object** %okey, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %4 = load %struct._object*, %struct._object** %okey, align 8
  %5 = load %struct._object*, %struct._object** %value.addr, align 8
  %call5 = call i32 @PyObject_SetItem(%struct._object* %3, %struct._object* %4, %struct._object* %5)
  store i32 %call5, i32* %r, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %okey, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %13 = load i32, i32* %r, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @PyMapping_HasKeyString(%struct._object* %o, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call %struct._object* @PyMapping_GetItemString(%struct._object* %0, i8* %1)
  store %struct._object* %call, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %v, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %entry
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %do.end
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @PyMapping_HasKey(%struct._object* %o, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call %struct._object* @PyObject_GetItem(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %v, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %entry
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %do.end
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMapping_Keys(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %keys = alloca %struct._object*, align 8
  %fast = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyDict_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call %struct._object* @PyDict_Keys(%struct._object* %2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %3, %struct._Py_Identifier* @PyMapping_Keys.PyId_keys, i8* null)
  store %struct._object* %call1, %struct._object** %keys, align 8
  %4 = load %struct._object*, %struct._object** %keys, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %keys, align 8
  %call5 = call %struct._object* @PySequence_Fast(%struct._object* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %fast, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %keys, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** %fast, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare %struct._object* @PyDict_Keys(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_CallMethodId(%struct._object* %o, %struct._Py_Identifier* %name, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._Py_Identifier*, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %func = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store %struct._Py_Identifier* %name, %struct._Py_Identifier** %name.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._object* null, %struct._object** %func, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %cmp2 = icmp eq %struct._Py_Identifier* %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %3 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %call3 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* %3)
  store %struct._object* %call3, %struct._object** %func, align 8
  %4 = load %struct._object*, %struct._object** %func, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay7 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay7)
  %5 = load %struct._object*, %struct._object** %func, align 8
  %6 = load i8*, i8** %format.addr, align 8
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call9 = call %struct._object* @callmethod(%struct._object* %5, i8* %6, %struct.__va_list_tag* %arraydecay8, i32 0)
  store %struct._object* %call9, %struct._object** %retval1, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  %7 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMapping_Items(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %items = alloca %struct._object*, align 8
  %fast = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyDict_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call %struct._object* @PyDict_Items(%struct._object* %2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %3, %struct._Py_Identifier* @PyMapping_Items.PyId_items, i8* null)
  store %struct._object* %call1, %struct._object** %items, align 8
  %4 = load %struct._object*, %struct._object** %items, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %items, align 8
  %call5 = call %struct._object* @PySequence_Fast(%struct._object* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.71, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %fast, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %items, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** %fast, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare %struct._object* @PyDict_Items(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyMapping_Values(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %values = alloca %struct._object*, align 8
  %fast = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyDict_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call %struct._object* @PyDict_Values(%struct._object* %2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %3, %struct._Py_Identifier* @PyMapping_Values.PyId_values, i8* null)
  store %struct._object* %call1, %struct._object** %values, align 8
  %4 = load %struct._object*, %struct._object** %values, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %values, align 8
  %call5 = call %struct._object* @PySequence_Fast(%struct._object* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %fast, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %values, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** %fast, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare %struct._object* @PyDict_Values(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_CallObject(%struct._object* %o, %struct._object* %a) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %0, %struct._object* %1, %struct._object* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_Call(%struct._object* %func, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %call = alloca %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, align 8
  %result = alloca %struct._object*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result1 = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val10 = alloca %struct._Py_atomic_address*, align 8
  %result12 = alloca i8*, align 8
  %volatile_data14 = alloca i8**, align 8
  %order17 = alloca i32, align 4
  %tmp24 = alloca i8*, align 8
  %atomic_val30 = alloca %struct._Py_atomic_address*, align 8
  %result32 = alloca i8*, align 8
  %volatile_data34 = alloca i8**, align 8
  %order37 = alloca i32, align 4
  %tmp44 = alloca i8*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %func.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_call = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 14
  %2 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %tp_call, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %2, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %call, align 8
  %cmp = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %2, null
  br i1 %cmp, label %if.then, label %if.end.52

if.then:                                          ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %3 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %3, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %5 = bitcast %struct._Py_atomic_address* %4 to i8*
  %6 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %5, i32 %6)
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %8 = load i8**, i8*** %volatile_data, align 8
  %9 = load volatile i8*, i8** %8, align 8
  store i8* %9, i8** %result1, align 8
  %10 = load i32, i32* %order, align 4
  switch i32 %10, label %sw.default.3 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.4

sw.default.3:                                     ; preds = %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.default.3, %sw.bb.2
  %11 = load i8*, i8** %result1, align 8
  store i8* %11, i8** %tmp
  %12 = load i8*, i8** %tmp
  %13 = bitcast i8* %12 to %struct._ts*
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 4
  %14 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %15 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp5 = icmp sgt i32 %inc, %15
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog.4
  %call6 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0))
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %sw.epilog.4
  %16 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %call, align 8
  %17 = load %struct._object*, %struct._object** %func.addr, align 8
  %18 = load %struct._object*, %struct._object** %arg.addr, align 8
  %19 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call8 = call %struct._object* %16(%struct._object* %17, %struct._object* %18, %struct._object* %19)
  store %struct._object* %call8, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val10, align 8
  %20 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val10, align 8
  %_value15 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %20, i32 0, i32 0
  store i8** %_value15, i8*** %volatile_data14, align 8
  store i32 0, i32* %order17, align 4
  %21 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val10, align 8
  %22 = bitcast %struct._Py_atomic_address* %21 to i8*
  %23 = load i32, i32* %order17, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %22, i32 %23)
  %24 = load i32, i32* %order17, align 4
  switch i32 %24, label %sw.default.19 [
    i32 2, label %sw.bb.18
    i32 3, label %sw.bb.18
    i32 4, label %sw.bb.18
  ]

sw.bb.18:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.20

sw.default.19:                                    ; preds = %do.body
  br label %sw.epilog.20

sw.epilog.20:                                     ; preds = %sw.default.19, %sw.bb.18
  %25 = load i8**, i8*** %volatile_data14, align 8
  %26 = load volatile i8*, i8** %25, align 8
  store i8* %26, i8** %result12, align 8
  %27 = load i32, i32* %order17, align 4
  switch i32 %27, label %sw.default.22 [
    i32 1, label %sw.bb.21
    i32 3, label %sw.bb.21
    i32 4, label %sw.bb.21
  ]

sw.bb.21:                                         ; preds = %sw.epilog.20, %sw.epilog.20, %sw.epilog.20
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.23

sw.default.22:                                    ; preds = %sw.epilog.20
  br label %sw.epilog.23

sw.epilog.23:                                     ; preds = %sw.default.22, %sw.bb.21
  %28 = load i8*, i8** %result12, align 8
  store i8* %28, i8** %tmp24
  %29 = load i8*, i8** %tmp24
  %30 = bitcast i8* %29 to %struct._ts*
  %recursion_depth25 = getelementptr inbounds %struct._ts, %struct._ts* %30, i32 0, i32 4
  %31 = load i32, i32* %recursion_depth25, align 4
  %dec = add i32 %31, -1
  store i32 %dec, i32* %recursion_depth25, align 4
  %32 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp26 = icmp sgt i32 %32, 100
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.23
  %33 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub = sub i32 %33, 50
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.23
  %34 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr = ashr i32 %34, 2
  %mul = mul i32 3, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %mul, %cond.false ]
  %cmp27 = icmp slt i32 %dec, %cond
  br i1 %cmp27, label %if.then.28, label %if.end.45

if.then.28:                                       ; preds = %cond.end
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val30, align 8
  %35 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val30, align 8
  %_value35 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %35, i32 0, i32 0
  store i8** %_value35, i8*** %volatile_data34, align 8
  store i32 0, i32* %order37, align 4
  %36 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val30, align 8
  %37 = bitcast %struct._Py_atomic_address* %36 to i8*
  %38 = load i32, i32* %order37, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %37, i32 %38)
  %39 = load i32, i32* %order37, align 4
  switch i32 %39, label %sw.default.39 [
    i32 2, label %sw.bb.38
    i32 3, label %sw.bb.38
    i32 4, label %sw.bb.38
  ]

sw.bb.38:                                         ; preds = %if.then.28, %if.then.28, %if.then.28
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.40

sw.default.39:                                    ; preds = %if.then.28
  br label %sw.epilog.40

sw.epilog.40:                                     ; preds = %sw.default.39, %sw.bb.38
  %40 = load i8**, i8*** %volatile_data34, align 8
  %41 = load volatile i8*, i8** %40, align 8
  store i8* %41, i8** %result32, align 8
  %42 = load i32, i32* %order37, align 4
  switch i32 %42, label %sw.default.42 [
    i32 1, label %sw.bb.41
    i32 3, label %sw.bb.41
    i32 4, label %sw.bb.41
  ]

sw.bb.41:                                         ; preds = %sw.epilog.40, %sw.epilog.40, %sw.epilog.40
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.43

sw.default.42:                                    ; preds = %sw.epilog.40
  br label %sw.epilog.43

sw.epilog.43:                                     ; preds = %sw.default.42, %sw.bb.41
  %43 = load i8*, i8** %result32, align 8
  store i8* %43, i8** %tmp44
  %44 = load i8*, i8** %tmp44
  %45 = bitcast i8* %44 to %struct._ts*
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %45, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  br label %if.end.45

if.end.45:                                        ; preds = %sw.epilog.43, %cond.end
  br label %do.end

do.end:                                           ; preds = %if.end.45
  %46 = load %struct._object*, %struct._object** %result, align 8
  %cmp46 = icmp eq %struct._object* %46, null
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.51

land.lhs.true.47:                                 ; preds = %do.end
  %call48 = call %struct._object* @PyErr_Occurred()
  %tobool49 = icmp ne %struct._object* %call48, null
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.47
  %47 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.47, %do.end
  %48 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %entry
  %49 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %50 = load %struct._object*, %struct._object** %func.addr, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 1
  %52 = load i8*, i8** %tp_name, align 8
  %call54 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.76, i32 0, i32 0), i8* %52)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.end.51, %if.then.7
  %53 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %53
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load i32, i32* %order.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @_Py_CheckRecursiveCall(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_CallFunction(%struct._object* %callable, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %args = alloca %struct._object*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = load %struct._object*, %struct._object** %callable.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %format.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8*, i8** %format.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay3 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay3)
  %4 = load i8*, i8** %format.addr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call5 = call %struct._object* @Py_VaBuildValue(i8* %4, %struct.__va_list_tag* %arraydecay4)
  store %struct._object* %call5, %struct._object** %args, align 8
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call8 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call8, %struct._object** %args, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.2
  %5 = load %struct._object*, %struct._object** %args, align 8
  %cmp10 = icmp eq %struct._object* %5, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %6 = load %struct._object*, %struct._object** %callable.addr, align 8
  %7 = load %struct._object*, %struct._object** %args, align 8
  %call14 = call %struct._object* @call_function_tail(%struct._object* %6, %struct._object* %7)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct._object* @Py_VaBuildValue(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @call_function_tail(%struct._object* %callable, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %a = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end.11, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call, %struct._object** %a, align 8
  %4 = load %struct._object*, %struct._object** %a, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.then.3
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.3
  %12 = load %struct._object*, %struct._object** %args.addr, align 8
  %13 = load %struct._object*, %struct._object** %a, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %12, %struct._object** %arrayidx, align 8
  %15 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %15, %struct._object** %args.addr, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %16 = load %struct._object*, %struct._object** %callable.addr, align 8
  %17 = load %struct._object*, %struct._object** %args.addr, align 8
  %call12 = call %struct._object* @PyObject_Call(%struct._object* %16, %struct._object* %17, %struct._object* null)
  store %struct._object* %call12, %struct._object** %retval1, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.11
  %18 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp14, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %20, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %23(%struct._object* %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %25 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.23, %do.end, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_CallFunction_SizeT(%struct._object* %callable, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %args = alloca %struct._object*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = load %struct._object*, %struct._object** %callable.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %format.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8*, i8** %format.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay3 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay3)
  %4 = load i8*, i8** %format.addr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call5 = call %struct._object* @_Py_VaBuildValue_SizeT(i8* %4, %struct.__va_list_tag* %arraydecay4)
  store %struct._object* %call5, %struct._object** %args, align 8
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call8 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call8, %struct._object** %args, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.2
  %5 = load %struct._object*, %struct._object** %callable.addr, align 8
  %6 = load %struct._object*, %struct._object** %args, align 8
  %call10 = call %struct._object* @call_function_tail(%struct._object* %5, %struct._object* %6)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare %struct._object* @_Py_VaBuildValue_SizeT(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_CallMethod(%struct._object* %o, i8* %name, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %func = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._object* null, %struct._object** %func, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call3 = call %struct._object* @PyObject_GetAttrString(%struct._object* %2, i8* %3)
  store %struct._object* %call3, %struct._object** %func, align 8
  %4 = load %struct._object*, %struct._object** %func, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay7 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay7)
  %5 = load %struct._object*, %struct._object** %func, align 8
  %6 = load i8*, i8** %format.addr, align 8
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call9 = call %struct._object* @callmethod(%struct._object* %5, i8* %6, %struct.__va_list_tag* %arraydecay8, i32 0)
  store %struct._object* %call9, %struct._object** %retval1, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  %7 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @callmethod(%struct._object* %func, i8* %format, %struct.__va_list_tag* %va, i32 %is_size_t) #0 {
entry:
  %func.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %is_size_t.addr = alloca i32, align 4
  %retval1 = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  store i32 %is_size_t, i32* %is_size_t.addr, align 4
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %func.addr, align 8
  %call = call i32 @PyCallable_Check(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %func.addr, align 8
  %call2 = call %struct._object* @type_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.88, i32 0, i32 0), %struct._object* %1)
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %format.addr, align 8
  %tobool3 = icmp ne i8* %2, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %format.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %if.then.5, label %if.else.11

if.then.5:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %is_size_t.addr, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %6 = load i8*, i8** %format.addr, align 8
  %7 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %call8 = call %struct._object* @_Py_VaBuildValue_SizeT(i8* %6, %struct.__va_list_tag* %7)
  store %struct._object* %call8, %struct._object** %args, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then.5
  %8 = load i8*, i8** %format.addr, align 8
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %call9 = call %struct._object* @Py_VaBuildValue(i8* %8, %struct.__va_list_tag* %9)
  store %struct._object* %call9, %struct._object** %args, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.end
  %call12 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call12, %struct._object** %args, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.end.10
  %10 = load %struct._object*, %struct._object** %func.addr, align 8
  %11 = load %struct._object*, %struct._object** %args, align 8
  %call14 = call %struct._object* @call_function_tail(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call14, %struct._object** %retval1, align 8
  br label %exit

exit:                                             ; preds = %if.end.13, %if.then
  br label %do.body

do.body:                                          ; preds = %exit
  %12 = load %struct._object*, %struct._object** %func.addr, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %13, null
  br i1 %cmp, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %do.body
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %do.body
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %21 = load %struct._object*, %struct._object** %retval1, align 8
  ret %struct._object* %21
}

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_CallMethod_SizeT(%struct._object* %o, i8* %name, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %func = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._object* null, %struct._object** %func, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call3 = call %struct._object* @PyObject_GetAttrString(%struct._object* %2, i8* %3)
  store %struct._object* %call3, %struct._object** %func, align 8
  %4 = load %struct._object*, %struct._object** %func, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay7 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay7)
  %5 = load %struct._object*, %struct._object** %func, align 8
  %6 = load i8*, i8** %format.addr, align 8
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call9 = call %struct._object* @callmethod(%struct._object* %5, i8* %6, %struct.__va_list_tag* %arraydecay8, i32 1)
  store %struct._object* %call9, %struct._object** %retval1, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  %7 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object* %o, %struct._Py_Identifier* %name, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._Py_Identifier*, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %func = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store %struct._Py_Identifier* %name, %struct._Py_Identifier** %name.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._object* null, %struct._object** %func, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %cmp2 = icmp eq %struct._Py_Identifier* %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %3 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %call3 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* %3)
  store %struct._object* %call3, %struct._object** %func, align 8
  %4 = load %struct._object*, %struct._object** %func, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay7 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay7)
  %5 = load %struct._object*, %struct._object** %func, align 8
  %6 = load i8*, i8** %format.addr, align 8
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call9 = call %struct._object* @callmethod(%struct._object* %5, i8* %6, %struct.__va_list_tag* %arraydecay8, i32 1)
  store %struct._object* %call9, %struct._object** %retval1, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  %7 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_CallMethodObjArgs(%struct._object* %callable, %struct._object* %name, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %callable.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %name.addr, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %callable.addr, align 8
  %3 = load %struct._object*, %struct._object** %name.addr, align 8
  %call3 = call %struct._object* @PyObject_GetAttr(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call3, %struct._object** %callable.addr, align 8
  %4 = load %struct._object*, %struct._object** %callable.addr, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay7 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call9 = call %struct._object* @objargs_mktuple(%struct.__va_list_tag* %arraydecay8)
  store %struct._object* %call9, %struct._object** %args, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  %5 = load %struct._object*, %struct._object** %args, align 8
  %cmp12 = icmp eq %struct._object* %5, null
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %6 = load %struct._object*, %struct._object** %callable.addr, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %callable.addr, align 8
  %14 = load %struct._object*, %struct._object** %args, align 8
  %call19 = call %struct._object* @PyObject_Call(%struct._object* %13, %struct._object* %14, %struct._object* null)
  store %struct._object* %call19, %struct._object** %tmp, align 8
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.18
  %15 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp22, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %17, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.20
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %20(%struct._object* %21)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %22 = load %struct._object*, %struct._object** %callable.addr, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp34, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %24, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.32
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.32
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %27(%struct._object* %28)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %29 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.43, %do.end, %if.then.5, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @objargs_mktuple(%struct.__va_list_tag* %va) #0 {
entry:
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %countva = alloca [1 x %struct.__va_list_tag], align 16
  %result = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = bitcast [1 x %struct.__va_list_tag]* %countva to i8*
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %2, i64 24, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %countva, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3
  %reg_save_area = load i8*, i8** %3
  %4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to %struct._object**
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %7 = bitcast i8* %overflow_arg_area to %struct._object**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct._object** [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load %struct._object*, %struct._object** %vaarg.addr
  %cmp = icmp ne %struct._object* %8, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end
  %9 = load i32, i32* %n, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %vaarg.end
  %10 = load i32, i32* %n, align 4
  %conv = sext i32 %10 to i64
  %call = call %struct._object* @PyTuple_New(i64 %conv)
  store %struct._object* %call, %struct._object** %result, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %cmp1 = icmp ne %struct._object* %11, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %12 = load i32, i32* %n, align 4
  %cmp3 = icmp sgt i32 %12, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n, align 4
  %cmp5 = icmp slt i32 %13, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %gp_offset_p7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 0
  %gp_offset8 = load i32, i32* %gp_offset_p7
  %fits_in_gp9 = icmp ule i32 %gp_offset8, 40
  br i1 %fits_in_gp9, label %vaarg.in_reg.10, label %vaarg.in_mem.12

vaarg.in_reg.10:                                  ; preds = %for.body
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 3
  %reg_save_area11 = load i8*, i8** %16
  %17 = getelementptr i8, i8* %reg_save_area11, i32 %gp_offset8
  %18 = bitcast i8* %17 to %struct._object**
  %19 = add i32 %gp_offset8, 8
  store i32 %19, i32* %gp_offset_p7
  br label %vaarg.end.16

vaarg.in_mem.12:                                  ; preds = %for.body
  %overflow_arg_area_p13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 2
  %overflow_arg_area14 = load i8*, i8** %overflow_arg_area_p13
  %20 = bitcast i8* %overflow_arg_area14 to %struct._object**
  %overflow_arg_area.next15 = getelementptr i8, i8* %overflow_arg_area14, i32 8
  store i8* %overflow_arg_area.next15, i8** %overflow_arg_area_p13
  br label %vaarg.end.16

vaarg.end.16:                                     ; preds = %vaarg.in_mem.12, %vaarg.in_reg.10
  %vaarg.addr17 = phi %struct._object** [ %18, %vaarg.in_reg.10 ], [ %20, %vaarg.in_mem.12 ]
  %21 = load %struct._object*, %struct._object** %vaarg.addr17
  store %struct._object* %21, %struct._object** %tmp, align 8
  %22 = load %struct._object*, %struct._object** %tmp, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._object*, %struct._object** %result, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %22, %struct._object** %arrayidx, align 8
  %26 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %inc18 = add i64 %27, 1
  store i64 %inc18, i64* %ob_refcnt, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end.16
  %28 = load i32, i32* %i, align 4
  %inc19 = add i32 %28, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %while.end
  %29 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_CallMethodIdObjArgs(%struct._object* %callable, %struct._Py_Identifier* %name, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._Py_Identifier*, align 8
  %args = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  store %struct._Py_Identifier* %name, %struct._Py_Identifier** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %callable.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %cmp2 = icmp eq %struct._Py_Identifier* %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @null_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %callable.addr, align 8
  %3 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %call3 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* %3)
  store %struct._object* %call3, %struct._object** %callable.addr, align 8
  %4 = load %struct._object*, %struct._object** %callable.addr, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay7 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call9 = call %struct._object* @objargs_mktuple(%struct.__va_list_tag* %arraydecay8)
  store %struct._object* %call9, %struct._object** %args, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  %5 = load %struct._object*, %struct._object** %args, align 8
  %cmp12 = icmp eq %struct._object* %5, null
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %6 = load %struct._object*, %struct._object** %callable.addr, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %callable.addr, align 8
  %14 = load %struct._object*, %struct._object** %args, align 8
  %call19 = call %struct._object* @PyObject_Call(%struct._object* %13, %struct._object* %14, %struct._object* null)
  store %struct._object* %call19, %struct._object** %tmp, align 8
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.18
  %15 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp22, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %17, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.20
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %20(%struct._object* %21)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %22 = load %struct._object*, %struct._object** %callable.addr, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp34, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %24, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.32
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.32
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %27(%struct._object* %28)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %29 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.43, %do.end, %if.then.5, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_IsInstance(%struct._object* %inst, %struct._object* %cls) #0 {
entry:
  %retval = alloca i32, align 4
  %inst.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %checker = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %r = alloca i32, align 4
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %item = alloca %struct._object*, align 8
  %atomic_val18 = alloca %struct._Py_atomic_address*, align 8
  %result20 = alloca i8*, align 8
  %volatile_data22 = alloca i8**, align 8
  %order25 = alloca i32, align 4
  %tmp32 = alloca i8*, align 8
  %atomic_val38 = alloca %struct._Py_atomic_address*, align 8
  %result40 = alloca i8*, align 8
  %volatile_data42 = alloca i8**, align 8
  %order45 = alloca i32, align 4
  %tmp52 = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %atomic_val61 = alloca %struct._Py_atomic_address*, align 8
  %result63 = alloca i8*, align 8
  %volatile_data65 = alloca i8**, align 8
  %order68 = alloca i32, align 4
  %tmp75 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %atomic_val95 = alloca %struct._Py_atomic_address*, align 8
  %result97 = alloca i8*, align 8
  %volatile_data99 = alloca i8**, align 8
  %order102 = alloca i32, align 4
  %tmp109 = alloca i8*, align 8
  %atomic_val123 = alloca %struct._Py_atomic_address*, align 8
  %result125 = alloca i8*, align 8
  %volatile_data127 = alloca i8**, align 8
  %order130 = alloca i32, align 4
  %tmp137 = alloca i8*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  %_py_decref_tmp158 = alloca %struct._object*, align 8
  store %struct._object* %inst, %struct._object** %inst.addr, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  %0 = load %struct._object*, %struct._object** %inst.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %2 = load %struct._object*, %struct._object** %cls.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct._typeobject*
  %cmp = icmp eq %struct._typeobject* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %cls.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.54

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %r, align 4
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %7 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %7, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %8 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %9 = bitcast %struct._Py_atomic_address* %8 to i8*
  %10 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %9, i32 %10)
  %11 = load i32, i32* %order, align 4
  switch i32 %11, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.3, %if.then.3, %if.then.3
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %12 = load i8**, i8*** %volatile_data, align 8
  %13 = load volatile i8*, i8** %12, align 8
  store i8* %13, i8** %result, align 8
  %14 = load i32, i32* %order, align 4
  switch i32 %14, label %sw.default.5 [
    i32 1, label %sw.bb.4
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.4
  ]

sw.bb.4:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.6

sw.default.5:                                     ; preds = %sw.epilog
  br label %sw.epilog.6

sw.epilog.6:                                      ; preds = %sw.default.5, %sw.bb.4
  %15 = load i8*, i8** %result, align 8
  store i8* %15, i8** %tmp
  %16 = load i8*, i8** %tmp
  %17 = bitcast i8* %16 to %struct._ts*
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 4
  %18 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %19 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp7 = icmp sgt i32 %inc, %19
  br i1 %cmp7, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %sw.epilog.6
  %call = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %sw.epilog.6
  %20 = load %struct._object*, %struct._object** %cls.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size, align 8
  store i64 %22, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %n, align 8
  %cmp10 = icmp slt i64 %23, %24
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i64, i64* %i, align 8
  %26 = load %struct._object*, %struct._object** %cls.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %25
  %28 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %28, %struct._object** %item, align 8
  %29 = load %struct._object*, %struct._object** %inst.addr, align 8
  %30 = load %struct._object*, %struct._object** %item, align 8
  %call12 = call i32 @PyObject_IsInstance(%struct._object* %29, %struct._object* %30)
  store i32 %call12, i32* %r, align 4
  %31 = load i32, i32* %r, align 4
  %cmp13 = icmp ne i32 %31, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  br label %for.end

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %32 = load i64, i64* %i, align 8
  %inc16 = add i64 %32, 1
  store i64 %inc16, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val18, align 8
  %33 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val18, align 8
  %_value23 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %33, i32 0, i32 0
  store i8** %_value23, i8*** %volatile_data22, align 8
  store i32 0, i32* %order25, align 4
  %34 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val18, align 8
  %35 = bitcast %struct._Py_atomic_address* %34 to i8*
  %36 = load i32, i32* %order25, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %35, i32 %36)
  %37 = load i32, i32* %order25, align 4
  switch i32 %37, label %sw.default.27 [
    i32 2, label %sw.bb.26
    i32 3, label %sw.bb.26
    i32 4, label %sw.bb.26
  ]

sw.bb.26:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.28

sw.default.27:                                    ; preds = %do.body
  br label %sw.epilog.28

sw.epilog.28:                                     ; preds = %sw.default.27, %sw.bb.26
  %38 = load i8**, i8*** %volatile_data22, align 8
  %39 = load volatile i8*, i8** %38, align 8
  store i8* %39, i8** %result20, align 8
  %40 = load i32, i32* %order25, align 4
  switch i32 %40, label %sw.default.30 [
    i32 1, label %sw.bb.29
    i32 3, label %sw.bb.29
    i32 4, label %sw.bb.29
  ]

sw.bb.29:                                         ; preds = %sw.epilog.28, %sw.epilog.28, %sw.epilog.28
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.31

sw.default.30:                                    ; preds = %sw.epilog.28
  br label %sw.epilog.31

sw.epilog.31:                                     ; preds = %sw.default.30, %sw.bb.29
  %41 = load i8*, i8** %result20, align 8
  store i8* %41, i8** %tmp32
  %42 = load i8*, i8** %tmp32
  %43 = bitcast i8* %42 to %struct._ts*
  %recursion_depth33 = getelementptr inbounds %struct._ts, %struct._ts* %43, i32 0, i32 4
  %44 = load i32, i32* %recursion_depth33, align 4
  %dec = add i32 %44, -1
  store i32 %dec, i32* %recursion_depth33, align 4
  %45 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp34 = icmp sgt i32 %45, 100
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.31
  %46 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub = sub i32 %46, 50
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.31
  %47 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr = ashr i32 %47, 2
  %mul = mul i32 3, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %mul, %cond.false ]
  %cmp35 = icmp slt i32 %dec, %cond
  br i1 %cmp35, label %if.then.36, label %if.end.53

if.then.36:                                       ; preds = %cond.end
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val38, align 8
  %48 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val38, align 8
  %_value43 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %48, i32 0, i32 0
  store i8** %_value43, i8*** %volatile_data42, align 8
  store i32 0, i32* %order45, align 4
  %49 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val38, align 8
  %50 = bitcast %struct._Py_atomic_address* %49 to i8*
  %51 = load i32, i32* %order45, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %50, i32 %51)
  %52 = load i32, i32* %order45, align 4
  switch i32 %52, label %sw.default.47 [
    i32 2, label %sw.bb.46
    i32 3, label %sw.bb.46
    i32 4, label %sw.bb.46
  ]

sw.bb.46:                                         ; preds = %if.then.36, %if.then.36, %if.then.36
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.48

sw.default.47:                                    ; preds = %if.then.36
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %sw.default.47, %sw.bb.46
  %53 = load i8**, i8*** %volatile_data42, align 8
  %54 = load volatile i8*, i8** %53, align 8
  store i8* %54, i8** %result40, align 8
  %55 = load i32, i32* %order45, align 4
  switch i32 %55, label %sw.default.50 [
    i32 1, label %sw.bb.49
    i32 3, label %sw.bb.49
    i32 4, label %sw.bb.49
  ]

sw.bb.49:                                         ; preds = %sw.epilog.48, %sw.epilog.48, %sw.epilog.48
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.51

sw.default.50:                                    ; preds = %sw.epilog.48
  br label %sw.epilog.51

sw.epilog.51:                                     ; preds = %sw.default.50, %sw.bb.49
  %56 = load i8*, i8** %result40, align 8
  store i8* %56, i8** %tmp52
  %57 = load i8*, i8** %tmp52
  %58 = bitcast i8* %57 to %struct._ts*
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %58, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %sw.epilog.51, %cond.end
  br label %do.end

do.end:                                           ; preds = %if.end.53
  %59 = load i32, i32* %r, align 4
  store i32 %59, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end
  %60 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call55 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %60, %struct._Py_Identifier* @PyObject_IsInstance.PyId___instancecheck__)
  store %struct._object* %call55, %struct._object** %checker, align 8
  %61 = load %struct._object*, %struct._object** %checker, align 8
  %cmp56 = icmp ne %struct._object* %61, null
  br i1 %cmp56, label %if.then.57, label %if.else.169

if.then.57:                                       ; preds = %if.end.54
  store i32 -1, i32* %ok, align 4
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val61, align 8
  %62 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val61, align 8
  %_value66 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %62, i32 0, i32 0
  store i8** %_value66, i8*** %volatile_data65, align 8
  store i32 0, i32* %order68, align 4
  %63 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val61, align 8
  %64 = bitcast %struct._Py_atomic_address* %63 to i8*
  %65 = load i32, i32* %order68, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %64, i32 %65)
  %66 = load i32, i32* %order68, align 4
  switch i32 %66, label %sw.default.70 [
    i32 2, label %sw.bb.69
    i32 3, label %sw.bb.69
    i32 4, label %sw.bb.69
  ]

sw.bb.69:                                         ; preds = %if.then.57, %if.then.57, %if.then.57
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.71

sw.default.70:                                    ; preds = %if.then.57
  br label %sw.epilog.71

sw.epilog.71:                                     ; preds = %sw.default.70, %sw.bb.69
  %67 = load i8**, i8*** %volatile_data65, align 8
  %68 = load volatile i8*, i8** %67, align 8
  store i8* %68, i8** %result63, align 8
  %69 = load i32, i32* %order68, align 4
  switch i32 %69, label %sw.default.73 [
    i32 1, label %sw.bb.72
    i32 3, label %sw.bb.72
    i32 4, label %sw.bb.72
  ]

sw.bb.72:                                         ; preds = %sw.epilog.71, %sw.epilog.71, %sw.epilog.71
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.74

sw.default.73:                                    ; preds = %sw.epilog.71
  br label %sw.epilog.74

sw.epilog.74:                                     ; preds = %sw.default.73, %sw.bb.72
  %70 = load i8*, i8** %result63, align 8
  store i8* %70, i8** %tmp75
  %71 = load i8*, i8** %tmp75
  %72 = bitcast i8* %71 to %struct._ts*
  %recursion_depth76 = getelementptr inbounds %struct._ts, %struct._ts* %72, i32 0, i32 4
  %73 = load i32, i32* %recursion_depth76, align 4
  %inc77 = add i32 %73, 1
  store i32 %inc77, i32* %recursion_depth76, align 4
  %74 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp78 = icmp sgt i32 %inc77, %74
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.91

land.lhs.true.79:                                 ; preds = %sw.epilog.74
  %call80 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0))
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.91

if.then.82:                                       ; preds = %land.lhs.true.79
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.82
  %75 = load %struct._object*, %struct._object** %checker, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt, align 8
  %dec85 = add i64 %77, -1
  store i64 %dec85, i64* %ob_refcnt, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.87, label %if.else

if.then.87:                                       ; preds = %do.body.83
  br label %if.end.89

if.else:                                          ; preds = %do.body.83
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %80(%struct._object* %81)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else, %if.then.87
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %82 = load i32, i32* %ok, align 4
  store i32 %82, i32* %retval
  br label %return

if.end.91:                                        ; preds = %land.lhs.true.79, %sw.epilog.74
  %83 = load %struct._object*, %struct._object** %checker, align 8
  %84 = load %struct._object*, %struct._object** %inst.addr, align 8
  %call92 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %83, %struct._object* %84, i8* null)
  store %struct._object* %call92, %struct._object** %res, align 8
  br label %do.body.93

do.body.93:                                       ; preds = %if.end.91
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val95, align 8
  %85 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val95, align 8
  %_value100 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %85, i32 0, i32 0
  store i8** %_value100, i8*** %volatile_data99, align 8
  store i32 0, i32* %order102, align 4
  %86 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val95, align 8
  %87 = bitcast %struct._Py_atomic_address* %86 to i8*
  %88 = load i32, i32* %order102, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %87, i32 %88)
  %89 = load i32, i32* %order102, align 4
  switch i32 %89, label %sw.default.104 [
    i32 2, label %sw.bb.103
    i32 3, label %sw.bb.103
    i32 4, label %sw.bb.103
  ]

sw.bb.103:                                        ; preds = %do.body.93, %do.body.93, %do.body.93
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.105

sw.default.104:                                   ; preds = %do.body.93
  br label %sw.epilog.105

sw.epilog.105:                                    ; preds = %sw.default.104, %sw.bb.103
  %90 = load i8**, i8*** %volatile_data99, align 8
  %91 = load volatile i8*, i8** %90, align 8
  store i8* %91, i8** %result97, align 8
  %92 = load i32, i32* %order102, align 4
  switch i32 %92, label %sw.default.107 [
    i32 1, label %sw.bb.106
    i32 3, label %sw.bb.106
    i32 4, label %sw.bb.106
  ]

sw.bb.106:                                        ; preds = %sw.epilog.105, %sw.epilog.105, %sw.epilog.105
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.108

sw.default.107:                                   ; preds = %sw.epilog.105
  br label %sw.epilog.108

sw.epilog.108:                                    ; preds = %sw.default.107, %sw.bb.106
  %93 = load i8*, i8** %result97, align 8
  store i8* %93, i8** %tmp109
  %94 = load i8*, i8** %tmp109
  %95 = bitcast i8* %94 to %struct._ts*
  %recursion_depth110 = getelementptr inbounds %struct._ts, %struct._ts* %95, i32 0, i32 4
  %96 = load i32, i32* %recursion_depth110, align 4
  %dec111 = add i32 %96, -1
  store i32 %dec111, i32* %recursion_depth110, align 4
  %97 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp112 = icmp sgt i32 %97, 100
  br i1 %cmp112, label %cond.true.113, label %cond.false.115

cond.true.113:                                    ; preds = %sw.epilog.108
  %98 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub114 = sub i32 %98, 50
  br label %cond.end.118

cond.false.115:                                   ; preds = %sw.epilog.108
  %99 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr116 = ashr i32 %99, 2
  %mul117 = mul i32 3, %shr116
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.115, %cond.true.113
  %cond119 = phi i32 [ %sub114, %cond.true.113 ], [ %mul117, %cond.false.115 ]
  %cmp120 = icmp slt i32 %dec111, %cond119
  br i1 %cmp120, label %if.then.121, label %if.end.139

if.then.121:                                      ; preds = %cond.end.118
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val123, align 8
  %100 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val123, align 8
  %_value128 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %100, i32 0, i32 0
  store i8** %_value128, i8*** %volatile_data127, align 8
  store i32 0, i32* %order130, align 4
  %101 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val123, align 8
  %102 = bitcast %struct._Py_atomic_address* %101 to i8*
  %103 = load i32, i32* %order130, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %102, i32 %103)
  %104 = load i32, i32* %order130, align 4
  switch i32 %104, label %sw.default.132 [
    i32 2, label %sw.bb.131
    i32 3, label %sw.bb.131
    i32 4, label %sw.bb.131
  ]

sw.bb.131:                                        ; preds = %if.then.121, %if.then.121, %if.then.121
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.133

sw.default.132:                                   ; preds = %if.then.121
  br label %sw.epilog.133

sw.epilog.133:                                    ; preds = %sw.default.132, %sw.bb.131
  %105 = load i8**, i8*** %volatile_data127, align 8
  %106 = load volatile i8*, i8** %105, align 8
  store i8* %106, i8** %result125, align 8
  %107 = load i32, i32* %order130, align 4
  switch i32 %107, label %sw.default.135 [
    i32 1, label %sw.bb.134
    i32 3, label %sw.bb.134
    i32 4, label %sw.bb.134
  ]

sw.bb.134:                                        ; preds = %sw.epilog.133, %sw.epilog.133, %sw.epilog.133
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.136

sw.default.135:                                   ; preds = %sw.epilog.133
  br label %sw.epilog.136

sw.epilog.136:                                    ; preds = %sw.default.135, %sw.bb.134
  %108 = load i8*, i8** %result125, align 8
  store i8* %108, i8** %tmp137
  %109 = load i8*, i8** %tmp137
  %110 = bitcast i8* %109 to %struct._ts*
  %overflowed138 = getelementptr inbounds %struct._ts, %struct._ts* %110, i32 0, i32 5
  store i8 0, i8* %overflowed138, align 1
  br label %if.end.139

if.end.139:                                       ; preds = %sw.epilog.136, %cond.end.118
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.139
  br label %do.body.141

do.body.141:                                      ; preds = %do.end.140
  %111 = load %struct._object*, %struct._object** %checker, align 8
  store %struct._object* %111, %struct._object** %_py_decref_tmp143, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt144, align 8
  %dec145 = add i64 %113, -1
  store i64 %dec145, i64* %ob_refcnt144, align 8
  %cmp146 = icmp ne i64 %dec145, 0
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %do.body.141
  br label %if.end.151

if.else.148:                                      ; preds = %do.body.141
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_type149 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 1
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type149, align 8
  %tp_dealloc150 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i32 0, i32 4
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc150, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  call void %116(%struct._object* %117)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.148, %if.then.147
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  %118 = load %struct._object*, %struct._object** %res, align 8
  %cmp153 = icmp ne %struct._object* %118, null
  br i1 %cmp153, label %if.then.154, label %if.end.168

if.then.154:                                      ; preds = %do.end.152
  %119 = load %struct._object*, %struct._object** %res, align 8
  %call155 = call i32 @PyObject_IsTrue(%struct._object* %119)
  store i32 %call155, i32* %ok, align 4
  br label %do.body.156

do.body.156:                                      ; preds = %if.then.154
  %120 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %120, %struct._object** %_py_decref_tmp158, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_refcnt159 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt159, align 8
  %dec160 = add i64 %122, -1
  store i64 %dec160, i64* %ob_refcnt159, align 8
  %cmp161 = icmp ne i64 %dec160, 0
  br i1 %cmp161, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %do.body.156
  br label %if.end.166

if.else.163:                                      ; preds = %do.body.156
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_type164 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 1
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type164, align 8
  %tp_dealloc165 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i32 0, i32 4
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc165, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  call void %125(%struct._object* %126)
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.163, %if.then.162
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  br label %if.end.168

if.end.168:                                       ; preds = %do.end.167, %do.end.152
  %127 = load i32, i32* %ok, align 4
  store i32 %127, i32* %retval
  br label %return

if.else.169:                                      ; preds = %if.end.54
  %call170 = call %struct._object* @PyErr_Occurred()
  %tobool171 = icmp ne %struct._object* %call170, null
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.else.169
  store i32 -1, i32* %retval
  br label %return

if.end.173:                                       ; preds = %if.else.169
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173
  %128 = load %struct._object*, %struct._object** %inst.addr, align 8
  %129 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call175 = call i32 @recursive_isinstance(%struct._object* %128, %struct._object* %129)
  store i32 %call175, i32* %retval
  br label %return

return:                                           ; preds = %if.end.174, %if.then.172, %if.end.168, %do.end.90, %do.end, %if.then.8, %if.then
  %130 = load i32, i32* %retval
  ret i32 %130
}

declare i32 @PyObject_IsTrue(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @recursive_isinstance(%struct._object* %inst, %struct._object* %cls) #0 {
entry:
  %retval = alloca i32, align 4
  %inst.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %icls = alloca %struct._object*, align 8
  %retval1 = alloca i32, align 4
  %c = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  store %struct._object* %inst, %struct._object** %inst.addr, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  store i32 0, i32* %retval1, align 4
  %0 = load %struct._object*, %struct._object** %cls.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 2147483648
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else.30

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %inst.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %5 = load %struct._object*, %struct._object** %cls.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct._typeobject*
  %cmp3 = icmp eq %struct._typeobject* %4, %6
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %inst.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %9 = load %struct._object*, %struct._object** %cls.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct._typeobject*
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* %10)
  %tobool = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %11 = phi i1 [ true, %if.then ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32
  store i32 %lor.ext, i32* %retval1, align 4
  %12 = load i32, i32* %retval1, align 4
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then.6, label %if.end.29

if.then.6:                                        ; preds = %lor.end
  %13 = load %struct._object*, %struct._object** %inst.addr, align 8
  %call7 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %13, %struct._Py_Identifier* @recursive_isinstance.PyId___class__)
  store %struct._object* %call7, %struct._object** %c, align 8
  %14 = load %struct._object*, %struct._object** %c, align 8
  %cmp8 = icmp eq %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.then.6
  %15 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call10 = call i32 @PyErr_ExceptionMatches(%struct._object* %15)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  call void @PyErr_Clear()
  br label %if.end

if.else:                                          ; preds = %if.then.9
  store i32 -1, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.28

if.else.13:                                       ; preds = %if.then.6
  %16 = load %struct._object*, %struct._object** %c, align 8
  %17 = load %struct._object*, %struct._object** %inst.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %19 = bitcast %struct._typeobject* %18 to %struct._object*
  %cmp15 = icmp ne %struct._object* %16, %19
  br i1 %cmp15, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.else.13
  %20 = load %struct._object*, %struct._object** %c, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_flags17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19
  %22 = load i64, i64* %tp_flags17, align 8
  %and18 = and i64 %22, 2147483648
  %cmp19 = icmp ne i64 %and18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true
  %23 = load %struct._object*, %struct._object** %c, align 8
  %24 = bitcast %struct._object* %23 to %struct._typeobject*
  %25 = load %struct._object*, %struct._object** %cls.addr, align 8
  %26 = bitcast %struct._object* %25 to %struct._typeobject*
  %call21 = call i32 @PyType_IsSubtype(%struct._typeobject* %24, %struct._typeobject* %26)
  store i32 %call21, i32* %retval1, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true, %if.else.13
  br label %do.body

do.body:                                          ; preds = %if.end.22
  %27 = load %struct._object*, %struct._object** %c, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body
  br label %if.end.27

if.else.25:                                       ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.27
  br label %if.end.28

if.end.28:                                        ; preds = %do.end, %if.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.end
  br label %if.end.57

if.else.30:                                       ; preds = %entry
  %34 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call31 = call i32 @check_class(%struct._object* %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.90, i32 0, i32 0))
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.else.30
  store i32 -1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.else.30
  %35 = load %struct._object*, %struct._object** %inst.addr, align 8
  %call35 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %35, %struct._Py_Identifier* @recursive_isinstance.PyId___class__)
  store %struct._object* %call35, %struct._object** %icls, align 8
  %36 = load %struct._object*, %struct._object** %icls, align 8
  %cmp36 = icmp eq %struct._object* %36, null
  br i1 %cmp36, label %if.then.37, label %if.else.43

if.then.37:                                       ; preds = %if.end.34
  %37 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call38 = call i32 @PyErr_ExceptionMatches(%struct._object* %37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.37
  call void @PyErr_Clear()
  br label %if.end.42

if.else.41:                                       ; preds = %if.then.37
  store i32 -1, i32* %retval1, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.56

if.else.43:                                       ; preds = %if.end.34
  %38 = load %struct._object*, %struct._object** %icls, align 8
  %39 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call44 = call i32 @abstract_issubclass(%struct._object* %38, %struct._object* %39)
  store i32 %call44, i32* %retval1, align 4
  br label %do.body.45

do.body.45:                                       ; preds = %if.else.43
  %40 = load %struct._object*, %struct._object** %icls, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp46, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %42, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %45(%struct._object* %46)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %if.end.42
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.29
  %47 = load i32, i32* %retval1, align 4
  store i32 %47, i32* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.33
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_IsSubclass(%struct._object* %derived, %struct._object* %cls) #0 {
entry:
  %retval = alloca i32, align 4
  %derived.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %checker = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %r = alloca i32, align 4
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %item = alloca %struct._object*, align 8
  %atomic_val14 = alloca %struct._Py_atomic_address*, align 8
  %result16 = alloca i8*, align 8
  %volatile_data18 = alloca i8**, align 8
  %order21 = alloca i32, align 4
  %tmp28 = alloca i8*, align 8
  %atomic_val34 = alloca %struct._Py_atomic_address*, align 8
  %result36 = alloca i8*, align 8
  %volatile_data38 = alloca i8**, align 8
  %order41 = alloca i32, align 4
  %tmp48 = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %atomic_val57 = alloca %struct._Py_atomic_address*, align 8
  %result59 = alloca i8*, align 8
  %volatile_data61 = alloca i8**, align 8
  %order64 = alloca i32, align 4
  %tmp71 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %atomic_val91 = alloca %struct._Py_atomic_address*, align 8
  %result93 = alloca i8*, align 8
  %volatile_data95 = alloca i8**, align 8
  %order98 = alloca i32, align 4
  %tmp105 = alloca i8*, align 8
  %atomic_val119 = alloca %struct._Py_atomic_address*, align 8
  %result121 = alloca i8*, align 8
  %volatile_data123 = alloca i8**, align 8
  %order126 = alloca i32, align 4
  %tmp133 = alloca i8*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp154 = alloca %struct._object*, align 8
  store %struct._object* %derived, %struct._object** %derived.addr, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  %0 = load %struct._object*, %struct._object** %cls.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end.50

if.then:                                          ; preds = %entry
  store i32 0, i32* %r, align 4
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %3 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %3, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %5 = bitcast %struct._Py_atomic_address* %4 to i8*
  %6 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %5, i32 %6)
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %8 = load i8**, i8*** %volatile_data, align 8
  %9 = load volatile i8*, i8** %8, align 8
  store i8* %9, i8** %result, align 8
  %10 = load i32, i32* %order, align 4
  switch i32 %10, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %11 = load i8*, i8** %result, align 8
  store i8* %11, i8** %tmp
  %12 = load i8*, i8** %tmp
  %13 = bitcast i8* %12 to %struct._ts*
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 4
  %14 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %15 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp4 = icmp sgt i32 %inc, %15
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog.3
  %call = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %sw.epilog.3
  %16 = load %struct._object*, %struct._object** %cls.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size, align 8
  store i64 %18, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %n, align 8
  %cmp6 = icmp slt i64 %19, %20
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i64, i64* %i, align 8
  %22 = load %struct._object*, %struct._object** %cls.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %21
  %24 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %24, %struct._object** %item, align 8
  %25 = load %struct._object*, %struct._object** %derived.addr, align 8
  %26 = load %struct._object*, %struct._object** %item, align 8
  %call8 = call i32 @PyObject_IsSubclass(%struct._object* %25, %struct._object* %26)
  store i32 %call8, i32* %r, align 4
  %27 = load i32, i32* %r, align 4
  %cmp9 = icmp ne i32 %27, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.end

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %28 = load i64, i64* %i, align 8
  %inc12 = add i64 %28, 1
  store i64 %inc12, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val14, align 8
  %29 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val14, align 8
  %_value19 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %29, i32 0, i32 0
  store i8** %_value19, i8*** %volatile_data18, align 8
  store i32 0, i32* %order21, align 4
  %30 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val14, align 8
  %31 = bitcast %struct._Py_atomic_address* %30 to i8*
  %32 = load i32, i32* %order21, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %31, i32 %32)
  %33 = load i32, i32* %order21, align 4
  switch i32 %33, label %sw.default.23 [
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.22
  ]

sw.bb.22:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.24

sw.default.23:                                    ; preds = %do.body
  br label %sw.epilog.24

sw.epilog.24:                                     ; preds = %sw.default.23, %sw.bb.22
  %34 = load i8**, i8*** %volatile_data18, align 8
  %35 = load volatile i8*, i8** %34, align 8
  store i8* %35, i8** %result16, align 8
  %36 = load i32, i32* %order21, align 4
  switch i32 %36, label %sw.default.26 [
    i32 1, label %sw.bb.25
    i32 3, label %sw.bb.25
    i32 4, label %sw.bb.25
  ]

sw.bb.25:                                         ; preds = %sw.epilog.24, %sw.epilog.24, %sw.epilog.24
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.27

sw.default.26:                                    ; preds = %sw.epilog.24
  br label %sw.epilog.27

sw.epilog.27:                                     ; preds = %sw.default.26, %sw.bb.25
  %37 = load i8*, i8** %result16, align 8
  store i8* %37, i8** %tmp28
  %38 = load i8*, i8** %tmp28
  %39 = bitcast i8* %38 to %struct._ts*
  %recursion_depth29 = getelementptr inbounds %struct._ts, %struct._ts* %39, i32 0, i32 4
  %40 = load i32, i32* %recursion_depth29, align 4
  %dec = add i32 %40, -1
  store i32 %dec, i32* %recursion_depth29, align 4
  %41 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp30 = icmp sgt i32 %41, 100
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.27
  %42 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub = sub i32 %42, 50
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.27
  %43 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr = ashr i32 %43, 2
  %mul = mul i32 3, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %mul, %cond.false ]
  %cmp31 = icmp slt i32 %dec, %cond
  br i1 %cmp31, label %if.then.32, label %if.end.49

if.then.32:                                       ; preds = %cond.end
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val34, align 8
  %44 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val34, align 8
  %_value39 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %44, i32 0, i32 0
  store i8** %_value39, i8*** %volatile_data38, align 8
  store i32 0, i32* %order41, align 4
  %45 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val34, align 8
  %46 = bitcast %struct._Py_atomic_address* %45 to i8*
  %47 = load i32, i32* %order41, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %46, i32 %47)
  %48 = load i32, i32* %order41, align 4
  switch i32 %48, label %sw.default.43 [
    i32 2, label %sw.bb.42
    i32 3, label %sw.bb.42
    i32 4, label %sw.bb.42
  ]

sw.bb.42:                                         ; preds = %if.then.32, %if.then.32, %if.then.32
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.44

sw.default.43:                                    ; preds = %if.then.32
  br label %sw.epilog.44

sw.epilog.44:                                     ; preds = %sw.default.43, %sw.bb.42
  %49 = load i8**, i8*** %volatile_data38, align 8
  %50 = load volatile i8*, i8** %49, align 8
  store i8* %50, i8** %result36, align 8
  %51 = load i32, i32* %order41, align 4
  switch i32 %51, label %sw.default.46 [
    i32 1, label %sw.bb.45
    i32 3, label %sw.bb.45
    i32 4, label %sw.bb.45
  ]

sw.bb.45:                                         ; preds = %sw.epilog.44, %sw.epilog.44, %sw.epilog.44
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.47

sw.default.46:                                    ; preds = %sw.epilog.44
  br label %sw.epilog.47

sw.epilog.47:                                     ; preds = %sw.default.46, %sw.bb.45
  %52 = load i8*, i8** %result36, align 8
  store i8* %52, i8** %tmp48
  %53 = load i8*, i8** %tmp48
  %54 = bitcast i8* %53 to %struct._ts*
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %54, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %sw.epilog.47, %cond.end
  br label %do.end

do.end:                                           ; preds = %if.end.49
  %55 = load i32, i32* %r, align 4
  store i32 %55, i32* %retval
  br label %return

if.end.50:                                        ; preds = %entry
  %56 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call51 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %56, %struct._Py_Identifier* @PyObject_IsSubclass.PyId___subclasscheck__)
  store %struct._object* %call51, %struct._object** %checker, align 8
  %57 = load %struct._object*, %struct._object** %checker, align 8
  %cmp52 = icmp ne %struct._object* %57, null
  br i1 %cmp52, label %if.then.53, label %if.else.165

if.then.53:                                       ; preds = %if.end.50
  store i32 -1, i32* %ok, align 4
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val57, align 8
  %58 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val57, align 8
  %_value62 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %58, i32 0, i32 0
  store i8** %_value62, i8*** %volatile_data61, align 8
  store i32 0, i32* %order64, align 4
  %59 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val57, align 8
  %60 = bitcast %struct._Py_atomic_address* %59 to i8*
  %61 = load i32, i32* %order64, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %60, i32 %61)
  %62 = load i32, i32* %order64, align 4
  switch i32 %62, label %sw.default.66 [
    i32 2, label %sw.bb.65
    i32 3, label %sw.bb.65
    i32 4, label %sw.bb.65
  ]

sw.bb.65:                                         ; preds = %if.then.53, %if.then.53, %if.then.53
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.67

sw.default.66:                                    ; preds = %if.then.53
  br label %sw.epilog.67

sw.epilog.67:                                     ; preds = %sw.default.66, %sw.bb.65
  %63 = load i8**, i8*** %volatile_data61, align 8
  %64 = load volatile i8*, i8** %63, align 8
  store i8* %64, i8** %result59, align 8
  %65 = load i32, i32* %order64, align 4
  switch i32 %65, label %sw.default.69 [
    i32 1, label %sw.bb.68
    i32 3, label %sw.bb.68
    i32 4, label %sw.bb.68
  ]

sw.bb.68:                                         ; preds = %sw.epilog.67, %sw.epilog.67, %sw.epilog.67
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.70

sw.default.69:                                    ; preds = %sw.epilog.67
  br label %sw.epilog.70

sw.epilog.70:                                     ; preds = %sw.default.69, %sw.bb.68
  %66 = load i8*, i8** %result59, align 8
  store i8* %66, i8** %tmp71
  %67 = load i8*, i8** %tmp71
  %68 = bitcast i8* %67 to %struct._ts*
  %recursion_depth72 = getelementptr inbounds %struct._ts, %struct._ts* %68, i32 0, i32 4
  %69 = load i32, i32* %recursion_depth72, align 4
  %inc73 = add i32 %69, 1
  store i32 %inc73, i32* %recursion_depth72, align 4
  %70 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp74 = icmp sgt i32 %inc73, %70
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.87

land.lhs.true.75:                                 ; preds = %sw.epilog.70
  %call76 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i32 0, i32 0))
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.87

if.then.78:                                       ; preds = %land.lhs.true.75
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %71 = load %struct._object*, %struct._object** %checker, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt, align 8
  %dec81 = add i64 %73, -1
  store i64 %dec81, i64* %ob_refcnt, align 8
  %cmp82 = icmp ne i64 %dec81, 0
  br i1 %cmp82, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %do.body.79
  br label %if.end.85

if.else:                                          ; preds = %do.body.79
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %76(%struct._object* %77)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %if.then.83
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  %78 = load i32, i32* %ok, align 4
  store i32 %78, i32* %retval
  br label %return

if.end.87:                                        ; preds = %land.lhs.true.75, %sw.epilog.70
  %79 = load %struct._object*, %struct._object** %checker, align 8
  %80 = load %struct._object*, %struct._object** %derived.addr, align 8
  %call88 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %79, %struct._object* %80, i8* null)
  store %struct._object* %call88, %struct._object** %res, align 8
  br label %do.body.89

do.body.89:                                       ; preds = %if.end.87
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val91, align 8
  %81 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val91, align 8
  %_value96 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %81, i32 0, i32 0
  store i8** %_value96, i8*** %volatile_data95, align 8
  store i32 0, i32* %order98, align 4
  %82 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val91, align 8
  %83 = bitcast %struct._Py_atomic_address* %82 to i8*
  %84 = load i32, i32* %order98, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %83, i32 %84)
  %85 = load i32, i32* %order98, align 4
  switch i32 %85, label %sw.default.100 [
    i32 2, label %sw.bb.99
    i32 3, label %sw.bb.99
    i32 4, label %sw.bb.99
  ]

sw.bb.99:                                         ; preds = %do.body.89, %do.body.89, %do.body.89
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.101

sw.default.100:                                   ; preds = %do.body.89
  br label %sw.epilog.101

sw.epilog.101:                                    ; preds = %sw.default.100, %sw.bb.99
  %86 = load i8**, i8*** %volatile_data95, align 8
  %87 = load volatile i8*, i8** %86, align 8
  store i8* %87, i8** %result93, align 8
  %88 = load i32, i32* %order98, align 4
  switch i32 %88, label %sw.default.103 [
    i32 1, label %sw.bb.102
    i32 3, label %sw.bb.102
    i32 4, label %sw.bb.102
  ]

sw.bb.102:                                        ; preds = %sw.epilog.101, %sw.epilog.101, %sw.epilog.101
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.104

sw.default.103:                                   ; preds = %sw.epilog.101
  br label %sw.epilog.104

sw.epilog.104:                                    ; preds = %sw.default.103, %sw.bb.102
  %89 = load i8*, i8** %result93, align 8
  store i8* %89, i8** %tmp105
  %90 = load i8*, i8** %tmp105
  %91 = bitcast i8* %90 to %struct._ts*
  %recursion_depth106 = getelementptr inbounds %struct._ts, %struct._ts* %91, i32 0, i32 4
  %92 = load i32, i32* %recursion_depth106, align 4
  %dec107 = add i32 %92, -1
  store i32 %dec107, i32* %recursion_depth106, align 4
  %93 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp108 = icmp sgt i32 %93, 100
  br i1 %cmp108, label %cond.true.109, label %cond.false.111

cond.true.109:                                    ; preds = %sw.epilog.104
  %94 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub110 = sub i32 %94, 50
  br label %cond.end.114

cond.false.111:                                   ; preds = %sw.epilog.104
  %95 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr112 = ashr i32 %95, 2
  %mul113 = mul i32 3, %shr112
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.111, %cond.true.109
  %cond115 = phi i32 [ %sub110, %cond.true.109 ], [ %mul113, %cond.false.111 ]
  %cmp116 = icmp slt i32 %dec107, %cond115
  br i1 %cmp116, label %if.then.117, label %if.end.135

if.then.117:                                      ; preds = %cond.end.114
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val119, align 8
  %96 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val119, align 8
  %_value124 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %96, i32 0, i32 0
  store i8** %_value124, i8*** %volatile_data123, align 8
  store i32 0, i32* %order126, align 4
  %97 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val119, align 8
  %98 = bitcast %struct._Py_atomic_address* %97 to i8*
  %99 = load i32, i32* %order126, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %98, i32 %99)
  %100 = load i32, i32* %order126, align 4
  switch i32 %100, label %sw.default.128 [
    i32 2, label %sw.bb.127
    i32 3, label %sw.bb.127
    i32 4, label %sw.bb.127
  ]

sw.bb.127:                                        ; preds = %if.then.117, %if.then.117, %if.then.117
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.129

sw.default.128:                                   ; preds = %if.then.117
  br label %sw.epilog.129

sw.epilog.129:                                    ; preds = %sw.default.128, %sw.bb.127
  %101 = load i8**, i8*** %volatile_data123, align 8
  %102 = load volatile i8*, i8** %101, align 8
  store i8* %102, i8** %result121, align 8
  %103 = load i32, i32* %order126, align 4
  switch i32 %103, label %sw.default.131 [
    i32 1, label %sw.bb.130
    i32 3, label %sw.bb.130
    i32 4, label %sw.bb.130
  ]

sw.bb.130:                                        ; preds = %sw.epilog.129, %sw.epilog.129, %sw.epilog.129
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.132

sw.default.131:                                   ; preds = %sw.epilog.129
  br label %sw.epilog.132

sw.epilog.132:                                    ; preds = %sw.default.131, %sw.bb.130
  %104 = load i8*, i8** %result121, align 8
  store i8* %104, i8** %tmp133
  %105 = load i8*, i8** %tmp133
  %106 = bitcast i8* %105 to %struct._ts*
  %overflowed134 = getelementptr inbounds %struct._ts, %struct._ts* %106, i32 0, i32 5
  store i8 0, i8* %overflowed134, align 1
  br label %if.end.135

if.end.135:                                       ; preds = %sw.epilog.132, %cond.end.114
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %do.body.137

do.body.137:                                      ; preds = %do.end.136
  %107 = load %struct._object*, %struct._object** %checker, align 8
  store %struct._object* %107, %struct._object** %_py_decref_tmp139, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0
  %109 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %109, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %do.body.137
  br label %if.end.147

if.else.144:                                      ; preds = %do.body.137
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type145 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type145, align 8
  %tp_dealloc146 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc146, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %112(%struct._object* %113)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %if.then.143
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  %114 = load %struct._object*, %struct._object** %res, align 8
  %cmp149 = icmp ne %struct._object* %114, null
  br i1 %cmp149, label %if.then.150, label %if.end.164

if.then.150:                                      ; preds = %do.end.148
  %115 = load %struct._object*, %struct._object** %res, align 8
  %call151 = call i32 @PyObject_IsTrue(%struct._object* %115)
  store i32 %call151, i32* %ok, align 4
  br label %do.body.152

do.body.152:                                      ; preds = %if.then.150
  %116 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp154, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt155, align 8
  %dec156 = add i64 %118, -1
  store i64 %dec156, i64* %ob_refcnt155, align 8
  %cmp157 = icmp ne i64 %dec156, 0
  br i1 %cmp157, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %do.body.152
  br label %if.end.162

if.else.159:                                      ; preds = %do.body.152
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8
  %ob_type160 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type160, align 8
  %tp_dealloc161 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc161, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8
  call void %121(%struct._object* %122)
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.159, %if.then.158
  br label %do.end.163

do.end.163:                                       ; preds = %if.end.162
  br label %if.end.164

if.end.164:                                       ; preds = %do.end.163, %do.end.148
  %123 = load i32, i32* %ok, align 4
  store i32 %123, i32* %retval
  br label %return

if.else.165:                                      ; preds = %if.end.50
  %call166 = call %struct._object* @PyErr_Occurred()
  %tobool167 = icmp ne %struct._object* %call166, null
  br i1 %tobool167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.else.165
  store i32 -1, i32* %retval
  br label %return

if.end.169:                                       ; preds = %if.else.165
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169
  %124 = load %struct._object*, %struct._object** %derived.addr, align 8
  %125 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call171 = call i32 @recursive_issubclass(%struct._object* %124, %struct._object* %125)
  store i32 %call171, i32* %retval
  br label %return

return:                                           ; preds = %if.end.170, %if.then.168, %if.end.164, %do.end.86, %do.end, %if.then.5
  %126 = load i32, i32* %retval
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define internal i32 @recursive_issubclass(%struct._object* %derived, %struct._object* %cls) #0 {
entry:
  %retval = alloca i32, align 4
  %derived.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  store %struct._object* %derived, %struct._object** %derived.addr, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  %0 = load %struct._object*, %struct._object** %cls.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 2147483648
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %derived.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags2, align 8
  %and3 = and i64 %5, 2147483648
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %derived.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._typeobject*
  %8 = load %struct._object*, %struct._object** %cls.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct._typeobject*
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct._object*, %struct._object** %derived.addr, align 8
  %call5 = call i32 @check_class(%struct._object* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.92, i32 0, i32 0))
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call8 = call i32 @check_class(%struct._object* %11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** %derived.addr, align 8
  %13 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call12 = call i32 @abstract_issubclass(%struct._object* %12, %struct._object* %13)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @_PyObject_RealIsInstance(%struct._object* %inst, %struct._object* %cls) #0 {
entry:
  %inst.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  store %struct._object* %inst, %struct._object** %inst.addr, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  %0 = load %struct._object*, %struct._object** %inst.addr, align 8
  %1 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call = call i32 @recursive_isinstance(%struct._object* %0, %struct._object* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @_PyObject_RealIsSubclass(%struct._object* %derived, %struct._object* %cls) #0 {
entry:
  %derived.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  store %struct._object* %derived, %struct._object** %derived.addr, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  %0 = load %struct._object*, %struct._object** %derived.addr, align 8
  %1 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call = call i32 @recursive_issubclass(%struct._object* %0, %struct._object* %1)
  ret i32 %call
}

declare %struct._object* @PySeqIter_New(%struct._object*) #1

declare %struct._object* @_PyObject_NextNotImplemented(%struct._object*) #1

; Function Attrs: nounwind uwtable
define i8** @_PySequence_BytesToCharpArray(%struct._object* %self) #0 {
entry:
  %retval = alloca i8**, align 8
  %self.addr = alloca %struct._object*, align 8
  %array = alloca i8**, align 8
  %i = alloca i64, align 8
  %argc = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %data = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* null, %struct._object** %item, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %0)
  store i64 %call, i64* %argc, align 8
  %1 = load i64, i64* %argc, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8** null, i8*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %argc, align 8
  %cmp1 = icmp ugt i64 %2, 1152921504606846974
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyErr_NoMemory()
  store i8** null, i8*** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* %argc, align 8
  %add = add i64 %3, 1
  %mul = mul i64 %add, 8
  %call5 = call i8* @PyMem_Malloc(i64 %mul)
  %4 = bitcast i8* %call5 to i8**
  store i8** %4, i8*** %array, align 8
  %5 = load i8**, i8*** %array, align 8
  %cmp6 = icmp eq i8** %5, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %call8 = call %struct._object* @PyErr_NoMemory()
  store i8** null, i8*** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %argc, align 8
  %cmp10 = icmp slt i64 %6, %7
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %9 = load i64, i64* %i, align 8
  %call11 = call %struct._object* @PySequence_GetItem(%struct._object* %8, i64 %9)
  store %struct._object* %call11, %struct._object** %item, align 8
  %10 = load %struct._object*, %struct._object** %item, align 8
  %cmp12 = icmp eq %struct._object* %10, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load i8**, i8*** %array, align 8
  %arrayidx = getelementptr i8*, i8** %12, i64 %11
  store i8* null, i8** %arrayidx, align 8
  br label %fail

if.end.14:                                        ; preds = %for.body
  %13 = load %struct._object*, %struct._object** %item, align 8
  %call15 = call i8* @PyBytes_AsString(%struct._object* %13)
  store i8* %call15, i8** %data, align 8
  %14 = load i8*, i8** %data, align 8
  %cmp16 = icmp eq i8* %14, null
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %15 = load i64, i64* %i, align 8
  %16 = load i8**, i8*** %array, align 8
  %arrayidx18 = getelementptr i8*, i8** %16, i64 %15
  store i8* null, i8** %arrayidx18, align 8
  br label %fail

if.end.19:                                        ; preds = %if.end.14
  %17 = load %struct._object*, %struct._object** %item, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size, align 8
  %add20 = add i64 %19, 1
  store i64 %add20, i64* %size, align 8
  %20 = load i64, i64* %size, align 8
  %call21 = call i8* @PyMem_Malloc(i64 %20)
  %21 = load i64, i64* %i, align 8
  %22 = load i8**, i8*** %array, align 8
  %arrayidx22 = getelementptr i8*, i8** %22, i64 %21
  store i8* %call21, i8** %arrayidx22, align 8
  %23 = load i64, i64* %i, align 8
  %24 = load i8**, i8*** %array, align 8
  %arrayidx23 = getelementptr i8*, i8** %24, i64 %23
  %25 = load i8*, i8** %arrayidx23, align 8
  %tobool = icmp ne i8* %25, null
  br i1 %tobool, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end.19
  %call25 = call %struct._object* @PyErr_NoMemory()
  br label %fail

if.end.26:                                        ; preds = %if.end.19
  %26 = load i64, i64* %i, align 8
  %27 = load i8**, i8*** %array, align 8
  %arrayidx27 = getelementptr i8*, i8** %27, i64 %26
  %28 = load i8*, i8** %arrayidx27, align 8
  %29 = load i8*, i8** %data, align 8
  %30 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 %30, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end.26
  %31 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %do.body
  br label %if.end.30

if.else:                                          ; preds = %do.body
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %36(%struct._object* %37)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.30
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %38 = load i64, i64* %i, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i64, i64* %argc, align 8
  %40 = load i8**, i8*** %array, align 8
  %arrayidx31 = getelementptr i8*, i8** %40, i64 %39
  store i8* null, i8** %arrayidx31, align 8
  %41 = load i8**, i8*** %array, align 8
  store i8** %41, i8*** %retval
  br label %return

fail:                                             ; preds = %if.then.24, %if.then.17, %if.then.13
  br label %do.body.32

do.body.32:                                       ; preds = %fail
  %42 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp33 = icmp ne %struct._object* %43, null
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %do.body.32
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp36, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %46, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %49(%struct._object* %50)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %do.body.32
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %51 = load i8**, i8*** %array, align 8
  call void @_Py_FreeCharPArray(i8** %51)
  store i8** null, i8*** %retval
  br label %return

return:                                           ; preds = %do.end.47, %for.end, %if.then.7, %if.then.2, %if.then
  %52 = load i8**, i8*** %retval
  ret i8** %52
}

declare i8* @PyBytes_AsString(%struct._object*) #1

; Function Attrs: nounwind uwtable
define void @_Py_FreeCharPArray(i8** %array) #0 {
entry:
  %array.addr = alloca i8**, align 8
  %i = alloca i64, align 8
  store i8** %array, i8*** %array.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i8**, i8*** %array.addr, align 8
  %arrayidx = getelementptr i8*, i8** %1, i64 %0
  %2 = load i8*, i8** %arrayidx, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load i8**, i8*** %array.addr, align 8
  %arrayidx1 = getelementptr i8*, i8** %4, i64 %3
  %5 = load i8*, i8** %arrayidx1, align 8
  call void @PyMem_Free(i8* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8**, i8*** %array.addr, align 8
  %8 = bitcast i8** %7 to i8*
  call void @PyMem_Free(i8* %8)
  ret void
}

declare i32 @PyCallable_Check(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_class(%struct._object* %cls, i8* %error) #0 {
entry:
  %retval = alloca i32, align 4
  %cls.addr = alloca %struct._object*, align 8
  %error.addr = alloca i8*, align 8
  %bases = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  store i8* %error, i8** %error.addr, align 8
  %0 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call = call %struct._object* @abstract_get_bases(%struct._object* %0)
  store %struct._object* %call, %struct._object** %bases, align 8
  %1 = load %struct._object*, %struct._object** %bases, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %3 = load i8*, i8** %error.addr, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.end
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @abstract_issubclass(%struct._object* %derived, %struct._object* %cls) #0 {
entry:
  %retval = alloca i32, align 4
  %derived.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %bases = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %r = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store %struct._object* %derived, %struct._object** %derived.addr, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  store %struct._object* null, %struct._object** %bases, align 8
  store i32 0, i32* %r, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %do.end.25
  %0 = load %struct._object*, %struct._object** %derived.addr, align 8
  %1 = load %struct._object*, %struct._object** %cls.addr, align 8
  %cmp = icmp eq %struct._object* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %2 = load %struct._object*, %struct._object** %derived.addr, align 8
  %call = call %struct._object* @abstract_get_bases(%struct._object* %2)
  store %struct._object* %call, %struct._object** %bases, align 8
  %3 = load %struct._object*, %struct._object** %bases, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call3, null
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %bases, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %n, align 8
  %7 = load i64, i64* %n, align 8
  %cmp7 = icmp eq i64 %7, 0
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %8 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %15 = load i64, i64* %n, align 8
  %cmp13 = icmp eq i64 %15, 1
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %bases, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %18 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %18, %struct._object** %derived.addr, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %19 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp16, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %21, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %24(%struct._object* %25)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %while.body

if.end.26:                                        ; preds = %if.end.12
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %n, align 8
  %cmp27 = icmp slt i64 %26, %27
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, i64* %i, align 8
  %29 = load %struct._object*, %struct._object** %bases, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 %28
  %31 = load %struct._object*, %struct._object** %arrayidx29, align 8
  %32 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call30 = call i32 @abstract_issubclass(%struct._object* %31, %struct._object* %32)
  store i32 %call30, i32* %r, align 4
  %33 = load i32, i32* %r, align 4
  %cmp31 = icmp ne i32 %33, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  br label %for.end

if.end.33:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.32, %for.cond
  br label %do.body.34

do.body.34:                                       ; preds = %for.end
  %35 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp35, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %37, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %40(%struct._object* %41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %42 = load i32, i32* %r, align 4
  store i32 %42, i32* %retval
  br label %return

return:                                           ; preds = %do.end.44, %do.end, %if.end.5, %if.then.4, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @abstract_get_bases(%struct._object* %cls) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %bases = alloca %struct._object*, align 8
  %_old = alloca i8, align 1
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val5 = alloca %struct._Py_atomic_address*, align 8
  %result7 = alloca i8*, align 8
  %volatile_data9 = alloca i8**, align 8
  %order12 = alloca i32, align 4
  %tmp19 = alloca i8*, align 8
  %atomic_val22 = alloca %struct._Py_atomic_address*, align 8
  %result24 = alloca i8*, align 8
  %volatile_data26 = alloca i8**, align 8
  %order29 = alloca i32, align 4
  %tmp36 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %recursion_critical = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 6
  %11 = load i8, i8* %recursion_critical, align 1
  store i8 %11, i8* %_old, align 1
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val5, align 8
  %12 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val5, align 8
  %_value10 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %12, i32 0, i32 0
  store i8** %_value10, i8*** %volatile_data9, align 8
  store i32 0, i32* %order12, align 4
  %13 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val5, align 8
  %14 = bitcast %struct._Py_atomic_address* %13 to i8*
  %15 = load i32, i32* %order12, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %14, i32 %15)
  %16 = load i32, i32* %order12, align 4
  switch i32 %16, label %sw.default.14 [
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.13
  ]

sw.bb.13:                                         ; preds = %sw.epilog.3, %sw.epilog.3, %sw.epilog.3
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.15

sw.default.14:                                    ; preds = %sw.epilog.3
  br label %sw.epilog.15

sw.epilog.15:                                     ; preds = %sw.default.14, %sw.bb.13
  %17 = load i8**, i8*** %volatile_data9, align 8
  %18 = load volatile i8*, i8** %17, align 8
  store i8* %18, i8** %result7, align 8
  %19 = load i32, i32* %order12, align 4
  switch i32 %19, label %sw.default.17 [
    i32 1, label %sw.bb.16
    i32 3, label %sw.bb.16
    i32 4, label %sw.bb.16
  ]

sw.bb.16:                                         ; preds = %sw.epilog.15, %sw.epilog.15, %sw.epilog.15
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.18

sw.default.17:                                    ; preds = %sw.epilog.15
  br label %sw.epilog.18

sw.epilog.18:                                     ; preds = %sw.default.17, %sw.bb.16
  %20 = load i8*, i8** %result7, align 8
  store i8* %20, i8** %tmp19
  %21 = load i8*, i8** %tmp19
  %22 = bitcast i8* %21 to %struct._ts*
  %recursion_critical20 = getelementptr inbounds %struct._ts, %struct._ts* %22, i32 0, i32 6
  store i8 1, i8* %recursion_critical20, align 1
  %23 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %23, %struct._Py_Identifier* @abstract_get_bases.PyId___bases__)
  store %struct._object* %call, %struct._object** %bases, align 8
  %24 = load i8, i8* %_old, align 1
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val22, align 8
  %25 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val22, align 8
  %_value27 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %25, i32 0, i32 0
  store i8** %_value27, i8*** %volatile_data26, align 8
  store i32 0, i32* %order29, align 4
  %26 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val22, align 8
  %27 = bitcast %struct._Py_atomic_address* %26 to i8*
  %28 = load i32, i32* %order29, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %27, i32 %28)
  %29 = load i32, i32* %order29, align 4
  switch i32 %29, label %sw.default.31 [
    i32 2, label %sw.bb.30
    i32 3, label %sw.bb.30
    i32 4, label %sw.bb.30
  ]

sw.bb.30:                                         ; preds = %sw.epilog.18, %sw.epilog.18, %sw.epilog.18
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.32

sw.default.31:                                    ; preds = %sw.epilog.18
  br label %sw.epilog.32

sw.epilog.32:                                     ; preds = %sw.default.31, %sw.bb.30
  %30 = load i8**, i8*** %volatile_data26, align 8
  %31 = load volatile i8*, i8** %30, align 8
  store i8* %31, i8** %result24, align 8
  %32 = load i32, i32* %order29, align 4
  switch i32 %32, label %sw.default.34 [
    i32 1, label %sw.bb.33
    i32 3, label %sw.bb.33
    i32 4, label %sw.bb.33
  ]

sw.bb.33:                                         ; preds = %sw.epilog.32, %sw.epilog.32, %sw.epilog.32
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.35

sw.default.34:                                    ; preds = %sw.epilog.32
  br label %sw.epilog.35

sw.epilog.35:                                     ; preds = %sw.default.34, %sw.bb.33
  %33 = load i8*, i8** %result24, align 8
  store i8* %33, i8** %tmp36
  %34 = load i8*, i8** %tmp36
  %35 = bitcast i8* %34 to %struct._ts*
  %recursion_critical37 = getelementptr inbounds %struct._ts, %struct._ts* %35, i32 0, i32 6
  store i8 %24, i8* %recursion_critical37, align 1
  br label %do.end

do.end:                                           ; preds = %sw.epilog.35
  %36 = load %struct._object*, %struct._object** %bases, align 8
  %cmp = icmp eq %struct._object* %36, null
  br i1 %cmp, label %if.then, label %if.end.40

if.then:                                          ; preds = %do.end
  %37 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call38 = call i32 @PyErr_ExceptionMatches(%struct._object* %37)
  %tobool = icmp ne i32 %call38, 0
  br i1 %tobool, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then.39, %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.40:                                        ; preds = %do.end
  %38 = load %struct._object*, %struct._object** %bases, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 19
  %40 = load i64, i64* %tp_flags, align 8
  %and = and i64 %40, 67108864
  %cmp41 = icmp ne i64 %and, 0
  br i1 %cmp41, label %if.end.50, label %if.then.42

if.then.42:                                       ; preds = %if.end.40
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %41 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %43, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp45 = icmp ne i64 %dec, 0
  br i1 %cmp45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %do.body.43
  br label %if.end.48

if.else:                                          ; preds = %do.body.43
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %46(%struct._object* %47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.46
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.40
  %48 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.50, %do.end.49, %if.end
  %49 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %49
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139696}
!2 = !{i32 139536}
