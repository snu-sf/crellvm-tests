; ModuleID = './complexobject.bc'
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.Py_complex = type { double, double }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyComplexObject = type { %struct._object, %struct.Py_complex }
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }

@PyComplex_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* @complex_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyComplexObject*)* @complex_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* @complex_as_number, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct.PyComplexObject*)* @complex_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyComplexObject*)* @complex_repr to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @complex_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @complex_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @complex_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @complex_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @complex_new, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@complex_as_number = internal global %struct.PyNumberMethods { %struct._object* (%struct._object*, %struct._object*)* @complex_add, %struct._object* (%struct._object*, %struct._object*)* @complex_sub, %struct._object* (%struct._object*, %struct._object*)* @complex_mul, %struct._object* (%struct._object*, %struct._object*)* @complex_remainder, %struct._object* (%struct._object*, %struct._object*)* @complex_divmod, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @complex_pow, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyComplexObject*)* @complex_neg to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyComplexObject*)* @complex_pos to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyComplexObject*)* @complex_abs to %struct._object* (%struct._object*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyComplexObject*)* @complex_bool to i32 (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* @complex_int, i8* null, %struct._object* (%struct._object*)* @complex_float, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @complex_int_div, %struct._object* (%struct._object*, %struct._object*)* @complex_div, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null }, align 8
@complex_doc = internal global [179 x i8] c"complex(real[, imag]) -> complex number\0A\0ACreate a complex number from a real part and an optional imaginary part.\0AThis is equivalent to (real + imag*1j) where imag defaults to 0.\00", align 16
@complex_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @complex_conjugate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @complex_conjugate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyComplexObject*)* @complex_getnewargs to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @complex__format__, i32 1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @complex__format__doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@complex_members = internal global [3 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 4, i64 16, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 4, i64 24, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@try_complex_special_method.PyId___complex__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct._object* null }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"__complex__\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"__complex__ should return a complex object\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s%s%sj%s\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"can't mod complex numbers.\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"can't take floor or mod of complex number.\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"complex modulo\00", align 1
@PyExc_ZeroDivisionError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"0.0 to a negative or complex power\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"complex exponentiation\00", align 1
@c_1 = internal global %struct.Py_complex { double 1.000000e+00, double 0.000000e+00 }, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"absolute value too large\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"can't convert complex to int\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"can't convert complex to float\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"can't take floor of complex number.\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"complex division by zero\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"conjugate\00", align 1
@complex_conjugate_doc = internal global [106 x i8] c"complex.conjugate() -> complex\0A\0AReturn the complex conjugate of its argument. (3-4j).conjugate() == 3+4j.\00", align 16
@.str.18 = private unnamed_addr constant [15 x i8] c"__getnewargs__\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"__format__\00", align 1
@complex__format__doc = internal global [75 x i8] c"complex.__format__() -> str\0A\0AConvert to a string according to format_spec.\00", align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"(dd)\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"U:__format__\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"the real part of a complex number\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"the imaginary part of a complex number\00", align 1
@complex_new.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
@.str.26 = private unnamed_addr constant [12 x i8] c"|OO:complex\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"complex() can't take second arg if first is a string\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"complex() second arg can't be a string\00", align 1
@.str.29 = private unnamed_addr constant [62 x i8] c"complex() argument must be a string or a number, not '%.200s'\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"float(r) didn't return a float\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@.str.31 = private unnamed_addr constant [36 x i8] c"complex() arg is a malformed string\00", align 1

