; ModuleID = 'programs_new/Python-new/complexobject.bc.ll'
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
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !396, metadata !786), !dbg !787
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !397, metadata !786), !dbg !788
  %6 = bitcast %struct.Py_complex* %r to i8*, !dbg !789
  call void @llvm.lifetime.start(i64 16, i8* %6) #2, !dbg !789
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %r, metadata !398, metadata !786), !dbg !790
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !791
  %7 = load double, double* %real, align 8, !dbg !791, !tbaa !792
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !797
  %8 = load double, double* %real1, align 8, !dbg !797, !tbaa !792
  %add = fadd double %7, %8, !dbg !798
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !799
  store double %add, double* %real2, align 8, !dbg !800, !tbaa !792
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !801
  %9 = load double, double* %imag, align 8, !dbg !801, !tbaa !802
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !803
  %10 = load double, double* %imag3, align 8, !dbg !803, !tbaa !802
  %add4 = fadd double %9, %10, !dbg !804
  %imag5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !805
  store double %add4, double* %imag5, align 8, !dbg !806, !tbaa !802
  %11 = bitcast %struct.Py_complex* %retval to i8*, !dbg !807
  %12 = bitcast %struct.Py_complex* %r to i8*, !dbg !807
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !dbg !807, !tbaa.struct !808
  %13 = bitcast %struct.Py_complex* %r to i8*, !dbg !810
  call void @llvm.lifetime.end(i64 16, i8* %13) #2, !dbg !810
  %14 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !810
  %15 = load { double, double }, { double, double }* %14, align 8, !dbg !810
  ret { double, double } %15, !dbg !810
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

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
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !401, metadata !786), !dbg !811
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !402, metadata !786), !dbg !812
  %6 = bitcast %struct.Py_complex* %r to i8*, !dbg !813
  call void @llvm.lifetime.start(i64 16, i8* %6) #2, !dbg !813
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %r, metadata !403, metadata !786), !dbg !814
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !815
  %7 = load double, double* %real, align 8, !dbg !815, !tbaa !792
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !816
  %8 = load double, double* %real1, align 8, !dbg !816, !tbaa !792
  %sub = fsub double %7, %8, !dbg !817
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !818
  store double %sub, double* %real2, align 8, !dbg !819, !tbaa !792
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !820
  %9 = load double, double* %imag, align 8, !dbg !820, !tbaa !802
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !821
  %10 = load double, double* %imag3, align 8, !dbg !821, !tbaa !802
  %sub4 = fsub double %9, %10, !dbg !822
  %imag5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !823
  store double %sub4, double* %imag5, align 8, !dbg !824, !tbaa !802
  %11 = bitcast %struct.Py_complex* %retval to i8*, !dbg !825
  %12 = bitcast %struct.Py_complex* %r to i8*, !dbg !825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !dbg !825, !tbaa.struct !808
  %13 = bitcast %struct.Py_complex* %r to i8*, !dbg !826
  call void @llvm.lifetime.end(i64 16, i8* %13) #2, !dbg !826
  %14 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !826
  %15 = load { double, double }, { double, double }* %14, align 8, !dbg !826
  ret { double, double } %15, !dbg !826
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
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !408, metadata !786), !dbg !827
  %3 = bitcast %struct.Py_complex* %r to i8*, !dbg !828
  call void @llvm.lifetime.start(i64 16, i8* %3) #2, !dbg !828
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %r, metadata !409, metadata !786), !dbg !829
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !830
  %4 = load double, double* %real, align 8, !dbg !830, !tbaa !792
  %sub = fsub double -0.000000e+00, %4, !dbg !831
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !832
  store double %sub, double* %real1, align 8, !dbg !833, !tbaa !792
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !834
  %5 = load double, double* %imag, align 8, !dbg !834, !tbaa !802
  %sub2 = fsub double -0.000000e+00, %5, !dbg !835
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !836
  store double %sub2, double* %imag3, align 8, !dbg !837, !tbaa !802
  %6 = bitcast %struct.Py_complex* %retval to i8*, !dbg !838
  %7 = bitcast %struct.Py_complex* %r to i8*, !dbg !838
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !dbg !838, !tbaa.struct !808
  %8 = bitcast %struct.Py_complex* %r to i8*, !dbg !839
  call void @llvm.lifetime.end(i64 16, i8* %8) #2, !dbg !839
  %9 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !839
  %10 = load { double, double }, { double, double }* %9, align 8, !dbg !839
  ret { double, double } %10, !dbg !839
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
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !412, metadata !786), !dbg !840
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !413, metadata !786), !dbg !841
  %6 = bitcast %struct.Py_complex* %r to i8*, !dbg !842
  call void @llvm.lifetime.start(i64 16, i8* %6) #2, !dbg !842
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %r, metadata !414, metadata !786), !dbg !843
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !844
  %7 = load double, double* %real, align 8, !dbg !844, !tbaa !792
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !845
  %8 = load double, double* %real1, align 8, !dbg !845, !tbaa !792
  %mul = fmul double %7, %8, !dbg !846
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !847
  %9 = load double, double* %imag, align 8, !dbg !847, !tbaa !802
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !848
  %10 = load double, double* %imag2, align 8, !dbg !848, !tbaa !802
  %mul3 = fmul double %9, %10, !dbg !849
  %sub = fsub double %mul, %mul3, !dbg !850
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !851
  store double %sub, double* %real4, align 8, !dbg !852, !tbaa !792
  %real5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !853
  %11 = load double, double* %real5, align 8, !dbg !853, !tbaa !792
  %imag6 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !854
  %12 = load double, double* %imag6, align 8, !dbg !854, !tbaa !802
  %mul7 = fmul double %11, %12, !dbg !855
  %imag8 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !856
  %13 = load double, double* %imag8, align 8, !dbg !856, !tbaa !802
  %real9 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !857
  %14 = load double, double* %real9, align 8, !dbg !857, !tbaa !792
  %mul10 = fmul double %13, %14, !dbg !858
  %add = fadd double %mul7, %mul10, !dbg !859
  %imag11 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !860
  store double %add, double* %imag11, align 8, !dbg !861, !tbaa !802
  %15 = bitcast %struct.Py_complex* %retval to i8*, !dbg !862
  %16 = bitcast %struct.Py_complex* %r to i8*, !dbg !862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false), !dbg !862, !tbaa.struct !808
  %17 = bitcast %struct.Py_complex* %r to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 16, i8* %17) #2, !dbg !863
  %18 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !863
  %19 = load { double, double }, { double, double }* %18, align 8, !dbg !863
  ret { double, double } %19, !dbg !863
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
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !417, metadata !786), !dbg !864
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !418, metadata !786), !dbg !865
  %6 = bitcast %struct.Py_complex* %r to i8*, !dbg !866
  call void @llvm.lifetime.start(i64 16, i8* %6) #2, !dbg !866
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %r, metadata !419, metadata !786), !dbg !867
  %7 = bitcast double* %abs_breal to i8*, !dbg !868
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !868
  call void @llvm.dbg.declare(metadata double* %abs_breal, metadata !420, metadata !786), !dbg !869
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !870
  %8 = load double, double* %real, align 8, !dbg !870, !tbaa !792
  %cmp = fcmp olt double %8, 0.000000e+00, !dbg !871
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !872

cond.true:                                        ; preds = %entry
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !873
  %9 = load double, double* %real1, align 8, !dbg !873, !tbaa !792
  %sub = fsub double -0.000000e+00, %9, !dbg !875
  br label %cond.end, !dbg !872

cond.false:                                       ; preds = %entry
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !876
  %10 = load double, double* %real2, align 8, !dbg !876, !tbaa !792
  br label %cond.end, !dbg !872

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %10, %cond.false ], !dbg !872
  store double %cond, double* %abs_breal, align 8, !dbg !878, !tbaa !809
  %11 = bitcast double* %abs_bimag to i8*, !dbg !881
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !881
  call void @llvm.dbg.declare(metadata double* %abs_bimag, metadata !422, metadata !786), !dbg !882
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !883
  %12 = load double, double* %imag, align 8, !dbg !883, !tbaa !802
  %cmp3 = fcmp olt double %12, 0.000000e+00, !dbg !884
  br i1 %cmp3, label %cond.true.4, label %cond.false.7, !dbg !885

cond.true.4:                                      ; preds = %cond.end
  %imag5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !886
  %13 = load double, double* %imag5, align 8, !dbg !886, !tbaa !802
  %sub6 = fsub double -0.000000e+00, %13, !dbg !887
  br label %cond.end.9, !dbg !885

cond.false.7:                                     ; preds = %cond.end
  %imag8 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !888
  %14 = load double, double* %imag8, align 8, !dbg !888, !tbaa !802
  br label %cond.end.9, !dbg !885

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.4
  %cond10 = phi double [ %sub6, %cond.true.4 ], [ %14, %cond.false.7 ], !dbg !885
  store double %cond10, double* %abs_bimag, align 8, !dbg !889, !tbaa !809
  %15 = load double, double* %abs_breal, align 8, !dbg !890, !tbaa !809
  %16 = load double, double* %abs_bimag, align 8, !dbg !891, !tbaa !809
  %cmp11 = fcmp oge double %15, %16, !dbg !892
  br i1 %cmp11, label %if.then, label %if.else.32, !dbg !893

if.then:                                          ; preds = %cond.end.9
  %17 = load double, double* %abs_breal, align 8, !dbg !894, !tbaa !809
  %cmp12 = fcmp oeq double %17, 0.000000e+00, !dbg !895
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !896

if.then.13:                                       ; preds = %if.then
  %call = call i32* @__errno_location() #1, !dbg !897
  store i32 33, i32* %call, align 4, !dbg !899, !tbaa !900
  %imag14 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !902
  store double 0.000000e+00, double* %imag14, align 8, !dbg !903, !tbaa !802
  %real15 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !904
  store double 0.000000e+00, double* %real15, align 8, !dbg !905, !tbaa !792
  br label %if.end, !dbg !906

if.else:                                          ; preds = %if.then
  %18 = bitcast double* %ratio to i8*, !dbg !907
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !907
  call void @llvm.dbg.declare(metadata double* %ratio, metadata !423, metadata !786), !dbg !908
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !909
  %19 = load double, double* %imag16, align 8, !dbg !909, !tbaa !802
  %real17 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !910
  %20 = load double, double* %real17, align 8, !dbg !910, !tbaa !792
  %div = fdiv double %19, %20, !dbg !911
  store double %div, double* %ratio, align 8, !dbg !908, !tbaa !809
  %21 = bitcast double* %denom to i8*, !dbg !912
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !912
  call void @llvm.dbg.declare(metadata double* %denom, metadata !428, metadata !786), !dbg !913
  %real18 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !914
  %22 = load double, double* %real18, align 8, !dbg !914, !tbaa !792
  %imag19 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !915
  %23 = load double, double* %imag19, align 8, !dbg !915, !tbaa !802
  %24 = load double, double* %ratio, align 8, !dbg !916, !tbaa !809
  %mul = fmul double %23, %24, !dbg !917
  %add = fadd double %22, %mul, !dbg !918
  store double %add, double* %denom, align 8, !dbg !913, !tbaa !809
  %real20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !919
  %25 = load double, double* %real20, align 8, !dbg !919, !tbaa !792
  %imag21 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !920
  %26 = load double, double* %imag21, align 8, !dbg !920, !tbaa !802
  %27 = load double, double* %ratio, align 8, !dbg !921, !tbaa !809
  %mul22 = fmul double %26, %27, !dbg !922
  %add23 = fadd double %25, %mul22, !dbg !923
  %28 = load double, double* %denom, align 8, !dbg !924, !tbaa !809
  %div24 = fdiv double %add23, %28, !dbg !925
  %real25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !926
  store double %div24, double* %real25, align 8, !dbg !927, !tbaa !792
  %imag26 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !928
  %29 = load double, double* %imag26, align 8, !dbg !928, !tbaa !802
  %real27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !929
  %30 = load double, double* %real27, align 8, !dbg !929, !tbaa !792
  %31 = load double, double* %ratio, align 8, !dbg !930, !tbaa !809
  %mul28 = fmul double %30, %31, !dbg !931
  %sub29 = fsub double %29, %mul28, !dbg !932
  %32 = load double, double* %denom, align 8, !dbg !933, !tbaa !809
  %div30 = fdiv double %sub29, %32, !dbg !934
  %imag31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !935
  store double %div30, double* %imag31, align 8, !dbg !936, !tbaa !802
  %33 = bitcast double* %denom to i8*, !dbg !937
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !937
  %34 = bitcast double* %ratio to i8*, !dbg !937
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !937
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.54, !dbg !938

if.else.32:                                       ; preds = %cond.end.9
  %35 = bitcast double* %ratio33 to i8*, !dbg !939
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !939
  call void @llvm.dbg.declare(metadata double* %ratio33, metadata !429, metadata !786), !dbg !940
  %real34 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !941
  %36 = load double, double* %real34, align 8, !dbg !941, !tbaa !792
  %imag35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !942
  %37 = load double, double* %imag35, align 8, !dbg !942, !tbaa !802
  %div36 = fdiv double %36, %37, !dbg !943
  store double %div36, double* %ratio33, align 8, !dbg !940, !tbaa !809
  %38 = bitcast double* %denom37 to i8*, !dbg !944
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !944
  call void @llvm.dbg.declare(metadata double* %denom37, metadata !431, metadata !786), !dbg !945
  %real38 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !946
  %39 = load double, double* %real38, align 8, !dbg !946, !tbaa !792
  %40 = load double, double* %ratio33, align 8, !dbg !947, !tbaa !809
  %mul39 = fmul double %39, %40, !dbg !948
  %imag40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !949
  %41 = load double, double* %imag40, align 8, !dbg !949, !tbaa !802
  %add41 = fadd double %mul39, %41, !dbg !950
  store double %add41, double* %denom37, align 8, !dbg !945, !tbaa !809
  %real42 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !951
  %42 = load double, double* %real42, align 8, !dbg !951, !tbaa !792
  %43 = load double, double* %ratio33, align 8, !dbg !952, !tbaa !809
  %mul43 = fmul double %42, %43, !dbg !953
  %imag44 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !954
  %44 = load double, double* %imag44, align 8, !dbg !954, !tbaa !802
  %add45 = fadd double %mul43, %44, !dbg !955
  %45 = load double, double* %denom37, align 8, !dbg !956, !tbaa !809
  %div46 = fdiv double %add45, %45, !dbg !957
  %real47 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !958
  store double %div46, double* %real47, align 8, !dbg !959, !tbaa !792
  %imag48 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !960
  %46 = load double, double* %imag48, align 8, !dbg !960, !tbaa !802
  %47 = load double, double* %ratio33, align 8, !dbg !961, !tbaa !809
  %mul49 = fmul double %46, %47, !dbg !962
  %real50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !963
  %48 = load double, double* %real50, align 8, !dbg !963, !tbaa !792
  %sub51 = fsub double %mul49, %48, !dbg !964
  %49 = load double, double* %denom37, align 8, !dbg !965, !tbaa !809
  %div52 = fdiv double %sub51, %49, !dbg !966
  %imag53 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !967
  store double %div52, double* %imag53, align 8, !dbg !968, !tbaa !802
  %50 = bitcast double* %denom37 to i8*, !dbg !969
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !969
  %51 = bitcast double* %ratio33 to i8*, !dbg !969
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !969
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.32, %if.end
  %52 = bitcast %struct.Py_complex* %retval to i8*, !dbg !970
  %53 = bitcast %struct.Py_complex* %r to i8*, !dbg !970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false), !dbg !970, !tbaa.struct !808
  %54 = bitcast double* %abs_bimag to i8*, !dbg !971
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !971
  %55 = bitcast double* %abs_breal to i8*, !dbg !971
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !971
  %56 = bitcast %struct.Py_complex* %r to i8*, !dbg !971
  call void @llvm.lifetime.end(i64 16, i8* %56) #2, !dbg !971
  %57 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !971
  %58 = load { double, double }, { double, double }* %57, align 8, !dbg !971
  ret { double, double } %58, !dbg !971
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

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
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !434, metadata !786), !dbg !972
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !435, metadata !786), !dbg !973
  %6 = bitcast %struct.Py_complex* %r to i8*, !dbg !974
  call void @llvm.lifetime.start(i64 16, i8* %6) #2, !dbg !974
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %r, metadata !436, metadata !786), !dbg !975
  %7 = bitcast double* %vabs to i8*, !dbg !976
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !976
  call void @llvm.dbg.declare(metadata double* %vabs, metadata !437, metadata !786), !dbg !977
  %8 = bitcast double* %len to i8*, !dbg !976
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !976
  call void @llvm.dbg.declare(metadata double* %len, metadata !438, metadata !786), !dbg !978
  %9 = bitcast double* %at to i8*, !dbg !976
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !976
  call void @llvm.dbg.declare(metadata double* %at, metadata !439, metadata !786), !dbg !979
  %10 = bitcast double* %phase to i8*, !dbg !976
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !976
  call void @llvm.dbg.declare(metadata double* %phase, metadata !440, metadata !786), !dbg !980
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !981
  %11 = load double, double* %real, align 8, !dbg !981, !tbaa !792
  %cmp = fcmp oeq double %11, 0.000000e+00, !dbg !983
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !984

land.lhs.true:                                    ; preds = %entry
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !985
  %12 = load double, double* %imag, align 8, !dbg !985, !tbaa !802
  %cmp1 = fcmp oeq double %12, 0.000000e+00, !dbg !987
  br i1 %cmp1, label %if.then, label %if.else, !dbg !988

if.then:                                          ; preds = %land.lhs.true
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !989
  store double 1.000000e+00, double* %real2, align 8, !dbg !991, !tbaa !792
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !992
  store double 0.000000e+00, double* %imag3, align 8, !dbg !993, !tbaa !802
  br label %if.end.44, !dbg !994

if.else:                                          ; preds = %land.lhs.true, %entry
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !995
  %13 = load double, double* %real4, align 8, !dbg !995, !tbaa !792
  %cmp5 = fcmp oeq double %13, 0.000000e+00, !dbg !997
  br i1 %cmp5, label %land.lhs.true.6, label %if.else.17, !dbg !998

land.lhs.true.6:                                  ; preds = %if.else
  %imag7 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !999
  %14 = load double, double* %imag7, align 8, !dbg !999, !tbaa !802
  %cmp8 = fcmp oeq double %14, 0.000000e+00, !dbg !1001
  br i1 %cmp8, label %if.then.9, label %if.else.17, !dbg !1002

if.then.9:                                        ; preds = %land.lhs.true.6
  %imag10 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !1003
  %15 = load double, double* %imag10, align 8, !dbg !1003, !tbaa !802
  %cmp11 = fcmp une double %15, 0.000000e+00, !dbg !1006
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false, !dbg !1007

lor.lhs.false:                                    ; preds = %if.then.9
  %real12 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !1008
  %16 = load double, double* %real12, align 8, !dbg !1008, !tbaa !792
  %cmp13 = fcmp olt double %16, 0.000000e+00, !dbg !1010
  br i1 %cmp13, label %if.then.14, label %if.end, !dbg !1011

if.then.14:                                       ; preds = %lor.lhs.false, %if.then.9
  %call = call i32* @__errno_location() #1, !dbg !1012
  store i32 33, i32* %call, align 4, !dbg !1013, !tbaa !900
  br label %if.end, !dbg !1014

if.end:                                           ; preds = %if.then.14, %lor.lhs.false
  %real15 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !1015
  store double 0.000000e+00, double* %real15, align 8, !dbg !1016, !tbaa !792
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !1017
  store double 0.000000e+00, double* %imag16, align 8, !dbg !1018, !tbaa !802
  br label %if.end.43, !dbg !1019

if.else.17:                                       ; preds = %land.lhs.true.6, %if.else
  %real18 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !1020
  %17 = load double, double* %real18, align 8, !dbg !1020, !tbaa !792
  %imag19 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !1022
  %18 = load double, double* %imag19, align 8, !dbg !1022, !tbaa !802
  %call20 = call double @hypot(double %17, double %18) #2, !dbg !1023
  store double %call20, double* %vabs, align 8, !dbg !1024, !tbaa !809
  %19 = load double, double* %vabs, align 8, !dbg !1025, !tbaa !809
  %real21 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !1026
  %20 = load double, double* %real21, align 8, !dbg !1026, !tbaa !792
  %call22 = call double @pow(double %19, double %20) #2, !dbg !1027
  store double %call22, double* %len, align 8, !dbg !1028, !tbaa !809
  %imag23 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 1, !dbg !1029
  %21 = load double, double* %imag23, align 8, !dbg !1029, !tbaa !802
  %real24 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %a, i32 0, i32 0, !dbg !1030
  %22 = load double, double* %real24, align 8, !dbg !1030, !tbaa !792
  %call25 = call double @atan2(double %21, double %22) #2, !dbg !1031
  store double %call25, double* %at, align 8, !dbg !1032, !tbaa !809
  %23 = load double, double* %at, align 8, !dbg !1033, !tbaa !809
  %real26 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 0, !dbg !1034
  %24 = load double, double* %real26, align 8, !dbg !1034, !tbaa !792
  %mul = fmul double %23, %24, !dbg !1035
  store double %mul, double* %phase, align 8, !dbg !1036, !tbaa !809
  %imag27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !1037
  %25 = load double, double* %imag27, align 8, !dbg !1037, !tbaa !802
  %cmp28 = fcmp une double %25, 0.000000e+00, !dbg !1039
  br i1 %cmp28, label %if.then.29, label %if.end.36, !dbg !1040

if.then.29:                                       ; preds = %if.else.17
  %26 = load double, double* %at, align 8, !dbg !1041, !tbaa !809
  %imag30 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !1043
  %27 = load double, double* %imag30, align 8, !dbg !1043, !tbaa !802
  %mul31 = fmul double %26, %27, !dbg !1044
  %call32 = call double @exp(double %mul31) #2, !dbg !1045
  %28 = load double, double* %len, align 8, !dbg !1046, !tbaa !809
  %div = fdiv double %28, %call32, !dbg !1046
  store double %div, double* %len, align 8, !dbg !1046, !tbaa !809
  %imag33 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %b, i32 0, i32 1, !dbg !1047
  %29 = load double, double* %imag33, align 8, !dbg !1047, !tbaa !802
  %30 = load double, double* %vabs, align 8, !dbg !1048, !tbaa !809
  %call34 = call double @log(double %30) #2, !dbg !1049
  %mul35 = fmul double %29, %call34, !dbg !1050
  %31 = load double, double* %phase, align 8, !dbg !1051, !tbaa !809
  %add = fadd double %31, %mul35, !dbg !1051
  store double %add, double* %phase, align 8, !dbg !1051, !tbaa !809
  br label %if.end.36, !dbg !1052

if.end.36:                                        ; preds = %if.then.29, %if.else.17
  %32 = load double, double* %len, align 8, !dbg !1053, !tbaa !809
  %33 = load double, double* %phase, align 8, !dbg !1054, !tbaa !809
  %call37 = call double @cos(double %33) #2, !dbg !1055
  %mul38 = fmul double %32, %call37, !dbg !1056
  %real39 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0, !dbg !1057
  store double %mul38, double* %real39, align 8, !dbg !1058, !tbaa !792
  %34 = load double, double* %len, align 8, !dbg !1059, !tbaa !809
  %35 = load double, double* %phase, align 8, !dbg !1060, !tbaa !809
  %call40 = call double @sin(double %35) #2, !dbg !1061
  %mul41 = fmul double %34, %call40, !dbg !1062
  %imag42 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1, !dbg !1063
  store double %mul41, double* %imag42, align 8, !dbg !1064, !tbaa !802
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.36, %if.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then
  %36 = bitcast %struct.Py_complex* %retval to i8*, !dbg !1065
  %37 = bitcast %struct.Py_complex* %r to i8*, !dbg !1065
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !dbg !1065, !tbaa.struct !808
  %38 = bitcast double* %phase to i8*, !dbg !1066
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !1066
  %39 = bitcast double* %at to i8*, !dbg !1066
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !1066
  %40 = bitcast double* %len to i8*, !dbg !1066
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !1066
  %41 = bitcast double* %vabs to i8*, !dbg !1066
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !1066
  %42 = bitcast %struct.Py_complex* %r to i8*, !dbg !1066
  call void @llvm.lifetime.end(i64 16, i8* %42) #2, !dbg !1066
  %43 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !1066
  %44 = load { double, double }, { double, double }* %43, align 8, !dbg !1066
  ret { double, double } %44, !dbg !1066
}

; Function Attrs: nounwind
declare double @hypot(double, double) #4

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare double @atan2(double, double) #4

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define double @_Py_c_abs(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca double, align 8
  %z = alloca %struct.Py_complex, align 8
  %result = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.Py_complex* %z to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %z.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %z.coerce1, double* %2
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %z, metadata !445, metadata !786), !dbg !1067
  %3 = bitcast double* %result to i8*, !dbg !1068
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1068
  call void @llvm.dbg.declare(metadata double* %result, metadata !446, metadata !786), !dbg !1069
  br i1 false, label %cond.true, label %cond.false, !dbg !1070

cond.true:                                        ; preds = %entry
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0, !dbg !1072
  %4 = load double, double* %real, align 8, !dbg !1072, !tbaa !792
  %conv = fptrunc double %4 to float, !dbg !1074
  %call = call i32 @__finitef(float %conv) #1, !dbg !1075
  %tobool = icmp ne i32 %call, 0, !dbg !1075
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1076

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.5, !dbg !1077

cond.true.1:                                      ; preds = %cond.false
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0, !dbg !1079
  %5 = load double, double* %real2, align 8, !dbg !1079, !tbaa !792
  %call3 = call i32 @__finite(double %5) #1, !dbg !1081
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1081
  br i1 %tobool4, label %lor.lhs.false, label %if.then, !dbg !1082

cond.false.5:                                     ; preds = %cond.false
  %real6 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0, !dbg !1083
  %6 = load double, double* %real6, align 8, !dbg !1083, !tbaa !792
  %conv7 = fpext double %6 to x86_fp80, !dbg !1085
  %call8 = call i32 @__finitel(x86_fp80 %conv7) #1, !dbg !1086
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1086
  br i1 %tobool9, label %lor.lhs.false, label %if.then, !dbg !1070

lor.lhs.false:                                    ; preds = %cond.false.5, %cond.true.1, %cond.true
  br i1 false, label %cond.true.10, label %cond.false.14, !dbg !1087

cond.true.10:                                     ; preds = %lor.lhs.false
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1, !dbg !1091
  %7 = load double, double* %imag, align 8, !dbg !1091, !tbaa !802
  %conv11 = fptrunc double %7 to float, !dbg !1093
  %call12 = call i32 @__finitef(float %conv11) #1, !dbg !1094
  %tobool13 = icmp ne i32 %call12, 0, !dbg !1094
  br i1 %tobool13, label %if.end.63, label %if.then, !dbg !1095

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19, !dbg !1096

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1, !dbg !1098
  %8 = load double, double* %imag16, align 8, !dbg !1098, !tbaa !802
  %call17 = call i32 @__finite(double %8) #1, !dbg !1100
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1100
  br i1 %tobool18, label %if.end.63, label %if.then, !dbg !1101

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1, !dbg !1102
  %9 = load double, double* %imag20, align 8, !dbg !1102, !tbaa !802
  %conv21 = fpext double %9 to x86_fp80, !dbg !1104
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #1, !dbg !1105
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1105
  br i1 %tobool23, label %if.end.63, label %if.then, !dbg !1106

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  br i1 false, label %cond.true.24, label %cond.false.29, !dbg !1107

cond.true.24:                                     ; preds = %if.then
  %real25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0, !dbg !1109
  %10 = load double, double* %real25, align 8, !dbg !1109, !tbaa !792
  %conv26 = fptrunc double %10 to float, !dbg !1112
  %call27 = call i32 @__isinff(float %conv26) #1, !dbg !1113
  %tobool28 = icmp ne i32 %call27, 0, !dbg !1113
  br i1 %tobool28, label %if.then.39, label %if.end, !dbg !1114

cond.false.29:                                    ; preds = %if.then
  br i1 true, label %cond.true.30, label %cond.false.34, !dbg !1115

cond.true.30:                                     ; preds = %cond.false.29
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0, !dbg !1117
  %11 = load double, double* %real31, align 8, !dbg !1117, !tbaa !792
  %call32 = call i32 @__isinf(double %11) #1, !dbg !1119
  %tobool33 = icmp ne i32 %call32, 0, !dbg !1119
  br i1 %tobool33, label %if.then.39, label %if.end, !dbg !1120

cond.false.34:                                    ; preds = %cond.false.29
  %real35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0, !dbg !1121
  %12 = load double, double* %real35, align 8, !dbg !1121, !tbaa !792
  %conv36 = fpext double %12 to x86_fp80, !dbg !1123
  %call37 = call i32 @__isinfl(x86_fp80 %conv36) #1, !dbg !1124
  %tobool38 = icmp ne i32 %call37, 0, !dbg !1124
  br i1 %tobool38, label %if.then.39, label %if.end, !dbg !1107

if.then.39:                                       ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  %real40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0, !dbg !1125
  %13 = load double, double* %real40, align 8, !dbg !1125, !tbaa !792
  %call41 = call double @fabs(double %13) #1, !dbg !1127
  store double %call41, double* %result, align 8, !dbg !1128, !tbaa !809
  %call42 = call i32* @__errno_location() #1, !dbg !1129
  store i32 0, i32* %call42, align 4, !dbg !1130, !tbaa !900
  %14 = load double, double* %result, align 8, !dbg !1131, !tbaa !809
  store double %14, double* %retval, !dbg !1132
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1132

if.end:                                           ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  br i1 false, label %cond.true.43, label %cond.false.48, !dbg !1133

cond.true.43:                                     ; preds = %if.end
  %imag44 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1, !dbg !1134
  %15 = load double, double* %imag44, align 8, !dbg !1134, !tbaa !802
  %conv45 = fptrunc double %15 to float, !dbg !1137
  %call46 = call i32 @__isinff(float %conv45) #1, !dbg !1138
  %tobool47 = icmp ne i32 %call46, 0, !dbg !1138
  br i1 %tobool47, label %if.then.58, label %if.end.62, !dbg !1139

cond.false.48:                                    ; preds = %if.end
  br i1 true, label %cond.true.49, label %cond.false.53, !dbg !1140

cond.true.49:                                     ; preds = %cond.false.48
  %imag50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1, !dbg !1141
  %16 = load double, double* %imag50, align 8, !dbg !1141, !tbaa !802
  %call51 = call i32 @__isinf(double %16) #1, !dbg !1143
  %tobool52 = icmp ne i32 %call51, 0, !dbg !1143
  br i1 %tobool52, label %if.then.58, label %if.end.62, !dbg !1144

cond.false.53:                                    ; preds = %cond.false.48
  %imag54 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1, !dbg !1145
  %17 = load double, double* %imag54, align 8, !dbg !1145, !tbaa !802
  %conv55 = fpext double %17 to x86_fp80, !dbg !1147
  %call56 = call i32 @__isinfl(x86_fp80 %conv55) #1, !dbg !1148
  %tobool57 = icmp ne i32 %call56, 0, !dbg !1148
  br i1 %tobool57, label %if.then.58, label %if.end.62, !dbg !1133

if.then.58:                                       ; preds = %cond.false.53, %cond.true.49, %cond.true.43
  %imag59 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1, !dbg !1149
  %18 = load double, double* %imag59, align 8, !dbg !1149, !tbaa !802
  %call60 = call double @fabs(double %18) #1, !dbg !1151
  store double %call60, double* %result, align 8, !dbg !1152, !tbaa !809
  %call61 = call i32* @__errno_location() #1, !dbg !1153
  store i32 0, i32* %call61, align 4, !dbg !1154, !tbaa !900
  %19 = load double, double* %result, align 8, !dbg !1155, !tbaa !809
  store double %19, double* %retval, !dbg !1156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1156

if.end.62:                                        ; preds = %cond.false.53, %cond.true.49, %cond.true.43
  store double 0x7FF8000000000000, double* %retval, !dbg !1157
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1157

if.end.63:                                        ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real64 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0, !dbg !1158
  %20 = load double, double* %real64, align 8, !dbg !1158, !tbaa !792
  %imag65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1, !dbg !1159
  %21 = load double, double* %imag65, align 8, !dbg !1159, !tbaa !802
  %call66 = call double @hypot(double %20, double %21) #2, !dbg !1160
  store double %call66, double* %result, align 8, !dbg !1161, !tbaa !809
  br i1 false, label %cond.true.67, label %cond.false.71, !dbg !1162

cond.true.67:                                     ; preds = %if.end.63
  %22 = load double, double* %result, align 8, !dbg !1163, !tbaa !809
  %conv68 = fptrunc double %22 to float, !dbg !1163
  %call69 = call i32 @__finitef(float %conv68) #1, !dbg !1166
  %tobool70 = icmp ne i32 %call69, 0, !dbg !1166
  br i1 %tobool70, label %if.else, label %if.then.79, !dbg !1167

cond.false.71:                                    ; preds = %if.end.63
  br i1 true, label %cond.true.72, label %cond.false.75, !dbg !1168

cond.true.72:                                     ; preds = %cond.false.71
  %23 = load double, double* %result, align 8, !dbg !1170, !tbaa !809
  %call73 = call i32 @__finite(double %23) #1, !dbg !1172
  %tobool74 = icmp ne i32 %call73, 0, !dbg !1172
  br i1 %tobool74, label %if.else, label %if.then.79, !dbg !1173

cond.false.75:                                    ; preds = %cond.false.71
  %24 = load double, double* %result, align 8, !dbg !1174, !tbaa !809
  %conv76 = fpext double %24 to x86_fp80, !dbg !1174
  %call77 = call i32 @__finitel(x86_fp80 %conv76) #1, !dbg !1176
  %tobool78 = icmp ne i32 %call77, 0, !dbg !1176
  br i1 %tobool78, label %if.else, label %if.then.79, !dbg !1162

if.then.79:                                       ; preds = %cond.false.75, %cond.true.72, %cond.true.67
  %call80 = call i32* @__errno_location() #1, !dbg !1177
  store i32 34, i32* %call80, align 4, !dbg !1178, !tbaa !900
  br label %if.end.82, !dbg !1179

if.else:                                          ; preds = %cond.false.75, %cond.true.72, %cond.true.67
  %call81 = call i32* @__errno_location() #1, !dbg !1180
  store i32 0, i32* %call81, align 4, !dbg !1181, !tbaa !900
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.79
  %25 = load double, double* %result, align 8, !dbg !1182, !tbaa !809
  store double %25, double* %retval, !dbg !1183
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1183

cleanup:                                          ; preds = %if.end.82, %if.end.62, %if.then.58, %if.then.39
  %26 = bitcast double* %result to i8*, !dbg !1184
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !1184
  %27 = load double, double* %retval, !dbg !1184
  ret double %27, !dbg !1184
}

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #3

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #3

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #3

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #3

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #3

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyComplex_FromCComplex(double %cval.coerce0, double %cval.coerce1) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cval = alloca %struct.Py_complex, align 8
  %op = alloca %struct.PyComplexObject*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.Py_complex* %cval to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %cval.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %cval.coerce1, double* %2
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %cval, metadata !451, metadata !786), !dbg !1185
  %3 = bitcast %struct.PyComplexObject** %op to i8*, !dbg !1186
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1186
  call void @llvm.dbg.declare(metadata %struct.PyComplexObject** %op, metadata !452, metadata !786), !dbg !1187
  %call = call i8* @PyObject_Malloc(i64 32), !dbg !1188
  %4 = bitcast i8* %call to %struct.PyComplexObject*, !dbg !1189
  store %struct.PyComplexObject* %4, %struct.PyComplexObject** %op, align 8, !dbg !1190, !tbaa !1191
  %5 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8, !dbg !1193, !tbaa !1191
  %cmp = icmp eq %struct.PyComplexObject* %5, null, !dbg !1195
  br i1 %cmp, label %if.then, label %if.end, !dbg !1196

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory(), !dbg !1197
  store %struct._object* %call1, %struct._object** %retval, !dbg !1198
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1198

if.end:                                           ; preds = %entry
  %6 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8, !dbg !1199, !tbaa !1191
  %7 = bitcast %struct.PyComplexObject* %6 to %struct._object*, !dbg !1200
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1201
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %ob_type, align 8, !dbg !1202, !tbaa !1203
  %8 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8, !dbg !1206, !tbaa !1191
  %9 = bitcast %struct.PyComplexObject* %8 to %struct._object*, !dbg !1207
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1208
  store i64 1, i64* %ob_refcnt, align 8, !dbg !1209, !tbaa !1210
  %10 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8, !dbg !1211, !tbaa !1191
  %11 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8, !dbg !1212, !tbaa !1191
  %cval2 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %11, i32 0, i32 1, !dbg !1213
  %12 = bitcast %struct.Py_complex* %cval2 to i8*, !dbg !1214
  %13 = bitcast %struct.Py_complex* %cval to i8*, !dbg !1214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !dbg !1214, !tbaa.struct !808
  %14 = load %struct.PyComplexObject*, %struct.PyComplexObject** %op, align 8, !dbg !1215, !tbaa !1191
  %15 = bitcast %struct.PyComplexObject* %14 to %struct._object*, !dbg !1216
  store %struct._object* %15, %struct._object** %retval, !dbg !1217
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1217

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.PyComplexObject** %op to i8*, !dbg !1218
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1218
  %17 = load %struct._object*, %struct._object** %retval, !dbg !1218
  ret %struct._object* %17, !dbg !1218
}

declare i8* @PyObject_Malloc(i64) #5

declare %struct._object* @PyErr_NoMemory() #5

; Function Attrs: nounwind uwtable
define %struct._object* @PyComplex_FromDoubles(double %real, double %imag) #0 {
entry:
  %real.addr = alloca double, align 8
  %imag.addr = alloca double, align 8
  %c = alloca %struct.Py_complex, align 8
  store double %real, double* %real.addr, align 8, !tbaa !809
  call void @llvm.dbg.declare(metadata double* %real.addr, metadata !457, metadata !786), !dbg !1219
  store double %imag, double* %imag.addr, align 8, !tbaa !809
  call void @llvm.dbg.declare(metadata double* %imag.addr, metadata !458, metadata !786), !dbg !1220
  %0 = bitcast %struct.Py_complex* %c to i8*, !dbg !1221
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !1221
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %c, metadata !459, metadata !786), !dbg !1222
  %1 = load double, double* %real.addr, align 8, !dbg !1223, !tbaa !809
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 0, !dbg !1224
  store double %1, double* %real1, align 8, !dbg !1225, !tbaa !792
  %2 = load double, double* %imag.addr, align 8, !dbg !1226, !tbaa !809
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1, !dbg !1227
  store double %2, double* %imag2, align 8, !dbg !1228, !tbaa !802
  %3 = bitcast %struct.Py_complex* %c to { double, double }*, !dbg !1229
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0, !dbg !1229
  %5 = load double, double* %4, align 1, !dbg !1229
  %6 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1, !dbg !1229
  %7 = load double, double* %6, align 1, !dbg !1229
  %call = call %struct._object* @PyComplex_FromCComplex(double %5, double %7), !dbg !1229
  %8 = bitcast %struct.Py_complex* %c to i8*, !dbg !1230
  call void @llvm.lifetime.end(i64 16, i8* %8) #2, !dbg !1230
  ret %struct._object* %call, !dbg !1231
}

; Function Attrs: nounwind uwtable
define double @PyComplex_RealAsDouble(%struct._object* %op) #0 {
entry:
  %retval = alloca double, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !464, metadata !786), !dbg !1232
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1233, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1235
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1235, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type, !dbg !1236
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1237

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1238, !tbaa !1191
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1240
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1240, !tbaa !1203
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type), !dbg !1241
  %tobool = icmp ne i32 %call, 0, !dbg !1241
  br i1 %tobool, label %if.then, label %if.else, !dbg !1242

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1243, !tbaa !1191
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*, !dbg !1245
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1, !dbg !1246
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0, !dbg !1247
  %6 = load double, double* %real, align 8, !dbg !1247, !tbaa !1248
  store double %6, double* %retval, !dbg !1250
  br label %return, !dbg !1250

if.else:                                          ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1251, !tbaa !1191
  %call2 = call double @PyFloat_AsDouble(%struct._object* %7), !dbg !1253
  store double %call2, double* %retval, !dbg !1254
  br label %return, !dbg !1254

return:                                           ; preds = %if.else, %if.then
  %8 = load double, double* %retval, !dbg !1255
  ret double %8, !dbg !1255
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #5

declare double @PyFloat_AsDouble(%struct._object*) #5

; Function Attrs: nounwind uwtable
define double @PyComplex_ImagAsDouble(%struct._object* %op) #0 {
entry:
  %retval = alloca double, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !467, metadata !786), !dbg !1256
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1257, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1259
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1259, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %1, @PyComplex_Type, !dbg !1260
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1261

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1262, !tbaa !1191
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1264
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1264, !tbaa !1203
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyComplex_Type), !dbg !1265
  %tobool = icmp ne i32 %call, 0, !dbg !1265
  br i1 %tobool, label %if.then, label %if.else, !dbg !1266

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1267, !tbaa !1191
  %5 = bitcast %struct._object* %4 to %struct.PyComplexObject*, !dbg !1269
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %5, i32 0, i32 1, !dbg !1270
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 1, !dbg !1271
  %6 = load double, double* %imag, align 8, !dbg !1271, !tbaa !1272
  store double %6, double* %retval, !dbg !1273
  br label %return, !dbg !1273

if.else:                                          ; preds = %lor.lhs.false
  store double 0.000000e+00, double* %retval, !dbg !1274
  br label %return, !dbg !1274

return:                                           ; preds = %if.else, %if.then
  %7 = load double, double* %retval, !dbg !1276
  ret double %7, !dbg !1276
}

; Function Attrs: nounwind uwtable
define { double, double } @PyComplex_AsCComplex(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %op.addr = alloca %struct._object*, align 8
  %cv = alloca %struct.Py_complex, align 8
  %newop = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !472, metadata !786), !dbg !1277
  %0 = bitcast %struct.Py_complex* %cv to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !1278
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %cv, metadata !473, metadata !786), !dbg !1279
  %1 = bitcast %struct._object** %newop to i8*, !dbg !1280
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1280
  call void @llvm.dbg.declare(metadata %struct._object** %newop, metadata !474, metadata !786), !dbg !1281
  store %struct._object* null, %struct._object** %newop, align 8, !dbg !1281, !tbaa !1191
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1282, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1284
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1284, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %3, @PyComplex_Type, !dbg !1285
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1286

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1287, !tbaa !1191
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1289
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1289, !tbaa !1203
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PyComplex_Type), !dbg !1290
  %tobool = icmp ne i32 %call, 0, !dbg !1290
  br i1 %tobool, label %if.then, label %if.end, !dbg !1291

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1292, !tbaa !1191
  %7 = bitcast %struct._object* %6 to %struct.PyComplexObject*, !dbg !1294
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %7, i32 0, i32 1, !dbg !1295
  %8 = bitcast %struct.Py_complex* %retval to i8*, !dbg !1295
  %9 = bitcast %struct.Py_complex* %cval to i8*, !dbg !1295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false), !dbg !1295, !tbaa.struct !808
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1296

if.end:                                           ; preds = %lor.lhs.false
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cv, i32 0, i32 0, !dbg !1297
  store double -1.000000e+00, double* %real, align 8, !dbg !1298, !tbaa !792
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cv, i32 0, i32 1, !dbg !1299
  store double 0.000000e+00, double* %imag, align 8, !dbg !1300, !tbaa !802
  %10 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1301, !tbaa !1191
  %call2 = call %struct._object* @try_complex_special_method(%struct._object* %10), !dbg !1302
  store %struct._object* %call2, %struct._object** %newop, align 8, !dbg !1303, !tbaa !1191
  %11 = load %struct._object*, %struct._object** %newop, align 8, !dbg !1304, !tbaa !1191
  %tobool3 = icmp ne %struct._object* %11, null, !dbg !1304
  br i1 %tobool3, label %if.then.4, label %if.else.10, !dbg !1305

if.then.4:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %newop, align 8, !dbg !1306, !tbaa !1191
  %13 = bitcast %struct._object* %12 to %struct.PyComplexObject*, !dbg !1307
  %cval5 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %13, i32 0, i32 1, !dbg !1308
  %14 = bitcast %struct.Py_complex* %cv to i8*, !dbg !1308
  %15 = bitcast %struct.Py_complex* %cval5 to i8*, !dbg !1308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !dbg !1308, !tbaa.struct !808
  br label %do.body, !dbg !1309

do.body:                                          ; preds = %if.then.4
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1310
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !1310
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !475, metadata !786), !dbg !1312
  %17 = load %struct._object*, %struct._object** %newop, align 8, !dbg !1313, !tbaa !1191
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !1312, !tbaa !1191
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1314, !tbaa !1191
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1316
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !1317, !tbaa !1210
  %dec = add i64 %19, -1, !dbg !1317
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1317, !tbaa !1210
  %cmp6 = icmp ne i64 %dec, 0, !dbg !1318
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1319

if.then.7:                                        ; preds = %do.body
  br label %if.end.9, !dbg !1320

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1322, !tbaa !1191
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !1324
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1324, !tbaa !1203
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !1325
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1325, !tbaa !1326
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1329, !tbaa !1191
  call void %22(%struct._object* %23), !dbg !1330
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1331
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !1331
  br label %do.cond, !dbg !1333

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1334

do.end:                                           ; preds = %do.cond
  %25 = bitcast %struct.Py_complex* %retval to i8*, !dbg !1336
  %26 = bitcast %struct.Py_complex* %cv to i8*, !dbg !1336
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !dbg !1336, !tbaa.struct !808
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1337

if.else.10:                                       ; preds = %if.end
  %call11 = call %struct._object* @PyErr_Occurred(), !dbg !1338
  %tobool12 = icmp ne %struct._object* %call11, null, !dbg !1338
  br i1 %tobool12, label %if.then.13, label %if.else.14, !dbg !1340

if.then.13:                                       ; preds = %if.else.10
  %27 = bitcast %struct.Py_complex* %retval to i8*, !dbg !1341
  %28 = bitcast %struct.Py_complex* %cv to i8*, !dbg !1341
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !dbg !1341, !tbaa.struct !808
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1343

if.else.14:                                       ; preds = %if.else.10
  %29 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1344, !tbaa !1191
  %call15 = call double @PyFloat_AsDouble(%struct._object* %29), !dbg !1346
  %real16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cv, i32 0, i32 0, !dbg !1347
  store double %call15, double* %real16, align 8, !dbg !1348, !tbaa !792
  %30 = bitcast %struct.Py_complex* %retval to i8*, !dbg !1349
  %31 = bitcast %struct.Py_complex* %cv to i8*, !dbg !1349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !dbg !1349, !tbaa.struct !808
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1350

cleanup:                                          ; preds = %if.else.14, %if.then.13, %do.end, %if.then
  %32 = bitcast %struct._object** %newop to i8*, !dbg !1351
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !1351
  %33 = bitcast %struct.Py_complex* %cv to i8*, !dbg !1351
  call void @llvm.lifetime.end(i64 16, i8* %33) #2, !dbg !1351
  %34 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !1351
  %35 = load { double, double }, { double, double }* %34, align 8, !dbg !1351
  ret { double, double } %35, !dbg !1351
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !481, metadata !786), !dbg !1352
  %0 = bitcast %struct._object** %f to i8*, !dbg !1353
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1353
  call void @llvm.dbg.declare(metadata %struct._object** %f, metadata !482, metadata !786), !dbg !1354
  %1 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1355, !tbaa !1191
  %call = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %1, %struct._Py_Identifier* @try_complex_special_method.PyId___complex__), !dbg !1356
  store %struct._object* %call, %struct._object** %f, align 8, !dbg !1357, !tbaa !1191
  %2 = load %struct._object*, %struct._object** %f, align 8, !dbg !1358, !tbaa !1191
  %tobool = icmp ne %struct._object* %2, null, !dbg !1358
  br i1 %tobool, label %if.then, label %if.end.23, !dbg !1359

if.then:                                          ; preds = %entry
  %3 = bitcast %struct._object** %res to i8*, !dbg !1360
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1360
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !483, metadata !786), !dbg !1361
  %4 = load %struct._object*, %struct._object** %f, align 8, !dbg !1362, !tbaa !1191
  %call1 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %4, i8* null), !dbg !1363
  store %struct._object* %call1, %struct._object** %res, align 8, !dbg !1361, !tbaa !1191
  br label %do.body, !dbg !1364

do.body:                                          ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1365
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1365
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !486, metadata !786), !dbg !1367
  %6 = load %struct._object*, %struct._object** %f, align 8, !dbg !1368, !tbaa !1191
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1367, !tbaa !1191
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1369, !tbaa !1191
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1371
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1372, !tbaa !1210
  %dec = add i64 %8, -1, !dbg !1372
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1372, !tbaa !1210
  %cmp = icmp ne i64 %dec, 0, !dbg !1373
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !1374

if.then.2:                                        ; preds = %do.body
  br label %if.end, !dbg !1375

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1377, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1379
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1379, !tbaa !1203
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1380
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1380, !tbaa !1326
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1381, !tbaa !1191
  call void %11(%struct._object* %12), !dbg !1382
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1383
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1383
  br label %do.cond, !dbg !1385

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1386

do.end:                                           ; preds = %do.cond
  %14 = load %struct._object*, %struct._object** %res, align 8, !dbg !1388, !tbaa !1191
  %cmp3 = icmp ne %struct._object* %14, null, !dbg !1389
  br i1 %cmp3, label %land.lhs.true, label %if.end.22, !dbg !1390

land.lhs.true:                                    ; preds = %do.end
  %15 = load %struct._object*, %struct._object** %res, align 8, !dbg !1391, !tbaa !1191
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1393
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1393, !tbaa !1203
  %cmp5 = icmp eq %struct._typeobject* %16, @PyComplex_Type, !dbg !1394
  br i1 %cmp5, label %if.end.22, label %lor.lhs.false, !dbg !1395

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load %struct._object*, %struct._object** %res, align 8, !dbg !1396, !tbaa !1191
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1398
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1398, !tbaa !1203
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %18, %struct._typeobject* @PyComplex_Type), !dbg !1399
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1399
  br i1 %tobool8, label %if.end.22, label %if.then.9, !dbg !1400

if.then.9:                                        ; preds = %lor.lhs.false
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1401, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0)), !dbg !1402
  br label %do.body.10, !dbg !1403

do.body.10:                                       ; preds = %if.then.9
  %20 = bitcast %struct._object** %_py_decref_tmp11 to i8*, !dbg !1404
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1404
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp11, metadata !488, metadata !786), !dbg !1406
  %21 = load %struct._object*, %struct._object** %res, align 8, !dbg !1407, !tbaa !1191
  store %struct._object* %21, %struct._object** %_py_decref_tmp11, align 8, !dbg !1406, !tbaa !1191
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8, !dbg !1408, !tbaa !1191
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1410
  %23 = load i64, i64* %ob_refcnt12, align 8, !dbg !1411, !tbaa !1210
  %dec13 = add i64 %23, -1, !dbg !1411
  store i64 %dec13, i64* %ob_refcnt12, align 8, !dbg !1411, !tbaa !1210
  %cmp14 = icmp ne i64 %dec13, 0, !dbg !1412
  br i1 %cmp14, label %if.then.15, label %if.else.16, !dbg !1413

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19, !dbg !1414

if.else.16:                                       ; preds = %do.body.10
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8, !dbg !1416, !tbaa !1191
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1418
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1418, !tbaa !1203
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1419
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8, !dbg !1419, !tbaa !1326
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8, !dbg !1420, !tbaa !1191
  call void %26(%struct._object* %27), !dbg !1421
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  %28 = bitcast %struct._object** %_py_decref_tmp11 to i8*, !dbg !1422
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1422
  br label %do.cond.20, !dbg !1424

do.cond.20:                                       ; preds = %if.end.19
  br label %do.end.21, !dbg !1425

do.end.21:                                        ; preds = %do.cond.20
  store %struct._object* null, %struct._object** %retval, !dbg !1427
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1427

if.end.22:                                        ; preds = %lor.lhs.false, %land.lhs.true, %do.end
  %29 = load %struct._object*, %struct._object** %res, align 8, !dbg !1428, !tbaa !1191
  store %struct._object* %29, %struct._object** %retval, !dbg !1429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1429

cleanup:                                          ; preds = %if.end.22, %do.end.21
  %30 = bitcast %struct._object** %res to i8*, !dbg !1430
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1430
  br label %cleanup.24

if.end.23:                                        ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1431
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24, !dbg !1431

cleanup.24:                                       ; preds = %if.end.23, %cleanup
  %31 = bitcast %struct._object** %f to i8*, !dbg !1432
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1432
  %32 = load %struct._object*, %struct._object** %retval, !dbg !1432
  ret %struct._object* %32, !dbg !1432
}

declare %struct._object* @PyErr_Occurred() #5

; Function Attrs: nounwind uwtable
define internal void @complex_dealloc(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !494, metadata !786), !dbg !1433
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1434, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1435
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1435, !tbaa !1203
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 38, !dbg !1436
  %2 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1436, !tbaa !1437
  %3 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1438, !tbaa !1191
  %4 = bitcast %struct._object* %3 to i8*, !dbg !1438
  call void %2(i8* %4), !dbg !1434
  ret void, !dbg !1439
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
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct.PyComplexObject** %v.addr, metadata !499, metadata !786), !dbg !1440
  %0 = bitcast i32* %precision to i8*, !dbg !1441
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1441
  call void @llvm.dbg.declare(metadata i32* %precision, metadata !500, metadata !786), !dbg !1442
  store i32 0, i32* %precision, align 4, !dbg !1442, !tbaa !900
  call void @llvm.lifetime.start(i64 1, i8* %format_code) #2, !dbg !1443
  call void @llvm.dbg.declare(metadata i8* %format_code, metadata !501, metadata !786), !dbg !1444
  store i8 114, i8* %format_code, align 1, !dbg !1444, !tbaa !1445
  %1 = bitcast %struct._object** %result to i8*, !dbg !1446
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1446
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !502, metadata !786), !dbg !1447
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1447, !tbaa !1191
  %2 = bitcast i8** %pre to i8*, !dbg !1448
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1448
  call void @llvm.dbg.declare(metadata i8** %pre, metadata !503, metadata !786), !dbg !1449
  store i8* null, i8** %pre, align 8, !dbg !1449, !tbaa !1191
  %3 = bitcast i8** %im to i8*, !dbg !1450
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1450
  call void @llvm.dbg.declare(metadata i8** %im, metadata !504, metadata !786), !dbg !1451
  store i8* null, i8** %im, align 8, !dbg !1451, !tbaa !1191
  %4 = bitcast i8** %re to i8*, !dbg !1452
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1452
  call void @llvm.dbg.declare(metadata i8** %re, metadata !505, metadata !786), !dbg !1453
  store i8* null, i8** %re, align 8, !dbg !1453, !tbaa !1191
  %5 = bitcast i8** %lead to i8*, !dbg !1454
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1454
  call void @llvm.dbg.declare(metadata i8** %lead, metadata !506, metadata !786), !dbg !1455
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %lead, align 8, !dbg !1455, !tbaa !1191
  %6 = bitcast i8** %tail to i8*, !dbg !1456
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1456
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !507, metadata !786), !dbg !1457
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %tail, align 8, !dbg !1457, !tbaa !1191
  %7 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !1458, !tbaa !1191
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %7, i32 0, i32 1, !dbg !1460
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0, !dbg !1461
  %8 = load double, double* %real, align 8, !dbg !1461, !tbaa !1248
  %cmp = fcmp oeq double %8, 0.000000e+00, !dbg !1462
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1463

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !1464, !tbaa !1191
  %cval1 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %9, i32 0, i32 1, !dbg !1466
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval1, i32 0, i32 0, !dbg !1467
  %10 = load double, double* %real2, align 8, !dbg !1467, !tbaa !1248
  %call = call double @copysign(double 1.000000e+00, double %10) #1, !dbg !1468
  %cmp3 = fcmp oeq double %call, 1.000000e+00, !dbg !1469
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1470

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %re, align 8, !dbg !1471, !tbaa !1191
  %11 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !1473, !tbaa !1191
  %cval4 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %11, i32 0, i32 1, !dbg !1474
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval4, i32 0, i32 1, !dbg !1475
  %12 = load double, double* %imag, align 8, !dbg !1475, !tbaa !1272
  %13 = load i8, i8* %format_code, align 1, !dbg !1476, !tbaa !1445
  %14 = load i32, i32* %precision, align 4, !dbg !1477, !tbaa !900
  %call5 = call i8* @PyOS_double_to_string(double %12, i8 signext %13, i32 %14, i32 0, i32* null), !dbg !1478
  store i8* %call5, i8** %im, align 8, !dbg !1479, !tbaa !1191
  %15 = load i8*, i8** %im, align 8, !dbg !1480, !tbaa !1191
  %tobool = icmp ne i8* %15, null, !dbg !1480
  br i1 %tobool, label %if.end, label %if.then.6, !dbg !1482

if.then.6:                                        ; preds = %if.then
  %call7 = call %struct._object* @PyErr_NoMemory(), !dbg !1483
  br label %done, !dbg !1485

if.end:                                           ; preds = %if.then
  br label %if.end.22, !dbg !1486

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !1487, !tbaa !1191
  %cval8 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %16, i32 0, i32 1, !dbg !1489
  %real9 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval8, i32 0, i32 0, !dbg !1490
  %17 = load double, double* %real9, align 8, !dbg !1490, !tbaa !1248
  %18 = load i8, i8* %format_code, align 1, !dbg !1491, !tbaa !1445
  %19 = load i32, i32* %precision, align 4, !dbg !1492, !tbaa !900
  %call10 = call i8* @PyOS_double_to_string(double %17, i8 signext %18, i32 %19, i32 0, i32* null), !dbg !1493
  store i8* %call10, i8** %pre, align 8, !dbg !1494, !tbaa !1191
  %20 = load i8*, i8** %pre, align 8, !dbg !1495, !tbaa !1191
  %tobool11 = icmp ne i8* %20, null, !dbg !1495
  br i1 %tobool11, label %if.end.14, label %if.then.12, !dbg !1497

if.then.12:                                       ; preds = %if.else
  %call13 = call %struct._object* @PyErr_NoMemory(), !dbg !1498
  br label %done, !dbg !1500

if.end.14:                                        ; preds = %if.else
  %21 = load i8*, i8** %pre, align 8, !dbg !1501, !tbaa !1191
  store i8* %21, i8** %re, align 8, !dbg !1502, !tbaa !1191
  %22 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !1503, !tbaa !1191
  %cval15 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %22, i32 0, i32 1, !dbg !1504
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval15, i32 0, i32 1, !dbg !1505
  %23 = load double, double* %imag16, align 8, !dbg !1505, !tbaa !1272
  %24 = load i8, i8* %format_code, align 1, !dbg !1506, !tbaa !1445
  %25 = load i32, i32* %precision, align 4, !dbg !1507, !tbaa !900
  %call17 = call i8* @PyOS_double_to_string(double %23, i8 signext %24, i32 %25, i32 1, i32* null), !dbg !1508
  store i8* %call17, i8** %im, align 8, !dbg !1509, !tbaa !1191
  %26 = load i8*, i8** %im, align 8, !dbg !1510, !tbaa !1191
  %tobool18 = icmp ne i8* %26, null, !dbg !1510
  br i1 %tobool18, label %if.end.21, label %if.then.19, !dbg !1512

if.then.19:                                       ; preds = %if.end.14
  %call20 = call %struct._object* @PyErr_NoMemory(), !dbg !1513
  br label %done, !dbg !1515

if.end.21:                                        ; preds = %if.end.14
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %lead, align 8, !dbg !1516, !tbaa !1191
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %tail, align 8, !dbg !1517, !tbaa !1191
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %27 = load i8*, i8** %lead, align 8, !dbg !1518, !tbaa !1191
  %28 = load i8*, i8** %re, align 8, !dbg !1519, !tbaa !1191
  %29 = load i8*, i8** %im, align 8, !dbg !1520, !tbaa !1191
  %30 = load i8*, i8** %tail, align 8, !dbg !1521, !tbaa !1191
  %call23 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %27, i8* %28, i8* %29, i8* %30), !dbg !1522
  store %struct._object* %call23, %struct._object** %result, align 8, !dbg !1523, !tbaa !1191
  br label %done, !dbg !1524

done:                                             ; preds = %if.end.22, %if.then.19, %if.then.12, %if.then.6
  %31 = load i8*, i8** %im, align 8, !dbg !1525, !tbaa !1191
  call void @PyMem_Free(i8* %31), !dbg !1526
  %32 = load i8*, i8** %pre, align 8, !dbg !1527, !tbaa !1191
  call void @PyMem_Free(i8* %32), !dbg !1528
  %33 = load %struct._object*, %struct._object** %result, align 8, !dbg !1529, !tbaa !1191
  %34 = bitcast i8** %tail to i8*, !dbg !1530
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1530
  %35 = bitcast i8** %lead to i8*, !dbg !1530
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1530
  %36 = bitcast i8** %re to i8*, !dbg !1530
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !1530
  %37 = bitcast i8** %im to i8*, !dbg !1530
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !1530
  %38 = bitcast i8** %pre to i8*, !dbg !1530
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !1530
  %39 = bitcast %struct._object** %result to i8*, !dbg !1530
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !1530
  call void @llvm.lifetime.end(i64 1, i8* %format_code) #2, !dbg !1530
  %40 = bitcast i32* %precision to i8*, !dbg !1530
  call void @llvm.lifetime.end(i64 4, i8* %40) #2, !dbg !1530
  ret %struct._object* %33, !dbg !1531
}

; Function Attrs: nounwind uwtable
define internal i64 @complex_hash(%struct.PyComplexObject* %v) #0 {
entry:
  %retval = alloca i64, align 8
  %v.addr = alloca %struct.PyComplexObject*, align 8
  %hashreal = alloca i64, align 8
  %hashimag = alloca i64, align 8
  %combined = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct.PyComplexObject** %v.addr, metadata !607, metadata !786), !dbg !1532
  %0 = bitcast i64* %hashreal to i8*, !dbg !1533
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1533
  call void @llvm.dbg.declare(metadata i64* %hashreal, metadata !608, metadata !786), !dbg !1534
  %1 = bitcast i64* %hashimag to i8*, !dbg !1533
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1533
  call void @llvm.dbg.declare(metadata i64* %hashimag, metadata !609, metadata !786), !dbg !1535
  %2 = bitcast i64* %combined to i8*, !dbg !1533
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1533
  call void @llvm.dbg.declare(metadata i64* %combined, metadata !610, metadata !786), !dbg !1536
  %3 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !1537, !tbaa !1191
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %3, i32 0, i32 1, !dbg !1538
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0, !dbg !1539
  %4 = load double, double* %real, align 8, !dbg !1539, !tbaa !1248
  %call = call i64 @_Py_HashDouble(double %4), !dbg !1540
  store i64 %call, i64* %hashreal, align 8, !dbg !1541, !tbaa !1542
  %5 = load i64, i64* %hashreal, align 8, !dbg !1543, !tbaa !1542
  %cmp = icmp eq i64 %5, -1, !dbg !1545
  br i1 %cmp, label %if.then, label %if.end, !dbg !1546

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, !dbg !1547
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1547

if.end:                                           ; preds = %entry
  %6 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !1548, !tbaa !1191
  %cval1 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %6, i32 0, i32 1, !dbg !1549
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval1, i32 0, i32 1, !dbg !1550
  %7 = load double, double* %imag, align 8, !dbg !1550, !tbaa !1272
  %call2 = call i64 @_Py_HashDouble(double %7), !dbg !1551
  store i64 %call2, i64* %hashimag, align 8, !dbg !1552, !tbaa !1542
  %8 = load i64, i64* %hashimag, align 8, !dbg !1553, !tbaa !1542
  %cmp3 = icmp eq i64 %8, -1, !dbg !1555
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1556

if.then.4:                                        ; preds = %if.end
  store i64 -1, i64* %retval, !dbg !1557
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1557

if.end.5:                                         ; preds = %if.end
  %9 = load i64, i64* %hashreal, align 8, !dbg !1558, !tbaa !1542
  %10 = load i64, i64* %hashimag, align 8, !dbg !1559, !tbaa !1542
  %mul = mul i64 1000003, %10, !dbg !1560
  %add = add i64 %9, %mul, !dbg !1561
  store i64 %add, i64* %combined, align 8, !dbg !1562, !tbaa !1542
  %11 = load i64, i64* %combined, align 8, !dbg !1563, !tbaa !1542
  %cmp6 = icmp eq i64 %11, -1, !dbg !1565
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1566

if.then.7:                                        ; preds = %if.end.5
  store i64 -2, i64* %combined, align 8, !dbg !1567, !tbaa !1542
  br label %if.end.8, !dbg !1568

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %12 = load i64, i64* %combined, align 8, !dbg !1569, !tbaa !1542
  store i64 %12, i64* %retval, !dbg !1570
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1570

cleanup:                                          ; preds = %if.end.8, %if.then.4, %if.then
  %13 = bitcast i64* %combined to i8*, !dbg !1571
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1571
  %14 = bitcast i64* %hashimag to i8*, !dbg !1571
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1571
  %15 = bitcast i64* %hashreal to i8*, !dbg !1571
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1571
  %16 = load i64, i64* %retval, !dbg !1571
  ret i64 %16, !dbg !1571
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #5

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
  %cleanup.dest.slot = alloca i32
  %j = alloca %struct._object*, align 8
  %sub_res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %j49 = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !613, metadata !786), !dbg !1572
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !614, metadata !786), !dbg !1573
  store i32 %op, i32* %op.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !615, metadata !786), !dbg !1574
  %0 = bitcast %struct._object** %res to i8*, !dbg !1575
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1575
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !616, metadata !786), !dbg !1576
  %1 = bitcast %struct.Py_complex* %i to i8*, !dbg !1577
  call void @llvm.lifetime.start(i64 16, i8* %1) #2, !dbg !1577
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %i, metadata !617, metadata !786), !dbg !1578
  %2 = bitcast i32* %equal to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1579
  call void @llvm.dbg.declare(metadata i32* %equal, metadata !618, metadata !786), !dbg !1580
  %3 = load i32, i32* %op.addr, align 4, !dbg !1581, !tbaa !900
  %cmp = icmp ne i32 %3, 2, !dbg !1583
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1584

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %op.addr, align 4, !dbg !1585, !tbaa !900
  %cmp1 = icmp ne i32 %4, 3, !dbg !1587
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1588

if.then:                                          ; preds = %land.lhs.true
  br label %Unimplemented, !dbg !1589

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1591, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !1593
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1593, !tbaa !1203
  %cmp2 = icmp eq %struct._typeobject* %6, @PyComplex_Type, !dbg !1594
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false, !dbg !1595

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1596, !tbaa !1191
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1598
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1598, !tbaa !1203
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PyComplex_Type), !dbg !1599
  %tobool = icmp ne i32 %call, 0, !dbg !1599
  br i1 %tobool, label %if.then.4, label %if.else, !dbg !1600

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1601, !tbaa !1191
  %10 = bitcast %struct._object* %9 to %struct.PyComplexObject*, !dbg !1604
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %10, i32 0, i32 1, !dbg !1605
  %11 = bitcast %struct.Py_complex* %i to i8*, !dbg !1605
  %12 = bitcast %struct.Py_complex* %cval to i8*, !dbg !1605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !dbg !1605, !tbaa.struct !808
  br label %if.end.9, !dbg !1606

if.else:                                          ; preds = %lor.lhs.false
  %call5 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %i), !dbg !1607
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1610
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1611

if.then.7:                                        ; preds = %if.else
  %13 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1612, !tbaa !1191
  store %struct._object* %13, %struct._object** %retval, !dbg !1614
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86, !dbg !1614

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.4
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1615, !tbaa !1191
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1616
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1616, !tbaa !1203
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19, !dbg !1617
  %16 = load i64, i64* %tp_flags, align 8, !dbg !1617, !tbaa !1618
  %and = and i64 %16, 16777216, !dbg !1619
  %cmp11 = icmp ne i64 %and, 0, !dbg !1620
  br i1 %cmp11, label %if.then.12, label %if.else.28, !dbg !1621

if.then.12:                                       ; preds = %if.end.9
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 1, !dbg !1622
  %17 = load double, double* %imag, align 8, !dbg !1622, !tbaa !802
  %cmp13 = fcmp oeq double %17, 0.000000e+00, !dbg !1623
  br i1 %cmp13, label %if.then.14, label %if.else.26, !dbg !1624

if.then.14:                                       ; preds = %if.then.12
  %18 = bitcast %struct._object** %j to i8*, !dbg !1625
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !1625
  call void @llvm.dbg.declare(metadata %struct._object** %j, metadata !619, metadata !786), !dbg !1626
  %19 = bitcast %struct._object** %sub_res to i8*, !dbg !1625
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !1625
  call void @llvm.dbg.declare(metadata %struct._object** %sub_res, metadata !624, metadata !786), !dbg !1627
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 0, !dbg !1628
  %20 = load double, double* %real, align 8, !dbg !1628, !tbaa !792
  %call15 = call %struct._object* @PyFloat_FromDouble(double %20), !dbg !1629
  store %struct._object* %call15, %struct._object** %j, align 8, !dbg !1630, !tbaa !1191
  %21 = load %struct._object*, %struct._object** %j, align 8, !dbg !1631, !tbaa !1191
  %cmp16 = icmp eq %struct._object* %21, null, !dbg !1633
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !1634

if.then.17:                                       ; preds = %if.then.14
  store %struct._object* null, %struct._object** %retval, !dbg !1635
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1635

if.end.18:                                        ; preds = %if.then.14
  %22 = load %struct._object*, %struct._object** %j, align 8, !dbg !1636, !tbaa !1191
  %23 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1637, !tbaa !1191
  %24 = load i32, i32* %op.addr, align 4, !dbg !1638, !tbaa !900
  %call19 = call %struct._object* @PyObject_RichCompare(%struct._object* %22, %struct._object* %23, i32 %24), !dbg !1639
  store %struct._object* %call19, %struct._object** %sub_res, align 8, !dbg !1640, !tbaa !1191
  br label %do.body, !dbg !1641

do.body:                                          ; preds = %if.end.18
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1642
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !1642
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !625, metadata !786), !dbg !1644
  %26 = load %struct._object*, %struct._object** %j, align 8, !dbg !1645, !tbaa !1191
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8, !dbg !1644, !tbaa !1191
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1646, !tbaa !1191
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !1648
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !1649, !tbaa !1210
  %dec = add i64 %28, -1, !dbg !1649
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1649, !tbaa !1210
  %cmp20 = icmp ne i64 %dec, 0, !dbg !1650
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !1651

if.then.21:                                       ; preds = %do.body
  br label %if.end.24, !dbg !1652

if.else.22:                                       ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1654, !tbaa !1191
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !1656
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1656, !tbaa !1203
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !1657
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1657, !tbaa !1326
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1658, !tbaa !1191
  call void %31(%struct._object* %32), !dbg !1659
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1660
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !1660
  br label %do.cond, !dbg !1662

do.cond:                                          ; preds = %if.end.24
  br label %do.end, !dbg !1663

do.end:                                           ; preds = %do.cond
  %34 = load %struct._object*, %struct._object** %sub_res, align 8, !dbg !1665, !tbaa !1191
  store %struct._object* %34, %struct._object** %retval, !dbg !1666
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1666

cleanup:                                          ; preds = %do.end, %if.then.17
  %35 = bitcast %struct._object** %sub_res to i8*, !dbg !1667
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1667
  %36 = bitcast %struct._object** %j to i8*, !dbg !1667
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !1667
  br label %cleanup.86

if.else.26:                                       ; preds = %if.then.12
  store i32 0, i32* %equal, align 4, !dbg !1668, !tbaa !900
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26
  br label %if.end.77, !dbg !1670

if.else.28:                                       ; preds = %if.end.9
  %37 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1671, !tbaa !1191
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !1672
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !1672, !tbaa !1203
  %cmp30 = icmp eq %struct._typeobject* %38, @PyFloat_Type, !dbg !1673
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false.31, !dbg !1674

lor.lhs.false.31:                                 ; preds = %if.else.28
  %39 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1675, !tbaa !1191
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1677
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !1677, !tbaa !1203
  %call33 = call i32 @PyType_IsSubtype(%struct._typeobject* %40, %struct._typeobject* @PyFloat_Type), !dbg !1678
  %tobool34 = icmp ne i32 %call33, 0, !dbg !1678
  br i1 %tobool34, label %if.then.35, label %if.else.41, !dbg !1679

if.then.35:                                       ; preds = %lor.lhs.false.31, %if.else.28
  %real36 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 0, !dbg !1680
  %41 = load double, double* %real36, align 8, !dbg !1680, !tbaa !792
  %42 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1682, !tbaa !1191
  %call37 = call double @PyFloat_AsDouble(%struct._object* %42), !dbg !1683
  %cmp38 = fcmp oeq double %41, %call37, !dbg !1684
  br i1 %cmp38, label %land.rhs, label %land.end, !dbg !1685

land.rhs:                                         ; preds = %if.then.35
  %imag39 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 1, !dbg !1686
  %43 = load double, double* %imag39, align 8, !dbg !1686, !tbaa !802
  %cmp40 = fcmp oeq double %43, 0.000000e+00, !dbg !1688
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.35
  %44 = phi i1 [ false, %if.then.35 ], [ %cmp40, %land.rhs ]
  %land.ext = zext i1 %44 to i32, !dbg !1689
  store i32 %land.ext, i32* %equal, align 4, !dbg !1691, !tbaa !900
  br label %if.end.76, !dbg !1692

if.else.41:                                       ; preds = %lor.lhs.false.31
  %45 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1693, !tbaa !1191
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !1694
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !1694, !tbaa !1203
  %cmp43 = icmp eq %struct._typeobject* %46, @PyComplex_Type, !dbg !1695
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.44, !dbg !1696

lor.lhs.false.44:                                 ; preds = %if.else.41
  %47 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1697, !tbaa !1191
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !1699
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !1699, !tbaa !1203
  %call46 = call i32 @PyType_IsSubtype(%struct._typeobject* %48, %struct._typeobject* @PyComplex_Type), !dbg !1700
  %tobool47 = icmp ne i32 %call46, 0, !dbg !1700
  br i1 %tobool47, label %if.then.48, label %if.else.74, !dbg !1701

if.then.48:                                       ; preds = %lor.lhs.false.44, %if.else.41
  %49 = bitcast %struct.Py_complex* %j49 to i8*, !dbg !1702
  call void @llvm.lifetime.start(i64 16, i8* %49) #2, !dbg !1702
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %j49, metadata !627, metadata !786), !dbg !1703
  %50 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1704, !tbaa !1191
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !1706
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8, !dbg !1706, !tbaa !1203
  %cmp51 = icmp eq %struct._typeobject* %51, @PyComplex_Type, !dbg !1707
  br i1 %cmp51, label %if.then.56, label %lor.lhs.false.52, !dbg !1708

lor.lhs.false.52:                                 ; preds = %if.then.48
  %52 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1709, !tbaa !1191
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !1711
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !1711, !tbaa !1203
  %call54 = call i32 @PyType_IsSubtype(%struct._typeobject* %53, %struct._typeobject* @PyComplex_Type), !dbg !1712
  %tobool55 = icmp ne i32 %call54, 0, !dbg !1712
  br i1 %tobool55, label %if.then.56, label %if.else.58, !dbg !1713

if.then.56:                                       ; preds = %lor.lhs.false.52, %if.then.48
  %54 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1714, !tbaa !1191
  %55 = bitcast %struct._object* %54 to %struct.PyComplexObject*, !dbg !1717
  %cval57 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %55, i32 0, i32 1, !dbg !1718
  %56 = bitcast %struct.Py_complex* %j49 to i8*, !dbg !1718
  %57 = bitcast %struct.Py_complex* %cval57 to i8*, !dbg !1718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 16, i32 8, i1 false), !dbg !1718, !tbaa.struct !808
  br label %if.end.63, !dbg !1719

if.else.58:                                       ; preds = %lor.lhs.false.52
  %call59 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %j49), !dbg !1720
  %cmp60 = icmp slt i32 %call59, 0, !dbg !1723
  br i1 %cmp60, label %if.then.61, label %if.end.62, !dbg !1724

if.then.61:                                       ; preds = %if.else.58
  %58 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1725, !tbaa !1191
  store %struct._object* %58, %struct._object** %retval, !dbg !1727
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73, !dbg !1727

if.end.62:                                        ; preds = %if.else.58
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.56
  %real64 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 0, !dbg !1728
  %59 = load double, double* %real64, align 8, !dbg !1728, !tbaa !792
  %real65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %j49, i32 0, i32 0, !dbg !1729
  %60 = load double, double* %real65, align 8, !dbg !1729, !tbaa !792
  %cmp66 = fcmp oeq double %59, %60, !dbg !1730
  br i1 %cmp66, label %land.rhs.67, label %land.end.71, !dbg !1731

land.rhs.67:                                      ; preds = %if.end.63
  %imag68 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %i, i32 0, i32 1, !dbg !1732
  %61 = load double, double* %imag68, align 8, !dbg !1732, !tbaa !802
  %imag69 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %j49, i32 0, i32 1, !dbg !1734
  %62 = load double, double* %imag69, align 8, !dbg !1734, !tbaa !802
  %cmp70 = fcmp oeq double %61, %62, !dbg !1735
  br label %land.end.71

land.end.71:                                      ; preds = %land.rhs.67, %if.end.63
  %63 = phi i1 [ false, %if.end.63 ], [ %cmp70, %land.rhs.67 ]
  %land.ext72 = zext i1 %63 to i32, !dbg !1736
  store i32 %land.ext72, i32* %equal, align 4, !dbg !1738, !tbaa !900
  store i32 0, i32* %cleanup.dest.slot, !dbg !1739
  br label %cleanup.73, !dbg !1739

cleanup.73:                                       ; preds = %land.end.71, %if.then.61
  %64 = bitcast %struct.Py_complex* %j49 to i8*, !dbg !1740
  call void @llvm.lifetime.end(i64 16, i8* %64) #2, !dbg !1740
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup.73
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.75, !dbg !1741

if.else.74:                                       ; preds = %lor.lhs.false.44
  br label %Unimplemented, !dbg !1742

if.end.75:                                        ; preds = %cleanup.cont
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %land.end
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.27
  %65 = load i32, i32* %equal, align 4, !dbg !1744, !tbaa !900
  %66 = load i32, i32* %op.addr, align 4, !dbg !1746, !tbaa !900
  %cmp78 = icmp eq i32 %66, 2, !dbg !1747
  %conv = zext i1 %cmp78 to i32, !dbg !1747
  %cmp79 = icmp eq i32 %65, %conv, !dbg !1748
  br i1 %cmp79, label %if.then.81, label %if.else.82, !dbg !1749

if.then.81:                                       ; preds = %if.end.77
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8, !dbg !1750, !tbaa !1191
  br label %if.end.83, !dbg !1751

if.else.82:                                       ; preds = %if.end.77
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8, !dbg !1752, !tbaa !1191
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.then.81
  %67 = load %struct._object*, %struct._object** %res, align 8, !dbg !1753, !tbaa !1191
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0, !dbg !1754
  %68 = load i64, i64* %ob_refcnt84, align 8, !dbg !1755, !tbaa !1210
  %inc = add i64 %68, 1, !dbg !1755
  store i64 %inc, i64* %ob_refcnt84, align 8, !dbg !1755, !tbaa !1210
  %69 = load %struct._object*, %struct._object** %res, align 8, !dbg !1756, !tbaa !1191
  store %struct._object* %69, %struct._object** %retval, !dbg !1757
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86, !dbg !1757

Unimplemented:                                    ; preds = %if.else.74, %if.then
  %70 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1758, !tbaa !1210
  %inc85 = add i64 %70, 1, !dbg !1758
  store i64 %inc85, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1758, !tbaa !1210
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1759
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86, !dbg !1759

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.86

cleanup.86:                                       ; preds = %NewDefault, %Unimplemented, %if.end.83, %cleanup, %if.then.7
  %71 = bitcast i32* %equal to i8*, !dbg !1760
  call void @llvm.lifetime.end(i64 4, i8* %71) #2, !dbg !1760
  %72 = bitcast %struct.Py_complex* %i to i8*, !dbg !1760
  call void @llvm.lifetime.end(i64 16, i8* %72) #2, !dbg !1760
  %73 = bitcast %struct._object** %res to i8*, !dbg !1760
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !1760
  %74 = load %struct._object*, %struct._object** %retval, !dbg !1760
  ret %struct._object* %74, !dbg !1760
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #5

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp119 = alloca %struct._object*, align 8
  %_py_decref_tmp134 = alloca %struct._object*, align 8
  %_py_decref_tmp168 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !666, metadata !786), !dbg !1761
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !667, metadata !786), !dbg !1762
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !668, metadata !786), !dbg !1763
  %0 = bitcast %struct._object** %r to i8*, !dbg !1764
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1764
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !669, metadata !786), !dbg !1765
  %1 = bitcast %struct._object** %i to i8*, !dbg !1764
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1764
  call void @llvm.dbg.declare(metadata %struct._object** %i, metadata !670, metadata !786), !dbg !1766
  %2 = bitcast %struct._object** %tmp to i8*, !dbg !1764
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1764
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !671, metadata !786), !dbg !1767
  %3 = bitcast %struct.PyNumberMethods** %nbr to i8*, !dbg !1768
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1768
  call void @llvm.dbg.declare(metadata %struct.PyNumberMethods** %nbr, metadata !672, metadata !786), !dbg !1769
  %4 = bitcast %struct.PyNumberMethods** %nbi to i8*, !dbg !1768
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1768
  call void @llvm.dbg.declare(metadata %struct.PyNumberMethods** %nbi, metadata !673, metadata !786), !dbg !1770
  store %struct.PyNumberMethods* null, %struct.PyNumberMethods** %nbi, align 8, !dbg !1770, !tbaa !1191
  %5 = bitcast %struct.Py_complex* %cr to i8*, !dbg !1771
  call void @llvm.lifetime.start(i64 16, i8* %5) #2, !dbg !1771
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %cr, metadata !674, metadata !786), !dbg !1772
  %6 = bitcast %struct.Py_complex* %ci to i8*, !dbg !1771
  call void @llvm.lifetime.start(i64 16, i8* %6) #2, !dbg !1771
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %ci, metadata !675, metadata !786), !dbg !1773
  %7 = bitcast i32* %own_r to i8*, !dbg !1774
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !1774
  call void @llvm.dbg.declare(metadata i32* %own_r, metadata !676, metadata !786), !dbg !1775
  store i32 0, i32* %own_r, align 4, !dbg !1775, !tbaa !900
  %8 = bitcast i32* %cr_is_complex to i8*, !dbg !1776
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %cr_is_complex, metadata !677, metadata !786), !dbg !1777
  store i32 0, i32* %cr_is_complex, align 4, !dbg !1777, !tbaa !900
  %9 = bitcast i32* %ci_is_complex to i8*, !dbg !1778
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !1778
  call void @llvm.dbg.declare(metadata i32* %ci_is_complex, metadata !678, metadata !786), !dbg !1779
  store i32 0, i32* %ci_is_complex, align 4, !dbg !1779, !tbaa !900
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %r, align 8, !dbg !1780, !tbaa !1191
  store %struct._object* null, %struct._object** %i, align 8, !dbg !1781, !tbaa !1191
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1782, !tbaa !1191
  %11 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1784, !tbaa !1191
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %10, %struct._object* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @complex_new.kwlist, i32 0, i32 0), %struct._object** %r, %struct._object** %i), !dbg !1785
  %tobool = icmp ne i32 %call, 0, !dbg !1785
  br i1 %tobool, label %if.end, label %if.then, !dbg !1786

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1787
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1787

if.end:                                           ; preds = %entry
  %12 = load %struct._object*, %struct._object** %r, align 8, !dbg !1788, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1790
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1790, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %13, @PyComplex_Type, !dbg !1791
  br i1 %cmp, label %land.lhs.true, label %if.end.12, !dbg !1792

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %i, align 8, !dbg !1793, !tbaa !1191
  %cmp8 = icmp eq %struct._object* %14, null, !dbg !1795
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.12, !dbg !1796

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %15 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1797, !tbaa !1191
  %cmp10 = icmp eq %struct._typeobject* %15, @PyComplex_Type, !dbg !1798
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1799

if.then.11:                                       ; preds = %land.lhs.true.9
  %16 = load %struct._object*, %struct._object** %r, align 8, !dbg !1800, !tbaa !1191
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !1802
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !1803, !tbaa !1210
  %inc = add i64 %17, 1, !dbg !1803
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1803, !tbaa !1210
  %18 = load %struct._object*, %struct._object** %r, align 8, !dbg !1804, !tbaa !1191
  store %struct._object* %18, %struct._object** %retval, !dbg !1805
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1805

if.end.12:                                        ; preds = %land.lhs.true.9, %land.lhs.true, %if.end
  %19 = load %struct._object*, %struct._object** %r, align 8, !dbg !1806, !tbaa !1191
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !1808
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8, !dbg !1808, !tbaa !1203
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19, !dbg !1809
  %21 = load i64, i64* %tp_flags, align 8, !dbg !1809, !tbaa !1618
  %and = and i64 %21, 268435456, !dbg !1810
  %cmp14 = icmp ne i64 %and, 0, !dbg !1811
  br i1 %cmp14, label %if.then.15, label %if.end.20, !dbg !1812

if.then.15:                                       ; preds = %if.end.12
  %22 = load %struct._object*, %struct._object** %i, align 8, !dbg !1813, !tbaa !1191
  %cmp16 = icmp ne %struct._object* %22, null, !dbg !1816
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !1817

if.then.17:                                       ; preds = %if.then.15
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1818, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i32 0, i32 0)), !dbg !1820
  store %struct._object* null, %struct._object** %retval, !dbg !1821
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1821

if.end.18:                                        ; preds = %if.then.15
  %24 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1822, !tbaa !1191
  %25 = load %struct._object*, %struct._object** %r, align 8, !dbg !1823, !tbaa !1191
  %call19 = call %struct._object* @complex_subtype_from_string(%struct._typeobject* %24, %struct._object* %25), !dbg !1824
  store %struct._object* %call19, %struct._object** %retval, !dbg !1825
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1825

if.end.20:                                        ; preds = %if.end.12
  %26 = load %struct._object*, %struct._object** %i, align 8, !dbg !1826, !tbaa !1191
  %cmp21 = icmp ne %struct._object* %26, null, !dbg !1828
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.28, !dbg !1829

land.lhs.true.22:                                 ; preds = %if.end.20
  %27 = load %struct._object*, %struct._object** %i, align 8, !dbg !1830, !tbaa !1191
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1832
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1832, !tbaa !1203
  %tp_flags24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19, !dbg !1833
  %29 = load i64, i64* %tp_flags24, align 8, !dbg !1833, !tbaa !1618
  %and25 = and i64 %29, 268435456, !dbg !1834
  %cmp26 = icmp ne i64 %and25, 0, !dbg !1835
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !1836

if.then.27:                                       ; preds = %land.lhs.true.22
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1837, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0)), !dbg !1839
  store %struct._object* null, %struct._object** %retval, !dbg !1840
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1840

if.end.28:                                        ; preds = %land.lhs.true.22, %if.end.20
  %31 = load %struct._object*, %struct._object** %r, align 8, !dbg !1841, !tbaa !1191
  %call29 = call %struct._object* @try_complex_special_method(%struct._object* %31), !dbg !1842
  store %struct._object* %call29, %struct._object** %tmp, align 8, !dbg !1843, !tbaa !1191
  %32 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !1844, !tbaa !1191
  %tobool30 = icmp ne %struct._object* %32, null, !dbg !1844
  br i1 %tobool30, label %if.then.31, label %if.else, !dbg !1846

if.then.31:                                       ; preds = %if.end.28
  %33 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !1847, !tbaa !1191
  store %struct._object* %33, %struct._object** %r, align 8, !dbg !1849, !tbaa !1191
  store i32 1, i32* %own_r, align 4, !dbg !1850, !tbaa !900
  br label %if.end.36, !dbg !1851

if.else:                                          ; preds = %if.end.28
  %call32 = call %struct._object* @PyErr_Occurred(), !dbg !1852
  %tobool33 = icmp ne %struct._object* %call32, null, !dbg !1852
  br i1 %tobool33, label %if.then.34, label %if.end.35, !dbg !1854

if.then.34:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !1855
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1855

if.end.35:                                        ; preds = %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.31
  %34 = load %struct._object*, %struct._object** %r, align 8, !dbg !1857, !tbaa !1191
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !1858
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !1858, !tbaa !1203
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 10, !dbg !1859
  %36 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !1859, !tbaa !1860
  store %struct.PyNumberMethods* %36, %struct.PyNumberMethods** %nbr, align 8, !dbg !1861, !tbaa !1191
  %37 = load %struct._object*, %struct._object** %i, align 8, !dbg !1862, !tbaa !1191
  %cmp38 = icmp ne %struct._object* %37, null, !dbg !1864
  br i1 %cmp38, label %if.then.39, label %if.end.42, !dbg !1865

if.then.39:                                       ; preds = %if.end.36
  %38 = load %struct._object*, %struct._object** %i, align 8, !dbg !1866, !tbaa !1191
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !1867
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1867, !tbaa !1203
  %tp_as_number41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 10, !dbg !1868
  %40 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number41, align 8, !dbg !1868, !tbaa !1860
  store %struct.PyNumberMethods* %40, %struct.PyNumberMethods** %nbi, align 8, !dbg !1869, !tbaa !1191
  br label %if.end.42, !dbg !1870

if.end.42:                                        ; preds = %if.then.39, %if.end.36
  %41 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbr, align 8, !dbg !1871, !tbaa !1191
  %cmp43 = icmp eq %struct.PyNumberMethods* %41, null, !dbg !1872
  br i1 %cmp43, label %if.then.52, label %lor.lhs.false, !dbg !1873

lor.lhs.false:                                    ; preds = %if.end.42
  %42 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbr, align 8, !dbg !1874, !tbaa !1191
  %nb_float = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %42, i32 0, i32 18, !dbg !1876
  %43 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float, align 8, !dbg !1876, !tbaa !1877
  %cmp44 = icmp eq %struct._object* (%struct._object*)* %43, null, !dbg !1879
  br i1 %cmp44, label %if.then.52, label %lor.lhs.false.45, !dbg !1880

lor.lhs.false.45:                                 ; preds = %lor.lhs.false
  %44 = load %struct._object*, %struct._object** %i, align 8, !dbg !1881, !tbaa !1191
  %cmp46 = icmp ne %struct._object* %44, null, !dbg !1882
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.65, !dbg !1883

land.lhs.true.47:                                 ; preds = %lor.lhs.false.45
  %45 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbi, align 8, !dbg !1884, !tbaa !1191
  %cmp48 = icmp eq %struct.PyNumberMethods* %45, null, !dbg !1885
  br i1 %cmp48, label %if.then.52, label %lor.lhs.false.49, !dbg !1886

lor.lhs.false.49:                                 ; preds = %land.lhs.true.47
  %46 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbi, align 8, !dbg !1887, !tbaa !1191
  %nb_float50 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %46, i32 0, i32 18, !dbg !1889
  %47 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float50, align 8, !dbg !1889, !tbaa !1877
  %cmp51 = icmp eq %struct._object* (%struct._object*)* %47, null, !dbg !1890
  br i1 %cmp51, label %if.then.52, label %if.end.65, !dbg !1891

if.then.52:                                       ; preds = %lor.lhs.false.49, %land.lhs.true.47, %lor.lhs.false, %if.end.42
  %48 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1892, !tbaa !1191
  %49 = load %struct._object*, %struct._object** %r, align 8, !dbg !1893, !tbaa !1191
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !1894
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !1894, !tbaa !1203
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 1, !dbg !1895
  %51 = load i8*, i8** %tp_name, align 8, !dbg !1895, !tbaa !1896
  %call54 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %48, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i32 0, i32 0), i8* %51), !dbg !1897
  %52 = load i32, i32* %own_r, align 4, !dbg !1898, !tbaa !900
  %tobool55 = icmp ne i32 %52, 0, !dbg !1898
  br i1 %tobool55, label %if.then.56, label %if.end.64, !dbg !1899

if.then.56:                                       ; preds = %if.then.52
  br label %do.body, !dbg !1900

do.body:                                          ; preds = %if.then.56
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1901
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !1901
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !679, metadata !786), !dbg !1903
  %54 = load %struct._object*, %struct._object** %r, align 8, !dbg !1904, !tbaa !1191
  store %struct._object* %54, %struct._object** %_py_decref_tmp, align 8, !dbg !1903, !tbaa !1191
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1905, !tbaa !1191
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !1907
  %56 = load i64, i64* %ob_refcnt58, align 8, !dbg !1908, !tbaa !1210
  %dec = add i64 %56, -1, !dbg !1908
  store i64 %dec, i64* %ob_refcnt58, align 8, !dbg !1908, !tbaa !1210
  %cmp59 = icmp ne i64 %dec, 0, !dbg !1909
  br i1 %cmp59, label %if.then.60, label %if.else.61, !dbg !1910

if.then.60:                                       ; preds = %do.body
  br label %if.end.63, !dbg !1911

if.else.61:                                       ; preds = %do.body
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1913, !tbaa !1191
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !1915
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !1915, !tbaa !1203
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !1916
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1916, !tbaa !1326
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1917, !tbaa !1191
  call void %59(%struct._object* %60), !dbg !1918
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.60
  %61 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1919
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !1919
  br label %do.cond, !dbg !1921

do.cond:                                          ; preds = %if.end.63
  br label %do.end, !dbg !1922

do.end:                                           ; preds = %do.cond
  br label %if.end.64, !dbg !1924

if.end.64:                                        ; preds = %do.end, %if.then.52
  store %struct._object* null, %struct._object** %retval, !dbg !1925
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1925

if.end.65:                                        ; preds = %lor.lhs.false.49, %lor.lhs.false.45
  %62 = load %struct._object*, %struct._object** %r, align 8, !dbg !1926, !tbaa !1191
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !1927
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8, !dbg !1927, !tbaa !1203
  %cmp67 = icmp eq %struct._typeobject* %63, @PyComplex_Type, !dbg !1928
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false.68, !dbg !1929

lor.lhs.false.68:                                 ; preds = %if.end.65
  %64 = load %struct._object*, %struct._object** %r, align 8, !dbg !1930, !tbaa !1191
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !1932
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8, !dbg !1932, !tbaa !1203
  %call70 = call i32 @PyType_IsSubtype(%struct._typeobject* %65, %struct._typeobject* @PyComplex_Type), !dbg !1933
  %tobool71 = icmp ne i32 %call70, 0, !dbg !1933
  br i1 %tobool71, label %if.then.72, label %if.else.89, !dbg !1934

if.then.72:                                       ; preds = %lor.lhs.false.68, %if.end.65
  %66 = load %struct._object*, %struct._object** %r, align 8, !dbg !1935, !tbaa !1191
  %67 = bitcast %struct._object* %66 to %struct.PyComplexObject*, !dbg !1936
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %67, i32 0, i32 1, !dbg !1937
  %68 = bitcast %struct.Py_complex* %cr to i8*, !dbg !1937
  %69 = bitcast %struct.Py_complex* %cval to i8*, !dbg !1937
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false), !dbg !1937, !tbaa.struct !808
  store i32 1, i32* %cr_is_complex, align 4, !dbg !1938, !tbaa !900
  %70 = load i32, i32* %own_r, align 4, !dbg !1939, !tbaa !900
  %tobool73 = icmp ne i32 %70, 0, !dbg !1939
  br i1 %tobool73, label %if.then.74, label %if.end.88, !dbg !1940

if.then.74:                                       ; preds = %if.then.72
  br label %do.body.75, !dbg !1941

do.body.75:                                       ; preds = %if.then.74
  %71 = bitcast %struct._object** %_py_decref_tmp77 to i8*, !dbg !1942
  call void @llvm.lifetime.start(i64 8, i8* %71) #2, !dbg !1942
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp77, metadata !685, metadata !786), !dbg !1944
  %72 = load %struct._object*, %struct._object** %r, align 8, !dbg !1945, !tbaa !1191
  store %struct._object* %72, %struct._object** %_py_decref_tmp77, align 8, !dbg !1944, !tbaa !1191
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !1946, !tbaa !1191
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0, !dbg !1948
  %74 = load i64, i64* %ob_refcnt78, align 8, !dbg !1949, !tbaa !1210
  %dec79 = add i64 %74, -1, !dbg !1949
  store i64 %dec79, i64* %ob_refcnt78, align 8, !dbg !1949, !tbaa !1210
  %cmp80 = icmp ne i64 %dec79, 0, !dbg !1950
  br i1 %cmp80, label %if.then.81, label %if.else.82, !dbg !1951

if.then.81:                                       ; preds = %do.body.75
  br label %if.end.85, !dbg !1952

if.else.82:                                       ; preds = %do.body.75
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !1954, !tbaa !1191
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1, !dbg !1956
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8, !dbg !1956, !tbaa !1203
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4, !dbg !1957
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8, !dbg !1957, !tbaa !1326
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !1958, !tbaa !1191
  call void %77(%struct._object* %78), !dbg !1959
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  %79 = bitcast %struct._object** %_py_decref_tmp77 to i8*, !dbg !1960
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !1960
  br label %do.cond.86, !dbg !1962

do.cond.86:                                       ; preds = %if.end.85
  br label %do.end.87, !dbg !1963

do.end.87:                                        ; preds = %do.cond.86
  br label %if.end.88, !dbg !1965

if.end.88:                                        ; preds = %do.end.87, %if.then.72
  br label %if.end.145, !dbg !1966

if.else.89:                                       ; preds = %lor.lhs.false.68
  %80 = load %struct._object*, %struct._object** %r, align 8, !dbg !1967, !tbaa !1191
  %call90 = call %struct._object* @PyNumber_Float(%struct._object* %80), !dbg !1968
  store %struct._object* %call90, %struct._object** %tmp, align 8, !dbg !1969, !tbaa !1191
  %81 = load i32, i32* %own_r, align 4, !dbg !1970, !tbaa !900
  %tobool91 = icmp ne i32 %81, 0, !dbg !1970
  br i1 %tobool91, label %if.then.92, label %if.end.106, !dbg !1971

if.then.92:                                       ; preds = %if.else.89
  br label %do.body.93, !dbg !1972

do.body.93:                                       ; preds = %if.then.92
  %82 = bitcast %struct._object** %_py_decref_tmp95 to i8*, !dbg !1973
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !1973
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp95, metadata !691, metadata !786), !dbg !1975
  %83 = load %struct._object*, %struct._object** %r, align 8, !dbg !1976, !tbaa !1191
  store %struct._object* %83, %struct._object** %_py_decref_tmp95, align 8, !dbg !1975, !tbaa !1191
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !1977, !tbaa !1191
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0, !dbg !1979
  %85 = load i64, i64* %ob_refcnt96, align 8, !dbg !1980, !tbaa !1210
  %dec97 = add i64 %85, -1, !dbg !1980
  store i64 %dec97, i64* %ob_refcnt96, align 8, !dbg !1980, !tbaa !1210
  %cmp98 = icmp ne i64 %dec97, 0, !dbg !1981
  br i1 %cmp98, label %if.then.99, label %if.else.100, !dbg !1982

if.then.99:                                       ; preds = %do.body.93
  br label %if.end.103, !dbg !1983

if.else.100:                                      ; preds = %do.body.93
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !1985, !tbaa !1191
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1, !dbg !1987
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8, !dbg !1987, !tbaa !1203
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4, !dbg !1988
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8, !dbg !1988, !tbaa !1326
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !1989, !tbaa !1191
  call void %88(%struct._object* %89), !dbg !1990
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  %90 = bitcast %struct._object** %_py_decref_tmp95 to i8*, !dbg !1991
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !1991
  br label %do.cond.104, !dbg !1993

do.cond.104:                                      ; preds = %if.end.103
  br label %do.end.105, !dbg !1994

do.end.105:                                       ; preds = %do.cond.104
  br label %if.end.106, !dbg !1996

if.end.106:                                       ; preds = %do.end.105, %if.else.89
  %91 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !1997, !tbaa !1191
  %cmp107 = icmp eq %struct._object* %91, null, !dbg !1999
  br i1 %cmp107, label %if.then.108, label %if.end.109, !dbg !2000

if.then.108:                                      ; preds = %if.end.106
  store %struct._object* null, %struct._object** %retval, !dbg !2001
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2001

if.end.109:                                       ; preds = %if.end.106
  %92 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2002, !tbaa !1191
  %ob_type110 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1, !dbg !2003
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8, !dbg !2003, !tbaa !1203
  %cmp111 = icmp eq %struct._typeobject* %93, @PyFloat_Type, !dbg !2004
  br i1 %cmp111, label %if.end.130, label %lor.lhs.false.112, !dbg !2005

lor.lhs.false.112:                                ; preds = %if.end.109
  %94 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2006, !tbaa !1191
  %ob_type113 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1, !dbg !2008
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type113, align 8, !dbg !2008, !tbaa !1203
  %call114 = call i32 @PyType_IsSubtype(%struct._typeobject* %95, %struct._typeobject* @PyFloat_Type), !dbg !2009
  %tobool115 = icmp ne i32 %call114, 0, !dbg !2009
  br i1 %tobool115, label %if.end.130, label %if.then.116, !dbg !2010

if.then.116:                                      ; preds = %lor.lhs.false.112
  %96 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2011, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)), !dbg !2012
  br label %do.body.117, !dbg !2013

do.body.117:                                      ; preds = %if.then.116
  %97 = bitcast %struct._object** %_py_decref_tmp119 to i8*, !dbg !2014
  call void @llvm.lifetime.start(i64 8, i8* %97) #2, !dbg !2014
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp119, metadata !696, metadata !786), !dbg !2016
  %98 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2017, !tbaa !1191
  store %struct._object* %98, %struct._object** %_py_decref_tmp119, align 8, !dbg !2016, !tbaa !1191
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8, !dbg !2018, !tbaa !1191
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0, !dbg !2020
  %100 = load i64, i64* %ob_refcnt120, align 8, !dbg !2021, !tbaa !1210
  %dec121 = add i64 %100, -1, !dbg !2021
  store i64 %dec121, i64* %ob_refcnt120, align 8, !dbg !2021, !tbaa !1210
  %cmp122 = icmp ne i64 %dec121, 0, !dbg !2022
  br i1 %cmp122, label %if.then.123, label %if.else.124, !dbg !2023

if.then.123:                                      ; preds = %do.body.117
  br label %if.end.127, !dbg !2024

if.else.124:                                      ; preds = %do.body.117
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8, !dbg !2026, !tbaa !1191
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1, !dbg !2028
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8, !dbg !2028, !tbaa !1203
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4, !dbg !2029
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8, !dbg !2029, !tbaa !1326
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8, !dbg !2030, !tbaa !1191
  call void %103(%struct._object* %104), !dbg !2031
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.123
  %105 = bitcast %struct._object** %_py_decref_tmp119 to i8*, !dbg !2032
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !2032
  br label %do.cond.128, !dbg !2034

do.cond.128:                                      ; preds = %if.end.127
  br label %do.end.129, !dbg !2035

do.end.129:                                       ; preds = %do.cond.128
  store %struct._object* null, %struct._object** %retval, !dbg !2037
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2037

if.end.130:                                       ; preds = %lor.lhs.false.112, %if.end.109
  %106 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2038, !tbaa !1191
  %call131 = call double @PyFloat_AsDouble(%struct._object* %106), !dbg !2039
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 0, !dbg !2040
  store double %call131, double* %real, align 8, !dbg !2041, !tbaa !792
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 1, !dbg !2042
  store double 0.000000e+00, double* %imag, align 8, !dbg !2043, !tbaa !802
  br label %do.body.132, !dbg !2044

do.body.132:                                      ; preds = %if.end.130
  %107 = bitcast %struct._object** %_py_decref_tmp134 to i8*, !dbg !2045
  call void @llvm.lifetime.start(i64 8, i8* %107) #2, !dbg !2045
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp134, metadata !700, metadata !786), !dbg !2047
  %108 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2048, !tbaa !1191
  store %struct._object* %108, %struct._object** %_py_decref_tmp134, align 8, !dbg !2047, !tbaa !1191
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !2049, !tbaa !1191
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0, !dbg !2051
  %110 = load i64, i64* %ob_refcnt135, align 8, !dbg !2052, !tbaa !1210
  %dec136 = add i64 %110, -1, !dbg !2052
  store i64 %dec136, i64* %ob_refcnt135, align 8, !dbg !2052, !tbaa !1210
  %cmp137 = icmp ne i64 %dec136, 0, !dbg !2053
  br i1 %cmp137, label %if.then.138, label %if.else.139, !dbg !2054

if.then.138:                                      ; preds = %do.body.132
  br label %if.end.142, !dbg !2055

if.else.139:                                      ; preds = %do.body.132
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !2057, !tbaa !1191
  %ob_type140 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1, !dbg !2059
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type140, align 8, !dbg !2059, !tbaa !1203
  %tp_dealloc141 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4, !dbg !2060
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc141, align 8, !dbg !2060, !tbaa !1326
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !2061, !tbaa !1191
  call void %113(%struct._object* %114), !dbg !2062
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.then.138
  %115 = bitcast %struct._object** %_py_decref_tmp134 to i8*, !dbg !2063
  call void @llvm.lifetime.end(i64 8, i8* %115) #2, !dbg !2063
  br label %do.cond.143, !dbg !2065

do.cond.143:                                      ; preds = %if.end.142
  br label %do.end.144, !dbg !2066

do.end.144:                                       ; preds = %do.cond.143
  br label %if.end.145

if.end.145:                                       ; preds = %do.end.144, %if.end.88
  %116 = load %struct._object*, %struct._object** %i, align 8, !dbg !2068, !tbaa !1191
  %cmp146 = icmp eq %struct._object* %116, null, !dbg !2069
  br i1 %cmp146, label %if.then.147, label %if.else.149, !dbg !2070

if.then.147:                                      ; preds = %if.end.145
  %real148 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 0, !dbg !2071
  store double 0.000000e+00, double* %real148, align 8, !dbg !2073, !tbaa !792
  br label %if.end.180, !dbg !2074

if.else.149:                                      ; preds = %if.end.145
  %117 = load %struct._object*, %struct._object** %i, align 8, !dbg !2075, !tbaa !1191
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1, !dbg !2076
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8, !dbg !2076, !tbaa !1203
  %cmp151 = icmp eq %struct._typeobject* %118, @PyComplex_Type, !dbg !2077
  br i1 %cmp151, label %if.then.156, label %lor.lhs.false.152, !dbg !2078

lor.lhs.false.152:                                ; preds = %if.else.149
  %119 = load %struct._object*, %struct._object** %i, align 8, !dbg !2079, !tbaa !1191
  %ob_type153 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1, !dbg !2081
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type153, align 8, !dbg !2081, !tbaa !1203
  %call154 = call i32 @PyType_IsSubtype(%struct._typeobject* %120, %struct._typeobject* @PyComplex_Type), !dbg !2082
  %tobool155 = icmp ne i32 %call154, 0, !dbg !2082
  br i1 %tobool155, label %if.then.156, label %if.else.158, !dbg !2083

if.then.156:                                      ; preds = %lor.lhs.false.152, %if.else.149
  %121 = load %struct._object*, %struct._object** %i, align 8, !dbg !2084, !tbaa !1191
  %122 = bitcast %struct._object* %121 to %struct.PyComplexObject*, !dbg !2086
  %cval157 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %122, i32 0, i32 1, !dbg !2087
  %123 = bitcast %struct.Py_complex* %ci to i8*, !dbg !2087
  %124 = bitcast %struct.Py_complex* %cval157 to i8*, !dbg !2087
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 16, i32 8, i1 false), !dbg !2087, !tbaa.struct !808
  store i32 1, i32* %ci_is_complex, align 4, !dbg !2088, !tbaa !900
  br label %if.end.179, !dbg !2089

if.else.158:                                      ; preds = %lor.lhs.false.152
  %125 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nbi, align 8, !dbg !2090, !tbaa !1191
  %nb_float159 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %125, i32 0, i32 18, !dbg !2091
  %126 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float159, align 8, !dbg !2091, !tbaa !1877
  %127 = load %struct._object*, %struct._object** %i, align 8, !dbg !2092, !tbaa !1191
  %call160 = call %struct._object* %126(%struct._object* %127), !dbg !2093
  store %struct._object* %call160, %struct._object** %tmp, align 8, !dbg !2094, !tbaa !1191
  %128 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2095, !tbaa !1191
  %cmp161 = icmp eq %struct._object* %128, null, !dbg !2097
  br i1 %cmp161, label %if.then.162, label %if.end.163, !dbg !2098

if.then.162:                                      ; preds = %if.else.158
  store %struct._object* null, %struct._object** %retval, !dbg !2099
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2099

if.end.163:                                       ; preds = %if.else.158
  %129 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2100, !tbaa !1191
  %call164 = call double @PyFloat_AsDouble(%struct._object* %129), !dbg !2101
  %real165 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 0, !dbg !2102
  store double %call164, double* %real165, align 8, !dbg !2103, !tbaa !792
  br label %do.body.166, !dbg !2104

do.body.166:                                      ; preds = %if.end.163
  %130 = bitcast %struct._object** %_py_decref_tmp168 to i8*, !dbg !2105
  call void @llvm.lifetime.start(i64 8, i8* %130) #2, !dbg !2105
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp168, metadata !702, metadata !786), !dbg !2107
  %131 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2108, !tbaa !1191
  store %struct._object* %131, %struct._object** %_py_decref_tmp168, align 8, !dbg !2107, !tbaa !1191
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8, !dbg !2109, !tbaa !1191
  %ob_refcnt169 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 0, !dbg !2111
  %133 = load i64, i64* %ob_refcnt169, align 8, !dbg !2112, !tbaa !1210
  %dec170 = add i64 %133, -1, !dbg !2112
  store i64 %dec170, i64* %ob_refcnt169, align 8, !dbg !2112, !tbaa !1210
  %cmp171 = icmp ne i64 %dec170, 0, !dbg !2113
  br i1 %cmp171, label %if.then.172, label %if.else.173, !dbg !2114

if.then.172:                                      ; preds = %do.body.166
  br label %if.end.176, !dbg !2115

if.else.173:                                      ; preds = %do.body.166
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8, !dbg !2117, !tbaa !1191
  %ob_type174 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 1, !dbg !2119
  %135 = load %struct._typeobject*, %struct._typeobject** %ob_type174, align 8, !dbg !2119, !tbaa !1203
  %tp_dealloc175 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %135, i32 0, i32 4, !dbg !2120
  %136 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc175, align 8, !dbg !2120, !tbaa !1326
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8, !dbg !2121, !tbaa !1191
  call void %136(%struct._object* %137), !dbg !2122
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.173, %if.then.172
  %138 = bitcast %struct._object** %_py_decref_tmp168 to i8*, !dbg !2123
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !2123
  br label %do.cond.177, !dbg !2125

do.cond.177:                                      ; preds = %if.end.176
  br label %do.end.178, !dbg !2126

do.end.178:                                       ; preds = %do.cond.177
  br label %if.end.179

if.end.179:                                       ; preds = %do.end.178, %if.then.156
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.147
  %139 = load i32, i32* %ci_is_complex, align 4, !dbg !2128, !tbaa !900
  %tobool181 = icmp ne i32 %139, 0, !dbg !2128
  br i1 %tobool181, label %if.then.182, label %if.end.185, !dbg !2130

if.then.182:                                      ; preds = %if.end.180
  %imag183 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 1, !dbg !2131
  %140 = load double, double* %imag183, align 8, !dbg !2131, !tbaa !802
  %real184 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 0, !dbg !2133
  %141 = load double, double* %real184, align 8, !dbg !2134, !tbaa !792
  %sub = fsub double %141, %140, !dbg !2134
  store double %sub, double* %real184, align 8, !dbg !2134, !tbaa !792
  br label %if.end.185, !dbg !2135

if.end.185:                                       ; preds = %if.then.182, %if.end.180
  %142 = load i32, i32* %cr_is_complex, align 4, !dbg !2136, !tbaa !900
  %tobool186 = icmp ne i32 %142, 0, !dbg !2136
  br i1 %tobool186, label %if.then.187, label %if.end.190, !dbg !2138

if.then.187:                                      ; preds = %if.end.185
  %imag188 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 1, !dbg !2139
  %143 = load double, double* %imag188, align 8, !dbg !2139, !tbaa !802
  %real189 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 0, !dbg !2141
  %144 = load double, double* %real189, align 8, !dbg !2142, !tbaa !792
  %add = fadd double %144, %143, !dbg !2142
  store double %add, double* %real189, align 8, !dbg !2142, !tbaa !792
  br label %if.end.190, !dbg !2143

if.end.190:                                       ; preds = %if.then.187, %if.end.185
  %145 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2144, !tbaa !1191
  %real191 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cr, i32 0, i32 0, !dbg !2145
  %146 = load double, double* %real191, align 8, !dbg !2145, !tbaa !792
  %real192 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %ci, i32 0, i32 0, !dbg !2146
  %147 = load double, double* %real192, align 8, !dbg !2146, !tbaa !792
  %call193 = call %struct._object* @complex_subtype_from_doubles(%struct._typeobject* %145, double %146, double %147), !dbg !2147
  store %struct._object* %call193, %struct._object** %retval, !dbg !2148
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2148

cleanup:                                          ; preds = %if.end.190, %if.then.162, %do.end.129, %if.then.108, %if.end.64, %if.then.34, %if.then.27, %if.end.18, %if.then.17, %if.then.11, %if.then
  %148 = bitcast i32* %ci_is_complex to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 4, i8* %148) #2, !dbg !2149
  %149 = bitcast i32* %cr_is_complex to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 4, i8* %149) #2, !dbg !2149
  %150 = bitcast i32* %own_r to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 4, i8* %150) #2, !dbg !2149
  %151 = bitcast %struct.Py_complex* %ci to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 16, i8* %151) #2, !dbg !2149
  %152 = bitcast %struct.Py_complex* %cr to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 16, i8* %152) #2, !dbg !2149
  %153 = bitcast %struct.PyNumberMethods** %nbi to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 8, i8* %153) #2, !dbg !2149
  %154 = bitcast %struct.PyNumberMethods** %nbr to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 8, i8* %154) #2, !dbg !2149
  %155 = bitcast %struct._object** %tmp to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 8, i8* %155) #2, !dbg !2149
  %156 = bitcast %struct._object** %i to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 8, i8* %156) #2, !dbg !2149
  %157 = bitcast %struct._object** %r to i8*, !dbg !2149
  call void @llvm.lifetime.end(i64 8, i8* %157) #2, !dbg !2149
  %158 = load %struct._object*, %struct._object** %retval, !dbg !2149
  ret %struct._object* %158, !dbg !2149
}

declare void @PyObject_Free(i8*) #5

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #5

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #5

declare void @PyErr_SetString(%struct._object*, i8*) #5

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #3

declare i8* @PyOS_double_to_string(double, i8 signext, i32, i32, i32*) #5

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #5

declare void @PyMem_Free(i8*) #5

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_add(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %result = alloca %struct.Py_complex, align 8
  %a = alloca %struct.Py_complex, align 8
  %b = alloca %struct.Py_complex, align 8
  %cleanup.dest.slot = alloca i32
  %coerce = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !510, metadata !786), !dbg !2150
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !511, metadata !786), !dbg !2151
  %0 = bitcast %struct.Py_complex* %result to i8*, !dbg !2152
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2152
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %result, metadata !512, metadata !786), !dbg !2153
  %1 = bitcast %struct.Py_complex* %a to i8*, !dbg !2154
  call void @llvm.lifetime.start(i64 16, i8* %1) #2, !dbg !2154
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !513, metadata !786), !dbg !2155
  %2 = bitcast %struct.Py_complex* %b to i8*, !dbg !2154
  call void @llvm.lifetime.start(i64 16, i8* %2) #2, !dbg !2154
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !514, metadata !786), !dbg !2156
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2157, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2159
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2159, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %4, @PyComplex_Type, !dbg !2160
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2161

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2162, !tbaa !1191
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2164
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2164, !tbaa !1203
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyComplex_Type), !dbg !2165
  %tobool = icmp ne i32 %call, 0, !dbg !2165
  br i1 %tobool, label %if.then, label %if.else, !dbg !2166

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2167, !tbaa !1191
  %8 = bitcast %struct._object* %7 to %struct.PyComplexObject*, !dbg !2170
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %8, i32 0, i32 1, !dbg !2171
  %9 = bitcast %struct.Py_complex* %a to i8*, !dbg !2171
  %10 = bitcast %struct.Py_complex* %cval to i8*, !dbg !2171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !dbg !2171, !tbaa.struct !808
  br label %if.end.5, !dbg !2172

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a), !dbg !2173
  %cmp3 = icmp slt i32 %call2, 0, !dbg !2176
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !2177

if.then.4:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2178, !tbaa !1191
  store %struct._object* %11, %struct._object** %retval, !dbg !2180
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2180

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2181, !tbaa !1191
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2183
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2183, !tbaa !1203
  %cmp7 = icmp eq %struct._typeobject* %13, @PyComplex_Type, !dbg !2184
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2185

lor.lhs.false.8:                                  ; preds = %if.end.5
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2186, !tbaa !1191
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2188
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2188, !tbaa !1203
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %15, %struct._typeobject* @PyComplex_Type), !dbg !2189
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2189
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !2190

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %16 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2191, !tbaa !1191
  %17 = bitcast %struct._object* %16 to %struct.PyComplexObject*, !dbg !2194
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %17, i32 0, i32 1, !dbg !2195
  %18 = bitcast %struct.Py_complex* %b to i8*, !dbg !2195
  %19 = bitcast %struct.Py_complex* %cval13 to i8*, !dbg !2195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !dbg !2195, !tbaa.struct !808
  br label %if.end.19, !dbg !2196

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b), !dbg !2197
  %cmp16 = icmp slt i32 %call15, 0, !dbg !2200
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2201

if.then.17:                                       ; preds = %if.else.14
  %20 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2202, !tbaa !1191
  store %struct._object* %20, %struct._object** %retval, !dbg !2204
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2204

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %21 = bitcast %struct.Py_complex* %a to { double, double }*, !dbg !2205
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0, !dbg !2205
  %23 = load double, double* %22, align 1, !dbg !2205
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1, !dbg !2205
  %25 = load double, double* %24, align 1, !dbg !2205
  %26 = bitcast %struct.Py_complex* %b to { double, double }*, !dbg !2205
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0, !dbg !2205
  %28 = load double, double* %27, align 1, !dbg !2205
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1, !dbg !2205
  %30 = load double, double* %29, align 1, !dbg !2205
  %call20 = call { double, double } @_Py_c_sum(double %23, double %25, double %28, double %30), !dbg !2205
  %31 = bitcast %struct.Py_complex* %coerce to { double, double }*, !dbg !2205
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0, !dbg !2205
  %33 = extractvalue { double, double } %call20, 0, !dbg !2205
  store double %33, double* %32, align 8, !dbg !2205
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1, !dbg !2205
  %35 = extractvalue { double, double } %call20, 1, !dbg !2205
  store double %35, double* %34, align 8, !dbg !2205
  %36 = bitcast %struct.Py_complex* %result to i8*, !dbg !2205
  %37 = bitcast %struct.Py_complex* %coerce to i8*, !dbg !2205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !dbg !2205, !tbaa.struct !808
  %38 = bitcast %struct.Py_complex* %result to { double, double }*, !dbg !2206
  %39 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 0, !dbg !2206
  %40 = load double, double* %39, align 1, !dbg !2206
  %41 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 1, !dbg !2206
  %42 = load double, double* %41, align 1, !dbg !2206
  %call21 = call %struct._object* @PyComplex_FromCComplex(double %40, double %42), !dbg !2206
  store %struct._object* %call21, %struct._object** %retval, !dbg !2207
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2207

cleanup:                                          ; preds = %if.end.19, %if.then.17, %if.then.4
  %43 = bitcast %struct.Py_complex* %b to i8*, !dbg !2208
  call void @llvm.lifetime.end(i64 16, i8* %43) #2, !dbg !2208
  %44 = bitcast %struct.Py_complex* %a to i8*, !dbg !2208
  call void @llvm.lifetime.end(i64 16, i8* %44) #2, !dbg !2208
  %45 = bitcast %struct.Py_complex* %result to i8*, !dbg !2208
  call void @llvm.lifetime.end(i64 16, i8* %45) #2, !dbg !2208
  %46 = load %struct._object*, %struct._object** %retval, !dbg !2208
  ret %struct._object* %46, !dbg !2208
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
  %cleanup.dest.slot = alloca i32
  %coerce = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !526, metadata !786), !dbg !2209
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !527, metadata !786), !dbg !2210
  %0 = bitcast %struct.Py_complex* %result to i8*, !dbg !2211
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2211
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %result, metadata !528, metadata !786), !dbg !2212
  %1 = bitcast %struct.Py_complex* %a to i8*, !dbg !2213
  call void @llvm.lifetime.start(i64 16, i8* %1) #2, !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !529, metadata !786), !dbg !2214
  %2 = bitcast %struct.Py_complex* %b to i8*, !dbg !2213
  call void @llvm.lifetime.start(i64 16, i8* %2) #2, !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !530, metadata !786), !dbg !2215
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2216, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2218
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2218, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %4, @PyComplex_Type, !dbg !2219
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2220

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2221, !tbaa !1191
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2223
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2223, !tbaa !1203
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyComplex_Type), !dbg !2224
  %tobool = icmp ne i32 %call, 0, !dbg !2224
  br i1 %tobool, label %if.then, label %if.else, !dbg !2225

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2226, !tbaa !1191
  %8 = bitcast %struct._object* %7 to %struct.PyComplexObject*, !dbg !2229
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %8, i32 0, i32 1, !dbg !2230
  %9 = bitcast %struct.Py_complex* %a to i8*, !dbg !2230
  %10 = bitcast %struct.Py_complex* %cval to i8*, !dbg !2230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !dbg !2230, !tbaa.struct !808
  br label %if.end.5, !dbg !2231

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a), !dbg !2232
  %cmp3 = icmp slt i32 %call2, 0, !dbg !2235
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !2236

if.then.4:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2237, !tbaa !1191
  store %struct._object* %11, %struct._object** %retval, !dbg !2239
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2239

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2240, !tbaa !1191
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2242
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2242, !tbaa !1203
  %cmp7 = icmp eq %struct._typeobject* %13, @PyComplex_Type, !dbg !2243
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2244

lor.lhs.false.8:                                  ; preds = %if.end.5
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2245, !tbaa !1191
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2247
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2247, !tbaa !1203
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %15, %struct._typeobject* @PyComplex_Type), !dbg !2248
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2248
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !2249

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %16 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2250, !tbaa !1191
  %17 = bitcast %struct._object* %16 to %struct.PyComplexObject*, !dbg !2253
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %17, i32 0, i32 1, !dbg !2254
  %18 = bitcast %struct.Py_complex* %b to i8*, !dbg !2254
  %19 = bitcast %struct.Py_complex* %cval13 to i8*, !dbg !2254
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !dbg !2254, !tbaa.struct !808
  br label %if.end.19, !dbg !2255

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b), !dbg !2256
  %cmp16 = icmp slt i32 %call15, 0, !dbg !2259
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2260

if.then.17:                                       ; preds = %if.else.14
  %20 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2261, !tbaa !1191
  store %struct._object* %20, %struct._object** %retval, !dbg !2263
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2263

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %21 = bitcast %struct.Py_complex* %a to { double, double }*, !dbg !2264
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0, !dbg !2264
  %23 = load double, double* %22, align 1, !dbg !2264
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1, !dbg !2264
  %25 = load double, double* %24, align 1, !dbg !2264
  %26 = bitcast %struct.Py_complex* %b to { double, double }*, !dbg !2264
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0, !dbg !2264
  %28 = load double, double* %27, align 1, !dbg !2264
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1, !dbg !2264
  %30 = load double, double* %29, align 1, !dbg !2264
  %call20 = call { double, double } @_Py_c_diff(double %23, double %25, double %28, double %30), !dbg !2264
  %31 = bitcast %struct.Py_complex* %coerce to { double, double }*, !dbg !2264
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0, !dbg !2264
  %33 = extractvalue { double, double } %call20, 0, !dbg !2264
  store double %33, double* %32, align 8, !dbg !2264
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1, !dbg !2264
  %35 = extractvalue { double, double } %call20, 1, !dbg !2264
  store double %35, double* %34, align 8, !dbg !2264
  %36 = bitcast %struct.Py_complex* %result to i8*, !dbg !2264
  %37 = bitcast %struct.Py_complex* %coerce to i8*, !dbg !2264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !dbg !2264, !tbaa.struct !808
  %38 = bitcast %struct.Py_complex* %result to { double, double }*, !dbg !2265
  %39 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 0, !dbg !2265
  %40 = load double, double* %39, align 1, !dbg !2265
  %41 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 1, !dbg !2265
  %42 = load double, double* %41, align 1, !dbg !2265
  %call21 = call %struct._object* @PyComplex_FromCComplex(double %40, double %42), !dbg !2265
  store %struct._object* %call21, %struct._object** %retval, !dbg !2266
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2266

cleanup:                                          ; preds = %if.end.19, %if.then.17, %if.then.4
  %43 = bitcast %struct.Py_complex* %b to i8*, !dbg !2267
  call void @llvm.lifetime.end(i64 16, i8* %43) #2, !dbg !2267
  %44 = bitcast %struct.Py_complex* %a to i8*, !dbg !2267
  call void @llvm.lifetime.end(i64 16, i8* %44) #2, !dbg !2267
  %45 = bitcast %struct.Py_complex* %result to i8*, !dbg !2267
  call void @llvm.lifetime.end(i64 16, i8* %45) #2, !dbg !2267
  %46 = load %struct._object*, %struct._object** %retval, !dbg !2267
  ret %struct._object* %46, !dbg !2267
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
  %cleanup.dest.slot = alloca i32
  %coerce = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !533, metadata !786), !dbg !2268
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !534, metadata !786), !dbg !2269
  %0 = bitcast %struct.Py_complex* %result to i8*, !dbg !2270
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2270
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %result, metadata !535, metadata !786), !dbg !2271
  %1 = bitcast %struct.Py_complex* %a to i8*, !dbg !2272
  call void @llvm.lifetime.start(i64 16, i8* %1) #2, !dbg !2272
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !536, metadata !786), !dbg !2273
  %2 = bitcast %struct.Py_complex* %b to i8*, !dbg !2272
  call void @llvm.lifetime.start(i64 16, i8* %2) #2, !dbg !2272
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !537, metadata !786), !dbg !2274
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2275, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2277
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2277, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %4, @PyComplex_Type, !dbg !2278
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2279

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2280, !tbaa !1191
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2282
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2282, !tbaa !1203
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyComplex_Type), !dbg !2283
  %tobool = icmp ne i32 %call, 0, !dbg !2283
  br i1 %tobool, label %if.then, label %if.else, !dbg !2284

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2285, !tbaa !1191
  %8 = bitcast %struct._object* %7 to %struct.PyComplexObject*, !dbg !2288
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %8, i32 0, i32 1, !dbg !2289
  %9 = bitcast %struct.Py_complex* %a to i8*, !dbg !2289
  %10 = bitcast %struct.Py_complex* %cval to i8*, !dbg !2289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !dbg !2289, !tbaa.struct !808
  br label %if.end.5, !dbg !2290

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a), !dbg !2291
  %cmp3 = icmp slt i32 %call2, 0, !dbg !2294
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !2295

if.then.4:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2296, !tbaa !1191
  store %struct._object* %11, %struct._object** %retval, !dbg !2298
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2298

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2299, !tbaa !1191
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2301
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2301, !tbaa !1203
  %cmp7 = icmp eq %struct._typeobject* %13, @PyComplex_Type, !dbg !2302
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2303

lor.lhs.false.8:                                  ; preds = %if.end.5
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2304, !tbaa !1191
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2306
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2306, !tbaa !1203
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %15, %struct._typeobject* @PyComplex_Type), !dbg !2307
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2307
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !2308

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %16 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2309, !tbaa !1191
  %17 = bitcast %struct._object* %16 to %struct.PyComplexObject*, !dbg !2312
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %17, i32 0, i32 1, !dbg !2313
  %18 = bitcast %struct.Py_complex* %b to i8*, !dbg !2313
  %19 = bitcast %struct.Py_complex* %cval13 to i8*, !dbg !2313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !dbg !2313, !tbaa.struct !808
  br label %if.end.19, !dbg !2314

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b), !dbg !2315
  %cmp16 = icmp slt i32 %call15, 0, !dbg !2318
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2319

if.then.17:                                       ; preds = %if.else.14
  %20 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2320, !tbaa !1191
  store %struct._object* %20, %struct._object** %retval, !dbg !2322
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2322

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %21 = bitcast %struct.Py_complex* %a to { double, double }*, !dbg !2323
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0, !dbg !2323
  %23 = load double, double* %22, align 1, !dbg !2323
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1, !dbg !2323
  %25 = load double, double* %24, align 1, !dbg !2323
  %26 = bitcast %struct.Py_complex* %b to { double, double }*, !dbg !2323
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0, !dbg !2323
  %28 = load double, double* %27, align 1, !dbg !2323
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1, !dbg !2323
  %30 = load double, double* %29, align 1, !dbg !2323
  %call20 = call { double, double } @_Py_c_prod(double %23, double %25, double %28, double %30), !dbg !2323
  %31 = bitcast %struct.Py_complex* %coerce to { double, double }*, !dbg !2323
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0, !dbg !2323
  %33 = extractvalue { double, double } %call20, 0, !dbg !2323
  store double %33, double* %32, align 8, !dbg !2323
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1, !dbg !2323
  %35 = extractvalue { double, double } %call20, 1, !dbg !2323
  store double %35, double* %34, align 8, !dbg !2323
  %36 = bitcast %struct.Py_complex* %result to i8*, !dbg !2323
  %37 = bitcast %struct.Py_complex* %coerce to i8*, !dbg !2323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !dbg !2323, !tbaa.struct !808
  %38 = bitcast %struct.Py_complex* %result to { double, double }*, !dbg !2324
  %39 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 0, !dbg !2324
  %40 = load double, double* %39, align 1, !dbg !2324
  %41 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 1, !dbg !2324
  %42 = load double, double* %41, align 1, !dbg !2324
  %call21 = call %struct._object* @PyComplex_FromCComplex(double %40, double %42), !dbg !2324
  store %struct._object* %call21, %struct._object** %retval, !dbg !2325
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2325

cleanup:                                          ; preds = %if.end.19, %if.then.17, %if.then.4
  %43 = bitcast %struct.Py_complex* %b to i8*, !dbg !2326
  call void @llvm.lifetime.end(i64 16, i8* %43) #2, !dbg !2326
  %44 = bitcast %struct.Py_complex* %a to i8*, !dbg !2326
  call void @llvm.lifetime.end(i64 16, i8* %44) #2, !dbg !2326
  %45 = bitcast %struct.Py_complex* %result to i8*, !dbg !2326
  call void @llvm.lifetime.end(i64 16, i8* %45) #2, !dbg !2326
  %46 = load %struct._object*, %struct._object** %retval, !dbg !2326
  ret %struct._object* %46, !dbg !2326
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_remainder(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !540, metadata !786), !dbg !2327
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !541, metadata !786), !dbg !2328
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2329, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0)), !dbg !2330
  ret %struct._object* null, !dbg !2331
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_divmod(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !544, metadata !786), !dbg !2332
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !545, metadata !786), !dbg !2333
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2334, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0)), !dbg !2335
  ret %struct._object* null, !dbg !2336
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
  %cleanup.dest.slot = alloca i32
  %coerce = alloca %struct.Py_complex, align 8
  %coerce34 = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !548, metadata !786), !dbg !2337
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !549, metadata !786), !dbg !2338
  store %struct._object* %z, %struct._object** %z.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %z.addr, metadata !550, metadata !786), !dbg !2339
  %0 = bitcast %struct.Py_complex* %p to i8*, !dbg !2340
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2340
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %p, metadata !551, metadata !786), !dbg !2341
  %1 = bitcast %struct.Py_complex* %exponent to i8*, !dbg !2342
  call void @llvm.lifetime.start(i64 16, i8* %1) #2, !dbg !2342
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %exponent, metadata !552, metadata !786), !dbg !2343
  %2 = bitcast i64* %int_exponent to i8*, !dbg !2344
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2344
  call void @llvm.dbg.declare(metadata i64* %int_exponent, metadata !553, metadata !786), !dbg !2345
  %3 = bitcast %struct.Py_complex* %a to i8*, !dbg !2346
  call void @llvm.lifetime.start(i64 16, i8* %3) #2, !dbg !2346
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !554, metadata !786), !dbg !2347
  %4 = bitcast %struct.Py_complex* %b to i8*, !dbg !2346
  call void @llvm.lifetime.start(i64 16, i8* %4) #2, !dbg !2346
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !555, metadata !786), !dbg !2348
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2349, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2351
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2351, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %6, @PyComplex_Type, !dbg !2352
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2353

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2354, !tbaa !1191
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2356
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2356, !tbaa !1203
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PyComplex_Type), !dbg !2357
  %tobool = icmp ne i32 %call, 0, !dbg !2357
  br i1 %tobool, label %if.then, label %if.else, !dbg !2358

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2359, !tbaa !1191
  %10 = bitcast %struct._object* %9 to %struct.PyComplexObject*, !dbg !2362
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %10, i32 0, i32 1, !dbg !2363
  %11 = bitcast %struct.Py_complex* %a to i8*, !dbg !2363
  %12 = bitcast %struct.Py_complex* %cval to i8*, !dbg !2363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !dbg !2363, !tbaa.struct !808
  br label %if.end.5, !dbg !2364

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a), !dbg !2365
  %cmp3 = icmp slt i32 %call2, 0, !dbg !2368
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !2369

if.then.4:                                        ; preds = %if.else
  %13 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2370, !tbaa !1191
  store %struct._object* %13, %struct._object** %retval, !dbg !2372
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2372

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2373, !tbaa !1191
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2375
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2375, !tbaa !1203
  %cmp7 = icmp eq %struct._typeobject* %15, @PyComplex_Type, !dbg !2376
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2377

lor.lhs.false.8:                                  ; preds = %if.end.5
  %16 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2378, !tbaa !1191
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2380
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2380, !tbaa !1203
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %17, %struct._typeobject* @PyComplex_Type), !dbg !2381
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2381
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !2382

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %18 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2383, !tbaa !1191
  %19 = bitcast %struct._object* %18 to %struct.PyComplexObject*, !dbg !2386
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %19, i32 0, i32 1, !dbg !2387
  %20 = bitcast %struct.Py_complex* %b to i8*, !dbg !2387
  %21 = bitcast %struct.Py_complex* %cval13 to i8*, !dbg !2387
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false), !dbg !2387, !tbaa.struct !808
  br label %if.end.19, !dbg !2388

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b), !dbg !2389
  %cmp16 = icmp slt i32 %call15, 0, !dbg !2392
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2393

if.then.17:                                       ; preds = %if.else.14
  %22 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2394, !tbaa !1191
  store %struct._object* %22, %struct._object** %retval, !dbg !2396
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2396

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %23 = load %struct._object*, %struct._object** %z.addr, align 8, !dbg !2397, !tbaa !1191
  %cmp20 = icmp ne %struct._object* %23, @_Py_NoneStruct, !dbg !2399
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !2400

if.then.21:                                       ; preds = %if.end.19
  %24 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2401, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)), !dbg !2403
  store %struct._object* null, %struct._object** %retval, !dbg !2404
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2404

if.end.22:                                        ; preds = %if.end.19
  %call23 = call i32* @__errno_location() #1, !dbg !2405
  store i32 0, i32* %call23, align 4, !dbg !2406, !tbaa !900
  %25 = bitcast %struct.Py_complex* %exponent to i8*, !dbg !2407
  %26 = bitcast %struct.Py_complex* %b to i8*, !dbg !2407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !dbg !2407, !tbaa.struct !808
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %exponent, i32 0, i32 0, !dbg !2408
  %27 = load double, double* %real, align 8, !dbg !2408, !tbaa !792
  %conv = fptosi double %27 to i64, !dbg !2409
  store i64 %conv, i64* %int_exponent, align 8, !dbg !2410, !tbaa !1542
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %exponent, i32 0, i32 1, !dbg !2411
  %28 = load double, double* %imag, align 8, !dbg !2411, !tbaa !802
  %cmp24 = fcmp oeq double %28, 0.000000e+00, !dbg !2413
  br i1 %cmp24, label %land.lhs.true, label %if.else.32, !dbg !2414

land.lhs.true:                                    ; preds = %if.end.22
  %real26 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %exponent, i32 0, i32 0, !dbg !2415
  %29 = load double, double* %real26, align 8, !dbg !2415, !tbaa !792
  %30 = load i64, i64* %int_exponent, align 8, !dbg !2417, !tbaa !1542
  %conv27 = sitofp i64 %30 to double, !dbg !2417
  %cmp28 = fcmp oeq double %29, %conv27, !dbg !2418
  br i1 %cmp28, label %if.then.30, label %if.else.32, !dbg !2419

if.then.30:                                       ; preds = %land.lhs.true
  %31 = load i64, i64* %int_exponent, align 8, !dbg !2420, !tbaa !1542
  %32 = bitcast %struct.Py_complex* %a to { double, double }*, !dbg !2421
  %33 = getelementptr { double, double }, { double, double }* %32, i32 0, i32 0, !dbg !2421
  %34 = load double, double* %33, align 1, !dbg !2421
  %35 = getelementptr { double, double }, { double, double }* %32, i32 0, i32 1, !dbg !2421
  %36 = load double, double* %35, align 1, !dbg !2421
  %call31 = call { double, double } @c_powi(double %34, double %36, i64 %31), !dbg !2421
  %37 = bitcast %struct.Py_complex* %coerce to { double, double }*, !dbg !2421
  %38 = getelementptr { double, double }, { double, double }* %37, i32 0, i32 0, !dbg !2421
  %39 = extractvalue { double, double } %call31, 0, !dbg !2421
  store double %39, double* %38, align 8, !dbg !2421
  %40 = getelementptr { double, double }, { double, double }* %37, i32 0, i32 1, !dbg !2421
  %41 = extractvalue { double, double } %call31, 1, !dbg !2421
  store double %41, double* %40, align 8, !dbg !2421
  %42 = bitcast %struct.Py_complex* %p to i8*, !dbg !2421
  %43 = bitcast %struct.Py_complex* %coerce to i8*, !dbg !2421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false), !dbg !2421, !tbaa.struct !808
  br label %if.end.35, !dbg !2422

if.else.32:                                       ; preds = %land.lhs.true, %if.end.22
  %44 = bitcast %struct.Py_complex* %a to { double, double }*, !dbg !2423
  %45 = getelementptr { double, double }, { double, double }* %44, i32 0, i32 0, !dbg !2423
  %46 = load double, double* %45, align 1, !dbg !2423
  %47 = getelementptr { double, double }, { double, double }* %44, i32 0, i32 1, !dbg !2423
  %48 = load double, double* %47, align 1, !dbg !2423
  %49 = bitcast %struct.Py_complex* %exponent to { double, double }*, !dbg !2423
  %50 = getelementptr { double, double }, { double, double }* %49, i32 0, i32 0, !dbg !2423
  %51 = load double, double* %50, align 1, !dbg !2423
  %52 = getelementptr { double, double }, { double, double }* %49, i32 0, i32 1, !dbg !2423
  %53 = load double, double* %52, align 1, !dbg !2423
  %call33 = call { double, double } @_Py_c_pow(double %46, double %48, double %51, double %53), !dbg !2423
  %54 = bitcast %struct.Py_complex* %coerce34 to { double, double }*, !dbg !2423
  %55 = getelementptr { double, double }, { double, double }* %54, i32 0, i32 0, !dbg !2423
  %56 = extractvalue { double, double } %call33, 0, !dbg !2423
  store double %56, double* %55, align 8, !dbg !2423
  %57 = getelementptr { double, double }, { double, double }* %54, i32 0, i32 1, !dbg !2423
  %58 = extractvalue { double, double } %call33, 1, !dbg !2423
  store double %58, double* %57, align 8, !dbg !2423
  %59 = bitcast %struct.Py_complex* %p to i8*, !dbg !2423
  %60 = bitcast %struct.Py_complex* %coerce34 to i8*, !dbg !2423
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false), !dbg !2423, !tbaa.struct !808
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.30
  br label %do.body, !dbg !2424

do.body:                                          ; preds = %if.end.35
  %real36 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %p, i32 0, i32 0, !dbg !2425
  %61 = load double, double* %real36, align 8, !dbg !2425, !tbaa !792
  %cmp37 = fcmp oeq double %61, 0x7FF0000000000000, !dbg !2429
  br i1 %cmp37, label %if.then.51, label %lor.lhs.false.39, !dbg !2430

lor.lhs.false.39:                                 ; preds = %do.body
  %real40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %p, i32 0, i32 0, !dbg !2431
  %62 = load double, double* %real40, align 8, !dbg !2431, !tbaa !792
  %cmp41 = fcmp oeq double %62, 0xFFF0000000000000, !dbg !2433
  br i1 %cmp41, label %if.then.51, label %lor.lhs.false.43, !dbg !2434

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.39
  %imag44 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %p, i32 0, i32 1, !dbg !2435
  %63 = load double, double* %imag44, align 8, !dbg !2435, !tbaa !802
  %cmp45 = fcmp oeq double %63, 0x7FF0000000000000, !dbg !2437
  br i1 %cmp45, label %if.then.51, label %lor.lhs.false.47, !dbg !2438

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.43
  %imag48 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %p, i32 0, i32 1, !dbg !2439
  %64 = load double, double* %imag48, align 8, !dbg !2439, !tbaa !802
  %cmp49 = fcmp oeq double %64, 0xFFF0000000000000, !dbg !2441
  br i1 %cmp49, label %if.then.51, label %if.else.58, !dbg !2442

if.then.51:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false.43, %lor.lhs.false.39, %do.body
  %call52 = call i32* @__errno_location() #1, !dbg !2443
  %65 = load i32, i32* %call52, align 4, !dbg !2450, !tbaa !900
  %cmp53 = icmp eq i32 %65, 0, !dbg !2451
  br i1 %cmp53, label %if.then.55, label %if.end.57, !dbg !2452

if.then.55:                                       ; preds = %if.then.51
  %call56 = call i32* @__errno_location() #1, !dbg !2453
  store i32 34, i32* %call56, align 4, !dbg !2455, !tbaa !900
  br label %if.end.57, !dbg !2456

if.end.57:                                        ; preds = %if.then.55, %if.then.51
  br label %if.end.65, !dbg !2457

if.else.58:                                       ; preds = %lor.lhs.false.47
  %call59 = call i32* @__errno_location() #1, !dbg !2460
  %66 = load i32, i32* %call59, align 4, !dbg !2463, !tbaa !900
  %cmp60 = icmp eq i32 %66, 34, !dbg !2464
  br i1 %cmp60, label %if.then.62, label %if.end.64, !dbg !2465

if.then.62:                                       ; preds = %if.else.58
  %call63 = call i32* @__errno_location() #1, !dbg !2466
  store i32 0, i32* %call63, align 4, !dbg !2468, !tbaa !900
  br label %if.end.64, !dbg !2469

if.end.64:                                        ; preds = %if.then.62, %if.else.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.57
  br label %do.cond, !dbg !2470

do.cond:                                          ; preds = %if.end.65
  br label %do.end, !dbg !2472

do.end:                                           ; preds = %do.cond
  %call66 = call i32* @__errno_location() #1, !dbg !2474
  %67 = load i32, i32* %call66, align 4, !dbg !2476, !tbaa !900
  %cmp67 = icmp eq i32 %67, 33, !dbg !2477
  br i1 %cmp67, label %if.then.69, label %if.else.70, !dbg !2478

if.then.69:                                       ; preds = %do.end
  %68 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !2479, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)), !dbg !2481
  store %struct._object* null, %struct._object** %retval, !dbg !2482
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2482

if.else.70:                                       ; preds = %do.end
  %call71 = call i32* @__errno_location() #1, !dbg !2483
  %69 = load i32, i32* %call71, align 4, !dbg !2485, !tbaa !900
  %cmp72 = icmp eq i32 %69, 34, !dbg !2486
  br i1 %cmp72, label %if.then.74, label %if.end.75, !dbg !2487

if.then.74:                                       ; preds = %if.else.70
  %70 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2488, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0)), !dbg !2490
  store %struct._object* null, %struct._object** %retval, !dbg !2491
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2491

if.end.75:                                        ; preds = %if.else.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75
  %71 = bitcast %struct.Py_complex* %p to { double, double }*, !dbg !2492
  %72 = getelementptr { double, double }, { double, double }* %71, i32 0, i32 0, !dbg !2492
  %73 = load double, double* %72, align 1, !dbg !2492
  %74 = getelementptr { double, double }, { double, double }* %71, i32 0, i32 1, !dbg !2492
  %75 = load double, double* %74, align 1, !dbg !2492
  %call77 = call %struct._object* @PyComplex_FromCComplex(double %73, double %75), !dbg !2492
  store %struct._object* %call77, %struct._object** %retval, !dbg !2493
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2493

cleanup:                                          ; preds = %if.end.76, %if.then.74, %if.then.69, %if.then.21, %if.then.17, %if.then.4
  %76 = bitcast %struct.Py_complex* %b to i8*, !dbg !2494
  call void @llvm.lifetime.end(i64 16, i8* %76) #2, !dbg !2494
  %77 = bitcast %struct.Py_complex* %a to i8*, !dbg !2494
  call void @llvm.lifetime.end(i64 16, i8* %77) #2, !dbg !2494
  %78 = bitcast i64* %int_exponent to i8*, !dbg !2494
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !2494
  %79 = bitcast %struct.Py_complex* %exponent to i8*, !dbg !2494
  call void @llvm.lifetime.end(i64 16, i8* %79) #2, !dbg !2494
  %80 = bitcast %struct.Py_complex* %p to i8*, !dbg !2494
  call void @llvm.lifetime.end(i64 16, i8* %80) #2, !dbg !2494
  %81 = load %struct._object*, %struct._object** %retval, !dbg !2494
  ret %struct._object* %81, !dbg !2494
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_neg(%struct.PyComplexObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyComplexObject*, align 8
  %neg = alloca %struct.Py_complex, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct.PyComplexObject** %v.addr, metadata !572, metadata !786), !dbg !2495
  %0 = bitcast %struct.Py_complex* %neg to i8*, !dbg !2496
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2496
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %neg, metadata !573, metadata !786), !dbg !2497
  %1 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2498, !tbaa !1191
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %1, i32 0, i32 1, !dbg !2499
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0, !dbg !2500
  %2 = load double, double* %real, align 8, !dbg !2500, !tbaa !1248
  %sub = fsub double -0.000000e+00, %2, !dbg !2501
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %neg, i32 0, i32 0, !dbg !2502
  store double %sub, double* %real1, align 8, !dbg !2503, !tbaa !792
  %3 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2504, !tbaa !1191
  %cval2 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %3, i32 0, i32 1, !dbg !2505
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval2, i32 0, i32 1, !dbg !2506
  %4 = load double, double* %imag, align 8, !dbg !2506, !tbaa !1272
  %sub3 = fsub double -0.000000e+00, %4, !dbg !2507
  %imag4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %neg, i32 0, i32 1, !dbg !2508
  store double %sub3, double* %imag4, align 8, !dbg !2509, !tbaa !802
  %5 = bitcast %struct.Py_complex* %neg to { double, double }*, !dbg !2510
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0, !dbg !2510
  %7 = load double, double* %6, align 1, !dbg !2510
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1, !dbg !2510
  %9 = load double, double* %8, align 1, !dbg !2510
  %call = call %struct._object* @PyComplex_FromCComplex(double %7, double %9), !dbg !2510
  %10 = bitcast %struct.Py_complex* %neg to i8*, !dbg !2511
  call void @llvm.lifetime.end(i64 16, i8* %10) #2, !dbg !2511
  ret %struct._object* %call, !dbg !2512
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_pos(%struct.PyComplexObject* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct.PyComplexObject*, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct.PyComplexObject** %v.addr, metadata !576, metadata !786), !dbg !2513
  %0 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2514, !tbaa !1191
  %1 = bitcast %struct.PyComplexObject* %0 to %struct._object*, !dbg !2516
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2517
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2517, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %2, @PyComplex_Type, !dbg !2518
  br i1 %cmp, label %if.then, label %if.else, !dbg !2519

if.then:                                          ; preds = %entry
  %3 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2520, !tbaa !1191
  %4 = bitcast %struct.PyComplexObject* %3 to %struct._object*, !dbg !2522
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !2523
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2524, !tbaa !1210
  %inc = add i64 %5, 1, !dbg !2524
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2524, !tbaa !1210
  %6 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2525, !tbaa !1191
  %7 = bitcast %struct.PyComplexObject* %6 to %struct._object*, !dbg !2526
  store %struct._object* %7, %struct._object** %retval, !dbg !2527
  br label %return, !dbg !2527

if.else:                                          ; preds = %entry
  %8 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2528, !tbaa !1191
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %8, i32 0, i32 1, !dbg !2529
  %9 = bitcast %struct.Py_complex* %cval to { double, double }*, !dbg !2530
  %10 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 0, !dbg !2530
  %11 = load double, double* %10, align 1, !dbg !2530
  %12 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 1, !dbg !2530
  %13 = load double, double* %12, align 1, !dbg !2530
  %call = call %struct._object* @PyComplex_FromCComplex(double %11, double %13), !dbg !2530
  store %struct._object* %call, %struct._object** %retval, !dbg !2531
  br label %return, !dbg !2531

return:                                           ; preds = %if.else, %if.then
  %14 = load %struct._object*, %struct._object** %retval, !dbg !2532
  ret %struct._object* %14, !dbg !2532
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_abs(%struct.PyComplexObject* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct.PyComplexObject*, align 8
  %result = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct.PyComplexObject** %v.addr, metadata !579, metadata !786), !dbg !2533
  %0 = bitcast double* %result to i8*, !dbg !2534
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2534
  call void @llvm.dbg.declare(metadata double* %result, metadata !580, metadata !786), !dbg !2535
  %1 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2536, !tbaa !1191
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %1, i32 0, i32 1, !dbg !2537
  %2 = bitcast %struct.Py_complex* %cval to { double, double }*, !dbg !2538
  %3 = getelementptr { double, double }, { double, double }* %2, i32 0, i32 0, !dbg !2538
  %4 = load double, double* %3, align 1, !dbg !2538
  %5 = getelementptr { double, double }, { double, double }* %2, i32 0, i32 1, !dbg !2538
  %6 = load double, double* %5, align 1, !dbg !2538
  %call = call double @_Py_c_abs(double %4, double %6), !dbg !2538
  store double %call, double* %result, align 8, !dbg !2539, !tbaa !809
  %call1 = call i32* @__errno_location() #1, !dbg !2540
  %7 = load i32, i32* %call1, align 4, !dbg !2542, !tbaa !900
  %cmp = icmp eq i32 %7, 34, !dbg !2543
  br i1 %cmp, label %if.then, label %if.end, !dbg !2544

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2545, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)), !dbg !2547
  store %struct._object* null, %struct._object** %retval, !dbg !2548
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2548

if.end:                                           ; preds = %entry
  %9 = load double, double* %result, align 8, !dbg !2549, !tbaa !809
  %call2 = call %struct._object* @PyFloat_FromDouble(double %9), !dbg !2550
  store %struct._object* %call2, %struct._object** %retval, !dbg !2551
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2551

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast double* %result to i8*, !dbg !2552
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !2552
  %11 = load %struct._object*, %struct._object** %retval, !dbg !2552
  ret %struct._object* %11, !dbg !2552
}

; Function Attrs: nounwind uwtable
define internal i32 @complex_bool(%struct.PyComplexObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyComplexObject*, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct.PyComplexObject** %v.addr, metadata !585, metadata !786), !dbg !2553
  %0 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2554, !tbaa !1191
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %0, i32 0, i32 1, !dbg !2555
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval, i32 0, i32 0, !dbg !2556
  %1 = load double, double* %real, align 8, !dbg !2556, !tbaa !1248
  %cmp = fcmp une double %1, 0.000000e+00, !dbg !2557
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2558

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2559, !tbaa !1191
  %cval1 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %2, i32 0, i32 1, !dbg !2561
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cval1, i32 0, i32 1, !dbg !2562
  %3 = load double, double* %imag, align 8, !dbg !2562, !tbaa !1272
  %cmp2 = fcmp une double %3, 0.000000e+00, !dbg !2563
  br label %lor.end, !dbg !2558

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !2564
  ret i32 %lor.ext, !dbg !2567
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_int(%struct._object* %v) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !588, metadata !786), !dbg !2568
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2569, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0)), !dbg !2570
  ret %struct._object* null, !dbg !2571
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_float(%struct._object* %v) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !591, metadata !786), !dbg !2572
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2573, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0)), !dbg !2574
  ret %struct._object* null, !dbg !2575
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_int_div(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !594, metadata !786), !dbg !2576
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !595, metadata !786), !dbg !2577
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2578, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0)), !dbg !2579
  ret %struct._object* null, !dbg !2580
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
  %cleanup.dest.slot = alloca i32
  %coerce = alloca %struct.Py_complex, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !598, metadata !786), !dbg !2581
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !599, metadata !786), !dbg !2582
  %0 = bitcast %struct.Py_complex* %quot to i8*, !dbg !2583
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2583
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %quot, metadata !600, metadata !786), !dbg !2584
  %1 = bitcast %struct.Py_complex* %a to i8*, !dbg !2585
  call void @llvm.lifetime.start(i64 16, i8* %1) #2, !dbg !2585
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %a, metadata !601, metadata !786), !dbg !2586
  %2 = bitcast %struct.Py_complex* %b to i8*, !dbg !2585
  call void @llvm.lifetime.start(i64 16, i8* %2) #2, !dbg !2585
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %b, metadata !602, metadata !786), !dbg !2587
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2588, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2590
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2590, !tbaa !1203
  %cmp = icmp eq %struct._typeobject* %4, @PyComplex_Type, !dbg !2591
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2592

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2593, !tbaa !1191
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2595
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2595, !tbaa !1203
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyComplex_Type), !dbg !2596
  %tobool = icmp ne i32 %call, 0, !dbg !2596
  br i1 %tobool, label %if.then, label %if.else, !dbg !2597

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2598, !tbaa !1191
  %8 = bitcast %struct._object* %7 to %struct.PyComplexObject*, !dbg !2601
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %8, i32 0, i32 1, !dbg !2602
  %9 = bitcast %struct.Py_complex* %a to i8*, !dbg !2602
  %10 = bitcast %struct.Py_complex* %cval to i8*, !dbg !2602
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !dbg !2602, !tbaa.struct !808
  br label %if.end.5, !dbg !2603

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @to_complex(%struct._object** %v.addr, %struct.Py_complex* %a), !dbg !2604
  %cmp3 = icmp slt i32 %call2, 0, !dbg !2607
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !2608

if.then.4:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2609, !tbaa !1191
  store %struct._object* %11, %struct._object** %retval, !dbg !2611
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2611

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2612, !tbaa !1191
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2614
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2614, !tbaa !1203
  %cmp7 = icmp eq %struct._typeobject* %13, @PyComplex_Type, !dbg !2615
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2616

lor.lhs.false.8:                                  ; preds = %if.end.5
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2617, !tbaa !1191
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2619
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2619, !tbaa !1203
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %15, %struct._typeobject* @PyComplex_Type), !dbg !2620
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2620
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !2621

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %16 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2622, !tbaa !1191
  %17 = bitcast %struct._object* %16 to %struct.PyComplexObject*, !dbg !2625
  %cval13 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %17, i32 0, i32 1, !dbg !2626
  %18 = bitcast %struct.Py_complex* %b to i8*, !dbg !2626
  %19 = bitcast %struct.Py_complex* %cval13 to i8*, !dbg !2626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !dbg !2626, !tbaa.struct !808
  br label %if.end.19, !dbg !2627

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @to_complex(%struct._object** %w.addr, %struct.Py_complex* %b), !dbg !2628
  %cmp16 = icmp slt i32 %call15, 0, !dbg !2631
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2632

if.then.17:                                       ; preds = %if.else.14
  %20 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2633, !tbaa !1191
  store %struct._object* %20, %struct._object** %retval, !dbg !2635
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2635

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %call20 = call i32* @__errno_location() #1, !dbg !2636
  store i32 0, i32* %call20, align 4, !dbg !2637, !tbaa !900
  %21 = bitcast %struct.Py_complex* %a to { double, double }*, !dbg !2638
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0, !dbg !2638
  %23 = load double, double* %22, align 1, !dbg !2638
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1, !dbg !2638
  %25 = load double, double* %24, align 1, !dbg !2638
  %26 = bitcast %struct.Py_complex* %b to { double, double }*, !dbg !2638
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0, !dbg !2638
  %28 = load double, double* %27, align 1, !dbg !2638
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1, !dbg !2638
  %30 = load double, double* %29, align 1, !dbg !2638
  %call21 = call { double, double } @_Py_c_quot(double %23, double %25, double %28, double %30), !dbg !2638
  %31 = bitcast %struct.Py_complex* %coerce to { double, double }*, !dbg !2638
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0, !dbg !2638
  %33 = extractvalue { double, double } %call21, 0, !dbg !2638
  store double %33, double* %32, align 8, !dbg !2638
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1, !dbg !2638
  %35 = extractvalue { double, double } %call21, 1, !dbg !2638
  store double %35, double* %34, align 8, !dbg !2638
  %36 = bitcast %struct.Py_complex* %quot to i8*, !dbg !2638
  %37 = bitcast %struct.Py_complex* %coerce to i8*, !dbg !2638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !dbg !2638, !tbaa.struct !808
  %call22 = call i32* @__errno_location() #1, !dbg !2639
  %38 = load i32, i32* %call22, align 4, !dbg !2641, !tbaa !900
  %cmp23 = icmp eq i32 %38, 33, !dbg !2642
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !2643

if.then.24:                                       ; preds = %if.end.19
  %39 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !2644, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)), !dbg !2646
  store %struct._object* null, %struct._object** %retval, !dbg !2647
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2647

if.end.25:                                        ; preds = %if.end.19
  %40 = bitcast %struct.Py_complex* %quot to { double, double }*, !dbg !2648
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0, !dbg !2648
  %42 = load double, double* %41, align 1, !dbg !2648
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1, !dbg !2648
  %44 = load double, double* %43, align 1, !dbg !2648
  %call26 = call %struct._object* @PyComplex_FromCComplex(double %42, double %44), !dbg !2648
  store %struct._object* %call26, %struct._object** %retval, !dbg !2649
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2649

cleanup:                                          ; preds = %if.end.25, %if.then.24, %if.then.17, %if.then.4
  %45 = bitcast %struct.Py_complex* %b to i8*, !dbg !2650
  call void @llvm.lifetime.end(i64 16, i8* %45) #2, !dbg !2650
  %46 = bitcast %struct.Py_complex* %a to i8*, !dbg !2650
  call void @llvm.lifetime.end(i64 16, i8* %46) #2, !dbg !2650
  %47 = bitcast %struct.Py_complex* %quot to i8*, !dbg !2650
  call void @llvm.lifetime.end(i64 16, i8* %47) #2, !dbg !2650
  %48 = load %struct._object*, %struct._object** %retval, !dbg !2650
  ret %struct._object* %48, !dbg !2650
}

; Function Attrs: nounwind uwtable
define internal i32 @to_complex(%struct._object** %pobj, %struct.Py_complex* %pc) #0 {
entry:
  %retval = alloca i32, align 4
  %pobj.addr = alloca %struct._object**, align 8
  %pc.addr = alloca %struct.Py_complex*, align 8
  %obj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object** %pobj, %struct._object*** %pobj.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object*** %pobj.addr, metadata !521, metadata !786), !dbg !2651
  store %struct.Py_complex* %pc, %struct.Py_complex** %pc.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct.Py_complex** %pc.addr, metadata !522, metadata !786), !dbg !2652
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2653
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2653
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !523, metadata !786), !dbg !2654
  %1 = load %struct._object**, %struct._object*** %pobj.addr, align 8, !dbg !2655, !tbaa !1191
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !2656, !tbaa !1191
  store %struct._object* %2, %struct._object** %obj, align 8, !dbg !2654, !tbaa !1191
  %3 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8, !dbg !2657, !tbaa !1191
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %3, i32 0, i32 1, !dbg !2658
  store double 0.000000e+00, double* %imag, align 8, !dbg !2659, !tbaa !802
  %4 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8, !dbg !2660, !tbaa !1191
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %4, i32 0, i32 0, !dbg !2661
  store double 0.000000e+00, double* %real, align 8, !dbg !2662, !tbaa !792
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2663, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2665
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2665, !tbaa !1203
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19, !dbg !2666
  %7 = load i64, i64* %tp_flags, align 8, !dbg !2666, !tbaa !1618
  %and = and i64 %7, 16777216, !dbg !2667
  %cmp = icmp ne i64 %and, 0, !dbg !2668
  br i1 %cmp, label %if.then, label %if.end.6, !dbg !2669

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2670, !tbaa !1191
  %call = call double @PyLong_AsDouble(%struct._object* %8), !dbg !2672
  %9 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8, !dbg !2673, !tbaa !1191
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %9, i32 0, i32 0, !dbg !2674
  store double %call, double* %real1, align 8, !dbg !2675, !tbaa !792
  %10 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8, !dbg !2676, !tbaa !1191
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %10, i32 0, i32 0, !dbg !2678
  %11 = load double, double* %real2, align 8, !dbg !2678, !tbaa !792
  %cmp3 = fcmp oeq double %11, -1.000000e+00, !dbg !2679
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !2680

land.lhs.true:                                    ; preds = %if.then
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !2681
  %tobool = icmp ne %struct._object* %call4, null, !dbg !2681
  br i1 %tobool, label %if.then.5, label %if.end, !dbg !2683

if.then.5:                                        ; preds = %land.lhs.true
  %12 = load %struct._object**, %struct._object*** %pobj.addr, align 8, !dbg !2684, !tbaa !1191
  store %struct._object* null, %struct._object** %12, align 8, !dbg !2686, !tbaa !1191
  store i32 -1, i32* %retval, !dbg !2687
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2687

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %retval, !dbg !2688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2688

if.end.6:                                         ; preds = %entry
  %13 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2689, !tbaa !1191
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2691
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2691, !tbaa !1203
  %cmp8 = icmp eq %struct._typeobject* %14, @PyFloat_Type, !dbg !2692
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false, !dbg !2693

lor.lhs.false:                                    ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2694, !tbaa !1191
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2696
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2696, !tbaa !1203
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %16, %struct._typeobject* @PyFloat_Type), !dbg !2697
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2697
  br i1 %tobool11, label %if.then.12, label %if.end.15, !dbg !2698

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.6
  %17 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2699, !tbaa !1191
  %call13 = call double @PyFloat_AsDouble(%struct._object* %17), !dbg !2701
  %18 = load %struct.Py_complex*, %struct.Py_complex** %pc.addr, align 8, !dbg !2702, !tbaa !1191
  %real14 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %18, i32 0, i32 0, !dbg !2703
  store double %call13, double* %real14, align 8, !dbg !2704, !tbaa !792
  store i32 0, i32* %retval, !dbg !2705
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2705

if.end.15:                                        ; preds = %lor.lhs.false
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2706, !tbaa !1210
  %inc = add i64 %19, 1, !dbg !2706
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2706, !tbaa !1210
  %20 = load %struct._object**, %struct._object*** %pobj.addr, align 8, !dbg !2707, !tbaa !1191
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %20, align 8, !dbg !2708, !tbaa !1191
  store i32 -1, i32* %retval, !dbg !2709
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2709

cleanup:                                          ; preds = %if.end.15, %if.then.12, %if.end, %if.then.5
  %21 = bitcast %struct._object** %obj to i8*, !dbg !2710
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !2710
  %22 = load i32, i32* %retval, !dbg !2710
  ret i32 %22, !dbg !2710
}

declare double @PyLong_AsDouble(%struct._object*) #5

; Function Attrs: nounwind uwtable
define internal { double, double } @c_powi(double %x.coerce0, double %x.coerce1, i64 %n) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %x = alloca %struct.Py_complex, align 8
  %n.addr = alloca i64, align 8
  %cn = alloca %struct.Py_complex, align 8
  %cleanup.dest.slot = alloca i32
  %agg.tmp = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %x to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %x.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %x.coerce1, double* %2
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %x, metadata !560, metadata !786), !dbg !2711
  store i64 %n, i64* %n.addr, align 8, !tbaa !1542
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !561, metadata !786), !dbg !2712
  %3 = bitcast %struct.Py_complex* %cn to i8*, !dbg !2713
  call void @llvm.lifetime.start(i64 16, i8* %3) #2, !dbg !2713
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %cn, metadata !562, metadata !786), !dbg !2714
  %4 = load i64, i64* %n.addr, align 8, !dbg !2715, !tbaa !1542
  %cmp = icmp sgt i64 %4, 100, !dbg !2717
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2718

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %n.addr, align 8, !dbg !2719, !tbaa !1542
  %cmp1 = icmp slt i64 %5, -100, !dbg !2721
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2722

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i64, i64* %n.addr, align 8, !dbg !2723, !tbaa !1542
  %conv = sitofp i64 %6 to double, !dbg !2725
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cn, i32 0, i32 0, !dbg !2726
  store double %conv, double* %real, align 8, !dbg !2727, !tbaa !792
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %cn, i32 0, i32 1, !dbg !2728
  store double 0.000000e+00, double* %imag, align 8, !dbg !2729, !tbaa !802
  %7 = bitcast %struct.Py_complex* %x to { double, double }*, !dbg !2730
  %8 = getelementptr { double, double }, { double, double }* %7, i32 0, i32 0, !dbg !2730
  %9 = load double, double* %8, align 1, !dbg !2730
  %10 = getelementptr { double, double }, { double, double }* %7, i32 0, i32 1, !dbg !2730
  %11 = load double, double* %10, align 1, !dbg !2730
  %12 = bitcast %struct.Py_complex* %cn to { double, double }*, !dbg !2730
  %13 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 0, !dbg !2730
  %14 = load double, double* %13, align 1, !dbg !2730
  %15 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 1, !dbg !2730
  %16 = load double, double* %15, align 1, !dbg !2730
  %call = call { double, double } @_Py_c_pow(double %9, double %11, double %14, double %16), !dbg !2730
  %17 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !2730
  %18 = getelementptr { double, double }, { double, double }* %17, i32 0, i32 0, !dbg !2730
  %19 = extractvalue { double, double } %call, 0, !dbg !2730
  store double %19, double* %18, align 8, !dbg !2730
  %20 = getelementptr { double, double }, { double, double }* %17, i32 0, i32 1, !dbg !2730
  %21 = extractvalue { double, double } %call, 1, !dbg !2730
  store double %21, double* %20, align 8, !dbg !2730
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2731

if.else:                                          ; preds = %lor.lhs.false
  %22 = load i64, i64* %n.addr, align 8, !dbg !2732, !tbaa !1542
  %cmp2 = icmp sgt i64 %22, 0, !dbg !2734
  br i1 %cmp2, label %if.then.4, label %if.else.6, !dbg !2735

if.then.4:                                        ; preds = %if.else
  %23 = load i64, i64* %n.addr, align 8, !dbg !2736, !tbaa !1542
  %24 = bitcast %struct.Py_complex* %x to { double, double }*, !dbg !2737
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0, !dbg !2737
  %26 = load double, double* %25, align 1, !dbg !2737
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1, !dbg !2737
  %28 = load double, double* %27, align 1, !dbg !2737
  %call5 = call { double, double } @c_powu(double %26, double %28, i64 %23), !dbg !2737
  %29 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !2737
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0, !dbg !2737
  %31 = extractvalue { double, double } %call5, 0, !dbg !2737
  store double %31, double* %30, align 8, !dbg !2737
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1, !dbg !2737
  %33 = extractvalue { double, double } %call5, 1, !dbg !2737
  store double %33, double* %32, align 8, !dbg !2737
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2738

if.else.6:                                        ; preds = %if.else
  %34 = load i64, i64* %n.addr, align 8, !dbg !2739, !tbaa !1542
  %sub = sub i64 0, %34, !dbg !2740
  %35 = bitcast %struct.Py_complex* %x to { double, double }*, !dbg !2741
  %36 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 0, !dbg !2741
  %37 = load double, double* %36, align 1, !dbg !2741
  %38 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 1, !dbg !2741
  %39 = load double, double* %38, align 1, !dbg !2741
  %call7 = call { double, double } @c_powu(double %37, double %39, i64 %sub), !dbg !2741
  %40 = bitcast %struct.Py_complex* %agg.tmp to { double, double }*, !dbg !2741
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0, !dbg !2741
  %42 = extractvalue { double, double } %call7, 0, !dbg !2741
  store double %42, double* %41, align 8, !dbg !2741
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1, !dbg !2741
  %44 = extractvalue { double, double } %call7, 1, !dbg !2741
  store double %44, double* %43, align 8, !dbg !2741
  %45 = load double, double* getelementptr ({ double, double }, { double, double }* bitcast (%struct.Py_complex* @c_1 to { double, double }*), i32 0, i32 0), align 1, !dbg !2742
  %46 = load double, double* getelementptr ({ double, double }, { double, double }* bitcast (%struct.Py_complex* @c_1 to { double, double }*), i32 0, i32 1), align 1, !dbg !2742
  %47 = bitcast %struct.Py_complex* %agg.tmp to { double, double }*, !dbg !2742
  %48 = getelementptr { double, double }, { double, double }* %47, i32 0, i32 0, !dbg !2742
  %49 = load double, double* %48, align 1, !dbg !2742
  %50 = getelementptr { double, double }, { double, double }* %47, i32 0, i32 1, !dbg !2742
  %51 = load double, double* %50, align 1, !dbg !2742
  %call8 = call { double, double } @_Py_c_quot(double %45, double %46, double %49, double %51), !dbg !2742
  %52 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !2742
  %53 = getelementptr { double, double }, { double, double }* %52, i32 0, i32 0, !dbg !2742
  %54 = extractvalue { double, double } %call8, 0, !dbg !2742
  store double %54, double* %53, align 8, !dbg !2742
  %55 = getelementptr { double, double }, { double, double }* %52, i32 0, i32 1, !dbg !2742
  %56 = extractvalue { double, double } %call8, 1, !dbg !2742
  store double %56, double* %55, align 8, !dbg !2742
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2743

cleanup:                                          ; preds = %if.else.6, %if.then.4, %if.then
  %57 = bitcast %struct.Py_complex* %cn to i8*, !dbg !2744
  call void @llvm.lifetime.end(i64 16, i8* %57) #2, !dbg !2744
  %58 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !2744
  %59 = load { double, double }, { double, double }* %58, align 8, !dbg !2744
  ret { double, double } %59, !dbg !2744
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
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %x, metadata !565, metadata !786), !dbg !2745
  store i64 %n, i64* %n.addr, align 8, !tbaa !1542
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !566, metadata !786), !dbg !2746
  %3 = bitcast %struct.Py_complex* %r to i8*, !dbg !2747
  call void @llvm.lifetime.start(i64 16, i8* %3) #2, !dbg !2747
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %r, metadata !567, metadata !786), !dbg !2748
  %4 = bitcast %struct.Py_complex* %p to i8*, !dbg !2747
  call void @llvm.lifetime.start(i64 16, i8* %4) #2, !dbg !2747
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %p, metadata !568, metadata !786), !dbg !2749
  %5 = bitcast i64* %mask to i8*, !dbg !2750
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2750
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !569, metadata !786), !dbg !2751
  store i64 1, i64* %mask, align 8, !dbg !2751, !tbaa !1542
  %6 = bitcast %struct.Py_complex* %r to i8*, !dbg !2752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.Py_complex* @c_1 to i8*), i64 16, i32 8, i1 false), !dbg !2752, !tbaa.struct !808
  %7 = bitcast %struct.Py_complex* %p to i8*, !dbg !2753
  %8 = bitcast %struct.Py_complex* %x to i8*, !dbg !2753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false), !dbg !2753, !tbaa.struct !808
  br label %while.cond, !dbg !2754

while.cond:                                       ; preds = %if.end, %entry
  %9 = load i64, i64* %mask, align 8, !dbg !2755, !tbaa !1542
  %cmp = icmp sgt i64 %9, 0, !dbg !2758
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2759

land.rhs:                                         ; preds = %while.cond
  %10 = load i64, i64* %n.addr, align 8, !dbg !2760, !tbaa !1542
  %11 = load i64, i64* %mask, align 8, !dbg !2762, !tbaa !1542
  %cmp1 = icmp sge i64 %10, %11, !dbg !2763
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %12, label %while.body, label %while.end, !dbg !2764

while.body:                                       ; preds = %land.end
  %13 = load i64, i64* %n.addr, align 8, !dbg !2766, !tbaa !1542
  %14 = load i64, i64* %mask, align 8, !dbg !2769, !tbaa !1542
  %and = and i64 %13, %14, !dbg !2770
  %tobool = icmp ne i64 %and, 0, !dbg !2770
  br i1 %tobool, label %if.then, label %if.end, !dbg !2771

if.then:                                          ; preds = %while.body
  %15 = bitcast %struct.Py_complex* %r to { double, double }*, !dbg !2772
  %16 = getelementptr { double, double }, { double, double }* %15, i32 0, i32 0, !dbg !2772
  %17 = load double, double* %16, align 1, !dbg !2772
  %18 = getelementptr { double, double }, { double, double }* %15, i32 0, i32 1, !dbg !2772
  %19 = load double, double* %18, align 1, !dbg !2772
  %20 = bitcast %struct.Py_complex* %p to { double, double }*, !dbg !2772
  %21 = getelementptr { double, double }, { double, double }* %20, i32 0, i32 0, !dbg !2772
  %22 = load double, double* %21, align 1, !dbg !2772
  %23 = getelementptr { double, double }, { double, double }* %20, i32 0, i32 1, !dbg !2772
  %24 = load double, double* %23, align 1, !dbg !2772
  %call = call { double, double } @_Py_c_prod(double %17, double %19, double %22, double %24), !dbg !2772
  %25 = bitcast %struct.Py_complex* %coerce to { double, double }*, !dbg !2772
  %26 = getelementptr { double, double }, { double, double }* %25, i32 0, i32 0, !dbg !2772
  %27 = extractvalue { double, double } %call, 0, !dbg !2772
  store double %27, double* %26, align 8, !dbg !2772
  %28 = getelementptr { double, double }, { double, double }* %25, i32 0, i32 1, !dbg !2772
  %29 = extractvalue { double, double } %call, 1, !dbg !2772
  store double %29, double* %28, align 8, !dbg !2772
  %30 = bitcast %struct.Py_complex* %r to i8*, !dbg !2772
  %31 = bitcast %struct.Py_complex* %coerce to i8*, !dbg !2772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !dbg !2772, !tbaa.struct !808
  br label %if.end, !dbg !2773

if.end:                                           ; preds = %if.then, %while.body
  %32 = load i64, i64* %mask, align 8, !dbg !2774, !tbaa !1542
  %shl = shl i64 %32, 1, !dbg !2774
  store i64 %shl, i64* %mask, align 8, !dbg !2774, !tbaa !1542
  %33 = bitcast %struct.Py_complex* %p to { double, double }*, !dbg !2775
  %34 = getelementptr { double, double }, { double, double }* %33, i32 0, i32 0, !dbg !2775
  %35 = load double, double* %34, align 1, !dbg !2775
  %36 = getelementptr { double, double }, { double, double }* %33, i32 0, i32 1, !dbg !2775
  %37 = load double, double* %36, align 1, !dbg !2775
  %38 = bitcast %struct.Py_complex* %p to { double, double }*, !dbg !2775
  %39 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 0, !dbg !2775
  %40 = load double, double* %39, align 1, !dbg !2775
  %41 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 1, !dbg !2775
  %42 = load double, double* %41, align 1, !dbg !2775
  %call2 = call { double, double } @_Py_c_prod(double %35, double %37, double %40, double %42), !dbg !2775
  %43 = bitcast %struct.Py_complex* %coerce3 to { double, double }*, !dbg !2775
  %44 = getelementptr { double, double }, { double, double }* %43, i32 0, i32 0, !dbg !2775
  %45 = extractvalue { double, double } %call2, 0, !dbg !2775
  store double %45, double* %44, align 8, !dbg !2775
  %46 = getelementptr { double, double }, { double, double }* %43, i32 0, i32 1, !dbg !2775
  %47 = extractvalue { double, double } %call2, 1, !dbg !2775
  store double %47, double* %46, align 8, !dbg !2775
  %48 = bitcast %struct.Py_complex* %p to i8*, !dbg !2775
  %49 = bitcast %struct.Py_complex* %coerce3 to i8*, !dbg !2775
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false), !dbg !2775, !tbaa.struct !808
  br label %while.cond, !dbg !2754

while.end:                                        ; preds = %land.end
  %50 = bitcast %struct.Py_complex* %retval to i8*, !dbg !2776
  %51 = bitcast %struct.Py_complex* %r to i8*, !dbg !2776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false), !dbg !2776, !tbaa.struct !808
  %52 = bitcast i64* %mask to i8*, !dbg !2777
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !2777
  %53 = bitcast %struct.Py_complex* %p to i8*, !dbg !2777
  call void @llvm.lifetime.end(i64 16, i8* %53) #2, !dbg !2777
  %54 = bitcast %struct.Py_complex* %r to i8*, !dbg !2777
  call void @llvm.lifetime.end(i64 16, i8* %54) #2, !dbg !2777
  %55 = bitcast %struct.Py_complex* %retval to { double, double }*, !dbg !2777
  %56 = load { double, double }, { double, double }* %55, align 8, !dbg !2777
  ret { double, double } %56, !dbg !2777
}

declare %struct._object* @PyFloat_FromDouble(double) #5

declare i64 @_Py_HashDouble(double) #5

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #5

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_conjugate(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %c = alloca %struct.Py_complex, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !633, metadata !786), !dbg !2778
  %0 = bitcast %struct.Py_complex* %c to i8*, !dbg !2779
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2779
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %c, metadata !634, metadata !786), !dbg !2780
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2781, !tbaa !1191
  %2 = bitcast %struct._object* %1 to %struct.PyComplexObject*, !dbg !2782
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %2, i32 0, i32 1, !dbg !2783
  %3 = bitcast %struct.Py_complex* %c to i8*, !dbg !2783
  %4 = bitcast %struct.Py_complex* %cval to i8*, !dbg !2783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false), !dbg !2783, !tbaa.struct !808
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1, !dbg !2784
  %5 = load double, double* %imag, align 8, !dbg !2784, !tbaa !802
  %sub = fsub double -0.000000e+00, %5, !dbg !2785
  %imag1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1, !dbg !2786
  store double %sub, double* %imag1, align 8, !dbg !2787, !tbaa !802
  %6 = bitcast %struct.Py_complex* %c to { double, double }*, !dbg !2788
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0, !dbg !2788
  %8 = load double, double* %7, align 1, !dbg !2788
  %9 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1, !dbg !2788
  %10 = load double, double* %9, align 1, !dbg !2788
  %call = call %struct._object* @PyComplex_FromCComplex(double %8, double %10), !dbg !2788
  %11 = bitcast %struct.Py_complex* %c to i8*, !dbg !2789
  call void @llvm.lifetime.end(i64 16, i8* %11) #2, !dbg !2789
  ret %struct._object* %call, !dbg !2790
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_getnewargs(%struct.PyComplexObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyComplexObject*, align 8
  %c = alloca %struct.Py_complex, align 8
  store %struct.PyComplexObject* %v, %struct.PyComplexObject** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct.PyComplexObject** %v.addr, metadata !637, metadata !786), !dbg !2791
  %0 = bitcast %struct.Py_complex* %c to i8*, !dbg !2792
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2792
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %c, metadata !638, metadata !786), !dbg !2793
  %1 = load %struct.PyComplexObject*, %struct.PyComplexObject** %v.addr, align 8, !dbg !2794, !tbaa !1191
  %cval = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %1, i32 0, i32 1, !dbg !2795
  %2 = bitcast %struct.Py_complex* %c to i8*, !dbg !2795
  %3 = bitcast %struct.Py_complex* %cval to i8*, !dbg !2795
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false), !dbg !2795, !tbaa.struct !808
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 0, !dbg !2796
  %4 = load double, double* %real, align 8, !dbg !2796, !tbaa !792
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1, !dbg !2797
  %5 = load double, double* %imag, align 8, !dbg !2797, !tbaa !802
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), double %4, double %5), !dbg !2798
  %6 = bitcast %struct.Py_complex* %c to i8*, !dbg !2799
  call void @llvm.lifetime.end(i64 16, i8* %6) #2, !dbg !2799
  ret %struct._object* %call, !dbg !2800
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !641, metadata !786), !dbg !2801
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !642, metadata !786), !dbg !2802
  %0 = bitcast %struct._object** %format_spec to i8*, !dbg !2803
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2803
  call void @llvm.dbg.declare(metadata %struct._object** %format_spec, metadata !643, metadata !786), !dbg !2804
  %1 = bitcast %struct._PyUnicodeWriter* %writer to i8*, !dbg !2805
  call void @llvm.lifetime.start(i64 56, i8* %1) #2, !dbg !2805
  call void @llvm.dbg.declare(metadata %struct._PyUnicodeWriter* %writer, metadata !644, metadata !786), !dbg !2806
  %2 = bitcast i32* %ret to i8*, !dbg !2807
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2807
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !659, metadata !786), !dbg !2808
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2809, !tbaa !1191
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct._object** %format_spec), !dbg !2811
  %tobool = icmp ne i32 %call, 0, !dbg !2811
  br i1 %tobool, label %if.end, label %if.then, !dbg !2812

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2813
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2813

if.end:                                           ; preds = %entry
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* %writer), !dbg !2814
  %4 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2815, !tbaa !1191
  %5 = load %struct._object*, %struct._object** %format_spec, align 8, !dbg !2816, !tbaa !1191
  %6 = load %struct._object*, %struct._object** %format_spec, align 8, !dbg !2817, !tbaa !1191
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !2818
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 1, !dbg !2819
  %8 = load i64, i64* %length, align 8, !dbg !2819, !tbaa !2820
  %call1 = call i32 @_PyComplex_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %4, %struct._object* %5, i64 0, i64 %8), !dbg !2823
  store i32 %call1, i32* %ret, align 4, !dbg !2824, !tbaa !900
  %9 = load i32, i32* %ret, align 4, !dbg !2825, !tbaa !900
  %cmp = icmp eq i32 %9, -1, !dbg !2827
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2828

if.then.2:                                        ; preds = %if.end
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer), !dbg !2829
  store %struct._object* null, %struct._object** %retval, !dbg !2831
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2831

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer), !dbg !2832
  store %struct._object* %call4, %struct._object** %retval, !dbg !2833
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2833

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %10 = bitcast i32* %ret to i8*, !dbg !2834
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !2834
  %11 = bitcast %struct._PyUnicodeWriter* %writer to i8*, !dbg !2834
  call void @llvm.lifetime.end(i64 56, i8* %11) #2, !dbg !2834
  %12 = bitcast %struct._object** %format_spec to i8*, !dbg !2834
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !2834
  %13 = load %struct._object*, %struct._object** %retval, !dbg !2834
  ret %struct._object* %13, !dbg !2834
}

declare %struct._object* @Py_BuildValue(i8*, ...) #5

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #5

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #5

declare i32 @_PyComplex_FormatAdvancedWriter(%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64) #5

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #5

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #5

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #5

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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp178 = alloca %struct._object*, align 8
  %_py_decref_tmp183 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !711, metadata !786), !dbg !2835
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !712, metadata !786), !dbg !2836
  %0 = bitcast i8** %s to i8*, !dbg !2837
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2837
  call void @llvm.dbg.declare(metadata i8** %s, metadata !713, metadata !786), !dbg !2838
  %1 = bitcast i8** %start to i8*, !dbg !2837
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2837
  call void @llvm.dbg.declare(metadata i8** %start, metadata !714, metadata !786), !dbg !2839
  %2 = bitcast i8** %end to i8*, !dbg !2840
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2840
  call void @llvm.dbg.declare(metadata i8** %end, metadata !715, metadata !786), !dbg !2841
  %3 = bitcast double* %x to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2842
  call void @llvm.dbg.declare(metadata double* %x, metadata !716, metadata !786), !dbg !2843
  store double 0.000000e+00, double* %x, align 8, !dbg !2843, !tbaa !809
  %4 = bitcast double* %y to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2842
  call void @llvm.dbg.declare(metadata double* %y, metadata !717, metadata !786), !dbg !2844
  store double 0.000000e+00, double* %y, align 8, !dbg !2844, !tbaa !809
  %5 = bitcast double* %z to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2842
  call void @llvm.dbg.declare(metadata double* %z, metadata !718, metadata !786), !dbg !2845
  %6 = bitcast i32* %got_bracket to i8*, !dbg !2846
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !2846
  call void @llvm.dbg.declare(metadata i32* %got_bracket, metadata !719, metadata !786), !dbg !2847
  store i32 0, i32* %got_bracket, align 4, !dbg !2847, !tbaa !900
  %7 = bitcast %struct._object** %s_buffer to i8*, !dbg !2848
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2848
  call void @llvm.dbg.declare(metadata %struct._object** %s_buffer, metadata !720, metadata !786), !dbg !2849
  store %struct._object* null, %struct._object** %s_buffer, align 8, !dbg !2849, !tbaa !1191
  %8 = bitcast i64* %len to i8*, !dbg !2850
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !2850
  call void @llvm.dbg.declare(metadata i64* %len, metadata !721, metadata !786), !dbg !2851
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2852, !tbaa !1191
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !2854
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2854, !tbaa !1203
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19, !dbg !2855
  %11 = load i64, i64* %tp_flags, align 8, !dbg !2855, !tbaa !1618
  %and = and i64 %11, 268435456, !dbg !2856
  %cmp = icmp ne i64 %and, 0, !dbg !2857
  br i1 %cmp, label %if.then, label %if.else, !dbg !2858

if.then:                                          ; preds = %entry
  %12 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2859, !tbaa !1191
  %call = call %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object* %12), !dbg !2861
  store %struct._object* %call, %struct._object** %s_buffer, align 8, !dbg !2862, !tbaa !1191
  %13 = load %struct._object*, %struct._object** %s_buffer, align 8, !dbg !2863, !tbaa !1191
  %cmp1 = icmp eq %struct._object* %13, null, !dbg !2865
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !2866

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !2867
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2867

if.end:                                           ; preds = %if.then
  %14 = load %struct._object*, %struct._object** %s_buffer, align 8, !dbg !2868, !tbaa !1191
  %call3 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %14, i64* %len), !dbg !2869
  store i8* %call3, i8** %s, align 8, !dbg !2870, !tbaa !1191
  %15 = load i8*, i8** %s, align 8, !dbg !2871, !tbaa !1191
  %cmp4 = icmp eq i8* %15, null, !dbg !2873
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2874

if.then.5:                                        ; preds = %if.end
  br label %error, !dbg !2875

if.end.6:                                         ; preds = %if.end
  br label %if.end.12, !dbg !2876

if.else:                                          ; preds = %entry
  %16 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2877, !tbaa !1191
  %call7 = call i32 @PyObject_AsCharBuffer(%struct._object* %16, i8** %s, i64* %len), !dbg !2879
  %tobool = icmp ne i32 %call7, 0, !dbg !2879
  br i1 %tobool, label %if.then.8, label %if.end.11, !dbg !2880

if.then.8:                                        ; preds = %if.else
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2881, !tbaa !1191
  %18 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2883, !tbaa !1191
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !2884
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2884, !tbaa !1203
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 1, !dbg !2885
  %20 = load i8*, i8** %tp_name, align 8, !dbg !2885, !tbaa !1896
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i32 0, i32 0), i8* %20), !dbg !2886
  store %struct._object* null, %struct._object** %retval, !dbg !2887
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2887

if.end.11:                                        ; preds = %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.6
  %21 = load i8*, i8** %s, align 8, !dbg !2888, !tbaa !1191
  store i8* %21, i8** %start, align 8, !dbg !2889, !tbaa !1191
  br label %while.cond, !dbg !2890

while.cond:                                       ; preds = %while.body, %if.end.12
  %22 = load i8*, i8** %s, align 8, !dbg !2891, !tbaa !1191
  %23 = load i8, i8* %22, align 1, !dbg !2894, !tbaa !1445
  %conv = sext i8 %23 to i32, !dbg !2895
  %and13 = and i32 %conv, 255, !dbg !2896
  %conv14 = trunc i32 %and13 to i8, !dbg !2897
  %idxprom = zext i8 %conv14 to i64, !dbg !2898
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !2898
  %24 = load i32, i32* %arrayidx, align 4, !dbg !2898, !tbaa !900
  %and15 = and i32 %24, 8, !dbg !2899
  %tobool16 = icmp ne i32 %and15, 0, !dbg !2890
  br i1 %tobool16, label %while.body, label %while.end, !dbg !2890

while.body:                                       ; preds = %while.cond
  %25 = load i8*, i8** %s, align 8, !dbg !2900, !tbaa !1191
  %incdec.ptr = getelementptr i8, i8* %25, i32 1, !dbg !2900
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !2900, !tbaa !1191
  br label %while.cond, !dbg !2890

while.end:                                        ; preds = %while.cond
  %26 = load i8*, i8** %s, align 8, !dbg !2901, !tbaa !1191
  %27 = load i8, i8* %26, align 1, !dbg !2903, !tbaa !1445
  %conv17 = sext i8 %27 to i32, !dbg !2903
  %cmp18 = icmp eq i32 %conv17, 40, !dbg !2904
  br i1 %cmp18, label %if.then.20, label %if.end.33, !dbg !2905

if.then.20:                                       ; preds = %while.end
  store i32 1, i32* %got_bracket, align 4, !dbg !2906, !tbaa !900
  %28 = load i8*, i8** %s, align 8, !dbg !2908, !tbaa !1191
  %incdec.ptr21 = getelementptr i8, i8* %28, i32 1, !dbg !2908
  store i8* %incdec.ptr21, i8** %s, align 8, !dbg !2908, !tbaa !1191
  br label %while.cond.22, !dbg !2909

while.cond.22:                                    ; preds = %while.body.30, %if.then.20
  %29 = load i8*, i8** %s, align 8, !dbg !2910, !tbaa !1191
  %30 = load i8, i8* %29, align 1, !dbg !2913, !tbaa !1445
  %conv23 = sext i8 %30 to i32, !dbg !2914
  %and24 = and i32 %conv23, 255, !dbg !2915
  %conv25 = trunc i32 %and24 to i8, !dbg !2916
  %idxprom26 = zext i8 %conv25 to i64, !dbg !2917
  %arrayidx27 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom26, !dbg !2917
  %31 = load i32, i32* %arrayidx27, align 4, !dbg !2917, !tbaa !900
  %and28 = and i32 %31, 8, !dbg !2918
  %tobool29 = icmp ne i32 %and28, 0, !dbg !2909
  br i1 %tobool29, label %while.body.30, label %while.end.32, !dbg !2909

while.body.30:                                    ; preds = %while.cond.22
  %32 = load i8*, i8** %s, align 8, !dbg !2919, !tbaa !1191
  %incdec.ptr31 = getelementptr i8, i8* %32, i32 1, !dbg !2919
  store i8* %incdec.ptr31, i8** %s, align 8, !dbg !2919, !tbaa !1191
  br label %while.cond.22, !dbg !2909

while.end.32:                                     ; preds = %while.cond.22
  br label %if.end.33, !dbg !2920

if.end.33:                                        ; preds = %while.end.32, %while.end
  %33 = load i8*, i8** %s, align 8, !dbg !2921, !tbaa !1191
  %call34 = call double @PyOS_string_to_double(i8* %33, i8** %end, %struct._object* null), !dbg !2922
  store double %call34, double* %z, align 8, !dbg !2923, !tbaa !809
  %34 = load double, double* %z, align 8, !dbg !2924, !tbaa !809
  %cmp35 = fcmp oeq double %34, -1.000000e+00, !dbg !2926
  br i1 %cmp35, label %land.lhs.true, label %if.end.45, !dbg !2927

land.lhs.true:                                    ; preds = %if.end.33
  %call37 = call %struct._object* @PyErr_Occurred(), !dbg !2928
  %tobool38 = icmp ne %struct._object* %call37, null, !dbg !2928
  br i1 %tobool38, label %if.then.39, label %if.end.45, !dbg !2930

if.then.39:                                       ; preds = %land.lhs.true
  %35 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2931, !tbaa !1191
  %call40 = call i32 @PyErr_ExceptionMatches(%struct._object* %35), !dbg !2934
  %tobool41 = icmp ne i32 %call40, 0, !dbg !2934
  br i1 %tobool41, label %if.then.42, label %if.else.43, !dbg !2935

if.then.42:                                       ; preds = %if.then.39
  call void @PyErr_Clear(), !dbg !2936
  br label %if.end.44, !dbg !2936

if.else.43:                                       ; preds = %if.then.39
  br label %error, !dbg !2937

if.end.44:                                        ; preds = %if.then.42
  br label %if.end.45, !dbg !2938

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true, %if.end.33
  %36 = load i8*, i8** %end, align 8, !dbg !2939, !tbaa !1191
  %37 = load i8*, i8** %s, align 8, !dbg !2941, !tbaa !1191
  %cmp46 = icmp ne i8* %36, %37, !dbg !2942
  br i1 %cmp46, label %if.then.48, label %if.else.101, !dbg !2943

if.then.48:                                       ; preds = %if.end.45
  %38 = load i8*, i8** %end, align 8, !dbg !2944, !tbaa !1191
  store i8* %38, i8** %s, align 8, !dbg !2946, !tbaa !1191
  %39 = load i8*, i8** %s, align 8, !dbg !2947, !tbaa !1191
  %40 = load i8, i8* %39, align 1, !dbg !2949, !tbaa !1445
  %conv49 = sext i8 %40 to i32, !dbg !2949
  %cmp50 = icmp eq i32 %conv49, 43, !dbg !2950
  br i1 %cmp50, label %if.then.55, label %lor.lhs.false, !dbg !2951

lor.lhs.false:                                    ; preds = %if.then.48
  %41 = load i8*, i8** %s, align 8, !dbg !2952, !tbaa !1191
  %42 = load i8, i8* %41, align 1, !dbg !2954, !tbaa !1445
  %conv52 = sext i8 %42 to i32, !dbg !2954
  %cmp53 = icmp eq i32 %conv52, 45, !dbg !2955
  br i1 %cmp53, label %if.then.55, label %if.else.88, !dbg !2956

if.then.55:                                       ; preds = %lor.lhs.false, %if.then.48
  %43 = load double, double* %z, align 8, !dbg !2957, !tbaa !809
  store double %43, double* %x, align 8, !dbg !2959, !tbaa !809
  %44 = load i8*, i8** %s, align 8, !dbg !2960, !tbaa !1191
  %call56 = call double @PyOS_string_to_double(i8* %44, i8** %end, %struct._object* null), !dbg !2961
  store double %call56, double* %y, align 8, !dbg !2962, !tbaa !809
  %45 = load double, double* %y, align 8, !dbg !2963, !tbaa !809
  %cmp57 = fcmp oeq double %45, -1.000000e+00, !dbg !2965
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.68, !dbg !2966

land.lhs.true.59:                                 ; preds = %if.then.55
  %call60 = call %struct._object* @PyErr_Occurred(), !dbg !2967
  %tobool61 = icmp ne %struct._object* %call60, null, !dbg !2967
  br i1 %tobool61, label %if.then.62, label %if.end.68, !dbg !2969

if.then.62:                                       ; preds = %land.lhs.true.59
  %46 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2970, !tbaa !1191
  %call63 = call i32 @PyErr_ExceptionMatches(%struct._object* %46), !dbg !2973
  %tobool64 = icmp ne i32 %call63, 0, !dbg !2973
  br i1 %tobool64, label %if.then.65, label %if.else.66, !dbg !2974

if.then.65:                                       ; preds = %if.then.62
  call void @PyErr_Clear(), !dbg !2975
  br label %if.end.67, !dbg !2975

if.else.66:                                       ; preds = %if.then.62
  br label %error, !dbg !2976

if.end.67:                                        ; preds = %if.then.65
  br label %if.end.68, !dbg !2977

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true.59, %if.then.55
  %47 = load i8*, i8** %end, align 8, !dbg !2978, !tbaa !1191
  %48 = load i8*, i8** %s, align 8, !dbg !2980, !tbaa !1191
  %cmp69 = icmp ne i8* %47, %48, !dbg !2981
  br i1 %cmp69, label %if.then.71, label %if.else.72, !dbg !2982

if.then.71:                                       ; preds = %if.end.68
  %49 = load i8*, i8** %end, align 8, !dbg !2983, !tbaa !1191
  store i8* %49, i8** %s, align 8, !dbg !2984, !tbaa !1191
  br label %if.end.77, !dbg !2985

if.else.72:                                       ; preds = %if.end.68
  %50 = load i8*, i8** %s, align 8, !dbg !2986, !tbaa !1191
  %51 = load i8, i8* %50, align 1, !dbg !2988, !tbaa !1445
  %conv73 = sext i8 %51 to i32, !dbg !2988
  %cmp74 = icmp eq i32 %conv73, 43, !dbg !2989
  %cond = select i1 %cmp74, double 1.000000e+00, double -1.000000e+00, !dbg !2988
  store double %cond, double* %y, align 8, !dbg !2990, !tbaa !809
  %52 = load i8*, i8** %s, align 8, !dbg !2991, !tbaa !1191
  %incdec.ptr76 = getelementptr i8, i8* %52, i32 1, !dbg !2991
  store i8* %incdec.ptr76, i8** %s, align 8, !dbg !2991, !tbaa !1191
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.72, %if.then.71
  %53 = load i8*, i8** %s, align 8, !dbg !2992, !tbaa !1191
  %54 = load i8, i8* %53, align 1, !dbg !2994, !tbaa !1445
  %conv78 = sext i8 %54 to i32, !dbg !2994
  %cmp79 = icmp eq i32 %conv78, 106, !dbg !2995
  br i1 %cmp79, label %if.end.86, label %lor.lhs.false.81, !dbg !2996

lor.lhs.false.81:                                 ; preds = %if.end.77
  %55 = load i8*, i8** %s, align 8, !dbg !2997, !tbaa !1191
  %56 = load i8, i8* %55, align 1, !dbg !2999, !tbaa !1445
  %conv82 = sext i8 %56 to i32, !dbg !2999
  %cmp83 = icmp eq i32 %conv82, 74, !dbg !3000
  br i1 %cmp83, label %if.end.86, label %if.then.85, !dbg !3001

if.then.85:                                       ; preds = %lor.lhs.false.81
  br label %parse_error, !dbg !3002

if.end.86:                                        ; preds = %lor.lhs.false.81, %if.end.77
  %57 = load i8*, i8** %s, align 8, !dbg !3003, !tbaa !1191
  %incdec.ptr87 = getelementptr i8, i8* %57, i32 1, !dbg !3003
  store i8* %incdec.ptr87, i8** %s, align 8, !dbg !3003, !tbaa !1191
  br label %if.end.100, !dbg !3004

if.else.88:                                       ; preds = %lor.lhs.false
  %58 = load i8*, i8** %s, align 8, !dbg !3005, !tbaa !1191
  %59 = load i8, i8* %58, align 1, !dbg !3007, !tbaa !1445
  %conv89 = sext i8 %59 to i32, !dbg !3007
  %cmp90 = icmp eq i32 %conv89, 106, !dbg !3008
  br i1 %cmp90, label %if.then.96, label %lor.lhs.false.92, !dbg !3009

lor.lhs.false.92:                                 ; preds = %if.else.88
  %60 = load i8*, i8** %s, align 8, !dbg !3010, !tbaa !1191
  %61 = load i8, i8* %60, align 1, !dbg !3012, !tbaa !1445
  %conv93 = sext i8 %61 to i32, !dbg !3012
  %cmp94 = icmp eq i32 %conv93, 74, !dbg !3013
  br i1 %cmp94, label %if.then.96, label %if.else.98, !dbg !3014

if.then.96:                                       ; preds = %lor.lhs.false.92, %if.else.88
  %62 = load i8*, i8** %s, align 8, !dbg !3015, !tbaa !1191
  %incdec.ptr97 = getelementptr i8, i8* %62, i32 1, !dbg !3015
  store i8* %incdec.ptr97, i8** %s, align 8, !dbg !3015, !tbaa !1191
  %63 = load double, double* %z, align 8, !dbg !3017, !tbaa !809
  store double %63, double* %y, align 8, !dbg !3018, !tbaa !809
  br label %if.end.99, !dbg !3019

if.else.98:                                       ; preds = %lor.lhs.false.92
  %64 = load double, double* %z, align 8, !dbg !3020, !tbaa !809
  store double %64, double* %x, align 8, !dbg !3021, !tbaa !809
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.then.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.86
  br label %if.end.127, !dbg !3022

if.else.101:                                      ; preds = %if.end.45
  %65 = load i8*, i8** %s, align 8, !dbg !3023, !tbaa !1191
  %66 = load i8, i8* %65, align 1, !dbg !3026, !tbaa !1445
  %conv102 = sext i8 %66 to i32, !dbg !3026
  %cmp103 = icmp eq i32 %conv102, 43, !dbg !3027
  br i1 %cmp103, label %if.then.109, label %lor.lhs.false.105, !dbg !3028

lor.lhs.false.105:                                ; preds = %if.else.101
  %67 = load i8*, i8** %s, align 8, !dbg !3029, !tbaa !1191
  %68 = load i8, i8* %67, align 1, !dbg !3031, !tbaa !1445
  %conv106 = sext i8 %68 to i32, !dbg !3031
  %cmp107 = icmp eq i32 %conv106, 45, !dbg !3032
  br i1 %cmp107, label %if.then.109, label %if.else.115, !dbg !3033

if.then.109:                                      ; preds = %lor.lhs.false.105, %if.else.101
  %69 = load i8*, i8** %s, align 8, !dbg !3034, !tbaa !1191
  %70 = load i8, i8* %69, align 1, !dbg !3036, !tbaa !1445
  %conv110 = sext i8 %70 to i32, !dbg !3036
  %cmp111 = icmp eq i32 %conv110, 43, !dbg !3037
  %cond113 = select i1 %cmp111, double 1.000000e+00, double -1.000000e+00, !dbg !3036
  store double %cond113, double* %y, align 8, !dbg !3038, !tbaa !809
  %71 = load i8*, i8** %s, align 8, !dbg !3039, !tbaa !1191
  %incdec.ptr114 = getelementptr i8, i8* %71, i32 1, !dbg !3039
  store i8* %incdec.ptr114, i8** %s, align 8, !dbg !3039, !tbaa !1191
  br label %if.end.116, !dbg !3040

if.else.115:                                      ; preds = %lor.lhs.false.105
  store double 1.000000e+00, double* %y, align 8, !dbg !3041, !tbaa !809
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %if.then.109
  %72 = load i8*, i8** %s, align 8, !dbg !3042, !tbaa !1191
  %73 = load i8, i8* %72, align 1, !dbg !3044, !tbaa !1445
  %conv117 = sext i8 %73 to i32, !dbg !3044
  %cmp118 = icmp eq i32 %conv117, 106, !dbg !3045
  br i1 %cmp118, label %if.end.125, label %lor.lhs.false.120, !dbg !3046

lor.lhs.false.120:                                ; preds = %if.end.116
  %74 = load i8*, i8** %s, align 8, !dbg !3047, !tbaa !1191
  %75 = load i8, i8* %74, align 1, !dbg !3049, !tbaa !1445
  %conv121 = sext i8 %75 to i32, !dbg !3049
  %cmp122 = icmp eq i32 %conv121, 74, !dbg !3050
  br i1 %cmp122, label %if.end.125, label %if.then.124, !dbg !3051

if.then.124:                                      ; preds = %lor.lhs.false.120
  br label %parse_error, !dbg !3052

if.end.125:                                       ; preds = %lor.lhs.false.120, %if.end.116
  %76 = load i8*, i8** %s, align 8, !dbg !3053, !tbaa !1191
  %incdec.ptr126 = getelementptr i8, i8* %76, i32 1, !dbg !3053
  store i8* %incdec.ptr126, i8** %s, align 8, !dbg !3053, !tbaa !1191
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.125, %if.end.100
  br label %while.cond.128, !dbg !3054

while.cond.128:                                   ; preds = %while.body.136, %if.end.127
  %77 = load i8*, i8** %s, align 8, !dbg !3055, !tbaa !1191
  %78 = load i8, i8* %77, align 1, !dbg !3056, !tbaa !1445
  %conv129 = sext i8 %78 to i32, !dbg !3057
  %and130 = and i32 %conv129, 255, !dbg !3058
  %conv131 = trunc i32 %and130 to i8, !dbg !3059
  %idxprom132 = zext i8 %conv131 to i64, !dbg !3060
  %arrayidx133 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom132, !dbg !3060
  %79 = load i32, i32* %arrayidx133, align 4, !dbg !3060, !tbaa !900
  %and134 = and i32 %79, 8, !dbg !3061
  %tobool135 = icmp ne i32 %and134, 0, !dbg !3054
  br i1 %tobool135, label %while.body.136, label %while.end.138, !dbg !3054

while.body.136:                                   ; preds = %while.cond.128
  %80 = load i8*, i8** %s, align 8, !dbg !3062, !tbaa !1191
  %incdec.ptr137 = getelementptr i8, i8* %80, i32 1, !dbg !3062
  store i8* %incdec.ptr137, i8** %s, align 8, !dbg !3062, !tbaa !1191
  br label %while.cond.128, !dbg !3054

while.end.138:                                    ; preds = %while.cond.128
  %81 = load i32, i32* %got_bracket, align 4, !dbg !3063, !tbaa !900
  %tobool139 = icmp ne i32 %81, 0, !dbg !3063
  br i1 %tobool139, label %if.then.140, label %if.end.158, !dbg !3065

if.then.140:                                      ; preds = %while.end.138
  %82 = load i8*, i8** %s, align 8, !dbg !3066, !tbaa !1191
  %83 = load i8, i8* %82, align 1, !dbg !3069, !tbaa !1445
  %conv141 = sext i8 %83 to i32, !dbg !3069
  %cmp142 = icmp ne i32 %conv141, 41, !dbg !3070
  br i1 %cmp142, label %if.then.144, label %if.end.145, !dbg !3071

if.then.144:                                      ; preds = %if.then.140
  br label %parse_error, !dbg !3072

if.end.145:                                       ; preds = %if.then.140
  %84 = load i8*, i8** %s, align 8, !dbg !3073, !tbaa !1191
  %incdec.ptr146 = getelementptr i8, i8* %84, i32 1, !dbg !3073
  store i8* %incdec.ptr146, i8** %s, align 8, !dbg !3073, !tbaa !1191
  br label %while.cond.147, !dbg !3074

while.cond.147:                                   ; preds = %while.body.155, %if.end.145
  %85 = load i8*, i8** %s, align 8, !dbg !3075, !tbaa !1191
  %86 = load i8, i8* %85, align 1, !dbg !3078, !tbaa !1445
  %conv148 = sext i8 %86 to i32, !dbg !3079
  %and149 = and i32 %conv148, 255, !dbg !3080
  %conv150 = trunc i32 %and149 to i8, !dbg !3081
  %idxprom151 = zext i8 %conv150 to i64, !dbg !3082
  %arrayidx152 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom151, !dbg !3082
  %87 = load i32, i32* %arrayidx152, align 4, !dbg !3082, !tbaa !900
  %and153 = and i32 %87, 8, !dbg !3083
  %tobool154 = icmp ne i32 %and153, 0, !dbg !3074
  br i1 %tobool154, label %while.body.155, label %while.end.157, !dbg !3074

while.body.155:                                   ; preds = %while.cond.147
  %88 = load i8*, i8** %s, align 8, !dbg !3084, !tbaa !1191
  %incdec.ptr156 = getelementptr i8, i8* %88, i32 1, !dbg !3084
  store i8* %incdec.ptr156, i8** %s, align 8, !dbg !3084, !tbaa !1191
  br label %while.cond.147, !dbg !3074

while.end.157:                                    ; preds = %while.cond.147
  br label %if.end.158, !dbg !3085

if.end.158:                                       ; preds = %while.end.157, %while.end.138
  %89 = load i8*, i8** %s, align 8, !dbg !3086, !tbaa !1191
  %90 = load i8*, i8** %start, align 8, !dbg !3088, !tbaa !1191
  %sub.ptr.lhs.cast = ptrtoint i8* %89 to i64, !dbg !3089
  %sub.ptr.rhs.cast = ptrtoint i8* %90 to i64, !dbg !3089
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3089
  %91 = load i64, i64* %len, align 8, !dbg !3090, !tbaa !1542
  %cmp159 = icmp ne i64 %sub.ptr.sub, %91, !dbg !3091
  br i1 %cmp159, label %if.then.161, label %if.end.162, !dbg !3092

if.then.161:                                      ; preds = %if.end.158
  br label %parse_error, !dbg !3093

if.end.162:                                       ; preds = %if.end.158
  br label %do.body, !dbg !3094

do.body:                                          ; preds = %if.end.162
  %92 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3095
  call void @llvm.lifetime.start(i64 8, i8* %92) #2, !dbg !3095
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !722, metadata !786), !dbg !3097
  %93 = load %struct._object*, %struct._object** %s_buffer, align 8, !dbg !3098, !tbaa !1191
  store %struct._object* %93, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3097, !tbaa !1191
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3099, !tbaa !1191
  %cmp163 = icmp ne %struct._object* %94, null, !dbg !3100
  br i1 %cmp163, label %if.then.165, label %if.end.173, !dbg !3101

if.then.165:                                      ; preds = %do.body
  br label %do.body.166, !dbg !3102

do.body.166:                                      ; preds = %if.then.165
  %95 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3104
  call void @llvm.lifetime.start(i64 8, i8* %95) #2, !dbg !3104
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !724, metadata !786), !dbg !3106
  %96 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3107, !tbaa !1191
  store %struct._object* %96, %struct._object** %_py_decref_tmp, align 8, !dbg !3106, !tbaa !1191
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3108, !tbaa !1191
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0, !dbg !3110
  %98 = load i64, i64* %ob_refcnt, align 8, !dbg !3111, !tbaa !1210
  %dec = add i64 %98, -1, !dbg !3111
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3111, !tbaa !1210
  %cmp167 = icmp ne i64 %dec, 0, !dbg !3112
  br i1 %cmp167, label %if.then.169, label %if.else.170, !dbg !3113

if.then.169:                                      ; preds = %do.body.166
  br label %if.end.172, !dbg !3114

if.else.170:                                      ; preds = %do.body.166
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3116, !tbaa !1191
  %ob_type171 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1, !dbg !3118
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type171, align 8, !dbg !3118, !tbaa !1203
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4, !dbg !3119
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3119, !tbaa !1326
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3120, !tbaa !1191
  call void %101(%struct._object* %102), !dbg !3121
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.170, %if.then.169
  %103 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3122
  call void @llvm.lifetime.end(i64 8, i8* %103) #2, !dbg !3122
  br label %do.cond, !dbg !3124

do.cond:                                          ; preds = %if.end.172
  br label %do.end, !dbg !3125

do.end:                                           ; preds = %do.cond
  br label %if.end.173, !dbg !3127

if.end.173:                                       ; preds = %do.end, %do.body
  %104 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3129
  call void @llvm.lifetime.end(i64 8, i8* %104) #2, !dbg !3129
  br label %do.cond.174, !dbg !3132

do.cond.174:                                      ; preds = %if.end.173
  br label %do.end.175, !dbg !3133

do.end.175:                                       ; preds = %do.cond.174
  %105 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !3135, !tbaa !1191
  %106 = load double, double* %x, align 8, !dbg !3136, !tbaa !809
  %107 = load double, double* %y, align 8, !dbg !3137, !tbaa !809
  %call176 = call %struct._object* @complex_subtype_from_doubles(%struct._typeobject* %105, double %106, double %107), !dbg !3138
  store %struct._object* %call176, %struct._object** %retval, !dbg !3139
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3139

parse_error:                                      ; preds = %if.then.161, %if.then.144, %if.then.124, %if.then.85
  %108 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3140, !tbaa !1191
  call void @PyErr_SetString(%struct._object* %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0)), !dbg !3141
  br label %error, !dbg !3141

error:                                            ; preds = %parse_error, %if.else.66, %if.else.43, %if.then.5
  br label %do.body.177, !dbg !3142

do.body.177:                                      ; preds = %error
  %109 = bitcast %struct._object** %_py_xdecref_tmp178 to i8*, !dbg !3143
  call void @llvm.lifetime.start(i64 8, i8* %109) #2, !dbg !3143
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp178, metadata !727, metadata !786), !dbg !3145
  %110 = load %struct._object*, %struct._object** %s_buffer, align 8, !dbg !3146, !tbaa !1191
  store %struct._object* %110, %struct._object** %_py_xdecref_tmp178, align 8, !dbg !3145, !tbaa !1191
  %111 = load %struct._object*, %struct._object** %_py_xdecref_tmp178, align 8, !dbg !3147, !tbaa !1191
  %cmp179 = icmp ne %struct._object* %111, null, !dbg !3148
  br i1 %cmp179, label %if.then.181, label %if.end.195, !dbg !3149

if.then.181:                                      ; preds = %do.body.177
  br label %do.body.182, !dbg !3150

do.body.182:                                      ; preds = %if.then.181
  %112 = bitcast %struct._object** %_py_decref_tmp183 to i8*, !dbg !3152
  call void @llvm.lifetime.start(i64 8, i8* %112) #2, !dbg !3152
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp183, metadata !729, metadata !786), !dbg !3154
  %113 = load %struct._object*, %struct._object** %_py_xdecref_tmp178, align 8, !dbg !3155, !tbaa !1191
  store %struct._object* %113, %struct._object** %_py_decref_tmp183, align 8, !dbg !3154, !tbaa !1191
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8, !dbg !3156, !tbaa !1191
  %ob_refcnt184 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0, !dbg !3158
  %115 = load i64, i64* %ob_refcnt184, align 8, !dbg !3159, !tbaa !1210
  %dec185 = add i64 %115, -1, !dbg !3159
  store i64 %dec185, i64* %ob_refcnt184, align 8, !dbg !3159, !tbaa !1210
  %cmp186 = icmp ne i64 %dec185, 0, !dbg !3160
  br i1 %cmp186, label %if.then.188, label %if.else.189, !dbg !3161

if.then.188:                                      ; preds = %do.body.182
  br label %if.end.192, !dbg !3162

if.else.189:                                      ; preds = %do.body.182
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8, !dbg !3164, !tbaa !1191
  %ob_type190 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1, !dbg !3166
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type190, align 8, !dbg !3166, !tbaa !1203
  %tp_dealloc191 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4, !dbg !3167
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc191, align 8, !dbg !3167, !tbaa !1326
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8, !dbg !3168, !tbaa !1191
  call void %118(%struct._object* %119), !dbg !3169
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.189, %if.then.188
  %120 = bitcast %struct._object** %_py_decref_tmp183 to i8*, !dbg !3170
  call void @llvm.lifetime.end(i64 8, i8* %120) #2, !dbg !3170
  br label %do.cond.193, !dbg !3172

do.cond.193:                                      ; preds = %if.end.192
  br label %do.end.194, !dbg !3173

do.end.194:                                       ; preds = %do.cond.193
  br label %if.end.195, !dbg !3175

if.end.195:                                       ; preds = %do.end.194, %do.body.177
  %121 = bitcast %struct._object** %_py_xdecref_tmp178 to i8*, !dbg !3177
  call void @llvm.lifetime.end(i64 8, i8* %121) #2, !dbg !3177
  br label %do.cond.196, !dbg !3178

do.cond.196:                                      ; preds = %if.end.195
  br label %do.end.197, !dbg !3179

do.end.197:                                       ; preds = %do.cond.196
  store %struct._object* null, %struct._object** %retval, !dbg !3181
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3181

cleanup:                                          ; preds = %do.end.197, %do.end.175, %if.then.8, %if.then.2
  %122 = bitcast i64* %len to i8*, !dbg !3182
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !3182
  %123 = bitcast %struct._object** %s_buffer to i8*, !dbg !3182
  call void @llvm.lifetime.end(i64 8, i8* %123) #2, !dbg !3182
  %124 = bitcast i32* %got_bracket to i8*, !dbg !3182
  call void @llvm.lifetime.end(i64 4, i8* %124) #2, !dbg !3182
  %125 = bitcast double* %z to i8*, !dbg !3182
  call void @llvm.lifetime.end(i64 8, i8* %125) #2, !dbg !3182
  %126 = bitcast double* %y to i8*, !dbg !3182
  call void @llvm.lifetime.end(i64 8, i8* %126) #2, !dbg !3182
  %127 = bitcast double* %x to i8*, !dbg !3182
  call void @llvm.lifetime.end(i64 8, i8* %127) #2, !dbg !3182
  %128 = bitcast i8** %end to i8*, !dbg !3182
  call void @llvm.lifetime.end(i64 8, i8* %128) #2, !dbg !3182
  %129 = bitcast i8** %start to i8*, !dbg !3182
  call void @llvm.lifetime.end(i64 8, i8* %129) #2, !dbg !3182
  %130 = bitcast i8** %s to i8*, !dbg !3182
  call void @llvm.lifetime.end(i64 8, i8* %130) #2, !dbg !3182
  %131 = load %struct._object*, %struct._object** %retval, !dbg !3182
  ret %struct._object* %131, !dbg !3182
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #5

declare %struct._object* @PyNumber_Float(%struct._object*) #5

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_subtype_from_doubles(%struct._typeobject* %type, double %real, double %imag) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %real.addr = alloca double, align 8
  %imag.addr = alloca double, align 8
  %c = alloca %struct.Py_complex, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !736, metadata !786), !dbg !3183
  store double %real, double* %real.addr, align 8, !tbaa !809
  call void @llvm.dbg.declare(metadata double* %real.addr, metadata !737, metadata !786), !dbg !3184
  store double %imag, double* %imag.addr, align 8, !tbaa !809
  call void @llvm.dbg.declare(metadata double* %imag.addr, metadata !738, metadata !786), !dbg !3185
  %0 = bitcast %struct.Py_complex* %c to i8*, !dbg !3186
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !3186
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %c, metadata !739, metadata !786), !dbg !3187
  %1 = load double, double* %real.addr, align 8, !dbg !3188, !tbaa !809
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 0, !dbg !3189
  store double %1, double* %real1, align 8, !dbg !3190, !tbaa !792
  %2 = load double, double* %imag.addr, align 8, !dbg !3191, !tbaa !809
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1, !dbg !3192
  store double %2, double* %imag2, align 8, !dbg !3193, !tbaa !802
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !3194, !tbaa !1191
  %4 = bitcast %struct.Py_complex* %c to { double, double }*, !dbg !3195
  %5 = getelementptr { double, double }, { double, double }* %4, i32 0, i32 0, !dbg !3195
  %6 = load double, double* %5, align 1, !dbg !3195
  %7 = getelementptr { double, double }, { double, double }* %4, i32 0, i32 1, !dbg !3195
  %8 = load double, double* %7, align 1, !dbg !3195
  %call = call %struct._object* @complex_subtype_from_c_complex(%struct._typeobject* %3, double %6, double %8), !dbg !3195
  %9 = bitcast %struct.Py_complex* %c to i8*, !dbg !3196
  call void @llvm.lifetime.end(i64 16, i8* %9) #2, !dbg !3196
  ret %struct._object* %call, !dbg !3197
}

declare %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object*) #5

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #5

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #5

declare double @PyOS_string_to_double(i8*, i8**, %struct._object*) #5

declare i32 @PyErr_ExceptionMatches(%struct._object*) #5

declare void @PyErr_Clear() #5

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
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1191
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !744, metadata !786), !dbg !3198
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %cval, metadata !745, metadata !786), !dbg !3199
  %3 = bitcast %struct._object** %op to i8*, !dbg !3200
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3200
  call void @llvm.dbg.declare(metadata %struct._object** %op, metadata !746, metadata !786), !dbg !3201
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !3202, !tbaa !1191
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 36, !dbg !3203
  %5 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !3203, !tbaa !3204
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !3205, !tbaa !1191
  %call = call %struct._object* %5(%struct._typeobject* %6, i64 0), !dbg !3202
  store %struct._object* %call, %struct._object** %op, align 8, !dbg !3206, !tbaa !1191
  %7 = load %struct._object*, %struct._object** %op, align 8, !dbg !3207, !tbaa !1191
  %cmp = icmp ne %struct._object* %7, null, !dbg !3209
  br i1 %cmp, label %if.then, label %if.end, !dbg !3210

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %op, align 8, !dbg !3211, !tbaa !1191
  %9 = bitcast %struct._object* %8 to %struct.PyComplexObject*, !dbg !3212
  %cval1 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %9, i32 0, i32 1, !dbg !3213
  %10 = bitcast %struct.Py_complex* %cval1 to i8*, !dbg !3214
  %11 = bitcast %struct.Py_complex* %cval to i8*, !dbg !3214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false), !dbg !3214, !tbaa.struct !808
  br label %if.end, !dbg !3215

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._object*, %struct._object** %op, align 8, !dbg !3216, !tbaa !1191
  %13 = bitcast %struct._object** %op to i8*, !dbg !3217
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !3217
  ret %struct._object* %12, !dbg !3218
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!783, !784}
!llvm.ident = !{!785}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !390, globals: !747)
!1 = !DIFile(filename: "complexobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !102, !50, !28, !368, !370, !231, !371, !389}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyComplexObject", file: !13, line: 44, baseType: !14)
!13 = !DIFile(filename: "Include/complexobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 41, size: 256, align: 64, elements: !15)
!15 = !{!16, !363}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !14, file: !13, line: 42, baseType: !17, size: 128, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !18, line: 109, baseType: !19)
!18 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !18, line: 105, size: 128, align: 64, elements: !20)
!20 = !{!21, !29}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !19, file: !18, line: 107, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !23, line: 177, baseType: !24)
!23 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 102, baseType: !26)
!25 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 181, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!28 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !19, file: !18, line: 108, baseType: !30, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !18, line: 334, size: 3200, align: 64, elements: !32)
!32 = !{!33, !39, !43, !44, !45, !51, !115, !120, !125, !126, !131, !183, !214, !226, !232, !233, !234, !236, !238, !269, !270, !271, !280, !281, !286, !287, !289, !291, !301, !311, !329, !330, !331, !333, !335, !336, !338, !343, !348, !353, !354, !355, !356, !357, !358, !359, !360, !362}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !31, file: !18, line: 335, baseType: !34, size: 192, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !18, line: 114, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 111, size: 192, align: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !35, file: !18, line: 112, baseType: !17, size: 128, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !35, file: !18, line: 113, baseType: !22, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !31, file: !18, line: 336, baseType: !40, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !31, file: !18, line: 341, baseType: !46, size: 64, align: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !18, line: 308, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !31, file: !18, line: 342, baseType: !52, size: 64, align: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !18, line: 314, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !50, !57, !56}
!56 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !25, line: 48, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 246, size: 1728, align: 64, elements: !61)
!60 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!61 = !{!62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !83, !84, !85, !86, !88, !90, !92, !96, !99, !101, !103, !104, !105, !106, !110, !111}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !59, file: !60, line: 247, baseType: !56, size: 32, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !59, file: !60, line: 252, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !59, file: !60, line: 253, baseType: !64, size: 64, align: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !59, file: !60, line: 254, baseType: !64, size: 64, align: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !59, file: !60, line: 255, baseType: !64, size: 64, align: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !59, file: !60, line: 256, baseType: !64, size: 64, align: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !59, file: !60, line: 257, baseType: !64, size: 64, align: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !59, file: !60, line: 258, baseType: !64, size: 64, align: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !59, file: !60, line: 259, baseType: !64, size: 64, align: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !59, file: !60, line: 261, baseType: !64, size: 64, align: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !59, file: !60, line: 262, baseType: !64, size: 64, align: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !59, file: !60, line: 263, baseType: !64, size: 64, align: 64, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !59, file: !60, line: 265, baseType: !76, size: 64, align: 64, offset: 768)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !60, line: 161, size: 192, align: 64, elements: !78)
!78 = !{!79, !80, !82}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !77, file: !60, line: 162, baseType: !76, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !77, file: !60, line: 163, baseType: !81, size: 64, align: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !77, file: !60, line: 167, baseType: !56, size: 32, align: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !59, file: !60, line: 267, baseType: !81, size: 64, align: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !59, file: !60, line: 269, baseType: !56, size: 32, align: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !59, file: !60, line: 273, baseType: !56, size: 32, align: 32, offset: 928)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !59, file: !60, line: 275, baseType: !87, size: 64, align: 64, offset: 960)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !27, line: 140, baseType: !28)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !59, file: !60, line: 279, baseType: !89, size: 16, align: 16, offset: 1024)
!89 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !59, file: !60, line: 280, baseType: !91, size: 8, align: 8, offset: 1040)
!91 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !59, file: !60, line: 281, baseType: !93, size: 8, align: 8, offset: 1048)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, align: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !59, file: !60, line: 285, baseType: !97, size: 64, align: 64, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !60, line: 155, baseType: null)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !59, file: !60, line: 294, baseType: !100, size: 64, align: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !27, line: 141, baseType: !28)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !59, file: !60, line: 303, baseType: !102, size: 64, align: 64, offset: 1216)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !59, file: !60, line: 304, baseType: !102, size: 64, align: 64, offset: 1280)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !59, file: !60, line: 305, baseType: !102, size: 64, align: 64, offset: 1344)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !59, file: !60, line: 306, baseType: !102, size: 64, align: 64, offset: 1408)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !59, file: !60, line: 307, baseType: !107, size: 64, align: 64, offset: 1472)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 62, baseType: !109)
!108 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!109 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !59, file: !60, line: 309, baseType: !56, size: 32, align: 32, offset: 1536)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !59, file: !60, line: 311, baseType: !112, size: 160, align: 8, offset: 1568)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 20)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !31, file: !18, line: 343, baseType: !116, size: 64, align: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !18, line: 316, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!50, !50, !64}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !31, file: !18, line: 344, baseType: !121, size: 64, align: 64, offset: 576)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !18, line: 318, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!56, !50, !64, !50}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !31, file: !18, line: 345, baseType: !102, size: 64, align: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !31, file: !18, line: 346, baseType: !127, size: 64, align: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !18, line: 320, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!50, !50}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !31, file: !18, line: 350, baseType: !132, size: 64, align: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !18, line: 278, baseType: !134)
!134 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 236, size: 2176, align: 64, elements: !135)
!135 = !{!136, !141, !142, !143, !144, !145, !150, !152, !153, !154, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !134, file: !18, line: 241, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !18, line: 166, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!50, !50, !50}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !134, file: !18, line: 242, baseType: !137, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !134, file: !18, line: 243, baseType: !137, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !134, file: !18, line: 244, baseType: !137, size: 64, align: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !134, file: !18, line: 245, baseType: !137, size: 64, align: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !134, file: !18, line: 246, baseType: !146, size: 64, align: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !18, line: 167, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!50, !50, !50, !50}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !134, file: !18, line: 247, baseType: !151, size: 64, align: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !18, line: 165, baseType: !128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !134, file: !18, line: 248, baseType: !151, size: 64, align: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !134, file: !18, line: 249, baseType: !151, size: 64, align: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !134, file: !18, line: 250, baseType: !155, size: 64, align: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !18, line: 168, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!56, !50}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !134, file: !18, line: 251, baseType: !151, size: 64, align: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !134, file: !18, line: 252, baseType: !137, size: 64, align: 64, offset: 704)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !134, file: !18, line: 253, baseType: !137, size: 64, align: 64, offset: 768)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !134, file: !18, line: 254, baseType: !137, size: 64, align: 64, offset: 832)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !134, file: !18, line: 255, baseType: !137, size: 64, align: 64, offset: 896)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !134, file: !18, line: 256, baseType: !137, size: 64, align: 64, offset: 960)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !134, file: !18, line: 257, baseType: !151, size: 64, align: 64, offset: 1024)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !134, file: !18, line: 258, baseType: !102, size: 64, align: 64, offset: 1088)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !134, file: !18, line: 259, baseType: !151, size: 64, align: 64, offset: 1152)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !134, file: !18, line: 261, baseType: !137, size: 64, align: 64, offset: 1216)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !134, file: !18, line: 262, baseType: !137, size: 64, align: 64, offset: 1280)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !134, file: !18, line: 263, baseType: !137, size: 64, align: 64, offset: 1344)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !134, file: !18, line: 264, baseType: !137, size: 64, align: 64, offset: 1408)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !134, file: !18, line: 265, baseType: !146, size: 64, align: 64, offset: 1472)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !134, file: !18, line: 266, baseType: !137, size: 64, align: 64, offset: 1536)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !134, file: !18, line: 267, baseType: !137, size: 64, align: 64, offset: 1600)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !134, file: !18, line: 268, baseType: !137, size: 64, align: 64, offset: 1664)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !134, file: !18, line: 269, baseType: !137, size: 64, align: 64, offset: 1728)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !134, file: !18, line: 270, baseType: !137, size: 64, align: 64, offset: 1792)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !134, file: !18, line: 272, baseType: !137, size: 64, align: 64, offset: 1856)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !134, file: !18, line: 273, baseType: !137, size: 64, align: 64, offset: 1920)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !134, file: !18, line: 274, baseType: !137, size: 64, align: 64, offset: 1984)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !134, file: !18, line: 275, baseType: !137, size: 64, align: 64, offset: 2048)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !134, file: !18, line: 277, baseType: !151, size: 64, align: 64, offset: 2112)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !31, file: !18, line: 351, baseType: !184, size: 64, align: 64, offset: 832)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !18, line: 292, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 280, size: 640, align: 64, elements: !187)
!187 = !{!188, !193, !194, !199, !200, !201, !206, !207, !212, !213}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !186, file: !18, line: 281, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !18, line: 169, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!22, !50}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !186, file: !18, line: 282, baseType: !137, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !186, file: !18, line: 283, baseType: !195, size: 64, align: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !18, line: 170, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!50, !50, !22}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !186, file: !18, line: 284, baseType: !195, size: 64, align: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !186, file: !18, line: 285, baseType: !102, size: 64, align: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !186, file: !18, line: 286, baseType: !202, size: 64, align: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !18, line: 172, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!56, !50, !22, !50}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !186, file: !18, line: 287, baseType: !102, size: 64, align: 64, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !186, file: !18, line: 288, baseType: !208, size: 64, align: 64, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !18, line: 231, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!56, !50, !50}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !186, file: !18, line: 290, baseType: !137, size: 64, align: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !186, file: !18, line: 291, baseType: !195, size: 64, align: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !31, file: !18, line: 352, baseType: !215, size: 64, align: 64, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !18, line: 298, baseType: !217)
!217 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 294, size: 192, align: 64, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !217, file: !18, line: 295, baseType: !189, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !217, file: !18, line: 296, baseType: !137, size: 64, align: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !217, file: !18, line: 297, baseType: !222, size: 64, align: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !18, line: 174, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!56, !50, !50, !50}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !31, file: !18, line: 356, baseType: !227, size: 64, align: 64, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !18, line: 321, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !50}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !23, line: 186, baseType: !22)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !31, file: !18, line: 357, baseType: !146, size: 64, align: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !31, file: !18, line: 358, baseType: !127, size: 64, align: 64, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !31, file: !18, line: 359, baseType: !235, size: 64, align: 64, offset: 1152)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !18, line: 317, baseType: !138)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !31, file: !18, line: 360, baseType: !237, size: 64, align: 64, offset: 1216)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !18, line: 319, baseType: !223)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !31, file: !18, line: 363, baseType: !239, size: 64, align: 64, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !18, line: 304, baseType: !241)
!241 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 301, size: 128, align: 64, elements: !242)
!242 = !{!243, !264}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !241, file: !18, line: 302, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !18, line: 193, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!56, !50, !248, !56}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !18, line: 191, baseType: !250)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !18, line: 178, size: 640, align: 64, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !261, !262, !263}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !250, file: !18, line: 179, baseType: !102, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !250, file: !18, line: 180, baseType: !50, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !250, file: !18, line: 181, baseType: !22, size: 64, align: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !250, file: !18, line: 182, baseType: !22, size: 64, align: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !250, file: !18, line: 184, baseType: !56, size: 32, align: 32, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !250, file: !18, line: 185, baseType: !56, size: 32, align: 32, offset: 288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !250, file: !18, line: 186, baseType: !64, size: 64, align: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !250, file: !18, line: 187, baseType: !260, size: 64, align: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !250, file: !18, line: 188, baseType: !260, size: 64, align: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !250, file: !18, line: 189, baseType: !260, size: 64, align: 64, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !250, file: !18, line: 190, baseType: !102, size: 64, align: 64, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !241, file: !18, line: 303, baseType: !265, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !18, line: 194, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !50, !248}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !31, file: !18, line: 366, baseType: !109, size: 64, align: 64, offset: 1344)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !31, file: !18, line: 368, baseType: !40, size: 64, align: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !31, file: !18, line: 372, baseType: !272, size: 64, align: 64, offset: 1472)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !18, line: 233, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!56, !50, !276, !102}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !18, line: 232, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!56, !50, !102}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !31, file: !18, line: 375, baseType: !155, size: 64, align: 64, offset: 1536)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !31, file: !18, line: 379, baseType: !282, size: 64, align: 64, offset: 1600)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !18, line: 322, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!50, !50, !50, !56}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !31, file: !18, line: 382, baseType: !22, size: 64, align: 64, offset: 1664)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !31, file: !18, line: 385, baseType: !288, size: 64, align: 64, offset: 1728)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !18, line: 323, baseType: !128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !31, file: !18, line: 386, baseType: !290, size: 64, align: 64, offset: 1792)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !18, line: 324, baseType: !128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !31, file: !18, line: 389, baseType: !292, size: 64, align: 64, offset: 1856)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !294, line: 40, size: 256, align: 64, elements: !295)
!294 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!295 = !{!296, !297, !299, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !293, file: !294, line: 41, baseType: !40, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !293, file: !294, line: 42, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !294, line: 18, baseType: !138)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !293, file: !294, line: 43, baseType: !56, size: 32, align: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !293, file: !294, line: 45, baseType: !40, size: 64, align: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !31, file: !18, line: 390, baseType: !302, size: 64, align: 64, offset: 1920)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !304, line: 18, size: 320, align: 64, elements: !305)
!304 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!305 = !{!306, !307, !308, !309, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !304, line: 19, baseType: !64, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !303, file: !304, line: 20, baseType: !56, size: 32, align: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !303, file: !304, line: 21, baseType: !22, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !304, line: 22, baseType: !56, size: 32, align: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !303, file: !304, line: 23, baseType: !64, size: 64, align: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !31, file: !18, line: 391, baseType: !312, size: 64, align: 64, offset: 1984)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !314, line: 11, size: 320, align: 64, elements: !315)
!314 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!315 = !{!316, !317, !322, !327, !328}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !314, line: 12, baseType: !64, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !313, file: !314, line: 13, baseType: !318, size: 64, align: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !314, line: 8, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!50, !50, !102}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !313, file: !314, line: 14, baseType: !323, size: 64, align: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !314, line: 9, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!56, !50, !50, !102}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !313, file: !314, line: 15, baseType: !64, size: 64, align: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !313, file: !314, line: 16, baseType: !102, size: 64, align: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !31, file: !18, line: 392, baseType: !30, size: 64, align: 64, offset: 2048)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !31, file: !18, line: 393, baseType: !50, size: 64, align: 64, offset: 2112)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !31, file: !18, line: 394, baseType: !332, size: 64, align: 64, offset: 2176)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !18, line: 325, baseType: !147)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !31, file: !18, line: 395, baseType: !334, size: 64, align: 64, offset: 2240)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !18, line: 326, baseType: !223)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !31, file: !18, line: 396, baseType: !22, size: 64, align: 64, offset: 2304)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !31, file: !18, line: 397, baseType: !337, size: 64, align: 64, offset: 2368)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !18, line: 327, baseType: !223)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !31, file: !18, line: 398, baseType: !339, size: 64, align: 64, offset: 2432)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !18, line: 329, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!50, !30, !22}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !31, file: !18, line: 399, baseType: !344, size: 64, align: 64, offset: 2496)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !18, line: 328, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!50, !30, !50, !50}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !31, file: !18, line: 400, baseType: !349, size: 64, align: 64, offset: 2560)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !18, line: 307, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !102}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !31, file: !18, line: 401, baseType: !155, size: 64, align: 64, offset: 2624)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !31, file: !18, line: 402, baseType: !50, size: 64, align: 64, offset: 2688)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !31, file: !18, line: 403, baseType: !50, size: 64, align: 64, offset: 2752)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !31, file: !18, line: 404, baseType: !50, size: 64, align: 64, offset: 2816)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !31, file: !18, line: 405, baseType: !50, size: 64, align: 64, offset: 2880)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !31, file: !18, line: 406, baseType: !50, size: 64, align: 64, offset: 2944)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !31, file: !18, line: 407, baseType: !46, size: 64, align: 64, offset: 3008)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !31, file: !18, line: 410, baseType: !361, size: 32, align: 32, offset: 3072)
!361 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !31, file: !18, line: 412, baseType: !46, size: 64, align: 64, offset: 3136)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "cval", scope: !14, file: !13, line: 43, baseType: !364, size: 128, align: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_complex", file: !13, line: 13, baseType: !365)
!365 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 10, size: 128, align: 64, elements: !366)
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !365, file: !13, line: 11, baseType: !368, size: 64, align: 64)
!368 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !365, file: !13, line: 12, baseType: !368, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uhash_t", file: !23, line: 189, baseType: !107)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !4, line: 351, baseType: !373)
!373 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 217, size: 384, align: 64, elements: !374)
!374 = !{!375, !376, !377, !378, !386}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !373, file: !4, line: 291, baseType: !17, size: 128, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !373, file: !4, line: 292, baseType: !22, size: 64, align: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !373, file: !4, line: 293, baseType: !231, size: 64, align: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !4, line: 349, baseType: !379, size: 32, align: 32, offset: 256)
!379 = !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !4, line: 294, size: 32, align: 32, elements: !380)
!380 = !{!381, !382, !383, !384, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !379, file: !4, line: 303, baseType: !361, size: 2, align: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !379, file: !4, line: 331, baseType: !361, size: 3, align: 32, offset: 2)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !379, file: !4, line: 336, baseType: !361, size: 1, align: 32, offset: 5)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !379, file: !4, line: 340, baseType: !361, size: 1, align: 32, offset: 6)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !379, file: !4, line: 345, baseType: !361, size: 1, align: 32, offset: 7)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !373, file: !4, line: 350, baseType: !387, size: 64, align: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !108, line: 90, baseType: !56)
!389 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!390 = !{!391, !399, !404, !410, !415, !432, !441, !447, !453, !460, !465, !468, !479, !492, !495, !508, !515, !524, !531, !538, !542, !546, !556, !563, !570, !574, !577, !581, !586, !589, !592, !596, !603, !611, !631, !635, !639, !660, !707, !732, !740}
!391 = !DISubprogram(name: "_Py_c_sum", scope: !392, file: !392, line: 16, type: !393, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_sum, variables: !395)
!392 = !DIFile(filename: "Objects/complexobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!393 = !DISubroutineType(types: !394)
!394 = !{!364, !364, !364}
!395 = !{!396, !397, !398}
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !391, file: !392, line: 16, type: !364)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !391, file: !392, line: 16, type: !364)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !391, file: !392, line: 18, type: !364)
!399 = !DISubprogram(name: "_Py_c_diff", scope: !392, file: !392, line: 25, type: !393, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_diff, variables: !400)
!400 = !{!401, !402, !403}
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !399, file: !392, line: 25, type: !364)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !399, file: !392, line: 25, type: !364)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !399, file: !392, line: 27, type: !364)
!404 = !DISubprogram(name: "_Py_c_neg", scope: !392, file: !392, line: 34, type: !405, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double)* @_Py_c_neg, variables: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!364, !364}
!407 = !{!408, !409}
!408 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !404, file: !392, line: 34, type: !364)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !404, file: !392, line: 36, type: !364)
!410 = !DISubprogram(name: "_Py_c_prod", scope: !392, file: !392, line: 43, type: !393, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_prod, variables: !411)
!411 = !{!412, !413, !414}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !410, file: !392, line: 43, type: !364)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !410, file: !392, line: 43, type: !364)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !410, file: !392, line: 45, type: !364)
!415 = !DISubprogram(name: "_Py_c_quot", scope: !392, file: !392, line: 52, type: !393, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_quot, variables: !416)
!416 = !{!417, !418, !419, !420, !422, !423, !428, !429, !431}
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !415, file: !392, line: 52, type: !364)
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !415, file: !392, line: 52, type: !364)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !415, file: !392, line: 77, type: !364)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "abs_breal", scope: !415, file: !392, line: 78, type: !421)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "abs_bimag", scope: !415, file: !392, line: 79, type: !421)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ratio", scope: !424, file: !392, line: 88, type: !421)
!424 = distinct !DILexicalBlock(scope: !425, file: !392, line: 87, column: 14)
!425 = distinct !DILexicalBlock(scope: !426, file: !392, line: 83, column: 13)
!426 = distinct !DILexicalBlock(scope: !427, file: !392, line: 81, column: 34)
!427 = distinct !DILexicalBlock(scope: !415, file: !392, line: 81, column: 10)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "denom", scope: !424, file: !392, line: 89, type: !421)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ratio", scope: !430, file: !392, line: 96, type: !421)
!430 = distinct !DILexicalBlock(scope: !427, file: !392, line: 94, column: 10)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "denom", scope: !430, file: !392, line: 97, type: !421)
!432 = !DISubprogram(name: "_Py_c_pow", scope: !392, file: !392, line: 106, type: !393, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_pow, variables: !433)
!433 = !{!434, !435, !436, !437, !438, !439, !440}
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !432, file: !392, line: 106, type: !364)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !432, file: !392, line: 106, type: !364)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !432, file: !392, line: 108, type: !364)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vabs", scope: !432, file: !392, line: 109, type: !368)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !432, file: !392, line: 109, type: !368)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "at", scope: !432, file: !392, line: 109, type: !368)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "phase", scope: !432, file: !392, line: 109, type: !368)
!441 = !DISubprogram(name: "_Py_c_abs", scope: !392, file: !392, line: 169, type: !442, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double)* @_Py_c_abs, variables: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!368, !364}
!444 = !{!445, !446}
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "z", arg: 1, scope: !441, file: !392, line: 169, type: !364)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !441, file: !392, line: 172, type: !368)
!447 = !DISubprogram(name: "PyComplex_FromCComplex", scope: !392, file: !392, line: 212, type: !448, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (double, double)* @PyComplex_FromCComplex, variables: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{!50, !364}
!450 = !{!451, !452}
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cval", arg: 1, scope: !447, file: !392, line: 212, type: !364)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !447, file: !392, line: 214, type: !11)
!453 = !DISubprogram(name: "PyComplex_FromDoubles", scope: !392, file: !392, line: 235, type: !454, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (double, double)* @PyComplex_FromDoubles, variables: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!50, !368, !368}
!456 = !{!457, !458, !459}
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "real", arg: 1, scope: !453, file: !392, line: 235, type: !368)
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "imag", arg: 2, scope: !453, file: !392, line: 235, type: !368)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !453, file: !392, line: 237, type: !364)
!460 = !DISubprogram(name: "PyComplex_RealAsDouble", scope: !392, file: !392, line: 244, type: !461, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._object*)* @PyComplex_RealAsDouble, variables: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!368, !50}
!463 = !{!464}
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !460, file: !392, line: 244, type: !50)
!465 = !DISubprogram(name: "PyComplex_ImagAsDouble", scope: !392, file: !392, line: 255, type: !461, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._object*)* @PyComplex_ImagAsDouble, variables: !466)
!466 = !{!467}
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !465, file: !392, line: 255, type: !50)
!468 = !DISubprogram(name: "PyComplex_AsCComplex", scope: !392, file: !392, line: 286, type: !469, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (%struct._object*)* @PyComplex_AsCComplex, variables: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{!364, !50}
!471 = !{!472, !473, !474, !475}
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !468, file: !392, line: 286, type: !50)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cv", scope: !468, file: !392, line: 288, type: !364)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newop", scope: !468, file: !392, line: 289, type: !50)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !476, file: !392, line: 306, type: !50)
!476 = distinct !DILexicalBlock(scope: !477, file: !392, line: 306, column: 12)
!477 = distinct !DILexicalBlock(scope: !478, file: !392, line: 304, column: 16)
!478 = distinct !DILexicalBlock(scope: !468, file: !392, line: 304, column: 9)
!479 = !DISubprogram(name: "try_complex_special_method", scope: !392, file: !392, line: 266, type: !129, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @try_complex_special_method, variables: !480)
!480 = !{!481, !482, !483, !486, !488}
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !479, file: !392, line: 266, type: !50)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !479, file: !392, line: 267, type: !50)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !484, file: !392, line: 272, type: !50)
!484 = distinct !DILexicalBlock(scope: !485, file: !392, line: 271, column: 12)
!485 = distinct !DILexicalBlock(scope: !479, file: !392, line: 271, column: 9)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !487, file: !392, line: 273, type: !50)
!487 = distinct !DILexicalBlock(scope: !484, file: !392, line: 273, column: 12)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !489, file: !392, line: 277, type: !50)
!489 = distinct !DILexicalBlock(scope: !490, file: !392, line: 277, column: 16)
!490 = distinct !DILexicalBlock(scope: !491, file: !392, line: 274, column: 159)
!491 = distinct !DILexicalBlock(scope: !484, file: !392, line: 274, column: 13)
!492 = !DISubprogram(name: "complex_dealloc", scope: !392, file: !392, line: 322, type: !48, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @complex_dealloc, variables: !493)
!493 = !{!494}
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !492, file: !392, line: 322, type: !50)
!495 = !DISubprogram(name: "complex_repr", scope: !392, file: !392, line: 328, type: !496, isLocal: true, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_repr, variables: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!50, !11}
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !495, file: !392, line: 328, type: !11)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "precision", scope: !495, file: !392, line: 330, type: !56)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_code", scope: !495, file: !392, line: 331, type: !42)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !495, file: !392, line: 332, type: !50)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pre", scope: !495, file: !392, line: 335, type: !64)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !495, file: !392, line: 336, type: !64)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re", scope: !495, file: !392, line: 341, type: !64)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lead", scope: !495, file: !392, line: 342, type: !64)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !495, file: !392, line: 343, type: !64)
!508 = !DISubprogram(name: "complex_add", scope: !392, file: !392, line: 437, type: !139, isLocal: true, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_add, variables: !509)
!509 = !{!510, !511, !512, !513, !514}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !508, file: !392, line: 437, type: !50)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !508, file: !392, line: 437, type: !50)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !508, file: !392, line: 439, type: !364)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !508, file: !392, line: 440, type: !364)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !508, file: !392, line: 440, type: !364)
!515 = !DISubprogram(name: "to_complex", scope: !392, file: !392, line: 413, type: !516, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object**, %struct.Py_complex*)* @to_complex, variables: !520)
!516 = !DISubroutineType(types: !517)
!517 = !{!56, !518, !519}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!520 = !{!521, !522, !523}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pobj", arg: 1, scope: !515, file: !392, line: 413, type: !518)
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pc", arg: 2, scope: !515, file: !392, line: 413, type: !519)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !515, file: !392, line: 415, type: !50)
!524 = !DISubprogram(name: "complex_sub", scope: !392, file: !392, line: 450, type: !139, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_sub, variables: !525)
!525 = !{!526, !527, !528, !529, !530}
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !524, file: !392, line: 450, type: !50)
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !524, file: !392, line: 450, type: !50)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !524, file: !392, line: 452, type: !364)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !524, file: !392, line: 453, type: !364)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !524, file: !392, line: 453, type: !364)
!531 = !DISubprogram(name: "complex_mul", scope: !392, file: !392, line: 463, type: !139, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_mul, variables: !532)
!532 = !{!533, !534, !535, !536, !537}
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !531, file: !392, line: 463, type: !50)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !531, file: !392, line: 463, type: !50)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !531, file: !392, line: 465, type: !364)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !531, file: !392, line: 466, type: !364)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !531, file: !392, line: 466, type: !364)
!538 = !DISubprogram(name: "complex_remainder", scope: !392, file: !392, line: 494, type: !139, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_remainder, variables: !539)
!539 = !{!540, !541}
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !538, file: !392, line: 494, type: !50)
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !538, file: !392, line: 494, type: !50)
!542 = !DISubprogram(name: "complex_divmod", scope: !392, file: !392, line: 503, type: !139, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_divmod, variables: !543)
!543 = !{!544, !545}
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !542, file: !392, line: 503, type: !50)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !542, file: !392, line: 503, type: !50)
!546 = !DISubprogram(name: "complex_pow", scope: !392, file: !392, line: 511, type: !148, isLocal: true, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @complex_pow, variables: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555}
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !546, file: !392, line: 511, type: !50)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !546, file: !392, line: 511, type: !50)
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "z", arg: 3, scope: !546, file: !392, line: 511, type: !50)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !546, file: !392, line: 513, type: !364)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exponent", scope: !546, file: !392, line: 514, type: !364)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "int_exponent", scope: !546, file: !392, line: 515, type: !28)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !546, file: !392, line: 516, type: !364)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !546, file: !392, line: 516, type: !364)
!556 = !DISubprogram(name: "c_powi", scope: !392, file: !392, line: 152, type: !557, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, i64)* @c_powi, variables: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{!364, !364, !28}
!559 = !{!560, !561, !562}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !556, file: !392, line: 152, type: !364)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !556, file: !392, line: 152, type: !28)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cn", scope: !556, file: !392, line: 154, type: !364)
!563 = !DISubprogram(name: "c_powu", scope: !392, file: !392, line: 136, type: !557, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, i64)* @c_powu, variables: !564)
!564 = !{!565, !566, !567, !568, !569}
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !563, file: !392, line: 136, type: !364)
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !563, file: !392, line: 136, type: !28)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !563, file: !392, line: 138, type: !364)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !563, file: !392, line: 138, type: !364)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !563, file: !392, line: 139, type: !28)
!570 = !DISubprogram(name: "complex_neg", scope: !392, file: !392, line: 557, type: !496, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_neg, variables: !571)
!571 = !{!572, !573}
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !570, file: !392, line: 557, type: !11)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "neg", scope: !570, file: !392, line: 559, type: !364)
!574 = !DISubprogram(name: "complex_pos", scope: !392, file: !392, line: 566, type: !496, isLocal: true, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_pos, variables: !575)
!575 = !{!576}
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !574, file: !392, line: 566, type: !11)
!577 = !DISubprogram(name: "complex_abs", scope: !392, file: !392, line: 577, type: !496, isLocal: true, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_abs, variables: !578)
!578 = !{!579, !580}
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !577, file: !392, line: 577, type: !11)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !577, file: !392, line: 579, type: !368)
!581 = !DISubprogram(name: "complex_bool", scope: !392, file: !392, line: 594, type: !582, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyComplexObject*)* @complex_bool, variables: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{!56, !11}
!584 = !{!585}
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !581, file: !392, line: 594, type: !11)
!586 = !DISubprogram(name: "complex_int", scope: !392, file: !392, line: 657, type: !129, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @complex_int, variables: !587)
!587 = !{!588}
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !586, file: !392, line: 657, type: !50)
!589 = !DISubprogram(name: "complex_float", scope: !392, file: !392, line: 665, type: !129, isLocal: true, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @complex_float, variables: !590)
!590 = !{!591}
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !589, file: !392, line: 665, type: !50)
!592 = !DISubprogram(name: "complex_int_div", scope: !392, file: !392, line: 549, type: !139, isLocal: true, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_int_div, variables: !593)
!593 = !{!594, !595}
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !592, file: !392, line: 549, type: !50)
!595 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !592, file: !392, line: 549, type: !50)
!596 = !DISubprogram(name: "complex_div", scope: !392, file: !392, line: 476, type: !139, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_div, variables: !597)
!597 = !{!598, !599, !600, !601, !602}
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !596, file: !392, line: 476, type: !50)
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !596, file: !392, line: 476, type: !50)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quot", scope: !596, file: !392, line: 478, type: !364)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !596, file: !392, line: 479, type: !364)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !596, file: !392, line: 479, type: !364)
!603 = !DISubprogram(name: "complex_hash", scope: !392, file: !392, line: 384, type: !604, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyComplexObject*)* @complex_hash, variables: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!231, !11}
!606 = !{!607, !608, !609, !610}
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !603, file: !392, line: 384, type: !11)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hashreal", scope: !603, file: !392, line: 386, type: !370)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hashimag", scope: !603, file: !392, line: 386, type: !370)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "combined", scope: !603, file: !392, line: 386, type: !370)
!611 = !DISubprogram(name: "complex_richcompare", scope: !392, file: !392, line: 600, type: !284, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @complex_richcompare, variables: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !624, !625, !627}
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !611, file: !392, line: 600, type: !50)
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !611, file: !392, line: 600, type: !50)
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !611, file: !392, line: 600, type: !56)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !611, file: !392, line: 602, type: !50)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !611, file: !392, line: 603, type: !364)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "equal", scope: !611, file: !392, line: 604, type: !56)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !620, file: !392, line: 618, type: !50)
!620 = distinct !DILexicalBlock(scope: !621, file: !392, line: 617, column: 28)
!621 = distinct !DILexicalBlock(scope: !622, file: !392, line: 617, column: 13)
!622 = distinct !DILexicalBlock(scope: !623, file: !392, line: 613, column: 75)
!623 = distinct !DILexicalBlock(scope: !611, file: !392, line: 613, column: 9)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sub_res", scope: !620, file: !392, line: 618, type: !50)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !626, file: !392, line: 624, type: !50)
!626 = distinct !DILexicalBlock(scope: !620, file: !392, line: 624, column: 16)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !628, file: !392, line: 635, type: !364)
!628 = distinct !DILexicalBlock(scope: !629, file: !392, line: 634, column: 134)
!629 = distinct !DILexicalBlock(scope: !630, file: !392, line: 634, column: 14)
!630 = distinct !DILexicalBlock(scope: !623, file: !392, line: 631, column: 14)
!631 = !DISubprogram(name: "complex_conjugate", scope: !392, file: !392, line: 673, type: !129, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @complex_conjugate, variables: !632)
!632 = !{!633, !634}
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !631, file: !392, line: 673, type: !50)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !631, file: !392, line: 675, type: !364)
!635 = !DISubprogram(name: "complex_getnewargs", scope: !392, file: !392, line: 687, type: !496, isLocal: true, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_getnewargs, variables: !636)
!636 = !{!637, !638}
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !635, file: !392, line: 687, type: !11)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !635, file: !392, line: 689, type: !364)
!639 = !DISubprogram(name: "complex__format__", scope: !392, file: !392, line: 699, type: !139, isLocal: true, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex__format__, variables: !640)
!640 = !{!641, !642, !643, !644, !659}
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !639, file: !392, line: 699, type: !50)
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !639, file: !392, line: 699, type: !50)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_spec", scope: !639, file: !392, line: 701, type: !50)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writer", scope: !639, file: !392, line: 702, type: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyUnicodeWriter", file: !4, line: 917, baseType: !646)
!646 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 897, size: 448, align: 64, elements: !647)
!647 = !{!648, !649, !650, !651, !653, !654, !655, !656, !657, !658}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !646, file: !4, line: 898, baseType: !50, size: 64, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !646, file: !4, line: 899, baseType: !102, size: 64, align: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !646, file: !4, line: 900, baseType: !3, size: 32, align: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "maxchar", scope: !646, file: !4, line: 901, baseType: !652, size: 32, align: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !361)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !646, file: !4, line: 902, baseType: !22, size: 64, align: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !646, file: !4, line: 903, baseType: !22, size: 64, align: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !646, file: !4, line: 906, baseType: !22, size: 64, align: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "min_char", scope: !646, file: !4, line: 909, baseType: !652, size: 32, align: 32, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "overallocate", scope: !646, file: !4, line: 912, baseType: !389, size: 8, align: 8, offset: 416)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !646, file: !4, line: 916, baseType: !389, size: 8, align: 8, offset: 424)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !639, file: !392, line: 703, type: !56)
!660 = !DISubprogram(name: "complex_new", scope: !392, file: !392, line: 901, type: !661, isLocal: true, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @complex_new, variables: !665)
!661 = !DISubroutineType(types: !662)
!662 = !{!50, !663, !50, !50}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !18, line: 422, baseType: !31)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !685, !691, !696, !700, !702}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !660, file: !392, line: 901, type: !663)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !660, file: !392, line: 901, type: !50)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !660, file: !392, line: 901, type: !50)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !660, file: !392, line: 903, type: !50)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !660, file: !392, line: 903, type: !50)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !660, file: !392, line: 903, type: !50)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbr", scope: !660, file: !392, line: 904, type: !132)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbi", scope: !660, file: !392, line: 904, type: !132)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cr", scope: !660, file: !392, line: 905, type: !364)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ci", scope: !660, file: !392, line: 905, type: !364)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "own_r", scope: !660, file: !392, line: 906, type: !56)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cr_is_complex", scope: !660, file: !392, line: 907, type: !56)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ci_is_complex", scope: !660, file: !392, line: 908, type: !56)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !680, file: !392, line: 961, type: !50)
!680 = distinct !DILexicalBlock(scope: !681, file: !392, line: 961, column: 16)
!681 = distinct !DILexicalBlock(scope: !682, file: !392, line: 960, column: 20)
!682 = distinct !DILexicalBlock(scope: !683, file: !392, line: 960, column: 13)
!683 = distinct !DILexicalBlock(scope: !684, file: !392, line: 956, column: 84)
!684 = distinct !DILexicalBlock(scope: !660, file: !392, line: 955, column: 9)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !686, file: !392, line: 980, type: !50)
!686 = distinct !DILexicalBlock(scope: !687, file: !392, line: 980, column: 16)
!687 = distinct !DILexicalBlock(scope: !688, file: !392, line: 979, column: 20)
!688 = distinct !DILexicalBlock(scope: !689, file: !392, line: 979, column: 13)
!689 = distinct !DILexicalBlock(scope: !690, file: !392, line: 973, column: 129)
!690 = distinct !DILexicalBlock(scope: !660, file: !392, line: 973, column: 9)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !692, file: !392, line: 991, type: !50)
!692 = distinct !DILexicalBlock(scope: !693, file: !392, line: 991, column: 16)
!693 = distinct !DILexicalBlock(scope: !694, file: !392, line: 988, column: 20)
!694 = distinct !DILexicalBlock(scope: !695, file: !392, line: 988, column: 13)
!695 = distinct !DILexicalBlock(scope: !690, file: !392, line: 983, column: 10)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !697, file: !392, line: 998, type: !50)
!697 = distinct !DILexicalBlock(scope: !698, file: !392, line: 998, column: 16)
!698 = distinct !DILexicalBlock(scope: !699, file: !392, line: 995, column: 134)
!699 = distinct !DILexicalBlock(scope: !695, file: !392, line: 995, column: 13)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !701, file: !392, line: 1003, type: !50)
!701 = distinct !DILexicalBlock(scope: !695, file: !392, line: 1003, column: 12)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !703, file: !392, line: 1019, type: !50)
!703 = distinct !DILexicalBlock(scope: !704, file: !392, line: 1019, column: 12)
!704 = distinct !DILexicalBlock(scope: !705, file: !392, line: 1011, column: 12)
!705 = distinct !DILexicalBlock(scope: !706, file: !392, line: 1008, column: 14)
!706 = distinct !DILexicalBlock(scope: !660, file: !392, line: 1005, column: 9)
!707 = !DISubprogram(name: "complex_subtype_from_string", scope: !392, file: !392, line: 758, type: !708, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*)* @complex_subtype_from_string, variables: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!50, !663, !50}
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !724, !727, !729}
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !707, file: !392, line: 758, type: !663)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !707, file: !392, line: 758, type: !50)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !707, file: !392, line: 760, type: !40)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !707, file: !392, line: 760, type: !40)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !707, file: !392, line: 761, type: !64)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !707, file: !392, line: 762, type: !368)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !707, file: !392, line: 762, type: !368)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !707, file: !392, line: 762, type: !368)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "got_bracket", scope: !707, file: !392, line: 763, type: !56)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_buffer", scope: !707, file: !392, line: 764, type: !50)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !707, file: !392, line: 765, type: !22)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !723, file: !392, line: 889, type: !50)
!723 = distinct !DILexicalBlock(scope: !707, file: !392, line: 889, column: 8)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !725, file: !392, line: 889, type: !50)
!725 = distinct !DILexicalBlock(scope: !726, file: !392, line: 889, column: 100)
!726 = distinct !DILexicalBlock(scope: !723, file: !392, line: 889, column: 66)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !728, file: !392, line: 896, type: !50)
!728 = distinct !DILexicalBlock(scope: !707, file: !392, line: 896, column: 8)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !730, file: !392, line: 896, type: !50)
!730 = distinct !DILexicalBlock(scope: !731, file: !392, line: 896, column: 100)
!731 = distinct !DILexicalBlock(scope: !728, file: !392, line: 896, column: 66)
!732 = !DISubprogram(name: "complex_subtype_from_doubles", scope: !392, file: !392, line: 226, type: !733, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, double, double)* @complex_subtype_from_doubles, variables: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!50, !663, !368, !368}
!735 = !{!736, !737, !738, !739}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !732, file: !392, line: 226, type: !663)
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "real", arg: 2, scope: !732, file: !392, line: 226, type: !368)
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "imag", arg: 3, scope: !732, file: !392, line: 226, type: !368)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !732, file: !392, line: 228, type: !364)
!740 = !DISubprogram(name: "complex_subtype_from_c_complex", scope: !392, file: !392, line: 201, type: !741, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, double, double)* @complex_subtype_from_c_complex, variables: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!50, !663, !364}
!743 = !{!744, !745, !746}
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !740, file: !392, line: 201, type: !663)
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cval", arg: 2, scope: !740, file: !392, line: 201, type: !364)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !740, file: !392, line: 203, type: !50)
!747 = !{!748, !749, !757, !758, !759, !763, !768, !772, !776, !781}
!748 = !DIGlobalVariable(name: "PyComplex_Type", scope: !0, file: !392, line: 1076, type: !664, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyComplex_Type)
!749 = !DIGlobalVariable(name: "PyId___complex__", scope: !479, file: !392, line: 268, type: !750, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @try_complex_special_method.PyId___complex__)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !18, line: 144, baseType: !751)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !18, line: 140, size: 192, align: 64, elements: !752)
!752 = !{!753, !755, !756}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !18, line: 141, baseType: !754, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !751, file: !18, line: 142, baseType: !40, size: 64, align: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !751, file: !18, line: 143, baseType: !50, size: 64, align: 64, offset: 128)
!757 = !DIGlobalVariable(name: "complex_as_number", scope: !0, file: !392, line: 1040, type: !133, isLocal: true, isDefinition: true, variable: %struct.PyNumberMethods* @complex_as_number)
!758 = !DIGlobalVariable(name: "c_1", scope: !0, file: !392, line: 13, type: !364, isLocal: true, isDefinition: true, variable: %struct.Py_complex* @c_1)
!759 = !DIGlobalVariable(name: "complex_doc", scope: !0, file: !392, line: 1034, type: !760, isLocal: true, isDefinition: true, variable: [179 x i8]* @complex_doc)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1432, align: 8, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 179)
!763 = !DIGlobalVariable(name: "complex_methods", scope: !0, file: !392, line: 736, type: !764, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @complex_methods)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 1024, align: 64, elements: !766)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !294, line: 47, baseType: !293)
!766 = !{!767}
!767 = !DISubrange(count: 4)
!768 = !DIGlobalVariable(name: "complex_conjugate_doc", scope: !0, file: !392, line: 681, type: !769, isLocal: true, isDefinition: true, variable: [106 x i8]* @complex_conjugate_doc)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 848, align: 8, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 106)
!772 = !DIGlobalVariable(name: "complex__format__doc", scope: !0, file: !392, line: 693, type: !773, isLocal: true, isDefinition: true, variable: [75 x i8]* @complex__format__doc)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 600, align: 8, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 75)
!776 = !DIGlobalVariable(name: "complex_members", scope: !0, file: !392, line: 749, type: !777, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMemberDef]* @complex_members)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 960, align: 64, elements: !779)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !304, line: 24, baseType: !303)
!779 = !{!780}
!780 = !DISubrange(count: 3)
!781 = !DIGlobalVariable(name: "kwlist", scope: !660, file: !392, line: 909, type: !782, isLocal: true, isDefinition: true, variable: [3 x i8*]* @complex_new.kwlist)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, align: 64, elements: !779)
!783 = !{i32 2, !"Dwarf Version", i32 4}
!784 = !{i32 2, !"Debug Info Version", i32 3}
!785 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!786 = !DIExpression()
!787 = !DILocation(line: 16, column: 22, scope: !391)
!788 = !DILocation(line: 16, column: 36, scope: !391)
!789 = !DILocation(line: 18, column: 5, scope: !391)
!790 = !DILocation(line: 18, column: 16, scope: !391)
!791 = !DILocation(line: 19, column: 16, scope: !391)
!792 = !{!793, !794, i64 0}
!793 = !{!"", !794, i64 0, !794, i64 8}
!794 = !{!"double", !795, i64 0}
!795 = !{!"omnipotent char", !796, i64 0}
!796 = !{!"Simple C/C++ TBAA"}
!797 = !DILocation(line: 19, column: 25, scope: !391)
!798 = !DILocation(line: 19, column: 21, scope: !391)
!799 = !DILocation(line: 19, column: 7, scope: !391)
!800 = !DILocation(line: 19, column: 12, scope: !391)
!801 = !DILocation(line: 20, column: 16, scope: !391)
!802 = !{!793, !794, i64 8}
!803 = !DILocation(line: 20, column: 25, scope: !391)
!804 = !DILocation(line: 20, column: 21, scope: !391)
!805 = !DILocation(line: 20, column: 7, scope: !391)
!806 = !DILocation(line: 20, column: 12, scope: !391)
!807 = !DILocation(line: 21, column: 12, scope: !391)
!808 = !{i64 0, i64 8, !809, i64 8, i64 8, !809}
!809 = !{!794, !794, i64 0}
!810 = !DILocation(line: 22, column: 1, scope: !391)
!811 = !DILocation(line: 25, column: 23, scope: !399)
!812 = !DILocation(line: 25, column: 37, scope: !399)
!813 = !DILocation(line: 27, column: 5, scope: !399)
!814 = !DILocation(line: 27, column: 16, scope: !399)
!815 = !DILocation(line: 28, column: 16, scope: !399)
!816 = !DILocation(line: 28, column: 25, scope: !399)
!817 = !DILocation(line: 28, column: 21, scope: !399)
!818 = !DILocation(line: 28, column: 7, scope: !399)
!819 = !DILocation(line: 28, column: 12, scope: !399)
!820 = !DILocation(line: 29, column: 16, scope: !399)
!821 = !DILocation(line: 29, column: 25, scope: !399)
!822 = !DILocation(line: 29, column: 21, scope: !399)
!823 = !DILocation(line: 29, column: 7, scope: !399)
!824 = !DILocation(line: 29, column: 12, scope: !399)
!825 = !DILocation(line: 30, column: 12, scope: !399)
!826 = !DILocation(line: 31, column: 1, scope: !399)
!827 = !DILocation(line: 34, column: 22, scope: !404)
!828 = !DILocation(line: 36, column: 5, scope: !404)
!829 = !DILocation(line: 36, column: 16, scope: !404)
!830 = !DILocation(line: 37, column: 17, scope: !404)
!831 = !DILocation(line: 37, column: 14, scope: !404)
!832 = !DILocation(line: 37, column: 7, scope: !404)
!833 = !DILocation(line: 37, column: 12, scope: !404)
!834 = !DILocation(line: 38, column: 17, scope: !404)
!835 = !DILocation(line: 38, column: 14, scope: !404)
!836 = !DILocation(line: 38, column: 7, scope: !404)
!837 = !DILocation(line: 38, column: 12, scope: !404)
!838 = !DILocation(line: 39, column: 12, scope: !404)
!839 = !DILocation(line: 40, column: 1, scope: !404)
!840 = !DILocation(line: 43, column: 23, scope: !410)
!841 = !DILocation(line: 43, column: 37, scope: !410)
!842 = !DILocation(line: 45, column: 5, scope: !410)
!843 = !DILocation(line: 45, column: 16, scope: !410)
!844 = !DILocation(line: 46, column: 16, scope: !410)
!845 = !DILocation(line: 46, column: 23, scope: !410)
!846 = !DILocation(line: 46, column: 20, scope: !410)
!847 = !DILocation(line: 46, column: 32, scope: !410)
!848 = !DILocation(line: 46, column: 39, scope: !410)
!849 = !DILocation(line: 46, column: 36, scope: !410)
!850 = !DILocation(line: 46, column: 28, scope: !410)
!851 = !DILocation(line: 46, column: 7, scope: !410)
!852 = !DILocation(line: 46, column: 12, scope: !410)
!853 = !DILocation(line: 47, column: 16, scope: !410)
!854 = !DILocation(line: 47, column: 23, scope: !410)
!855 = !DILocation(line: 47, column: 20, scope: !410)
!856 = !DILocation(line: 47, column: 32, scope: !410)
!857 = !DILocation(line: 47, column: 39, scope: !410)
!858 = !DILocation(line: 47, column: 36, scope: !410)
!859 = !DILocation(line: 47, column: 28, scope: !410)
!860 = !DILocation(line: 47, column: 7, scope: !410)
!861 = !DILocation(line: 47, column: 12, scope: !410)
!862 = !DILocation(line: 48, column: 12, scope: !410)
!863 = !DILocation(line: 49, column: 1, scope: !410)
!864 = !DILocation(line: 52, column: 23, scope: !415)
!865 = !DILocation(line: 52, column: 37, scope: !415)
!866 = !DILocation(line: 77, column: 6, scope: !415)
!867 = !DILocation(line: 77, column: 17, scope: !415)
!868 = !DILocation(line: 78, column: 6, scope: !415)
!869 = !DILocation(line: 78, column: 19, scope: !415)
!870 = !DILocation(line: 78, column: 33, scope: !415)
!871 = !DILocation(line: 78, column: 38, scope: !415)
!872 = !DILocation(line: 78, column: 31, scope: !415)
!873 = !DILocation(line: 78, column: 47, scope: !874)
!874 = !DILexicalBlockFile(scope: !415, file: !392, discriminator: 1)
!875 = !DILocation(line: 78, column: 44, scope: !415)
!876 = !DILocation(line: 78, column: 56, scope: !877)
!877 = !DILexicalBlockFile(scope: !415, file: !392, discriminator: 2)
!878 = !DILocation(line: 78, column: 19, scope: !879)
!879 = !DILexicalBlockFile(scope: !880, file: !392, discriminator: 4)
!880 = !DILexicalBlockFile(scope: !415, file: !392, discriminator: 3)
!881 = !DILocation(line: 79, column: 6, scope: !415)
!882 = !DILocation(line: 79, column: 19, scope: !415)
!883 = !DILocation(line: 79, column: 33, scope: !415)
!884 = !DILocation(line: 79, column: 38, scope: !415)
!885 = !DILocation(line: 79, column: 31, scope: !415)
!886 = !DILocation(line: 79, column: 47, scope: !874)
!887 = !DILocation(line: 79, column: 44, scope: !415)
!888 = !DILocation(line: 79, column: 56, scope: !877)
!889 = !DILocation(line: 79, column: 19, scope: !879)
!890 = !DILocation(line: 81, column: 10, scope: !427)
!891 = !DILocation(line: 81, column: 23, scope: !427)
!892 = !DILocation(line: 81, column: 20, scope: !427)
!893 = !DILocation(line: 81, column: 10, scope: !415)
!894 = !DILocation(line: 83, column: 13, scope: !425)
!895 = !DILocation(line: 83, column: 23, scope: !425)
!896 = !DILocation(line: 83, column: 13, scope: !426)
!897 = !DILocation(line: 84, column: 15, scope: !898)
!898 = distinct !DILexicalBlock(scope: !425, file: !392, line: 83, column: 31)
!899 = !DILocation(line: 84, column: 36, scope: !898)
!900 = !{!901, !901, i64 0}
!901 = !{!"int", !795, i64 0}
!902 = !DILocation(line: 85, column: 24, scope: !898)
!903 = !DILocation(line: 85, column: 29, scope: !898)
!904 = !DILocation(line: 85, column: 15, scope: !898)
!905 = !DILocation(line: 85, column: 20, scope: !898)
!906 = !DILocation(line: 86, column: 9, scope: !898)
!907 = !DILocation(line: 88, column: 13, scope: !424)
!908 = !DILocation(line: 88, column: 26, scope: !424)
!909 = !DILocation(line: 88, column: 36, scope: !424)
!910 = !DILocation(line: 88, column: 45, scope: !424)
!911 = !DILocation(line: 88, column: 41, scope: !424)
!912 = !DILocation(line: 89, column: 13, scope: !424)
!913 = !DILocation(line: 89, column: 26, scope: !424)
!914 = !DILocation(line: 89, column: 36, scope: !424)
!915 = !DILocation(line: 89, column: 45, scope: !424)
!916 = !DILocation(line: 89, column: 52, scope: !424)
!917 = !DILocation(line: 89, column: 50, scope: !424)
!918 = !DILocation(line: 89, column: 41, scope: !424)
!919 = !DILocation(line: 90, column: 25, scope: !424)
!920 = !DILocation(line: 90, column: 34, scope: !424)
!921 = !DILocation(line: 90, column: 41, scope: !424)
!922 = !DILocation(line: 90, column: 39, scope: !424)
!923 = !DILocation(line: 90, column: 30, scope: !424)
!924 = !DILocation(line: 90, column: 50, scope: !424)
!925 = !DILocation(line: 90, column: 48, scope: !424)
!926 = !DILocation(line: 90, column: 15, scope: !424)
!927 = !DILocation(line: 90, column: 20, scope: !424)
!928 = !DILocation(line: 91, column: 25, scope: !424)
!929 = !DILocation(line: 91, column: 34, scope: !424)
!930 = !DILocation(line: 91, column: 41, scope: !424)
!931 = !DILocation(line: 91, column: 39, scope: !424)
!932 = !DILocation(line: 91, column: 30, scope: !424)
!933 = !DILocation(line: 91, column: 50, scope: !424)
!934 = !DILocation(line: 91, column: 48, scope: !424)
!935 = !DILocation(line: 91, column: 15, scope: !424)
!936 = !DILocation(line: 91, column: 20, scope: !424)
!937 = !DILocation(line: 92, column: 9, scope: !425)
!938 = !DILocation(line: 93, column: 5, scope: !426)
!939 = !DILocation(line: 96, column: 9, scope: !430)
!940 = !DILocation(line: 96, column: 22, scope: !430)
!941 = !DILocation(line: 96, column: 32, scope: !430)
!942 = !DILocation(line: 96, column: 41, scope: !430)
!943 = !DILocation(line: 96, column: 37, scope: !430)
!944 = !DILocation(line: 97, column: 9, scope: !430)
!945 = !DILocation(line: 97, column: 22, scope: !430)
!946 = !DILocation(line: 97, column: 32, scope: !430)
!947 = !DILocation(line: 97, column: 39, scope: !430)
!948 = !DILocation(line: 97, column: 37, scope: !430)
!949 = !DILocation(line: 97, column: 49, scope: !430)
!950 = !DILocation(line: 97, column: 45, scope: !430)
!951 = !DILocation(line: 99, column: 21, scope: !430)
!952 = !DILocation(line: 99, column: 28, scope: !430)
!953 = !DILocation(line: 99, column: 26, scope: !430)
!954 = !DILocation(line: 99, column: 38, scope: !430)
!955 = !DILocation(line: 99, column: 34, scope: !430)
!956 = !DILocation(line: 99, column: 46, scope: !430)
!957 = !DILocation(line: 99, column: 44, scope: !430)
!958 = !DILocation(line: 99, column: 11, scope: !430)
!959 = !DILocation(line: 99, column: 16, scope: !430)
!960 = !DILocation(line: 100, column: 21, scope: !430)
!961 = !DILocation(line: 100, column: 28, scope: !430)
!962 = !DILocation(line: 100, column: 26, scope: !430)
!963 = !DILocation(line: 100, column: 38, scope: !430)
!964 = !DILocation(line: 100, column: 34, scope: !430)
!965 = !DILocation(line: 100, column: 46, scope: !430)
!966 = !DILocation(line: 100, column: 44, scope: !430)
!967 = !DILocation(line: 100, column: 11, scope: !430)
!968 = !DILocation(line: 100, column: 16, scope: !430)
!969 = !DILocation(line: 101, column: 5, scope: !427)
!970 = !DILocation(line: 102, column: 12, scope: !415)
!971 = !DILocation(line: 103, column: 1, scope: !415)
!972 = !DILocation(line: 106, column: 22, scope: !432)
!973 = !DILocation(line: 106, column: 36, scope: !432)
!974 = !DILocation(line: 108, column: 5, scope: !432)
!975 = !DILocation(line: 108, column: 16, scope: !432)
!976 = !DILocation(line: 109, column: 5, scope: !432)
!977 = !DILocation(line: 109, column: 12, scope: !432)
!978 = !DILocation(line: 109, column: 17, scope: !432)
!979 = !DILocation(line: 109, column: 21, scope: !432)
!980 = !DILocation(line: 109, column: 24, scope: !432)
!981 = !DILocation(line: 110, column: 11, scope: !982)
!982 = distinct !DILexicalBlock(scope: !432, file: !392, line: 110, column: 9)
!983 = !DILocation(line: 110, column: 16, scope: !982)
!984 = !DILocation(line: 110, column: 22, scope: !982)
!985 = !DILocation(line: 110, column: 27, scope: !986)
!986 = !DILexicalBlockFile(scope: !982, file: !392, discriminator: 1)
!987 = !DILocation(line: 110, column: 32, scope: !982)
!988 = !DILocation(line: 110, column: 9, scope: !432)
!989 = !DILocation(line: 111, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !982, file: !392, line: 110, column: 39)
!991 = !DILocation(line: 111, column: 16, scope: !990)
!992 = !DILocation(line: 112, column: 11, scope: !990)
!993 = !DILocation(line: 112, column: 16, scope: !990)
!994 = !DILocation(line: 113, column: 5, scope: !990)
!995 = !DILocation(line: 114, column: 16, scope: !996)
!996 = distinct !DILexicalBlock(scope: !982, file: !392, line: 114, column: 14)
!997 = !DILocation(line: 114, column: 21, scope: !996)
!998 = !DILocation(line: 114, column: 27, scope: !996)
!999 = !DILocation(line: 114, column: 32, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !996, file: !392, discriminator: 1)
!1001 = !DILocation(line: 114, column: 37, scope: !996)
!1002 = !DILocation(line: 114, column: 14, scope: !982)
!1003 = !DILocation(line: 115, column: 15, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !392, line: 115, column: 13)
!1005 = distinct !DILexicalBlock(scope: !996, file: !392, line: 114, column: 44)
!1006 = !DILocation(line: 115, column: 20, scope: !1004)
!1007 = !DILocation(line: 115, column: 26, scope: !1004)
!1008 = !DILocation(line: 115, column: 31, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1004, file: !392, discriminator: 1)
!1010 = !DILocation(line: 115, column: 36, scope: !1004)
!1011 = !DILocation(line: 115, column: 13, scope: !1005)
!1012 = !DILocation(line: 116, column: 15, scope: !1004)
!1013 = !DILocation(line: 116, column: 36, scope: !1004)
!1014 = !DILocation(line: 116, column: 13, scope: !1004)
!1015 = !DILocation(line: 117, column: 11, scope: !1005)
!1016 = !DILocation(line: 117, column: 16, scope: !1005)
!1017 = !DILocation(line: 118, column: 11, scope: !1005)
!1018 = !DILocation(line: 118, column: 16, scope: !1005)
!1019 = !DILocation(line: 119, column: 5, scope: !1005)
!1020 = !DILocation(line: 121, column: 24, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !996, file: !392, line: 120, column: 10)
!1022 = !DILocation(line: 121, column: 31, scope: !1021)
!1023 = !DILocation(line: 121, column: 16, scope: !1021)
!1024 = !DILocation(line: 121, column: 14, scope: !1021)
!1025 = !DILocation(line: 122, column: 19, scope: !1021)
!1026 = !DILocation(line: 122, column: 26, scope: !1021)
!1027 = !DILocation(line: 122, column: 15, scope: !1021)
!1028 = !DILocation(line: 122, column: 13, scope: !1021)
!1029 = !DILocation(line: 123, column: 22, scope: !1021)
!1030 = !DILocation(line: 123, column: 30, scope: !1021)
!1031 = !DILocation(line: 123, column: 14, scope: !1021)
!1032 = !DILocation(line: 123, column: 12, scope: !1021)
!1033 = !DILocation(line: 124, column: 17, scope: !1021)
!1034 = !DILocation(line: 124, column: 22, scope: !1021)
!1035 = !DILocation(line: 124, column: 19, scope: !1021)
!1036 = !DILocation(line: 124, column: 15, scope: !1021)
!1037 = !DILocation(line: 125, column: 15, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1021, file: !392, line: 125, column: 13)
!1039 = !DILocation(line: 125, column: 20, scope: !1038)
!1040 = !DILocation(line: 125, column: 13, scope: !1021)
!1041 = !DILocation(line: 126, column: 24, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !392, line: 125, column: 28)
!1043 = !DILocation(line: 126, column: 29, scope: !1042)
!1044 = !DILocation(line: 126, column: 26, scope: !1042)
!1045 = !DILocation(line: 126, column: 20, scope: !1042)
!1046 = !DILocation(line: 126, column: 17, scope: !1042)
!1047 = !DILocation(line: 127, column: 24, scope: !1042)
!1048 = !DILocation(line: 127, column: 33, scope: !1042)
!1049 = !DILocation(line: 127, column: 29, scope: !1042)
!1050 = !DILocation(line: 127, column: 28, scope: !1042)
!1051 = !DILocation(line: 127, column: 19, scope: !1042)
!1052 = !DILocation(line: 128, column: 9, scope: !1042)
!1053 = !DILocation(line: 129, column: 18, scope: !1021)
!1054 = !DILocation(line: 129, column: 26, scope: !1021)
!1055 = !DILocation(line: 129, column: 22, scope: !1021)
!1056 = !DILocation(line: 129, column: 21, scope: !1021)
!1057 = !DILocation(line: 129, column: 11, scope: !1021)
!1058 = !DILocation(line: 129, column: 16, scope: !1021)
!1059 = !DILocation(line: 130, column: 18, scope: !1021)
!1060 = !DILocation(line: 130, column: 26, scope: !1021)
!1061 = !DILocation(line: 130, column: 22, scope: !1021)
!1062 = !DILocation(line: 130, column: 21, scope: !1021)
!1063 = !DILocation(line: 130, column: 11, scope: !1021)
!1064 = !DILocation(line: 130, column: 16, scope: !1021)
!1065 = !DILocation(line: 132, column: 12, scope: !432)
!1066 = !DILocation(line: 133, column: 1, scope: !432)
!1067 = !DILocation(line: 169, column: 22, scope: !441)
!1068 = !DILocation(line: 172, column: 5, scope: !441)
!1069 = !DILocation(line: 172, column: 12, scope: !441)
!1070 = !DILocation(line: 174, column: 145, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !441, file: !392, line: 174, column: 9)
!1072 = !DILocation(line: 174, column: 60, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1071, file: !392, discriminator: 1)
!1074 = !DILocation(line: 174, column: 58, scope: !1071)
!1075 = !DILocation(line: 174, column: 47, scope: !1071)
!1076 = !DILocation(line: 174, column: 11, scope: !1071)
!1077 = !DILocation(line: 174, column: 145, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1071, file: !392, discriminator: 2)
!1079 = !DILocation(line: 174, column: 117, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1071, file: !392, discriminator: 4)
!1081 = !DILocation(line: 174, column: 105, scope: !1071)
!1082 = !DILocation(line: 174, column: 68, scope: !1071)
!1083 = !DILocation(line: 174, column: 138, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1071, file: !392, discriminator: 5)
!1085 = !DILocation(line: 174, column: 136, scope: !1071)
!1086 = !DILocation(line: 174, column: 125, scope: !1071)
!1087 = !DILocation(line: 174, column: 9, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1089, file: !392, discriminator: 7)
!1089 = !DILexicalBlockFile(scope: !1090, file: !392, discriminator: 6)
!1090 = !DILexicalBlockFile(scope: !441, file: !392, discriminator: 3)
!1091 = !DILocation(line: 174, column: 199, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1071, file: !392, discriminator: 8)
!1093 = !DILocation(line: 174, column: 197, scope: !1071)
!1094 = !DILocation(line: 174, column: 186, scope: !1071)
!1095 = !DILocation(line: 174, column: 150, scope: !1071)
!1096 = !DILocation(line: 174, column: 9, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !441, file: !392, discriminator: 9)
!1098 = !DILocation(line: 174, column: 256, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1071, file: !392, discriminator: 10)
!1100 = !DILocation(line: 174, column: 244, scope: !1071)
!1101 = !DILocation(line: 174, column: 207, scope: !1071)
!1102 = !DILocation(line: 174, column: 277, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1071, file: !392, discriminator: 11)
!1104 = !DILocation(line: 174, column: 275, scope: !1071)
!1105 = !DILocation(line: 174, column: 264, scope: !1071)
!1106 = !DILocation(line: 174, column: 9, scope: !441)
!1107 = !DILocation(line: 178, column: 13, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1071, file: !392, line: 174, column: 285)
!1109 = !DILocation(line: 178, column: 62, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1111, file: !392, discriminator: 1)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !392, line: 178, column: 13)
!1112 = !DILocation(line: 178, column: 60, scope: !1111)
!1113 = !DILocation(line: 178, column: 50, scope: !1111)
!1114 = !DILocation(line: 178, column: 14, scope: !1111)
!1115 = !DILocation(line: 178, column: 13, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1108, file: !392, discriminator: 2)
!1117 = !DILocation(line: 178, column: 118, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1111, file: !392, discriminator: 3)
!1119 = !DILocation(line: 178, column: 107, scope: !1111)
!1120 = !DILocation(line: 178, column: 70, scope: !1111)
!1121 = !DILocation(line: 178, column: 138, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1111, file: !392, discriminator: 4)
!1123 = !DILocation(line: 178, column: 136, scope: !1111)
!1124 = !DILocation(line: 178, column: 126, scope: !1111)
!1125 = !DILocation(line: 179, column: 29, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1111, file: !392, line: 178, column: 146)
!1127 = !DILocation(line: 179, column: 22, scope: !1126)
!1128 = !DILocation(line: 179, column: 20, scope: !1126)
!1129 = !DILocation(line: 180, column: 15, scope: !1126)
!1130 = !DILocation(line: 180, column: 36, scope: !1126)
!1131 = !DILocation(line: 181, column: 20, scope: !1126)
!1132 = !DILocation(line: 181, column: 13, scope: !1126)
!1133 = !DILocation(line: 183, column: 13, scope: !1108)
!1134 = !DILocation(line: 183, column: 62, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1136, file: !392, discriminator: 1)
!1136 = distinct !DILexicalBlock(scope: !1108, file: !392, line: 183, column: 13)
!1137 = !DILocation(line: 183, column: 60, scope: !1136)
!1138 = !DILocation(line: 183, column: 50, scope: !1136)
!1139 = !DILocation(line: 183, column: 14, scope: !1136)
!1140 = !DILocation(line: 183, column: 13, scope: !1116)
!1141 = !DILocation(line: 183, column: 118, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1136, file: !392, discriminator: 3)
!1143 = !DILocation(line: 183, column: 107, scope: !1136)
!1144 = !DILocation(line: 183, column: 70, scope: !1136)
!1145 = !DILocation(line: 183, column: 138, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1136, file: !392, discriminator: 4)
!1147 = !DILocation(line: 183, column: 136, scope: !1136)
!1148 = !DILocation(line: 183, column: 126, scope: !1136)
!1149 = !DILocation(line: 184, column: 29, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1136, file: !392, line: 183, column: 146)
!1151 = !DILocation(line: 184, column: 22, scope: !1150)
!1152 = !DILocation(line: 184, column: 20, scope: !1150)
!1153 = !DILocation(line: 185, column: 15, scope: !1150)
!1154 = !DILocation(line: 185, column: 36, scope: !1150)
!1155 = !DILocation(line: 186, column: 20, scope: !1150)
!1156 = !DILocation(line: 186, column: 13, scope: !1150)
!1157 = !DILocation(line: 190, column: 9, scope: !1108)
!1158 = !DILocation(line: 192, column: 22, scope: !441)
!1159 = !DILocation(line: 192, column: 30, scope: !441)
!1160 = !DILocation(line: 192, column: 14, scope: !441)
!1161 = !DILocation(line: 192, column: 12, scope: !441)
!1162 = !DILocation(line: 193, column: 9, scope: !441)
!1163 = !DILocation(line: 193, column: 58, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1165, file: !392, discriminator: 1)
!1165 = distinct !DILexicalBlock(scope: !441, file: !392, line: 193, column: 9)
!1166 = !DILocation(line: 193, column: 47, scope: !1165)
!1167 = !DILocation(line: 193, column: 11, scope: !1165)
!1168 = !DILocation(line: 193, column: 9, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !441, file: !392, discriminator: 2)
!1170 = !DILocation(line: 193, column: 115, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1165, file: !392, discriminator: 3)
!1172 = !DILocation(line: 193, column: 105, scope: !1165)
!1173 = !DILocation(line: 193, column: 68, scope: !1165)
!1174 = !DILocation(line: 193, column: 136, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1165, file: !392, discriminator: 4)
!1176 = !DILocation(line: 193, column: 125, scope: !1165)
!1177 = !DILocation(line: 194, column: 11, scope: !1165)
!1178 = !DILocation(line: 194, column: 32, scope: !1165)
!1179 = !DILocation(line: 194, column: 9, scope: !1165)
!1180 = !DILocation(line: 196, column: 11, scope: !1165)
!1181 = !DILocation(line: 196, column: 32, scope: !1165)
!1182 = !DILocation(line: 197, column: 12, scope: !441)
!1183 = !DILocation(line: 197, column: 5, scope: !441)
!1184 = !DILocation(line: 198, column: 1, scope: !441)
!1185 = !DILocation(line: 212, column: 35, scope: !447)
!1186 = !DILocation(line: 214, column: 5, scope: !447)
!1187 = !DILocation(line: 214, column: 22, scope: !447)
!1188 = !DILocation(line: 217, column: 30, scope: !447)
!1189 = !DILocation(line: 217, column: 10, scope: !447)
!1190 = !DILocation(line: 217, column: 8, scope: !447)
!1191 = !{!1192, !1192, i64 0}
!1192 = !{!"any pointer", !795, i64 0}
!1193 = !DILocation(line: 218, column: 9, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !447, file: !392, line: 218, column: 9)
!1195 = !DILocation(line: 218, column: 12, scope: !1194)
!1196 = !DILocation(line: 218, column: 9, scope: !447)
!1197 = !DILocation(line: 219, column: 16, scope: !1194)
!1198 = !DILocation(line: 219, column: 9, scope: !1194)
!1199 = !DILocation(line: 220, column: 27, scope: !447)
!1200 = !DILocation(line: 220, column: 15, scope: !447)
!1201 = !DILocation(line: 220, column: 33, scope: !447)
!1202 = !DILocation(line: 220, column: 42, scope: !447)
!1203 = !{!1204, !1192, i64 8}
!1204 = !{!"_object", !1205, i64 0, !1192, i64 8}
!1205 = !{!"long", !795, i64 0}
!1206 = !DILocation(line: 220, column: 92, scope: !447)
!1207 = !DILocation(line: 220, column: 79, scope: !447)
!1208 = !DILocation(line: 220, column: 99, scope: !447)
!1209 = !DILocation(line: 220, column: 110, scope: !447)
!1210 = !{!1204, !1205, i64 0}
!1211 = !DILocation(line: 220, column: 117, scope: !447)
!1212 = !DILocation(line: 221, column: 5, scope: !447)
!1213 = !DILocation(line: 221, column: 9, scope: !447)
!1214 = !DILocation(line: 221, column: 16, scope: !447)
!1215 = !DILocation(line: 222, column: 25, scope: !447)
!1216 = !DILocation(line: 222, column: 12, scope: !447)
!1217 = !DILocation(line: 222, column: 5, scope: !447)
!1218 = !DILocation(line: 223, column: 1, scope: !447)
!1219 = !DILocation(line: 235, column: 30, scope: !453)
!1220 = !DILocation(line: 235, column: 43, scope: !453)
!1221 = !DILocation(line: 237, column: 5, scope: !453)
!1222 = !DILocation(line: 237, column: 16, scope: !453)
!1223 = !DILocation(line: 238, column: 14, scope: !453)
!1224 = !DILocation(line: 238, column: 7, scope: !453)
!1225 = !DILocation(line: 238, column: 12, scope: !453)
!1226 = !DILocation(line: 239, column: 14, scope: !453)
!1227 = !DILocation(line: 239, column: 7, scope: !453)
!1228 = !DILocation(line: 239, column: 12, scope: !453)
!1229 = !DILocation(line: 240, column: 12, scope: !453)
!1230 = !DILocation(line: 241, column: 1, scope: !453)
!1231 = !DILocation(line: 240, column: 5, scope: !453)
!1232 = !DILocation(line: 244, column: 34, scope: !460)
!1233 = !DILocation(line: 246, column: 24, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !460, file: !392, line: 246, column: 9)
!1235 = !DILocation(line: 246, column: 30, scope: !1234)
!1236 = !DILocation(line: 246, column: 39, scope: !1234)
!1237 = !DILocation(line: 246, column: 60, scope: !1234)
!1238 = !DILocation(line: 246, column: 94, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1234, file: !392, discriminator: 1)
!1240 = !DILocation(line: 246, column: 100, scope: !1234)
!1241 = !DILocation(line: 246, column: 63, scope: !1234)
!1242 = !DILocation(line: 246, column: 9, scope: !460)
!1243 = !DILocation(line: 247, column: 36, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1234, file: !392, line: 246, column: 131)
!1245 = !DILocation(line: 247, column: 17, scope: !1244)
!1246 = !DILocation(line: 247, column: 41, scope: !1244)
!1247 = !DILocation(line: 247, column: 46, scope: !1244)
!1248 = !{!1249, !794, i64 16}
!1249 = !{!"", !1204, i64 0, !793, i64 16}
!1250 = !DILocation(line: 247, column: 9, scope: !1244)
!1251 = !DILocation(line: 250, column: 33, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1234, file: !392, line: 249, column: 10)
!1253 = !DILocation(line: 250, column: 16, scope: !1252)
!1254 = !DILocation(line: 250, column: 9, scope: !1252)
!1255 = !DILocation(line: 252, column: 1, scope: !460)
!1256 = !DILocation(line: 255, column: 34, scope: !465)
!1257 = !DILocation(line: 257, column: 24, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !465, file: !392, line: 257, column: 9)
!1259 = !DILocation(line: 257, column: 30, scope: !1258)
!1260 = !DILocation(line: 257, column: 39, scope: !1258)
!1261 = !DILocation(line: 257, column: 60, scope: !1258)
!1262 = !DILocation(line: 257, column: 94, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1258, file: !392, discriminator: 1)
!1264 = !DILocation(line: 257, column: 100, scope: !1258)
!1265 = !DILocation(line: 257, column: 63, scope: !1258)
!1266 = !DILocation(line: 257, column: 9, scope: !465)
!1267 = !DILocation(line: 258, column: 36, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1258, file: !392, line: 257, column: 131)
!1269 = !DILocation(line: 258, column: 17, scope: !1268)
!1270 = !DILocation(line: 258, column: 41, scope: !1268)
!1271 = !DILocation(line: 258, column: 46, scope: !1268)
!1272 = !{!1249, !794, i64 24}
!1273 = !DILocation(line: 258, column: 9, scope: !1268)
!1274 = !DILocation(line: 261, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1258, file: !392, line: 260, column: 10)
!1276 = !DILocation(line: 263, column: 1, scope: !465)
!1277 = !DILocation(line: 286, column: 32, scope: !468)
!1278 = !DILocation(line: 288, column: 5, scope: !468)
!1279 = !DILocation(line: 288, column: 16, scope: !468)
!1280 = !DILocation(line: 289, column: 5, scope: !468)
!1281 = !DILocation(line: 289, column: 15, scope: !468)
!1282 = !DILocation(line: 293, column: 24, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !468, file: !392, line: 293, column: 9)
!1284 = !DILocation(line: 293, column: 30, scope: !1283)
!1285 = !DILocation(line: 293, column: 39, scope: !1283)
!1286 = !DILocation(line: 293, column: 60, scope: !1283)
!1287 = !DILocation(line: 293, column: 94, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1283, file: !392, discriminator: 1)
!1289 = !DILocation(line: 293, column: 100, scope: !1283)
!1290 = !DILocation(line: 293, column: 63, scope: !1283)
!1291 = !DILocation(line: 293, column: 9, scope: !468)
!1292 = !DILocation(line: 294, column: 36, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1283, file: !392, line: 293, column: 131)
!1294 = !DILocation(line: 294, column: 17, scope: !1293)
!1295 = !DILocation(line: 294, column: 41, scope: !1293)
!1296 = !DILocation(line: 294, column: 9, scope: !1293)
!1297 = !DILocation(line: 299, column: 8, scope: !468)
!1298 = !DILocation(line: 299, column: 13, scope: !468)
!1299 = !DILocation(line: 300, column: 8, scope: !468)
!1300 = !DILocation(line: 300, column: 13, scope: !468)
!1301 = !DILocation(line: 302, column: 40, scope: !468)
!1302 = !DILocation(line: 302, column: 13, scope: !468)
!1303 = !DILocation(line: 302, column: 11, scope: !468)
!1304 = !DILocation(line: 304, column: 9, scope: !478)
!1305 = !DILocation(line: 304, column: 9, scope: !468)
!1306 = !DILocation(line: 305, column: 34, scope: !477)
!1307 = !DILocation(line: 305, column: 15, scope: !477)
!1308 = !DILocation(line: 305, column: 42, scope: !477)
!1309 = !DILocation(line: 306, column: 9, scope: !477)
!1310 = !DILocation(line: 306, column: 14, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !476, file: !392, discriminator: 1)
!1312 = !DILocation(line: 306, column: 24, scope: !476)
!1313 = !DILocation(line: 306, column: 54, scope: !476)
!1314 = !DILocation(line: 306, column: 70, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !476, file: !392, line: 306, column: 67)
!1316 = !DILocation(line: 306, column: 87, scope: !1315)
!1317 = !DILocation(line: 306, column: 67, scope: !1315)
!1318 = !DILocation(line: 306, column: 97, scope: !1315)
!1319 = !DILocation(line: 306, column: 67, scope: !476)
!1320 = !DILocation(line: 306, column: 67, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !476, file: !392, discriminator: 2)
!1322 = !DILocation(line: 306, column: 128, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1315, file: !392, discriminator: 3)
!1324 = !DILocation(line: 306, column: 146, scope: !1315)
!1325 = !DILocation(line: 306, column: 156, scope: !1315)
!1326 = !{!1327, !1192, i64 48}
!1327 = !{!"_typeobject", !1328, i64 0, !1192, i64 24, !1205, i64 32, !1205, i64 40, !1192, i64 48, !1192, i64 56, !1192, i64 64, !1192, i64 72, !1192, i64 80, !1192, i64 88, !1192, i64 96, !1192, i64 104, !1192, i64 112, !1192, i64 120, !1192, i64 128, !1192, i64 136, !1192, i64 144, !1192, i64 152, !1192, i64 160, !1205, i64 168, !1192, i64 176, !1192, i64 184, !1192, i64 192, !1192, i64 200, !1205, i64 208, !1192, i64 216, !1192, i64 224, !1192, i64 232, !1192, i64 240, !1192, i64 248, !1192, i64 256, !1192, i64 264, !1192, i64 272, !1192, i64 280, !1205, i64 288, !1192, i64 296, !1192, i64 304, !1192, i64 312, !1192, i64 320, !1192, i64 328, !1192, i64 336, !1192, i64 344, !1192, i64 352, !1192, i64 360, !1192, i64 368, !1192, i64 376, !901, i64 384, !1192, i64 392}
!1328 = !{!"", !1204, i64 0, !1205, i64 16}
!1329 = !DILocation(line: 306, column: 181, scope: !1315)
!1330 = !DILocation(line: 306, column: 112, scope: !1315)
!1331 = !DILocation(line: 306, column: 200, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !477, file: !392, discriminator: 4)
!1333 = !DILocation(line: 306, column: 200, scope: !476)
!1334 = !DILocation(line: 306, column: 200, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !476, file: !392, discriminator: 5)
!1336 = !DILocation(line: 307, column: 16, scope: !477)
!1337 = !DILocation(line: 307, column: 9, scope: !477)
!1338 = !DILocation(line: 309, column: 14, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !478, file: !392, line: 309, column: 14)
!1340 = !DILocation(line: 309, column: 14, scope: !478)
!1341 = !DILocation(line: 310, column: 16, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !392, line: 309, column: 32)
!1343 = !DILocation(line: 310, column: 9, scope: !1342)
!1344 = !DILocation(line: 316, column: 36, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !392, line: 314, column: 10)
!1346 = !DILocation(line: 316, column: 19, scope: !1345)
!1347 = !DILocation(line: 316, column: 12, scope: !1345)
!1348 = !DILocation(line: 316, column: 17, scope: !1345)
!1349 = !DILocation(line: 317, column: 16, scope: !1345)
!1350 = !DILocation(line: 317, column: 9, scope: !1345)
!1351 = !DILocation(line: 319, column: 1, scope: !468)
!1352 = !DILocation(line: 266, column: 38, scope: !479)
!1353 = !DILocation(line: 267, column: 5, scope: !479)
!1354 = !DILocation(line: 267, column: 15, scope: !479)
!1355 = !DILocation(line: 270, column: 33, scope: !479)
!1356 = !DILocation(line: 270, column: 9, scope: !479)
!1357 = !DILocation(line: 270, column: 7, scope: !479)
!1358 = !DILocation(line: 271, column: 9, scope: !485)
!1359 = !DILocation(line: 271, column: 9, scope: !479)
!1360 = !DILocation(line: 272, column: 9, scope: !484)
!1361 = !DILocation(line: 272, column: 19, scope: !484)
!1362 = !DILocation(line: 272, column: 54, scope: !484)
!1363 = !DILocation(line: 272, column: 25, scope: !484)
!1364 = !DILocation(line: 273, column: 9, scope: !484)
!1365 = !DILocation(line: 273, column: 14, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !487, file: !392, discriminator: 1)
!1367 = !DILocation(line: 273, column: 24, scope: !487)
!1368 = !DILocation(line: 273, column: 54, scope: !487)
!1369 = !DILocation(line: 273, column: 66, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !487, file: !392, line: 273, column: 63)
!1371 = !DILocation(line: 273, column: 83, scope: !1370)
!1372 = !DILocation(line: 273, column: 63, scope: !1370)
!1373 = !DILocation(line: 273, column: 93, scope: !1370)
!1374 = !DILocation(line: 273, column: 63, scope: !487)
!1375 = !DILocation(line: 273, column: 63, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !487, file: !392, discriminator: 2)
!1377 = !DILocation(line: 273, column: 124, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1370, file: !392, discriminator: 3)
!1379 = !DILocation(line: 273, column: 142, scope: !1370)
!1380 = !DILocation(line: 273, column: 152, scope: !1370)
!1381 = !DILocation(line: 273, column: 177, scope: !1370)
!1382 = !DILocation(line: 273, column: 108, scope: !1370)
!1383 = !DILocation(line: 273, column: 196, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !484, file: !392, discriminator: 4)
!1385 = !DILocation(line: 273, column: 196, scope: !487)
!1386 = !DILocation(line: 273, column: 196, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !487, file: !392, discriminator: 5)
!1388 = !DILocation(line: 274, column: 13, scope: !491)
!1389 = !DILocation(line: 274, column: 17, scope: !491)
!1390 = !DILocation(line: 274, column: 31, scope: !491)
!1391 = !DILocation(line: 274, column: 50, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !491, file: !392, discriminator: 1)
!1393 = !DILocation(line: 274, column: 57, scope: !491)
!1394 = !DILocation(line: 274, column: 66, scope: !491)
!1395 = !DILocation(line: 274, column: 87, scope: !491)
!1396 = !DILocation(line: 274, column: 121, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !491, file: !392, discriminator: 2)
!1398 = !DILocation(line: 274, column: 128, scope: !491)
!1399 = !DILocation(line: 274, column: 90, scope: !491)
!1400 = !DILocation(line: 274, column: 13, scope: !484)
!1401 = !DILocation(line: 275, column: 29, scope: !490)
!1402 = !DILocation(line: 275, column: 13, scope: !490)
!1403 = !DILocation(line: 277, column: 13, scope: !490)
!1404 = !DILocation(line: 277, column: 18, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !489, file: !392, discriminator: 1)
!1406 = !DILocation(line: 277, column: 28, scope: !489)
!1407 = !DILocation(line: 277, column: 58, scope: !489)
!1408 = !DILocation(line: 277, column: 72, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !489, file: !392, line: 277, column: 69)
!1410 = !DILocation(line: 277, column: 89, scope: !1409)
!1411 = !DILocation(line: 277, column: 69, scope: !1409)
!1412 = !DILocation(line: 277, column: 99, scope: !1409)
!1413 = !DILocation(line: 277, column: 69, scope: !489)
!1414 = !DILocation(line: 277, column: 69, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !489, file: !392, discriminator: 2)
!1416 = !DILocation(line: 277, column: 130, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1409, file: !392, discriminator: 3)
!1418 = !DILocation(line: 277, column: 148, scope: !1409)
!1419 = !DILocation(line: 277, column: 158, scope: !1409)
!1420 = !DILocation(line: 277, column: 183, scope: !1409)
!1421 = !DILocation(line: 277, column: 114, scope: !1409)
!1422 = !DILocation(line: 277, column: 202, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !490, file: !392, discriminator: 4)
!1424 = !DILocation(line: 277, column: 202, scope: !489)
!1425 = !DILocation(line: 277, column: 202, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !489, file: !392, discriminator: 5)
!1427 = !DILocation(line: 278, column: 13, scope: !490)
!1428 = !DILocation(line: 280, column: 16, scope: !484)
!1429 = !DILocation(line: 280, column: 9, scope: !484)
!1430 = !DILocation(line: 281, column: 5, scope: !485)
!1431 = !DILocation(line: 282, column: 5, scope: !479)
!1432 = !DILocation(line: 283, column: 1, scope: !479)
!1433 = !DILocation(line: 322, column: 27, scope: !492)
!1434 = !DILocation(line: 324, column: 5, scope: !492)
!1435 = !DILocation(line: 324, column: 9, scope: !492)
!1436 = !DILocation(line: 324, column: 18, scope: !492)
!1437 = !{!1327, !1192, i64 320}
!1438 = !DILocation(line: 324, column: 26, scope: !492)
!1439 = !DILocation(line: 325, column: 1, scope: !492)
!1440 = !DILocation(line: 328, column: 31, scope: !495)
!1441 = !DILocation(line: 330, column: 5, scope: !495)
!1442 = !DILocation(line: 330, column: 9, scope: !495)
!1443 = !DILocation(line: 331, column: 5, scope: !495)
!1444 = !DILocation(line: 331, column: 10, scope: !495)
!1445 = !{!795, !795, i64 0}
!1446 = !DILocation(line: 332, column: 5, scope: !495)
!1447 = !DILocation(line: 332, column: 15, scope: !495)
!1448 = !DILocation(line: 335, column: 5, scope: !495)
!1449 = !DILocation(line: 335, column: 11, scope: !495)
!1450 = !DILocation(line: 336, column: 5, scope: !495)
!1451 = !DILocation(line: 336, column: 11, scope: !495)
!1452 = !DILocation(line: 341, column: 5, scope: !495)
!1453 = !DILocation(line: 341, column: 11, scope: !495)
!1454 = !DILocation(line: 342, column: 5, scope: !495)
!1455 = !DILocation(line: 342, column: 11, scope: !495)
!1456 = !DILocation(line: 343, column: 5, scope: !495)
!1457 = !DILocation(line: 343, column: 11, scope: !495)
!1458 = !DILocation(line: 345, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !495, file: !392, line: 345, column: 9)
!1460 = !DILocation(line: 345, column: 12, scope: !1459)
!1461 = !DILocation(line: 345, column: 17, scope: !1459)
!1462 = !DILocation(line: 345, column: 22, scope: !1459)
!1463 = !DILocation(line: 345, column: 28, scope: !1459)
!1464 = !DILocation(line: 345, column: 45, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1459, file: !392, discriminator: 1)
!1466 = !DILocation(line: 345, column: 48, scope: !1459)
!1467 = !DILocation(line: 345, column: 53, scope: !1459)
!1468 = !DILocation(line: 345, column: 31, scope: !1459)
!1469 = !DILocation(line: 345, column: 58, scope: !1459)
!1470 = !DILocation(line: 345, column: 9, scope: !495)
!1471 = !DILocation(line: 348, column: 12, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1459, file: !392, line: 345, column: 65)
!1473 = !DILocation(line: 349, column: 36, scope: !1472)
!1474 = !DILocation(line: 349, column: 39, scope: !1472)
!1475 = !DILocation(line: 349, column: 44, scope: !1472)
!1476 = !DILocation(line: 349, column: 50, scope: !1472)
!1477 = !DILocation(line: 350, column: 36, scope: !1472)
!1478 = !DILocation(line: 349, column: 14, scope: !1472)
!1479 = !DILocation(line: 349, column: 12, scope: !1472)
!1480 = !DILocation(line: 351, column: 14, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1472, file: !392, line: 351, column: 13)
!1482 = !DILocation(line: 351, column: 13, scope: !1472)
!1483 = !DILocation(line: 352, column: 13, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !392, line: 351, column: 18)
!1485 = !DILocation(line: 353, column: 13, scope: !1484)
!1486 = !DILocation(line: 355, column: 5, scope: !1472)
!1487 = !DILocation(line: 358, column: 37, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1459, file: !392, line: 355, column: 12)
!1489 = !DILocation(line: 358, column: 40, scope: !1488)
!1490 = !DILocation(line: 358, column: 45, scope: !1488)
!1491 = !DILocation(line: 358, column: 51, scope: !1488)
!1492 = !DILocation(line: 359, column: 37, scope: !1488)
!1493 = !DILocation(line: 358, column: 15, scope: !1488)
!1494 = !DILocation(line: 358, column: 13, scope: !1488)
!1495 = !DILocation(line: 360, column: 14, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1488, file: !392, line: 360, column: 13)
!1497 = !DILocation(line: 360, column: 13, scope: !1488)
!1498 = !DILocation(line: 361, column: 13, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !392, line: 360, column: 19)
!1500 = !DILocation(line: 362, column: 13, scope: !1499)
!1501 = !DILocation(line: 364, column: 14, scope: !1488)
!1502 = !DILocation(line: 364, column: 12, scope: !1488)
!1503 = !DILocation(line: 366, column: 36, scope: !1488)
!1504 = !DILocation(line: 366, column: 39, scope: !1488)
!1505 = !DILocation(line: 366, column: 44, scope: !1488)
!1506 = !DILocation(line: 366, column: 50, scope: !1488)
!1507 = !DILocation(line: 367, column: 36, scope: !1488)
!1508 = !DILocation(line: 366, column: 14, scope: !1488)
!1509 = !DILocation(line: 366, column: 12, scope: !1488)
!1510 = !DILocation(line: 368, column: 14, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1488, file: !392, line: 368, column: 13)
!1512 = !DILocation(line: 368, column: 13, scope: !1488)
!1513 = !DILocation(line: 369, column: 13, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !392, line: 368, column: 18)
!1515 = !DILocation(line: 370, column: 13, scope: !1514)
!1516 = !DILocation(line: 372, column: 14, scope: !1488)
!1517 = !DILocation(line: 373, column: 14, scope: !1488)
!1518 = !DILocation(line: 375, column: 48, scope: !495)
!1519 = !DILocation(line: 375, column: 54, scope: !495)
!1520 = !DILocation(line: 375, column: 58, scope: !495)
!1521 = !DILocation(line: 375, column: 62, scope: !495)
!1522 = !DILocation(line: 375, column: 14, scope: !495)
!1523 = !DILocation(line: 375, column: 12, scope: !495)
!1524 = !DILocation(line: 375, column: 5, scope: !495)
!1525 = !DILocation(line: 377, column: 16, scope: !495)
!1526 = !DILocation(line: 377, column: 5, scope: !495)
!1527 = !DILocation(line: 378, column: 16, scope: !495)
!1528 = !DILocation(line: 378, column: 5, scope: !495)
!1529 = !DILocation(line: 380, column: 12, scope: !495)
!1530 = !DILocation(line: 381, column: 1, scope: !495)
!1531 = !DILocation(line: 380, column: 5, scope: !495)
!1532 = !DILocation(line: 384, column: 31, scope: !603)
!1533 = !DILocation(line: 386, column: 5, scope: !603)
!1534 = !DILocation(line: 386, column: 16, scope: !603)
!1535 = !DILocation(line: 386, column: 26, scope: !603)
!1536 = !DILocation(line: 386, column: 36, scope: !603)
!1537 = !DILocation(line: 387, column: 43, scope: !603)
!1538 = !DILocation(line: 387, column: 46, scope: !603)
!1539 = !DILocation(line: 387, column: 51, scope: !603)
!1540 = !DILocation(line: 387, column: 28, scope: !603)
!1541 = !DILocation(line: 387, column: 14, scope: !603)
!1542 = !{!1205, !1205, i64 0}
!1543 = !DILocation(line: 388, column: 9, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !603, file: !392, line: 388, column: 9)
!1545 = !DILocation(line: 388, column: 18, scope: !1544)
!1546 = !DILocation(line: 388, column: 9, scope: !603)
!1547 = !DILocation(line: 389, column: 9, scope: !1544)
!1548 = !DILocation(line: 390, column: 43, scope: !603)
!1549 = !DILocation(line: 390, column: 46, scope: !603)
!1550 = !DILocation(line: 390, column: 51, scope: !603)
!1551 = !DILocation(line: 390, column: 28, scope: !603)
!1552 = !DILocation(line: 390, column: 14, scope: !603)
!1553 = !DILocation(line: 391, column: 9, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !603, file: !392, line: 391, column: 9)
!1555 = !DILocation(line: 391, column: 18, scope: !1554)
!1556 = !DILocation(line: 391, column: 9, scope: !603)
!1557 = !DILocation(line: 392, column: 9, scope: !1554)
!1558 = !DILocation(line: 399, column: 16, scope: !603)
!1559 = !DILocation(line: 399, column: 39, scope: !603)
!1560 = !DILocation(line: 399, column: 37, scope: !603)
!1561 = !DILocation(line: 399, column: 25, scope: !603)
!1562 = !DILocation(line: 399, column: 14, scope: !603)
!1563 = !DILocation(line: 400, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !603, file: !392, line: 400, column: 9)
!1565 = !DILocation(line: 400, column: 18, scope: !1564)
!1566 = !DILocation(line: 400, column: 9, scope: !603)
!1567 = !DILocation(line: 401, column: 18, scope: !1564)
!1568 = !DILocation(line: 401, column: 9, scope: !1564)
!1569 = !DILocation(line: 402, column: 23, scope: !603)
!1570 = !DILocation(line: 402, column: 5, scope: !603)
!1571 = !DILocation(line: 403, column: 1, scope: !603)
!1572 = !DILocation(line: 600, column: 31, scope: !611)
!1573 = !DILocation(line: 600, column: 44, scope: !611)
!1574 = !DILocation(line: 600, column: 51, scope: !611)
!1575 = !DILocation(line: 602, column: 5, scope: !611)
!1576 = !DILocation(line: 602, column: 15, scope: !611)
!1577 = !DILocation(line: 603, column: 5, scope: !611)
!1578 = !DILocation(line: 603, column: 16, scope: !611)
!1579 = !DILocation(line: 604, column: 5, scope: !611)
!1580 = !DILocation(line: 604, column: 9, scope: !611)
!1581 = !DILocation(line: 606, column: 9, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !611, file: !392, line: 606, column: 9)
!1583 = !DILocation(line: 606, column: 12, scope: !1582)
!1584 = !DILocation(line: 606, column: 17, scope: !1582)
!1585 = !DILocation(line: 606, column: 20, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1582, file: !392, discriminator: 1)
!1587 = !DILocation(line: 606, column: 23, scope: !1582)
!1588 = !DILocation(line: 606, column: 9, scope: !611)
!1589 = !DILocation(line: 607, column: 9, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1582, file: !392, line: 606, column: 29)
!1591 = !DILocation(line: 611, column: 24, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !611, file: !392, line: 611, column: 9)
!1593 = !DILocation(line: 611, column: 29, scope: !1592)
!1594 = !DILocation(line: 611, column: 38, scope: !1592)
!1595 = !DILocation(line: 611, column: 59, scope: !1592)
!1596 = !DILocation(line: 611, column: 93, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1592, file: !392, discriminator: 2)
!1598 = !DILocation(line: 611, column: 98, scope: !1592)
!1599 = !DILocation(line: 611, column: 62, scope: !1592)
!1600 = !DILocation(line: 611, column: 9, scope: !611)
!1601 = !DILocation(line: 611, column: 154, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1603, file: !392, discriminator: 3)
!1603 = !DILexicalBlockFile(scope: !1592, file: !392, discriminator: 1)
!1604 = !DILocation(line: 611, column: 134, scope: !1592)
!1605 = !DILocation(line: 611, column: 159, scope: !1592)
!1606 = !DILocation(line: 611, column: 129, scope: !1592)
!1607 = !DILocation(line: 611, column: 174, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !392, discriminator: 4)
!1609 = distinct !DILexicalBlock(scope: !1592, file: !392, line: 611, column: 174)
!1610 = !DILocation(line: 611, column: 197, scope: !1609)
!1611 = !DILocation(line: 611, column: 174, scope: !1592)
!1612 = !DILocation(line: 611, column: 210, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1609, file: !392, discriminator: 5)
!1614 = !DILocation(line: 611, column: 202, scope: !1609)
!1615 = !DILocation(line: 613, column: 26, scope: !623)
!1616 = !DILocation(line: 613, column: 31, scope: !623)
!1617 = !DILocation(line: 613, column: 42, scope: !623)
!1618 = !{!1327, !1205, i64 168}
!1619 = !DILocation(line: 613, column: 51, scope: !623)
!1620 = !DILocation(line: 613, column: 68, scope: !623)
!1621 = !DILocation(line: 613, column: 9, scope: !611)
!1622 = !DILocation(line: 617, column: 15, scope: !621)
!1623 = !DILocation(line: 617, column: 20, scope: !621)
!1624 = !DILocation(line: 617, column: 13, scope: !622)
!1625 = !DILocation(line: 618, column: 13, scope: !620)
!1626 = !DILocation(line: 618, column: 23, scope: !620)
!1627 = !DILocation(line: 618, column: 27, scope: !620)
!1628 = !DILocation(line: 619, column: 38, scope: !620)
!1629 = !DILocation(line: 619, column: 17, scope: !620)
!1630 = !DILocation(line: 619, column: 15, scope: !620)
!1631 = !DILocation(line: 620, column: 17, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !620, file: !392, line: 620, column: 17)
!1633 = !DILocation(line: 620, column: 19, scope: !1632)
!1634 = !DILocation(line: 620, column: 17, scope: !620)
!1635 = !DILocation(line: 621, column: 17, scope: !1632)
!1636 = !DILocation(line: 623, column: 44, scope: !620)
!1637 = !DILocation(line: 623, column: 47, scope: !620)
!1638 = !DILocation(line: 623, column: 50, scope: !620)
!1639 = !DILocation(line: 623, column: 23, scope: !620)
!1640 = !DILocation(line: 623, column: 21, scope: !620)
!1641 = !DILocation(line: 624, column: 13, scope: !620)
!1642 = !DILocation(line: 624, column: 18, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !626, file: !392, discriminator: 1)
!1644 = !DILocation(line: 624, column: 28, scope: !626)
!1645 = !DILocation(line: 624, column: 58, scope: !626)
!1646 = !DILocation(line: 624, column: 70, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !626, file: !392, line: 624, column: 67)
!1648 = !DILocation(line: 624, column: 87, scope: !1647)
!1649 = !DILocation(line: 624, column: 67, scope: !1647)
!1650 = !DILocation(line: 624, column: 97, scope: !1647)
!1651 = !DILocation(line: 624, column: 67, scope: !626)
!1652 = !DILocation(line: 624, column: 67, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !626, file: !392, discriminator: 2)
!1654 = !DILocation(line: 624, column: 128, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1647, file: !392, discriminator: 3)
!1656 = !DILocation(line: 624, column: 146, scope: !1647)
!1657 = !DILocation(line: 624, column: 156, scope: !1647)
!1658 = !DILocation(line: 624, column: 181, scope: !1647)
!1659 = !DILocation(line: 624, column: 112, scope: !1647)
!1660 = !DILocation(line: 624, column: 200, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !620, file: !392, discriminator: 4)
!1662 = !DILocation(line: 624, column: 200, scope: !626)
!1663 = !DILocation(line: 624, column: 200, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !626, file: !392, discriminator: 5)
!1665 = !DILocation(line: 625, column: 20, scope: !620)
!1666 = !DILocation(line: 625, column: 13, scope: !620)
!1667 = !DILocation(line: 626, column: 9, scope: !621)
!1668 = !DILocation(line: 628, column: 19, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !621, file: !392, line: 627, column: 14)
!1670 = !DILocation(line: 630, column: 5, scope: !622)
!1671 = !DILocation(line: 631, column: 29, scope: !630)
!1672 = !DILocation(line: 631, column: 34, scope: !630)
!1673 = !DILocation(line: 631, column: 43, scope: !630)
!1674 = !DILocation(line: 631, column: 62, scope: !630)
!1675 = !DILocation(line: 631, column: 96, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !630, file: !392, discriminator: 1)
!1677 = !DILocation(line: 631, column: 101, scope: !630)
!1678 = !DILocation(line: 631, column: 65, scope: !630)
!1679 = !DILocation(line: 631, column: 14, scope: !623)
!1680 = !DILocation(line: 632, column: 20, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !630, file: !392, line: 631, column: 130)
!1682 = !DILocation(line: 632, column: 45, scope: !1681)
!1683 = !DILocation(line: 632, column: 28, scope: !1681)
!1684 = !DILocation(line: 632, column: 25, scope: !1681)
!1685 = !DILocation(line: 632, column: 48, scope: !1681)
!1686 = !DILocation(line: 632, column: 53, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1681, file: !392, discriminator: 1)
!1688 = !DILocation(line: 632, column: 58, scope: !1681)
!1689 = !DILocation(line: 632, column: 48, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1681, file: !392, discriminator: 2)
!1691 = !DILocation(line: 632, column: 15, scope: !1681)
!1692 = !DILocation(line: 633, column: 5, scope: !1681)
!1693 = !DILocation(line: 634, column: 29, scope: !629)
!1694 = !DILocation(line: 634, column: 34, scope: !629)
!1695 = !DILocation(line: 634, column: 43, scope: !629)
!1696 = !DILocation(line: 634, column: 64, scope: !629)
!1697 = !DILocation(line: 634, column: 98, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !629, file: !392, discriminator: 1)
!1699 = !DILocation(line: 634, column: 103, scope: !629)
!1700 = !DILocation(line: 634, column: 67, scope: !629)
!1701 = !DILocation(line: 634, column: 14, scope: !630)
!1702 = !DILocation(line: 635, column: 9, scope: !628)
!1703 = !DILocation(line: 635, column: 20, scope: !628)
!1704 = !DILocation(line: 637, column: 28, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !628, file: !392, line: 637, column: 13)
!1706 = !DILocation(line: 637, column: 33, scope: !1705)
!1707 = !DILocation(line: 637, column: 42, scope: !1705)
!1708 = !DILocation(line: 637, column: 63, scope: !1705)
!1709 = !DILocation(line: 637, column: 97, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1705, file: !392, discriminator: 2)
!1711 = !DILocation(line: 637, column: 102, scope: !1705)
!1712 = !DILocation(line: 637, column: 66, scope: !1705)
!1713 = !DILocation(line: 637, column: 13, scope: !628)
!1714 = !DILocation(line: 637, column: 158, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1716, file: !392, discriminator: 3)
!1716 = !DILexicalBlockFile(scope: !1705, file: !392, discriminator: 1)
!1717 = !DILocation(line: 637, column: 138, scope: !1705)
!1718 = !DILocation(line: 637, column: 163, scope: !1705)
!1719 = !DILocation(line: 637, column: 133, scope: !1705)
!1720 = !DILocation(line: 637, column: 178, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1722, file: !392, discriminator: 4)
!1722 = distinct !DILexicalBlock(scope: !1705, file: !392, line: 637, column: 178)
!1723 = !DILocation(line: 637, column: 201, scope: !1722)
!1724 = !DILocation(line: 637, column: 178, scope: !1705)
!1725 = !DILocation(line: 637, column: 214, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1722, file: !392, discriminator: 5)
!1727 = !DILocation(line: 637, column: 206, scope: !1722)
!1728 = !DILocation(line: 638, column: 20, scope: !628)
!1729 = !DILocation(line: 638, column: 30, scope: !628)
!1730 = !DILocation(line: 638, column: 25, scope: !628)
!1731 = !DILocation(line: 638, column: 35, scope: !628)
!1732 = !DILocation(line: 638, column: 40, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !628, file: !392, discriminator: 1)
!1734 = !DILocation(line: 638, column: 50, scope: !628)
!1735 = !DILocation(line: 638, column: 45, scope: !628)
!1736 = !DILocation(line: 638, column: 35, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !628, file: !392, discriminator: 2)
!1738 = !DILocation(line: 638, column: 15, scope: !628)
!1739 = !DILocation(line: 639, column: 5, scope: !629)
!1740 = !DILocation(line: 639, column: 5, scope: !1698)
!1741 = !DILocation(line: 639, column: 5, scope: !628)
!1742 = !DILocation(line: 641, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !629, file: !392, line: 640, column: 10)
!1744 = !DILocation(line: 644, column: 9, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !611, file: !392, line: 644, column: 9)
!1746 = !DILocation(line: 644, column: 19, scope: !1745)
!1747 = !DILocation(line: 644, column: 22, scope: !1745)
!1748 = !DILocation(line: 644, column: 15, scope: !1745)
!1749 = !DILocation(line: 644, column: 9, scope: !611)
!1750 = !DILocation(line: 645, column: 14, scope: !1745)
!1751 = !DILocation(line: 645, column: 10, scope: !1745)
!1752 = !DILocation(line: 647, column: 14, scope: !1745)
!1753 = !DILocation(line: 649, column: 21, scope: !611)
!1754 = !DILocation(line: 649, column: 28, scope: !611)
!1755 = !DILocation(line: 649, column: 37, scope: !611)
!1756 = !DILocation(line: 650, column: 12, scope: !611)
!1757 = !DILocation(line: 650, column: 5, scope: !611)
!1758 = !DILocation(line: 653, column: 68, scope: !611)
!1759 = !DILocation(line: 653, column: 5, scope: !611)
!1760 = !DILocation(line: 654, column: 1, scope: !611)
!1761 = !DILocation(line: 901, column: 27, scope: !660)
!1762 = !DILocation(line: 901, column: 43, scope: !660)
!1763 = !DILocation(line: 901, column: 59, scope: !660)
!1764 = !DILocation(line: 903, column: 5, scope: !660)
!1765 = !DILocation(line: 903, column: 15, scope: !660)
!1766 = !DILocation(line: 903, column: 19, scope: !660)
!1767 = !DILocation(line: 903, column: 23, scope: !660)
!1768 = !DILocation(line: 904, column: 5, scope: !660)
!1769 = !DILocation(line: 904, column: 22, scope: !660)
!1770 = !DILocation(line: 904, column: 28, scope: !660)
!1771 = !DILocation(line: 905, column: 5, scope: !660)
!1772 = !DILocation(line: 905, column: 16, scope: !660)
!1773 = !DILocation(line: 905, column: 20, scope: !660)
!1774 = !DILocation(line: 906, column: 5, scope: !660)
!1775 = !DILocation(line: 906, column: 9, scope: !660)
!1776 = !DILocation(line: 907, column: 5, scope: !660)
!1777 = !DILocation(line: 907, column: 9, scope: !660)
!1778 = !DILocation(line: 908, column: 5, scope: !660)
!1779 = !DILocation(line: 908, column: 9, scope: !660)
!1780 = !DILocation(line: 911, column: 7, scope: !660)
!1781 = !DILocation(line: 912, column: 7, scope: !660)
!1782 = !DILocation(line: 913, column: 38, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !660, file: !392, line: 913, column: 9)
!1784 = !DILocation(line: 913, column: 44, scope: !1783)
!1785 = !DILocation(line: 913, column: 10, scope: !1783)
!1786 = !DILocation(line: 913, column: 9, scope: !660)
!1787 = !DILocation(line: 915, column: 9, scope: !1783)
!1788 = !DILocation(line: 918, column: 24, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !660, file: !392, line: 918, column: 9)
!1790 = !DILocation(line: 918, column: 29, scope: !1789)
!1791 = !DILocation(line: 918, column: 38, scope: !1789)
!1792 = !DILocation(line: 918, column: 58, scope: !1789)
!1793 = !DILocation(line: 918, column: 61, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1789, file: !392, discriminator: 1)
!1795 = !DILocation(line: 918, column: 63, scope: !1789)
!1796 = !DILocation(line: 918, column: 77, scope: !1789)
!1797 = !DILocation(line: 919, column: 9, scope: !1789)
!1798 = !DILocation(line: 919, column: 14, scope: !1789)
!1799 = !DILocation(line: 918, column: 9, scope: !660)
!1800 = !DILocation(line: 925, column: 25, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1789, file: !392, line: 919, column: 34)
!1802 = !DILocation(line: 925, column: 30, scope: !1801)
!1803 = !DILocation(line: 925, column: 39, scope: !1801)
!1804 = !DILocation(line: 926, column: 16, scope: !1801)
!1805 = !DILocation(line: 926, column: 9, scope: !1801)
!1806 = !DILocation(line: 928, column: 26, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !660, file: !392, line: 928, column: 9)
!1808 = !DILocation(line: 928, column: 31, scope: !1807)
!1809 = !DILocation(line: 928, column: 42, scope: !1807)
!1810 = !DILocation(line: 928, column: 51, scope: !1807)
!1811 = !DILocation(line: 928, column: 68, scope: !1807)
!1812 = !DILocation(line: 928, column: 9, scope: !660)
!1813 = !DILocation(line: 929, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !392, line: 929, column: 13)
!1815 = distinct !DILexicalBlock(scope: !1807, file: !392, line: 928, column: 75)
!1816 = !DILocation(line: 929, column: 15, scope: !1814)
!1817 = !DILocation(line: 929, column: 13, scope: !1815)
!1818 = !DILocation(line: 930, column: 29, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !392, line: 929, column: 30)
!1820 = !DILocation(line: 930, column: 13, scope: !1819)
!1821 = !DILocation(line: 933, column: 13, scope: !1819)
!1822 = !DILocation(line: 935, column: 44, scope: !1815)
!1823 = !DILocation(line: 935, column: 50, scope: !1815)
!1824 = !DILocation(line: 935, column: 16, scope: !1815)
!1825 = !DILocation(line: 935, column: 9, scope: !1815)
!1826 = !DILocation(line: 937, column: 9, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !660, file: !392, line: 937, column: 9)
!1828 = !DILocation(line: 937, column: 11, scope: !1827)
!1829 = !DILocation(line: 937, column: 25, scope: !1827)
!1830 = !DILocation(line: 937, column: 45, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1827, file: !392, discriminator: 1)
!1832 = !DILocation(line: 937, column: 50, scope: !1827)
!1833 = !DILocation(line: 937, column: 61, scope: !1827)
!1834 = !DILocation(line: 937, column: 70, scope: !1827)
!1835 = !DILocation(line: 937, column: 87, scope: !1827)
!1836 = !DILocation(line: 937, column: 9, scope: !660)
!1837 = !DILocation(line: 938, column: 25, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1827, file: !392, line: 937, column: 94)
!1839 = !DILocation(line: 938, column: 9, scope: !1838)
!1840 = !DILocation(line: 940, column: 9, scope: !1838)
!1841 = !DILocation(line: 943, column: 38, scope: !660)
!1842 = !DILocation(line: 943, column: 11, scope: !660)
!1843 = !DILocation(line: 943, column: 9, scope: !660)
!1844 = !DILocation(line: 944, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !660, file: !392, line: 944, column: 9)
!1846 = !DILocation(line: 944, column: 9, scope: !660)
!1847 = !DILocation(line: 945, column: 13, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !392, line: 944, column: 14)
!1849 = !DILocation(line: 945, column: 11, scope: !1848)
!1850 = !DILocation(line: 946, column: 15, scope: !1848)
!1851 = !DILocation(line: 947, column: 5, scope: !1848)
!1852 = !DILocation(line: 948, column: 14, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1845, file: !392, line: 948, column: 14)
!1854 = !DILocation(line: 948, column: 14, scope: !1845)
!1855 = !DILocation(line: 949, column: 9, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !392, line: 948, column: 32)
!1857 = !DILocation(line: 952, column: 11, scope: !660)
!1858 = !DILocation(line: 952, column: 14, scope: !660)
!1859 = !DILocation(line: 952, column: 23, scope: !660)
!1860 = !{!1327, !1192, i64 96}
!1861 = !DILocation(line: 952, column: 9, scope: !660)
!1862 = !DILocation(line: 953, column: 9, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !660, file: !392, line: 953, column: 9)
!1864 = !DILocation(line: 953, column: 11, scope: !1863)
!1865 = !DILocation(line: 953, column: 9, scope: !660)
!1866 = !DILocation(line: 954, column: 15, scope: !1863)
!1867 = !DILocation(line: 954, column: 18, scope: !1863)
!1868 = !DILocation(line: 954, column: 27, scope: !1863)
!1869 = !DILocation(line: 954, column: 13, scope: !1863)
!1870 = !DILocation(line: 954, column: 9, scope: !1863)
!1871 = !DILocation(line: 955, column: 9, scope: !684)
!1872 = !DILocation(line: 955, column: 13, scope: !684)
!1873 = !DILocation(line: 955, column: 27, scope: !684)
!1874 = !DILocation(line: 955, column: 30, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !684, file: !392, discriminator: 1)
!1876 = !DILocation(line: 955, column: 35, scope: !684)
!1877 = !{!1878, !1192, i64 144}
!1878 = !{!"", !1192, i64 0, !1192, i64 8, !1192, i64 16, !1192, i64 24, !1192, i64 32, !1192, i64 40, !1192, i64 48, !1192, i64 56, !1192, i64 64, !1192, i64 72, !1192, i64 80, !1192, i64 88, !1192, i64 96, !1192, i64 104, !1192, i64 112, !1192, i64 120, !1192, i64 128, !1192, i64 136, !1192, i64 144, !1192, i64 152, !1192, i64 160, !1192, i64 168, !1192, i64 176, !1192, i64 184, !1192, i64 192, !1192, i64 200, !1192, i64 208, !1192, i64 216, !1192, i64 224, !1192, i64 232, !1192, i64 240, !1192, i64 248, !1192, i64 256, !1192, i64 264}
!1879 = !DILocation(line: 955, column: 44, scope: !684)
!1880 = !DILocation(line: 955, column: 58, scope: !684)
!1881 = !DILocation(line: 956, column: 11, scope: !684)
!1882 = !DILocation(line: 956, column: 13, scope: !684)
!1883 = !DILocation(line: 956, column: 28, scope: !684)
!1884 = !DILocation(line: 956, column: 32, scope: !1875)
!1885 = !DILocation(line: 956, column: 36, scope: !684)
!1886 = !DILocation(line: 956, column: 50, scope: !684)
!1887 = !DILocation(line: 956, column: 53, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !684, file: !392, discriminator: 2)
!1889 = !DILocation(line: 956, column: 58, scope: !684)
!1890 = !DILocation(line: 956, column: 67, scope: !684)
!1891 = !DILocation(line: 955, column: 9, scope: !660)
!1892 = !DILocation(line: 957, column: 22, scope: !683)
!1893 = !DILocation(line: 959, column: 27, scope: !683)
!1894 = !DILocation(line: 959, column: 32, scope: !683)
!1895 = !DILocation(line: 959, column: 42, scope: !683)
!1896 = !{!1327, !1192, i64 24}
!1897 = !DILocation(line: 957, column: 9, scope: !683)
!1898 = !DILocation(line: 960, column: 13, scope: !682)
!1899 = !DILocation(line: 960, column: 13, scope: !683)
!1900 = !DILocation(line: 961, column: 13, scope: !681)
!1901 = !DILocation(line: 961, column: 18, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !680, file: !392, discriminator: 1)
!1903 = !DILocation(line: 961, column: 28, scope: !680)
!1904 = !DILocation(line: 961, column: 58, scope: !680)
!1905 = !DILocation(line: 961, column: 70, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !680, file: !392, line: 961, column: 67)
!1907 = !DILocation(line: 961, column: 87, scope: !1906)
!1908 = !DILocation(line: 961, column: 67, scope: !1906)
!1909 = !DILocation(line: 961, column: 97, scope: !1906)
!1910 = !DILocation(line: 961, column: 67, scope: !680)
!1911 = !DILocation(line: 961, column: 67, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !680, file: !392, discriminator: 2)
!1913 = !DILocation(line: 961, column: 128, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1906, file: !392, discriminator: 3)
!1915 = !DILocation(line: 961, column: 146, scope: !1906)
!1916 = !DILocation(line: 961, column: 156, scope: !1906)
!1917 = !DILocation(line: 961, column: 181, scope: !1906)
!1918 = !DILocation(line: 961, column: 112, scope: !1906)
!1919 = !DILocation(line: 961, column: 200, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !681, file: !392, discriminator: 4)
!1921 = !DILocation(line: 961, column: 200, scope: !680)
!1922 = !DILocation(line: 961, column: 200, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !680, file: !392, discriminator: 5)
!1924 = !DILocation(line: 962, column: 9, scope: !681)
!1925 = !DILocation(line: 963, column: 9, scope: !683)
!1926 = !DILocation(line: 973, column: 24, scope: !690)
!1927 = !DILocation(line: 973, column: 29, scope: !690)
!1928 = !DILocation(line: 973, column: 38, scope: !690)
!1929 = !DILocation(line: 973, column: 59, scope: !690)
!1930 = !DILocation(line: 973, column: 93, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !690, file: !392, discriminator: 1)
!1932 = !DILocation(line: 973, column: 98, scope: !690)
!1933 = !DILocation(line: 973, column: 62, scope: !690)
!1934 = !DILocation(line: 973, column: 9, scope: !660)
!1935 = !DILocation(line: 977, column: 33, scope: !689)
!1936 = !DILocation(line: 977, column: 15, scope: !689)
!1937 = !DILocation(line: 977, column: 37, scope: !689)
!1938 = !DILocation(line: 978, column: 23, scope: !689)
!1939 = !DILocation(line: 979, column: 13, scope: !688)
!1940 = !DILocation(line: 979, column: 13, scope: !689)
!1941 = !DILocation(line: 980, column: 13, scope: !687)
!1942 = !DILocation(line: 980, column: 18, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !686, file: !392, discriminator: 1)
!1944 = !DILocation(line: 980, column: 28, scope: !686)
!1945 = !DILocation(line: 980, column: 58, scope: !686)
!1946 = !DILocation(line: 980, column: 70, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !686, file: !392, line: 980, column: 67)
!1948 = !DILocation(line: 980, column: 87, scope: !1947)
!1949 = !DILocation(line: 980, column: 67, scope: !1947)
!1950 = !DILocation(line: 980, column: 97, scope: !1947)
!1951 = !DILocation(line: 980, column: 67, scope: !686)
!1952 = !DILocation(line: 980, column: 67, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !686, file: !392, discriminator: 2)
!1954 = !DILocation(line: 980, column: 128, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1947, file: !392, discriminator: 3)
!1956 = !DILocation(line: 980, column: 146, scope: !1947)
!1957 = !DILocation(line: 980, column: 156, scope: !1947)
!1958 = !DILocation(line: 980, column: 181, scope: !1947)
!1959 = !DILocation(line: 980, column: 112, scope: !1947)
!1960 = !DILocation(line: 980, column: 200, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !687, file: !392, discriminator: 4)
!1962 = !DILocation(line: 980, column: 200, scope: !686)
!1963 = !DILocation(line: 980, column: 200, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !686, file: !392, discriminator: 5)
!1965 = !DILocation(line: 981, column: 9, scope: !687)
!1966 = !DILocation(line: 982, column: 5, scope: !689)
!1967 = !DILocation(line: 987, column: 30, scope: !695)
!1968 = !DILocation(line: 987, column: 15, scope: !695)
!1969 = !DILocation(line: 987, column: 13, scope: !695)
!1970 = !DILocation(line: 988, column: 13, scope: !694)
!1971 = !DILocation(line: 988, column: 13, scope: !695)
!1972 = !DILocation(line: 991, column: 13, scope: !693)
!1973 = !DILocation(line: 991, column: 18, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !692, file: !392, discriminator: 1)
!1975 = !DILocation(line: 991, column: 28, scope: !692)
!1976 = !DILocation(line: 991, column: 58, scope: !692)
!1977 = !DILocation(line: 991, column: 70, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !692, file: !392, line: 991, column: 67)
!1979 = !DILocation(line: 991, column: 87, scope: !1978)
!1980 = !DILocation(line: 991, column: 67, scope: !1978)
!1981 = !DILocation(line: 991, column: 97, scope: !1978)
!1982 = !DILocation(line: 991, column: 67, scope: !692)
!1983 = !DILocation(line: 991, column: 67, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !692, file: !392, discriminator: 2)
!1985 = !DILocation(line: 991, column: 128, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1978, file: !392, discriminator: 3)
!1987 = !DILocation(line: 991, column: 146, scope: !1978)
!1988 = !DILocation(line: 991, column: 156, scope: !1978)
!1989 = !DILocation(line: 991, column: 181, scope: !1978)
!1990 = !DILocation(line: 991, column: 112, scope: !1978)
!1991 = !DILocation(line: 991, column: 200, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !693, file: !392, discriminator: 4)
!1993 = !DILocation(line: 991, column: 200, scope: !692)
!1994 = !DILocation(line: 991, column: 200, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !692, file: !392, discriminator: 5)
!1996 = !DILocation(line: 992, column: 9, scope: !693)
!1997 = !DILocation(line: 993, column: 13, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !695, file: !392, line: 993, column: 13)
!1999 = !DILocation(line: 993, column: 17, scope: !1998)
!2000 = !DILocation(line: 993, column: 13, scope: !695)
!2001 = !DILocation(line: 994, column: 13, scope: !1998)
!2002 = !DILocation(line: 995, column: 29, scope: !699)
!2003 = !DILocation(line: 995, column: 36, scope: !699)
!2004 = !DILocation(line: 995, column: 45, scope: !699)
!2005 = !DILocation(line: 995, column: 64, scope: !699)
!2006 = !DILocation(line: 995, column: 98, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !699, file: !392, discriminator: 1)
!2008 = !DILocation(line: 995, column: 105, scope: !699)
!2009 = !DILocation(line: 995, column: 67, scope: !699)
!2010 = !DILocation(line: 995, column: 13, scope: !695)
!2011 = !DILocation(line: 996, column: 29, scope: !698)
!2012 = !DILocation(line: 996, column: 13, scope: !698)
!2013 = !DILocation(line: 998, column: 13, scope: !698)
!2014 = !DILocation(line: 998, column: 18, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !697, file: !392, discriminator: 1)
!2016 = !DILocation(line: 998, column: 28, scope: !697)
!2017 = !DILocation(line: 998, column: 58, scope: !697)
!2018 = !DILocation(line: 998, column: 72, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !697, file: !392, line: 998, column: 69)
!2020 = !DILocation(line: 998, column: 89, scope: !2019)
!2021 = !DILocation(line: 998, column: 69, scope: !2019)
!2022 = !DILocation(line: 998, column: 99, scope: !2019)
!2023 = !DILocation(line: 998, column: 69, scope: !697)
!2024 = !DILocation(line: 998, column: 69, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !697, file: !392, discriminator: 2)
!2026 = !DILocation(line: 998, column: 130, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2019, file: !392, discriminator: 3)
!2028 = !DILocation(line: 998, column: 148, scope: !2019)
!2029 = !DILocation(line: 998, column: 158, scope: !2019)
!2030 = !DILocation(line: 998, column: 183, scope: !2019)
!2031 = !DILocation(line: 998, column: 114, scope: !2019)
!2032 = !DILocation(line: 998, column: 202, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !698, file: !392, discriminator: 4)
!2034 = !DILocation(line: 998, column: 202, scope: !697)
!2035 = !DILocation(line: 998, column: 202, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !697, file: !392, discriminator: 5)
!2037 = !DILocation(line: 999, column: 13, scope: !698)
!2038 = !DILocation(line: 1001, column: 36, scope: !695)
!2039 = !DILocation(line: 1001, column: 19, scope: !695)
!2040 = !DILocation(line: 1001, column: 12, scope: !695)
!2041 = !DILocation(line: 1001, column: 17, scope: !695)
!2042 = !DILocation(line: 1002, column: 12, scope: !695)
!2043 = !DILocation(line: 1002, column: 17, scope: !695)
!2044 = !DILocation(line: 1003, column: 9, scope: !695)
!2045 = !DILocation(line: 1003, column: 14, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !701, file: !392, discriminator: 1)
!2047 = !DILocation(line: 1003, column: 24, scope: !701)
!2048 = !DILocation(line: 1003, column: 54, scope: !701)
!2049 = !DILocation(line: 1003, column: 68, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !701, file: !392, line: 1003, column: 65)
!2051 = !DILocation(line: 1003, column: 85, scope: !2050)
!2052 = !DILocation(line: 1003, column: 65, scope: !2050)
!2053 = !DILocation(line: 1003, column: 95, scope: !2050)
!2054 = !DILocation(line: 1003, column: 65, scope: !701)
!2055 = !DILocation(line: 1003, column: 65, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !701, file: !392, discriminator: 2)
!2057 = !DILocation(line: 1003, column: 126, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2050, file: !392, discriminator: 3)
!2059 = !DILocation(line: 1003, column: 144, scope: !2050)
!2060 = !DILocation(line: 1003, column: 154, scope: !2050)
!2061 = !DILocation(line: 1003, column: 179, scope: !2050)
!2062 = !DILocation(line: 1003, column: 110, scope: !2050)
!2063 = !DILocation(line: 1003, column: 198, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !695, file: !392, discriminator: 4)
!2065 = !DILocation(line: 1003, column: 198, scope: !701)
!2066 = !DILocation(line: 1003, column: 198, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !701, file: !392, discriminator: 5)
!2068 = !DILocation(line: 1005, column: 9, scope: !706)
!2069 = !DILocation(line: 1005, column: 11, scope: !706)
!2070 = !DILocation(line: 1005, column: 9, scope: !660)
!2071 = !DILocation(line: 1006, column: 12, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !706, file: !392, line: 1005, column: 26)
!2073 = !DILocation(line: 1006, column: 17, scope: !2072)
!2074 = !DILocation(line: 1007, column: 5, scope: !2072)
!2075 = !DILocation(line: 1008, column: 29, scope: !705)
!2076 = !DILocation(line: 1008, column: 34, scope: !705)
!2077 = !DILocation(line: 1008, column: 43, scope: !705)
!2078 = !DILocation(line: 1008, column: 64, scope: !705)
!2079 = !DILocation(line: 1008, column: 98, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !705, file: !392, discriminator: 1)
!2081 = !DILocation(line: 1008, column: 103, scope: !705)
!2082 = !DILocation(line: 1008, column: 67, scope: !705)
!2083 = !DILocation(line: 1008, column: 14, scope: !706)
!2084 = !DILocation(line: 1009, column: 33, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !705, file: !392, line: 1008, column: 134)
!2086 = !DILocation(line: 1009, column: 15, scope: !2085)
!2087 = !DILocation(line: 1009, column: 37, scope: !2085)
!2088 = !DILocation(line: 1010, column: 23, scope: !2085)
!2089 = !DILocation(line: 1011, column: 5, scope: !2085)
!2090 = !DILocation(line: 1015, column: 17, scope: !704)
!2091 = !DILocation(line: 1015, column: 22, scope: !704)
!2092 = !DILocation(line: 1015, column: 32, scope: !704)
!2093 = !DILocation(line: 1015, column: 15, scope: !704)
!2094 = !DILocation(line: 1015, column: 13, scope: !704)
!2095 = !DILocation(line: 1016, column: 13, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !704, file: !392, line: 1016, column: 13)
!2097 = !DILocation(line: 1016, column: 17, scope: !2096)
!2098 = !DILocation(line: 1016, column: 13, scope: !704)
!2099 = !DILocation(line: 1017, column: 13, scope: !2096)
!2100 = !DILocation(line: 1018, column: 36, scope: !704)
!2101 = !DILocation(line: 1018, column: 19, scope: !704)
!2102 = !DILocation(line: 1018, column: 12, scope: !704)
!2103 = !DILocation(line: 1018, column: 17, scope: !704)
!2104 = !DILocation(line: 1019, column: 9, scope: !704)
!2105 = !DILocation(line: 1019, column: 14, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !703, file: !392, discriminator: 1)
!2107 = !DILocation(line: 1019, column: 24, scope: !703)
!2108 = !DILocation(line: 1019, column: 54, scope: !703)
!2109 = !DILocation(line: 1019, column: 68, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !703, file: !392, line: 1019, column: 65)
!2111 = !DILocation(line: 1019, column: 85, scope: !2110)
!2112 = !DILocation(line: 1019, column: 65, scope: !2110)
!2113 = !DILocation(line: 1019, column: 95, scope: !2110)
!2114 = !DILocation(line: 1019, column: 65, scope: !703)
!2115 = !DILocation(line: 1019, column: 65, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !703, file: !392, discriminator: 2)
!2117 = !DILocation(line: 1019, column: 126, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2110, file: !392, discriminator: 3)
!2119 = !DILocation(line: 1019, column: 144, scope: !2110)
!2120 = !DILocation(line: 1019, column: 154, scope: !2110)
!2121 = !DILocation(line: 1019, column: 179, scope: !2110)
!2122 = !DILocation(line: 1019, column: 110, scope: !2110)
!2123 = !DILocation(line: 1019, column: 198, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !704, file: !392, discriminator: 4)
!2125 = !DILocation(line: 1019, column: 198, scope: !703)
!2126 = !DILocation(line: 1019, column: 198, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !703, file: !392, discriminator: 5)
!2128 = !DILocation(line: 1025, column: 9, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !660, file: !392, line: 1025, column: 9)
!2130 = !DILocation(line: 1025, column: 9, scope: !660)
!2131 = !DILocation(line: 1026, column: 23, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !392, line: 1025, column: 24)
!2133 = !DILocation(line: 1026, column: 12, scope: !2132)
!2134 = !DILocation(line: 1026, column: 17, scope: !2132)
!2135 = !DILocation(line: 1027, column: 5, scope: !2132)
!2136 = !DILocation(line: 1028, column: 9, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !660, file: !392, line: 1028, column: 9)
!2138 = !DILocation(line: 1028, column: 9, scope: !660)
!2139 = !DILocation(line: 1029, column: 23, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !392, line: 1028, column: 24)
!2141 = !DILocation(line: 1029, column: 12, scope: !2140)
!2142 = !DILocation(line: 1029, column: 17, scope: !2140)
!2143 = !DILocation(line: 1030, column: 5, scope: !2140)
!2144 = !DILocation(line: 1031, column: 41, scope: !660)
!2145 = !DILocation(line: 1031, column: 50, scope: !660)
!2146 = !DILocation(line: 1031, column: 59, scope: !660)
!2147 = !DILocation(line: 1031, column: 12, scope: !660)
!2148 = !DILocation(line: 1031, column: 5, scope: !660)
!2149 = !DILocation(line: 1032, column: 1, scope: !660)
!2150 = !DILocation(line: 437, column: 23, scope: !508)
!2151 = !DILocation(line: 437, column: 36, scope: !508)
!2152 = !DILocation(line: 439, column: 5, scope: !508)
!2153 = !DILocation(line: 439, column: 16, scope: !508)
!2154 = !DILocation(line: 440, column: 5, scope: !508)
!2155 = !DILocation(line: 440, column: 16, scope: !508)
!2156 = !DILocation(line: 440, column: 19, scope: !508)
!2157 = !DILocation(line: 441, column: 24, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !508, file: !392, line: 441, column: 9)
!2159 = !DILocation(line: 441, column: 29, scope: !2158)
!2160 = !DILocation(line: 441, column: 38, scope: !2158)
!2161 = !DILocation(line: 441, column: 59, scope: !2158)
!2162 = !DILocation(line: 441, column: 93, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2158, file: !392, discriminator: 2)
!2164 = !DILocation(line: 441, column: 98, scope: !2158)
!2165 = !DILocation(line: 441, column: 62, scope: !2158)
!2166 = !DILocation(line: 441, column: 9, scope: !508)
!2167 = !DILocation(line: 441, column: 154, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2169, file: !392, discriminator: 3)
!2169 = !DILexicalBlockFile(scope: !2158, file: !392, discriminator: 1)
!2170 = !DILocation(line: 441, column: 134, scope: !2158)
!2171 = !DILocation(line: 441, column: 159, scope: !2158)
!2172 = !DILocation(line: 441, column: 129, scope: !2158)
!2173 = !DILocation(line: 441, column: 174, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2175, file: !392, discriminator: 4)
!2175 = distinct !DILexicalBlock(scope: !2158, file: !392, line: 441, column: 174)
!2176 = !DILocation(line: 441, column: 197, scope: !2175)
!2177 = !DILocation(line: 441, column: 174, scope: !2158)
!2178 = !DILocation(line: 441, column: 210, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2175, file: !392, discriminator: 5)
!2180 = !DILocation(line: 441, column: 202, scope: !2175)
!2181 = !DILocation(line: 442, column: 24, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !508, file: !392, line: 442, column: 9)
!2183 = !DILocation(line: 442, column: 29, scope: !2182)
!2184 = !DILocation(line: 442, column: 38, scope: !2182)
!2185 = !DILocation(line: 442, column: 59, scope: !2182)
!2186 = !DILocation(line: 442, column: 93, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2182, file: !392, discriminator: 2)
!2188 = !DILocation(line: 442, column: 98, scope: !2182)
!2189 = !DILocation(line: 442, column: 62, scope: !2182)
!2190 = !DILocation(line: 442, column: 9, scope: !508)
!2191 = !DILocation(line: 442, column: 154, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2193, file: !392, discriminator: 3)
!2193 = !DILexicalBlockFile(scope: !2182, file: !392, discriminator: 1)
!2194 = !DILocation(line: 442, column: 134, scope: !2182)
!2195 = !DILocation(line: 442, column: 159, scope: !2182)
!2196 = !DILocation(line: 442, column: 129, scope: !2182)
!2197 = !DILocation(line: 442, column: 174, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2199, file: !392, discriminator: 4)
!2199 = distinct !DILexicalBlock(scope: !2182, file: !392, line: 442, column: 174)
!2200 = !DILocation(line: 442, column: 197, scope: !2199)
!2201 = !DILocation(line: 442, column: 174, scope: !2182)
!2202 = !DILocation(line: 442, column: 210, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2199, file: !392, discriminator: 5)
!2204 = !DILocation(line: 442, column: 202, scope: !2199)
!2205 = !DILocation(line: 444, column: 14, scope: !508)
!2206 = !DILocation(line: 446, column: 12, scope: !508)
!2207 = !DILocation(line: 446, column: 5, scope: !508)
!2208 = !DILocation(line: 447, column: 1, scope: !508)
!2209 = !DILocation(line: 450, column: 23, scope: !524)
!2210 = !DILocation(line: 450, column: 36, scope: !524)
!2211 = !DILocation(line: 452, column: 5, scope: !524)
!2212 = !DILocation(line: 452, column: 16, scope: !524)
!2213 = !DILocation(line: 453, column: 5, scope: !524)
!2214 = !DILocation(line: 453, column: 16, scope: !524)
!2215 = !DILocation(line: 453, column: 19, scope: !524)
!2216 = !DILocation(line: 454, column: 24, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !524, file: !392, line: 454, column: 9)
!2218 = !DILocation(line: 454, column: 29, scope: !2217)
!2219 = !DILocation(line: 454, column: 38, scope: !2217)
!2220 = !DILocation(line: 454, column: 59, scope: !2217)
!2221 = !DILocation(line: 454, column: 93, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2217, file: !392, discriminator: 2)
!2223 = !DILocation(line: 454, column: 98, scope: !2217)
!2224 = !DILocation(line: 454, column: 62, scope: !2217)
!2225 = !DILocation(line: 454, column: 9, scope: !524)
!2226 = !DILocation(line: 454, column: 154, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2228, file: !392, discriminator: 3)
!2228 = !DILexicalBlockFile(scope: !2217, file: !392, discriminator: 1)
!2229 = !DILocation(line: 454, column: 134, scope: !2217)
!2230 = !DILocation(line: 454, column: 159, scope: !2217)
!2231 = !DILocation(line: 454, column: 129, scope: !2217)
!2232 = !DILocation(line: 454, column: 174, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2234, file: !392, discriminator: 4)
!2234 = distinct !DILexicalBlock(scope: !2217, file: !392, line: 454, column: 174)
!2235 = !DILocation(line: 454, column: 197, scope: !2234)
!2236 = !DILocation(line: 454, column: 174, scope: !2217)
!2237 = !DILocation(line: 454, column: 210, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2234, file: !392, discriminator: 5)
!2239 = !DILocation(line: 454, column: 202, scope: !2234)
!2240 = !DILocation(line: 455, column: 24, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !524, file: !392, line: 455, column: 9)
!2242 = !DILocation(line: 455, column: 29, scope: !2241)
!2243 = !DILocation(line: 455, column: 38, scope: !2241)
!2244 = !DILocation(line: 455, column: 59, scope: !2241)
!2245 = !DILocation(line: 455, column: 93, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2241, file: !392, discriminator: 2)
!2247 = !DILocation(line: 455, column: 98, scope: !2241)
!2248 = !DILocation(line: 455, column: 62, scope: !2241)
!2249 = !DILocation(line: 455, column: 9, scope: !524)
!2250 = !DILocation(line: 455, column: 154, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !2252, file: !392, discriminator: 3)
!2252 = !DILexicalBlockFile(scope: !2241, file: !392, discriminator: 1)
!2253 = !DILocation(line: 455, column: 134, scope: !2241)
!2254 = !DILocation(line: 455, column: 159, scope: !2241)
!2255 = !DILocation(line: 455, column: 129, scope: !2241)
!2256 = !DILocation(line: 455, column: 174, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2258, file: !392, discriminator: 4)
!2258 = distinct !DILexicalBlock(scope: !2241, file: !392, line: 455, column: 174)
!2259 = !DILocation(line: 455, column: 197, scope: !2258)
!2260 = !DILocation(line: 455, column: 174, scope: !2241)
!2261 = !DILocation(line: 455, column: 210, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2258, file: !392, discriminator: 5)
!2263 = !DILocation(line: 455, column: 202, scope: !2258)
!2264 = !DILocation(line: 457, column: 14, scope: !524)
!2265 = !DILocation(line: 459, column: 12, scope: !524)
!2266 = !DILocation(line: 459, column: 5, scope: !524)
!2267 = !DILocation(line: 460, column: 1, scope: !524)
!2268 = !DILocation(line: 463, column: 23, scope: !531)
!2269 = !DILocation(line: 463, column: 36, scope: !531)
!2270 = !DILocation(line: 465, column: 5, scope: !531)
!2271 = !DILocation(line: 465, column: 16, scope: !531)
!2272 = !DILocation(line: 466, column: 5, scope: !531)
!2273 = !DILocation(line: 466, column: 16, scope: !531)
!2274 = !DILocation(line: 466, column: 19, scope: !531)
!2275 = !DILocation(line: 467, column: 24, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !531, file: !392, line: 467, column: 9)
!2277 = !DILocation(line: 467, column: 29, scope: !2276)
!2278 = !DILocation(line: 467, column: 38, scope: !2276)
!2279 = !DILocation(line: 467, column: 59, scope: !2276)
!2280 = !DILocation(line: 467, column: 93, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2276, file: !392, discriminator: 2)
!2282 = !DILocation(line: 467, column: 98, scope: !2276)
!2283 = !DILocation(line: 467, column: 62, scope: !2276)
!2284 = !DILocation(line: 467, column: 9, scope: !531)
!2285 = !DILocation(line: 467, column: 154, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2287, file: !392, discriminator: 3)
!2287 = !DILexicalBlockFile(scope: !2276, file: !392, discriminator: 1)
!2288 = !DILocation(line: 467, column: 134, scope: !2276)
!2289 = !DILocation(line: 467, column: 159, scope: !2276)
!2290 = !DILocation(line: 467, column: 129, scope: !2276)
!2291 = !DILocation(line: 467, column: 174, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2293, file: !392, discriminator: 4)
!2293 = distinct !DILexicalBlock(scope: !2276, file: !392, line: 467, column: 174)
!2294 = !DILocation(line: 467, column: 197, scope: !2293)
!2295 = !DILocation(line: 467, column: 174, scope: !2276)
!2296 = !DILocation(line: 467, column: 210, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2293, file: !392, discriminator: 5)
!2298 = !DILocation(line: 467, column: 202, scope: !2293)
!2299 = !DILocation(line: 468, column: 24, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !531, file: !392, line: 468, column: 9)
!2301 = !DILocation(line: 468, column: 29, scope: !2300)
!2302 = !DILocation(line: 468, column: 38, scope: !2300)
!2303 = !DILocation(line: 468, column: 59, scope: !2300)
!2304 = !DILocation(line: 468, column: 93, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2300, file: !392, discriminator: 2)
!2306 = !DILocation(line: 468, column: 98, scope: !2300)
!2307 = !DILocation(line: 468, column: 62, scope: !2300)
!2308 = !DILocation(line: 468, column: 9, scope: !531)
!2309 = !DILocation(line: 468, column: 154, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2311, file: !392, discriminator: 3)
!2311 = !DILexicalBlockFile(scope: !2300, file: !392, discriminator: 1)
!2312 = !DILocation(line: 468, column: 134, scope: !2300)
!2313 = !DILocation(line: 468, column: 159, scope: !2300)
!2314 = !DILocation(line: 468, column: 129, scope: !2300)
!2315 = !DILocation(line: 468, column: 174, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2317, file: !392, discriminator: 4)
!2317 = distinct !DILexicalBlock(scope: !2300, file: !392, line: 468, column: 174)
!2318 = !DILocation(line: 468, column: 197, scope: !2317)
!2319 = !DILocation(line: 468, column: 174, scope: !2300)
!2320 = !DILocation(line: 468, column: 210, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2317, file: !392, discriminator: 5)
!2322 = !DILocation(line: 468, column: 202, scope: !2317)
!2323 = !DILocation(line: 470, column: 14, scope: !531)
!2324 = !DILocation(line: 472, column: 12, scope: !531)
!2325 = !DILocation(line: 472, column: 5, scope: !531)
!2326 = !DILocation(line: 473, column: 1, scope: !531)
!2327 = !DILocation(line: 494, column: 29, scope: !538)
!2328 = !DILocation(line: 494, column: 42, scope: !538)
!2329 = !DILocation(line: 496, column: 21, scope: !538)
!2330 = !DILocation(line: 496, column: 5, scope: !538)
!2331 = !DILocation(line: 498, column: 5, scope: !538)
!2332 = !DILocation(line: 503, column: 26, scope: !542)
!2333 = !DILocation(line: 503, column: 39, scope: !542)
!2334 = !DILocation(line: 505, column: 21, scope: !542)
!2335 = !DILocation(line: 505, column: 5, scope: !542)
!2336 = !DILocation(line: 507, column: 5, scope: !542)
!2337 = !DILocation(line: 511, column: 23, scope: !546)
!2338 = !DILocation(line: 511, column: 36, scope: !546)
!2339 = !DILocation(line: 511, column: 49, scope: !546)
!2340 = !DILocation(line: 513, column: 5, scope: !546)
!2341 = !DILocation(line: 513, column: 16, scope: !546)
!2342 = !DILocation(line: 514, column: 5, scope: !546)
!2343 = !DILocation(line: 514, column: 16, scope: !546)
!2344 = !DILocation(line: 515, column: 5, scope: !546)
!2345 = !DILocation(line: 515, column: 10, scope: !546)
!2346 = !DILocation(line: 516, column: 5, scope: !546)
!2347 = !DILocation(line: 516, column: 16, scope: !546)
!2348 = !DILocation(line: 516, column: 19, scope: !546)
!2349 = !DILocation(line: 517, column: 24, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !546, file: !392, line: 517, column: 9)
!2351 = !DILocation(line: 517, column: 29, scope: !2350)
!2352 = !DILocation(line: 517, column: 38, scope: !2350)
!2353 = !DILocation(line: 517, column: 59, scope: !2350)
!2354 = !DILocation(line: 517, column: 93, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2350, file: !392, discriminator: 2)
!2356 = !DILocation(line: 517, column: 98, scope: !2350)
!2357 = !DILocation(line: 517, column: 62, scope: !2350)
!2358 = !DILocation(line: 517, column: 9, scope: !546)
!2359 = !DILocation(line: 517, column: 154, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2361, file: !392, discriminator: 3)
!2361 = !DILexicalBlockFile(scope: !2350, file: !392, discriminator: 1)
!2362 = !DILocation(line: 517, column: 134, scope: !2350)
!2363 = !DILocation(line: 517, column: 159, scope: !2350)
!2364 = !DILocation(line: 517, column: 129, scope: !2350)
!2365 = !DILocation(line: 517, column: 174, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2367, file: !392, discriminator: 4)
!2367 = distinct !DILexicalBlock(scope: !2350, file: !392, line: 517, column: 174)
!2368 = !DILocation(line: 517, column: 197, scope: !2367)
!2369 = !DILocation(line: 517, column: 174, scope: !2350)
!2370 = !DILocation(line: 517, column: 210, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2367, file: !392, discriminator: 5)
!2372 = !DILocation(line: 517, column: 202, scope: !2367)
!2373 = !DILocation(line: 518, column: 24, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !546, file: !392, line: 518, column: 9)
!2375 = !DILocation(line: 518, column: 29, scope: !2374)
!2376 = !DILocation(line: 518, column: 38, scope: !2374)
!2377 = !DILocation(line: 518, column: 59, scope: !2374)
!2378 = !DILocation(line: 518, column: 93, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2374, file: !392, discriminator: 2)
!2380 = !DILocation(line: 518, column: 98, scope: !2374)
!2381 = !DILocation(line: 518, column: 62, scope: !2374)
!2382 = !DILocation(line: 518, column: 9, scope: !546)
!2383 = !DILocation(line: 518, column: 154, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2385, file: !392, discriminator: 3)
!2385 = !DILexicalBlockFile(scope: !2374, file: !392, discriminator: 1)
!2386 = !DILocation(line: 518, column: 134, scope: !2374)
!2387 = !DILocation(line: 518, column: 159, scope: !2374)
!2388 = !DILocation(line: 518, column: 129, scope: !2374)
!2389 = !DILocation(line: 518, column: 174, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2391, file: !392, discriminator: 4)
!2391 = distinct !DILexicalBlock(scope: !2374, file: !392, line: 518, column: 174)
!2392 = !DILocation(line: 518, column: 197, scope: !2391)
!2393 = !DILocation(line: 518, column: 174, scope: !2374)
!2394 = !DILocation(line: 518, column: 210, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2391, file: !392, discriminator: 5)
!2396 = !DILocation(line: 518, column: 202, scope: !2391)
!2397 = !DILocation(line: 520, column: 9, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !546, file: !392, line: 520, column: 9)
!2399 = !DILocation(line: 520, column: 11, scope: !2398)
!2400 = !DILocation(line: 520, column: 9, scope: !546)
!2401 = !DILocation(line: 521, column: 25, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !392, line: 520, column: 33)
!2403 = !DILocation(line: 521, column: 9, scope: !2402)
!2404 = !DILocation(line: 522, column: 9, scope: !2402)
!2405 = !DILocation(line: 525, column: 7, scope: !546)
!2406 = !DILocation(line: 525, column: 28, scope: !546)
!2407 = !DILocation(line: 526, column: 16, scope: !546)
!2408 = !DILocation(line: 527, column: 35, scope: !546)
!2409 = !DILocation(line: 527, column: 20, scope: !546)
!2410 = !DILocation(line: 527, column: 18, scope: !546)
!2411 = !DILocation(line: 528, column: 18, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !546, file: !392, line: 528, column: 9)
!2413 = !DILocation(line: 528, column: 23, scope: !2412)
!2414 = !DILocation(line: 528, column: 29, scope: !2412)
!2415 = !DILocation(line: 528, column: 41, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2412, file: !392, discriminator: 1)
!2417 = !DILocation(line: 528, column: 49, scope: !2412)
!2418 = !DILocation(line: 528, column: 46, scope: !2412)
!2419 = !DILocation(line: 528, column: 9, scope: !546)
!2420 = !DILocation(line: 529, column: 23, scope: !2412)
!2421 = !DILocation(line: 529, column: 13, scope: !2412)
!2422 = !DILocation(line: 529, column: 9, scope: !2412)
!2423 = !DILocation(line: 531, column: 13, scope: !2412)
!2424 = !DILocation(line: 534, column: 5, scope: !546)
!2425 = !DILocation(line: 534, column: 17, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2427, file: !392, discriminator: 1)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !392, line: 534, column: 14)
!2428 = distinct !DILexicalBlock(scope: !546, file: !392, line: 534, column: 8)
!2429 = !DILocation(line: 534, column: 23, scope: !2427)
!2430 = !DILocation(line: 534, column: 49, scope: !2427)
!2431 = !DILocation(line: 534, column: 55, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2427, file: !392, discriminator: 3)
!2433 = !DILocation(line: 534, column: 61, scope: !2427)
!2434 = !DILocation(line: 534, column: 88, scope: !2427)
!2435 = !DILocation(line: 534, column: 94, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2427, file: !392, discriminator: 5)
!2437 = !DILocation(line: 534, column: 100, scope: !2427)
!2438 = !DILocation(line: 534, column: 126, scope: !2427)
!2439 = !DILocation(line: 534, column: 132, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2427, file: !392, discriminator: 7)
!2441 = !DILocation(line: 534, column: 138, scope: !2427)
!2442 = !DILocation(line: 534, column: 14, scope: !2428)
!2443 = !DILocation(line: 534, column: 174, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2445, file: !392, discriminator: 8)
!2445 = !DILexicalBlockFile(scope: !2446, file: !392, discriminator: 6)
!2446 = !DILexicalBlockFile(scope: !2447, file: !392, discriminator: 4)
!2447 = !DILexicalBlockFile(scope: !2448, file: !392, discriminator: 2)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !392, line: 534, column: 172)
!2449 = distinct !DILexicalBlock(scope: !2427, file: !392, line: 534, column: 166)
!2450 = !DILocation(line: 534, column: 173, scope: !2448)
!2451 = !DILocation(line: 534, column: 195, scope: !2448)
!2452 = !DILocation(line: 534, column: 172, scope: !2449)
!2453 = !DILocation(line: 534, column: 203, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2448, file: !392, discriminator: 10)
!2455 = !DILocation(line: 534, column: 224, scope: !2448)
!2456 = !DILocation(line: 534, column: 201, scope: !2448)
!2457 = !DILocation(line: 534, column: 230, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2459, file: !392, discriminator: 12)
!2459 = !DILexicalBlockFile(scope: !2449, file: !392, discriminator: 11)
!2460 = !DILocation(line: 534, column: 243, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2462, file: !392, discriminator: 9)
!2462 = distinct !DILexicalBlock(scope: !2427, file: !392, line: 534, column: 241)
!2463 = !DILocation(line: 534, column: 242, scope: !2462)
!2464 = !DILocation(line: 534, column: 264, scope: !2462)
!2465 = !DILocation(line: 534, column: 241, scope: !2427)
!2466 = !DILocation(line: 534, column: 273, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2462, file: !392, discriminator: 14)
!2468 = !DILocation(line: 534, column: 294, scope: !2462)
!2469 = !DILocation(line: 534, column: 271, scope: !2462)
!2470 = !DILocation(line: 534, column: 299, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2428, file: !392, discriminator: 13)
!2472 = !DILocation(line: 534, column: 299, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2428, file: !392, discriminator: 15)
!2474 = !DILocation(line: 535, column: 11, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !546, file: !392, line: 535, column: 9)
!2476 = !DILocation(line: 535, column: 10, scope: !2475)
!2477 = !DILocation(line: 535, column: 32, scope: !2475)
!2478 = !DILocation(line: 535, column: 9, scope: !546)
!2479 = !DILocation(line: 536, column: 25, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2475, file: !392, line: 535, column: 39)
!2481 = !DILocation(line: 536, column: 9, scope: !2480)
!2482 = !DILocation(line: 538, column: 9, scope: !2480)
!2483 = !DILocation(line: 540, column: 16, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2475, file: !392, line: 540, column: 14)
!2485 = !DILocation(line: 540, column: 15, scope: !2484)
!2486 = !DILocation(line: 540, column: 37, scope: !2484)
!2487 = !DILocation(line: 540, column: 14, scope: !2475)
!2488 = !DILocation(line: 541, column: 25, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !392, line: 540, column: 44)
!2490 = !DILocation(line: 541, column: 9, scope: !2489)
!2491 = !DILocation(line: 543, column: 9, scope: !2489)
!2492 = !DILocation(line: 545, column: 12, scope: !546)
!2493 = !DILocation(line: 545, column: 5, scope: !546)
!2494 = !DILocation(line: 546, column: 1, scope: !546)
!2495 = !DILocation(line: 557, column: 30, scope: !570)
!2496 = !DILocation(line: 559, column: 5, scope: !570)
!2497 = !DILocation(line: 559, column: 16, scope: !570)
!2498 = !DILocation(line: 560, column: 17, scope: !570)
!2499 = !DILocation(line: 560, column: 20, scope: !570)
!2500 = !DILocation(line: 560, column: 25, scope: !570)
!2501 = !DILocation(line: 560, column: 16, scope: !570)
!2502 = !DILocation(line: 560, column: 9, scope: !570)
!2503 = !DILocation(line: 560, column: 14, scope: !570)
!2504 = !DILocation(line: 561, column: 17, scope: !570)
!2505 = !DILocation(line: 561, column: 20, scope: !570)
!2506 = !DILocation(line: 561, column: 25, scope: !570)
!2507 = !DILocation(line: 561, column: 16, scope: !570)
!2508 = !DILocation(line: 561, column: 9, scope: !570)
!2509 = !DILocation(line: 561, column: 14, scope: !570)
!2510 = !DILocation(line: 562, column: 12, scope: !570)
!2511 = !DILocation(line: 563, column: 1, scope: !570)
!2512 = !DILocation(line: 562, column: 5, scope: !570)
!2513 = !DILocation(line: 566, column: 30, scope: !574)
!2514 = !DILocation(line: 568, column: 24, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !574, file: !392, line: 568, column: 9)
!2516 = !DILocation(line: 568, column: 12, scope: !2515)
!2517 = !DILocation(line: 568, column: 29, scope: !2515)
!2518 = !DILocation(line: 568, column: 38, scope: !2515)
!2519 = !DILocation(line: 568, column: 9, scope: !574)
!2520 = !DILocation(line: 569, column: 25, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2515, file: !392, line: 568, column: 59)
!2522 = !DILocation(line: 569, column: 12, scope: !2521)
!2523 = !DILocation(line: 569, column: 30, scope: !2521)
!2524 = !DILocation(line: 569, column: 39, scope: !2521)
!2525 = !DILocation(line: 570, column: 28, scope: !2521)
!2526 = !DILocation(line: 570, column: 16, scope: !2521)
!2527 = !DILocation(line: 570, column: 9, scope: !2521)
!2528 = !DILocation(line: 573, column: 39, scope: !2515)
!2529 = !DILocation(line: 573, column: 42, scope: !2515)
!2530 = !DILocation(line: 573, column: 16, scope: !2515)
!2531 = !DILocation(line: 573, column: 9, scope: !2515)
!2532 = !DILocation(line: 574, column: 1, scope: !574)
!2533 = !DILocation(line: 577, column: 30, scope: !577)
!2534 = !DILocation(line: 579, column: 5, scope: !577)
!2535 = !DILocation(line: 579, column: 12, scope: !577)
!2536 = !DILocation(line: 582, column: 24, scope: !577)
!2537 = !DILocation(line: 582, column: 27, scope: !577)
!2538 = !DILocation(line: 582, column: 14, scope: !577)
!2539 = !DILocation(line: 582, column: 12, scope: !577)
!2540 = !DILocation(line: 585, column: 11, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !577, file: !392, line: 585, column: 9)
!2542 = !DILocation(line: 585, column: 10, scope: !2541)
!2543 = !DILocation(line: 585, column: 32, scope: !2541)
!2544 = !DILocation(line: 585, column: 9, scope: !577)
!2545 = !DILocation(line: 586, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !392, line: 585, column: 39)
!2547 = !DILocation(line: 586, column: 9, scope: !2546)
!2548 = !DILocation(line: 588, column: 9, scope: !2546)
!2549 = !DILocation(line: 590, column: 31, scope: !577)
!2550 = !DILocation(line: 590, column: 12, scope: !577)
!2551 = !DILocation(line: 590, column: 5, scope: !577)
!2552 = !DILocation(line: 591, column: 1, scope: !577)
!2553 = !DILocation(line: 594, column: 31, scope: !581)
!2554 = !DILocation(line: 596, column: 12, scope: !581)
!2555 = !DILocation(line: 596, column: 15, scope: !581)
!2556 = !DILocation(line: 596, column: 20, scope: !581)
!2557 = !DILocation(line: 596, column: 25, scope: !581)
!2558 = !DILocation(line: 596, column: 32, scope: !581)
!2559 = !DILocation(line: 596, column: 35, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !581, file: !392, discriminator: 2)
!2561 = !DILocation(line: 596, column: 38, scope: !581)
!2562 = !DILocation(line: 596, column: 43, scope: !581)
!2563 = !DILocation(line: 596, column: 48, scope: !581)
!2564 = !DILocation(line: 596, column: 32, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2566, file: !392, discriminator: 3)
!2566 = !DILexicalBlockFile(scope: !581, file: !392, discriminator: 1)
!2567 = !DILocation(line: 596, column: 5, scope: !581)
!2568 = !DILocation(line: 657, column: 23, scope: !586)
!2569 = !DILocation(line: 659, column: 21, scope: !586)
!2570 = !DILocation(line: 659, column: 5, scope: !586)
!2571 = !DILocation(line: 661, column: 5, scope: !586)
!2572 = !DILocation(line: 665, column: 25, scope: !589)
!2573 = !DILocation(line: 667, column: 21, scope: !589)
!2574 = !DILocation(line: 667, column: 5, scope: !589)
!2575 = !DILocation(line: 669, column: 5, scope: !589)
!2576 = !DILocation(line: 549, column: 27, scope: !592)
!2577 = !DILocation(line: 549, column: 40, scope: !592)
!2578 = !DILocation(line: 551, column: 21, scope: !592)
!2579 = !DILocation(line: 551, column: 5, scope: !592)
!2580 = !DILocation(line: 553, column: 5, scope: !592)
!2581 = !DILocation(line: 476, column: 23, scope: !596)
!2582 = !DILocation(line: 476, column: 36, scope: !596)
!2583 = !DILocation(line: 478, column: 5, scope: !596)
!2584 = !DILocation(line: 478, column: 16, scope: !596)
!2585 = !DILocation(line: 479, column: 5, scope: !596)
!2586 = !DILocation(line: 479, column: 16, scope: !596)
!2587 = !DILocation(line: 479, column: 19, scope: !596)
!2588 = !DILocation(line: 480, column: 24, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !596, file: !392, line: 480, column: 9)
!2590 = !DILocation(line: 480, column: 29, scope: !2589)
!2591 = !DILocation(line: 480, column: 38, scope: !2589)
!2592 = !DILocation(line: 480, column: 59, scope: !2589)
!2593 = !DILocation(line: 480, column: 93, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2589, file: !392, discriminator: 2)
!2595 = !DILocation(line: 480, column: 98, scope: !2589)
!2596 = !DILocation(line: 480, column: 62, scope: !2589)
!2597 = !DILocation(line: 480, column: 9, scope: !596)
!2598 = !DILocation(line: 480, column: 154, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2600, file: !392, discriminator: 3)
!2600 = !DILexicalBlockFile(scope: !2589, file: !392, discriminator: 1)
!2601 = !DILocation(line: 480, column: 134, scope: !2589)
!2602 = !DILocation(line: 480, column: 159, scope: !2589)
!2603 = !DILocation(line: 480, column: 129, scope: !2589)
!2604 = !DILocation(line: 480, column: 174, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !2606, file: !392, discriminator: 4)
!2606 = distinct !DILexicalBlock(scope: !2589, file: !392, line: 480, column: 174)
!2607 = !DILocation(line: 480, column: 197, scope: !2606)
!2608 = !DILocation(line: 480, column: 174, scope: !2589)
!2609 = !DILocation(line: 480, column: 210, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !2606, file: !392, discriminator: 5)
!2611 = !DILocation(line: 480, column: 202, scope: !2606)
!2612 = !DILocation(line: 481, column: 24, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !596, file: !392, line: 481, column: 9)
!2614 = !DILocation(line: 481, column: 29, scope: !2613)
!2615 = !DILocation(line: 481, column: 38, scope: !2613)
!2616 = !DILocation(line: 481, column: 59, scope: !2613)
!2617 = !DILocation(line: 481, column: 93, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2613, file: !392, discriminator: 2)
!2619 = !DILocation(line: 481, column: 98, scope: !2613)
!2620 = !DILocation(line: 481, column: 62, scope: !2613)
!2621 = !DILocation(line: 481, column: 9, scope: !596)
!2622 = !DILocation(line: 481, column: 154, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2624, file: !392, discriminator: 3)
!2624 = !DILexicalBlockFile(scope: !2613, file: !392, discriminator: 1)
!2625 = !DILocation(line: 481, column: 134, scope: !2613)
!2626 = !DILocation(line: 481, column: 159, scope: !2613)
!2627 = !DILocation(line: 481, column: 129, scope: !2613)
!2628 = !DILocation(line: 481, column: 174, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2630, file: !392, discriminator: 4)
!2630 = distinct !DILexicalBlock(scope: !2613, file: !392, line: 481, column: 174)
!2631 = !DILocation(line: 481, column: 197, scope: !2630)
!2632 = !DILocation(line: 481, column: 174, scope: !2613)
!2633 = !DILocation(line: 481, column: 210, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2630, file: !392, discriminator: 5)
!2635 = !DILocation(line: 481, column: 202, scope: !2630)
!2636 = !DILocation(line: 483, column: 7, scope: !596)
!2637 = !DILocation(line: 483, column: 28, scope: !596)
!2638 = !DILocation(line: 484, column: 12, scope: !596)
!2639 = !DILocation(line: 486, column: 11, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !596, file: !392, line: 486, column: 9)
!2641 = !DILocation(line: 486, column: 10, scope: !2640)
!2642 = !DILocation(line: 486, column: 32, scope: !2640)
!2643 = !DILocation(line: 486, column: 9, scope: !596)
!2644 = !DILocation(line: 487, column: 25, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !392, line: 486, column: 39)
!2646 = !DILocation(line: 487, column: 9, scope: !2645)
!2647 = !DILocation(line: 488, column: 9, scope: !2645)
!2648 = !DILocation(line: 490, column: 12, scope: !596)
!2649 = !DILocation(line: 490, column: 5, scope: !596)
!2650 = !DILocation(line: 491, column: 1, scope: !596)
!2651 = !DILocation(line: 413, column: 23, scope: !515)
!2652 = !DILocation(line: 413, column: 41, scope: !515)
!2653 = !DILocation(line: 415, column: 5, scope: !515)
!2654 = !DILocation(line: 415, column: 15, scope: !515)
!2655 = !DILocation(line: 415, column: 22, scope: !515)
!2656 = !DILocation(line: 415, column: 21, scope: !515)
!2657 = !DILocation(line: 417, column: 16, scope: !515)
!2658 = !DILocation(line: 417, column: 20, scope: !515)
!2659 = !DILocation(line: 417, column: 25, scope: !515)
!2660 = !DILocation(line: 417, column: 5, scope: !515)
!2661 = !DILocation(line: 417, column: 9, scope: !515)
!2662 = !DILocation(line: 417, column: 14, scope: !515)
!2663 = !DILocation(line: 418, column: 26, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !515, file: !392, line: 418, column: 9)
!2665 = !DILocation(line: 418, column: 33, scope: !2664)
!2666 = !DILocation(line: 418, column: 44, scope: !2664)
!2667 = !DILocation(line: 418, column: 53, scope: !2664)
!2668 = !DILocation(line: 418, column: 70, scope: !2664)
!2669 = !DILocation(line: 418, column: 9, scope: !515)
!2670 = !DILocation(line: 419, column: 36, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2664, file: !392, line: 418, column: 77)
!2672 = !DILocation(line: 419, column: 20, scope: !2671)
!2673 = !DILocation(line: 419, column: 9, scope: !2671)
!2674 = !DILocation(line: 419, column: 13, scope: !2671)
!2675 = !DILocation(line: 419, column: 18, scope: !2671)
!2676 = !DILocation(line: 420, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2671, file: !392, line: 420, column: 13)
!2678 = !DILocation(line: 420, column: 17, scope: !2677)
!2679 = !DILocation(line: 420, column: 22, scope: !2677)
!2680 = !DILocation(line: 420, column: 30, scope: !2677)
!2681 = !DILocation(line: 420, column: 33, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2677, file: !392, discriminator: 1)
!2683 = !DILocation(line: 420, column: 13, scope: !2671)
!2684 = !DILocation(line: 421, column: 14, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2677, file: !392, line: 420, column: 51)
!2686 = !DILocation(line: 421, column: 19, scope: !2685)
!2687 = !DILocation(line: 422, column: 13, scope: !2685)
!2688 = !DILocation(line: 424, column: 9, scope: !2671)
!2689 = !DILocation(line: 426, column: 24, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !515, file: !392, line: 426, column: 9)
!2691 = !DILocation(line: 426, column: 31, scope: !2690)
!2692 = !DILocation(line: 426, column: 40, scope: !2690)
!2693 = !DILocation(line: 426, column: 59, scope: !2690)
!2694 = !DILocation(line: 426, column: 93, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2690, file: !392, discriminator: 1)
!2696 = !DILocation(line: 426, column: 100, scope: !2690)
!2697 = !DILocation(line: 426, column: 62, scope: !2690)
!2698 = !DILocation(line: 426, column: 9, scope: !515)
!2699 = !DILocation(line: 427, column: 37, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2690, file: !392, line: 426, column: 129)
!2701 = !DILocation(line: 427, column: 20, scope: !2700)
!2702 = !DILocation(line: 427, column: 9, scope: !2700)
!2703 = !DILocation(line: 427, column: 13, scope: !2700)
!2704 = !DILocation(line: 427, column: 18, scope: !2700)
!2705 = !DILocation(line: 428, column: 9, scope: !2700)
!2706 = !DILocation(line: 430, column: 61, scope: !515)
!2707 = !DILocation(line: 431, column: 6, scope: !515)
!2708 = !DILocation(line: 431, column: 11, scope: !515)
!2709 = !DILocation(line: 432, column: 5, scope: !515)
!2710 = !DILocation(line: 433, column: 1, scope: !515)
!2711 = !DILocation(line: 152, column: 19, scope: !556)
!2712 = !DILocation(line: 152, column: 27, scope: !556)
!2713 = !DILocation(line: 154, column: 5, scope: !556)
!2714 = !DILocation(line: 154, column: 16, scope: !556)
!2715 = !DILocation(line: 156, column: 9, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !556, file: !392, line: 156, column: 9)
!2717 = !DILocation(line: 156, column: 11, scope: !2716)
!2718 = !DILocation(line: 156, column: 17, scope: !2716)
!2719 = !DILocation(line: 156, column: 20, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2716, file: !392, discriminator: 1)
!2721 = !DILocation(line: 156, column: 22, scope: !2716)
!2722 = !DILocation(line: 156, column: 9, scope: !556)
!2723 = !DILocation(line: 157, column: 28, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2716, file: !392, line: 156, column: 30)
!2725 = !DILocation(line: 157, column: 19, scope: !2724)
!2726 = !DILocation(line: 157, column: 12, scope: !2724)
!2727 = !DILocation(line: 157, column: 17, scope: !2724)
!2728 = !DILocation(line: 158, column: 12, scope: !2724)
!2729 = !DILocation(line: 158, column: 17, scope: !2724)
!2730 = !DILocation(line: 159, column: 16, scope: !2724)
!2731 = !DILocation(line: 159, column: 9, scope: !2724)
!2732 = !DILocation(line: 161, column: 14, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2716, file: !392, line: 161, column: 14)
!2734 = !DILocation(line: 161, column: 16, scope: !2733)
!2735 = !DILocation(line: 161, column: 14, scope: !2716)
!2736 = !DILocation(line: 162, column: 25, scope: !2733)
!2737 = !DILocation(line: 162, column: 16, scope: !2733)
!2738 = !DILocation(line: 162, column: 9, scope: !2733)
!2739 = !DILocation(line: 164, column: 41, scope: !2733)
!2740 = !DILocation(line: 164, column: 40, scope: !2733)
!2741 = !DILocation(line: 164, column: 31, scope: !2733)
!2742 = !DILocation(line: 164, column: 16, scope: !2733)
!2743 = !DILocation(line: 164, column: 9, scope: !2733)
!2744 = !DILocation(line: 166, column: 1, scope: !556)
!2745 = !DILocation(line: 136, column: 19, scope: !563)
!2746 = !DILocation(line: 136, column: 27, scope: !563)
!2747 = !DILocation(line: 138, column: 5, scope: !563)
!2748 = !DILocation(line: 138, column: 16, scope: !563)
!2749 = !DILocation(line: 138, column: 19, scope: !563)
!2750 = !DILocation(line: 139, column: 5, scope: !563)
!2751 = !DILocation(line: 139, column: 10, scope: !563)
!2752 = !DILocation(line: 140, column: 9, scope: !563)
!2753 = !DILocation(line: 141, column: 9, scope: !563)
!2754 = !DILocation(line: 142, column: 5, scope: !563)
!2755 = !DILocation(line: 142, column: 12, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !2757, file: !392, discriminator: 4)
!2757 = !DILexicalBlockFile(scope: !563, file: !392, discriminator: 1)
!2758 = !DILocation(line: 142, column: 17, scope: !563)
!2759 = !DILocation(line: 142, column: 21, scope: !563)
!2760 = !DILocation(line: 142, column: 24, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !563, file: !392, discriminator: 2)
!2762 = !DILocation(line: 142, column: 29, scope: !563)
!2763 = !DILocation(line: 142, column: 26, scope: !563)
!2764 = !DILocation(line: 142, column: 5, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !563, file: !392, discriminator: 3)
!2766 = !DILocation(line: 143, column: 13, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !392, line: 143, column: 13)
!2768 = distinct !DILexicalBlock(scope: !563, file: !392, line: 142, column: 35)
!2769 = !DILocation(line: 143, column: 17, scope: !2767)
!2770 = !DILocation(line: 143, column: 15, scope: !2767)
!2771 = !DILocation(line: 143, column: 13, scope: !2768)
!2772 = !DILocation(line: 144, column: 17, scope: !2767)
!2773 = !DILocation(line: 144, column: 13, scope: !2767)
!2774 = !DILocation(line: 145, column: 14, scope: !2768)
!2775 = !DILocation(line: 146, column: 13, scope: !2768)
!2776 = !DILocation(line: 148, column: 12, scope: !563)
!2777 = !DILocation(line: 149, column: 1, scope: !563)
!2778 = !DILocation(line: 673, column: 29, scope: !631)
!2779 = !DILocation(line: 675, column: 5, scope: !631)
!2780 = !DILocation(line: 675, column: 16, scope: !631)
!2781 = !DILocation(line: 676, column: 29, scope: !631)
!2782 = !DILocation(line: 676, column: 10, scope: !631)
!2783 = !DILocation(line: 676, column: 36, scope: !631)
!2784 = !DILocation(line: 677, column: 17, scope: !631)
!2785 = !DILocation(line: 677, column: 14, scope: !631)
!2786 = !DILocation(line: 677, column: 7, scope: !631)
!2787 = !DILocation(line: 677, column: 12, scope: !631)
!2788 = !DILocation(line: 678, column: 12, scope: !631)
!2789 = !DILocation(line: 679, column: 1, scope: !631)
!2790 = !DILocation(line: 678, column: 5, scope: !631)
!2791 = !DILocation(line: 687, column: 37, scope: !635)
!2792 = !DILocation(line: 689, column: 5, scope: !635)
!2793 = !DILocation(line: 689, column: 16, scope: !635)
!2794 = !DILocation(line: 689, column: 20, scope: !635)
!2795 = !DILocation(line: 689, column: 23, scope: !635)
!2796 = !DILocation(line: 690, column: 36, scope: !635)
!2797 = !DILocation(line: 690, column: 44, scope: !635)
!2798 = !DILocation(line: 690, column: 12, scope: !635)
!2799 = !DILocation(line: 691, column: 1, scope: !635)
!2800 = !DILocation(line: 690, column: 5, scope: !635)
!2801 = !DILocation(line: 699, column: 29, scope: !639)
!2802 = !DILocation(line: 699, column: 45, scope: !639)
!2803 = !DILocation(line: 701, column: 5, scope: !639)
!2804 = !DILocation(line: 701, column: 15, scope: !639)
!2805 = !DILocation(line: 702, column: 5, scope: !639)
!2806 = !DILocation(line: 702, column: 22, scope: !639)
!2807 = !DILocation(line: 703, column: 5, scope: !639)
!2808 = !DILocation(line: 703, column: 9, scope: !639)
!2809 = !DILocation(line: 705, column: 27, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !639, file: !392, line: 705, column: 9)
!2811 = !DILocation(line: 705, column: 10, scope: !2810)
!2812 = !DILocation(line: 705, column: 9, scope: !639)
!2813 = !DILocation(line: 706, column: 9, scope: !2810)
!2814 = !DILocation(line: 708, column: 5, scope: !639)
!2815 = !DILocation(line: 711, column: 9, scope: !639)
!2816 = !DILocation(line: 712, column: 9, scope: !639)
!2817 = !DILocation(line: 712, column: 73, scope: !639)
!2818 = !DILocation(line: 712, column: 55, scope: !639)
!2819 = !DILocation(line: 712, column: 88, scope: !639)
!2820 = !{!2821, !1205, i64 16}
!2821 = !{!"", !1204, i64 0, !1205, i64 16, !1205, i64 24, !2822, i64 32, !1192, i64 40}
!2822 = !{!"", !901, i64 0, !901, i64 0, !901, i64 0, !901, i64 0, !901, i64 0, !901, i64 1}
!2823 = !DILocation(line: 709, column: 11, scope: !639)
!2824 = !DILocation(line: 709, column: 9, scope: !639)
!2825 = !DILocation(line: 713, column: 9, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !639, file: !392, line: 713, column: 9)
!2827 = !DILocation(line: 713, column: 13, scope: !2826)
!2828 = !DILocation(line: 713, column: 9, scope: !639)
!2829 = !DILocation(line: 714, column: 9, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2826, file: !392, line: 713, column: 20)
!2831 = !DILocation(line: 715, column: 9, scope: !2830)
!2832 = !DILocation(line: 717, column: 12, scope: !639)
!2833 = !DILocation(line: 717, column: 5, scope: !639)
!2834 = !DILocation(line: 718, column: 1, scope: !639)
!2835 = !DILocation(line: 758, column: 43, scope: !707)
!2836 = !DILocation(line: 758, column: 59, scope: !707)
!2837 = !DILocation(line: 760, column: 5, scope: !707)
!2838 = !DILocation(line: 760, column: 17, scope: !707)
!2839 = !DILocation(line: 760, column: 21, scope: !707)
!2840 = !DILocation(line: 761, column: 5, scope: !707)
!2841 = !DILocation(line: 761, column: 11, scope: !707)
!2842 = !DILocation(line: 762, column: 5, scope: !707)
!2843 = !DILocation(line: 762, column: 12, scope: !707)
!2844 = !DILocation(line: 762, column: 19, scope: !707)
!2845 = !DILocation(line: 762, column: 26, scope: !707)
!2846 = !DILocation(line: 763, column: 5, scope: !707)
!2847 = !DILocation(line: 763, column: 9, scope: !707)
!2848 = !DILocation(line: 764, column: 5, scope: !707)
!2849 = !DILocation(line: 764, column: 15, scope: !707)
!2850 = !DILocation(line: 765, column: 5, scope: !707)
!2851 = !DILocation(line: 765, column: 16, scope: !707)
!2852 = !DILocation(line: 767, column: 26, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !707, file: !392, line: 767, column: 9)
!2854 = !DILocation(line: 767, column: 31, scope: !2853)
!2855 = !DILocation(line: 767, column: 42, scope: !2853)
!2856 = !DILocation(line: 767, column: 51, scope: !2853)
!2857 = !DILocation(line: 767, column: 68, scope: !2853)
!2858 = !DILocation(line: 767, column: 9, scope: !707)
!2859 = !DILocation(line: 768, column: 63, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2853, file: !392, line: 767, column: 75)
!2861 = !DILocation(line: 768, column: 20, scope: !2860)
!2862 = !DILocation(line: 768, column: 18, scope: !2860)
!2863 = !DILocation(line: 769, column: 13, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !392, line: 769, column: 13)
!2865 = !DILocation(line: 769, column: 22, scope: !2864)
!2866 = !DILocation(line: 769, column: 13, scope: !2860)
!2867 = !DILocation(line: 770, column: 13, scope: !2864)
!2868 = !DILocation(line: 771, column: 37, scope: !2860)
!2869 = !DILocation(line: 771, column: 13, scope: !2860)
!2870 = !DILocation(line: 771, column: 11, scope: !2860)
!2871 = !DILocation(line: 772, column: 13, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2860, file: !392, line: 772, column: 13)
!2873 = !DILocation(line: 772, column: 15, scope: !2872)
!2874 = !DILocation(line: 772, column: 13, scope: !2860)
!2875 = !DILocation(line: 773, column: 13, scope: !2872)
!2876 = !DILocation(line: 774, column: 5, scope: !2860)
!2877 = !DILocation(line: 775, column: 36, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2853, file: !392, line: 775, column: 14)
!2879 = !DILocation(line: 775, column: 14, scope: !2878)
!2880 = !DILocation(line: 775, column: 14, scope: !2853)
!2881 = !DILocation(line: 776, column: 22, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !392, line: 775, column: 50)
!2883 = !DILocation(line: 778, column: 27, scope: !2882)
!2884 = !DILocation(line: 778, column: 32, scope: !2882)
!2885 = !DILocation(line: 778, column: 42, scope: !2882)
!2886 = !DILocation(line: 776, column: 9, scope: !2882)
!2887 = !DILocation(line: 779, column: 9, scope: !2882)
!2888 = !DILocation(line: 783, column: 13, scope: !707)
!2889 = !DILocation(line: 783, column: 11, scope: !707)
!2890 = !DILocation(line: 784, column: 5, scope: !707)
!2891 = !DILocation(line: 784, column: 48, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2893, file: !392, discriminator: 2)
!2893 = !DILexicalBlockFile(scope: !707, file: !392, discriminator: 1)
!2894 = !DILocation(line: 784, column: 47, scope: !707)
!2895 = !DILocation(line: 784, column: 46, scope: !707)
!2896 = !DILocation(line: 784, column: 51, scope: !707)
!2897 = !DILocation(line: 784, column: 30, scope: !707)
!2898 = !DILocation(line: 784, column: 13, scope: !707)
!2899 = !DILocation(line: 784, column: 61, scope: !707)
!2900 = !DILocation(line: 785, column: 10, scope: !707)
!2901 = !DILocation(line: 786, column: 10, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !707, file: !392, line: 786, column: 9)
!2903 = !DILocation(line: 786, column: 9, scope: !2902)
!2904 = !DILocation(line: 786, column: 12, scope: !2902)
!2905 = !DILocation(line: 786, column: 9, scope: !707)
!2906 = !DILocation(line: 788, column: 21, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !392, line: 786, column: 20)
!2908 = !DILocation(line: 789, column: 10, scope: !2907)
!2909 = !DILocation(line: 790, column: 9, scope: !2907)
!2910 = !DILocation(line: 790, column: 52, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2912, file: !392, discriminator: 2)
!2912 = !DILexicalBlockFile(scope: !2907, file: !392, discriminator: 1)
!2913 = !DILocation(line: 790, column: 51, scope: !2907)
!2914 = !DILocation(line: 790, column: 50, scope: !2907)
!2915 = !DILocation(line: 790, column: 55, scope: !2907)
!2916 = !DILocation(line: 790, column: 34, scope: !2907)
!2917 = !DILocation(line: 790, column: 17, scope: !2907)
!2918 = !DILocation(line: 790, column: 65, scope: !2907)
!2919 = !DILocation(line: 791, column: 14, scope: !2907)
!2920 = !DILocation(line: 792, column: 5, scope: !2907)
!2921 = !DILocation(line: 816, column: 31, scope: !707)
!2922 = !DILocation(line: 816, column: 9, scope: !707)
!2923 = !DILocation(line: 816, column: 7, scope: !707)
!2924 = !DILocation(line: 817, column: 9, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !707, file: !392, line: 817, column: 9)
!2926 = !DILocation(line: 817, column: 11, scope: !2925)
!2927 = !DILocation(line: 817, column: 19, scope: !2925)
!2928 = !DILocation(line: 817, column: 22, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !2925, file: !392, discriminator: 1)
!2930 = !DILocation(line: 817, column: 9, scope: !707)
!2931 = !DILocation(line: 818, column: 36, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !392, line: 818, column: 13)
!2933 = distinct !DILexicalBlock(scope: !2925, file: !392, line: 817, column: 40)
!2934 = !DILocation(line: 818, column: 13, scope: !2932)
!2935 = !DILocation(line: 818, column: 13, scope: !2933)
!2936 = !DILocation(line: 819, column: 13, scope: !2932)
!2937 = !DILocation(line: 821, column: 13, scope: !2932)
!2938 = !DILocation(line: 822, column: 5, scope: !2933)
!2939 = !DILocation(line: 823, column: 9, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !707, file: !392, line: 823, column: 9)
!2941 = !DILocation(line: 823, column: 16, scope: !2940)
!2942 = !DILocation(line: 823, column: 13, scope: !2940)
!2943 = !DILocation(line: 823, column: 9, scope: !707)
!2944 = !DILocation(line: 825, column: 13, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !392, line: 823, column: 19)
!2946 = !DILocation(line: 825, column: 11, scope: !2945)
!2947 = !DILocation(line: 826, column: 14, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2945, file: !392, line: 826, column: 13)
!2949 = !DILocation(line: 826, column: 13, scope: !2948)
!2950 = !DILocation(line: 826, column: 16, scope: !2948)
!2951 = !DILocation(line: 826, column: 23, scope: !2948)
!2952 = !DILocation(line: 826, column: 27, scope: !2953)
!2953 = !DILexicalBlockFile(scope: !2948, file: !392, discriminator: 1)
!2954 = !DILocation(line: 826, column: 26, scope: !2948)
!2955 = !DILocation(line: 826, column: 29, scope: !2948)
!2956 = !DILocation(line: 826, column: 13, scope: !2945)
!2957 = !DILocation(line: 828, column: 17, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2948, file: !392, line: 826, column: 37)
!2959 = !DILocation(line: 828, column: 15, scope: !2958)
!2960 = !DILocation(line: 829, column: 39, scope: !2958)
!2961 = !DILocation(line: 829, column: 17, scope: !2958)
!2962 = !DILocation(line: 829, column: 15, scope: !2958)
!2963 = !DILocation(line: 830, column: 17, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2958, file: !392, line: 830, column: 17)
!2965 = !DILocation(line: 830, column: 19, scope: !2964)
!2966 = !DILocation(line: 830, column: 27, scope: !2964)
!2967 = !DILocation(line: 830, column: 30, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2964, file: !392, discriminator: 1)
!2969 = !DILocation(line: 830, column: 17, scope: !2958)
!2970 = !DILocation(line: 831, column: 44, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !392, line: 831, column: 21)
!2972 = distinct !DILexicalBlock(scope: !2964, file: !392, line: 830, column: 48)
!2973 = !DILocation(line: 831, column: 21, scope: !2971)
!2974 = !DILocation(line: 831, column: 21, scope: !2972)
!2975 = !DILocation(line: 832, column: 21, scope: !2971)
!2976 = !DILocation(line: 834, column: 21, scope: !2971)
!2977 = !DILocation(line: 835, column: 13, scope: !2972)
!2978 = !DILocation(line: 836, column: 17, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2958, file: !392, line: 836, column: 17)
!2980 = !DILocation(line: 836, column: 24, scope: !2979)
!2981 = !DILocation(line: 836, column: 21, scope: !2979)
!2982 = !DILocation(line: 836, column: 17, scope: !2958)
!2983 = !DILocation(line: 838, column: 21, scope: !2979)
!2984 = !DILocation(line: 838, column: 19, scope: !2979)
!2985 = !DILocation(line: 838, column: 17, scope: !2979)
!2986 = !DILocation(line: 841, column: 22, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2979, file: !392, line: 839, column: 18)
!2988 = !DILocation(line: 841, column: 21, scope: !2987)
!2989 = !DILocation(line: 841, column: 24, scope: !2987)
!2990 = !DILocation(line: 841, column: 19, scope: !2987)
!2991 = !DILocation(line: 842, column: 18, scope: !2987)
!2992 = !DILocation(line: 844, column: 20, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2958, file: !392, line: 844, column: 17)
!2994 = !DILocation(line: 844, column: 19, scope: !2993)
!2995 = !DILocation(line: 844, column: 22, scope: !2993)
!2996 = !DILocation(line: 844, column: 29, scope: !2993)
!2997 = !DILocation(line: 844, column: 33, scope: !2998)
!2998 = !DILexicalBlockFile(scope: !2993, file: !392, discriminator: 1)
!2999 = !DILocation(line: 844, column: 32, scope: !2993)
!3000 = !DILocation(line: 844, column: 35, scope: !2993)
!3001 = !DILocation(line: 844, column: 17, scope: !2958)
!3002 = !DILocation(line: 845, column: 17, scope: !2993)
!3003 = !DILocation(line: 846, column: 14, scope: !2958)
!3004 = !DILocation(line: 847, column: 9, scope: !2958)
!3005 = !DILocation(line: 848, column: 19, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2948, file: !392, line: 848, column: 18)
!3007 = !DILocation(line: 848, column: 18, scope: !3006)
!3008 = !DILocation(line: 848, column: 21, scope: !3006)
!3009 = !DILocation(line: 848, column: 28, scope: !3006)
!3010 = !DILocation(line: 848, column: 32, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !3006, file: !392, discriminator: 1)
!3012 = !DILocation(line: 848, column: 31, scope: !3006)
!3013 = !DILocation(line: 848, column: 34, scope: !3006)
!3014 = !DILocation(line: 848, column: 18, scope: !2948)
!3015 = !DILocation(line: 850, column: 14, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3006, file: !392, line: 848, column: 42)
!3017 = !DILocation(line: 851, column: 17, scope: !3016)
!3018 = !DILocation(line: 851, column: 15, scope: !3016)
!3019 = !DILocation(line: 852, column: 9, scope: !3016)
!3020 = !DILocation(line: 855, column: 17, scope: !3006)
!3021 = !DILocation(line: 855, column: 15, scope: !3006)
!3022 = !DILocation(line: 856, column: 5, scope: !2945)
!3023 = !DILocation(line: 859, column: 14, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !392, line: 859, column: 13)
!3025 = distinct !DILexicalBlock(scope: !2940, file: !392, line: 857, column: 10)
!3026 = !DILocation(line: 859, column: 13, scope: !3024)
!3027 = !DILocation(line: 859, column: 16, scope: !3024)
!3028 = !DILocation(line: 859, column: 23, scope: !3024)
!3029 = !DILocation(line: 859, column: 27, scope: !3030)
!3030 = !DILexicalBlockFile(scope: !3024, file: !392, discriminator: 1)
!3031 = !DILocation(line: 859, column: 26, scope: !3024)
!3032 = !DILocation(line: 859, column: 29, scope: !3024)
!3033 = !DILocation(line: 859, column: 13, scope: !3025)
!3034 = !DILocation(line: 861, column: 18, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3024, file: !392, line: 859, column: 37)
!3036 = !DILocation(line: 861, column: 17, scope: !3035)
!3037 = !DILocation(line: 861, column: 20, scope: !3035)
!3038 = !DILocation(line: 861, column: 15, scope: !3035)
!3039 = !DILocation(line: 862, column: 14, scope: !3035)
!3040 = !DILocation(line: 863, column: 9, scope: !3035)
!3041 = !DILocation(line: 866, column: 15, scope: !3024)
!3042 = !DILocation(line: 867, column: 16, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3025, file: !392, line: 867, column: 13)
!3044 = !DILocation(line: 867, column: 15, scope: !3043)
!3045 = !DILocation(line: 867, column: 18, scope: !3043)
!3046 = !DILocation(line: 867, column: 25, scope: !3043)
!3047 = !DILocation(line: 867, column: 29, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !3043, file: !392, discriminator: 1)
!3049 = !DILocation(line: 867, column: 28, scope: !3043)
!3050 = !DILocation(line: 867, column: 31, scope: !3043)
!3051 = !DILocation(line: 867, column: 13, scope: !3025)
!3052 = !DILocation(line: 868, column: 13, scope: !3043)
!3053 = !DILocation(line: 869, column: 10, scope: !3025)
!3054 = !DILocation(line: 873, column: 5, scope: !707)
!3055 = !DILocation(line: 873, column: 48, scope: !2892)
!3056 = !DILocation(line: 873, column: 47, scope: !707)
!3057 = !DILocation(line: 873, column: 46, scope: !707)
!3058 = !DILocation(line: 873, column: 51, scope: !707)
!3059 = !DILocation(line: 873, column: 30, scope: !707)
!3060 = !DILocation(line: 873, column: 13, scope: !707)
!3061 = !DILocation(line: 873, column: 61, scope: !707)
!3062 = !DILocation(line: 874, column: 10, scope: !707)
!3063 = !DILocation(line: 875, column: 9, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !707, file: !392, line: 875, column: 9)
!3065 = !DILocation(line: 875, column: 9, scope: !707)
!3066 = !DILocation(line: 878, column: 14, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !392, line: 878, column: 13)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !392, line: 875, column: 22)
!3069 = !DILocation(line: 878, column: 13, scope: !3067)
!3070 = !DILocation(line: 878, column: 16, scope: !3067)
!3071 = !DILocation(line: 878, column: 13, scope: !3068)
!3072 = !DILocation(line: 879, column: 13, scope: !3067)
!3073 = !DILocation(line: 880, column: 10, scope: !3068)
!3074 = !DILocation(line: 881, column: 9, scope: !3068)
!3075 = !DILocation(line: 881, column: 52, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !3077, file: !392, discriminator: 2)
!3077 = !DILexicalBlockFile(scope: !3068, file: !392, discriminator: 1)
!3078 = !DILocation(line: 881, column: 51, scope: !3068)
!3079 = !DILocation(line: 881, column: 50, scope: !3068)
!3080 = !DILocation(line: 881, column: 55, scope: !3068)
!3081 = !DILocation(line: 881, column: 34, scope: !3068)
!3082 = !DILocation(line: 881, column: 17, scope: !3068)
!3083 = !DILocation(line: 881, column: 65, scope: !3068)
!3084 = !DILocation(line: 882, column: 14, scope: !3068)
!3085 = !DILocation(line: 883, column: 5, scope: !3068)
!3086 = !DILocation(line: 886, column: 9, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !707, file: !392, line: 886, column: 9)
!3088 = !DILocation(line: 886, column: 11, scope: !3087)
!3089 = !DILocation(line: 886, column: 10, scope: !3087)
!3090 = !DILocation(line: 886, column: 20, scope: !3087)
!3091 = !DILocation(line: 886, column: 17, scope: !3087)
!3092 = !DILocation(line: 886, column: 9, scope: !707)
!3093 = !DILocation(line: 887, column: 9, scope: !3087)
!3094 = !DILocation(line: 889, column: 5, scope: !707)
!3095 = !DILocation(line: 889, column: 10, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !723, file: !392, discriminator: 1)
!3097 = !DILocation(line: 889, column: 20, scope: !723)
!3098 = !DILocation(line: 889, column: 51, scope: !723)
!3099 = !DILocation(line: 889, column: 66, scope: !726)
!3100 = !DILocation(line: 889, column: 82, scope: !726)
!3101 = !DILocation(line: 889, column: 66, scope: !723)
!3102 = !DILocation(line: 889, column: 97, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !726, file: !392, discriminator: 2)
!3104 = !DILocation(line: 889, column: 102, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !725, file: !392, discriminator: 4)
!3106 = !DILocation(line: 889, column: 112, scope: !725)
!3107 = !DILocation(line: 889, column: 142, scope: !725)
!3108 = !DILocation(line: 889, column: 168, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !725, file: !392, line: 889, column: 165)
!3110 = !DILocation(line: 889, column: 185, scope: !3109)
!3111 = !DILocation(line: 889, column: 165, scope: !3109)
!3112 = !DILocation(line: 889, column: 195, scope: !3109)
!3113 = !DILocation(line: 889, column: 165, scope: !725)
!3114 = !DILocation(line: 889, column: 165, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !725, file: !392, discriminator: 5)
!3116 = !DILocation(line: 889, column: 226, scope: !3117)
!3117 = !DILexicalBlockFile(scope: !3109, file: !392, discriminator: 6)
!3118 = !DILocation(line: 889, column: 244, scope: !3109)
!3119 = !DILocation(line: 889, column: 254, scope: !3109)
!3120 = !DILocation(line: 889, column: 279, scope: !3109)
!3121 = !DILocation(line: 889, column: 210, scope: !3109)
!3122 = !DILocation(line: 889, column: 298, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !726, file: !392, discriminator: 7)
!3124 = !DILocation(line: 889, column: 298, scope: !725)
!3125 = !DILocation(line: 889, column: 298, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !725, file: !392, discriminator: 8)
!3127 = !DILocation(line: 889, column: 298, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !725, file: !392, discriminator: 9)
!3129 = !DILocation(line: 889, column: 311, scope: !3130)
!3130 = !DILexicalBlockFile(scope: !3131, file: !392, discriminator: 10)
!3131 = !DILexicalBlockFile(scope: !707, file: !392, discriminator: 3)
!3132 = !DILocation(line: 889, column: 311, scope: !723)
!3133 = !DILocation(line: 889, column: 311, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !723, file: !392, discriminator: 11)
!3135 = !DILocation(line: 890, column: 41, scope: !707)
!3136 = !DILocation(line: 890, column: 47, scope: !707)
!3137 = !DILocation(line: 890, column: 50, scope: !707)
!3138 = !DILocation(line: 890, column: 12, scope: !707)
!3139 = !DILocation(line: 890, column: 5, scope: !707)
!3140 = !DILocation(line: 893, column: 21, scope: !707)
!3141 = !DILocation(line: 893, column: 5, scope: !707)
!3142 = !DILocation(line: 896, column: 5, scope: !707)
!3143 = !DILocation(line: 896, column: 10, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !728, file: !392, discriminator: 1)
!3145 = !DILocation(line: 896, column: 20, scope: !728)
!3146 = !DILocation(line: 896, column: 51, scope: !728)
!3147 = !DILocation(line: 896, column: 66, scope: !731)
!3148 = !DILocation(line: 896, column: 82, scope: !731)
!3149 = !DILocation(line: 896, column: 66, scope: !728)
!3150 = !DILocation(line: 896, column: 97, scope: !3151)
!3151 = !DILexicalBlockFile(scope: !731, file: !392, discriminator: 2)
!3152 = !DILocation(line: 896, column: 102, scope: !3153)
!3153 = !DILexicalBlockFile(scope: !730, file: !392, discriminator: 4)
!3154 = !DILocation(line: 896, column: 112, scope: !730)
!3155 = !DILocation(line: 896, column: 142, scope: !730)
!3156 = !DILocation(line: 896, column: 168, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !730, file: !392, line: 896, column: 165)
!3158 = !DILocation(line: 896, column: 185, scope: !3157)
!3159 = !DILocation(line: 896, column: 165, scope: !3157)
!3160 = !DILocation(line: 896, column: 195, scope: !3157)
!3161 = !DILocation(line: 896, column: 165, scope: !730)
!3162 = !DILocation(line: 896, column: 165, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !730, file: !392, discriminator: 5)
!3164 = !DILocation(line: 896, column: 226, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3157, file: !392, discriminator: 6)
!3166 = !DILocation(line: 896, column: 244, scope: !3157)
!3167 = !DILocation(line: 896, column: 254, scope: !3157)
!3168 = !DILocation(line: 896, column: 279, scope: !3157)
!3169 = !DILocation(line: 896, column: 210, scope: !3157)
!3170 = !DILocation(line: 896, column: 298, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !731, file: !392, discriminator: 7)
!3172 = !DILocation(line: 896, column: 298, scope: !730)
!3173 = !DILocation(line: 896, column: 298, scope: !3174)
!3174 = !DILexicalBlockFile(scope: !730, file: !392, discriminator: 8)
!3175 = !DILocation(line: 896, column: 298, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !730, file: !392, discriminator: 9)
!3177 = !DILocation(line: 896, column: 311, scope: !3130)
!3178 = !DILocation(line: 896, column: 311, scope: !728)
!3179 = !DILocation(line: 896, column: 311, scope: !3180)
!3180 = !DILexicalBlockFile(scope: !728, file: !392, discriminator: 11)
!3181 = !DILocation(line: 897, column: 5, scope: !707)
!3182 = !DILocation(line: 898, column: 1, scope: !707)
!3183 = !DILocation(line: 226, column: 44, scope: !732)
!3184 = !DILocation(line: 226, column: 57, scope: !732)
!3185 = !DILocation(line: 226, column: 70, scope: !732)
!3186 = !DILocation(line: 228, column: 5, scope: !732)
!3187 = !DILocation(line: 228, column: 16, scope: !732)
!3188 = !DILocation(line: 229, column: 14, scope: !732)
!3189 = !DILocation(line: 229, column: 7, scope: !732)
!3190 = !DILocation(line: 229, column: 12, scope: !732)
!3191 = !DILocation(line: 230, column: 14, scope: !732)
!3192 = !DILocation(line: 230, column: 7, scope: !732)
!3193 = !DILocation(line: 230, column: 12, scope: !732)
!3194 = !DILocation(line: 231, column: 43, scope: !732)
!3195 = !DILocation(line: 231, column: 12, scope: !732)
!3196 = !DILocation(line: 232, column: 1, scope: !732)
!3197 = !DILocation(line: 231, column: 5, scope: !732)
!3198 = !DILocation(line: 201, column: 46, scope: !740)
!3199 = !DILocation(line: 201, column: 63, scope: !740)
!3200 = !DILocation(line: 203, column: 5, scope: !740)
!3201 = !DILocation(line: 203, column: 15, scope: !740)
!3202 = !DILocation(line: 205, column: 10, scope: !740)
!3203 = !DILocation(line: 205, column: 16, scope: !740)
!3204 = !{!1327, !1192, i64 304}
!3205 = !DILocation(line: 205, column: 25, scope: !740)
!3206 = !DILocation(line: 205, column: 8, scope: !740)
!3207 = !DILocation(line: 206, column: 9, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !740, file: !392, line: 206, column: 9)
!3209 = !DILocation(line: 206, column: 12, scope: !3208)
!3210 = !DILocation(line: 206, column: 9, scope: !740)
!3211 = !DILocation(line: 207, column: 29, scope: !3208)
!3212 = !DILocation(line: 207, column: 10, scope: !3208)
!3213 = !DILocation(line: 207, column: 34, scope: !3208)
!3214 = !DILocation(line: 207, column: 41, scope: !3208)
!3215 = !DILocation(line: 207, column: 9, scope: !3208)
!3216 = !DILocation(line: 208, column: 12, scope: !740)
!3217 = !DILocation(line: 209, column: 1, scope: !740)
!3218 = !DILocation(line: 208, column: 5, scope: !740)