; Function Attrs: nounwind uwtable
define { double, double } @_Py_c_sum(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %3 = bitcast %struct.Py_complex* %b to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %6 = load double, double* %real, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %7 = load double, double* %real1, align 8
  %add = fadd double %6, %7
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %add, double* %real2, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %8 = load double, double* %imag, align 8
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %9 = load double, double* %imag3, align 8
  %add4 = fadd double %8, %9
  %imag5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %add4, double* %imag5, align 8
  %10 = bitcast %struct.Py_complex* %retval to i8*
  %11 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.Py_complex* %retval to { double, double }*
  %13 = load { double, double }, { double, double }* %12, align 8
  ret { double, double } %13
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define { double, double } @_Py_c_diff(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %3 = bitcast %struct.Py_complex* %b to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %6 = load double, double* %real, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %7 = load double, double* %real1, align 8
  %sub = fsub double %6, %7
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %sub, double* %real2, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %8 = load double, double* %imag, align 8
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %9 = load double, double* %imag3, align 8
  %sub4 = fsub double %8, %9
  %imag5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %sub4, double* %imag5, align 8
  %10 = bitcast %struct.Py_complex* %retval to i8*
  %11 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.Py_complex* %retval to { double, double }*
  %13 = load { double, double }, { double, double }* %12, align 8
  ret { double, double } %13
}

; Function Attrs: nounwind uwtable
define { double, double } @_Py_c_neg(double %a.coerce0, double %a.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %3 = load double, double* %real, align 8
  %sub = fsub double -0.000000e+00, %3
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %sub, double* %real1, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %4 = load double, double* %imag, align 8
  %sub2 = fsub double -0.000000e+00, %4
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %sub2, double* %imag3, align 8
  %5 = bitcast %struct.Py_complex* %retval to i8*
  %6 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %struct.Py_complex* %retval to { double, double }*
  %8 = load { double, double }, { double, double }* %7, align 8
  ret { double, double } %8
}

; Function Attrs: nounwind uwtable
define { double, double } @_Py_c_prod(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %3 = bitcast %struct.Py_complex* %b to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %6 = load double, double* %real, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %7 = load double, double* %real1, align 8
  %mul = fmul double %6, %7
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %8 = load double, double* %imag, align 8
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %9 = load double, double* %imag2, align 8
  %mul3 = fmul double %8, %9
  %sub = fsub double %mul, %mul3
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %sub, double* %real4, align 8
  %real5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %10 = load double, double* %real5, align 8
  %imag6 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %11 = load double, double* %imag6, align 8
  %mul7 = fmul double %10, %11
  %imag8 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %12 = load double, double* %imag8, align 8
  %real9 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %13 = load double, double* %real9, align 8
  %mul10 = fmul double %12, %13
  %add = fadd double %mul7, %mul10
  %imag11 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %add, double* %imag11, align 8
  %14 = bitcast %struct.Py_complex* %retval to i8*
  %15 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %struct.Py_complex* %retval to { double, double }*
  %17 = load { double, double }, { double, double }* %16, align 8
  ret { double, double } %17
}

; Function Attrs: nounwind uwtable
define { double, double } @_Py_c_quot(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %abs_breal = alloca double, align 8
  %abs_bimag = alloca double, align 8
  %ratio = alloca double, align 8
  %denom = alloca double, align 8
  %ratio33 = alloca double, align 8
  %denom37 = alloca double, align 8
  %0 = bitcast %struct.Py_complex* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %3 = bitcast %struct.Py_complex* %b to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %6 = load double, double* %real, align 8
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %7 = load double, double* %real1, align 8
  %sub = fsub double -0.000000e+00, %7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %8 = load double, double* %real2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %8, %cond.false ]
  store double %cond, double* %abs_breal, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %9 = load double, double* %imag, align 8
  %cmp3 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp3, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.end
  %imag5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %10 = load double, double* %imag5, align 8
  %sub6 = fsub double -0.000000e+00, %10
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %imag8 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %11 = load double, double* %imag8, align 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.4
  %cond10 = phi double [ %sub6, %cond.true.4 ], [ %11, %cond.false.7 ]
  store double %cond10, double* %abs_bimag, align 8
  %12 = load double, double* %abs_breal, align 8
  %13 = load double, double* %abs_bimag, align 8
  %cmp11 = fcmp oge double %12, %13
  br i1 %cmp11, label %if.then, label %if.else.32

if.then:                                          ; preds = %cond.end.9
  %14 = load double, double* %abs_breal, align 8
  %cmp12 = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %call = call i32* @__errno_location() #5
  store i32 33, i32* %call, align 4
  %imag14 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double 0.000000e+00, double* %imag14, align 8
  %real15 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double 0.000000e+00, double* %real15, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %15 = load double, double* %imag16, align 8
  %real17 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %16 = load double, double* %real17, align 8
  %div = fdiv double %15, %16
  store double %div, double* %ratio, align 8
  %real18 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %17 = load double, double* %real18, align 8
  %imag19 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %18 = load double, double* %imag19, align 8
  %19 = load double, double* %ratio, align 8
  %mul = fmul double %18, %19
  %add = fadd double %17, %mul
  store double %add, double* %denom, align 8
  %real20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %20 = load double, double* %real20, align 8
  %imag21 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %21 = load double, double* %imag21, align 8
  %22 = load double, double* %ratio, align 8
  %mul22 = fmul double %21, %22
  %add23 = fadd double %20, %mul22
  %23 = load double, double* %denom, align 8
  %div24 = fdiv double %add23, %23
  %real25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %div24, double* %real25, align 8
  %imag26 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %24 = load double, double* %imag26, align 8
  %real27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %25 = load double, double* %real27, align 8
  %26 = load double, double* %ratio, align 8
  %mul28 = fmul double %25, %26
  %sub29 = fsub double %24, %mul28
  %27 = load double, double* %denom, align 8
  %div30 = fdiv double %sub29, %27
  %imag31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %div30, double* %imag31, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.54

if.else.32:                                       ; preds = %cond.end.9
  %real34 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %28 = load double, double* %real34, align 8
  %imag35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %29 = load double, double* %imag35, align 8
  %div36 = fdiv double %28, %29
  store double %div36, double* %ratio33, align 8
  %real38 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %30 = load double, double* %real38, align 8
  %31 = load double, double* %ratio33, align 8
  %mul39 = fmul double %30, %31
  %imag40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %32 = load double, double* %imag40, align 8
  %add41 = fadd double %mul39, %32
  store double %add41, double* %denom37, align 8
  %real42 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %33 = load double, double* %real42, align 8
  %34 = load double, double* %ratio33, align 8
  %mul43 = fmul double %33, %34
  %imag44 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %35 = load double, double* %imag44, align 8
  %add45 = fadd double %mul43, %35
  %36 = load double, double* %denom37, align 8
  %div46 = fdiv double %add45, %36
  %real47 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %div46, double* %real47, align 8
  %imag48 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %37 = load double, double* %imag48, align 8
  %38 = load double, double* %ratio33, align 8
  %mul49 = fmul double %37, %38
  %real50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %39 = load double, double* %real50, align 8
  %sub51 = fsub double %mul49, %39
  %40 = load double, double* %denom37, align 8
  %div52 = fdiv double %sub51, %40
  %imag53 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %div52, double* %imag53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.32, %if.end
  %41 = bitcast %struct.Py_complex* %retval to i8*
  %42 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  %43 = bitcast %struct.Py_complex* %retval to { double, double }*
  %44 = load { double, double }, { double, double }* %43, align 8
  ret { double, double } %44
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind uwtable
define { double, double } @_Py_c_pow(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %vabs = alloca double, align 8
  %len = alloca double, align 8
  %at = alloca double, align 8
  %phase = alloca double, align 8
  %0 = bitcast %struct.Py_complex* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %3 = bitcast %struct.Py_complex* %b to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %6 = load double, double* %real, align 8
  %cmp = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %7 = load double, double* %imag, align 8
  %cmp1 = fcmp oeq double %7, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double 1.000000e+00, double* %real2, align 8
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double 0.000000e+00, double* %imag3, align 8
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true, %entry
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %8 = load double, double* %real4, align 8
  %cmp5 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true.6, label %if.else.17

land.lhs.true.6:                                  ; preds = %if.else
  %imag7 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %9 = load double, double* %imag7, align 8
  %cmp8 = fcmp oeq double %9, 0.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else.17

if.then.9:                                        ; preds = %land.lhs.true.6
  %imag10 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %10 = load double, double* %imag10, align 8
  %cmp11 = fcmp une double %10, 0.000000e+00
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.9
  %real12 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %11 = load double, double* %real12, align 8
  %cmp13 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %lor.lhs.false, %if.then.9
  %call = call i32* @__errno_location() #5
  store i32 33, i32* %call, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %lor.lhs.false
  %real15 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double 0.000000e+00, double* %real15, align 8
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double 0.000000e+00, double* %imag16, align 8
  br label %if.end.43

if.else.17:                                       ; preds = %land.lhs.true.6, %if.else
  %real18 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %12 = load double, double* %real18, align 8
  %imag19 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %13 = load double, double* %imag19, align 8
  %call20 = call double @hypot(double %12, double %13) #1
  store double %call20, double* %vabs, align 8
  %14 = load double, double* %vabs, align 8
  %real21 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %15 = load double, double* %real21, align 8
  %call22 = call double @pow(double %14, double %15) #1
  store double %call22, double* %len, align 8
  %imag23 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1
  %16 = load double, double* %imag23, align 8
  %real24 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0
  %17 = load double, double* %real24, align 8
  %call25 = call double @atan2(double %16, double %17) #1
  store double %call25, double* %at, align 8
  %18 = load double, double* %at, align 8
  %real26 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0
  %19 = load double, double* %real26, align 8
  %mul = fmul double %18, %19
  store double %mul, double* %phase, align 8
  %imag27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %20 = load double, double* %imag27, align 8
  %cmp28 = fcmp une double %20, 0.000000e+00
  br i1 %cmp28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.else.17
  %21 = load double, double* %at, align 8
  %imag30 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %22 = load double, double* %imag30, align 8
  %mul31 = fmul double %21, %22
  %call32 = call double @exp(double %mul31) #1
  %23 = load double, double* %len, align 8
  %div = fdiv double %23, %call32
  store double %div, double* %len, align 8
  %imag33 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1
  %24 = load double, double* %imag33, align 8
  %25 = load double, double* %vabs, align 8
  %call34 = call double @log(double %25) #1
  %mul35 = fmul double %24, %call34
  %26 = load double, double* %phase, align 8
  %add = fadd double %26, %mul35
  store double %add, double* %phase, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.29, %if.else.17
  %27 = load double, double* %len, align 8
  %28 = load double, double* %phase, align 8
  %call37 = call double @cos(double %28) #1
  %mul38 = fmul double %27, %call37
  %real39 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %mul38, double* %real39, align 8
  %29 = load double, double* %len, align 8
  %30 = load double, double* %phase, align 8
  %call40 = call double @sin(double %30) #1
  %mul41 = fmul double %29, %call40
  %imag42 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul41, double* %imag42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.36, %if.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then
  %31 = bitcast %struct.Py_complex* %retval to i8*
  %32 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  %33 = bitcast %struct.Py_complex* %retval to { double, double }*
  %34 = load { double, double }, { double, double }* %33, align 8
  ret { double, double } %34
}

; Function Attrs: nounwind
declare double @hypot(double, double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind uwtable
define double @_Py_c_abs(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca double, align 8
  %z = alloca %struct.Py_complex, align 8
  %result = alloca double, align 8
  %0 = bitcast %struct.Py_complex* %z to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %z.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %z.coerce1, double* %2
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %3 = load double, double* %real, align 8
  %conv = fptrunc double %3 to float
  %call = call i32 @__finitef(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.5

cond.true.1:                                      ; preds = %cond.false
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %4 = load double, double* %real2, align 8
  %call3 = call i32 @__finite(double %4) #5
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %lor.lhs.false, label %if.then

cond.false.5:                                     ; preds = %cond.false
  %real6 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %5 = load double, double* %real6, align 8
  %conv7 = fpext double %5 to x86_fp80
  %call8 = call i32 @__finitel(x86_fp80 %conv7) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.false.5, %cond.true.1, %cond.true
  br i1 false, label %cond.true.10, label %cond.false.14

cond.true.10:                                     ; preds = %lor.lhs.false
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %6 = load double, double* %imag, align 8
  %conv11 = fptrunc double %6 to float
  %call12 = call i32 @__finitef(float %conv11) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.63, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.63, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.63, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  br i1 false, label %cond.true.24, label %cond.false.29

cond.true.24:                                     ; preds = %if.then
  %real25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %9 = load double, double* %real25, align 8
  %conv26 = fptrunc double %9 to float
  %call27 = call i32 @__isinff(float %conv26) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.39, label %if.end

cond.false.29:                                    ; preds = %if.then
  br i1 true, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.false.29
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real31, align 8
  %call32 = call i32 @__isinf(double %10) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.39, label %if.end

cond.false.34:                                    ; preds = %cond.false.29
  %real35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %11 = load double, double* %real35, align 8
  %conv36 = fpext double %11 to x86_fp80
  %call37 = call i32 @__isinfl(x86_fp80 %conv36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  %real40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %12 = load double, double* %real40, align 8
  %call41 = call double @fabs(double %12) #5
  store double %call41, double* %result, align 8
  %call42 = call i32* @__errno_location() #5
  store i32 0, i32* %call42, align 4
  %13 = load double, double* %result, align 8
  store double %13, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  br i1 false, label %cond.true.43, label %cond.false.48

cond.true.43:                                     ; preds = %if.end
  %imag44 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag44, align 8
  %conv45 = fptrunc double %14 to float
  %call46 = call i32 @__isinff(float %conv45) #5
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.58, label %if.end.62

cond.false.48:                                    ; preds = %if.end
  br i1 true, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.false.48
  %imag50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %15 = load double, double* %imag50, align 8
  %call51 = call i32 @__isinf(double %15) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.58, label %if.end.62

cond.false.53:                                    ; preds = %cond.false.48
  %imag54 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %16 = load double, double* %imag54, align 8
  %conv55 = fpext double %16 to x86_fp80
  %call56 = call i32 @__isinfl(x86_fp80 %conv55) #5
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %cond.false.53, %cond.true.49, %cond.true.43
  %imag59 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %17 = load double, double* %imag59, align 8
  %call60 = call double @fabs(double %17) #5
  store double %call60, double* %result, align 8
  %call61 = call i32* @__errno_location() #5
  store i32 0, i32* %call61, align 4
  %18 = load double, double* %result, align 8
  store double %18, double* %retval
  br label %return

if.end.62:                                        ; preds = %cond.false.53, %cond.true.49, %cond.true.43
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.end.63:                                        ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real64 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %19 = load double, double* %real64, align 8
  %imag65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %20 = load double, double* %imag65, align 8
  %call66 = call double @hypot(double %19, double %20) #1
  store double %call66, double* %result, align 8
  br i1 false, label %cond.true.67, label %cond.false.71

cond.true.67:                                     ; preds = %if.end.63
  %21 = load double, double* %result, align 8
  %conv68 = fptrunc double %21 to float
  %call69 = call i32 @__finitef(float %conv68) #5
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.else, label %if.then.79

cond.false.71:                                    ; preds = %if.end.63
  br i1 true, label %cond.true.72, label %cond.false.75

cond.true.72:                                     ; preds = %cond.false.71
  %22 = load double, double* %result, align 8
  %call73 = call i32 @__finite(double %22) #5
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.else, label %if.then.79

cond.false.75:                                    ; preds = %cond.false.71
  %23 = load double, double* %result, align 8
  %conv76 = fpext double %23 to x86_fp80
  %call77 = call i32 @__finitel(x86_fp80 %conv76) #5
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.else, label %if.then.79

if.then.79:                                       ; preds = %cond.false.75, %cond.true.72, %cond.true.67
  %call80 = call i32* @__errno_location() #5
  store i32 34, i32* %call80, align 4
  br label %if.end.82

if.else:                                          ; preds = %cond.false.75, %cond.true.72, %cond.true.67
  %call81 = call i32* @__errno_location() #5
  store i32 0, i32* %call81, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.79
  %24 = load double, double* %result, align 8
  store double %24, double* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.end.62, %if.then.58, %if.then.39
  %25 = load double, double* %retval
  ret double %25
}

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #2

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #2

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #2

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #2

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #2

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyComplex_FromCComplex(double %cval.coerce0, double %cval.coerce1) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cval = alloca %struct.Py_complex, align 8
  %op = alloca %struct.PyComplexObject*, align 8
  %0 = bitcast %struct.Py_complex* %cval to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %cval.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %cval.coerce1, double* %2
  %call = call i8* @PyObject_Malloc(i64 32)
  %3 = bitcast i8* %call to %struct.PyComplexObject*
  store %struct.PyComplexObject* %3, %struct.PyComplexObject** %op, align 8
  %4 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8
  %cmp = icmp eq %struct.PyComplexObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8
  %6 = bitcast %struct.PyComplexObject* %5 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %ob_type, align 8
  %7 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8
  %8 = bitcast %struct.PyComplexObject* %7 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %9 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8
  %10 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8
  %cval2 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %10, i32 0, i32 1
  %11 = bitcast %struct.Py_complex* %cval2 to i8*
  %12 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  %13 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8
  %14 = bitcast %struct.PyComplexObject* %13 to %struct._object*
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare i8* @PyObject_Malloc(i64) #4

declare %struct._object* @PyErr_NoMemory() #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyComplex_FromDoubles(double %real, double %imag) #0 {
entry:
  %real.addr = alloca double, align 8
  %imag.addr = alloca double, align 8
  %c = alloca %struct.Py_complex, align 8
  store double %real, double* %real.addr, align 8
  store double %imag, double* %imag.addr, align 8
  %0 = load double, double* %real.addr, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 0
  store double %0, double* %real1, align 8
  %1 = load double, double* %imag.addr, align 8
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1
  store double %1, double* %imag2, align 8
  %2 = bitcast %struct.Py_complex* %c to { double, double }*
  %3 = getelementptr { double, double }, { double, double }* %2, i32 0, i32 0
  %4 = load double, double* %3, align 1
  %5 = getelementptr { double, double }, { double, double }* %2, i32 0, i32 1
  %6 = load double, double* %5, align 1
  %call = call %struct._object* @PyComplex_FromCComplex(double %4, double %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define double @PyComplex_RealAsDouble(%struct._object* %op) #0 {
entry:
  %retval = alloca double, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0
  %6 = load double, double* %real, align 8
  store double %6, double* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %op.addr, align 8
  %call2 = call double @PyFloat_AsDouble(%struct._object* %7)
  store double %call2, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load double, double* %retval
  ret double %8
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #4

declare double @PyFloat_AsDouble(%struct._object*) #4

; Function Attrs: nounwind uwtable
define double @PyComplex_ImagAsDouble(%struct._object* %op) #0 {
entry:
  %retval = alloca double, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 1
  %6 = load double, double* %imag, align 8
  store double %6, double* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load double, double* %retval
  ret double %7
}

; Function Attrs: nounwind uwtable
define { double, double } @PyComplex_AsCComplex(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %op.addr = alloca %struct._object*, align 8
  %cv = alloca %struct.Py_complex, align 8
  %newop = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* null, %struct._object** %newop, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1
  %6 = bitcast %struct.Py_complex* %retval to i8*
  %7 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cv, i32 0, i32 0
  store double -1.000000e+00, double* %real, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cv, i32 0, i32 1
  store double 0.000000e+00, double* %imag, align 8
  %8 = load %struct._object*, %struct._object** %op.addr, align 8
  %call2 = call %struct._object* @try_complex_special_method(%struct._object* %8)
  store %struct._object* %call2, %struct._object** %newop, align 8
  %9 = load %struct._object*, %struct._object** %newop, align 8
  %tobool3 = icmp ne %struct._object* %9, null
  br i1 %tobool3, label %if.then.4, label %if.else.10

if.then.4:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %newop, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyComplexObject*
  %cval5 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %11, i32 0, i32 1
  %12 = bitcast %struct.Py_complex* %cv to i8*
  %13 = bitcast %struct.Py_complex* %cval5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %14 = load %struct._object*, %struct._object** %newop, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %21 = bitcast %struct.Py_complex* %retval to i8*
  %22 = bitcast %struct.Py_complex* %cv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  br label %return

if.else.10:                                       ; preds = %if.end
  %call11 = call %struct._object* @PyErr_Occurred()
  %tobool12 = icmp ne %struct._object* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.10
  %23 = bitcast %struct.Py_complex* %retval to i8*
  %24 = bitcast %struct.Py_complex* %cv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  br label %return

if.else.14:                                       ; preds = %if.else.10
  %25 = load %struct._object*, %struct._object** %op.addr, align 8
  %call15 = call double @PyFloat_AsDouble(%struct._object* %25)
  %real16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cv, i32 0, i32 0
  store double %call15, double* %real16, align 8
  %26 = bitcast %struct.Py_complex* %retval to i8*
  %27 = bitcast %struct.Py_complex* %cv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.else.14, %if.then.13, %do.end, %if.then
  %28 = bitcast %struct.Py_complex* %retval to { double, double }*
  %29 = load { double, double }, { double, double }* %28, align 8
  ret { double, double } %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @try_complex_special_method(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %f = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %call = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %0, %struct._Py_Identifier* @try_complex_special_method.PyId___complex__)
  store %struct._object* %call, %struct._object** %f, align 8
  %1 = load %struct._object*, %struct._object** %f, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %f, align 8
  %call1 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %2, i8* null)
  store %struct._object* %call1, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %f, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
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

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %res, align 8
  %cmp3 = icmp ne %struct._object* %10, null
  br i1 %cmp3, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %do.end
  %11 = load %struct._object*, %struct._object** %res, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %12, @PyComplex_Type
  br i1 %cmp5, label %if.end.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load %struct._object*, %struct._object** %res, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* @PyComplex_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.21, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %16 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp11, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %18, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %21(%struct._object* %22)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false, %land.lhs.true, %do.end
  %23 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.end.21, %do.end.20
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare %struct._object* @PyErr_Occurred() #4

; Function Attrs: nounwind uwtable
define internal void @complex_dealloc(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 38
  %2 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %4 = bitcast %struct._object* %3 to i8*
  call void %2(i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_repr(%struct.PyComplexObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyComplexObject*, align 8
  %precision = alloca i32, align 4
  %format_code = alloca i8, align 1
  %result = alloca %struct._object*, align 8
  %pre = alloca i8*, align 8
  %im = alloca i8*, align 8
  %re = alloca i8*, align 8
  %lead = alloca i8*, align 8
  %tail = alloca i8*, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8
  store i32 0, i32* %precision, align 4
  store i8 114, i8* %format_code, align 1
  store %struct._object* null, %struct._object** %result, align 8
  store i8* null, i8** %pre, align 8
  store i8* null, i8** %im, align 8
  store i8* null, i8** %re, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %lead, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %tail, align 8
  %0 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %0, i32 0, i32 1
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %cmp = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval1 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %2, i32 0, i32 1
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval1, i32 0, i32 0
  %3 = load double, double* %real2, align 8
  %call = call double @copysign(double 1.000000e+00, double %3) #5
  %cmp3 = fcmp oeq double %call, 1.000000e+00
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %re, align 8
  %4 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval4 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %4, i32 0, i32 1
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval4, i32 0, i32 1
  %5 = load double, double* %imag, align 8
  %6 = load i8, i8* %format_code, align 1
  %7 = load i32, i32* %precision, align 4
  %call5 = call i8* @PyOS_double_to_string(double %5, i8 signext %6, i32 %7, i32 0, i32* null)
  store i8* %call5, i8** %im, align 8
  %8 = load i8*, i8** %im, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %call7 = call %struct._object* @PyErr_NoMemory()
  br label %done

if.end:                                           ; preds = %if.then
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval8 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %9, i32 0, i32 1
  %real9 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval8, i32 0, i32 0
  %10 = load double, double* %real9, align 8
  %11 = load i8, i8* %format_code, align 1
  %12 = load i32, i32* %precision, align 4
  %call10 = call i8* @PyOS_double_to_string(double %10, i8 signext %11, i32 %12, i32 0, i32* null)
  store i8* %call10, i8** %pre, align 8
  %13 = load i8*, i8** %pre, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.else
  %call13 = call %struct._object* @PyErr_NoMemory()
  br label %done

if.end.14:                                        ; preds = %if.else
  %14 = load i8*, i8** %pre, align 8
  store i8* %14, i8** %re, align 8
  %15 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval15 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %15, i32 0, i32 1
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval15, i32 0, i32 1
  %16 = load double, double* %imag16, align 8
  %17 = load i8, i8* %format_code, align 1
  %18 = load i32, i32* %precision, align 4
  %call17 = call i8* @PyOS_double_to_string(double %16, i8 signext %17, i32 %18, i32 1, i32* null)
  store i8* %call17, i8** %im, align 8
  %19 = load i8*, i8** %im, align 8
  %tobool18 = icmp ne i8* %19, null
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.end.14
  %call20 = call %struct._object* @PyErr_NoMemory()
  br label %done

if.end.21:                                        ; preds = %if.end.14
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %lead, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %tail, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %20 = load i8*, i8** %lead, align 8
  %21 = load i8*, i8** %re, align 8
  %22 = load i8*, i8** %im, align 8
  %23 = load i8*, i8** %tail, align 8
  %call23 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %20, i8* %21, i8* %22, i8* %23)
  store %struct._object* %call23, %struct._object** %result, align 8
  br label %done

done:                                             ; preds = %if.end.22, %if.then.19, %if.then.12, %if.then.6
  %24 = load i8*, i8** %im, align 8
  call void @PyMem_Free(i8* %24)
  %25 = load i8*, i8** %pre, align 8
  call void @PyMem_Free(i8* %25)
  %26 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal i64 @complex_hash(%struct.PyComplexObject* %v) #0 {
entry:
  %retval = alloca i64, align 8
  %v.addr = alloca %struct.PyComplexObject*, align 8
  %hashreal = alloca i64, align 8
  %hashimag = alloca i64, align 8
  %combined = alloca i64, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8
  %0 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %0, i32 0, i32 1
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %call = call i64 @_Py_HashDouble(double %1)
  store i64 %call, i64* %hashreal, align 8
  %2 = load i64, i64* %hashreal, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval1 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %3, i32 0, i32 1
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval1, i32 0, i32 1
  %4 = load double, double* %imag, align 8
  %call2 = call i64 @_Py_HashDouble(double %4)
  store i64 %call2, i64* %hashimag, align 8
  %5 = load i64, i64* %hashimag, align 8
  %cmp3 = icmp eq i64 %5, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i64, i64* %hashreal, align 8
  %7 = load i64, i64* %hashimag, align 8
  %mul = mul i64 1000003, %7
  %add = add i64 %6, %mul
  store i64 %add, i64* %combined, align 8
  %8 = load i64, i64* %combined, align 8
  %cmp6 = icmp eq i64 %8, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i64 -2, i64* %combined, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %9 = load i64, i64* %combined, align 8
  store i64 %9, i64* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.4, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %i = alloca %struct.Py_complex, align 8
  %equal = alloca i32, align 4
  %j = alloca %struct._object*, align 8
  %sub_res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %j48 = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %Unimplemented

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyComplex_Type
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PyComplex_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %7, i32 0, i32 1
  %8 = bitcast %struct.Py_complex* %i to i8*
  %9 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  br label %if.end.9

if.else:                                          ; preds = %lor.lhs.false
  %call5 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %i)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.4
  %11 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags, align 8
  %and = and i64 %13, 16777216
  %cmp11 = icmp ne i64 %and, 0
  br i1 %cmp11, label %if.then.12, label %if.else.27

if.then.12:                                       ; preds = %if.end.9
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 1
  %14 = load double, double* %imag, align 8
  %cmp13 = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp13, label %if.then.14, label %if.else.25

if.then.14:                                       ; preds = %if.then.12
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 0
  %15 = load double, double* %real, align 8
  %call15 = call %struct._object* @PyFloat_FromDouble(double %15)
  store %struct._object* %call15, %struct._object** %j, align 8
  %16 = load %struct._object*, %struct._object** %j, align 8
  %cmp16 = icmp eq %struct._object* %16, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.14
  %17 = load %struct._object*, %struct._object** %j, align 8
  %18 = load %struct._object*, %struct._object** %w.addr, align 8
  %19 = load i32, i32* %op.addr, align 4
  %call19 = call %struct._object* @PyObject_RichCompare(%struct._object* %17, %struct._object* %18, i32 %19)
  store %struct._object* %call19, %struct._object** %sub_res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.18
  %20 = load %struct._object*, %struct._object** %j, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body
  br label %if.end.24

if.else.22:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.24
  %27 = load %struct._object*, %struct._object** %sub_res, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

if.else.25:                                       ; preds = %if.then.12
  store i32 0, i32* %equal, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25
  br label %if.end.75

if.else.27:                                       ; preds = %if.end.9
  %28 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %cmp29 = icmp eq %struct._typeobject* %29, @PyFloat_Type
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.else.27
  %30 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %call32 = call i32 @PyType_IsSubtype(%struct._typeobject* %31, %struct._typeobject* @PyFloat_Type)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.40

if.then.34:                                       ; preds = %lor.lhs.false.30, %if.else.27
  %real35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 0
  %32 = load double, double* %real35, align 8
  %33 = load %struct._object*, %struct._object** %w.addr, align 8
  %call36 = call double @PyFloat_AsDouble(%struct._object* %33)
  %cmp37 = fcmp oeq double %32, %call36
  br i1 %cmp37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.34
  %imag38 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 1
  %34 = load double, double* %imag38, align 8
  %cmp39 = fcmp oeq double %34, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.34
  %35 = phi i1 [ false, %if.then.34 ], [ %cmp39, %land.rhs ]
  %land.ext = zext i1 %35 to i32
  store i32 %land.ext, i32* %equal, align 4
  br label %if.end.74

if.else.40:                                       ; preds = %lor.lhs.false.30
  %36 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %cmp42 = icmp eq %struct._typeobject* %37, @PyComplex_Type
  br i1 %cmp42, label %if.then.47, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.else.40
  %38 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %call45 = call i32 @PyType_IsSubtype(%struct._typeobject* %39, %struct._typeobject* @PyComplex_Type)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.72

if.then.47:                                       ; preds = %lor.lhs.false.43, %if.else.40
  %40 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %cmp50 = icmp eq %struct._typeobject* %41, @PyComplex_Type
  br i1 %cmp50, label %if.then.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.then.47
  %42 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %call53 = call i32 @PyType_IsSubtype(%struct._typeobject* %43, %struct._typeobject* @PyComplex_Type)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %lor.lhs.false.51, %if.then.47
  %44 = load %struct._object*, %struct._object** %w.addr, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyComplexObject*
  %cval56 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %45, i32 0, i32 1
  %46 = bitcast %struct.Py_complex* %j48 to i8*
  %47 = bitcast %struct.Py_complex* %cval56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false)
  br label %if.end.62

if.else.57:                                       ; preds = %lor.lhs.false.51
  %call58 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %j48)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else.57
  %48 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %if.else.57
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.55
  %real63 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 0
  %49 = load double, double* %real63, align 8
  %real64 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %j48, i32 0, i32 0
  %50 = load double, double* %real64, align 8
  %cmp65 = fcmp oeq double %49, %50
  br i1 %cmp65, label %land.rhs.66, label %land.end.70

land.rhs.66:                                      ; preds = %if.end.62
  %imag67 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 1
  %51 = load double, double* %imag67, align 8
  %imag68 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %j48, i32 0, i32 1
  %52 = load double, double* %imag68, align 8
  %cmp69 = fcmp oeq double %51, %52
  br label %land.end.70

land.end.70:                                      ; preds = %land.rhs.66, %if.end.62
  %53 = phi i1 [ false, %if.end.62 ], [ %cmp69, %land.rhs.66 ]
  %land.ext71 = zext i1 %53 to i32
  store i32 %land.ext71, i32* %equal, align 4
  br label %if.end.73

if.else.72:                                       ; preds = %lor.lhs.false.43
  br label %Unimplemented

if.end.73:                                        ; preds = %land.end.70
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.end
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.26
  %54 = load i32, i32* %equal, align 4
  %55 = load i32, i32* %op.addr, align 4
  %cmp76 = icmp eq i32 %55, 2
  %conv = zext i1 %cmp76 to i32
  %cmp77 = icmp eq i32 %54, %conv
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.end.75
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.81

if.else.80:                                       ; preds = %if.end.75
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %if.then.79
  %56 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt82, align 8
  %inc = add i64 %57, 1
  store i64 %inc, i64* %ob_refcnt82, align 8
  %58 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %58, %struct._object** %retval
  br label %return

Unimplemented:                                    ; preds = %if.else.72, %if.then
  %59 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc83 = add i64 %59, 1
  store i64 %inc83, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %Unimplemented, %if.end.81, %if.then.60, %do.end, %if.then.17, %if.then.7
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %i = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %nbr = alloca %struct.PyNumberMethods*, align 8
  %nbi = alloca %struct.PyNumberMethods*, align 8
  %cr = alloca %struct.Py_complex, align 8
  %ci = alloca %struct.Py_complex, align 8
  %own_r = alloca i32, align 4
  %cr_is_complex = alloca i32, align 4
  %ci_is_complex = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  %_py_decref_tmp117 = alloca %struct._object*, align 8
  %_py_decref_tmp131 = alloca %struct._object*, align 8
  %_py_decref_tmp164 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct.PyNumberMethods* null, %struct.PyNumberMethods** %nbi, align 8
  store i32 0, i32* %own_r, align 4
  store i32 0, i32* %cr_is_complex, align 4
  store i32 0, i32* %ci_is_complex, align 4
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %r, align 8
  store %struct._object* null, %struct._object** %i, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @complex_new.kwlist, i32 0, i32 0), %struct._object** %r, %struct._object** %i)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %r, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %3, @PyComplex_Type
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %i, align 8
  %cmp8 = icmp eq %struct._object* %4, null
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.12

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp10 = icmp eq %struct._typeobject* %5, @PyComplex_Type
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.9
  %6 = load %struct._object*, %struct._object** %r, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true.9, %land.lhs.true, %if.end
  %9 = load %struct._object*, %struct._object** %r, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 268435456
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.12
  %12 = load %struct._object*, %struct._object** %i, align 8
  %cmp16 = icmp ne %struct._object* %12, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.15
  %14 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %15 = load %struct._object*, %struct._object** %r, align 8
  %call19 = call %struct._object* @complex_subtype_from_string(%struct._typeobject* %14, %struct._object* %15)
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %i, align 8
  %cmp21 = icmp ne %struct._object* %16, null
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %if.end.20
  %17 = load %struct._object*, %struct._object** %i, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_flags24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19
  %19 = load i64, i64* %tp_flags24, align 8
  %and25 = and i64 %19, 268435456
  %cmp26 = icmp ne i64 %and25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.22
  %20 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true.22, %if.end.20
  %21 = load %struct._object*, %struct._object** %r, align 8
  %call29 = call %struct._object* @try_complex_special_method(%struct._object* %21)
  store %struct._object* %call29, %struct._object** %tmp, align 8
  %22 = load %struct._object*, %struct._object** %tmp, align 8
  %tobool30 = icmp ne %struct._object* %22, null
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.28
  %23 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %23, %struct._object** %r, align 8
  store i32 1, i32* %own_r, align 4
  br label %if.end.36

if.else:                                          ; preds = %if.end.28
  %call32 = call %struct._object* @PyErr_Occurred()
  %tobool33 = icmp ne %struct._object* %call32, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.31
  %24 = load %struct._object*, %struct._object** %r, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 10
  %26 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %26, %struct.PyNumberMethods** %nbr, align 8
  %27 = load %struct._object*, %struct._object** %i, align 8
  %cmp38 = icmp ne %struct._object* %27, null
  br i1 %cmp38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.36
  %28 = load %struct._object*, %struct._object** %i, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_as_number41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 10
  %30 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number41, align 8
  store %struct.PyNumberMethods* %30, %struct.PyNumberMethods** %nbi, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.36
  %31 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbr, align 8
  %cmp43 = icmp eq %struct.PyNumberMethods* %31, null
  br i1 %cmp43, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.42
  %32 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbr, align 8
  %nb_float = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %32, i32 0, i32 18
  %33 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float, align 8
  %cmp44 = icmp eq %struct._object* (%struct._object*)* %33, null
  br i1 %cmp44, label %if.then.52, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false
  %34 = load %struct._object*, %struct._object** %i, align 8
  %cmp46 = icmp ne %struct._object* %34, null
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.65

land.lhs.true.47:                                 ; preds = %lor.lhs.false.45
  %35 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbi, align 8
  %cmp48 = icmp eq %struct.PyNumberMethods* %35, null
  br i1 %cmp48, label %if.then.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %land.lhs.true.47
  %36 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbi, align 8
  %nb_float50 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %36, i32 0, i32 18
  %37 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float50, align 8
  %cmp51 = icmp eq %struct._object* (%struct._object*)* %37, null
  br i1 %cmp51, label %if.then.52, label %if.end.65

if.then.52:                                       ; preds = %lor.lhs.false.49, %land.lhs.true.47, %lor.lhs.false, %if.end.42
  %38 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %39 = load %struct._object*, %struct._object** %r, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 1
  %41 = load i8*, i8** %tp_name, align 8
  %call54 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %38, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i32 0, i32 0), i8* %41)
  %42 = load i32, i32* %own_r, align 4
  %tobool55 = icmp ne i32 %42, 0
  br i1 %tobool55, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %if.then.52
  br label %do.body

do.body:                                          ; preds = %if.then.56
  %43 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt58, align 8
  %dec = add i64 %45, -1
  store i64 %dec, i64* %ob_refcnt58, align 8
  %cmp59 = icmp ne i64 %dec, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body
  br label %if.end.63

if.else.61:                                       ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %48(%struct._object* %49)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end

do.end:                                           ; preds = %if.end.63
  br label %if.end.64

if.end.64:                                        ; preds = %do.end, %if.then.52
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.65:                                        ; preds = %lor.lhs.false.49, %lor.lhs.false.45
  %50 = load %struct._object*, %struct._object** %r, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %cmp67 = icmp eq %struct._typeobject* %51, @PyComplex_Type
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.end.65
  %52 = load %struct._object*, %struct._object** %r, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %call70 = call i32 @PyType_IsSubtype(%struct._typeobject* %53, %struct._typeobject* @PyComplex_Type)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.else.88

if.then.72:                                       ; preds = %lor.lhs.false.68, %if.end.65
  %54 = load %struct._object*, %struct._object** %r, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %55, i32 0, i32 1
  %56 = bitcast %struct.Py_complex* %cr to i8*
  %57 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 16, i32 8, i1 false)
  store i32 1, i32* %cr_is_complex, align 4
  %58 = load i32, i32* %own_r, align 4
  %tobool73 = icmp ne i32 %58, 0
  br i1 %tobool73, label %if.then.74, label %if.end.87

if.then.74:                                       ; preds = %if.then.72
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.74
  %59 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp77, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %61, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.75
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.75
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

if.end.87:                                        ; preds = %do.end.86, %if.then.72
  br label %if.end.141

if.else.88:                                       ; preds = %lor.lhs.false.68
  %66 = load %struct._object*, %struct._object** %r, align 8
  %call89 = call %struct._object* @PyNumber_Float(%struct._object* %66)
  store %struct._object* %call89, %struct._object** %tmp, align 8
  %67 = load i32, i32* %own_r, align 4
  %tobool90 = icmp ne i32 %67, 0
  br i1 %tobool90, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %if.else.88
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.91
  %68 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp94, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %70, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.92
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.92
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %73(%struct._object* %74)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %if.end.104

if.end.104:                                       ; preds = %do.end.103, %if.else.88
  %75 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp105 = icmp eq %struct._object* %75, null
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.104
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.107:                                       ; preds = %if.end.104
  %76 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %cmp109 = icmp eq %struct._typeobject* %77, @PyFloat_Type
  br i1 %cmp109, label %if.end.127, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.end.107
  %78 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %call112 = call i32 @PyType_IsSubtype(%struct._typeobject* %79, %struct._typeobject* @PyFloat_Type)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.127, label %if.then.114

if.then.114:                                      ; preds = %lor.lhs.false.110
  %80 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0))
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %81 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp117, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  %ob_refcnt118 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt118, align 8
  %dec119 = add i64 %83, -1
  store i64 %dec119, i64* %ob_refcnt118, align 8
  %cmp120 = icmp ne i64 %dec119, 0
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %do.body.115
  br label %if.end.125

if.else.122:                                      ; preds = %do.body.115
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  %ob_type123 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type123, align 8
  %tp_dealloc124 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc124, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  call void %86(%struct._object* %87)
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.122, %if.then.121
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.127:                                       ; preds = %lor.lhs.false.110, %if.end.107
  %88 = load %struct._object*, %struct._object** %tmp, align 8
  %call128 = call double @PyFloat_AsDouble(%struct._object* %88)
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 0
  store double %call128, double* %real, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 1
  store double 0.000000e+00, double* %imag, align 8
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.127
  %89 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp131, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt132, align 8
  %dec133 = add i64 %91, -1
  store i64 %dec133, i64* %ob_refcnt132, align 8
  %cmp134 = icmp ne i64 %dec133, 0
  br i1 %cmp134, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %do.body.129
  br label %if.end.139

if.else.136:                                      ; preds = %do.body.129
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  call void %94(%struct._object* %95)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.136, %if.then.135
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.139
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140, %if.end.87
  %96 = load %struct._object*, %struct._object** %i, align 8
  %cmp142 = icmp eq %struct._object* %96, null
  br i1 %cmp142, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %if.end.141
  %real144 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 0
  store double 0.000000e+00, double* %real144, align 8
  br label %if.end.175

if.else.145:                                      ; preds = %if.end.141
  %97 = load %struct._object*, %struct._object** %i, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %cmp147 = icmp eq %struct._typeobject* %98, @PyComplex_Type
  br i1 %cmp147, label %if.then.152, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %if.else.145
  %99 = load %struct._object*, %struct._object** %i, align 8
  %ob_type149 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type149, align 8
  %call150 = call i32 @PyType_IsSubtype(%struct._typeobject* %100, %struct._typeobject* @PyComplex_Type)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.then.152, label %if.else.154

if.then.152:                                      ; preds = %lor.lhs.false.148, %if.else.145
  %101 = load %struct._object*, %struct._object** %i, align 8
  %102 = bitcast %struct._object* %101 to %struct.PyComplexObject*
  %cval153 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %102, i32 0, i32 1
  %103 = bitcast %struct.Py_complex* %ci to i8*
  %104 = bitcast %struct.Py_complex* %cval153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 16, i32 8, i1 false)
  store i32 1, i32* %ci_is_complex, align 4
  br label %if.end.174

if.else.154:                                      ; preds = %lor.lhs.false.148
  %105 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbi, align 8
  %nb_float155 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %105, i32 0, i32 18
  %106 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float155, align 8
  %107 = load %struct._object*, %struct._object** %i, align 8
  %call156 = call %struct._object* %106(%struct._object* %107)
  store %struct._object* %call156, %struct._object** %tmp, align 8
  %108 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp157 = icmp eq %struct._object* %108, null
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.else.154
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.159:                                       ; preds = %if.else.154
  %109 = load %struct._object*, %struct._object** %tmp, align 8
  %call160 = call double @PyFloat_AsDouble(%struct._object* %109)
  %real161 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 0
  store double %call160, double* %real161, align 8
  br label %do.body.162

do.body.162:                                      ; preds = %if.end.159
  %110 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %110, %struct._object** %_py_decref_tmp164, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8
  %ob_refcnt165 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt165, align 8
  %dec166 = add i64 %112, -1
  store i64 %dec166, i64* %ob_refcnt165, align 8
  %cmp167 = icmp ne i64 %dec166, 0
  br i1 %cmp167, label %if.then.168, label %if.else.169

if.then.168:                                      ; preds = %do.body.162
  br label %if.end.172

if.else.169:                                      ; preds = %do.body.162
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8
  %ob_type170 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type170, align 8
  %tp_dealloc171 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc171, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8
  call void %115(%struct._object* %116)
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.169, %if.then.168
  br label %do.end.173

do.end.173:                                       ; preds = %if.end.172
  br label %if.end.174

if.end.174:                                       ; preds = %do.end.173, %if.then.152
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.143
  %117 = load i32, i32* %ci_is_complex, align 4
  %tobool176 = icmp ne i32 %117, 0
  br i1 %tobool176, label %if.then.177, label %if.end.180

if.then.177:                                      ; preds = %if.end.175
  %imag178 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 1
  %118 = load double, double* %imag178, align 8
  %real179 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 0
  %119 = load double, double* %real179, align 8
  %sub = fsub double %119, %118
  store double %sub, double* %real179, align 8
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.177, %if.end.175
  %120 = load i32, i32* %cr_is_complex, align 4
  %tobool181 = icmp ne i32 %120, 0
  br i1 %tobool181, label %if.then.182, label %if.end.185

if.then.182:                                      ; preds = %if.end.180
  %imag183 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 1
  %121 = load double, double* %imag183, align 8
  %real184 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 0
  %122 = load double, double* %real184, align 8
  %add = fadd double %122, %121
  store double %add, double* %real184, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.182, %if.end.180
  %123 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %real186 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 0
  %124 = load double, double* %real186, align 8
  %real187 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 0
  %125 = load double, double* %real187, align 8
  %call188 = call %struct._object* @complex_subtype_from_doubles(%struct._typeobject* %123, double %124, double %125)
  store %struct._object* %call188, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.185, %if.then.158, %do.end.126, %if.then.106, %if.end.64, %if.then.34, %if.then.27, %if.end.18, %if.then.17, %if.then.11, %if.then
  %126 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %126
}

declare void @PyObject_Free(i8*) #4

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #4

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #4

declare void @PyErr_SetString(%struct._object*, i8*) #4

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #2

declare i8* @PyOS_double_to_string(double, i8 signext, i32, i32, i32*) #4

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #4

declare void @PyMem_Free(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_add(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %result = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1
  %6 = bitcast %struct.Py_complex* %a to i8*
  %7 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %10, @PyComplex_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %12, %struct._typeobject* @PyComplex_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyComplexObject*
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %14, i32 0, i32 1
  %15 = bitcast %struct.Py_complex* %b to i8*
  %16 = bitcast %struct.Py_complex* %cval13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %17 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %18 = bitcast %struct.Py_complex* %a to { double, double }*
  %19 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 0
  %20 = load double, double* %19, align 1
  %21 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 1
  %22 = load double, double* %21, align 1
  %23 = bitcast %struct.Py_complex* %b to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %call20 = call { double, double } @_Py_c_sum(double %20, double %22, double %25, double %27)
  %28 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = extractvalue { double, double } %call20, 0
  store double %30, double* %29, align 8
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = extractvalue { double, double } %call20, 1
  store double %32, double* %31, align 8
  %33 = bitcast %struct.Py_complex* %result to i8*
  %34 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %35 = bitcast %struct.Py_complex* %result to { double, double }*
  %36 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 0
  %37 = load double, double* %36, align 1
  %38 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 1
  %39 = load double, double* %38, align 1
  %call21 = call %struct._object* @PyComplex_FromCComplex(double %37, double %39)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.4
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_sub(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %result = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1
  %6 = bitcast %struct.Py_complex* %a to i8*
  %7 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %10, @PyComplex_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %12, %struct._typeobject* @PyComplex_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyComplexObject*
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %14, i32 0, i32 1
  %15 = bitcast %struct.Py_complex* %b to i8*
  %16 = bitcast %struct.Py_complex* %cval13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %17 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %18 = bitcast %struct.Py_complex* %a to { double, double }*
  %19 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 0
  %20 = load double, double* %19, align 1
  %21 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 1
  %22 = load double, double* %21, align 1
  %23 = bitcast %struct.Py_complex* %b to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %call20 = call { double, double } @_Py_c_diff(double %20, double %22, double %25, double %27)
  %28 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = extractvalue { double, double } %call20, 0
  store double %30, double* %29, align 8
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = extractvalue { double, double } %call20, 1
  store double %32, double* %31, align 8
  %33 = bitcast %struct.Py_complex* %result to i8*
  %34 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %35 = bitcast %struct.Py_complex* %result to { double, double }*
  %36 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 0
  %37 = load double, double* %36, align 1
  %38 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 1
  %39 = load double, double* %38, align 1
  %call21 = call %struct._object* @PyComplex_FromCComplex(double %37, double %39)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.4
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_mul(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %result = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1
  %6 = bitcast %struct.Py_complex* %a to i8*
  %7 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %10, @PyComplex_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %12, %struct._typeobject* @PyComplex_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyComplexObject*
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %14, i32 0, i32 1
  %15 = bitcast %struct.Py_complex* %b to i8*
  %16 = bitcast %struct.Py_complex* %cval13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %17 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %18 = bitcast %struct.Py_complex* %a to { double, double }*
  %19 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 0
  %20 = load double, double* %19, align 1
  %21 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 1
  %22 = load double, double* %21, align 1
  %23 = bitcast %struct.Py_complex* %b to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %call20 = call { double, double } @_Py_c_prod(double %20, double %22, double %25, double %27)
  %28 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = extractvalue { double, double } %call20, 0
  store double %30, double* %29, align 8
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = extractvalue { double, double } %call20, 1
  store double %32, double* %31, align 8
  %33 = bitcast %struct.Py_complex* %result to i8*
  %34 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %35 = bitcast %struct.Py_complex* %result to { double, double }*
  %36 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 0
  %37 = load double, double* %36, align 1
  %38 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 1
  %39 = load double, double* %38, align 1
  %call21 = call %struct._object* @PyComplex_FromCComplex(double %37, double %39)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.4
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_remainder(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_divmod(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0))
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_pow(%struct._object* %v, %struct._object* %w, %struct._object* %z) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %z.addr = alloca %struct._object*, align 8
  %p = alloca %struct.Py_complex, align 8
  %exponent = alloca %struct.Py_complex, align 8
  %int_exponent = alloca i64, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %coerce34 = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store %struct._object* %z, %struct._object** %z.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1
  %6 = bitcast %struct.Py_complex* %a to i8*
  %7 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %10, @PyComplex_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %12, %struct._typeobject* @PyComplex_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyComplexObject*
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %14, i32 0, i32 1
  %15 = bitcast %struct.Py_complex* %b to i8*
  %16 = bitcast %struct.Py_complex* %cval13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %17 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %18 = load %struct._object*, %struct._object** %z.addr, align 8
  %cmp20 = icmp ne %struct._object* %18, @_Py_NoneStruct
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %call23 = call i32* @__errno_location() #5
  store i32 0, i32* %call23, align 4
  %20 = bitcast %struct.Py_complex* %exponent to i8*
  %21 = bitcast %struct.Py_complex* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %exponent, i32 0, i32 0
  %22 = load double, double* %real, align 8
  %conv = fptosi double %22 to i64
  store i64 %conv, i64* %int_exponent, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %exponent, i32 0, i32 1
  %23 = load double, double* %imag, align 8
  %cmp24 = fcmp oeq double %23, 0.000000e+00
  br i1 %cmp24, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %if.end.22
  %real26 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %exponent, i32 0, i32 0
  %24 = load double, double* %real26, align 8
  %25 = load i64, i64* %int_exponent, align 8
  %conv27 = sitofp i64 %25 to double
  %cmp28 = fcmp oeq double %24, %conv27
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %land.lhs.true
  %26 = load i64, i64* %int_exponent, align 8
  %27 = bitcast %struct.Py_complex* %a to { double, double }*
  %28 = getelementptr { double, double }, { double, double }* %27, i32 0, i32 0
  %29 = load double, double* %28, align 1
  %30 = getelementptr { double, double }, { double, double }* %27, i32 0, i32 1
  %31 = load double, double* %30, align 1
  %call31 = call { double, double } @c_powi(double %29, double %31, i64 %26)
  %32 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %33 = getelementptr { double, double }, { double, double }* %32, i32 0, i32 0
  %34 = extractvalue { double, double } %call31, 0
  store double %34, double* %33, align 8
  %35 = getelementptr { double, double }, { double, double }* %32, i32 0, i32 1
  %36 = extractvalue { double, double } %call31, 1
  store double %36, double* %35, align 8
  %37 = bitcast %struct.Py_complex* %p to i8*
  %38 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false)
  br label %if.end.35

if.else.32:                                       ; preds = %land.lhs.true, %if.end.22
  %39 = bitcast %struct.Py_complex* %a to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = load double, double* %40, align 1
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = load double, double* %42, align 1
  %44 = bitcast %struct.Py_complex* %exponent to { double, double }*
  %45 = getelementptr { double, double }, { double, double }* %44, i32 0, i32 0
  %46 = load double, double* %45, align 1
  %47 = getelementptr { double, double }, { double, double }* %44, i32 0, i32 1
  %48 = load double, double* %47, align 1
  %call33 = call { double, double } @_Py_c_pow(double %41, double %43, double %46, double %48)
  %49 = bitcast %struct.Py_complex* %coerce34 to { double, double }*
  %50 = getelementptr { double, double }, { double, double }* %49, i32 0, i32 0
  %51 = extractvalue { double, double } %call33, 0
  store double %51, double* %50, align 8
  %52 = getelementptr { double, double }, { double, double }* %49, i32 0, i32 1
  %53 = extractvalue { double, double } %call33, 1
  store double %53, double* %52, align 8
  %54 = bitcast %struct.Py_complex* %p to i8*
  %55 = bitcast %struct.Py_complex* %coerce34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.30
  br label %do.body

do.body:                                          ; preds = %if.end.35
  %real36 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %p, i32 0, i32 0
  %56 = load double, double* %real36, align 8
  %cmp37 = fcmp oeq double %56, 0x7FF0000000000000
  br i1 %cmp37, label %if.then.51, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %do.body
  %real40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %p, i32 0, i32 0
  %57 = load double, double* %real40, align 8
  %cmp41 = fcmp oeq double %57, 0xFFF0000000000000
  br i1 %cmp41, label %if.then.51, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.39
  %imag44 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %p, i32 0, i32 1
  %58 = load double, double* %imag44, align 8
  %cmp45 = fcmp oeq double %58, 0x7FF0000000000000
  br i1 %cmp45, label %if.then.51, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.43
  %imag48 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %p, i32 0, i32 1
  %59 = load double, double* %imag48, align 8
  %cmp49 = fcmp oeq double %59, 0xFFF0000000000000
  br i1 %cmp49, label %if.then.51, label %if.else.58

if.then.51:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false.43, %lor.lhs.false.39, %do.body
  %call52 = call i32* @__errno_location() #5
  %60 = load i32, i32* %call52, align 4
  %cmp53 = icmp eq i32 %60, 0
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.51
  %call56 = call i32* @__errno_location() #5
  store i32 34, i32* %call56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.then.51
  br label %if.end.65

if.else.58:                                       ; preds = %lor.lhs.false.47
  %call59 = call i32* @__errno_location() #5
  %61 = load i32, i32* %call59, align 4
  %cmp60 = icmp eq i32 %61, 34
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.else.58
  %call63 = call i32* @__errno_location() #5
  store i32 0, i32* %call63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.else.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.57
  br label %do.end

do.end:                                           ; preds = %if.end.65
  %call66 = call i32* @__errno_location() #5
  %62 = load i32, i32* %call66, align 4
  %cmp67 = icmp eq i32 %62, 33
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.end
  %63 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8
  call void @PyErr_SetString(%struct._object* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.70:                                       ; preds = %do.end
  %call71 = call i32* @__errno_location() #5
  %64 = load i32, i32* %call71, align 4
  %cmp72 = icmp eq i32 %64, 34
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.else.70
  %65 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.75:                                        ; preds = %if.else.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75
  %66 = bitcast %struct.Py_complex* %p to { double, double }*
  %67 = getelementptr { double, double }, { double, double }* %66, i32 0, i32 0
  %68 = load double, double* %67, align 1
  %69 = getelementptr { double, double }, { double, double }* %66, i32 0, i32 1
  %70 = load double, double* %69, align 1
  %call77 = call %struct._object* @PyComplex_FromCComplex(double %68, double %70)
  store %struct._object* %call77, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.76, %if.then.74, %if.then.69, %if.then.21, %if.then.17, %if.then.4
  %71 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %71
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_neg(%struct.PyComplexObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyComplexObject*, align 8
  %neg = alloca %struct.Py_complex, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8
  %0 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %0, i32 0, i32 1
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %sub = fsub double -0.000000e+00, %1
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %neg, i32 0, i32 0
  store double %sub, double* %real1, align 8
  %2 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval2 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %2, i32 0, i32 1
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval2, i32 0, i32 1
  %3 = load double, double* %imag, align 8
  %sub3 = fsub double -0.000000e+00, %3
  %imag4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %neg, i32 0, i32 1
  store double %sub3, double* %imag4, align 8
  %4 = bitcast %struct.Py_complex* %neg to { double, double }*
  %5 = getelementptr { double, double }, { double, double }* %4, i32 0, i32 0
  %6 = load double, double* %5, align 1
  %7 = getelementptr { double, double }, { double, double }* %4, i32 0, i32 1
  %8 = load double, double* %7, align 1
  %call = call %struct._object* @PyComplex_FromCComplex(double %6, double %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_pos(%struct.PyComplexObject* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct.PyComplexObject*, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8
  %0 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %1 = bitcast %struct.PyComplexObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyComplex_Type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %4 = bitcast %struct.PyComplexObject* %3 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %7 = bitcast %struct.PyComplexObject* %6 to %struct._object*
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %8, i32 0, i32 1
  %9 = bitcast %struct.Py_complex* %cval to { double, double }*
  %10 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 0
  %11 = load double, double* %10, align 1
  %12 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 1
  %13 = load double, double* %12, align 1
  %call = call %struct._object* @PyComplex_FromCComplex(double %11, double %13)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_abs(%struct.PyComplexObject* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct.PyComplexObject*, align 8
  %result = alloca double, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8
  %0 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %0, i32 0, i32 1
  %1 = bitcast %struct.Py_complex* %cval to { double, double }*
  %2 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 0
  %3 = load double, double* %2, align 1
  %4 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 1
  %5 = load double, double* %4, align 1
  %call = call double @_Py_c_abs(double %3, double %5)
  store double %call, double* %result, align 8
  %call1 = call i32* @__errno_location() #5
  %6 = load i32, i32* %call1, align 4
  %cmp = icmp eq i32 %6, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load double, double* %result, align 8
  %call2 = call %struct._object* @PyFloat_FromDouble(double %8)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal i32 @complex_bool(%struct.PyComplexObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyComplexObject*, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8
  %0 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %0, i32 0, i32 1
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %cmp = fcmp une double %1, 0.000000e+00
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval1 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %2, i32 0, i32 1
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval1, i32 0, i32 1
  %3 = load double, double* %imag, align 8
  %cmp2 = fcmp une double %3, 0.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_int(%struct._object* %v) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_float(%struct._object* %v) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_int_div(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0))
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_div(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %quot = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1
  %6 = bitcast %struct.Py_complex* %a to i8*
  %7 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %10, @PyComplex_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %12, %struct._typeobject* @PyComplex_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyComplexObject*
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %14, i32 0, i32 1
  %15 = bitcast %struct.Py_complex* %b to i8*
  %16 = bitcast %struct.Py_complex* %cval13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %17 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %call20 = call i32* @__errno_location() #5
  store i32 0, i32* %call20, align 4
  %18 = bitcast %struct.Py_complex* %a to { double, double }*
  %19 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 0
  %20 = load double, double* %19, align 1
  %21 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 1
  %22 = load double, double* %21, align 1
  %23 = bitcast %struct.Py_complex* %b to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %call21 = call { double, double } @_Py_c_quot(double %20, double %22, double %25, double %27)
  %28 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = extractvalue { double, double } %call21, 0
  store double %30, double* %29, align 8
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = extractvalue { double, double } %call21, 1
  store double %32, double* %31, align 8
  %33 = bitcast %struct.Py_complex* %quot to i8*
  %34 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %call22 = call i32* @__errno_location() #5
  %35 = load i32, i32* %call22, align 4
  %cmp23 = icmp eq i32 %35, 33
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  %36 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  %37 = bitcast %struct.Py_complex* %quot to { double, double }*
  %38 = getelementptr { double, double }, { double, double }* %37, i32 0, i32 0
  %39 = load double, double* %38, align 1
  %40 = getelementptr { double, double }, { double, double }* %37, i32 0, i32 1
  %41 = load double, double* %40, align 1
  %call26 = call %struct._object* @PyComplex_FromCComplex(double %39, double %41)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.17, %if.then.4
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define internal i32 @to_complex(%struct._object** %pobj, %struct.Py_complex* %pc) #0 {
entry:
  %retval = alloca i32, align 4
  %pobj.addr = alloca %struct._object**, align 8
  %pc.addr = alloca %struct.Py_complex*, align 8
  %obj = alloca %struct._object*, align 8
  store %struct._object** %pobj, %struct._object*** %pobj.addr, align 8
  store %struct.Py_complex* %pc, %struct.Py_complex** %pc.addr, align 8
  %0 = load %struct._object**, %struct._object*** %pobj.addr, align 8
  %1 = load %struct._object*, %struct._object** %0, align 8
  store %struct._object* %1, %struct._object** %obj, align 8
  %2 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %2, i32 0, i32 1
  store double 0.000000e+00, double* %imag, align 8
  %3 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %3, i32 0, i32 0
  store double 0.000000e+00, double* %real, align 8
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %obj, align 8
  %call = call double @PyLong_AsDouble(%struct._object* %7)
  %8 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %8, i32 0, i32 0
  store double %call, double* %real1, align 8
  %9 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %9, i32 0, i32 0
  %10 = load double, double* %real2, align 8
  %cmp3 = fcmp oeq double %10, -1.000000e+00
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %11 = load %struct._object**, %struct._object*** %pobj.addr, align 8
  store %struct._object* null, %struct._object** %11, align 8
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %entry
  %12 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %13, @PyFloat_Type
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %14 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %15, %struct._typeobject* @PyFloat_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.6
  %16 = load %struct._object*, %struct._object** %obj, align 8
  %call13 = call double @PyFloat_AsDouble(%struct._object* %16)
  %17 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8
  %real14 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %17, i32 0, i32 0
  store double %call13, double* %real14, align 8
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %19 = load %struct._object**, %struct._object*** %pobj.addr, align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %19, align 8
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.12, %if.end, %if.then.5
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare double @PyLong_AsDouble(%struct._object*) #4

; Function Attrs: nounwind uwtable
define internal { double, double } @c_powi(double %x.coerce0, double %x.coerce1, i64 %n) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %x = alloca %struct.Py_complex, align 8
  %n.addr = alloca i64, align 8
  %cn = alloca %struct.Py_complex, align 8
  %agg.tmp = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %x to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %x.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %x.coerce1, double* %2
  store i64 %n, i64* %n.addr, align 8
  %3 = load i64, i64* %n.addr, align 8
  %cmp = icmp sgt i64 %3, 100
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp slt i64 %4, -100
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i64, i64* %n.addr, align 8
  %conv = sitofp i64 %5 to double
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cn, i32 0, i32 0
  store double %conv, double* %real, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cn, i32 0, i32 1
  store double 0.000000e+00, double* %imag, align 8
  %6 = bitcast %struct.Py_complex* %x to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  %8 = load double, double* %7, align 1
  %9 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  %10 = load double, double* %9, align 1
  %11 = bitcast %struct.Py_complex* %cn to { double, double }*
  %12 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 0
  %13 = load double, double* %12, align 1
  %14 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 1
  %15 = load double, double* %14, align 1
  %call = call { double, double } @_Py_c_pow(double %8, double %10, double %13, double %15)
  %16 = bitcast %struct.Py_complex* %retval to { double, double }*
  %17 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = extractvalue { double, double } %call, 0
  store double %18, double* %17, align 8
  %19 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = extractvalue { double, double } %call, 1
  store double %20, double* %19, align 8
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %21 = load i64, i64* %n.addr, align 8
  %cmp2 = icmp sgt i64 %21, 0
  br i1 %cmp2, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %22 = load i64, i64* %n.addr, align 8
  %23 = bitcast %struct.Py_complex* %x to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %call5 = call { double, double } @c_powu(double %25, double %27, i64 %22)
  %28 = bitcast %struct.Py_complex* %retval to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = extractvalue { double, double } %call5, 0
  store double %30, double* %29, align 8
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = extractvalue { double, double } %call5, 1
  store double %32, double* %31, align 8
  br label %return

if.else.6:                                        ; preds = %if.else
  %33 = load i64, i64* %n.addr, align 8
  %sub = sub i64 0, %33
  %34 = bitcast %struct.Py_complex* %x to { double, double }*
  %35 = getelementptr { double, double }, { double, double }* %34, i32 0, i32 0
  %36 = load double, double* %35, align 1
  %37 = getelementptr { double, double }, { double, double }* %34, i32 0, i32 1
  %38 = load double, double* %37, align 1
  %call7 = call { double, double } @c_powu(double %36, double %38, i64 %sub)
  %39 = bitcast %struct.Py_complex* %agg.tmp to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = extractvalue { double, double } %call7, 0
  store double %41, double* %40, align 8
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = extractvalue { double, double } %call7, 1
  store double %43, double* %42, align 8
  %44 = load double, double* getelementptr ({ double, double }, { double, double }* bitcast (%struct.Py_complex* @c_1 to { double, double }*), i32 0, i32 0), align 1
  %45 = load double, double* getelementptr ({ double, double }, { double, double }* bitcast (%struct.Py_complex* @c_1 to { double, double }*), i32 0, i32 1), align 1
  %46 = bitcast %struct.Py_complex* %agg.tmp to { double, double }*
  %47 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 0
  %48 = load double, double* %47, align 1
  %49 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 1
  %50 = load double, double* %49, align 1
  %call8 = call { double, double } @_Py_c_quot(double %44, double %45, double %48, double %50)
  %51 = bitcast %struct.Py_complex* %retval to { double, double }*
  %52 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 0
  %53 = extractvalue { double, double } %call8, 0
  store double %53, double* %52, align 8
  %54 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 1
  %55 = extractvalue { double, double } %call8, 1
  store double %55, double* %54, align 8
  br label %return

return:                                           ; preds = %if.else.6, %if.then.4, %if.then
  %56 = bitcast %struct.Py_complex* %retval to { double, double }*
  %57 = load { double, double }, { double, double }* %56, align 8
  ret { double, double } %57
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_powu(double %x.coerce0, double %x.coerce1, i64 %n) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %x = alloca %struct.Py_complex, align 8
  %n.addr = alloca i64, align 8
  %r = alloca %struct.Py_complex, align 8
  %p = alloca %struct.Py_complex, align 8
  %mask = alloca i64, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %coerce3 = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %x to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %x.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %x.coerce1, double* %2
  store i64 %n, i64* %n.addr, align 8
  store i64 1, i64* %mask, align 8
  %3 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.Py_complex* @c_1 to i8*), i64 16, i32 8, i1 false)
  %4 = bitcast %struct.Py_complex* %p to i8*
  %5 = bitcast %struct.Py_complex* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i64, i64* %mask, align 8
  %cmp = icmp sgt i64 %6, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i64, i64* %n.addr, align 8
  %8 = load i64, i64* %mask, align 8
  %cmp1 = icmp sge i64 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i64, i64* %n.addr, align 8
  %11 = load i64, i64* %mask, align 8
  %and = and i64 %10, %11
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = bitcast %struct.Py_complex* %r to { double, double }*
  %13 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 0
  %14 = load double, double* %13, align 1
  %15 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 1
  %16 = load double, double* %15, align 1
  %17 = bitcast %struct.Py_complex* %p to { double, double }*
  %18 = getelementptr { double, double }, { double, double }* %17, i32 0, i32 0
  %19 = load double, double* %18, align 1
  %20 = getelementptr { double, double }, { double, double }* %17, i32 0, i32 1
  %21 = load double, double* %20, align 1
  %call = call { double, double } @_Py_c_prod(double %14, double %16, double %19, double %21)
  %22 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %23 = getelementptr { double, double }, { double, double }* %22, i32 0, i32 0
  %24 = extractvalue { double, double } %call, 0
  store double %24, double* %23, align 8
  %25 = getelementptr { double, double }, { double, double }* %22, i32 0, i32 1
  %26 = extractvalue { double, double } %call, 1
  store double %26, double* %25, align 8
  %27 = bitcast %struct.Py_complex* %r to i8*
  %28 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %29 = load i64, i64* %mask, align 8
  %shl = shl i64 %29, 1
  store i64 %shl, i64* %mask, align 8
  %30 = bitcast %struct.Py_complex* %p to { double, double }*
  %31 = getelementptr { double, double }, { double, double }* %30, i32 0, i32 0
  %32 = load double, double* %31, align 1
  %33 = getelementptr { double, double }, { double, double }* %30, i32 0, i32 1
  %34 = load double, double* %33, align 1
  %35 = bitcast %struct.Py_complex* %p to { double, double }*
  %36 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 0
  %37 = load double, double* %36, align 1
  %38 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 1
  %39 = load double, double* %38, align 1
  %call2 = call { double, double } @_Py_c_prod(double %32, double %34, double %37, double %39)
  %40 = bitcast %struct.Py_complex* %coerce3 to { double, double }*
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = extractvalue { double, double } %call2, 0
  store double %42, double* %41, align 8
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = extractvalue { double, double } %call2, 1
  store double %44, double* %43, align 8
  %45 = bitcast %struct.Py_complex* %p to i8*
  %46 = bitcast %struct.Py_complex* %coerce3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %47 = bitcast %struct.Py_complex* %retval to i8*
  %48 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false)
  %49 = bitcast %struct.Py_complex* %retval to { double, double }*
  %50 = load { double, double }, { double, double }* %49, align 8
  ret { double, double } %50
}

declare %struct._object* @PyFloat_FromDouble(double) #4

declare i64 @_Py_HashDouble(double) #4

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_conjugate(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %c = alloca %struct.Py_complex, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyComplexObject*
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %1, i32 0, i32 1
  %2 = bitcast %struct.Py_complex* %c to i8*
  %3 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1
  %4 = load double, double* %imag, align 8
  %sub = fsub double -0.000000e+00, %4
  %imag1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1
  store double %sub, double* %imag1, align 8
  %5 = bitcast %struct.Py_complex* %c to { double, double }*
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 1
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 1
  %call = call %struct._object* @PyComplex_FromCComplex(double %7, double %9)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_getnewargs(%struct.PyComplexObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyComplexObject*, align 8
  %c = alloca %struct.Py_complex, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8
  %0 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %0, i32 0, i32 1
  %1 = bitcast %struct.Py_complex* %c to i8*
  %2 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 0
  %3 = load double, double* %real, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1
  %4 = load double, double* %imag, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), double %3, double %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex__format__(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %format_spec = alloca %struct._object*, align 8
  %writer = alloca %struct._PyUnicodeWriter, align 8
  %ret = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct._object** %format_spec)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* %writer)
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %2 = load %struct._object*, %struct._object** %format_spec, align 8
  %3 = load %struct._object*, %struct._object** %format_spec, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 1
  %5 = load i64, i64* %length, align 8
  %call1 = call i32 @_PyComplex_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %1, %struct._object* %2, i64 0, i64 %5)
  store i32 %call1, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare %struct._object* @Py_BuildValue(i8*, ...) #4

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #4

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #4

declare i32 @_PyComplex_FormatAdvancedWriter(%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64) #4

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #4

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #4

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_subtype_from_string(%struct._typeobject* %type, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %got_bracket = alloca i32, align 4
  %s_buffer = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp177 = alloca %struct._object*, align 8
  %_py_decref_tmp182 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store double 0.000000e+00, double* %x, align 8
  store double 0.000000e+00, double* %y, align 8
  store i32 0, i32* %got_bracket, align 4
  store %struct._object* null, %struct._object** %s_buffer, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object* %3)
  store %struct._object* %call, %struct._object** %s_buffer, align 8
  %4 = load %struct._object*, %struct._object** %s_buffer, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %s_buffer, align 8
  %call3 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %5, i64* %len)
  store i8* %call3, i8** %s, align 8
  %6 = load i8*, i8** %s, align 8
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %error

if.end.6:                                         ; preds = %if.end
  br label %if.end.12

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %call7 = call i32 @PyObject_AsCharBuffer(%struct._object* %7, i8** %s, i64* %len)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name, align 8
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i32 0, i32 0), i8* %11)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.6
  %12 = load i8*, i8** %s, align 8
  store i8* %12, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.12
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %and13 = and i32 %conv, 255
  %conv14 = trunc i32 %and13 to i8
  %idxprom = zext i8 %conv14 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %and15 = and i32 %15, 8
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  %conv17 = sext i8 %18 to i32
  %cmp18 = icmp eq i32 %conv17, 40
  br i1 %cmp18, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %while.end
  store i32 1, i32* %got_bracket, align 4
  %19 = load i8*, i8** %s, align 8
  %incdec.ptr21 = getelementptr i8, i8* %19, i32 1
  store i8* %incdec.ptr21, i8** %s, align 8
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.30, %if.then.20
  %20 = load i8*, i8** %s, align 8
  %21 = load i8, i8* %20, align 1
  %conv23 = sext i8 %21 to i32
  %and24 = and i32 %conv23, 255
  %conv25 = trunc i32 %and24 to i8
  %idxprom26 = zext i8 %conv25 to i64
  %arrayidx27 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom26
  %22 = load i32, i32* %arrayidx27, align 4
  %and28 = and i32 %22, 8
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %while.body.30, label %while.end.32

while.body.30:                                    ; preds = %while.cond.22
  %23 = load i8*, i8** %s, align 8
  %incdec.ptr31 = getelementptr i8, i8* %23, i32 1
  store i8* %incdec.ptr31, i8** %s, align 8
  br label %while.cond.22

while.end.32:                                     ; preds = %while.cond.22
  br label %if.end.33

if.end.33:                                        ; preds = %while.end.32, %while.end
  %24 = load i8*, i8** %s, align 8
  %call34 = call double @PyOS_string_to_double(i8* %24, i8** %end, %struct._object* null)
  store double %call34, double* %z, align 8
  %25 = load double, double* %z, align 8
  %cmp35 = fcmp oeq double %25, -1.000000e+00
  br i1 %cmp35, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.33
  %call37 = call %struct._object* @PyErr_Occurred()
  %tobool38 = icmp ne %struct._object* %call37, null
  br i1 %tobool38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %land.lhs.true
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call40 = call i32 @PyErr_ExceptionMatches(%struct._object* %26)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.then.39
  call void @PyErr_Clear()
  br label %if.end.44

if.else.43:                                       ; preds = %if.then.39
  br label %error

if.end.44:                                        ; preds = %if.then.42
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true, %if.end.33
  %27 = load i8*, i8** %end, align 8
  %28 = load i8*, i8** %s, align 8
  %cmp46 = icmp ne i8* %27, %28
  br i1 %cmp46, label %if.then.48, label %if.else.101

if.then.48:                                       ; preds = %if.end.45
  %29 = load i8*, i8** %end, align 8
  store i8* %29, i8** %s, align 8
  %30 = load i8*, i8** %s, align 8
  %31 = load i8, i8* %30, align 1
  %conv49 = sext i8 %31 to i32
  %cmp50 = icmp eq i32 %conv49, 43
  br i1 %cmp50, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.48
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %conv52 = sext i8 %33 to i32
  %cmp53 = icmp eq i32 %conv52, 45
  br i1 %cmp53, label %if.then.55, label %if.else.88

if.then.55:                                       ; preds = %lor.lhs.false, %if.then.48
  %34 = load double, double* %z, align 8
  store double %34, double* %x, align 8
  %35 = load i8*, i8** %s, align 8
  %call56 = call double @PyOS_string_to_double(i8* %35, i8** %end, %struct._object* null)
  store double %call56, double* %y, align 8
  %36 = load double, double* %y, align 8
  %cmp57 = fcmp oeq double %36, -1.000000e+00
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.68

land.lhs.true.59:                                 ; preds = %if.then.55
  %call60 = call %struct._object* @PyErr_Occurred()
  %tobool61 = icmp ne %struct._object* %call60, null
  br i1 %tobool61, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %land.lhs.true.59
  %37 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call63 = call i32 @PyErr_ExceptionMatches(%struct._object* %37)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.then.62
  call void @PyErr_Clear()
  br label %if.end.67

if.else.66:                                       ; preds = %if.then.62
  br label %error

if.end.67:                                        ; preds = %if.then.65
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true.59, %if.then.55
  %38 = load i8*, i8** %end, align 8
  %39 = load i8*, i8** %s, align 8
  %cmp69 = icmp ne i8* %38, %39
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.end.68
  %40 = load i8*, i8** %end, align 8
  store i8* %40, i8** %s, align 8
  br label %if.end.77

if.else.72:                                       ; preds = %if.end.68
  %41 = load i8*, i8** %s, align 8
  %42 = load i8, i8* %41, align 1
  %conv73 = sext i8 %42 to i32
  %cmp74 = icmp eq i32 %conv73, 43
  %cond = select i1 %cmp74, double 1.000000e+00, double -1.000000e+00
  store double %cond, double* %y, align 8
  %43 = load i8*, i8** %s, align 8
  %incdec.ptr76 = getelementptr i8, i8* %43, i32 1
  store i8* %incdec.ptr76, i8** %s, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.72, %if.then.71
  %44 = load i8*, i8** %s, align 8
  %45 = load i8, i8* %44, align 1
  %conv78 = sext i8 %45 to i32
  %cmp79 = icmp eq i32 %conv78, 106
  br i1 %cmp79, label %if.end.86, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.77
  %46 = load i8*, i8** %s, align 8
  %47 = load i8, i8* %46, align 1
  %conv82 = sext i8 %47 to i32
  %cmp83 = icmp eq i32 %conv82, 74
  br i1 %cmp83, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %lor.lhs.false.81
  br label %parse_error

if.end.86:                                        ; preds = %lor.lhs.false.81, %if.end.77
  %48 = load i8*, i8** %s, align 8
  %incdec.ptr87 = getelementptr i8, i8* %48, i32 1
  store i8* %incdec.ptr87, i8** %s, align 8
  br label %if.end.100

if.else.88:                                       ; preds = %lor.lhs.false
  %49 = load i8*, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %conv89 = sext i8 %50 to i32
  %cmp90 = icmp eq i32 %conv89, 106
  br i1 %cmp90, label %if.then.96, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.else.88
  %51 = load i8*, i8** %s, align 8
  %52 = load i8, i8* %51, align 1
  %conv93 = sext i8 %52 to i32
  %cmp94 = icmp eq i32 %conv93, 74
  br i1 %cmp94, label %if.then.96, label %if.else.98

if.then.96:                                       ; preds = %lor.lhs.false.92, %if.else.88
  %53 = load i8*, i8** %s, align 8
  %incdec.ptr97 = getelementptr i8, i8* %53, i32 1
  store i8* %incdec.ptr97, i8** %s, align 8
  %54 = load double, double* %z, align 8
  store double %54, double* %y, align 8
  br label %if.end.99

if.else.98:                                       ; preds = %lor.lhs.false.92
  %55 = load double, double* %z, align 8
  store double %55, double* %x, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.then.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.86
  br label %if.end.127

if.else.101:                                      ; preds = %if.end.45
  %56 = load i8*, i8** %s, align 8
  %57 = load i8, i8* %56, align 1
  %conv102 = sext i8 %57 to i32
  %cmp103 = icmp eq i32 %conv102, 43
  br i1 %cmp103, label %if.then.109, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.else.101
  %58 = load i8*, i8** %s, align 8
  %59 = load i8, i8* %58, align 1
  %conv106 = sext i8 %59 to i32
  %cmp107 = icmp eq i32 %conv106, 45
  br i1 %cmp107, label %if.then.109, label %if.else.115

if.then.109:                                      ; preds = %lor.lhs.false.105, %if.else.101
  %60 = load i8*, i8** %s, align 8
  %61 = load i8, i8* %60, align 1
  %conv110 = sext i8 %61 to i32
  %cmp111 = icmp eq i32 %conv110, 43
  %cond113 = select i1 %cmp111, double 1.000000e+00, double -1.000000e+00
  store double %cond113, double* %y, align 8
  %62 = load i8*, i8** %s, align 8
  %incdec.ptr114 = getelementptr i8, i8* %62, i32 1
  store i8* %incdec.ptr114, i8** %s, align 8
  br label %if.end.116

if.else.115:                                      ; preds = %lor.lhs.false.105
  store double 1.000000e+00, double* %y, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %if.then.109
  %63 = load i8*, i8** %s, align 8
  %64 = load i8, i8* %63, align 1
  %conv117 = sext i8 %64 to i32
  %cmp118 = icmp eq i32 %conv117, 106
  br i1 %cmp118, label %if.end.125, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %if.end.116
  %65 = load i8*, i8** %s, align 8
  %66 = load i8, i8* %65, align 1
  %conv121 = sext i8 %66 to i32
  %cmp122 = icmp eq i32 %conv121, 74
  br i1 %cmp122, label %if.end.125, label %if.then.124

if.then.124:                                      ; preds = %lor.lhs.false.120
  br label %parse_error

if.end.125:                                       ; preds = %lor.lhs.false.120, %if.end.116
  %67 = load i8*, i8** %s, align 8
  %incdec.ptr126 = getelementptr i8, i8* %67, i32 1
  store i8* %incdec.ptr126, i8** %s, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.125, %if.end.100
  br label %while.cond.128

while.cond.128:                                   ; preds = %while.body.136, %if.end.127
  %68 = load i8*, i8** %s, align 8
  %69 = load i8, i8* %68, align 1
  %conv129 = sext i8 %69 to i32
  %and130 = and i32 %conv129, 255
  %conv131 = trunc i32 %and130 to i8
  %idxprom132 = zext i8 %conv131 to i64
  %arrayidx133 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom132
  %70 = load i32, i32* %arrayidx133, align 4
  %and134 = and i32 %70, 8
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %while.body.136, label %while.end.138

while.body.136:                                   ; preds = %while.cond.128
  %71 = load i8*, i8** %s, align 8
  %incdec.ptr137 = getelementptr i8, i8* %71, i32 1
  store i8* %incdec.ptr137, i8** %s, align 8
  br label %while.cond.128

while.end.138:                                    ; preds = %while.cond.128
  %72 = load i32, i32* %got_bracket, align 4
  %tobool139 = icmp ne i32 %72, 0
  br i1 %tobool139, label %if.then.140, label %if.end.158

if.then.140:                                      ; preds = %while.end.138
  %73 = load i8*, i8** %s, align 8
  %74 = load i8, i8* %73, align 1
  %conv141 = sext i8 %74 to i32
  %cmp142 = icmp ne i32 %conv141, 41
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.then.140
  br label %parse_error

if.end.145:                                       ; preds = %if.then.140
  %75 = load i8*, i8** %s, align 8
  %incdec.ptr146 = getelementptr i8, i8* %75, i32 1
  store i8* %incdec.ptr146, i8** %s, align 8
  br label %while.cond.147

while.cond.147:                                   ; preds = %while.body.155, %if.end.145
  %76 = load i8*, i8** %s, align 8
  %77 = load i8, i8* %76, align 1
  %conv148 = sext i8 %77 to i32
  %and149 = and i32 %conv148, 255
  %conv150 = trunc i32 %and149 to i8
  %idxprom151 = zext i8 %conv150 to i64
  %arrayidx152 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom151
  %78 = load i32, i32* %arrayidx152, align 4
  %and153 = and i32 %78, 8
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %while.body.155, label %while.end.157

while.body.155:                                   ; preds = %while.cond.147
  %79 = load i8*, i8** %s, align 8
  %incdec.ptr156 = getelementptr i8, i8* %79, i32 1
  store i8* %incdec.ptr156, i8** %s, align 8
  br label %while.cond.147

while.end.157:                                    ; preds = %while.cond.147
  br label %if.end.158

if.end.158:                                       ; preds = %while.end.157, %while.end.138
  %80 = load i8*, i8** %s, align 8
  %81 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %81 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %82 = load i64, i64* %len, align 8
  %cmp159 = icmp ne i64 %sub.ptr.sub, %82
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.158
  br label %parse_error

if.end.162:                                       ; preds = %if.end.158
  br label %do.body

do.body:                                          ; preds = %if.end.162
  %83 = load %struct._object*, %struct._object** %s_buffer, align 8
  store %struct._object* %83, %struct._object** %_py_xdecref_tmp, align 8
  %84 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp163 = icmp ne %struct._object* %84, null
  br i1 %cmp163, label %if.then.165, label %if.end.173

if.then.165:                                      ; preds = %do.body
  br label %do.body.166

do.body.166:                                      ; preds = %if.then.165
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %85, %struct._object** %_py_decref_tmp, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %87, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp167 = icmp ne i64 %dec, 0
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %do.body.166
  br label %if.end.172

if.else.170:                                      ; preds = %do.body.166
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type171 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type171, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %90(%struct._object* %91)
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.170, %if.then.169
  br label %do.end

do.end:                                           ; preds = %if.end.172
  br label %if.end.173

if.end.173:                                       ; preds = %do.end, %do.body
  br label %do.end.174

do.end.174:                                       ; preds = %if.end.173
  %92 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %93 = load double, double* %x, align 8
  %94 = load double, double* %y, align 8
  %call175 = call %struct._object* @complex_subtype_from_doubles(%struct._typeobject* %92, double %93, double %94)
  store %struct._object* %call175, %struct._object** %retval
  br label %return

parse_error:                                      ; preds = %if.then.161, %if.then.144, %if.then.124, %if.then.85
  %95 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %error

error:                                            ; preds = %parse_error, %if.else.66, %if.else.43, %if.then.5
  br label %do.body.176

do.body.176:                                      ; preds = %error
  %96 = load %struct._object*, %struct._object** %s_buffer, align 8
  store %struct._object* %96, %struct._object** %_py_xdecref_tmp177, align 8
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp177, align 8
  %cmp178 = icmp ne %struct._object* %97, null
  br i1 %cmp178, label %if.then.180, label %if.end.193

if.then.180:                                      ; preds = %do.body.176
  br label %do.body.181

do.body.181:                                      ; preds = %if.then.180
  %98 = load %struct._object*, %struct._object** %_py_xdecref_tmp177, align 8
  store %struct._object* %98, %struct._object** %_py_decref_tmp182, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp182, align 8
  %ob_refcnt183 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0
  %100 = load i64, i64* %ob_refcnt183, align 8
  %dec184 = add i64 %100, -1
  store i64 %dec184, i64* %ob_refcnt183, align 8
  %cmp185 = icmp ne i64 %dec184, 0
  br i1 %cmp185, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %do.body.181
  br label %if.end.191

if.else.188:                                      ; preds = %do.body.181
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp182, align 8
  %ob_type189 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type189, align 8
  %tp_dealloc190 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc190, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp182, align 8
  call void %103(%struct._object* %104)
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.188, %if.then.187
  br label %do.end.192

do.end.192:                                       ; preds = %if.end.191
  br label %if.end.193

if.end.193:                                       ; preds = %do.end.192, %do.body.176
  br label %do.end.194

do.end.194:                                       ; preds = %if.end.193
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.194, %do.end.174, %if.then.8, %if.then.2
  %105 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %105
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #4

declare %struct._object* @PyNumber_Float(%struct._object*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_subtype_from_doubles(%struct._typeobject* %type, double %real, double %imag) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %real.addr = alloca double, align 8
  %imag.addr = alloca double, align 8
  %c = alloca %struct.Py_complex, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store double %real, double* %real.addr, align 8
  store double %imag, double* %imag.addr, align 8
  %0 = load double, double* %real.addr, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 0
  store double %0, double* %real1, align 8
  %1 = load double, double* %imag.addr, align 8
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1
  store double %1, double* %imag2, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %3 = bitcast %struct.Py_complex* %c to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  %5 = load double, double* %4, align 1
  %6 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  %7 = load double, double* %6, align 1
  %call = call %struct._object* @complex_subtype_from_c_complex(%struct._typeobject* %2, double %5, double %7)
  ret %struct._object* %call
}

declare %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object*) #4

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #4

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #4

declare double @PyOS_string_to_double(i8*, i8**, %struct._object*) #4

declare i32 @PyErr_ExceptionMatches(%struct._object*) #4

declare void @PyErr_Clear() #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_subtype_from_c_complex(%struct._typeobject* %type, double %cval.coerce0, double %cval.coerce1) #0 {
entry:
  %cval = alloca %struct.Py_complex, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %op = alloca %struct._object*, align 8
  %0 = bitcast %struct.Py_complex* %cval to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %cval.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %cval.coerce1, double* %2
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 36
  %4 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %4(%struct._typeobject* %5, i64 0)
  store %struct._object* %call, %struct._object** %op, align 8
  %6 = load %struct._object*, %struct._object** %op, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %op, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyComplexObject*
  %cval1 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %8, i32 0, i32 1
  %9 = bitcast %struct.Py_complex* %cval1 to i8*
  %10 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._object*, %struct._object** %op, align 8
  ret %struct._object* %11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
