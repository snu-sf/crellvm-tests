; ModuleID = 'complexobject.o.bc'
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
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.Py_complex = type { double, double }
%struct.PyComplexObject = type { %struct._object, %struct.Py_complex }
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }

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

; Function Attrs: nounwind readnone uwtable
define { double, double } @_Py_c_sum(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !395, metadata !785), !dbg !786
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !395, metadata !787), !dbg !786
  tail call void @llvm.dbg.value(metadata double %b.coerce0, i64 0, metadata !396, metadata !785), !dbg !788
  tail call void @llvm.dbg.value(metadata double %b.coerce1, i64 0, metadata !396, metadata !787), !dbg !788
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !395, metadata !789), !dbg !786
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !396, metadata !789), !dbg !788
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !397, metadata !789), !dbg !790
  %add = fadd double %a.coerce0, %b.coerce0, !dbg !791
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !397, metadata !785), !dbg !790
  %add4 = fadd double %a.coerce1, %b.coerce1, !dbg !792
  tail call void @llvm.dbg.value(metadata double %add4, i64 0, metadata !397, metadata !787), !dbg !790
  %.fca.0.insert = insertvalue { double, double } undef, double %add, 0, !dbg !793
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %add4, 1, !dbg !793
  ret { double, double } %.fca.1.insert, !dbg !793
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone uwtable
define { double, double } @_Py_c_diff(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !400, metadata !785), !dbg !794
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !400, metadata !787), !dbg !794
  tail call void @llvm.dbg.value(metadata double %b.coerce0, i64 0, metadata !401, metadata !785), !dbg !795
  tail call void @llvm.dbg.value(metadata double %b.coerce1, i64 0, metadata !401, metadata !787), !dbg !795
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !400, metadata !789), !dbg !794
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !401, metadata !789), !dbg !795
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !402, metadata !789), !dbg !796
  %sub = fsub double %a.coerce0, %b.coerce0, !dbg !797
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !402, metadata !785), !dbg !796
  %sub4 = fsub double %a.coerce1, %b.coerce1, !dbg !798
  tail call void @llvm.dbg.value(metadata double %sub4, i64 0, metadata !402, metadata !787), !dbg !796
  %.fca.0.insert = insertvalue { double, double } undef, double %sub, 0, !dbg !799
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %sub4, 1, !dbg !799
  ret { double, double } %.fca.1.insert, !dbg !799
}

; Function Attrs: nounwind readnone uwtable
define { double, double } @_Py_c_neg(double %a.coerce0, double %a.coerce1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !407, metadata !785), !dbg !800
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !407, metadata !787), !dbg !800
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !407, metadata !789), !dbg !800
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !408, metadata !789), !dbg !801
  %sub = fsub double -0.000000e+00, %a.coerce0, !dbg !802
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !408, metadata !785), !dbg !801
  %sub2 = fsub double -0.000000e+00, %a.coerce1, !dbg !803
  tail call void @llvm.dbg.value(metadata double %sub2, i64 0, metadata !408, metadata !787), !dbg !801
  %.fca.0.insert = insertvalue { double, double } undef, double %sub, 0, !dbg !804
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %sub2, 1, !dbg !804
  ret { double, double } %.fca.1.insert, !dbg !804
}

; Function Attrs: nounwind readnone uwtable
define { double, double } @_Py_c_prod(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !411, metadata !785), !dbg !805
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !411, metadata !787), !dbg !805
  tail call void @llvm.dbg.value(metadata double %b.coerce0, i64 0, metadata !412, metadata !785), !dbg !806
  tail call void @llvm.dbg.value(metadata double %b.coerce1, i64 0, metadata !412, metadata !787), !dbg !806
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !411, metadata !789), !dbg !805
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !412, metadata !789), !dbg !806
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !413, metadata !789), !dbg !807
  %mul = fmul double %a.coerce0, %b.coerce0, !dbg !808
  %mul3 = fmul double %a.coerce1, %b.coerce1, !dbg !809
  %sub = fsub double %mul, %mul3, !dbg !810
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !413, metadata !785), !dbg !807
  %mul7 = fmul double %a.coerce0, %b.coerce1, !dbg !811
  %mul10 = fmul double %a.coerce1, %b.coerce0, !dbg !812
  %add = fadd double %mul10, %mul7, !dbg !813
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !413, metadata !787), !dbg !807
  %.fca.0.insert = insertvalue { double, double } undef, double %sub, 0, !dbg !814
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %add, 1, !dbg !814
  ret { double, double } %.fca.1.insert, !dbg !814
}

; Function Attrs: nounwind uwtable
define { double, double } @_Py_c_quot(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #3 {
entry:
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !416, metadata !785), !dbg !815
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !416, metadata !787), !dbg !815
  tail call void @llvm.dbg.value(metadata double %b.coerce0, i64 0, metadata !417, metadata !785), !dbg !816
  tail call void @llvm.dbg.value(metadata double %b.coerce1, i64 0, metadata !417, metadata !787), !dbg !816
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !416, metadata !789), !dbg !815
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !417, metadata !789), !dbg !816
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !418, metadata !789), !dbg !817
  %cmp = fcmp olt double %b.coerce0, 0.000000e+00, !dbg !818
  %sub = fsub double -0.000000e+00, %b.coerce0, !dbg !819
  %cond = select i1 %cmp, double %sub, double %b.coerce0, !dbg !820
  tail call void @llvm.dbg.value(metadata double %cond, i64 0, metadata !419, metadata !789), !dbg !821
  %cmp3 = fcmp olt double %b.coerce1, 0.000000e+00, !dbg !822
  %sub6 = fsub double -0.000000e+00, %b.coerce1, !dbg !823
  %cond10 = select i1 %cmp3, double %sub6, double %b.coerce1, !dbg !824
  tail call void @llvm.dbg.value(metadata double %cond10, i64 0, metadata !421, metadata !789), !dbg !825
  %cmp11 = fcmp ult double %cond, %cond10, !dbg !826
  br i1 %cmp11, label %if.else.32, label %if.then, !dbg !827

if.then:                                          ; preds = %entry
  %cmp12 = fcmp oeq double %cond, 0.000000e+00, !dbg !828
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !829

if.then.13:                                       ; preds = %if.then
  %call = tail call i32* @__errno_location() #1, !dbg !830
  store i32 33, i32* %call, align 4, !dbg !832, !tbaa !833
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !418, metadata !787), !dbg !817
  br label %if.end.54, !dbg !837

if.else:                                          ; preds = %if.then
  %div = fdiv double %b.coerce1, %b.coerce0, !dbg !838
  tail call void @llvm.dbg.value(metadata double %div, i64 0, metadata !422, metadata !789), !dbg !839
  %mul = fmul double %div, %b.coerce1, !dbg !840
  %add = fadd double %mul, %b.coerce0, !dbg !841
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !427, metadata !789), !dbg !842
  %mul22 = fmul double %div, %a.coerce1, !dbg !843
  %add23 = fadd double %mul22, %a.coerce0, !dbg !844
  %div24 = fdiv double %add23, %add, !dbg !845
  tail call void @llvm.dbg.value(metadata double %div24, i64 0, metadata !418, metadata !785), !dbg !817
  %mul28 = fmul double %div, %a.coerce0, !dbg !846
  %sub29 = fsub double %a.coerce1, %mul28, !dbg !847
  %div30 = fdiv double %sub29, %add, !dbg !848
  tail call void @llvm.dbg.value(metadata double %div30, i64 0, metadata !418, metadata !787), !dbg !817
  br label %if.end.54

if.else.32:                                       ; preds = %entry
  %div36 = fdiv double %b.coerce0, %b.coerce1, !dbg !849
  tail call void @llvm.dbg.value(metadata double %div36, i64 0, metadata !428, metadata !789), !dbg !850
  %mul39 = fmul double %div36, %b.coerce0, !dbg !851
  %add41 = fadd double %mul39, %b.coerce1, !dbg !852
  tail call void @llvm.dbg.value(metadata double %add41, i64 0, metadata !430, metadata !789), !dbg !853
  %mul43 = fmul double %div36, %a.coerce0, !dbg !854
  %add45 = fadd double %mul43, %a.coerce1, !dbg !855
  %div46 = fdiv double %add45, %add41, !dbg !856
  tail call void @llvm.dbg.value(metadata double %div46, i64 0, metadata !418, metadata !785), !dbg !817
  %mul49 = fmul double %div36, %a.coerce1, !dbg !857
  %sub51 = fsub double %mul49, %a.coerce0, !dbg !858
  %div52 = fdiv double %sub51, %add41, !dbg !859
  tail call void @llvm.dbg.value(metadata double %div52, i64 0, metadata !418, metadata !787), !dbg !817
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.13, %if.else, %if.else.32
  %r.sroa.0.0 = phi double [ 0.000000e+00, %if.then.13 ], [ %div24, %if.else ], [ %div46, %if.else.32 ]
  %r.sroa.6.0 = phi double [ 0.000000e+00, %if.then.13 ], [ %div30, %if.else ], [ %div52, %if.else.32 ]
  %.fca.0.insert = insertvalue { double, double } undef, double %r.sroa.0.0, 0, !dbg !860
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %r.sroa.6.0, 1, !dbg !860
  ret { double, double } %.fca.1.insert, !dbg !860
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define { double, double } @_Py_c_pow(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #3 {
entry:
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !433, metadata !785), !dbg !861
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !433, metadata !787), !dbg !861
  tail call void @llvm.dbg.value(metadata double %b.coerce0, i64 0, metadata !434, metadata !785), !dbg !862
  tail call void @llvm.dbg.value(metadata double %b.coerce1, i64 0, metadata !434, metadata !787), !dbg !862
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !433, metadata !789), !dbg !861
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !434, metadata !789), !dbg !862
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !435, metadata !789), !dbg !863
  %cmp = fcmp oeq double %b.coerce0, 0.000000e+00, !dbg !864
  %cmp1 = fcmp oeq double %b.coerce1, 0.000000e+00, !dbg !866
  %or.cond = and i1 %cmp, %cmp1, !dbg !867
  br i1 %or.cond, label %if.end.44, label %if.else, !dbg !867

if.else:                                          ; preds = %entry
  %cmp5 = fcmp oeq double %a.coerce0, 0.000000e+00, !dbg !868
  %cmp8 = fcmp oeq double %a.coerce1, 0.000000e+00, !dbg !870
  %or.cond69 = and i1 %cmp5, %cmp8, !dbg !871
  br i1 %or.cond69, label %if.then.9, label %if.else.17, !dbg !871

if.then.9:                                        ; preds = %if.else
  %cmp11 = fcmp une double %b.coerce1, 0.000000e+00, !dbg !872
  %cmp13 = fcmp olt double %b.coerce0, 0.000000e+00, !dbg !875
  %or.cond70 = or i1 %cmp13, %cmp11, !dbg !876
  br i1 %or.cond70, label %if.then.14, label %if.end.44, !dbg !876

if.then.14:                                       ; preds = %if.then.9
  %call = tail call i32* @__errno_location() #1, !dbg !877
  store i32 33, i32* %call, align 4, !dbg !878, !tbaa !833
  br label %if.end.44, !dbg !877

if.else.17:                                       ; preds = %if.else
  %call20 = tail call double @hypot(double %a.coerce0, double %a.coerce1) #2, !dbg !879
  tail call void @llvm.dbg.value(metadata double %call20, i64 0, metadata !436, metadata !789), !dbg !881
  %call22 = tail call double @pow(double %call20, double %b.coerce0) #2, !dbg !882
  tail call void @llvm.dbg.value(metadata double %call22, i64 0, metadata !437, metadata !789), !dbg !883
  %call25 = tail call double @atan2(double %a.coerce1, double %a.coerce0) #2, !dbg !884
  tail call void @llvm.dbg.value(metadata double %call25, i64 0, metadata !438, metadata !789), !dbg !885
  %mul = fmul double %call25, %b.coerce0, !dbg !886
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !439, metadata !789), !dbg !887
  %cmp28 = fcmp une double %b.coerce1, 0.000000e+00, !dbg !888
  br i1 %cmp28, label %if.then.29, label %if.end.36, !dbg !890

if.then.29:                                       ; preds = %if.else.17
  %mul31 = fmul double %call25, %b.coerce1, !dbg !891
  %call32 = tail call double @exp(double %mul31) #2, !dbg !893
  %div = fdiv double %call22, %call32, !dbg !894
  tail call void @llvm.dbg.value(metadata double %div, i64 0, metadata !437, metadata !789), !dbg !883
  %call34 = tail call double @log(double %call20) #2, !dbg !895
  %mul35 = fmul double %call34, %b.coerce1, !dbg !896
  %add = fadd double %mul, %mul35, !dbg !897
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !439, metadata !789), !dbg !887
  br label %if.end.36, !dbg !898

if.end.36:                                        ; preds = %if.then.29, %if.else.17
  %len.0 = phi double [ %div, %if.then.29 ], [ %call22, %if.else.17 ]
  %phase.0 = phi double [ %add, %if.then.29 ], [ %mul, %if.else.17 ]
  %call37 = tail call double @cos(double %phase.0) #2, !dbg !899
  %mul38 = fmul double %len.0, %call37, !dbg !900
  tail call void @llvm.dbg.value(metadata double %mul38, i64 0, metadata !435, metadata !785), !dbg !863
  %call40 = tail call double @sin(double %phase.0) #2, !dbg !901
  %mul41 = fmul double %len.0, %call40, !dbg !902
  tail call void @llvm.dbg.value(metadata double %mul41, i64 0, metadata !435, metadata !787), !dbg !863
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.14, %if.then.9, %entry, %if.end.36
  %r.sroa.0.0 = phi double [ %mul38, %if.end.36 ], [ 1.000000e+00, %entry ], [ 0.000000e+00, %if.then.9 ], [ 0.000000e+00, %if.then.14 ]
  %r.sroa.6.0 = phi double [ %mul41, %if.end.36 ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %if.then.9 ], [ 0.000000e+00, %if.then.14 ]
  %.fca.0.insert = insertvalue { double, double } undef, double %r.sroa.0.0, 0, !dbg !903
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %r.sroa.6.0, 1, !dbg !903
  ret { double, double } %.fca.1.insert, !dbg !903
}

; Function Attrs: nounwind
declare double @hypot(double, double) #5

; Function Attrs: nounwind
declare double @pow(double, double) #5

; Function Attrs: nounwind
declare double @atan2(double, double) #5

; Function Attrs: nounwind
declare double @exp(double) #5

; Function Attrs: nounwind
declare double @log(double) #5

; Function Attrs: nounwind
declare double @cos(double) #5

; Function Attrs: nounwind
declare double @sin(double) #5

; Function Attrs: nounwind uwtable
define double @_Py_c_abs(double %z.coerce0, double %z.coerce1) #3 {
entry:
  tail call void @llvm.dbg.value(metadata double %z.coerce0, i64 0, metadata !444, metadata !785), !dbg !904
  tail call void @llvm.dbg.value(metadata double %z.coerce1, i64 0, metadata !444, metadata !787), !dbg !904
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !444, metadata !789), !dbg !904
  %call3 = tail call i32 @__finite(double %z.coerce0) #1, !dbg !905
  %tobool4 = icmp eq i32 %call3, 0, !dbg !905
  br i1 %tobool4, label %cond.true.30, label %cond.true.15, !dbg !905

cond.true.15:                                     ; preds = %entry
  %call17 = tail call i32 @__finite(double %z.coerce1) #1, !dbg !908
  %tobool18 = icmp eq i32 %call17, 0, !dbg !908
  br i1 %tobool18, label %cond.true.30, label %if.end.63, !dbg !908

cond.true.30:                                     ; preds = %cond.true.15, %entry
  %call32 = tail call i32 @__isinf(double %z.coerce0) #1, !dbg !910
  %tobool33 = icmp eq i32 %call32, 0, !dbg !910
  br i1 %tobool33, label %cond.true.49, label %if.then.39, !dbg !910

if.then.39:                                       ; preds = %cond.true.30
  %call41 = tail call double @fabs(double %z.coerce0) #1, !dbg !914
  tail call void @llvm.dbg.value(metadata double %call41, i64 0, metadata !445, metadata !789), !dbg !916
  %call42 = tail call i32* @__errno_location() #1, !dbg !917
  store i32 0, i32* %call42, align 4, !dbg !918, !tbaa !833
  br label %cleanup, !dbg !919

cond.true.49:                                     ; preds = %cond.true.30
  %call51 = tail call i32 @__isinf(double %z.coerce1) #1, !dbg !920
  %tobool52 = icmp eq i32 %call51, 0, !dbg !920
  br i1 %tobool52, label %cleanup, label %if.then.58, !dbg !920

if.then.58:                                       ; preds = %cond.true.49
  %call60 = tail call double @fabs(double %z.coerce1) #1, !dbg !923
  tail call void @llvm.dbg.value(metadata double %call60, i64 0, metadata !445, metadata !789), !dbg !916
  %call61 = tail call i32* @__errno_location() #1, !dbg !925
  store i32 0, i32* %call61, align 4, !dbg !926, !tbaa !833
  br label %cleanup, !dbg !927

if.end.63:                                        ; preds = %cond.true.15
  %call66 = tail call double @hypot(double %z.coerce0, double %z.coerce1) #2, !dbg !928
  tail call void @llvm.dbg.value(metadata double %call66, i64 0, metadata !445, metadata !789), !dbg !916
  %call73 = tail call i32 @__finite(double %call66) #1, !dbg !929
  %tobool74 = icmp eq i32 %call73, 0, !dbg !929
  %call81 = tail call i32* @__errno_location() #1, !dbg !932
  %. = select i1 %tobool74, i32 34, i32 0, !dbg !933
  store i32 %., i32* %call81, align 4, !dbg !934, !tbaa !833
  br label %cleanup, !dbg !935

cleanup:                                          ; preds = %cond.true.49, %if.end.63, %if.then.58, %if.then.39
  %retval.0 = phi double [ %call66, %if.end.63 ], [ %call41, %if.then.39 ], [ %call60, %if.then.58 ], [ 0x7FF8000000000000, %cond.true.49 ]
  ret double %retval.0, !dbg !936
}

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #4

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyComplex_FromCComplex(double %cval.coerce0, double %cval.coerce1) #3 {
entry:
  tail call void @llvm.dbg.value(metadata double %cval.coerce0, i64 0, metadata !450, metadata !785), !dbg !937
  tail call void @llvm.dbg.value(metadata double %cval.coerce1, i64 0, metadata !450, metadata !787), !dbg !937
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789), !dbg !937
  %call = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !938
  %cmp = icmp eq i8* %call, null, !dbg !939
  br i1 %cmp, label %if.then, label %if.end, !dbg !941

if.then:                                          ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !942
  br label %cleanup, !dbg !943

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct._object*, !dbg !944
  %ob_type = getelementptr inbounds i8, i8* %call, i64 8, !dbg !944
  %1 = bitcast i8* %ob_type to %struct._typeobject**, !dbg !944
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %1, align 8, !dbg !944, !tbaa !945
  %ob_refcnt = bitcast i8* %call to i64*, !dbg !944
  store i64 1, i64* %ob_refcnt, align 8, !dbg !944, !tbaa !949
  %cval.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call, i64 16, !dbg !950
  %2 = bitcast i8* %cval.sroa.0.0..sroa_idx to double*, !dbg !950
  store double %cval.coerce0, double* %2, align 8, !dbg !950
  %cval.sroa.2.0..sroa_idx9 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !950
  %3 = bitcast i8* %cval.sroa.2.0..sroa_idx9 to double*, !dbg !950
  store double %cval.coerce1, double* %3, align 8, !dbg !950
  br label %cleanup, !dbg !951

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call1, %if.then ], [ %0, %if.end ]
  ret %struct._object* %retval.0, !dbg !952
}

declare i8* @PyObject_Malloc(i64) #6

declare %struct._object* @PyErr_NoMemory() #6

; Function Attrs: nounwind uwtable
define %struct._object* @PyComplex_FromDoubles(double %real, double %imag) #3 {
entry:
  tail call void @llvm.dbg.value(metadata double %real, i64 0, metadata !456, metadata !789), !dbg !953
  tail call void @llvm.dbg.value(metadata double %imag, i64 0, metadata !457, metadata !789), !dbg !954
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !458, metadata !789), !dbg !955
  tail call void @llvm.dbg.value(metadata double %real, i64 0, metadata !458, metadata !785), !dbg !955
  tail call void @llvm.dbg.value(metadata double %imag, i64 0, metadata !458, metadata !787), !dbg !955
  tail call void @llvm.dbg.value(metadata double %real, i64 0, metadata !450, metadata !785) #2, !dbg !956
  tail call void @llvm.dbg.value(metadata double %imag, i64 0, metadata !450, metadata !787) #2, !dbg !956
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789) #2, !dbg !956
  %call.i = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !958
  %cmp.i = icmp eq i8* %call.i, null, !dbg !959
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !960

if.then.i:                                        ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !961
  br label %PyComplex_FromCComplex.exit, !dbg !962

if.end.i:                                         ; preds = %entry
  %0 = bitcast i8* %call.i to %struct._object*, !dbg !963
  %ob_type.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !963
  %1 = bitcast i8* %ob_type.i to %struct._typeobject**, !dbg !963
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %1, align 8, !dbg !963, !tbaa !945
  %ob_refcnt.i = bitcast i8* %call.i to i64*, !dbg !963
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !963, !tbaa !949
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !964
  %2 = bitcast i8* %cval.sroa.0.0..sroa_idx.i to double*, !dbg !964
  store double %real, double* %2, align 8, !dbg !964
  %cval.sroa.2.0..sroa_idx9.i = getelementptr inbounds i8, i8* %call.i, i64 24, !dbg !964
  %3 = bitcast i8* %cval.sroa.2.0..sroa_idx9.i to double*, !dbg !964
  store double %imag, double* %3, align 8, !dbg !964
  br label %PyComplex_FromCComplex.exit, !dbg !965

PyComplex_FromCComplex.exit:                      ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi %struct._object* [ %call1.i, %if.then.i ], [ %0, %if.end.i ], !dbg !966
  ret %struct._object* %retval.0.i, !dbg !967
}

; Function Attrs: nounwind uwtable
define double @PyComplex_RealAsDouble(%struct._object* %op) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !463, metadata !789), !dbg !968
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !969
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !969, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %0, @PyComplex_Type, !dbg !969
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !969

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !971
  %tobool = icmp eq i32 %call, 0, !dbg !971
  br i1 %tobool, label %if.else, label %if.then, !dbg !973

if.then:                                          ; preds = %lor.lhs.false, %entry
  %cval = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, !dbg !974
  %real = bitcast %struct._object* %cval to double*, !dbg !976
  %1 = load double, double* %real, align 8, !dbg !976, !tbaa !977
  br label %return, !dbg !981

if.else:                                          ; preds = %lor.lhs.false
  %call2 = tail call double @PyFloat_AsDouble(%struct._object* %op) #2, !dbg !982
  br label %return, !dbg !984

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi double [ %1, %if.then ], [ %call2, %if.else ]
  ret double %retval.0, !dbg !985
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #6

declare double @PyFloat_AsDouble(%struct._object*) #6

; Function Attrs: nounwind uwtable
define double @PyComplex_ImagAsDouble(%struct._object* nocapture readonly %op) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !466, metadata !789), !dbg !986
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !987
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !987, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %0, @PyComplex_Type, !dbg !987
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !987

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !989
  %tobool = icmp eq i32 %call, 0, !dbg !989
  br i1 %tobool, label %return, label %if.then, !dbg !991

if.then:                                          ; preds = %lor.lhs.false, %entry
  %imag = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 1, !dbg !992
  %1 = bitcast %struct._typeobject** %imag to double*, !dbg !992
  %2 = load double, double* %1, align 8, !dbg !992, !tbaa !994
  br label %return, !dbg !995

return:                                           ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi double [ %2, %if.then ], [ 0.000000e+00, %lor.lhs.false ]
  ret double %retval.0, !dbg !996
}

; Function Attrs: nounwind uwtable
define { double, double } @PyComplex_AsCComplex(%struct._object* %op) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !471, metadata !789), !dbg !997
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !472, metadata !789), !dbg !998
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !473, metadata !789), !dbg !999
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1000
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1000, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %0, @PyComplex_Type, !dbg !1000
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1000

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1002
  %tobool = icmp eq i32 %call, 0, !dbg !1002
  br i1 %tobool, label %if.end, label %if.then, !dbg !1004

if.then:                                          ; preds = %lor.lhs.false, %entry
  %retval.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, !dbg !1005
  %1 = bitcast %struct._object* %retval.sroa.0.0..sroa_idx to double*, !dbg !1005
  %retval.sroa.0.0.copyload = load double, double* %1, align 8, !dbg !1005
  %retval.sroa.5.0..sroa_idx43 = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 1, !dbg !1005
  %2 = bitcast %struct._typeobject** %retval.sroa.5.0..sroa_idx43 to double*, !dbg !1005
  %retval.sroa.5.0.copyload = load double, double* %2, align 8, !dbg !1005
  br label %cleanup, !dbg !1007

if.end:                                           ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, i64 0, metadata !472, metadata !785), !dbg !998
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !472, metadata !787), !dbg !998
  %call2 = tail call fastcc %struct._object* @try_complex_special_method(%struct._object* %op), !dbg !1008
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !473, metadata !789), !dbg !999
  %tobool3 = icmp eq %struct._object* %call2, null, !dbg !1009
  br i1 %tobool3, label %if.else.10, label %if.then.4, !dbg !1010

if.then.4:                                        ; preds = %if.end
  %cv.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %call2, i64 1, !dbg !1011
  %3 = bitcast %struct._object* %cv.sroa.0.0..sroa_idx to double*, !dbg !1011
  %cv.sroa.0.0.copyload = load double, double* %3, align 8, !dbg !1011
  tail call void @llvm.dbg.value(metadata double %cv.sroa.0.0.copyload, i64 0, metadata !472, metadata !785), !dbg !998
  %cv.sroa.8.0..sroa_idx31 = getelementptr inbounds %struct._object, %struct._object* %call2, i64 1, i32 1, !dbg !1011
  %4 = bitcast %struct._typeobject** %cv.sroa.8.0..sroa_idx31 to double*, !dbg !1011
  %cv.sroa.8.0.copyload = load double, double* %4, align 8, !dbg !1011
  tail call void @llvm.dbg.value(metadata double %cv.sroa.8.0.copyload, i64 0, metadata !472, metadata !787), !dbg !998
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !474, metadata !789), !dbg !1012
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 0, !dbg !1014
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1014, !tbaa !949
  %dec = add i64 %5, -1, !dbg !1014
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1014, !tbaa !949
  %cmp6 = icmp eq i64 %dec, 0, !dbg !1014
  br i1 %cmp6, label %if.else, label %cleanup, !dbg !1016

if.else:                                          ; preds = %if.then.4
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 1, !dbg !1017
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1017, !tbaa !945
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1017
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1017, !tbaa !1019
  tail call void %7(%struct._object* %call2) #2, !dbg !1017
  br label %cleanup

if.else.10:                                       ; preds = %if.end
  %call11 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1022
  %tobool12 = icmp eq %struct._object* %call11, null, !dbg !1022
  br i1 %tobool12, label %if.else.14, label %cleanup, !dbg !1024

if.else.14:                                       ; preds = %if.else.10
  %call15 = tail call double @PyFloat_AsDouble(%struct._object* %op) #2, !dbg !1025
  tail call void @llvm.dbg.value(metadata double %call15, i64 0, metadata !472, metadata !785), !dbg !998
  br label %cleanup, !dbg !1027

cleanup:                                          ; preds = %if.else.10, %if.else, %if.then.4, %if.else.14, %if.then
  %retval.sroa.0.0 = phi double [ %retval.sroa.0.0.copyload, %if.then ], [ %call15, %if.else.14 ], [ %cv.sroa.0.0.copyload, %if.then.4 ], [ %cv.sroa.0.0.copyload, %if.else ], [ -1.000000e+00, %if.else.10 ]
  %retval.sroa.5.0 = phi double [ %retval.sroa.5.0.copyload, %if.then ], [ 0.000000e+00, %if.else.14 ], [ %cv.sroa.8.0.copyload, %if.then.4 ], [ %cv.sroa.8.0.copyload, %if.else ], [ 0.000000e+00, %if.else.10 ]
  %.fca.0.insert = insertvalue { double, double } undef, double %retval.sroa.0.0, 0, !dbg !1028
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %retval.sroa.5.0, 1, !dbg !1028
  ret { double, double } %.fca.1.insert, !dbg !1028
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @try_complex_special_method(%struct._object* %op) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !480, metadata !789), !dbg !1029
  %call = tail call %struct._object* @_PyObject_LookupSpecial(%struct._object* %op, %struct._Py_Identifier* nonnull @try_complex_special_method.PyId___complex__) #2, !dbg !1030
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !481, metadata !789), !dbg !1031
  %tobool = icmp eq %struct._object* %call, null, !dbg !1032
  br i1 %tobool, label %cleanup.24, label %if.then, !dbg !1033

if.then:                                          ; preds = %entry
  %call1 = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %call, i8* null) #2, !dbg !1034
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !482, metadata !789), !dbg !1035
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !485, metadata !789), !dbg !1036
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1038
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1038, !tbaa !949
  %dec = add i64 %0, -1, !dbg !1038
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1038, !tbaa !949
  %cmp = icmp eq i64 %dec, 0, !dbg !1038
  br i1 %cmp, label %if.else, label %if.end, !dbg !1040

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1041
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1041, !tbaa !945
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1041
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1041, !tbaa !1019
  tail call void %2(%struct._object* %call) #2, !dbg !1041
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %cmp3 = icmp eq %struct._object* %call1, null, !dbg !1043
  br i1 %cmp3, label %cleanup.24, label %land.lhs.true, !dbg !1044

land.lhs.true:                                    ; preds = %if.end
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1045
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1045, !tbaa !945
  %cmp5 = icmp eq %struct._typeobject* %3, @PyComplex_Type, !dbg !1045
  br i1 %cmp5, label %cleanup.24, label %lor.lhs.false, !dbg !1045

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call7 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1047
  %tobool8 = icmp eq i32 %call7, 0, !dbg !1047
  br i1 %tobool8, label %if.then.9, label %cleanup.24, !dbg !1049

if.then.9:                                        ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1050, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1052
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !487, metadata !789), !dbg !1053
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1055
  %5 = load i64, i64* %ob_refcnt12, align 8, !dbg !1055, !tbaa !949
  %dec13 = add i64 %5, -1, !dbg !1055
  store i64 %dec13, i64* %ob_refcnt12, align 8, !dbg !1055, !tbaa !949
  %cmp14 = icmp eq i64 %dec13, 0, !dbg !1055
  br i1 %cmp14, label %if.else.16, label %cleanup.24, !dbg !1057

if.else.16:                                       ; preds = %if.then.9
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1058, !tbaa !945
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1058
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8, !dbg !1058, !tbaa !1019
  tail call void %7(%struct._object* %call1) #2, !dbg !1058
  br label %cleanup.24

cleanup.24:                                       ; preds = %entry, %if.then.9, %if.else.16, %lor.lhs.false, %if.end, %land.lhs.true
  %retval.1 = phi %struct._object* [ null, %if.then.9 ], [ null, %if.else.16 ], [ %call1, %lor.lhs.false ], [ null, %if.end ], [ %call1, %land.lhs.true ], [ null, %entry ]
  ret %struct._object* %retval.1, !dbg !1060
}

declare %struct._object* @PyErr_Occurred() #6

; Function Attrs: nounwind uwtable
define internal void @complex_dealloc(%struct._object* %op) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !493, metadata !789), !dbg !1061
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1062
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1062, !tbaa !945
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 38, !dbg !1063
  %1 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1063, !tbaa !1064
  %2 = bitcast %struct._object* %op to i8*, !dbg !1065
  tail call void %1(i8* %2) #2, !dbg !1066
  ret void, !dbg !1067
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_repr(%struct.PyComplexObject* nocapture readonly %v) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyComplexObject* %v, i64 0, metadata !498, metadata !789), !dbg !1068
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !499, metadata !789), !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !500, metadata !789), !dbg !1070
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !501, metadata !789), !dbg !1071
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !502, metadata !789), !dbg !1072
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !503, metadata !789), !dbg !1073
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !504, metadata !789), !dbg !1074
  tail call void @llvm.dbg.value(metadata !1075, i64 0, metadata !505, metadata !789), !dbg !1076
  tail call void @llvm.dbg.value(metadata !1075, i64 0, metadata !506, metadata !789), !dbg !1077
  %real = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 0, !dbg !1078
  %0 = load double, double* %real, align 8, !dbg !1080, !tbaa !977
  %cmp = fcmp oeq double %0, 0.000000e+00, !dbg !1082
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1083

land.lhs.true:                                    ; preds = %entry
  %call = tail call double @copysign(double 1.000000e+00, double %0) #1, !dbg !1084
  %cmp3 = fcmp oeq double %call, 1.000000e+00, !dbg !1085
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1086

if.then:                                          ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata !1075, i64 0, metadata !504, metadata !789), !dbg !1074
  %imag = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 1, !dbg !1087
  %1 = load double, double* %imag, align 8, !dbg !1087, !tbaa !994
  %call5 = tail call i8* @PyOS_double_to_string(double %1, i8 signext 114, i32 0, i32 0, i32* null) #2, !dbg !1089
  tail call void @llvm.dbg.value(metadata i8* %call5, i64 0, metadata !503, metadata !789), !dbg !1073
  %tobool = icmp eq i8* %call5, null, !dbg !1090
  br i1 %tobool, label %if.then.6, label %if.end.22, !dbg !1092

if.then.6:                                        ; preds = %if.then
  %call7 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1093
  br label %done, !dbg !1095

if.else:                                          ; preds = %land.lhs.true, %entry
  %call10 = tail call i8* @PyOS_double_to_string(double %0, i8 signext 114, i32 0, i32 0, i32* null) #2, !dbg !1096
  tail call void @llvm.dbg.value(metadata i8* %call10, i64 0, metadata !502, metadata !789), !dbg !1072
  %tobool11 = icmp eq i8* %call10, null, !dbg !1097
  br i1 %tobool11, label %if.then.12, label %if.end.14, !dbg !1099

if.then.12:                                       ; preds = %if.else
  %call13 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1100
  br label %done, !dbg !1102

if.end.14:                                        ; preds = %if.else
  tail call void @llvm.dbg.value(metadata i8* %call10, i64 0, metadata !504, metadata !789), !dbg !1074
  %imag16 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 1, !dbg !1103
  %2 = load double, double* %imag16, align 8, !dbg !1103, !tbaa !994
  %call17 = tail call i8* @PyOS_double_to_string(double %2, i8 signext 114, i32 0, i32 1, i32* null) #2, !dbg !1104
  tail call void @llvm.dbg.value(metadata i8* %call17, i64 0, metadata !503, metadata !789), !dbg !1073
  %tobool18 = icmp eq i8* %call17, null, !dbg !1105
  br i1 %tobool18, label %if.then.19, label %if.end.22, !dbg !1107

if.then.19:                                       ; preds = %if.end.14
  %call20 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1108
  br label %done, !dbg !1110

if.end.22:                                        ; preds = %if.end.14, %if.then
  %pre.0 = phi i8* [ null, %if.then ], [ %call10, %if.end.14 ]
  %im.0 = phi i8* [ %call5, %if.then ], [ %call17, %if.end.14 ]
  %re.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %if.then ], [ %call10, %if.end.14 ]
  %lead.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %if.end.14 ]
  %tail.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %if.end.14 ]
  %call23 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %lead.0, i8* %re.0, i8* %im.0, i8* %tail.0) #2, !dbg !1111
  tail call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !501, metadata !789), !dbg !1071
  br label %done, !dbg !1112

done:                                             ; preds = %if.end.22, %if.then.19, %if.then.12, %if.then.6
  %result.0 = phi %struct._object* [ %call23, %if.end.22 ], [ null, %if.then.6 ], [ null, %if.then.19 ], [ null, %if.then.12 ]
  %pre.1 = phi i8* [ %pre.0, %if.end.22 ], [ null, %if.then.6 ], [ %call10, %if.then.19 ], [ null, %if.then.12 ]
  %im.1 = phi i8* [ %im.0, %if.end.22 ], [ null, %if.then.6 ], [ null, %if.then.19 ], [ null, %if.then.12 ]
  tail call void @PyMem_Free(i8* %im.1) #2, !dbg !1113
  tail call void @PyMem_Free(i8* %pre.1) #2, !dbg !1114
  ret %struct._object* %result.0, !dbg !1115
}

; Function Attrs: nounwind uwtable
define internal i64 @complex_hash(%struct.PyComplexObject* nocapture readonly %v) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyComplexObject* %v, i64 0, metadata !606, metadata !789), !dbg !1116
  %real = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 0, !dbg !1117
  %0 = load double, double* %real, align 8, !dbg !1117, !tbaa !977
  %call = tail call i64 @_Py_HashDouble(double %0) #2, !dbg !1118
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !607, metadata !789), !dbg !1119
  %cmp = icmp eq i64 %call, -1, !dbg !1120
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1122

if.end:                                           ; preds = %entry
  %imag = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 1, !dbg !1123
  %1 = load double, double* %imag, align 8, !dbg !1123, !tbaa !994
  %call2 = tail call i64 @_Py_HashDouble(double %1) #2, !dbg !1124
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !608, metadata !789), !dbg !1125
  %cmp3 = icmp eq i64 %call2, -1, !dbg !1126
  br i1 %cmp3, label %cleanup, label %if.end.5, !dbg !1128

if.end.5:                                         ; preds = %if.end
  %mul = mul i64 %call2, 1000003, !dbg !1129
  %add = add i64 %mul, %call, !dbg !1130
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !609, metadata !789), !dbg !1131
  %cmp6 = icmp eq i64 %add, -1, !dbg !1132
  %.add = select i1 %cmp6, i64 -2, i64 %add, !dbg !1134
  tail call void @llvm.dbg.value(metadata i64 %.add, i64 0, metadata !609, metadata !789), !dbg !1131
  br label %cleanup, !dbg !1135

cleanup:                                          ; preds = %if.end, %entry, %if.end.5
  %retval.0 = phi i64 [ %.add, %if.end.5 ], [ -1, %entry ], [ -1, %if.end ]
  ret i64 %retval.0, !dbg !1136
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #6

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !612, metadata !789), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !520, metadata !789), !dbg !1138
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !612, metadata !789), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !612, metadata !789), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !612, metadata !789), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !612, metadata !789), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !520, metadata !789), !dbg !1144
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !614, metadata !789), !dbg !1149
  %0 = and i32 %op, -2, !dbg !1150
  %op.cmp = icmp eq i32 %0, 2, !dbg !1150
  br i1 %op.cmp, label %if.end, label %Unimplemented, !dbg !1150

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1152
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1152, !tbaa !945
  %cmp2 = icmp eq %struct._typeobject* %1, @PyComplex_Type, !dbg !1152
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false, !dbg !1152

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %1, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1153
  %tobool = icmp eq i32 %call, 0, !dbg !1153
  br i1 %tobool, label %if.else, label %if.then.4, !dbg !1155

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %i.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, !dbg !1156
  %2 = bitcast %struct._object* %i.sroa.0.0..sroa_idx to double*, !dbg !1156
  %i.sroa.0.0.copyload = load double, double* %2, align 8, !dbg !1156
  %i.sroa.9.0..sroa_idx132 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 1, !dbg !1156
  %3 = bitcast %struct._typeobject** %i.sroa.9.0..sroa_idx132 to double*, !dbg !1156
  %i.sroa.9.0.copyload = load double, double* %3, align 8, !dbg !1156
  br label %if.end.9, !dbg !1156

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !616, metadata !789), !dbg !1159
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1160
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !522, metadata !789) #2, !dbg !1161
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1162, !tbaa !945
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 19, !dbg !1162
  %5 = load i64, i64* %tp_flags.i, align 8, !dbg !1162, !tbaa !1164
  %and.i = and i64 %5, 16777216, !dbg !1162
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !1162
  br i1 %cmp.i, label %if.end.6.i, label %if.then.i, !dbg !1165

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !1166
  %cmp3.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !1168
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.9, !dbg !1170

land.lhs.true.i:                                  ; preds = %if.then.i
  %call4.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1171
  %tobool.i = icmp eq %struct._object* %call4.i, null, !dbg !1171
  br i1 %tobool.i, label %if.end.9, label %cleanup.86, !dbg !1173

if.end.6.i:                                       ; preds = %if.else
  %cmp8.i = icmp eq %struct._typeobject* %4, @PyFloat_Type, !dbg !1174
  br i1 %cmp8.i, label %if.then.12.i, label %lor.lhs.false.i, !dbg !1174

lor.lhs.false.i:                                  ; preds = %if.end.6.i
  %call10.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1176
  %tobool11.i = icmp eq i32 %call10.i, 0, !dbg !1176
  br i1 %tobool11.i, label %if.end.15.i, label %if.then.12.i, !dbg !1178

if.then.12.i:                                     ; preds = %lor.lhs.false.i, %if.end.6.i
  %call13.i = tail call double @PyFloat_AsDouble(%struct._object* %v) #2, !dbg !1179
  br label %if.end.9, !dbg !1181

if.end.15.i:                                      ; preds = %lor.lhs.false.i
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1182, !tbaa !949
  %inc.i = add i64 %6, 1, !dbg !1182
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1182, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1138
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !612, metadata !789), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !612, metadata !789), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !612, metadata !789), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !612, metadata !789), !dbg !1137
  br label %cleanup.86, !dbg !1183

if.end.9:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then.12.i, %if.then.4
  %i.sroa.9.0.copyload150 = phi double [ %i.sroa.9.0.copyload, %if.then.4 ], [ 0.000000e+00, %if.then.12.i ], [ 0.000000e+00, %land.lhs.true.i ], [ 0.000000e+00, %if.then.i ]
  %i.sroa.0.0.148 = phi double [ %i.sroa.0.0.copyload, %if.then.4 ], [ %call13.i, %if.then.12.i ], [ -1.000000e+00, %land.lhs.true.i ], [ %call.i, %if.then.i ]
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1184
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1184, !tbaa !945
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 19, !dbg !1184
  %8 = load i64, i64* %tp_flags, align 8, !dbg !1184, !tbaa !1164
  %and = and i64 %8, 16777216, !dbg !1184
  %cmp11 = icmp eq i64 %and, 0, !dbg !1184
  br i1 %cmp11, label %if.else.28, label %if.then.12, !dbg !1185

if.then.12:                                       ; preds = %if.end.9
  %cmp13 = fcmp oeq double %i.sroa.9.0.copyload150, 0.000000e+00, !dbg !1186
  br i1 %cmp13, label %if.then.14, label %if.end.77, !dbg !1187

if.then.14:                                       ; preds = %if.then.12
  %call15 = tail call %struct._object* @PyFloat_FromDouble(double %i.sroa.0.0.148) #2, !dbg !1188
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !618, metadata !789), !dbg !1189
  %cmp16 = icmp eq %struct._object* %call15, null, !dbg !1190
  br i1 %cmp16, label %cleanup.86, label %if.end.18, !dbg !1192

if.end.18:                                        ; preds = %if.then.14
  %call19 = tail call %struct._object* @PyObject_RichCompare(%struct._object* %call15, %struct._object* %w, i32 %op) #2, !dbg !1193
  tail call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !623, metadata !789), !dbg !1194
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !624, metadata !789), !dbg !1195
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call15, i64 0, i32 0, !dbg !1197
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1197, !tbaa !949
  %dec = add i64 %9, -1, !dbg !1197
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1197, !tbaa !949
  %cmp20 = icmp eq i64 %dec, 0, !dbg !1197
  br i1 %cmp20, label %if.else.22, label %cleanup.86, !dbg !1199

if.else.22:                                       ; preds = %if.end.18
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %call15, i64 0, i32 1, !dbg !1200
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1200, !tbaa !945
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1200
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1200, !tbaa !1019
  tail call void %11(%struct._object* %call15) #2, !dbg !1200
  br label %cleanup.86

if.else.28:                                       ; preds = %if.end.9
  %cmp30 = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !1202
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false.31, !dbg !1202

lor.lhs.false.31:                                 ; preds = %if.else.28
  %call33 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1203
  %tobool34 = icmp eq i32 %call33, 0, !dbg !1203
  br i1 %tobool34, label %if.else.41, label %if.then.35, !dbg !1205

if.then.35:                                       ; preds = %lor.lhs.false.31, %if.else.28
  %call37 = tail call double @PyFloat_AsDouble(%struct._object* %w) #2, !dbg !1206
  %cmp38 = fcmp oeq double %i.sroa.0.0.148, %call37, !dbg !1208
  %cmp40 = fcmp oeq double %i.sroa.9.0.copyload150, 0.000000e+00, !dbg !1209
  %12 = and i1 %cmp40, %cmp38, !dbg !1210
  %land.ext = zext i1 %12 to i32, !dbg !1211
  tail call void @llvm.dbg.value(metadata i32 %land.ext, i64 0, metadata !617, metadata !789), !dbg !1213
  br label %if.end.77, !dbg !1214

if.else.41:                                       ; preds = %lor.lhs.false.31
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1215, !tbaa !945
  %cmp43 = icmp eq %struct._typeobject* %13, @PyComplex_Type, !dbg !1215
  br i1 %cmp43, label %if.then.56, label %lor.lhs.false.44, !dbg !1215

lor.lhs.false.44:                                 ; preds = %if.else.41
  %call46 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %13, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1216
  %tobool47 = icmp eq i32 %call46, 0, !dbg !1216
  br i1 %tobool47, label %Unimplemented, label %if.then.48, !dbg !1218

if.then.48:                                       ; preds = %lor.lhs.false.44
  %.pr = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1219, !tbaa !945
  %cmp51 = icmp eq %struct._typeobject* %.pr, @PyComplex_Type, !dbg !1219
  br i1 %cmp51, label %if.then.56, label %lor.lhs.false.52, !dbg !1219

lor.lhs.false.52:                                 ; preds = %if.then.48
  %call54 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %.pr, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1220
  %tobool55 = icmp eq i32 %call54, 0, !dbg !1220
  br i1 %tobool55, label %if.else.58, label %if.then.56, !dbg !1222

if.then.56:                                       ; preds = %if.else.41, %lor.lhs.false.52, %if.then.48
  %j49.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, !dbg !1223
  %14 = bitcast %struct._object* %j49.sroa.0.0..sroa_idx to double*, !dbg !1223
  %j49.sroa.0.0.copyload = load double, double* %14, align 8, !dbg !1223
  %j49.sroa.7.0..sroa_idx126 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 1, !dbg !1223
  %15 = bitcast %struct._typeobject** %j49.sroa.7.0..sroa_idx126 to double*, !dbg !1223
  %j49.sroa.7.0.copyload = load double, double* %15, align 8, !dbg !1223
  br label %if.end.63, !dbg !1223

if.else.58:                                       ; preds = %lor.lhs.false.52
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !626, metadata !789), !dbg !1226
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1227
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !522, metadata !789) #2, !dbg !1228
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1229, !tbaa !945
  %tp_flags.i.104 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 19, !dbg !1229
  %17 = load i64, i64* %tp_flags.i.104, align 8, !dbg !1229, !tbaa !1164
  %and.i.105 = and i64 %17, 16777216, !dbg !1229
  %cmp.i.106 = icmp eq i64 %and.i.105, 0, !dbg !1229
  br i1 %cmp.i.106, label %if.end.6.i.115, label %if.then.i.109, !dbg !1230

if.then.i.109:                                    ; preds = %if.else.58
  %call.i.107 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !1231
  %cmp3.i.108 = fcmp oeq double %call.i.107, -1.000000e+00, !dbg !1232
  br i1 %cmp3.i.108, label %land.lhs.true.i.112, label %if.end.63, !dbg !1233

land.lhs.true.i.112:                              ; preds = %if.then.i.109
  %call4.i.110 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1234
  %tobool.i.111 = icmp eq %struct._object* %call4.i.110, null, !dbg !1234
  br i1 %tobool.i.111, label %if.end.63, label %cleanup.86, !dbg !1235

if.end.6.i.115:                                   ; preds = %if.else.58
  %cmp8.i.114 = icmp eq %struct._typeobject* %16, @PyFloat_Type, !dbg !1236
  br i1 %cmp8.i.114, label %if.then.12.i.120, label %lor.lhs.false.i.118, !dbg !1236

lor.lhs.false.i.118:                              ; preds = %if.end.6.i.115
  %call10.i.116 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %16, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1237
  %tobool11.i.117 = icmp eq i32 %call10.i.116, 0, !dbg !1237
  br i1 %tobool11.i.117, label %if.end.15.i.122, label %if.then.12.i.120, !dbg !1238

if.then.12.i.120:                                 ; preds = %lor.lhs.false.i.118, %if.end.6.i.115
  %call13.i.119 = tail call double @PyFloat_AsDouble(%struct._object* %w) #2, !dbg !1239
  br label %if.end.63, !dbg !1240

if.end.15.i.122:                                  ; preds = %lor.lhs.false.i.118
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1241, !tbaa !949
  %inc.i.121 = add i64 %18, 1, !dbg !1241
  store i64 %inc.i.121, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1241, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1144
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !789), !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !789), !dbg !1143
  br label %cleanup.86, !dbg !1242

if.end.63:                                        ; preds = %if.then.i.109, %land.lhs.true.i.112, %if.then.12.i.120, %if.then.56
  %j49.sroa.7.0.copyload147 = phi double [ %j49.sroa.7.0.copyload, %if.then.56 ], [ 0.000000e+00, %if.then.12.i.120 ], [ 0.000000e+00, %land.lhs.true.i.112 ], [ 0.000000e+00, %if.then.i.109 ]
  %j49.sroa.0.0.145 = phi double [ %j49.sroa.0.0.copyload, %if.then.56 ], [ %call13.i.119, %if.then.12.i.120 ], [ -1.000000e+00, %land.lhs.true.i.112 ], [ %call.i.107, %if.then.i.109 ]
  %cmp66 = fcmp oeq double %i.sroa.0.0.148, %j49.sroa.0.0.145, !dbg !1243
  %cmp70 = fcmp oeq double %i.sroa.9.0.copyload150, %j49.sroa.7.0.copyload147, !dbg !1244
  %19 = and i1 %cmp70, %cmp66, !dbg !1245
  %land.ext72 = zext i1 %19 to i32, !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %land.ext72, i64 0, metadata !617, metadata !789), !dbg !1213
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.63, %if.then.12, %if.then.35
  %equal.1 = phi i32 [ %land.ext, %if.then.35 ], [ %land.ext72, %if.end.63 ], [ 0, %if.then.12 ]
  %cmp78 = icmp eq i32 %op, 2, !dbg !1248
  %conv = zext i1 %cmp78 to i32, !dbg !1248
  %cmp79 = icmp eq i32 %equal.1, %conv, !dbg !1250
  %. = select i1 %cmp79, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !1251
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %., i64 0, i32 0, !dbg !1252
  %20 = load i64, i64* %ob_refcnt84, align 8, !dbg !1252, !tbaa !949
  %inc = add i64 %20, 1, !dbg !1252
  store i64 %inc, i64* %ob_refcnt84, align 8, !dbg !1252, !tbaa !949
  br label %cleanup.86, !dbg !1253

Unimplemented:                                    ; preds = %lor.lhs.false.44, %entry
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1254, !tbaa !949
  %inc85 = add i64 %21, 1, !dbg !1254
  store i64 %inc85, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1254, !tbaa !949
  br label %cleanup.86, !dbg !1254

cleanup.86:                                       ; preds = %land.lhs.true.i.112, %if.end.15.i.122, %land.lhs.true.i, %if.end.15.i, %if.then.14, %if.end.18, %if.else.22, %Unimplemented, %if.end.77
  %retval.2 = phi %struct._object* [ @_Py_NotImplementedStruct, %Unimplemented ], [ %., %if.end.77 ], [ null, %if.then.14 ], [ %call19, %if.end.18 ], [ %call19, %if.else.22 ], [ @_Py_NotImplementedStruct, %if.end.15.i ], [ null, %land.lhs.true.i ], [ @_Py_NotImplementedStruct, %if.end.15.i.122 ], [ null, %land.lhs.true.i.112 ]
  ret %struct._object* %retval.2, !dbg !1255
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #6

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #3 {
entry:
  %s.i = alloca i8*, align 8
  %end.i = alloca i8*, align 8
  %len.i = alloca i64, align 8
  %r = alloca %struct._object*, align 8
  %i = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !665, metadata !789), !dbg !1256
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !666, metadata !789), !dbg !1257
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !667, metadata !789), !dbg !1258
  %0 = bitcast %struct._object** %r to i8*, !dbg !1259
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1259
  %1 = bitcast %struct._object** %i to i8*, !dbg !1259
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1259
  tail call void @llvm.dbg.value(metadata %struct.PyNumberMethods* null, i64 0, metadata !672, metadata !789), !dbg !1260
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !673, metadata !789), !dbg !1261
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !674, metadata !789), !dbg !1262
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !675, metadata !789), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !676, metadata !789), !dbg !1264
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !677, metadata !789), !dbg !1265
  tail call void @llvm.dbg.value(metadata !1075, i64 0, metadata !668, metadata !789), !dbg !1266
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object** %r, align 8, !dbg !1267, !tbaa !1051
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !669, metadata !789), !dbg !1268
  store %struct._object* null, %struct._object** %i, align 8, !dbg !1269, !tbaa !1051
  tail call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  tail call void @llvm.dbg.value(metadata %struct._object** %i, i64 0, metadata !669, metadata !789), !dbg !1268
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @complex_new.kwlist, i64 0, i64 0), %struct._object** nonnull %r, %struct._object** nonnull %i) #2, !dbg !1270
  %tobool = icmp eq i32 %call, 0, !dbg !1270
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1272

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  %2 = load %struct._object*, %struct._object** %r, align 8, !dbg !1273, !tbaa !1051
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !1276
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1277, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %3, @PyComplex_Type, !dbg !1276
  call void @llvm.dbg.value(metadata %struct._object** %i, i64 0, metadata !669, metadata !789), !dbg !1268
  %4 = load %struct._object*, %struct._object** %i, align 8
  %cmp8 = icmp eq %struct._object* %4, null, !dbg !1282
  %or.cond = and i1 %cmp, %cmp8, !dbg !1283
  %cmp10 = icmp eq %struct._typeobject* %type, @PyComplex_Type, !dbg !1284
  %or.cond203 = and i1 %cmp10, %or.cond, !dbg !1283
  br i1 %or.cond203, label %if.then.11, label %if.end.12, !dbg !1283

if.then.11:                                       ; preds = %if.end
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !1285
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1285, !tbaa !949
  %inc = add i64 %5, 1, !dbg !1285
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1285, !tbaa !949
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  br label %cleanup, !dbg !1286

if.end.12:                                        ; preds = %if.end
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1287
  %6 = load i64, i64* %tp_flags, align 8, !dbg !1277, !tbaa !1164
  %and = and i64 %6, 268435456, !dbg !1287
  %cmp14 = icmp eq i64 %and, 0, !dbg !1287
  %cmp16 = icmp ne %struct._object* %4, null, !dbg !1288
  br i1 %cmp14, label %if.end.20, label %if.then.15, !dbg !1290

if.then.15:                                       ; preds = %if.end.12
  br i1 %cmp16, label %if.then.17, label %if.then.i, !dbg !1291

if.then.17:                                       ; preds = %if.then.15
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1292, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0)) #2, !dbg !1294
  br label %cleanup, !dbg !1295

if.then.i:                                        ; preds = %if.then.15
  call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !710, metadata !789) #2, !dbg !1296
  call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !711, metadata !789) #2, !dbg !1297
  %8 = bitcast i8** %s.i to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1298
  %9 = bitcast i8** %end.i to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1299
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !715, metadata !789) #2, !dbg !1300
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !716, metadata !789) #2, !dbg !1301
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !718, metadata !789) #2, !dbg !1302
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !719, metadata !789) #2, !dbg !1303
  %10 = bitcast i64* %len.i to i8*, !dbg !1304
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1304
  %call.i = call %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object* %2) #2, !dbg !1305
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !719, metadata !789) #2, !dbg !1303
  %cmp1.i = icmp eq %struct._object* %call.i, null, !dbg !1307
  br i1 %cmp1.i, label %complex_subtype_from_string.exit, label %if.end.i, !dbg !1309

if.end.i:                                         ; preds = %if.then.i
  call void @llvm.dbg.value(metadata i64* %len.i, i64 0, metadata !720, metadata !789) #2, !dbg !1310
  %call3.i = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %call.i, i64* nonnull %len.i) #2, !dbg !1311
  call void @llvm.dbg.value(metadata i8* %call3.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  store i8* %call3.i, i8** %s.i, align 8, !dbg !1313, !tbaa !1051
  %cmp4.i = icmp eq i8* %call3.i, null, !dbg !1314
  br i1 %cmp4.i, label %do.body.182.i, label %if.end.12.i, !dbg !1316

if.end.12.i:                                      ; preds = %if.end.i
  %11 = ptrtoint i8* %call3.i to i64, !dbg !1316
  %.pre = load i8, i8* %call3.i, align 1, !dbg !1317, !tbaa !1320
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %idxprom.246.i = zext i8 %.pre to i64, !dbg !1317
  %arrayidx.247.i = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom.246.i, !dbg !1317
  %12 = load i32, i32* %arrayidx.247.i, align 4, !dbg !1317, !tbaa !833
  %and15.248.i = and i32 %12, 8, !dbg !1317
  %tobool16.249.i = icmp eq i32 %and15.248.i, 0, !dbg !1321
  br i1 %tobool16.249.i, label %while.end.i, label %while.body.i.preheader, !dbg !1321

while.body.i.preheader:                           ; preds = %if.end.12.i
  br label %while.body.i, !dbg !1322

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %13 = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %call3.i, %while.body.i.preheader ], !dbg !1323
  %incdec.ptr.i = getelementptr i8, i8* %13, i64 1, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  store i8* %incdec.ptr.i, i8** %s.i, align 8, !dbg !1322, !tbaa !1051
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %14 = load i8, i8* %incdec.ptr.i, align 1, !dbg !1317, !tbaa !1320
  %idxprom.i = zext i8 %14 to i64, !dbg !1317
  %arrayidx.i = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom.i, !dbg !1317
  %15 = load i32, i32* %arrayidx.i, align 4, !dbg !1317, !tbaa !833
  %and15.i = and i32 %15, 8, !dbg !1317
  %tobool16.i = icmp eq i32 %and15.i, 0, !dbg !1321
  br i1 %tobool16.i, label %while.end.i.loopexit, label %while.body.i, !dbg !1321

while.end.i.loopexit:                             ; preds = %while.body.i
  %.lcssa262 = phi i8 [ %14, %while.body.i ]
  %incdec.ptr.i.lcssa = phi i8* [ %incdec.ptr.i, %while.body.i ]
  br label %while.end.i, !dbg !1324

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.end.12.i
  %16 = phi i8* [ %call3.i, %if.end.12.i ], [ %incdec.ptr.i.lcssa, %while.end.i.loopexit ], !dbg !1323
  %.lcssa240.i = phi i8 [ %.pre, %if.end.12.i ], [ %.lcssa262, %while.end.i.loopexit ], !dbg !1323
  %cmp18.i = icmp eq i8 %.lcssa240.i, 40, !dbg !1324
  br i1 %cmp18.i, label %while.cond.22.i.preheader, label %if.end.33.i, !dbg !1326

while.cond.22.i.preheader:                        ; preds = %while.end.i
  br label %while.cond.22.i, !dbg !1327

while.cond.22.i:                                  ; preds = %while.cond.22.i.preheader, %while.cond.22.i
  %.pn.235.i = phi i8* [ %storemerge.233.i, %while.cond.22.i ], [ %16, %while.cond.22.i.preheader ], !dbg !1323
  %storemerge.233.i = getelementptr i8, i8* %.pn.235.i, i64 1, !dbg !1327
  store i8* %storemerge.233.i, i8** %s.i, align 8, !dbg !1329, !tbaa !1051
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %17 = load i8, i8* %storemerge.233.i, align 1, !dbg !1330, !tbaa !1320
  %idxprom26.i = zext i8 %17 to i64, !dbg !1330
  %arrayidx27.i = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom26.i, !dbg !1330
  %18 = load i32, i32* %arrayidx27.i, align 4, !dbg !1330, !tbaa !833
  %and28.i = and i32 %18, 8, !dbg !1330
  %tobool29.i = icmp eq i32 %and28.i, 0, !dbg !1333
  br i1 %tobool29.i, label %if.end.33.i.loopexit, label %while.cond.22.i, !dbg !1333

if.end.33.i.loopexit:                             ; preds = %while.cond.22.i
  %storemerge.233.i.lcssa = phi i8* [ %storemerge.233.i, %while.cond.22.i ]
  br label %if.end.33.i, !dbg !1312

if.end.33.i:                                      ; preds = %if.end.33.i.loopexit, %while.end.i
  %19 = phi i8* [ %16, %while.end.i ], [ %storemerge.233.i.lcssa, %if.end.33.i.loopexit ], !dbg !1334
  %got_bracket.0.i = phi i32 [ 0, %while.end.i ], [ 1, %if.end.33.i.loopexit ], !dbg !1323
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  call void @llvm.dbg.value(metadata i8** %end.i, i64 0, metadata !714, metadata !789) #2, !dbg !1335
  %call34.i = call double @PyOS_string_to_double(i8* %19, i8** nonnull %end.i, %struct._object* null) #2, !dbg !1336
  call void @llvm.dbg.value(metadata double %call34.i, i64 0, metadata !717, metadata !789) #2, !dbg !1337
  %cmp35.i = fcmp oeq double %call34.i, -1.000000e+00, !dbg !1338
  br i1 %cmp35.i, label %land.lhs.true.i, label %if.end.45.i, !dbg !1340

land.lhs.true.i:                                  ; preds = %if.end.33.i
  %call37.i = call %struct._object* @PyErr_Occurred() #2, !dbg !1341
  %tobool38.i = icmp eq %struct._object* %call37.i, null, !dbg !1341
  br i1 %tobool38.i, label %if.end.45.i, label %if.then.39.i, !dbg !1343

if.then.39.i:                                     ; preds = %land.lhs.true.i
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1344, !tbaa !1051
  %call40.i = call i32 @PyErr_ExceptionMatches(%struct._object* %20) #2, !dbg !1347
  %tobool41.i = icmp eq i32 %call40.i, 0, !dbg !1347
  br i1 %tobool41.i, label %do.body.177.i, label %if.then.42.i, !dbg !1348

if.then.42.i:                                     ; preds = %if.then.39.i
  call void @PyErr_Clear() #2, !dbg !1349
  br label %if.end.45.i, !dbg !1350

if.end.45.i:                                      ; preds = %if.then.42.i, %land.lhs.true.i, %if.end.33.i
  call void @llvm.dbg.value(metadata i8** %end.i, i64 0, metadata !714, metadata !789) #2, !dbg !1335
  %21 = load i8*, i8** %end.i, align 8, !dbg !1351, !tbaa !1051
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %22 = load i8*, i8** %s.i, align 8, !dbg !1356, !tbaa !1051
  %cmp46.i = icmp eq i8* %21, %22, !dbg !1360
  br i1 %cmp46.i, label %if.else.101.i, label %if.then.48.i, !dbg !1361

if.then.48.i:                                     ; preds = %if.end.45.i
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  store i8* %21, i8** %s.i, align 8, !dbg !1362, !tbaa !1051
  %23 = load i8, i8* %21, align 1, !dbg !1363, !tbaa !1320
  switch i8 %23, label %while.cond.128.preheader.i [
    i8 43, label %if.then.55.i
    i8 45, label %if.then.55.i
    i8 106, label %if.then.96.i
    i8 74, label %if.then.96.i
  ], !dbg !1364

if.then.55.i:                                     ; preds = %if.then.48.i, %if.then.48.i
  call void @llvm.dbg.value(metadata double %call34.i, i64 0, metadata !715, metadata !789) #2, !dbg !1300
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  call void @llvm.dbg.value(metadata i8** %end.i, i64 0, metadata !714, metadata !789) #2, !dbg !1335
  %call56.i = call double @PyOS_string_to_double(i8* %21, i8** nonnull %end.i, %struct._object* null) #2, !dbg !1365
  call void @llvm.dbg.value(metadata double %call56.i, i64 0, metadata !716, metadata !789) #2, !dbg !1301
  %cmp57.i = fcmp oeq double %call56.i, -1.000000e+00, !dbg !1366
  br i1 %cmp57.i, label %land.lhs.true.59.i, label %if.end.68.i, !dbg !1368

land.lhs.true.59.i:                               ; preds = %if.then.55.i
  %call60.i = call %struct._object* @PyErr_Occurred() #2, !dbg !1369
  %tobool61.i = icmp eq %struct._object* %call60.i, null, !dbg !1369
  br i1 %tobool61.i, label %if.end.68.i, label %if.then.62.i, !dbg !1371

if.then.62.i:                                     ; preds = %land.lhs.true.59.i
  %24 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1372, !tbaa !1051
  %call63.i = call i32 @PyErr_ExceptionMatches(%struct._object* %24) #2, !dbg !1375
  %tobool64.i = icmp eq i32 %call63.i, 0, !dbg !1375
  br i1 %tobool64.i, label %do.body.177.i, label %if.then.65.i, !dbg !1376

if.then.65.i:                                     ; preds = %if.then.62.i
  call void @PyErr_Clear() #2, !dbg !1377
  br label %if.end.68.i, !dbg !1378

if.end.68.i:                                      ; preds = %if.then.65.i, %land.lhs.true.59.i, %if.then.55.i
  call void @llvm.dbg.value(metadata i8** %end.i, i64 0, metadata !714, metadata !789) #2, !dbg !1335
  %25 = load i8*, i8** %end.i, align 8, !dbg !1379, !tbaa !1051
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %26 = load i8*, i8** %s.i, align 8, !dbg !1381, !tbaa !1051
  %cmp69.i = icmp eq i8* %25, %26, !dbg !1382
  br i1 %cmp69.i, label %if.else.72.i, label %if.end.77.i, !dbg !1383

if.else.72.i:                                     ; preds = %if.end.68.i
  %27 = load i8, i8* %25, align 1, !dbg !1384, !tbaa !1320
  %cmp74.i = icmp eq i8 %27, 43, !dbg !1386
  %cond.i = select i1 %cmp74.i, double 1.000000e+00, double -1.000000e+00, !dbg !1384
  call void @llvm.dbg.value(metadata double %cond.i, i64 0, metadata !716, metadata !789) #2, !dbg !1301
  %incdec.ptr76.i = getelementptr i8, i8* %25, i64 1, !dbg !1387
  call void @llvm.dbg.value(metadata i8* %incdec.ptr76.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  br label %if.end.77.i, !dbg !1323

if.end.77.i:                                      ; preds = %if.else.72.i, %if.end.68.i
  %28 = phi i8* [ %incdec.ptr76.i, %if.else.72.i ], [ %25, %if.end.68.i ], !dbg !1388
  %y.0.i = phi double [ %cond.i, %if.else.72.i ], [ %call56.i, %if.end.68.i ], !dbg !1323
  store i8* %28, i8** %s.i, align 8, !dbg !1389, !tbaa !1051
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %29 = load i8, i8* %28, align 1, !dbg !1390, !tbaa !1320
  switch i8 %29, label %parse_error.i [
    i8 106, label %if.end.86.i
    i8 74, label %if.end.86.i
  ], !dbg !1392

if.end.86.i:                                      ; preds = %if.end.77.i, %if.end.77.i
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %incdec.ptr87.i = getelementptr i8, i8* %28, i64 1, !dbg !1388
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  store i8* %incdec.ptr87.i, i8** %s.i, align 8, !dbg !1388, !tbaa !1051
  br label %while.cond.128.preheader.i, !dbg !1393

if.then.96.i:                                     ; preds = %if.then.48.i, %if.then.48.i
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %incdec.ptr97.i = getelementptr i8, i8* %21, i64 1, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %incdec.ptr97.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  store i8* %incdec.ptr97.i, i8** %s.i, align 8, !dbg !1394, !tbaa !1051
  call void @llvm.dbg.value(metadata double %call34.i, i64 0, metadata !716, metadata !789) #2, !dbg !1301
  br label %while.cond.128.preheader.i, !dbg !1397

if.else.101.i:                                    ; preds = %if.end.45.i
  %30 = load i8, i8* %21, align 1, !dbg !1398, !tbaa !1320
  switch i8 %30, label %if.end.116.i [
    i8 43, label %if.then.109.i
    i8 45, label %if.then.109.i
  ], !dbg !1399

if.then.109.i:                                    ; preds = %if.else.101.i, %if.else.101.i
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %cmp111.i = icmp eq i8 %30, 43, !dbg !1400
  %cond113.i = select i1 %cmp111.i, double 1.000000e+00, double -1.000000e+00, !dbg !1398
  call void @llvm.dbg.value(metadata double %cond113.i, i64 0, metadata !716, metadata !789) #2, !dbg !1301
  %incdec.ptr114.i = getelementptr i8, i8* %21, i64 1, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %incdec.ptr114.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  store i8* %incdec.ptr114.i, i8** %s.i, align 8, !dbg !1401, !tbaa !1051
  %.pre254.i = load i8, i8* %incdec.ptr114.i, align 1, !dbg !1402, !tbaa !1320
  br label %if.end.116.i, !dbg !1404

if.end.116.i:                                     ; preds = %if.then.109.i, %if.else.101.i
  %31 = phi i8 [ %.pre254.i, %if.then.109.i ], [ %30, %if.else.101.i ], !dbg !1402
  %32 = phi i8* [ %incdec.ptr114.i, %if.then.109.i ], [ %21, %if.else.101.i ], !dbg !1405
  %y.1.i = phi double [ %cond113.i, %if.then.109.i ], [ 1.000000e+00, %if.else.101.i ], !dbg !1323
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  switch i8 %31, label %parse_error.i [
    i8 106, label %if.end.125.i
    i8 74, label %if.end.125.i
  ], !dbg !1406

if.end.125.i:                                     ; preds = %if.end.116.i, %if.end.116.i
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %incdec.ptr126.i = getelementptr i8, i8* %32, i64 1, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %incdec.ptr126.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  store i8* %incdec.ptr126.i, i8** %s.i, align 8, !dbg !1405, !tbaa !1051
  br label %while.cond.128.preheader.i, !dbg !1323

while.cond.128.preheader.i:                       ; preds = %if.end.125.i, %if.then.96.i, %if.end.86.i, %if.then.48.i
  %.in.i = phi i8* [ %21, %if.then.48.i ], [ %incdec.ptr126.i, %if.end.125.i ], [ %incdec.ptr97.i, %if.then.96.i ], [ %incdec.ptr87.i, %if.end.86.i ], !dbg !1323
  %y.2.ph.i = phi double [ 0.000000e+00, %if.then.48.i ], [ %y.1.i, %if.end.125.i ], [ %call34.i, %if.then.96.i ], [ %y.0.i, %if.end.86.i ], !dbg !1323
  %x.0.ph.i = phi double [ %call34.i, %if.then.48.i ], [ 0.000000e+00, %if.end.125.i ], [ 0.000000e+00, %if.then.96.i ], [ %call34.i, %if.end.86.i ], !dbg !1323
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %33 = load i8, i8* %.in.i, align 1, !dbg !1407, !tbaa !1320
  %idxprom132.241.i = zext i8 %33 to i64, !dbg !1407
  %arrayidx133.242.i = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom132.241.i, !dbg !1407
  %34 = load i32, i32* %arrayidx133.242.i, align 4, !dbg !1407, !tbaa !833
  %and134.243.i = and i32 %34, 8, !dbg !1407
  %tobool135.244.i = icmp eq i32 %and134.243.i, 0, !dbg !1408
  br i1 %tobool135.244.i, label %while.end.138.i, label %while.body.136.i.preheader, !dbg !1408

while.body.136.i.preheader:                       ; preds = %while.cond.128.preheader.i
  br label %while.body.136.i, !dbg !1409

while.body.136.i:                                 ; preds = %while.body.136.i.preheader, %while.body.136.i
  %35 = phi i8* [ %incdec.ptr137.i, %while.body.136.i ], [ %.in.i, %while.body.136.i.preheader ], !dbg !1323
  %incdec.ptr137.i = getelementptr i8, i8* %35, i64 1, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %incdec.ptr137.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  store i8* %incdec.ptr137.i, i8** %s.i, align 8, !dbg !1409, !tbaa !1051
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %36 = load i8, i8* %incdec.ptr137.i, align 1, !dbg !1407, !tbaa !1320
  %idxprom132.i = zext i8 %36 to i64, !dbg !1407
  %arrayidx133.i = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom132.i, !dbg !1407
  %37 = load i32, i32* %arrayidx133.i, align 4, !dbg !1407, !tbaa !833
  %and134.i = and i32 %37, 8, !dbg !1407
  %tobool135.i = icmp eq i32 %and134.i, 0, !dbg !1408
  br i1 %tobool135.i, label %while.end.138.i.loopexit, label %while.body.136.i, !dbg !1408

while.end.138.i.loopexit:                         ; preds = %while.body.136.i
  %.lcssa = phi i8 [ %36, %while.body.136.i ]
  %incdec.ptr137.i.lcssa = phi i8* [ %incdec.ptr137.i, %while.body.136.i ]
  br label %while.end.138.i, !dbg !1410

while.end.138.i:                                  ; preds = %while.end.138.i.loopexit, %while.cond.128.preheader.i
  %.in.256.i = phi i8* [ %.in.i, %while.cond.128.preheader.i ], [ %incdec.ptr137.i.lcssa, %while.end.138.i.loopexit ], !dbg !1323
  %.lcssa238.i = phi i8 [ %33, %while.cond.128.preheader.i ], [ %.lcssa, %while.end.138.i.loopexit ], !dbg !1323
  %tobool139.i = icmp eq i32 %got_bracket.0.i, 0, !dbg !1410
  br i1 %tobool139.i, label %if.end.158.i, label %if.then.140.i, !dbg !1412

if.then.140.i:                                    ; preds = %while.end.138.i
  %cmp142.i = icmp eq i8 %.lcssa238.i, 41, !dbg !1413
  br i1 %cmp142.i, label %while.cond.147.i.preheader, label %parse_error.i, !dbg !1416

while.cond.147.i.preheader:                       ; preds = %if.then.140.i
  br label %while.cond.147.i, !dbg !1417

while.cond.147.i:                                 ; preds = %while.cond.147.i.preheader, %while.cond.147.i
  %.pn.i = phi i8* [ %storemerge.i, %while.cond.147.i ], [ %.in.256.i, %while.cond.147.i.preheader ], !dbg !1323
  %storemerge.i = getelementptr i8, i8* %.pn.i, i64 1, !dbg !1417
  store i8* %storemerge.i, i8** %s.i, align 8, !dbg !1418, !tbaa !1051
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %38 = load i8, i8* %storemerge.i, align 1, !dbg !1419, !tbaa !1320
  %idxprom151.i = zext i8 %38 to i64, !dbg !1419
  %arrayidx152.i = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom151.i, !dbg !1419
  %39 = load i32, i32* %arrayidx152.i, align 4, !dbg !1419, !tbaa !833
  %and153.i = and i32 %39, 8, !dbg !1419
  %tobool154.i = icmp eq i32 %and153.i, 0, !dbg !1422
  br i1 %tobool154.i, label %if.end.158.i.loopexit, label %while.cond.147.i, !dbg !1422

if.end.158.i.loopexit:                            ; preds = %while.cond.147.i
  %storemerge.i.lcssa = phi i8* [ %storemerge.i, %while.cond.147.i ]
  br label %if.end.158.i, !dbg !1423

if.end.158.i:                                     ; preds = %if.end.158.i.loopexit, %while.end.138.i
  %.in.257.i = phi i8* [ %.in.256.i, %while.end.138.i ], [ %storemerge.i.lcssa, %if.end.158.i.loopexit ], !dbg !1323
  %40 = ptrtoint i8* %.in.257.i to i64, !dbg !1423
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !712, metadata !789) #2, !dbg !1312
  %sub.ptr.sub.i = sub i64 %40, %11, !dbg !1425
  call void @llvm.dbg.value(metadata i64* %len.i, i64 0, metadata !720, metadata !789) #2, !dbg !1310
  %41 = load i64, i64* %len.i, align 8, !dbg !1426, !tbaa !1427
  %cmp159.i = icmp eq i64 %sub.ptr.sub.i, %41, !dbg !1428
  br i1 %cmp159.i, label %do.body.i, label %parse_error.i, !dbg !1429

do.body.i:                                        ; preds = %if.end.158.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !721, metadata !789) #2, !dbg !1430
  %cmp163.i = icmp eq %struct._object* %call.i, null, !dbg !1432
  br i1 %cmp163.i, label %if.end.173.i, label %do.body.166.i, !dbg !1433

do.body.166.i:                                    ; preds = %do.body.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !723, metadata !789) #2, !dbg !1434
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1436
  %42 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1436, !tbaa !949
  %dec.i = add i64 %42, -1, !dbg !1436
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1436, !tbaa !949
  %cmp167.i = icmp eq i64 %dec.i, 0, !dbg !1436
  br i1 %cmp167.i, label %if.else.170.i, label %if.end.173.i, !dbg !1438

if.else.170.i:                                    ; preds = %do.body.166.i
  %ob_type171.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1439
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type171.i, align 8, !dbg !1439, !tbaa !945
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i64 0, i32 4, !dbg !1439
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1439, !tbaa !1019
  call void %44(%struct._object* %call.i) #2, !dbg !1439
  br label %if.end.173.i, !dbg !1323

if.end.173.i:                                     ; preds = %if.else.170.i, %do.body.166.i, %do.body.i
  call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !735, metadata !789) #2, !dbg !1441
  call void @llvm.dbg.value(metadata double %x.0.ph.i, i64 0, metadata !736, metadata !789) #2, !dbg !1443
  call void @llvm.dbg.value(metadata double %y.2.ph.i, i64 0, metadata !737, metadata !789) #2, !dbg !1444
  call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !738, metadata !789) #2, !dbg !1445
  call void @llvm.dbg.value(metadata double %x.0.ph.i, i64 0, metadata !738, metadata !785) #2, !dbg !1445
  call void @llvm.dbg.value(metadata double %y.2.ph.i, i64 0, metadata !738, metadata !787) #2, !dbg !1445
  call void @llvm.dbg.value(metadata double %x.0.ph.i, i64 0, metadata !744, metadata !785) #2, !dbg !1446
  call void @llvm.dbg.value(metadata double %y.2.ph.i, i64 0, metadata !744, metadata !787) #2, !dbg !1446
  call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !743, metadata !789) #2, !dbg !1448
  call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !744, metadata !789) #2, !dbg !1446
  %tp_alloc.i.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1449
  %45 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc.i.i.i, align 8, !dbg !1449, !tbaa !1450
  %call.i.i.i = call %struct._object* %45(%struct._typeobject* %type, i64 0) #2, !dbg !1451
  call void @llvm.dbg.value(metadata %struct._object* %call.i.i.i, i64 0, metadata !745, metadata !789) #2, !dbg !1452
  %cmp.i.i.i = icmp eq %struct._object* %call.i.i.i, null, !dbg !1453
  br i1 %cmp.i.i.i, label %complex_subtype_from_string.exit, label %if.then.i.i.i, !dbg !1455

if.then.i.i.i:                                    ; preds = %if.end.173.i
  %cval.sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i.i, i64 1, !dbg !1456
  %46 = bitcast %struct._object* %cval.sroa.0.0..sroa_idx.i.i.i to double*, !dbg !1456
  store double %x.0.ph.i, double* %46, align 8, !dbg !1456
  %cval.sroa.2.0..sroa_idx6.i.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i.i, i64 1, i32 1, !dbg !1456
  %47 = bitcast %struct._typeobject** %cval.sroa.2.0..sroa_idx6.i.i.i to double*, !dbg !1456
  store double %y.2.ph.i, double* %47, align 8, !dbg !1456
  br label %complex_subtype_from_string.exit, !dbg !1457

parse_error.i:                                    ; preds = %if.end.158.i, %if.then.140.i, %if.end.116.i, %if.end.77.i
  %48 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1458, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0)) #2, !dbg !1459
  br label %do.body.177.i, !dbg !1459

do.body.177.i:                                    ; preds = %parse_error.i, %if.then.62.i, %if.then.39.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !726, metadata !789) #2, !dbg !1460
  %cmp179.i = icmp eq %struct._object* %call.i, null, !dbg !1462
  br i1 %cmp179.i, label %complex_subtype_from_string.exit, label %do.body.182.i, !dbg !1463

do.body.182.i:                                    ; preds = %do.body.177.i, %if.end.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !728, metadata !789) #2, !dbg !1464
  %ob_refcnt184.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1466
  %49 = load i64, i64* %ob_refcnt184.i, align 8, !dbg !1466, !tbaa !949
  %dec185.i = add i64 %49, -1, !dbg !1466
  store i64 %dec185.i, i64* %ob_refcnt184.i, align 8, !dbg !1466, !tbaa !949
  %cmp186.i = icmp eq i64 %dec185.i, 0, !dbg !1466
  br i1 %cmp186.i, label %if.else.189.i, label %complex_subtype_from_string.exit, !dbg !1468

if.else.189.i:                                    ; preds = %do.body.182.i
  %ob_type190.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1469
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type190.i, align 8, !dbg !1469, !tbaa !945
  %tp_dealloc191.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i64 0, i32 4, !dbg !1469
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc191.i, align 8, !dbg !1469, !tbaa !1019
  call void %51(%struct._object* %call.i) #2, !dbg !1469
  br label %complex_subtype_from_string.exit, !dbg !1323

complex_subtype_from_string.exit:                 ; preds = %if.then.i, %if.end.173.i, %if.then.i.i.i, %do.body.177.i, %do.body.182.i, %if.else.189.i
  %retval.0.i = phi %struct._object* [ null, %if.then.i ], [ null, %if.else.189.i ], [ null, %do.body.182.i ], [ null, %do.body.177.i ], [ null, %if.end.173.i ], [ %call.i.i.i, %if.then.i.i.i ], !dbg !1323
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1471
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !1471
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !1471
  br label %cleanup, !dbg !1472

if.end.20:                                        ; preds = %if.end.12
  br i1 %cmp16, label %land.lhs.true.22, label %if.end.28, !dbg !1473

land.lhs.true.22:                                 ; preds = %if.end.20
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1475
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1475, !tbaa !945
  %tp_flags24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i64 0, i32 19, !dbg !1475
  %53 = load i64, i64* %tp_flags24, align 8, !dbg !1475, !tbaa !1164
  %and25 = and i64 %53, 268435456, !dbg !1475
  %cmp26 = icmp eq i64 %and25, 0, !dbg !1475
  br i1 %cmp26, label %if.end.28, label %if.then.27, !dbg !1477

if.then.27:                                       ; preds = %land.lhs.true.22
  %54 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1478, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0)) #2, !dbg !1480
  br label %cleanup, !dbg !1481

if.end.28:                                        ; preds = %land.lhs.true.22, %if.end.20
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  %call29 = call fastcc %struct._object* @try_complex_special_method(%struct._object* %2), !dbg !1482
  call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !670, metadata !789), !dbg !1483
  %tobool30 = icmp eq %struct._object* %call29, null, !dbg !1484
  br i1 %tobool30, label %if.else, label %if.then.31, !dbg !1486

if.then.31:                                       ; preds = %if.end.28
  call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !668, metadata !789), !dbg !1266
  store %struct._object* %call29, %struct._object** %r, align 8, !dbg !1487, !tbaa !1051
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !675, metadata !789), !dbg !1263
  br label %if.end.36, !dbg !1489

if.else:                                          ; preds = %if.end.28
  %call32 = call %struct._object* @PyErr_Occurred() #2, !dbg !1490
  %tobool33 = icmp eq %struct._object* %call32, null, !dbg !1490
  br i1 %tobool33, label %if.else.if.end.36_crit_edge, label %cleanup, !dbg !1492

if.else.if.end.36_crit_edge:                      ; preds = %if.else
  %.pre255 = load %struct._object*, %struct._object** %r, align 8, !dbg !1493, !tbaa !1051
  br label %if.end.36, !dbg !1492

if.end.36:                                        ; preds = %if.else.if.end.36_crit_edge, %if.then.31
  %55 = phi %struct._object* [ %call29, %if.then.31 ], [ %.pre255, %if.else.if.end.36_crit_edge ], !dbg !1494
  %own_r.0 = phi i32 [ 1, %if.then.31 ], [ 0, %if.else.if.end.36_crit_edge ]
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %55, i64 0, i32 1, !dbg !1495
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !1494, !tbaa !945
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i64 0, i32 10, !dbg !1496
  %57 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !1496, !tbaa !1497
  call void @llvm.dbg.value(metadata %struct.PyNumberMethods* %57, i64 0, metadata !671, metadata !789), !dbg !1498
  call void @llvm.dbg.value(metadata %struct._object** %i, i64 0, metadata !669, metadata !789), !dbg !1268
  %58 = load %struct._object*, %struct._object** %i, align 8, !dbg !1499, !tbaa !1051
  %cmp38 = icmp eq %struct._object* %58, null, !dbg !1500
  br i1 %cmp38, label %if.end.42, label %if.then.39, !dbg !1502

if.then.39:                                       ; preds = %if.end.36
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %58, i64 0, i32 1, !dbg !1503
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1503, !tbaa !945
  %tp_as_number41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i64 0, i32 10, !dbg !1504
  %60 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number41, align 8, !dbg !1504, !tbaa !1497
  call void @llvm.dbg.value(metadata %struct.PyNumberMethods* %60, i64 0, metadata !672, metadata !789), !dbg !1260
  br label %if.end.42, !dbg !1505

if.end.42:                                        ; preds = %if.end.36, %if.then.39
  %nbi.0 = phi %struct.PyNumberMethods* [ %60, %if.then.39 ], [ null, %if.end.36 ]
  %cmp43 = icmp eq %struct.PyNumberMethods* %57, null, !dbg !1506
  br i1 %cmp43, label %if.then.52, label %lor.lhs.false, !dbg !1507

lor.lhs.false:                                    ; preds = %if.end.42
  %nb_float = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %57, i64 0, i32 18, !dbg !1508
  %61 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float, align 8, !dbg !1508, !tbaa !1509
  %cmp44 = icmp eq %struct._object* (%struct._object*)* %61, null, !dbg !1511
  br i1 %cmp44, label %if.then.52, label %lor.lhs.false.45, !dbg !1512

lor.lhs.false.45:                                 ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct._object** %i, i64 0, metadata !669, metadata !789), !dbg !1268
  br i1 %cmp38, label %if.end.65, label %land.lhs.true.47, !dbg !1513

land.lhs.true.47:                                 ; preds = %lor.lhs.false.45
  %cmp48 = icmp eq %struct.PyNumberMethods* %nbi.0, null, !dbg !1514
  br i1 %cmp48, label %if.then.52, label %lor.lhs.false.49, !dbg !1515

lor.lhs.false.49:                                 ; preds = %land.lhs.true.47
  %nb_float50 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %nbi.0, i64 0, i32 18, !dbg !1516
  %62 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float50, align 8, !dbg !1516, !tbaa !1509
  %cmp51 = icmp eq %struct._object* (%struct._object*)* %62, null, !dbg !1517
  br i1 %cmp51, label %if.then.52, label %if.end.65, !dbg !1518

if.then.52:                                       ; preds = %lor.lhs.false.49, %land.lhs.true.47, %lor.lhs.false, %if.end.42
  %63 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1519, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i64 0, i32 1, !dbg !1520
  %64 = load i8*, i8** %tp_name, align 8, !dbg !1520, !tbaa !1521
  %call54 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %63, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i64 0, i64 0), i8* %64) #2, !dbg !1522
  %tobool55 = icmp eq i32 %own_r.0, 0, !dbg !1523
  br i1 %tobool55, label %cleanup, label %do.body, !dbg !1524

do.body:                                          ; preds = %if.then.52
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  %65 = load %struct._object*, %struct._object** %r, align 8, !dbg !1525, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object* %65, i64 0, metadata !678, metadata !789), !dbg !1525
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %65, i64 0, i32 0, !dbg !1527
  %66 = load i64, i64* %ob_refcnt58, align 8, !dbg !1527, !tbaa !949
  %dec = add i64 %66, -1, !dbg !1527
  store i64 %dec, i64* %ob_refcnt58, align 8, !dbg !1527, !tbaa !949
  %cmp59 = icmp eq i64 %dec, 0, !dbg !1527
  br i1 %cmp59, label %if.else.61, label %cleanup, !dbg !1529

if.else.61:                                       ; preds = %do.body
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %65, i64 0, i32 1, !dbg !1530
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !1530, !tbaa !945
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i64 0, i32 4, !dbg !1530
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1530, !tbaa !1019
  call void %68(%struct._object* %65) #2, !dbg !1530
  br label %cleanup

if.end.65:                                        ; preds = %lor.lhs.false.45, %lor.lhs.false.49
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  %cmp67 = icmp eq %struct._typeobject* %56, @PyComplex_Type, !dbg !1532
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false.68, !dbg !1532

lor.lhs.false.68:                                 ; preds = %if.end.65
  %call70 = call i32 @PyType_IsSubtype(%struct._typeobject* %56, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1533
  %tobool71 = icmp eq i32 %call70, 0, !dbg !1533
  %69 = load %struct._object*, %struct._object** %r, align 8, !dbg !1535, !tbaa !1051
  br i1 %tobool71, label %if.else.89, label %if.then.72, !dbg !1536

if.then.72:                                       ; preds = %lor.lhs.false.68, %if.end.65
  %70 = phi %struct._object* [ %55, %if.end.65 ], [ %69, %lor.lhs.false.68 ], !dbg !1537
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  %cr.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %70, i64 1, !dbg !1538
  %71 = bitcast %struct._object* %cr.sroa.0.0..sroa_idx to double*, !dbg !1538
  %cr.sroa.0.0.copyload = load double, double* %71, align 8, !dbg !1538
  call void @llvm.dbg.value(metadata double %cr.sroa.0.0.copyload, i64 0, metadata !673, metadata !785), !dbg !1261
  %cr.sroa.7.0..sroa_idx233 = getelementptr inbounds %struct._object, %struct._object* %70, i64 1, i32 1, !dbg !1538
  %72 = bitcast %struct._typeobject** %cr.sroa.7.0..sroa_idx233 to double*, !dbg !1538
  %cr.sroa.7.0.copyload = load double, double* %72, align 8, !dbg !1538
  call void @llvm.dbg.value(metadata double %cr.sroa.7.0.copyload, i64 0, metadata !673, metadata !787), !dbg !1261
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !676, metadata !789), !dbg !1264
  %tobool73 = icmp eq i32 %own_r.0, 0, !dbg !1539
  br i1 %tobool73, label %if.end.145, label %do.body.75, !dbg !1540

do.body.75:                                       ; preds = %if.then.72
  call void @llvm.dbg.value(metadata %struct._object* %70, i64 0, metadata !684, metadata !789), !dbg !1541
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %70, i64 0, i32 0, !dbg !1543
  %73 = load i64, i64* %ob_refcnt78, align 8, !dbg !1543, !tbaa !949
  %dec79 = add i64 %73, -1, !dbg !1543
  store i64 %dec79, i64* %ob_refcnt78, align 8, !dbg !1543, !tbaa !949
  %cmp80 = icmp eq i64 %dec79, 0, !dbg !1543
  br i1 %cmp80, label %if.else.82, label %if.end.145, !dbg !1545

if.else.82:                                       ; preds = %do.body.75
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %70, i64 0, i32 1, !dbg !1546
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8, !dbg !1546, !tbaa !945
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i64 0, i32 4, !dbg !1546
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8, !dbg !1546, !tbaa !1019
  call void %75(%struct._object* %70) #2, !dbg !1546
  br label %if.end.145

if.else.89:                                       ; preds = %lor.lhs.false.68
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  %call90 = call %struct._object* @PyNumber_Float(%struct._object* %69) #2, !dbg !1548
  call void @llvm.dbg.value(metadata %struct._object* %call90, i64 0, metadata !670, metadata !789), !dbg !1483
  %tobool91 = icmp eq i32 %own_r.0, 0, !dbg !1549
  br i1 %tobool91, label %if.end.106, label %do.body.93, !dbg !1550

do.body.93:                                       ; preds = %if.else.89
  call void @llvm.dbg.value(metadata %struct._object** %r, i64 0, metadata !668, metadata !789), !dbg !1266
  %76 = load %struct._object*, %struct._object** %r, align 8, !dbg !1551, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object* %76, i64 0, metadata !690, metadata !789), !dbg !1551
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %76, i64 0, i32 0, !dbg !1553
  %77 = load i64, i64* %ob_refcnt96, align 8, !dbg !1553, !tbaa !949
  %dec97 = add i64 %77, -1, !dbg !1553
  store i64 %dec97, i64* %ob_refcnt96, align 8, !dbg !1553, !tbaa !949
  %cmp98 = icmp eq i64 %dec97, 0, !dbg !1553
  br i1 %cmp98, label %if.else.100, label %if.end.106, !dbg !1555

if.else.100:                                      ; preds = %do.body.93
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %76, i64 0, i32 1, !dbg !1556
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8, !dbg !1556, !tbaa !945
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i64 0, i32 4, !dbg !1556
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8, !dbg !1556, !tbaa !1019
  call void %79(%struct._object* %76) #2, !dbg !1556
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.100, %do.body.93, %if.else.89
  %cmp107 = icmp eq %struct._object* %call90, null, !dbg !1558
  br i1 %cmp107, label %cleanup, label %if.end.109, !dbg !1560

if.end.109:                                       ; preds = %if.end.106
  %ob_type110 = getelementptr inbounds %struct._object, %struct._object* %call90, i64 0, i32 1, !dbg !1561
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8, !dbg !1561, !tbaa !945
  %cmp111 = icmp eq %struct._typeobject* %80, @PyFloat_Type, !dbg !1561
  br i1 %cmp111, label %if.end.130, label %lor.lhs.false.112, !dbg !1561

lor.lhs.false.112:                                ; preds = %if.end.109
  %call114 = call i32 @PyType_IsSubtype(%struct._typeobject* %80, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1562
  %tobool115 = icmp eq i32 %call114, 0, !dbg !1562
  br i1 %tobool115, label %if.then.116, label %if.end.130, !dbg !1564

if.then.116:                                      ; preds = %lor.lhs.false.112
  %81 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1565, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0)) #2, !dbg !1566
  call void @llvm.dbg.value(metadata %struct._object* %call90, i64 0, metadata !695, metadata !789), !dbg !1567
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %call90, i64 0, i32 0, !dbg !1569
  %82 = load i64, i64* %ob_refcnt120, align 8, !dbg !1569, !tbaa !949
  %dec121 = add i64 %82, -1, !dbg !1569
  store i64 %dec121, i64* %ob_refcnt120, align 8, !dbg !1569, !tbaa !949
  %cmp122 = icmp eq i64 %dec121, 0, !dbg !1569
  br i1 %cmp122, label %if.else.124, label %cleanup, !dbg !1571

if.else.124:                                      ; preds = %if.then.116
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8, !dbg !1572, !tbaa !945
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i64 0, i32 4, !dbg !1572
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8, !dbg !1572, !tbaa !1019
  call void %84(%struct._object* %call90) #2, !dbg !1572
  br label %cleanup

if.end.130:                                       ; preds = %lor.lhs.false.112, %if.end.109
  %call131 = call double @PyFloat_AsDouble(%struct._object* %call90) #2, !dbg !1574
  call void @llvm.dbg.value(metadata double %call131, i64 0, metadata !673, metadata !785), !dbg !1261
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !673, metadata !787), !dbg !1261
  call void @llvm.dbg.value(metadata %struct._object* %call90, i64 0, metadata !699, metadata !789), !dbg !1575
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %call90, i64 0, i32 0, !dbg !1577
  %85 = load i64, i64* %ob_refcnt135, align 8, !dbg !1577, !tbaa !949
  %dec136 = add i64 %85, -1, !dbg !1577
  store i64 %dec136, i64* %ob_refcnt135, align 8, !dbg !1577, !tbaa !949
  %cmp137 = icmp eq i64 %dec136, 0, !dbg !1577
  br i1 %cmp137, label %if.else.139, label %if.end.145, !dbg !1579

if.else.139:                                      ; preds = %if.end.130
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8, !dbg !1580, !tbaa !945
  %tp_dealloc141 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i64 0, i32 4, !dbg !1580
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc141, align 8, !dbg !1580, !tbaa !1019
  call void %87(%struct._object* %call90) #2, !dbg !1580
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.139, %if.end.130, %if.else.82, %do.body.75, %if.then.72
  %cr_is_complex.0 = phi i32 [ 1, %if.then.72 ], [ 1, %do.body.75 ], [ 1, %if.else.82 ], [ 0, %if.end.130 ], [ 0, %if.else.139 ]
  %cr.sroa.0.0 = phi double [ %cr.sroa.0.0.copyload, %if.then.72 ], [ %cr.sroa.0.0.copyload, %do.body.75 ], [ %cr.sroa.0.0.copyload, %if.else.82 ], [ %call131, %if.end.130 ], [ %call131, %if.else.139 ]
  %cr.sroa.7.0 = phi double [ %cr.sroa.7.0.copyload, %if.then.72 ], [ %cr.sroa.7.0.copyload, %do.body.75 ], [ %cr.sroa.7.0.copyload, %if.else.82 ], [ 0.000000e+00, %if.end.130 ], [ 0.000000e+00, %if.else.139 ]
  call void @llvm.dbg.value(metadata %struct._object** %i, i64 0, metadata !669, metadata !789), !dbg !1268
  %88 = load %struct._object*, %struct._object** %i, align 8, !dbg !1582, !tbaa !1051
  %cmp146 = icmp eq %struct._object* %88, null, !dbg !1583
  br i1 %cmp146, label %if.end.180, label %if.else.149, !dbg !1584

if.else.149:                                      ; preds = %if.end.145
  %89 = bitcast %struct._object* %88 to %struct.PyComplexObject*, !dbg !1584
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %88, i64 0, i32 1, !dbg !1585
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8, !dbg !1585, !tbaa !945
  %cmp151 = icmp eq %struct._typeobject* %90, @PyComplex_Type, !dbg !1585
  br i1 %cmp151, label %if.then.156, label %lor.lhs.false.152, !dbg !1585

lor.lhs.false.152:                                ; preds = %if.else.149
  %call154 = call i32 @PyType_IsSubtype(%struct._typeobject* %90, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1586
  %tobool155 = icmp eq i32 %call154, 0, !dbg !1586
  br i1 %tobool155, label %if.else.158, label %lor.lhs.false.152.if.then.156_crit_edge, !dbg !1588

lor.lhs.false.152.if.then.156_crit_edge:          ; preds = %lor.lhs.false.152
  %.phi.trans.insert = bitcast %struct._object** %i to %struct.PyComplexObject**, !dbg !1589
  %.pre257 = load %struct.PyComplexObject*, %struct.PyComplexObject** %.phi.trans.insert, align 8, !dbg !1589, !tbaa !1051
  br label %if.then.156, !dbg !1588

if.then.156:                                      ; preds = %if.else.149, %lor.lhs.false.152.if.then.156_crit_edge
  %91 = phi %struct.PyComplexObject* [ %.pre257, %lor.lhs.false.152.if.then.156_crit_edge ], [ %89, %if.else.149 ], !dbg !1589
  call void @llvm.dbg.value(metadata %struct._object** %i, i64 0, metadata !669, metadata !789), !dbg !1268
  %ci.sroa.0.0..sroa_idx = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %91, i64 0, i32 1, i32 0, !dbg !1591
  %ci.sroa.0.0.copyload = load double, double* %ci.sroa.0.0..sroa_idx, align 8, !dbg !1591
  call void @llvm.dbg.value(metadata double %ci.sroa.0.0.copyload, i64 0, metadata !674, metadata !785), !dbg !1262
  %ci.sroa.8.0..sroa_idx229 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %91, i64 0, i32 1, i32 1, !dbg !1591
  %ci.sroa.8.0.copyload = load double, double* %ci.sroa.8.0..sroa_idx229, align 8, !dbg !1591
  call void @llvm.dbg.value(metadata double %ci.sroa.8.0.copyload, i64 0, metadata !674, metadata !787), !dbg !1262
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !677, metadata !789), !dbg !1265
  br label %if.end.180, !dbg !1592

if.else.158:                                      ; preds = %lor.lhs.false.152
  %nb_float159 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %nbi.0, i64 0, i32 18, !dbg !1593
  %92 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float159, align 8, !dbg !1593, !tbaa !1509
  call void @llvm.dbg.value(metadata %struct._object** %i, i64 0, metadata !669, metadata !789), !dbg !1268
  %93 = load %struct._object*, %struct._object** %i, align 8, !dbg !1594, !tbaa !1051
  %call160 = call %struct._object* %92(%struct._object* %93) #2, !dbg !1595
  call void @llvm.dbg.value(metadata %struct._object* %call160, i64 0, metadata !670, metadata !789), !dbg !1483
  %cmp161 = icmp eq %struct._object* %call160, null, !dbg !1596
  br i1 %cmp161, label %cleanup, label %if.end.163, !dbg !1598

if.end.163:                                       ; preds = %if.else.158
  %call164 = call double @PyFloat_AsDouble(%struct._object* %call160) #2, !dbg !1599
  call void @llvm.dbg.value(metadata double %call164, i64 0, metadata !674, metadata !785), !dbg !1262
  call void @llvm.dbg.value(metadata %struct._object* %call160, i64 0, metadata !701, metadata !789), !dbg !1600
  %ob_refcnt169 = getelementptr inbounds %struct._object, %struct._object* %call160, i64 0, i32 0, !dbg !1602
  %94 = load i64, i64* %ob_refcnt169, align 8, !dbg !1602, !tbaa !949
  %dec170 = add i64 %94, -1, !dbg !1602
  store i64 %dec170, i64* %ob_refcnt169, align 8, !dbg !1602, !tbaa !949
  %cmp171 = icmp eq i64 %dec170, 0, !dbg !1602
  br i1 %cmp171, label %if.else.173, label %if.end.180, !dbg !1604

if.else.173:                                      ; preds = %if.end.163
  %ob_type174 = getelementptr inbounds %struct._object, %struct._object* %call160, i64 0, i32 1, !dbg !1605
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type174, align 8, !dbg !1605, !tbaa !945
  %tp_dealloc175 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i64 0, i32 4, !dbg !1605
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc175, align 8, !dbg !1605, !tbaa !1019
  call void %96(%struct._object* %call160) #2, !dbg !1605
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.173, %if.end.163, %if.end.145, %if.then.156
  %ci.sroa.0.0 = phi double [ %ci.sroa.0.0.copyload, %if.then.156 ], [ 0.000000e+00, %if.end.145 ], [ %call164, %if.end.163 ], [ %call164, %if.else.173 ]
  %ci_is_complex.0 = phi i1 [ true, %if.then.156 ], [ false, %if.end.145 ], [ false, %if.end.163 ], [ false, %if.else.173 ]
  %ci.sroa.8.0 = phi double [ %ci.sroa.8.0.copyload, %if.then.156 ], [ undef, %if.end.145 ], [ undef, %if.end.163 ], [ undef, %if.else.173 ]
  call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !673, metadata !785), !dbg !1261
  call void @llvm.dbg.value(metadata double %add, i64 0, metadata !674, metadata !785), !dbg !1262
  call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !735, metadata !789) #2, !dbg !1607
  call void @llvm.dbg.value(metadata double %cr.sroa.0.1, i64 0, metadata !736, metadata !789) #2, !dbg !1609
  call void @llvm.dbg.value(metadata double %ci.sroa.0.0.add, i64 0, metadata !737, metadata !789) #2, !dbg !1610
  call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !738, metadata !789) #2, !dbg !1611
  call void @llvm.dbg.value(metadata double %cr.sroa.0.1, i64 0, metadata !738, metadata !785) #2, !dbg !1611
  call void @llvm.dbg.value(metadata double %ci.sroa.0.0.add, i64 0, metadata !738, metadata !787) #2, !dbg !1611
  call void @llvm.dbg.value(metadata double %cr.sroa.0.1, i64 0, metadata !744, metadata !785) #2, !dbg !1612
  call void @llvm.dbg.value(metadata double %ci.sroa.0.0.add, i64 0, metadata !744, metadata !787) #2, !dbg !1612
  call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !743, metadata !789) #2, !dbg !1614
  call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !744, metadata !789) #2, !dbg !1612
  %tp_alloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1615
  %97 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc.i.i, align 8, !dbg !1615, !tbaa !1450
  %call.i.i = call %struct._object* %97(%struct._typeobject* %type, i64 0) #2, !dbg !1616
  call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !745, metadata !789) #2, !dbg !1617
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1618
  br i1 %cmp.i.i, label %cleanup, label %if.then.i.i, !dbg !1619

if.then.i.i:                                      ; preds = %if.end.180
  %tobool186 = icmp eq i32 %cr_is_complex.0, 0, !dbg !1620
  %add = fadd double %cr.sroa.7.0, %ci.sroa.0.0, !dbg !1622
  %ci.sroa.0.0.add = select i1 %tobool186, double %ci.sroa.0.0, double %add, !dbg !1624
  %sub = fsub double %cr.sroa.0.0, %ci.sroa.8.0, !dbg !1625
  %cr.sroa.0.1 = select i1 %ci_is_complex.0, double %sub, double %cr.sroa.0.0, !dbg !1628
  %cval.sroa.0.0..sroa_idx.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 1, !dbg !1629
  %98 = bitcast %struct._object* %cval.sroa.0.0..sroa_idx.i.i to double*, !dbg !1629
  store double %cr.sroa.0.1, double* %98, align 8, !dbg !1629
  %cval.sroa.2.0..sroa_idx6.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 1, i32 1, !dbg !1629
  %99 = bitcast %struct._typeobject** %cval.sroa.2.0..sroa_idx6.i.i to double*, !dbg !1629
  store double %ci.sroa.0.0.add, double* %99, align 8, !dbg !1629
  br label %cleanup, !dbg !1630

cleanup:                                          ; preds = %if.then.i.i, %if.end.180, %if.else.158, %if.else.124, %if.then.116, %if.end.106, %if.then.52, %do.body, %if.else.61, %if.else, %entry, %if.then.27, %complex_subtype_from_string.exit, %if.then.17, %if.then.11
  %retval.0 = phi %struct._object* [ %2, %if.then.11 ], [ null, %if.then.17 ], [ %retval.0.i, %complex_subtype_from_string.exit ], [ null, %if.then.27 ], [ null, %entry ], [ null, %if.else ], [ null, %if.else.61 ], [ null, %do.body ], [ null, %if.then.52 ], [ null, %if.end.106 ], [ null, %if.then.116 ], [ null, %if.else.124 ], [ null, %if.else.158 ], [ null, %if.end.180 ], [ %call.i.i, %if.then.i.i ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1631
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1631
  ret %struct._object* %retval.0, !dbg !1631
}

declare void @PyObject_Free(i8*) #6

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #6

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #6

declare void @PyErr_SetString(%struct._object*, i8*) #6

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #4

declare i8* @PyOS_double_to_string(double, i8 signext, i32, i32, i32*) #6

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #6

declare void @PyMem_Free(i8*) #6

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_add(%struct._object* %v, %struct._object* %w) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !509, metadata !789), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !520, metadata !789), !dbg !1633
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !509, metadata !789), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !509, metadata !789), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !509, metadata !789), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !509, metadata !789), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !510, metadata !789), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !520, metadata !789), !dbg !1639
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !510, metadata !789), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !510, metadata !789), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !510, metadata !789), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !510, metadata !789), !dbg !1638
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !511, metadata !789), !dbg !1644
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1645
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1645, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %0, @PyComplex_Type, !dbg !1645
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1645

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1646
  %tobool = icmp eq i32 %call, 0, !dbg !1646
  br i1 %tobool, label %if.else, label %if.then, !dbg !1648

if.then:                                          ; preds = %lor.lhs.false, %entry
  %a.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, !dbg !1649
  %1 = bitcast %struct._object* %a.sroa.0.0..sroa_idx to <2 x double>*, !dbg !1649
  %2 = load <2 x double>, <2 x double>* %1, align 8, !dbg !1649
  br label %if.end.5, !dbg !1649

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !512, metadata !789), !dbg !1652
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1653
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !522, metadata !789) #2, !dbg !1654
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1655, !tbaa !945
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1655
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1655, !tbaa !1164
  %and.i = and i64 %4, 16777216, !dbg !1655
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !1655
  br i1 %cmp.i, label %if.end.6.i, label %if.then.i, !dbg !1656

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !1657
  %cmp3.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !1658
  %5 = insertelement <2 x double> undef, double %call.i, i32 0
  %6 = insertelement <2 x double> %5, double 0.000000e+00, i32 1
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.5, !dbg !1659

land.lhs.true.i:                                  ; preds = %if.then.i
  %call4.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1660
  %tobool.i = icmp eq %struct._object* %call4.i, null, !dbg !1660
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !1661

if.end.6.i:                                       ; preds = %if.else
  %cmp8.i = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !1662
  br i1 %cmp8.i, label %if.then.12.i, label %lor.lhs.false.i, !dbg !1662

lor.lhs.false.i:                                  ; preds = %if.end.6.i
  %call10.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1663
  %tobool11.i = icmp eq i32 %call10.i, 0, !dbg !1663
  br i1 %tobool11.i, label %if.end.15.i, label %if.then.12.i, !dbg !1664

if.then.12.i:                                     ; preds = %lor.lhs.false.i, %if.end.6.i
  %call13.i = tail call double @PyFloat_AsDouble(%struct._object* %v) #2, !dbg !1665
  %7 = insertelement <2 x double> undef, double %call13.i, i32 0
  %8 = insertelement <2 x double> %7, double 0.000000e+00, i32 1
  br label %if.end.5, !dbg !1666

if.end.15.i:                                      ; preds = %lor.lhs.false.i
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1667, !tbaa !949
  %inc.i = add i64 %9, 1, !dbg !1667
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1667, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1633
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !509, metadata !789), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !509, metadata !789), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !509, metadata !789), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !509, metadata !789), !dbg !1632
  br label %cleanup, !dbg !1668

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then.12.i, %if.then
  %10 = phi <2 x double> [ %2, %if.then ], [ %8, %if.then.12.i ], [ <double -1.000000e+00, double 0.000000e+00>, %land.lhs.true.i ], [ %6, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1669
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1669, !tbaa !945
  %cmp7 = icmp eq %struct._typeobject* %11, @PyComplex_Type, !dbg !1669
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !1669

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1670
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1670
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !1672

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %b.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, !dbg !1673
  %12 = bitcast %struct._object* %b.sroa.0.0..sroa_idx to <2 x double>*, !dbg !1673
  %13 = load <2 x double>, <2 x double>* %12, align 8, !dbg !1673
  br label %if.end.19, !dbg !1673

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !513, metadata !789), !dbg !1676
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1677
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !522, metadata !789) #2, !dbg !1678
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1679, !tbaa !945
  %tp_flags.i.29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 19, !dbg !1679
  %15 = load i64, i64* %tp_flags.i.29, align 8, !dbg !1679, !tbaa !1164
  %and.i.30 = and i64 %15, 16777216, !dbg !1679
  %cmp.i.31 = icmp eq i64 %and.i.30, 0, !dbg !1679
  br i1 %cmp.i.31, label %if.end.6.i.40, label %if.then.i.34, !dbg !1680

if.then.i.34:                                     ; preds = %if.else.14
  %call.i.32 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !1681
  %cmp3.i.33 = fcmp oeq double %call.i.32, -1.000000e+00, !dbg !1682
  %16 = insertelement <2 x double> undef, double %call.i.32, i32 0
  %17 = insertelement <2 x double> %16, double 0.000000e+00, i32 1
  br i1 %cmp3.i.33, label %land.lhs.true.i.37, label %if.end.19, !dbg !1683

land.lhs.true.i.37:                               ; preds = %if.then.i.34
  %call4.i.35 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1684
  %tobool.i.36 = icmp eq %struct._object* %call4.i.35, null, !dbg !1684
  br i1 %tobool.i.36, label %if.end.19, label %cleanup, !dbg !1685

if.end.6.i.40:                                    ; preds = %if.else.14
  %cmp8.i.39 = icmp eq %struct._typeobject* %14, @PyFloat_Type, !dbg !1686
  br i1 %cmp8.i.39, label %if.then.12.i.45, label %lor.lhs.false.i.43, !dbg !1686

lor.lhs.false.i.43:                               ; preds = %if.end.6.i.40
  %call10.i.41 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1687
  %tobool11.i.42 = icmp eq i32 %call10.i.41, 0, !dbg !1687
  br i1 %tobool11.i.42, label %if.end.15.i.47, label %if.then.12.i.45, !dbg !1688

if.then.12.i.45:                                  ; preds = %lor.lhs.false.i.43, %if.end.6.i.40
  %call13.i.44 = tail call double @PyFloat_AsDouble(%struct._object* %w) #2, !dbg !1689
  %18 = insertelement <2 x double> undef, double %call13.i.44, i32 0
  %19 = insertelement <2 x double> %18, double 0.000000e+00, i32 1
  br label %if.end.19, !dbg !1690

if.end.15.i.47:                                   ; preds = %lor.lhs.false.i.43
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1691, !tbaa !949
  %inc.i.46 = add i64 %20, 1, !dbg !1691
  store i64 %inc.i.46, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1691, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1639
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !510, metadata !789), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !510, metadata !789), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !510, metadata !789), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !510, metadata !789), !dbg !1638
  br label %cleanup, !dbg !1692

if.end.19:                                        ; preds = %if.then.i.34, %land.lhs.true.i.37, %if.then.12.i.45, %if.then.12
  %21 = phi <2 x double> [ %13, %if.then.12 ], [ %19, %if.then.12.i.45 ], [ <double -1.000000e+00, double 0.000000e+00>, %land.lhs.true.i.37 ], [ %17, %if.then.i.34 ]
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !395, metadata !785), !dbg !1693
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !395, metadata !787), !dbg !1693
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !396, metadata !785), !dbg !1695
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !396, metadata !787), !dbg !1695
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !395, metadata !789), !dbg !1693
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !396, metadata !789), !dbg !1695
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !397, metadata !789), !dbg !1696
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !397, metadata !785), !dbg !1696
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !397, metadata !787), !dbg !1696
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !511, metadata !785), !dbg !1644
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !511, metadata !787), !dbg !1644
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !450, metadata !785) #2, !dbg !1697
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !450, metadata !787) #2, !dbg !1697
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789) #2, !dbg !1697
  %call.i.50 = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !1699
  %cmp.i.51 = icmp eq i8* %call.i.50, null, !dbg !1700
  br i1 %cmp.i.51, label %if.then.i.52, label %if.end.i, !dbg !1701

if.then.i.52:                                     ; preds = %if.end.19
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1702
  br label %cleanup, !dbg !1703

if.end.i:                                         ; preds = %if.end.19
  %22 = fadd <2 x double> %10, %21, !dbg !1704
  %23 = bitcast i8* %call.i.50 to %struct._object*, !dbg !1705
  %ob_type.i.53 = getelementptr inbounds i8, i8* %call.i.50, i64 8, !dbg !1705
  %24 = bitcast i8* %ob_type.i.53 to %struct._typeobject**, !dbg !1705
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %24, align 8, !dbg !1705, !tbaa !945
  %ob_refcnt.i = bitcast i8* %call.i.50 to i64*, !dbg !1705
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !1705, !tbaa !949
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call.i.50, i64 16, !dbg !1706
  %25 = bitcast i8* %cval.sroa.0.0..sroa_idx.i to <2 x double>*, !dbg !1706
  store <2 x double> %22, <2 x double>* %25, align 8, !dbg !1706
  br label %cleanup, !dbg !1707

cleanup:                                          ; preds = %land.lhs.true.i.37, %land.lhs.true.i, %if.end.i, %if.then.i.52, %if.end.15.i.47, %if.end.15.i
  %retval.0 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.end.15.i ], [ @_Py_NotImplementedStruct, %if.end.15.i.47 ], [ %call1.i, %if.then.i.52 ], [ %23, %if.end.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.37 ]
  ret %struct._object* %retval.0, !dbg !1708
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_sub(%struct._object* %v, %struct._object* %w) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !525, metadata !789), !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !520, metadata !789), !dbg !1710
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !525, metadata !789), !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !525, metadata !789), !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !525, metadata !789), !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !525, metadata !789), !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !526, metadata !789), !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !520, metadata !789), !dbg !1716
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !526, metadata !789), !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !526, metadata !789), !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !526, metadata !789), !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !526, metadata !789), !dbg !1715
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !527, metadata !789), !dbg !1721
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1722
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1722, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %0, @PyComplex_Type, !dbg !1722
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1722

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1723
  %tobool = icmp eq i32 %call, 0, !dbg !1723
  br i1 %tobool, label %if.else, label %if.then, !dbg !1725

if.then:                                          ; preds = %lor.lhs.false, %entry
  %a.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, !dbg !1726
  %1 = bitcast %struct._object* %a.sroa.0.0..sroa_idx to <2 x double>*, !dbg !1726
  %2 = load <2 x double>, <2 x double>* %1, align 8, !dbg !1726
  br label %if.end.5, !dbg !1726

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !528, metadata !789), !dbg !1729
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1730
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !522, metadata !789) #2, !dbg !1731
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1732, !tbaa !945
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1732
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1732, !tbaa !1164
  %and.i = and i64 %4, 16777216, !dbg !1732
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !1732
  br i1 %cmp.i, label %if.end.6.i, label %if.then.i, !dbg !1733

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !1734
  %cmp3.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !1735
  %5 = insertelement <2 x double> undef, double %call.i, i32 0
  %6 = insertelement <2 x double> %5, double 0.000000e+00, i32 1
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.5, !dbg !1736

land.lhs.true.i:                                  ; preds = %if.then.i
  %call4.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1737
  %tobool.i = icmp eq %struct._object* %call4.i, null, !dbg !1737
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !1738

if.end.6.i:                                       ; preds = %if.else
  %cmp8.i = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !1739
  br i1 %cmp8.i, label %if.then.12.i, label %lor.lhs.false.i, !dbg !1739

lor.lhs.false.i:                                  ; preds = %if.end.6.i
  %call10.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1740
  %tobool11.i = icmp eq i32 %call10.i, 0, !dbg !1740
  br i1 %tobool11.i, label %if.end.15.i, label %if.then.12.i, !dbg !1741

if.then.12.i:                                     ; preds = %lor.lhs.false.i, %if.end.6.i
  %call13.i = tail call double @PyFloat_AsDouble(%struct._object* %v) #2, !dbg !1742
  %7 = insertelement <2 x double> undef, double %call13.i, i32 0
  %8 = insertelement <2 x double> %7, double 0.000000e+00, i32 1
  br label %if.end.5, !dbg !1743

if.end.15.i:                                      ; preds = %lor.lhs.false.i
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1744, !tbaa !949
  %inc.i = add i64 %9, 1, !dbg !1744
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1744, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1710
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !525, metadata !789), !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !525, metadata !789), !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !525, metadata !789), !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !525, metadata !789), !dbg !1709
  br label %cleanup, !dbg !1745

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then.12.i, %if.then
  %10 = phi <2 x double> [ %2, %if.then ], [ %8, %if.then.12.i ], [ <double -1.000000e+00, double 0.000000e+00>, %land.lhs.true.i ], [ %6, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1746
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1746, !tbaa !945
  %cmp7 = icmp eq %struct._typeobject* %11, @PyComplex_Type, !dbg !1746
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !1746

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1747
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1747
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !1749

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %b.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, !dbg !1750
  %12 = bitcast %struct._object* %b.sroa.0.0..sroa_idx to <2 x double>*, !dbg !1750
  %13 = load <2 x double>, <2 x double>* %12, align 8, !dbg !1750
  br label %if.end.19, !dbg !1750

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !529, metadata !789), !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1754
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !522, metadata !789) #2, !dbg !1755
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1756, !tbaa !945
  %tp_flags.i.29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 19, !dbg !1756
  %15 = load i64, i64* %tp_flags.i.29, align 8, !dbg !1756, !tbaa !1164
  %and.i.30 = and i64 %15, 16777216, !dbg !1756
  %cmp.i.31 = icmp eq i64 %and.i.30, 0, !dbg !1756
  br i1 %cmp.i.31, label %if.end.6.i.40, label %if.then.i.34, !dbg !1757

if.then.i.34:                                     ; preds = %if.else.14
  %call.i.32 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !1758
  %cmp3.i.33 = fcmp oeq double %call.i.32, -1.000000e+00, !dbg !1759
  %16 = insertelement <2 x double> undef, double %call.i.32, i32 0
  %17 = insertelement <2 x double> %16, double 0.000000e+00, i32 1
  br i1 %cmp3.i.33, label %land.lhs.true.i.37, label %if.end.19, !dbg !1760

land.lhs.true.i.37:                               ; preds = %if.then.i.34
  %call4.i.35 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1761
  %tobool.i.36 = icmp eq %struct._object* %call4.i.35, null, !dbg !1761
  br i1 %tobool.i.36, label %if.end.19, label %cleanup, !dbg !1762

if.end.6.i.40:                                    ; preds = %if.else.14
  %cmp8.i.39 = icmp eq %struct._typeobject* %14, @PyFloat_Type, !dbg !1763
  br i1 %cmp8.i.39, label %if.then.12.i.45, label %lor.lhs.false.i.43, !dbg !1763

lor.lhs.false.i.43:                               ; preds = %if.end.6.i.40
  %call10.i.41 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1764
  %tobool11.i.42 = icmp eq i32 %call10.i.41, 0, !dbg !1764
  br i1 %tobool11.i.42, label %if.end.15.i.47, label %if.then.12.i.45, !dbg !1765

if.then.12.i.45:                                  ; preds = %lor.lhs.false.i.43, %if.end.6.i.40
  %call13.i.44 = tail call double @PyFloat_AsDouble(%struct._object* %w) #2, !dbg !1766
  %18 = insertelement <2 x double> undef, double %call13.i.44, i32 0
  %19 = insertelement <2 x double> %18, double 0.000000e+00, i32 1
  br label %if.end.19, !dbg !1767

if.end.15.i.47:                                   ; preds = %lor.lhs.false.i.43
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1768, !tbaa !949
  %inc.i.46 = add i64 %20, 1, !dbg !1768
  store i64 %inc.i.46, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1768, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1716
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !526, metadata !789), !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !526, metadata !789), !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !526, metadata !789), !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !526, metadata !789), !dbg !1715
  br label %cleanup, !dbg !1769

if.end.19:                                        ; preds = %if.then.i.34, %land.lhs.true.i.37, %if.then.12.i.45, %if.then.12
  %21 = phi <2 x double> [ %13, %if.then.12 ], [ %19, %if.then.12.i.45 ], [ <double -1.000000e+00, double 0.000000e+00>, %land.lhs.true.i.37 ], [ %17, %if.then.i.34 ]
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !400, metadata !785), !dbg !1770
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !400, metadata !787), !dbg !1770
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !401, metadata !785), !dbg !1772
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !401, metadata !787), !dbg !1772
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !400, metadata !789), !dbg !1770
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !401, metadata !789), !dbg !1772
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !402, metadata !789), !dbg !1773
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !402, metadata !785), !dbg !1773
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !402, metadata !787), !dbg !1773
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !527, metadata !785), !dbg !1721
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !527, metadata !787), !dbg !1721
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !450, metadata !785) #2, !dbg !1774
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !450, metadata !787) #2, !dbg !1774
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789) #2, !dbg !1774
  %call.i.50 = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !1776
  %cmp.i.51 = icmp eq i8* %call.i.50, null, !dbg !1777
  br i1 %cmp.i.51, label %if.then.i.52, label %if.end.i, !dbg !1778

if.then.i.52:                                     ; preds = %if.end.19
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1779
  br label %cleanup, !dbg !1780

if.end.i:                                         ; preds = %if.end.19
  %22 = fsub <2 x double> %10, %21, !dbg !1781
  %23 = bitcast i8* %call.i.50 to %struct._object*, !dbg !1782
  %ob_type.i.53 = getelementptr inbounds i8, i8* %call.i.50, i64 8, !dbg !1782
  %24 = bitcast i8* %ob_type.i.53 to %struct._typeobject**, !dbg !1782
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %24, align 8, !dbg !1782, !tbaa !945
  %ob_refcnt.i = bitcast i8* %call.i.50 to i64*, !dbg !1782
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !1782, !tbaa !949
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call.i.50, i64 16, !dbg !1783
  %25 = bitcast i8* %cval.sroa.0.0..sroa_idx.i to <2 x double>*, !dbg !1783
  store <2 x double> %22, <2 x double>* %25, align 8, !dbg !1783
  br label %cleanup, !dbg !1784

cleanup:                                          ; preds = %land.lhs.true.i.37, %land.lhs.true.i, %if.end.i, %if.then.i.52, %if.end.15.i.47, %if.end.15.i
  %retval.0 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.end.15.i ], [ @_Py_NotImplementedStruct, %if.end.15.i.47 ], [ %call1.i, %if.then.i.52 ], [ %23, %if.end.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.37 ]
  ret %struct._object* %retval.0, !dbg !1785
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_mul(%struct._object* %v, %struct._object* %w) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !532, metadata !789), !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !520, metadata !789), !dbg !1787
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !532, metadata !789), !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !532, metadata !789), !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !532, metadata !789), !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !532, metadata !789), !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !533, metadata !789), !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !520, metadata !789), !dbg !1793
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !533, metadata !789), !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !533, metadata !789), !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !533, metadata !789), !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !533, metadata !789), !dbg !1792
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !534, metadata !789), !dbg !1798
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1799
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1799, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %0, @PyComplex_Type, !dbg !1799
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1799

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1800
  %tobool = icmp eq i32 %call, 0, !dbg !1800
  br i1 %tobool, label %if.else, label %if.then, !dbg !1802

if.then:                                          ; preds = %lor.lhs.false, %entry
  %a.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, !dbg !1803
  %1 = bitcast %struct._object* %a.sroa.0.0..sroa_idx to double*, !dbg !1803
  %a.sroa.0.0.copyload = load double, double* %1, align 8, !dbg !1803
  %a.sroa.7.0..sroa_idx59 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 1, !dbg !1803
  %2 = bitcast %struct._typeobject** %a.sroa.7.0..sroa_idx59 to double*, !dbg !1803
  %a.sroa.7.0.copyload = load double, double* %2, align 8, !dbg !1803
  br label %if.end.5, !dbg !1803

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !535, metadata !789), !dbg !1806
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1807
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !522, metadata !789) #2, !dbg !1808
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1809, !tbaa !945
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1809
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1809, !tbaa !1164
  %and.i = and i64 %4, 16777216, !dbg !1809
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !1809
  br i1 %cmp.i, label %if.end.6.i, label %if.then.i, !dbg !1810

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !1811
  %cmp3.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !1812
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.5, !dbg !1813

land.lhs.true.i:                                  ; preds = %if.then.i
  %call4.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1814
  %tobool.i = icmp eq %struct._object* %call4.i, null, !dbg !1814
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !1815

if.end.6.i:                                       ; preds = %if.else
  %cmp8.i = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !1816
  br i1 %cmp8.i, label %if.then.12.i, label %lor.lhs.false.i, !dbg !1816

lor.lhs.false.i:                                  ; preds = %if.end.6.i
  %call10.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1817
  %tobool11.i = icmp eq i32 %call10.i, 0, !dbg !1817
  br i1 %tobool11.i, label %if.end.15.i, label %if.then.12.i, !dbg !1818

if.then.12.i:                                     ; preds = %lor.lhs.false.i, %if.end.6.i
  %call13.i = tail call double @PyFloat_AsDouble(%struct._object* %v) #2, !dbg !1819
  br label %if.end.5, !dbg !1820

if.end.15.i:                                      ; preds = %lor.lhs.false.i
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1821, !tbaa !949
  %inc.i = add i64 %5, 1, !dbg !1821
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1821, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1787
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !532, metadata !789), !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !532, metadata !789), !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !532, metadata !789), !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !532, metadata !789), !dbg !1786
  br label %cleanup, !dbg !1822

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then.12.i, %if.then
  %a.sroa.7.0.copyload71 = phi double [ %a.sroa.7.0.copyload, %if.then ], [ 0.000000e+00, %if.then.12.i ], [ 0.000000e+00, %land.lhs.true.i ], [ 0.000000e+00, %if.then.i ]
  %a.sroa.0.0.69 = phi double [ %a.sroa.0.0.copyload, %if.then ], [ %call13.i, %if.then.12.i ], [ -1.000000e+00, %land.lhs.true.i ], [ %call.i, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1823
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1823, !tbaa !945
  %cmp7 = icmp eq %struct._typeobject* %6, @PyComplex_Type, !dbg !1823
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !1823

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1824
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1824
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !1826

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %b.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, !dbg !1827
  %7 = bitcast %struct._object* %b.sroa.0.0..sroa_idx to double*, !dbg !1827
  %b.sroa.0.0.copyload = load double, double* %7, align 8, !dbg !1827
  %b.sroa.7.0..sroa_idx56 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 1, !dbg !1827
  %8 = bitcast %struct._typeobject** %b.sroa.7.0..sroa_idx56 to double*, !dbg !1827
  %b.sroa.7.0.copyload = load double, double* %8, align 8, !dbg !1827
  br label %if.end.19, !dbg !1827

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !536, metadata !789), !dbg !1830
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1831
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !522, metadata !789) #2, !dbg !1832
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1833, !tbaa !945
  %tp_flags.i.29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 19, !dbg !1833
  %10 = load i64, i64* %tp_flags.i.29, align 8, !dbg !1833, !tbaa !1164
  %and.i.30 = and i64 %10, 16777216, !dbg !1833
  %cmp.i.31 = icmp eq i64 %and.i.30, 0, !dbg !1833
  br i1 %cmp.i.31, label %if.end.6.i.40, label %if.then.i.34, !dbg !1834

if.then.i.34:                                     ; preds = %if.else.14
  %call.i.32 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !1835
  %cmp3.i.33 = fcmp oeq double %call.i.32, -1.000000e+00, !dbg !1836
  br i1 %cmp3.i.33, label %land.lhs.true.i.37, label %if.end.19, !dbg !1837

land.lhs.true.i.37:                               ; preds = %if.then.i.34
  %call4.i.35 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1838
  %tobool.i.36 = icmp eq %struct._object* %call4.i.35, null, !dbg !1838
  br i1 %tobool.i.36, label %if.end.19, label %cleanup, !dbg !1839

if.end.6.i.40:                                    ; preds = %if.else.14
  %cmp8.i.39 = icmp eq %struct._typeobject* %9, @PyFloat_Type, !dbg !1840
  br i1 %cmp8.i.39, label %if.then.12.i.45, label %lor.lhs.false.i.43, !dbg !1840

lor.lhs.false.i.43:                               ; preds = %if.end.6.i.40
  %call10.i.41 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %9, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1841
  %tobool11.i.42 = icmp eq i32 %call10.i.41, 0, !dbg !1841
  br i1 %tobool11.i.42, label %if.end.15.i.47, label %if.then.12.i.45, !dbg !1842

if.then.12.i.45:                                  ; preds = %lor.lhs.false.i.43, %if.end.6.i.40
  %call13.i.44 = tail call double @PyFloat_AsDouble(%struct._object* %w) #2, !dbg !1843
  br label %if.end.19, !dbg !1844

if.end.15.i.47:                                   ; preds = %lor.lhs.false.i.43
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1845, !tbaa !949
  %inc.i.46 = add i64 %11, 1, !dbg !1845
  store i64 %inc.i.46, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1845, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1793
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !533, metadata !789), !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !533, metadata !789), !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !533, metadata !789), !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !533, metadata !789), !dbg !1792
  br label %cleanup, !dbg !1846

if.end.19:                                        ; preds = %if.then.i.34, %land.lhs.true.i.37, %if.then.12.i.45, %if.then.12
  %b.sroa.7.0.copyload68 = phi double [ %b.sroa.7.0.copyload, %if.then.12 ], [ 0.000000e+00, %if.then.12.i.45 ], [ 0.000000e+00, %land.lhs.true.i.37 ], [ 0.000000e+00, %if.then.i.34 ]
  %b.sroa.0.0.66 = phi double [ %b.sroa.0.0.copyload, %if.then.12 ], [ %call13.i.44, %if.then.12.i.45 ], [ -1.000000e+00, %land.lhs.true.i.37 ], [ %call.i.32, %if.then.i.34 ]
  tail call void @llvm.dbg.value(metadata double %a.sroa.0.0.69, i64 0, metadata !411, metadata !785), !dbg !1847
  tail call void @llvm.dbg.value(metadata double %a.sroa.7.0.copyload71, i64 0, metadata !411, metadata !787), !dbg !1847
  tail call void @llvm.dbg.value(metadata double %b.sroa.0.0.66, i64 0, metadata !412, metadata !785), !dbg !1849
  tail call void @llvm.dbg.value(metadata double %b.sroa.7.0.copyload68, i64 0, metadata !412, metadata !787), !dbg !1849
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !411, metadata !789), !dbg !1847
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !412, metadata !789), !dbg !1849
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !413, metadata !789), !dbg !1850
  tail call void @llvm.dbg.value(metadata double %sub.i, i64 0, metadata !413, metadata !785), !dbg !1850
  tail call void @llvm.dbg.value(metadata double %add.i, i64 0, metadata !413, metadata !787), !dbg !1850
  tail call void @llvm.dbg.value(metadata double %sub.i, i64 0, metadata !534, metadata !785), !dbg !1798
  tail call void @llvm.dbg.value(metadata double %add.i, i64 0, metadata !534, metadata !787), !dbg !1798
  tail call void @llvm.dbg.value(metadata double %sub.i, i64 0, metadata !450, metadata !785) #2, !dbg !1851
  tail call void @llvm.dbg.value(metadata double %add.i, i64 0, metadata !450, metadata !787) #2, !dbg !1851
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789) #2, !dbg !1851
  %call.i.50 = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !1853
  %cmp.i.51 = icmp eq i8* %call.i.50, null, !dbg !1854
  br i1 %cmp.i.51, label %if.then.i.52, label %if.end.i, !dbg !1855

if.then.i.52:                                     ; preds = %if.end.19
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1856
  br label %cleanup, !dbg !1857

if.end.i:                                         ; preds = %if.end.19
  %mul.i = fmul double %a.sroa.0.0.69, %b.sroa.0.0.66, !dbg !1858
  %mul3.i = fmul double %a.sroa.7.0.copyload71, %b.sroa.7.0.copyload68, !dbg !1859
  %sub.i = fsub double %mul.i, %mul3.i, !dbg !1860
  %mul10.i = fmul double %a.sroa.7.0.copyload71, %b.sroa.0.0.66, !dbg !1861
  %mul7.i = fmul double %a.sroa.0.0.69, %b.sroa.7.0.copyload68, !dbg !1862
  %add.i = fadd double %mul7.i, %mul10.i, !dbg !1863
  %12 = bitcast i8* %call.i.50 to %struct._object*, !dbg !1864
  %ob_type.i.53 = getelementptr inbounds i8, i8* %call.i.50, i64 8, !dbg !1864
  %13 = bitcast i8* %ob_type.i.53 to %struct._typeobject**, !dbg !1864
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %13, align 8, !dbg !1864, !tbaa !945
  %ob_refcnt.i = bitcast i8* %call.i.50 to i64*, !dbg !1864
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !1864, !tbaa !949
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call.i.50, i64 16, !dbg !1865
  %14 = bitcast i8* %cval.sroa.0.0..sroa_idx.i to double*, !dbg !1865
  store double %sub.i, double* %14, align 8, !dbg !1865
  %cval.sroa.2.0..sroa_idx9.i = getelementptr inbounds i8, i8* %call.i.50, i64 24, !dbg !1865
  %15 = bitcast i8* %cval.sroa.2.0..sroa_idx9.i to double*, !dbg !1865
  store double %add.i, double* %15, align 8, !dbg !1865
  br label %cleanup, !dbg !1866

cleanup:                                          ; preds = %land.lhs.true.i.37, %land.lhs.true.i, %if.end.i, %if.then.i.52, %if.end.15.i.47, %if.end.15.i
  %retval.0 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.end.15.i ], [ @_Py_NotImplementedStruct, %if.end.15.i.47 ], [ %call1.i, %if.then.i.52 ], [ %12, %if.end.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.37 ]
  ret %struct._object* %retval.0, !dbg !1867
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @complex_remainder(%struct._object* nocapture readnone %v, %struct._object* nocapture readnone %w) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !539, metadata !789), !dbg !1868
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !540, metadata !789), !dbg !1869
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1870, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #2, !dbg !1871
  ret %struct._object* null, !dbg !1872
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @complex_divmod(%struct._object* nocapture readnone %v, %struct._object* nocapture readnone %w) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !543, metadata !789), !dbg !1873
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !544, metadata !789), !dbg !1874
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1875, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0)) #2, !dbg !1876
  ret %struct._object* null, !dbg !1877
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_pow(%struct._object* %v, %struct._object* %w, %struct._object* readnone %z) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !547, metadata !789), !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !520, metadata !789), !dbg !1879
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !547, metadata !789), !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !547, metadata !789), !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !547, metadata !789), !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !547, metadata !789), !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !548, metadata !789), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !520, metadata !789), !dbg !1885
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !548, metadata !789), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !548, metadata !789), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !548, metadata !789), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !548, metadata !789), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct._object* %z, i64 0, metadata !549, metadata !789), !dbg !1890
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !550, metadata !789), !dbg !1891
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !551, metadata !789), !dbg !1892
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1893
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1893, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %0, @PyComplex_Type, !dbg !1893
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1893

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1894
  %tobool = icmp eq i32 %call, 0, !dbg !1894
  br i1 %tobool, label %if.else, label %if.then, !dbg !1896

if.then:                                          ; preds = %lor.lhs.false, %entry
  %a.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, !dbg !1897
  %1 = bitcast %struct._object* %a.sroa.0.0..sroa_idx to double*, !dbg !1897
  %a.sroa.0.0.copyload = load double, double* %1, align 8, !dbg !1897
  %a.sroa.7.0..sroa_idx134 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 1, !dbg !1897
  %2 = bitcast %struct._typeobject** %a.sroa.7.0..sroa_idx134 to double*, !dbg !1897
  %a.sroa.7.0.copyload = load double, double* %2, align 8, !dbg !1897
  br label %if.end.5, !dbg !1897

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !553, metadata !789), !dbg !1900
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1901
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !522, metadata !789) #2, !dbg !1902
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1903, !tbaa !945
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1903
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1903, !tbaa !1164
  %and.i = and i64 %4, 16777216, !dbg !1903
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !1903
  br i1 %cmp.i, label %if.end.6.i, label %if.then.i, !dbg !1904

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !1905
  %cmp3.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !1906
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.5, !dbg !1907

land.lhs.true.i:                                  ; preds = %if.then.i
  %call4.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1908
  %tobool.i = icmp eq %struct._object* %call4.i, null, !dbg !1908
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !1909

if.end.6.i:                                       ; preds = %if.else
  %cmp8.i = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !1910
  br i1 %cmp8.i, label %if.then.12.i, label %lor.lhs.false.i, !dbg !1910

lor.lhs.false.i:                                  ; preds = %if.end.6.i
  %call10.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1911
  %tobool11.i = icmp eq i32 %call10.i, 0, !dbg !1911
  br i1 %tobool11.i, label %if.end.15.i, label %if.then.12.i, !dbg !1912

if.then.12.i:                                     ; preds = %lor.lhs.false.i, %if.end.6.i
  %call13.i = tail call double @PyFloat_AsDouble(%struct._object* %v) #2, !dbg !1913
  br label %if.end.5, !dbg !1914

if.end.15.i:                                      ; preds = %lor.lhs.false.i
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1915, !tbaa !949
  %inc.i = add i64 %5, 1, !dbg !1915
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1915, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1879
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !547, metadata !789), !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !547, metadata !789), !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !547, metadata !789), !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !547, metadata !789), !dbg !1878
  br label %cleanup, !dbg !1916

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then.12.i, %if.then
  %a.sroa.7.0.copyload146 = phi double [ %a.sroa.7.0.copyload, %if.then ], [ 0.000000e+00, %if.then.12.i ], [ 0.000000e+00, %land.lhs.true.i ], [ 0.000000e+00, %if.then.i ]
  %a.sroa.0.0.144 = phi double [ %a.sroa.0.0.copyload, %if.then ], [ %call13.i, %if.then.12.i ], [ -1.000000e+00, %land.lhs.true.i ], [ %call.i, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1917
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1917, !tbaa !945
  %cmp7 = icmp eq %struct._typeobject* %6, @PyComplex_Type, !dbg !1917
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !1917

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !1918
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1918
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !1920

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %b.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, !dbg !1921
  %7 = bitcast %struct._object* %b.sroa.0.0..sroa_idx to double*, !dbg !1921
  %b.sroa.0.0.copyload = load double, double* %7, align 8, !dbg !1921
  %b.sroa.7.0..sroa_idx131 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 1, !dbg !1921
  %8 = bitcast %struct._typeobject** %b.sroa.7.0..sroa_idx131 to double*, !dbg !1921
  %b.sroa.7.0.copyload = load double, double* %8, align 8, !dbg !1921
  br label %if.end.19, !dbg !1921

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !554, metadata !789), !dbg !1924
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !1925
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !522, metadata !789) #2, !dbg !1926
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1927, !tbaa !945
  %tp_flags.i.103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 19, !dbg !1927
  %10 = load i64, i64* %tp_flags.i.103, align 8, !dbg !1927, !tbaa !1164
  %and.i.104 = and i64 %10, 16777216, !dbg !1927
  %cmp.i.105 = icmp eq i64 %and.i.104, 0, !dbg !1927
  br i1 %cmp.i.105, label %if.end.6.i.114, label %if.then.i.108, !dbg !1928

if.then.i.108:                                    ; preds = %if.else.14
  %call.i.106 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !1929
  %cmp3.i.107 = fcmp oeq double %call.i.106, -1.000000e+00, !dbg !1930
  br i1 %cmp3.i.107, label %land.lhs.true.i.111, label %if.end.19, !dbg !1931

land.lhs.true.i.111:                              ; preds = %if.then.i.108
  %call4.i.109 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1932
  %tobool.i.110 = icmp eq %struct._object* %call4.i.109, null, !dbg !1932
  br i1 %tobool.i.110, label %if.end.19, label %cleanup, !dbg !1933

if.end.6.i.114:                                   ; preds = %if.else.14
  %cmp8.i.113 = icmp eq %struct._typeobject* %9, @PyFloat_Type, !dbg !1934
  br i1 %cmp8.i.113, label %if.then.12.i.119, label %lor.lhs.false.i.117, !dbg !1934

lor.lhs.false.i.117:                              ; preds = %if.end.6.i.114
  %call10.i.115 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %9, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1935
  %tobool11.i.116 = icmp eq i32 %call10.i.115, 0, !dbg !1935
  br i1 %tobool11.i.116, label %if.end.15.i.121, label %if.then.12.i.119, !dbg !1936

if.then.12.i.119:                                 ; preds = %lor.lhs.false.i.117, %if.end.6.i.114
  %call13.i.118 = tail call double @PyFloat_AsDouble(%struct._object* %w) #2, !dbg !1937
  br label %if.end.19, !dbg !1938

if.end.15.i.121:                                  ; preds = %lor.lhs.false.i.117
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1939, !tbaa !949
  %inc.i.120 = add i64 %11, 1, !dbg !1939
  store i64 %inc.i.120, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1939, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !1885
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !548, metadata !789), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !548, metadata !789), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !548, metadata !789), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !548, metadata !789), !dbg !1884
  br label %cleanup, !dbg !1940

if.end.19:                                        ; preds = %if.then.i.108, %land.lhs.true.i.111, %if.then.12.i.119, %if.then.12
  %b.sroa.7.0.copyload143 = phi double [ %b.sroa.7.0.copyload, %if.then.12 ], [ 0.000000e+00, %if.then.12.i.119 ], [ 0.000000e+00, %land.lhs.true.i.111 ], [ 0.000000e+00, %if.then.i.108 ]
  %b.sroa.0.0.exponent.sroa.0.0.copyload141 = phi double [ %b.sroa.0.0.copyload, %if.then.12 ], [ %call13.i.118, %if.then.12.i.119 ], [ -1.000000e+00, %land.lhs.true.i.111 ], [ %call.i.106, %if.then.i.108 ]
  %cmp20 = icmp eq %struct._object* %z, @_Py_NoneStruct, !dbg !1941
  br i1 %cmp20, label %if.end.22, label %if.then.21, !dbg !1943

if.then.21:                                       ; preds = %if.end.19
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1944, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)) #2, !dbg !1946
  br label %cleanup, !dbg !1947

if.end.22:                                        ; preds = %if.end.19
  %call23 = tail call i32* @__errno_location() #1, !dbg !1948
  store i32 0, i32* %call23, align 4, !dbg !1949, !tbaa !833
  tail call void @llvm.dbg.value(metadata double %b.sroa.0.0.exponent.sroa.0.0.copyload141, i64 0, metadata !551, metadata !785), !dbg !1892
  tail call void @llvm.dbg.value(metadata double %b.sroa.7.0.copyload143, i64 0, metadata !551, metadata !787), !dbg !1892
  %conv = fptosi double %b.sroa.0.0.exponent.sroa.0.0.copyload141 to i64, !dbg !1950
  tail call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !552, metadata !789), !dbg !1951
  %cmp24 = fcmp oeq double %b.sroa.7.0.copyload143, 0.000000e+00, !dbg !1952
  %conv27 = sitofp i64 %conv to double
  %cmp28 = fcmp oeq double %b.sroa.0.0.exponent.sroa.0.0.copyload141, %conv27, !dbg !1954
  %or.cond = and i1 %cmp24, %cmp28, !dbg !1955
  br i1 %or.cond, label %if.then.30, label %if.else.32, !dbg !1955

if.then.30:                                       ; preds = %if.end.22
  tail call void @llvm.dbg.value(metadata double %a.sroa.0.0.144, i64 0, metadata !559, metadata !785) #2, !dbg !1956
  tail call void @llvm.dbg.value(metadata double %a.sroa.7.0.copyload146, i64 0, metadata !559, metadata !787) #2, !dbg !1956
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !559, metadata !789) #2, !dbg !1956
  tail call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !560, metadata !789) #2, !dbg !1958
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !561, metadata !789) #2, !dbg !1959
  %n.off.i = add i64 %conv, 100, !dbg !1960
  %13 = icmp ugt i64 %n.off.i, 200, !dbg !1960
  br i1 %13, label %if.then.i.124, label %if.else.i, !dbg !1960

if.then.i.124:                                    ; preds = %if.then.30
  tail call void @llvm.dbg.value(metadata double %conv27, i64 0, metadata !561, metadata !785) #2, !dbg !1959
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !561, metadata !787) #2, !dbg !1959
  tail call void @llvm.dbg.value(metadata double %a.sroa.0.0.144, i64 0, metadata !433, metadata !785) #2, !dbg !1962
  tail call void @llvm.dbg.value(metadata double %a.sroa.7.0.copyload146, i64 0, metadata !433, metadata !787) #2, !dbg !1962
  tail call void @llvm.dbg.value(metadata double %conv27, i64 0, metadata !434, metadata !785) #2, !dbg !1965
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !434, metadata !787) #2, !dbg !1965
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !433, metadata !789) #2, !dbg !1962
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !434, metadata !789) #2, !dbg !1965
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !435, metadata !789) #2, !dbg !1966
  %cmp.i.i = icmp eq i64 %conv, 0, !dbg !1967
  br i1 %cmp.i.i, label %c_powi.exit, label %if.else.i.i, !dbg !1968

if.else.i.i:                                      ; preds = %if.then.i.124
  %cmp5.i.i = fcmp oeq double %a.sroa.0.0.144, 0.000000e+00, !dbg !1969
  %cmp8.i.i = fcmp oeq double %a.sroa.7.0.copyload146, 0.000000e+00, !dbg !1970
  %or.cond69.i.i = and i1 %cmp8.i.i, %cmp5.i.i, !dbg !1971
  br i1 %or.cond69.i.i, label %if.then.9.i.i, label %if.else.17.i.i, !dbg !1971

if.then.9.i.i:                                    ; preds = %if.else.i.i
  %cmp13.i.i = icmp slt i64 %conv, 0, !dbg !1972
  br i1 %cmp13.i.i, label %if.then.14.i.i, label %c_powi.exit, !dbg !1973

if.then.14.i.i:                                   ; preds = %if.then.9.i.i
  store i32 33, i32* %call23, align 4, !dbg !1974, !tbaa !833
  br label %c_powi.exit, !dbg !1975

if.else.17.i.i:                                   ; preds = %if.else.i.i
  %call20.i.i = tail call double @hypot(double %a.sroa.0.0.144, double %a.sroa.7.0.copyload146) #2, !dbg !1976
  tail call void @llvm.dbg.value(metadata double %call20.i.i, i64 0, metadata !436, metadata !789) #2, !dbg !1977
  %call22.i.i = tail call double @pow(double %call20.i.i, double %conv27) #2, !dbg !1978
  tail call void @llvm.dbg.value(metadata double %call22.i.i, i64 0, metadata !437, metadata !789) #2, !dbg !1979
  %call25.i.i = tail call double @atan2(double %a.sroa.7.0.copyload146, double %a.sroa.0.0.144) #2, !dbg !1980
  tail call void @llvm.dbg.value(metadata double %call25.i.i, i64 0, metadata !438, metadata !789) #2, !dbg !1981
  %mul.i.i = fmul double %conv27, %call25.i.i, !dbg !1982
  tail call void @llvm.dbg.value(metadata double %mul.i.i, i64 0, metadata !439, metadata !789) #2, !dbg !1983
  %call37.i.i = tail call double @cos(double %mul.i.i) #2, !dbg !1984
  %mul38.i.i = fmul double %call22.i.i, %call37.i.i, !dbg !1985
  tail call void @llvm.dbg.value(metadata double %mul38.i.i, i64 0, metadata !435, metadata !785) #2, !dbg !1966
  %call40.i.i = tail call double @sin(double %mul.i.i) #2, !dbg !1986
  %mul41.i.i = fmul double %call22.i.i, %call40.i.i, !dbg !1987
  tail call void @llvm.dbg.value(metadata double %mul41.i.i, i64 0, metadata !435, metadata !787) #2, !dbg !1966
  br label %c_powi.exit, !dbg !1988

if.else.i:                                        ; preds = %if.then.30
  %cmp2.i = icmp sgt i64 %conv, 0, !dbg !1989
  br i1 %cmp2.i, label %while.body.i.i.preheader, label %if.else.6.i, !dbg !1991

while.body.i.i.preheader:                         ; preds = %if.else.i
  br label %while.body.i.i, !dbg !1992

while.body.i.i:                                   ; preds = %while.body.i.i.preheader, %if.end.i.i
  %r.sroa.6.036.i.i = phi double [ %r.sroa.6.1.i.i, %if.end.i.i ], [ 0.000000e+00, %while.body.i.i.preheader ], !dbg !1996
  %r.sroa.0.035.i.i = phi double [ %r.sroa.0.1.i.i, %if.end.i.i ], [ 1.000000e+00, %while.body.i.i.preheader ], !dbg !1996
  %p.sroa.7.034.i.i = phi double [ %add.i.28.i.i, %if.end.i.i ], [ %a.sroa.7.0.copyload146, %while.body.i.i.preheader ], !dbg !1996
  %p.sroa.0.033.i.i = phi double [ %sub.i.25.i.i, %if.end.i.i ], [ %a.sroa.0.0.144, %while.body.i.i.preheader ], !dbg !1996
  %mask.032.i.i = phi i64 [ %shl.i.i, %if.end.i.i ], [ 1, %while.body.i.i.preheader ], !dbg !1996
  %and.i.i = and i64 %mask.032.i.i, %conv, !dbg !1992
  %tobool.i.i = icmp eq i64 %and.i.i, 0, !dbg !1992
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1997

if.then.i.i:                                      ; preds = %while.body.i.i
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !411, metadata !789) #2, !dbg !1998
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !412, metadata !789) #2, !dbg !2000
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !413, metadata !789) #2, !dbg !2001
  %mul.i.i.i = fmul double %r.sroa.0.035.i.i, %p.sroa.0.033.i.i, !dbg !2002
  %mul3.i.i.i = fmul double %r.sroa.6.036.i.i, %p.sroa.7.034.i.i, !dbg !2003
  %sub.i.i.i = fsub double %mul.i.i.i, %mul3.i.i.i, !dbg !2004
  tail call void @llvm.dbg.value(metadata double %sub.i.i.i, i64 0, metadata !413, metadata !785) #2, !dbg !2001
  %mul7.i.i.i = fmul double %r.sroa.0.035.i.i, %p.sroa.7.034.i.i, !dbg !2005
  %mul10.i.i.i = fmul double %r.sroa.6.036.i.i, %p.sroa.0.033.i.i, !dbg !2006
  %add.i.i.i = fadd double %mul7.i.i.i, %mul10.i.i.i, !dbg !2007
  tail call void @llvm.dbg.value(metadata double %add.i.i.i, i64 0, metadata !413, metadata !787) #2, !dbg !2001
  tail call void @llvm.dbg.value(metadata double %sub.i.i.i, i64 0, metadata !566, metadata !785) #2, !dbg !2008
  tail call void @llvm.dbg.value(metadata double %add.i.i.i, i64 0, metadata !566, metadata !787) #2, !dbg !2008
  br label %if.end.i.i, !dbg !2009

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i
  %r.sroa.0.1.i.i = phi double [ %sub.i.i.i, %if.then.i.i ], [ %r.sroa.0.035.i.i, %while.body.i.i ], !dbg !1996
  %r.sroa.6.1.i.i = phi double [ %add.i.i.i, %if.then.i.i ], [ %r.sroa.6.036.i.i, %while.body.i.i ], !dbg !1996
  %shl.i.i = shl i64 %mask.032.i.i, 1, !dbg !2010
  tail call void @llvm.dbg.value(metadata i64 %shl.i.i, i64 0, metadata !568, metadata !789) #2, !dbg !2011
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !411, metadata !789) #2, !dbg !2012
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !412, metadata !789) #2, !dbg !2014
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !413, metadata !789) #2, !dbg !2015
  %mul.i.23.i.i = fmul double %p.sroa.0.033.i.i, %p.sroa.0.033.i.i, !dbg !2016
  %mul3.i.24.i.i = fmul double %p.sroa.7.034.i.i, %p.sroa.7.034.i.i, !dbg !2017
  %sub.i.25.i.i = fsub double %mul.i.23.i.i, %mul3.i.24.i.i, !dbg !2018
  %mul7.i.26.i.i = fmul double %p.sroa.7.034.i.i, %p.sroa.0.033.i.i, !dbg !2019
  %add.i.28.i.i = fadd double %mul7.i.26.i.i, %mul7.i.26.i.i, !dbg !2020
  %cmp.i.18.i = icmp slt i64 %shl.i.i, 1, !dbg !2021
  %cmp1.i.i = icmp sgt i64 %shl.i.i, %conv, !dbg !2022
  %or.cond.i.i = or i1 %cmp.i.18.i, %cmp1.i.i, !dbg !2023
  br i1 %or.cond.i.i, label %c_powi.exit.loopexit, label %while.body.i.i, !dbg !2023

if.else.6.i:                                      ; preds = %if.else.i
  %sub.i = sub i64 0, %conv, !dbg !2024
  tail call void @llvm.dbg.value(metadata double %a.sroa.0.0.144, i64 0, metadata !564, metadata !785) #2, !dbg !2025
  tail call void @llvm.dbg.value(metadata double %a.sroa.7.0.copyload146, i64 0, metadata !564, metadata !787) #2, !dbg !2025
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !564, metadata !789) #2, !dbg !2025
  tail call void @llvm.dbg.value(metadata i64 %sub.i, i64 0, metadata !565, metadata !789) #2, !dbg !2027
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !566, metadata !789) #2, !dbg !2028
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !567, metadata !789) #2, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !568, metadata !789) #2, !dbg !2030
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, i64 0, metadata !566, metadata !785) #2, !dbg !2028
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !566, metadata !787) #2, !dbg !2028
  tail call void @llvm.dbg.value(metadata double %a.sroa.0.0.144, i64 0, metadata !567, metadata !785) #2, !dbg !2029
  tail call void @llvm.dbg.value(metadata double %a.sroa.7.0.copyload146, i64 0, metadata !567, metadata !787) #2, !dbg !2029
  %cmp1.31.i.21.i = icmp slt i64 %sub.i, 1, !dbg !2031
  br i1 %cmp1.31.i.21.i, label %c_powu.exit53.i, label %while.body.i.29.i.preheader, !dbg !2032

while.body.i.29.i.preheader:                      ; preds = %if.else.6.i
  br label %while.body.i.29.i, !dbg !2033

while.body.i.29.i:                                ; preds = %while.body.i.29.i.preheader, %if.end.i.48.i
  %r.sroa.6.036.i.22.i = phi double [ %r.sroa.6.1.i.38.i, %if.end.i.48.i ], [ 0.000000e+00, %while.body.i.29.i.preheader ], !dbg !2034
  %r.sroa.0.035.i.23.i = phi double [ %r.sroa.0.1.i.37.i, %if.end.i.48.i ], [ 1.000000e+00, %while.body.i.29.i.preheader ], !dbg !2034
  %p.sroa.7.034.i.24.i = phi double [ %add.i.28.i.44.i, %if.end.i.48.i ], [ %a.sroa.7.0.copyload146, %while.body.i.29.i.preheader ], !dbg !2034
  %p.sroa.0.033.i.25.i = phi double [ %sub.i.25.i.42.i, %if.end.i.48.i ], [ %a.sroa.0.0.144, %while.body.i.29.i.preheader ], !dbg !2034
  %mask.032.i.26.i = phi i64 [ %shl.i.39.i, %if.end.i.48.i ], [ 1, %while.body.i.29.i.preheader ], !dbg !2034
  %and.i.27.i = and i64 %mask.032.i.26.i, %sub.i, !dbg !2033
  %tobool.i.28.i = icmp eq i64 %and.i.27.i, 0, !dbg !2033
  br i1 %tobool.i.28.i, label %if.end.i.48.i, label %if.then.i.36.i, !dbg !2035

if.then.i.36.i:                                   ; preds = %while.body.i.29.i
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !411, metadata !789) #2, !dbg !2036
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !412, metadata !789) #2, !dbg !2038
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !413, metadata !789) #2, !dbg !2039
  %mul.i.i.30.i = fmul double %r.sroa.0.035.i.23.i, %p.sroa.0.033.i.25.i, !dbg !2040
  %mul3.i.i.31.i = fmul double %r.sroa.6.036.i.22.i, %p.sroa.7.034.i.24.i, !dbg !2041
  %sub.i.i.32.i = fsub double %mul.i.i.30.i, %mul3.i.i.31.i, !dbg !2042
  tail call void @llvm.dbg.value(metadata double %sub.i.i.32.i, i64 0, metadata !413, metadata !785) #2, !dbg !2039
  %mul7.i.i.33.i = fmul double %r.sroa.0.035.i.23.i, %p.sroa.7.034.i.24.i, !dbg !2043
  %mul10.i.i.34.i = fmul double %r.sroa.6.036.i.22.i, %p.sroa.0.033.i.25.i, !dbg !2044
  %add.i.i.35.i = fadd double %mul7.i.i.33.i, %mul10.i.i.34.i, !dbg !2045
  tail call void @llvm.dbg.value(metadata double %add.i.i.35.i, i64 0, metadata !413, metadata !787) #2, !dbg !2039
  tail call void @llvm.dbg.value(metadata double %sub.i.i.32.i, i64 0, metadata !566, metadata !785) #2, !dbg !2028
  tail call void @llvm.dbg.value(metadata double %add.i.i.35.i, i64 0, metadata !566, metadata !787) #2, !dbg !2028
  br label %if.end.i.48.i, !dbg !2046

if.end.i.48.i:                                    ; preds = %if.then.i.36.i, %while.body.i.29.i
  %r.sroa.0.1.i.37.i = phi double [ %sub.i.i.32.i, %if.then.i.36.i ], [ %r.sroa.0.035.i.23.i, %while.body.i.29.i ], !dbg !2034
  %r.sroa.6.1.i.38.i = phi double [ %add.i.i.35.i, %if.then.i.36.i ], [ %r.sroa.6.036.i.22.i, %while.body.i.29.i ], !dbg !2034
  %shl.i.39.i = shl i64 %mask.032.i.26.i, 1, !dbg !2047
  tail call void @llvm.dbg.value(metadata i64 %shl.i.39.i, i64 0, metadata !568, metadata !789) #2, !dbg !2030
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !411, metadata !789) #2, !dbg !2048
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !412, metadata !789) #2, !dbg !2050
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !413, metadata !789) #2, !dbg !2051
  %mul.i.23.i.40.i = fmul double %p.sroa.0.033.i.25.i, %p.sroa.0.033.i.25.i, !dbg !2052
  %mul3.i.24.i.41.i = fmul double %p.sroa.7.034.i.24.i, %p.sroa.7.034.i.24.i, !dbg !2053
  %sub.i.25.i.42.i = fsub double %mul.i.23.i.40.i, %mul3.i.24.i.41.i, !dbg !2054
  %mul7.i.26.i.43.i = fmul double %p.sroa.7.034.i.24.i, %p.sroa.0.033.i.25.i, !dbg !2055
  %add.i.28.i.44.i = fadd double %mul7.i.26.i.43.i, %mul7.i.26.i.43.i, !dbg !2056
  %cmp.i.45.i = icmp slt i64 %shl.i.39.i, 1, !dbg !2057
  %cmp1.i.46.i = icmp sgt i64 %shl.i.39.i, %sub.i, !dbg !2031
  %or.cond.i.47.i = or i1 %cmp.i.45.i, %cmp1.i.46.i, !dbg !2032
  br i1 %or.cond.i.47.i, label %c_powu.exit53.i.loopexit, label %while.body.i.29.i, !dbg !2032

c_powu.exit53.i.loopexit:                         ; preds = %if.end.i.48.i
  %r.sroa.6.1.i.38.i.lcssa = phi double [ %r.sroa.6.1.i.38.i, %if.end.i.48.i ]
  %r.sroa.0.1.i.37.i.lcssa = phi double [ %r.sroa.0.1.i.37.i, %if.end.i.48.i ]
  br label %c_powu.exit53.i, !dbg !2058

c_powu.exit53.i:                                  ; preds = %c_powu.exit53.i.loopexit, %if.else.6.i
  %r.sroa.6.0.lcssa.i.49.i = phi double [ 0.000000e+00, %if.else.6.i ], [ %r.sroa.6.1.i.38.i.lcssa, %c_powu.exit53.i.loopexit ], !dbg !2034
  %r.sroa.0.0.lcssa.i.50.i = phi double [ 1.000000e+00, %if.else.6.i ], [ %r.sroa.0.1.i.37.i.lcssa, %c_powu.exit53.i.loopexit ], !dbg !2034
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, i64 0, metadata !416, metadata !785) #2, !dbg !2058
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !416, metadata !787) #2, !dbg !2058
  tail call void @llvm.dbg.value(metadata double %r.sroa.0.0.lcssa.i.50.i, i64 0, metadata !417, metadata !785) #2, !dbg !2060
  tail call void @llvm.dbg.value(metadata double %r.sroa.6.0.lcssa.i.49.i, i64 0, metadata !417, metadata !787) #2, !dbg !2060
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !416, metadata !789) #2, !dbg !2058
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !417, metadata !789) #2, !dbg !2060
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !418, metadata !789) #2, !dbg !2061
  %cmp.i.54.i = fcmp olt double %r.sroa.0.0.lcssa.i.50.i, 0.000000e+00, !dbg !2062
  %sub.i.i = fsub double -0.000000e+00, %r.sroa.0.0.lcssa.i.50.i, !dbg !2063
  %cond.i.i = select i1 %cmp.i.54.i, double %sub.i.i, double %r.sroa.0.0.lcssa.i.50.i, !dbg !2064
  tail call void @llvm.dbg.value(metadata double %cond.i.i, i64 0, metadata !419, metadata !789) #2, !dbg !2065
  %cmp3.i.i = fcmp olt double %r.sroa.6.0.lcssa.i.49.i, 0.000000e+00, !dbg !2066
  %sub6.i.i = fsub double -0.000000e+00, %r.sroa.6.0.lcssa.i.49.i, !dbg !2067
  %cond10.i.i = select i1 %cmp3.i.i, double %sub6.i.i, double %r.sroa.6.0.lcssa.i.49.i, !dbg !2068
  tail call void @llvm.dbg.value(metadata double %cond10.i.i, i64 0, metadata !421, metadata !789) #2, !dbg !2069
  %cmp11.i.i = fcmp ult double %cond.i.i, %cond10.i.i, !dbg !2070
  br i1 %cmp11.i.i, label %if.else.32.i.i, label %if.then.i.55.i, !dbg !2071

if.then.i.55.i:                                   ; preds = %c_powu.exit53.i
  %cmp12.i.i = fcmp oeq double %cond.i.i, 0.000000e+00, !dbg !2072
  br i1 %cmp12.i.i, label %if.then.13.i.i, label %if.else.i.58.i, !dbg !2073

if.then.13.i.i:                                   ; preds = %if.then.i.55.i
  store i32 33, i32* %call23, align 4, !dbg !2074, !tbaa !833
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !418, metadata !787) #2, !dbg !2061
  br label %c_powi.exit, !dbg !2075

if.else.i.58.i:                                   ; preds = %if.then.i.55.i
  %div.i.i = fdiv double %r.sroa.6.0.lcssa.i.49.i, %r.sroa.0.0.lcssa.i.50.i, !dbg !2076
  tail call void @llvm.dbg.value(metadata double %div.i.i, i64 0, metadata !422, metadata !789) #2, !dbg !2077
  %mul.i.57.i = fmul double %r.sroa.6.0.lcssa.i.49.i, %div.i.i, !dbg !2078
  %add.i.i = fadd double %r.sroa.0.0.lcssa.i.50.i, %mul.i.57.i, !dbg !2079
  tail call void @llvm.dbg.value(metadata double %add.i.i, i64 0, metadata !427, metadata !789) #2, !dbg !2080
  %mul22.i.i = fmul double %div.i.i, 0.000000e+00, !dbg !2081
  %add23.i.i = fadd double %mul22.i.i, 1.000000e+00, !dbg !2082
  %div24.i.i = fdiv double %add23.i.i, %add.i.i, !dbg !2083
  tail call void @llvm.dbg.value(metadata double %div24.i.i, i64 0, metadata !418, metadata !785) #2, !dbg !2061
  %sub29.i.i = fsub double 0.000000e+00, %div.i.i, !dbg !2084
  %div30.i.i = fdiv double %sub29.i.i, %add.i.i, !dbg !2085
  tail call void @llvm.dbg.value(metadata double %div30.i.i, i64 0, metadata !418, metadata !787) #2, !dbg !2061
  br label %c_powi.exit, !dbg !2086

if.else.32.i.i:                                   ; preds = %c_powu.exit53.i
  %div36.i.i = fdiv double %r.sroa.0.0.lcssa.i.50.i, %r.sroa.6.0.lcssa.i.49.i, !dbg !2087
  tail call void @llvm.dbg.value(metadata double %div36.i.i, i64 0, metadata !428, metadata !789) #2, !dbg !2088
  %mul39.i.i = fmul double %r.sroa.0.0.lcssa.i.50.i, %div36.i.i, !dbg !2089
  %add41.i.i = fadd double %r.sroa.6.0.lcssa.i.49.i, %mul39.i.i, !dbg !2090
  tail call void @llvm.dbg.value(metadata double %add41.i.i, i64 0, metadata !430, metadata !789) #2, !dbg !2091
  %add45.i.i = fadd double %div36.i.i, 0.000000e+00, !dbg !2092
  %div46.i.i = fdiv double %add45.i.i, %add41.i.i, !dbg !2093
  tail call void @llvm.dbg.value(metadata double %div46.i.i, i64 0, metadata !418, metadata !785) #2, !dbg !2061
  %mul49.i.i = fmul double %div36.i.i, 0.000000e+00, !dbg !2094
  %sub51.i.i = fadd double %mul49.i.i, -1.000000e+00, !dbg !2095
  %div52.i.i = fdiv double %sub51.i.i, %add41.i.i, !dbg !2096
  tail call void @llvm.dbg.value(metadata double %div52.i.i, i64 0, metadata !418, metadata !787) #2, !dbg !2061
  br label %c_powi.exit, !dbg !2086

c_powi.exit.loopexit:                             ; preds = %if.end.i.i
  %r.sroa.6.1.i.i.lcssa = phi double [ %r.sroa.6.1.i.i, %if.end.i.i ]
  %r.sroa.0.1.i.i.lcssa = phi double [ %r.sroa.0.1.i.i, %if.end.i.i ]
  br label %c_powi.exit, !dbg !2097

c_powi.exit:                                      ; preds = %c_powi.exit.loopexit, %if.then.i.124, %if.then.9.i.i, %if.then.14.i.i, %if.else.17.i.i, %if.then.13.i.i, %if.else.i.58.i, %if.else.32.i.i
  %retval.sroa.0.0.i = phi double [ %mul38.i.i, %if.else.17.i.i ], [ 1.000000e+00, %if.then.i.124 ], [ 0.000000e+00, %if.then.9.i.i ], [ 0.000000e+00, %if.then.14.i.i ], [ 0.000000e+00, %if.then.13.i.i ], [ %div24.i.i, %if.else.i.58.i ], [ %div46.i.i, %if.else.32.i.i ], [ %r.sroa.0.1.i.i.lcssa, %c_powi.exit.loopexit ], !dbg !2098
  %retval.sroa.4.0.i = phi double [ %mul41.i.i, %if.else.17.i.i ], [ 0.000000e+00, %if.then.i.124 ], [ 0.000000e+00, %if.then.9.i.i ], [ 0.000000e+00, %if.then.14.i.i ], [ 0.000000e+00, %if.then.13.i.i ], [ %div30.i.i, %if.else.i.58.i ], [ %div52.i.i, %if.else.32.i.i ], [ %r.sroa.6.1.i.i.lcssa, %c_powi.exit.loopexit ], !dbg !2098
  %.fca.0.insert.i = insertvalue { double, double } undef, double %retval.sroa.0.0.i, 0, !dbg !2097
  %.fca.1.insert.i = insertvalue { double, double } %.fca.0.insert.i, double %retval.sroa.4.0.i, 1, !dbg !2097
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !550, metadata !785), !dbg !1891
  tail call void @llvm.dbg.value(metadata double %15, i64 0, metadata !550, metadata !787), !dbg !1891
  br label %do.body, !dbg !2099

if.else.32:                                       ; preds = %if.end.22
  %call33 = tail call { double, double } @_Py_c_pow(double %a.sroa.0.0.144, double %a.sroa.7.0.copyload146, double %b.sroa.0.0.exponent.sroa.0.0.copyload141, double %b.sroa.7.0.copyload143), !dbg !2100
  br label %do.body

do.body:                                          ; preds = %c_powi.exit, %if.else.32
  %call31.sink = phi { double, double } [ %.fca.1.insert.i, %c_powi.exit ], [ %call33, %if.else.32 ]
  %14 = extractvalue { double, double } %call31.sink, 0, !dbg !2098
  %15 = extractvalue { double, double } %call31.sink, 1, !dbg !2098
  %cmp37 = fcmp oeq double %14, 0x7FF0000000000000, !dbg !2101
  %cmp41 = fcmp oeq double %14, 0xFFF0000000000000, !dbg !2105
  %or.cond98 = or i1 %cmp37, %cmp41, !dbg !2101
  %cmp45 = fcmp oeq double %15, 0x7FF0000000000000, !dbg !2107
  %or.cond99 = or i1 %cmp45, %or.cond98, !dbg !2101
  %cmp49 = fcmp oeq double %15, 0xFFF0000000000000, !dbg !2109
  %or.cond100 = or i1 %cmp49, %or.cond99, !dbg !2101
  %16 = load i32, i32* %call23, align 4, !dbg !2111, !tbaa !833
  br i1 %or.cond100, label %if.then.51, label %if.else.58, !dbg !2101

if.then.51:                                       ; preds = %do.body
  switch i32 %16, label %if.end.76 [
    i32 0, label %do.end.thread161
    i32 33, label %if.then.69
    i32 34, label %if.then.74
  ], !dbg !2113

do.end.thread161:                                 ; preds = %if.then.51
  store i32 34, i32* %call23, align 4, !dbg !2115, !tbaa !833
  br label %if.then.74, !dbg !2118

if.else.58:                                       ; preds = %do.body
  switch i32 %16, label %if.end.76 [
    i32 34, label %do.end.thread
    i32 33, label %if.then.69
  ], !dbg !2119

do.end.thread:                                    ; preds = %if.else.58
  store i32 0, i32* %call23, align 4, !dbg !2120, !tbaa !833
  br label %if.end.76, !dbg !2118

if.then.69:                                       ; preds = %if.else.58, %if.then.51
  %17 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !2123, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #2, !dbg !2125
  br label %cleanup, !dbg !2126

if.then.74:                                       ; preds = %if.then.51, %do.end.thread161
  %18 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2127, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0)) #2, !dbg !2130
  br label %cleanup, !dbg !2131

if.end.76:                                        ; preds = %if.else.58, %if.then.51, %do.end.thread
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !450, metadata !785) #2, !dbg !2132
  tail call void @llvm.dbg.value(metadata double %15, i64 0, metadata !450, metadata !787) #2, !dbg !2132
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789) #2, !dbg !2132
  %call.i.125 = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !2134
  %cmp.i.126 = icmp eq i8* %call.i.125, null, !dbg !2135
  br i1 %cmp.i.126, label %if.then.i.127, label %if.end.i, !dbg !2136

if.then.i.127:                                    ; preds = %if.end.76
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2137
  br label %cleanup, !dbg !2138

if.end.i:                                         ; preds = %if.end.76
  %19 = bitcast i8* %call.i.125 to %struct._object*, !dbg !2139
  %ob_type.i.128 = getelementptr inbounds i8, i8* %call.i.125, i64 8, !dbg !2139
  %20 = bitcast i8* %ob_type.i.128 to %struct._typeobject**, !dbg !2139
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %20, align 8, !dbg !2139, !tbaa !945
  %ob_refcnt.i = bitcast i8* %call.i.125 to i64*, !dbg !2139
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2139, !tbaa !949
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call.i.125, i64 16, !dbg !2140
  %21 = bitcast i8* %cval.sroa.0.0..sroa_idx.i to double*, !dbg !2140
  store double %14, double* %21, align 8, !dbg !2140
  %cval.sroa.2.0..sroa_idx9.i = getelementptr inbounds i8, i8* %call.i.125, i64 24, !dbg !2140
  %22 = bitcast i8* %cval.sroa.2.0..sroa_idx9.i to double*, !dbg !2140
  store double %15, double* %22, align 8, !dbg !2140
  br label %cleanup, !dbg !2141

cleanup:                                          ; preds = %land.lhs.true.i.111, %land.lhs.true.i, %if.end.i, %if.then.i.127, %if.end.15.i.121, %if.end.15.i, %if.then.74, %if.then.69, %if.then.21
  %retval.0 = phi %struct._object* [ null, %if.then.21 ], [ null, %if.then.69 ], [ null, %if.then.74 ], [ @_Py_NotImplementedStruct, %if.end.15.i ], [ @_Py_NotImplementedStruct, %if.end.15.i.121 ], [ %call1.i, %if.then.i.127 ], [ %19, %if.end.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.111 ]
  ret %struct._object* %retval.0, !dbg !2142
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_neg(%struct.PyComplexObject* nocapture readonly %v) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyComplexObject* %v, i64 0, metadata !571, metadata !789), !dbg !2143
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !572, metadata !789), !dbg !2144
  %real = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 0, !dbg !2145
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !572, metadata !785), !dbg !2144
  %0 = bitcast double* %real to <2 x double>*, !dbg !2145
  %1 = load <2 x double>, <2 x double>* %0, align 8, !dbg !2145, !tbaa !2146
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !572, metadata !787), !dbg !2144
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !450, metadata !785) #2, !dbg !2147
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !450, metadata !787) #2, !dbg !2147
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789) #2, !dbg !2147
  %call.i = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !2149
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2150
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !2151

if.then.i:                                        ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2152
  br label %PyComplex_FromCComplex.exit, !dbg !2153

if.end.i:                                         ; preds = %entry
  %2 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %1, !dbg !2154
  %3 = bitcast i8* %call.i to %struct._object*, !dbg !2155
  %ob_type.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !2155
  %4 = bitcast i8* %ob_type.i to %struct._typeobject**, !dbg !2155
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %4, align 8, !dbg !2155, !tbaa !945
  %ob_refcnt.i = bitcast i8* %call.i to i64*, !dbg !2155
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2155, !tbaa !949
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !2156
  %5 = bitcast i8* %cval.sroa.0.0..sroa_idx.i to <2 x double>*, !dbg !2156
  store <2 x double> %2, <2 x double>* %5, align 8, !dbg !2156
  br label %PyComplex_FromCComplex.exit, !dbg !2157

PyComplex_FromCComplex.exit:                      ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi %struct._object* [ %call1.i, %if.then.i ], [ %3, %if.end.i ], !dbg !2158
  ret %struct._object* %retval.0.i, !dbg !2159
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_pos(%struct.PyComplexObject* %v) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyComplexObject* %v, i64 0, metadata !575, metadata !789), !dbg !2160
  %ob_type = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 0, i32 1, !dbg !2161
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2161, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %0, @PyComplex_Type, !dbg !2161
  br i1 %cmp, label %if.then, label %if.else, !dbg !2163

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 0, !dbg !2161
  %ob_refcnt = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 0, i32 0, !dbg !2164
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2164, !tbaa !949
  %inc = add i64 %2, 1, !dbg !2164
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2164, !tbaa !949
  br label %return, !dbg !2166

if.else:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 0, !dbg !2167
  %4 = bitcast double* %3 to <2 x i64>*, !dbg !2167
  %5 = load <2 x i64>, <2 x i64>* %4, align 1, !dbg !2167
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789) #2, !dbg !2168
  %call.i = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !2170
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2171
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !2172

if.then.i:                                        ; preds = %if.else
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2173
  br label %return, !dbg !2174

if.end.i:                                         ; preds = %if.else
  %6 = bitcast i8* %call.i to %struct._object*, !dbg !2175
  %ob_type.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !2175
  %7 = bitcast i8* %ob_type.i to %struct._typeobject**, !dbg !2175
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %7, align 8, !dbg !2175, !tbaa !945
  %ob_refcnt.i = bitcast i8* %call.i to i64*, !dbg !2175
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2175, !tbaa !949
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !2176
  %8 = bitcast i8* %cval.sroa.0.0..sroa_idx.i to <2 x i64>*, !dbg !2176
  store <2 x i64> %5, <2 x i64>* %8, align 8, !dbg !2176
  br label %return, !dbg !2177

return:                                           ; preds = %if.end.i, %if.then.i, %if.then
  %retval.0 = phi %struct._object* [ %1, %if.then ], [ %call1.i, %if.then.i ], [ %6, %if.end.i ]
  ret %struct._object* %retval.0, !dbg !2178
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_abs(%struct.PyComplexObject* nocapture readonly %v) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyComplexObject* %v, i64 0, metadata !578, metadata !789), !dbg !2179
  %0 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 0, !dbg !2180
  %1 = load double, double* %0, align 1, !dbg !2180
  %2 = getelementptr %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 1, !dbg !2180
  %3 = load double, double* %2, align 1, !dbg !2180
  %call = tail call double @_Py_c_abs(double %1, double %3), !dbg !2180
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !579, metadata !789), !dbg !2181
  %call1 = tail call i32* @__errno_location() #1, !dbg !2182
  %4 = load i32, i32* %call1, align 4, !dbg !2182, !tbaa !833
  %cmp = icmp eq i32 %4, 34, !dbg !2184
  br i1 %cmp, label %if.then, label %if.end, !dbg !2185

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2186, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !2188
  br label %cleanup, !dbg !2189

if.end:                                           ; preds = %entry
  %call2 = tail call %struct._object* @PyFloat_FromDouble(double %call) #2, !dbg !2190
  br label %cleanup, !dbg !2191

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call2, %if.end ]
  ret %struct._object* %retval.0, !dbg !2192
}

; Function Attrs: nounwind readonly uwtable
define internal i32 @complex_bool(%struct.PyComplexObject* nocapture readonly %v) #7 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyComplexObject* %v, i64 0, metadata !584, metadata !789), !dbg !2193
  %real = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 0, !dbg !2194
  %0 = load double, double* %real, align 8, !dbg !2194, !tbaa !977
  %cmp = fcmp une double %0, 0.000000e+00, !dbg !2195
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2196

lor.rhs:                                          ; preds = %entry
  %imag = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 1, !dbg !2197
  %1 = load double, double* %imag, align 8, !dbg !2197, !tbaa !994
  %cmp2 = fcmp une double %1, 0.000000e+00, !dbg !2198
  br label %lor.end, !dbg !2196

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !2199
  ret i32 %lor.ext, !dbg !2202
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @complex_int(%struct._object* nocapture readnone %v) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !587, metadata !789), !dbg !2203
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2204, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #2, !dbg !2205
  ret %struct._object* null, !dbg !2206
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @complex_float(%struct._object* nocapture readnone %v) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !590, metadata !789), !dbg !2207
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2208, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !2209
  ret %struct._object* null, !dbg !2210
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @complex_int_div(%struct._object* nocapture readnone %v, %struct._object* nocapture readnone %w) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !593, metadata !789), !dbg !2211
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !594, metadata !789), !dbg !2212
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2213, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0)) #2, !dbg !2214
  ret %struct._object* null, !dbg !2215
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_div(%struct._object* %v, %struct._object* %w) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !789), !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !520, metadata !789), !dbg !2217
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !789), !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !789), !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !789), !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !789), !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !789), !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !520, metadata !789), !dbg !2223
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !789), !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !789), !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !789), !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !789), !dbg !2222
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !599, metadata !789), !dbg !2228
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !2229
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2229, !tbaa !945
  %cmp = icmp eq %struct._typeobject* %0, @PyComplex_Type, !dbg !2229
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2229

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !2230
  %tobool = icmp eq i32 %call, 0, !dbg !2230
  br i1 %tobool, label %if.else, label %if.then, !dbg !2232

if.then:                                          ; preds = %lor.lhs.false, %entry
  %a.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, !dbg !2233
  %1 = bitcast %struct._object* %a.sroa.0.0..sroa_idx to double*, !dbg !2233
  %a.sroa.0.0.copyload = load double, double* %1, align 8, !dbg !2233
  %a.sroa.7.0..sroa_idx68 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 1, !dbg !2233
  %2 = bitcast %struct._typeobject** %a.sroa.7.0..sroa_idx68 to double*, !dbg !2233
  %a.sroa.7.0.copyload = load double, double* %2, align 8, !dbg !2233
  br label %if.end.5, !dbg !2233

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !600, metadata !789), !dbg !2236
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !2237
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !522, metadata !789) #2, !dbg !2238
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2239, !tbaa !945
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !2239
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !2239, !tbaa !1164
  %and.i = and i64 %4, 16777216, !dbg !2239
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !2239
  br i1 %cmp.i, label %if.end.6.i, label %if.then.i, !dbg !2240

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !2241
  %cmp3.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !2242
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.5, !dbg !2243

land.lhs.true.i:                                  ; preds = %if.then.i
  %call4.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2244
  %tobool.i = icmp eq %struct._object* %call4.i, null, !dbg !2244
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !2245

if.end.6.i:                                       ; preds = %if.else
  %cmp8.i = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !2246
  br i1 %cmp8.i, label %if.then.12.i, label %lor.lhs.false.i, !dbg !2246

lor.lhs.false.i:                                  ; preds = %if.end.6.i
  %call10.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2247
  %tobool11.i = icmp eq i32 %call10.i, 0, !dbg !2247
  br i1 %tobool11.i, label %if.end.15.i, label %if.then.12.i, !dbg !2248

if.then.12.i:                                     ; preds = %lor.lhs.false.i, %if.end.6.i
  %call13.i = tail call double @PyFloat_AsDouble(%struct._object* %v) #2, !dbg !2249
  br label %if.end.5, !dbg !2250

if.end.15.i:                                      ; preds = %lor.lhs.false.i
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2251, !tbaa !949
  %inc.i = add i64 %5, 1, !dbg !2251
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2251, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !2217
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !597, metadata !789), !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !597, metadata !789), !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !597, metadata !789), !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !597, metadata !789), !dbg !2216
  br label %cleanup, !dbg !2252

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then.12.i, %if.then
  %a.sroa.7.0.copyload80 = phi double [ %a.sroa.7.0.copyload, %if.then ], [ 0.000000e+00, %if.then.12.i ], [ 0.000000e+00, %land.lhs.true.i ], [ 0.000000e+00, %if.then.i ]
  %a.sroa.0.0.78 = phi double [ %a.sroa.0.0.copyload, %if.then ], [ %call13.i, %if.then.12.i ], [ -1.000000e+00, %land.lhs.true.i ], [ %call.i, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !2253
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2253, !tbaa !945
  %cmp7 = icmp eq %struct._typeobject* %6, @PyComplex_Type, !dbg !2253
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2253

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* nonnull @PyComplex_Type) #2, !dbg !2254
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2254
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !2256

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %b.sroa.0.0..sroa_idx = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, !dbg !2257
  %7 = bitcast %struct._object* %b.sroa.0.0..sroa_idx to double*, !dbg !2257
  %b.sroa.0.0.copyload = load double, double* %7, align 8, !dbg !2257
  %b.sroa.7.0..sroa_idx65 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 1, !dbg !2257
  %8 = bitcast %struct._typeobject** %b.sroa.7.0..sroa_idx65 to double*, !dbg !2257
  %b.sroa.7.0.copyload = load double, double* %8, align 8, !dbg !2257
  br label %if.end.19, !dbg !2257

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !601, metadata !789), !dbg !2260
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* undef, i64 0, metadata !521, metadata !789) #2, !dbg !2261
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !522, metadata !789) #2, !dbg !2262
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2263, !tbaa !945
  %tp_flags.i.34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 19, !dbg !2263
  %10 = load i64, i64* %tp_flags.i.34, align 8, !dbg !2263, !tbaa !1164
  %and.i.35 = and i64 %10, 16777216, !dbg !2263
  %cmp.i.36 = icmp eq i64 %and.i.35, 0, !dbg !2263
  br i1 %cmp.i.36, label %if.end.6.i.45, label %if.then.i.39, !dbg !2264

if.then.i.39:                                     ; preds = %if.else.14
  %call.i.37 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !2265
  %cmp3.i.38 = fcmp oeq double %call.i.37, -1.000000e+00, !dbg !2266
  br i1 %cmp3.i.38, label %land.lhs.true.i.42, label %if.end.19, !dbg !2267

land.lhs.true.i.42:                               ; preds = %if.then.i.39
  %call4.i.40 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2268
  %tobool.i.41 = icmp eq %struct._object* %call4.i.40, null, !dbg !2268
  br i1 %tobool.i.41, label %if.end.19, label %cleanup, !dbg !2269

if.end.6.i.45:                                    ; preds = %if.else.14
  %cmp8.i.44 = icmp eq %struct._typeobject* %9, @PyFloat_Type, !dbg !2270
  br i1 %cmp8.i.44, label %if.then.12.i.50, label %lor.lhs.false.i.48, !dbg !2270

lor.lhs.false.i.48:                               ; preds = %if.end.6.i.45
  %call10.i.46 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %9, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2271
  %tobool11.i.47 = icmp eq i32 %call10.i.46, 0, !dbg !2271
  br i1 %tobool11.i.47, label %if.end.15.i.52, label %if.then.12.i.50, !dbg !2272

if.then.12.i.50:                                  ; preds = %lor.lhs.false.i.48, %if.end.6.i.45
  %call13.i.49 = tail call double @PyFloat_AsDouble(%struct._object* %w) #2, !dbg !2273
  br label %if.end.19, !dbg !2274

if.end.15.i.52:                                   ; preds = %lor.lhs.false.i.48
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2275, !tbaa !949
  %inc.i.51 = add i64 %11, 1, !dbg !2275
  store i64 %inc.i.51, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2275, !tbaa !949
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !520, metadata !789), !dbg !2223
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !598, metadata !789), !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !598, metadata !789), !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !598, metadata !789), !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !598, metadata !789), !dbg !2222
  br label %cleanup, !dbg !2276

if.end.19:                                        ; preds = %if.then.i.39, %land.lhs.true.i.42, %if.then.12.i.50, %if.then.12
  %b.sroa.7.0.copyload77 = phi double [ %b.sroa.7.0.copyload, %if.then.12 ], [ 0.000000e+00, %if.then.12.i.50 ], [ 0.000000e+00, %land.lhs.true.i.42 ], [ 0.000000e+00, %if.then.i.39 ]
  %b.sroa.0.0.75 = phi double [ %b.sroa.0.0.copyload, %if.then.12 ], [ %call13.i.49, %if.then.12.i.50 ], [ -1.000000e+00, %land.lhs.true.i.42 ], [ %call.i.37, %if.then.i.39 ]
  %call20 = tail call i32* @__errno_location() #1, !dbg !2277
  store i32 0, i32* %call20, align 4, !dbg !2278, !tbaa !833
  tail call void @llvm.dbg.value(metadata double %a.sroa.0.0.78, i64 0, metadata !416, metadata !785) #2, !dbg !2279
  tail call void @llvm.dbg.value(metadata double %a.sroa.7.0.copyload80, i64 0, metadata !416, metadata !787) #2, !dbg !2279
  tail call void @llvm.dbg.value(metadata double %b.sroa.0.0.75, i64 0, metadata !417, metadata !785) #2, !dbg !2281
  tail call void @llvm.dbg.value(metadata double %b.sroa.7.0.copyload77, i64 0, metadata !417, metadata !787) #2, !dbg !2281
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !416, metadata !789) #2, !dbg !2279
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !417, metadata !789) #2, !dbg !2281
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !418, metadata !789) #2, !dbg !2282
  %cmp.i.55 = fcmp olt double %b.sroa.0.0.75, 0.000000e+00, !dbg !2283
  %sub.i = fsub double -0.000000e+00, %b.sroa.0.0.75, !dbg !2284
  %cond.i = select i1 %cmp.i.55, double %sub.i, double %b.sroa.0.0.75, !dbg !2285
  tail call void @llvm.dbg.value(metadata double %cond.i, i64 0, metadata !419, metadata !789) #2, !dbg !2286
  %cmp3.i.56 = fcmp olt double %b.sroa.7.0.copyload77, 0.000000e+00, !dbg !2287
  %sub6.i = fsub double -0.000000e+00, %b.sroa.7.0.copyload77, !dbg !2288
  %cond10.i = select i1 %cmp3.i.56, double %sub6.i, double %b.sroa.7.0.copyload77, !dbg !2289
  tail call void @llvm.dbg.value(metadata double %cond10.i, i64 0, metadata !421, metadata !789) #2, !dbg !2290
  %cmp11.i = fcmp ult double %cond.i, %cond10.i, !dbg !2291
  br i1 %cmp11.i, label %if.else.32.i, label %if.then.i.57, !dbg !2292

if.then.i.57:                                     ; preds = %if.end.19
  %cmp12.i = fcmp oeq double %cond.i, 0.000000e+00, !dbg !2293
  br i1 %cmp12.i, label %if.then.24, label %if.else.i, !dbg !2294

if.else.i:                                        ; preds = %if.then.i.57
  %div.i = fdiv double %b.sroa.7.0.copyload77, %b.sroa.0.0.75, !dbg !2295
  tail call void @llvm.dbg.value(metadata double %div.i, i64 0, metadata !422, metadata !789) #2, !dbg !2296
  %mul.i = fmul double %b.sroa.7.0.copyload77, %div.i, !dbg !2297
  %add.i = fadd double %b.sroa.0.0.75, %mul.i, !dbg !2298
  tail call void @llvm.dbg.value(metadata double %add.i, i64 0, metadata !427, metadata !789) #2, !dbg !2299
  %mul22.i = fmul double %a.sroa.7.0.copyload80, %div.i, !dbg !2300
  %add23.i = fadd double %a.sroa.0.0.78, %mul22.i, !dbg !2301
  %div24.i = fdiv double %add23.i, %add.i, !dbg !2302
  tail call void @llvm.dbg.value(metadata double %div24.i, i64 0, metadata !418, metadata !785) #2, !dbg !2282
  %mul28.i = fmul double %a.sroa.0.0.78, %div.i, !dbg !2303
  %sub29.i = fsub double %a.sroa.7.0.copyload80, %mul28.i, !dbg !2304
  %div30.i = fdiv double %sub29.i, %add.i, !dbg !2305
  tail call void @llvm.dbg.value(metadata double %div30.i, i64 0, metadata !418, metadata !787) #2, !dbg !2282
  br label %if.end.25, !dbg !2306

if.else.32.i:                                     ; preds = %if.end.19
  %div36.i = fdiv double %b.sroa.0.0.75, %b.sroa.7.0.copyload77, !dbg !2307
  tail call void @llvm.dbg.value(metadata double %div36.i, i64 0, metadata !428, metadata !789) #2, !dbg !2308
  %mul39.i = fmul double %b.sroa.0.0.75, %div36.i, !dbg !2309
  %add41.i = fadd double %b.sroa.7.0.copyload77, %mul39.i, !dbg !2310
  tail call void @llvm.dbg.value(metadata double %add41.i, i64 0, metadata !430, metadata !789) #2, !dbg !2311
  %mul43.i = fmul double %a.sroa.0.0.78, %div36.i, !dbg !2312
  %add45.i = fadd double %a.sroa.7.0.copyload80, %mul43.i, !dbg !2313
  %div46.i = fdiv double %add45.i, %add41.i, !dbg !2314
  tail call void @llvm.dbg.value(metadata double %div46.i, i64 0, metadata !418, metadata !785) #2, !dbg !2282
  %mul49.i = fmul double %a.sroa.7.0.copyload80, %div36.i, !dbg !2315
  %sub51.i = fsub double %mul49.i, %a.sroa.0.0.78, !dbg !2316
  %div52.i = fdiv double %sub51.i, %add41.i, !dbg !2317
  tail call void @llvm.dbg.value(metadata double %div52.i, i64 0, metadata !418, metadata !787) #2, !dbg !2282
  br label %if.end.25, !dbg !2306

if.then.24:                                       ; preds = %if.then.i.57
  store i32 33, i32* %call20, align 4, !dbg !2318, !tbaa !833
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !418, metadata !787) #2, !dbg !2282
  tail call void @llvm.dbg.value(metadata double %r.sroa.0.0.i.ph, i64 0, metadata !599, metadata !785), !dbg !2228
  tail call void @llvm.dbg.value(metadata double %r.sroa.6.0.i.ph, i64 0, metadata !599, metadata !787), !dbg !2228
  %12 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !2319, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0)) #2, !dbg !2322
  br label %cleanup, !dbg !2323

if.end.25:                                        ; preds = %if.else.32.i, %if.else.i
  %r.sroa.0.0.i.ph = phi double [ %div46.i, %if.else.32.i ], [ %div24.i, %if.else.i ]
  %r.sroa.6.0.i.ph = phi double [ %div52.i, %if.else.32.i ], [ %div30.i, %if.else.i ]
  tail call void @llvm.dbg.value(metadata double %r.sroa.0.0.i.ph, i64 0, metadata !599, metadata !785), !dbg !2228
  tail call void @llvm.dbg.value(metadata double %r.sroa.6.0.i.ph, i64 0, metadata !599, metadata !787), !dbg !2228
  tail call void @llvm.dbg.value(metadata double %r.sroa.0.0.i.ph, i64 0, metadata !450, metadata !785) #2, !dbg !2324
  tail call void @llvm.dbg.value(metadata double %r.sroa.6.0.i.ph, i64 0, metadata !450, metadata !787) #2, !dbg !2324
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789) #2, !dbg !2324
  %call.i.59 = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !2326
  %cmp.i.60 = icmp eq i8* %call.i.59, null, !dbg !2327
  br i1 %cmp.i.60, label %if.then.i.61, label %if.end.i, !dbg !2328

if.then.i.61:                                     ; preds = %if.end.25
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2329
  br label %cleanup, !dbg !2330

if.end.i:                                         ; preds = %if.end.25
  %13 = bitcast i8* %call.i.59 to %struct._object*, !dbg !2331
  %ob_type.i.62 = getelementptr inbounds i8, i8* %call.i.59, i64 8, !dbg !2331
  %14 = bitcast i8* %ob_type.i.62 to %struct._typeobject**, !dbg !2331
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %14, align 8, !dbg !2331, !tbaa !945
  %ob_refcnt.i = bitcast i8* %call.i.59 to i64*, !dbg !2331
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2331, !tbaa !949
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call.i.59, i64 16, !dbg !2332
  %15 = bitcast i8* %cval.sroa.0.0..sroa_idx.i to double*, !dbg !2332
  store double %r.sroa.0.0.i.ph, double* %15, align 8, !dbg !2332
  %cval.sroa.2.0..sroa_idx9.i = getelementptr inbounds i8, i8* %call.i.59, i64 24, !dbg !2332
  %16 = bitcast i8* %cval.sroa.2.0..sroa_idx9.i to double*, !dbg !2332
  store double %r.sroa.6.0.i.ph, double* %16, align 8, !dbg !2332
  br label %cleanup, !dbg !2333

cleanup:                                          ; preds = %land.lhs.true.i.42, %land.lhs.true.i, %if.end.i, %if.then.i.61, %if.end.15.i.52, %if.end.15.i, %if.then.24
  %retval.0 = phi %struct._object* [ null, %if.then.24 ], [ @_Py_NotImplementedStruct, %if.end.15.i ], [ @_Py_NotImplementedStruct, %if.end.15.i.52 ], [ %call1.i, %if.then.i.61 ], [ %13, %if.end.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.42 ]
  ret %struct._object* %retval.0, !dbg !2334
}

declare double @PyLong_AsDouble(%struct._object*) #6

declare %struct._object* @PyFloat_FromDouble(double) #6

declare i64 @_Py_HashDouble(double) #6

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #6

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_conjugate(%struct._object* nocapture readonly %self) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !632, metadata !789), !dbg !2335
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !633, metadata !789), !dbg !2336
  %0 = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 0, !dbg !2337
  %c.sroa.0.0.copyload6 = load i64, i64* %0, align 8, !dbg !2337
  %c.sroa.4.0..sroa_idx3 = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 1, !dbg !2337
  %1 = bitcast %struct._typeobject** %c.sroa.4.0..sroa_idx3 to double*, !dbg !2337
  %c.sroa.4.0.copyload = load double, double* %1, align 8, !dbg !2337
  tail call void @llvm.dbg.value(metadata double %c.sroa.4.0.copyload, i64 0, metadata !633, metadata !787), !dbg !2336
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !633, metadata !787), !dbg !2336
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !450, metadata !787) #2, !dbg !2338
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !450, metadata !789) #2, !dbg !2338
  %call.i = tail call i8* @PyObject_Malloc(i64 32) #2, !dbg !2340
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2341
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !2342

if.then.i:                                        ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2343
  br label %PyComplex_FromCComplex.exit, !dbg !2344

if.end.i:                                         ; preds = %entry
  %sub = fsub double -0.000000e+00, %c.sroa.4.0.copyload, !dbg !2345
  %2 = bitcast i8* %call.i to %struct._object*, !dbg !2346
  %ob_type.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !2346
  %3 = bitcast i8* %ob_type.i to %struct._typeobject**, !dbg !2346
  store %struct._typeobject* @PyComplex_Type, %struct._typeobject** %3, align 8, !dbg !2346, !tbaa !945
  %ob_refcnt.i = bitcast i8* %call.i to i64*, !dbg !2346
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2346, !tbaa !949
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !2347
  %4 = bitcast i8* %cval.sroa.0.0..sroa_idx.i to i64*, !dbg !2347
  store i64 %c.sroa.0.0.copyload6, i64* %4, align 8, !dbg !2347
  %cval.sroa.2.0..sroa_idx9.i = getelementptr inbounds i8, i8* %call.i, i64 24, !dbg !2347
  %5 = bitcast i8* %cval.sroa.2.0..sroa_idx9.i to double*, !dbg !2347
  store double %sub, double* %5, align 8, !dbg !2347
  br label %PyComplex_FromCComplex.exit, !dbg !2348

PyComplex_FromCComplex.exit:                      ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi %struct._object* [ %call1.i, %if.then.i ], [ %2, %if.end.i ], !dbg !2349
  ret %struct._object* %retval.0.i, !dbg !2350
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex_getnewargs(%struct.PyComplexObject* nocapture readonly %v) #3 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyComplexObject* %v, i64 0, metadata !636, metadata !789), !dbg !2351
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !637, metadata !789), !dbg !2352
  %c.sroa.0.0..sroa_idx = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 0, !dbg !2353
  %c.sroa.0.0.copyload = load double, double* %c.sroa.0.0..sroa_idx, align 8, !dbg !2353
  tail call void @llvm.dbg.value(metadata double %c.sroa.0.0.copyload, i64 0, metadata !637, metadata !785), !dbg !2352
  %c.sroa.4.0..sroa_idx2 = getelementptr inbounds %struct.PyComplexObject, %struct.PyComplexObject* %v, i64 0, i32 1, i32 1, !dbg !2353
  %c.sroa.4.0.copyload = load double, double* %c.sroa.4.0..sroa_idx2, align 8, !dbg !2353
  tail call void @llvm.dbg.value(metadata double %c.sroa.4.0.copyload, i64 0, metadata !637, metadata !787), !dbg !2352
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), double %c.sroa.0.0.copyload, double %c.sroa.4.0.copyload) #2, !dbg !2354
  ret %struct._object* %call, !dbg !2355
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @complex__format__(%struct._object* %self, %struct._object* %args) #3 {
entry:
  %format_spec = alloca %struct._object*, align 8
  %writer = alloca %struct._PyUnicodeWriter, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !640, metadata !789), !dbg !2356
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !641, metadata !789), !dbg !2357
  %0 = bitcast %struct._object** %format_spec to i8*, !dbg !2358
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2358
  %1 = bitcast %struct._PyUnicodeWriter* %writer to i8*, !dbg !2359
  call void @llvm.lifetime.start(i64 56, i8* %1) #2, !dbg !2359
  tail call void @llvm.dbg.value(metadata %struct._object** %format_spec, i64 0, metadata !642, metadata !789), !dbg !2360
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), %struct._object** nonnull %format_spec) #2, !dbg !2361
  %tobool = icmp eq i32 %call, 0, !dbg !2361
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2363

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !643, metadata !789), !dbg !2364
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* nonnull %writer) #2, !dbg !2365
  call void @llvm.dbg.value(metadata %struct._object** %format_spec, i64 0, metadata !642, metadata !789), !dbg !2360
  %2 = load %struct._object*, %struct._object** %format_spec, align 8, !dbg !2366, !tbaa !1051
  %3 = getelementptr inbounds %struct._object, %struct._object* %2, i64 1, i32 0, !dbg !2367
  %4 = load i64, i64* %3, align 8, !dbg !2367, !tbaa !2368
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !643, metadata !789), !dbg !2364
  %call1 = call i32 @_PyComplex_FormatAdvancedWriter(%struct._PyUnicodeWriter* nonnull %writer, %struct._object* %self, %struct._object* %2, i64 0, i64 %4) #2, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !658, metadata !789), !dbg !2372
  %cmp = icmp eq i32 %call1, -1, !dbg !2373
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !643, metadata !789), !dbg !2364
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2375

if.then.2:                                        ; preds = %if.end
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* nonnull %writer) #2, !dbg !2376
  br label %cleanup, !dbg !2378

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* nonnull %writer) #2, !dbg !2379
  br label %cleanup, !dbg !2380

cleanup:                                          ; preds = %entry, %if.end.3, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ %call4, %if.end.3 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 56, i8* %1) #2, !dbg !2381
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2381
  ret %struct._object* %retval.0, !dbg !2381
}

declare %struct._object* @Py_BuildValue(i8*, ...) #6

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #6

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #6

declare i32 @_PyComplex_FormatAdvancedWriter(%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64) #6

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #6

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #6

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #6

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #6

declare %struct._object* @PyNumber_Float(%struct._object*) #6

declare %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object*) #6

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #6

declare double @PyOS_string_to_double(i8*, i8**, %struct._object*) #6

declare i32 @PyErr_ExceptionMatches(%struct._object*) #6

declare void @PyErr_Clear() #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!782, !783}
!llvm.ident = !{!784}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !390, globals: !746)
!1 = !DIFile(filename: "Objects/complexobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !102, !50, !28, !368, !370, !231, !371, !389}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyComplexObject", file: !13, line: 44, baseType: !14)
!13 = !DIFile(filename: "Include/complexobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 41, size: 256, align: 64, elements: !15)
!15 = !{!16, !363}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !14, file: !13, line: 42, baseType: !17, size: 128, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !18, line: 109, baseType: !19)
!18 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !18, line: 105, size: 128, align: 64, elements: !20)
!20 = !{!21, !29}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !19, file: !18, line: 107, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !23, line: 177, baseType: !24)
!23 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 102, baseType: !26)
!25 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 181, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!60 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!108 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!294 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!295 = !{!296, !297, !299, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !293, file: !294, line: 41, baseType: !40, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !293, file: !294, line: 42, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !294, line: 18, baseType: !138)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !293, file: !294, line: 43, baseType: !56, size: 32, align: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !293, file: !294, line: 45, baseType: !40, size: 64, align: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !31, file: !18, line: 390, baseType: !302, size: 64, align: 64, offset: 1920)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !304, line: 18, size: 320, align: 64, elements: !305)
!304 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!305 = !{!306, !307, !308, !309, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !304, line: 19, baseType: !64, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !303, file: !304, line: 20, baseType: !56, size: 32, align: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !303, file: !304, line: 21, baseType: !22, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !304, line: 22, baseType: !56, size: 32, align: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !303, file: !304, line: 23, baseType: !64, size: 64, align: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !31, file: !18, line: 391, baseType: !312, size: 64, align: 64, offset: 1984)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !314, line: 11, size: 320, align: 64, elements: !315)
!314 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!390 = !{!391, !398, !403, !409, !414, !431, !440, !446, !452, !459, !464, !467, !478, !491, !494, !507, !514, !523, !530, !537, !541, !545, !555, !562, !569, !573, !576, !580, !585, !588, !591, !595, !602, !610, !630, !634, !638, !659, !706, !731, !739}
!391 = !DISubprogram(name: "_Py_c_sum", scope: !1, file: !1, line: 16, type: !392, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_sum, variables: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!364, !364, !364}
!394 = !{!395, !396, !397}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !391, file: !1, line: 16, type: !364)
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !391, file: !1, line: 16, type: !364)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !391, file: !1, line: 18, type: !364)
!398 = !DISubprogram(name: "_Py_c_diff", scope: !1, file: !1, line: 25, type: !392, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_diff, variables: !399)
!399 = !{!400, !401, !402}
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !398, file: !1, line: 25, type: !364)
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !398, file: !1, line: 25, type: !364)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !398, file: !1, line: 27, type: !364)
!403 = !DISubprogram(name: "_Py_c_neg", scope: !1, file: !1, line: 34, type: !404, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double)* @_Py_c_neg, variables: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!364, !364}
!406 = !{!407, !408}
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !403, file: !1, line: 34, type: !364)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !403, file: !1, line: 36, type: !364)
!409 = !DISubprogram(name: "_Py_c_prod", scope: !1, file: !1, line: 43, type: !392, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_prod, variables: !410)
!410 = !{!411, !412, !413}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !409, file: !1, line: 43, type: !364)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !409, file: !1, line: 43, type: !364)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !409, file: !1, line: 45, type: !364)
!414 = !DISubprogram(name: "_Py_c_quot", scope: !1, file: !1, line: 52, type: !392, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_quot, variables: !415)
!415 = !{!416, !417, !418, !419, !421, !422, !427, !428, !430}
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !414, file: !1, line: 52, type: !364)
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !414, file: !1, line: 52, type: !364)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !414, file: !1, line: 77, type: !364)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "abs_breal", scope: !414, file: !1, line: 78, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "abs_bimag", scope: !414, file: !1, line: 79, type: !420)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ratio", scope: !423, file: !1, line: 88, type: !420)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 87, column: 14)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 83, column: 13)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 81, column: 34)
!426 = distinct !DILexicalBlock(scope: !414, file: !1, line: 81, column: 10)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "denom", scope: !423, file: !1, line: 89, type: !420)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ratio", scope: !429, file: !1, line: 96, type: !420)
!429 = distinct !DILexicalBlock(scope: !426, file: !1, line: 94, column: 10)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "denom", scope: !429, file: !1, line: 97, type: !420)
!431 = !DISubprogram(name: "_Py_c_pow", scope: !1, file: !1, line: 106, type: !392, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @_Py_c_pow, variables: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !439}
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !431, file: !1, line: 106, type: !364)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !431, file: !1, line: 106, type: !364)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !431, file: !1, line: 108, type: !364)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vabs", scope: !431, file: !1, line: 109, type: !368)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !431, file: !1, line: 109, type: !368)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "at", scope: !431, file: !1, line: 109, type: !368)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "phase", scope: !431, file: !1, line: 109, type: !368)
!440 = !DISubprogram(name: "_Py_c_abs", scope: !1, file: !1, line: 169, type: !441, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double)* @_Py_c_abs, variables: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{!368, !364}
!443 = !{!444, !445}
!444 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "z", arg: 1, scope: !440, file: !1, line: 169, type: !364)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !440, file: !1, line: 172, type: !368)
!446 = !DISubprogram(name: "PyComplex_FromCComplex", scope: !1, file: !1, line: 212, type: !447, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (double, double)* @PyComplex_FromCComplex, variables: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!50, !364}
!449 = !{!450, !451}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cval", arg: 1, scope: !446, file: !1, line: 212, type: !364)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !446, file: !1, line: 214, type: !11)
!452 = !DISubprogram(name: "PyComplex_FromDoubles", scope: !1, file: !1, line: 235, type: !453, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (double, double)* @PyComplex_FromDoubles, variables: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!50, !368, !368}
!455 = !{!456, !457, !458}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "real", arg: 1, scope: !452, file: !1, line: 235, type: !368)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "imag", arg: 2, scope: !452, file: !1, line: 235, type: !368)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !452, file: !1, line: 237, type: !364)
!459 = !DISubprogram(name: "PyComplex_RealAsDouble", scope: !1, file: !1, line: 244, type: !460, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._object*)* @PyComplex_RealAsDouble, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!368, !50}
!462 = !{!463}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !459, file: !1, line: 244, type: !50)
!464 = !DISubprogram(name: "PyComplex_ImagAsDouble", scope: !1, file: !1, line: 255, type: !460, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._object*)* @PyComplex_ImagAsDouble, variables: !465)
!465 = !{!466}
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !464, file: !1, line: 255, type: !50)
!467 = !DISubprogram(name: "PyComplex_AsCComplex", scope: !1, file: !1, line: 286, type: !468, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (%struct._object*)* @PyComplex_AsCComplex, variables: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!364, !50}
!470 = !{!471, !472, !473, !474}
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !467, file: !1, line: 286, type: !50)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cv", scope: !467, file: !1, line: 288, type: !364)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newop", scope: !467, file: !1, line: 289, type: !50)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !475, file: !1, line: 306, type: !50)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 306, column: 9)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 304, column: 16)
!477 = distinct !DILexicalBlock(scope: !467, file: !1, line: 304, column: 9)
!478 = !DISubprogram(name: "try_complex_special_method", scope: !1, file: !1, line: 266, type: !129, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @try_complex_special_method, variables: !479)
!479 = !{!480, !481, !482, !485, !487}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !478, file: !1, line: 266, type: !50)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !478, file: !1, line: 267, type: !50)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !483, file: !1, line: 272, type: !50)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 271, column: 12)
!484 = distinct !DILexicalBlock(scope: !478, file: !1, line: 271, column: 9)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !486, file: !1, line: 273, type: !50)
!486 = distinct !DILexicalBlock(scope: !483, file: !1, line: 273, column: 9)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !488, file: !1, line: 277, type: !50)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 277, column: 13)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 274, column: 51)
!490 = distinct !DILexicalBlock(scope: !483, file: !1, line: 274, column: 13)
!491 = !DISubprogram(name: "complex_dealloc", scope: !1, file: !1, line: 322, type: !48, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @complex_dealloc, variables: !492)
!492 = !{!493}
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !491, file: !1, line: 322, type: !50)
!494 = !DISubprogram(name: "complex_repr", scope: !1, file: !1, line: 328, type: !495, isLocal: true, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_repr, variables: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!50, !11}
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506}
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !494, file: !1, line: 328, type: !11)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "precision", scope: !494, file: !1, line: 330, type: !56)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_code", scope: !494, file: !1, line: 331, type: !42)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !494, file: !1, line: 332, type: !50)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pre", scope: !494, file: !1, line: 335, type: !64)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !494, file: !1, line: 336, type: !64)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re", scope: !494, file: !1, line: 341, type: !64)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lead", scope: !494, file: !1, line: 342, type: !64)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !494, file: !1, line: 343, type: !64)
!507 = !DISubprogram(name: "complex_add", scope: !1, file: !1, line: 437, type: !139, isLocal: true, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_add, variables: !508)
!508 = !{!509, !510, !511, !512, !513}
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !507, file: !1, line: 437, type: !50)
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !507, file: !1, line: 437, type: !50)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !507, file: !1, line: 439, type: !364)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !507, file: !1, line: 440, type: !364)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !507, file: !1, line: 440, type: !364)
!514 = !DISubprogram(name: "to_complex", scope: !1, file: !1, line: 413, type: !515, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, variables: !519)
!515 = !DISubroutineType(types: !516)
!516 = !{!56, !517, !518}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!519 = !{!520, !521, !522}
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pobj", arg: 1, scope: !514, file: !1, line: 413, type: !517)
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pc", arg: 2, scope: !514, file: !1, line: 413, type: !518)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !514, file: !1, line: 415, type: !50)
!523 = !DISubprogram(name: "complex_sub", scope: !1, file: !1, line: 450, type: !139, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_sub, variables: !524)
!524 = !{!525, !526, !527, !528, !529}
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !523, file: !1, line: 450, type: !50)
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !523, file: !1, line: 450, type: !50)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !523, file: !1, line: 452, type: !364)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !523, file: !1, line: 453, type: !364)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !523, file: !1, line: 453, type: !364)
!530 = !DISubprogram(name: "complex_mul", scope: !1, file: !1, line: 463, type: !139, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_mul, variables: !531)
!531 = !{!532, !533, !534, !535, !536}
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !530, file: !1, line: 463, type: !50)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !530, file: !1, line: 463, type: !50)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !530, file: !1, line: 465, type: !364)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !530, file: !1, line: 466, type: !364)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !530, file: !1, line: 466, type: !364)
!537 = !DISubprogram(name: "complex_remainder", scope: !1, file: !1, line: 494, type: !139, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_remainder, variables: !538)
!538 = !{!539, !540}
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !537, file: !1, line: 494, type: !50)
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !537, file: !1, line: 494, type: !50)
!541 = !DISubprogram(name: "complex_divmod", scope: !1, file: !1, line: 503, type: !139, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_divmod, variables: !542)
!542 = !{!543, !544}
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !541, file: !1, line: 503, type: !50)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !541, file: !1, line: 503, type: !50)
!545 = !DISubprogram(name: "complex_pow", scope: !1, file: !1, line: 511, type: !148, isLocal: true, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @complex_pow, variables: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554}
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !545, file: !1, line: 511, type: !50)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !545, file: !1, line: 511, type: !50)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "z", arg: 3, scope: !545, file: !1, line: 511, type: !50)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !545, file: !1, line: 513, type: !364)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exponent", scope: !545, file: !1, line: 514, type: !364)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "int_exponent", scope: !545, file: !1, line: 515, type: !28)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !545, file: !1, line: 516, type: !364)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !545, file: !1, line: 516, type: !364)
!555 = !DISubprogram(name: "c_powi", scope: !1, file: !1, line: 152, type: !556, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, variables: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!364, !364, !28}
!558 = !{!559, !560, !561}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !555, file: !1, line: 152, type: !364)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !555, file: !1, line: 152, type: !28)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cn", scope: !555, file: !1, line: 154, type: !364)
!562 = !DISubprogram(name: "c_powu", scope: !1, file: !1, line: 136, type: !556, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, variables: !563)
!563 = !{!564, !565, !566, !567, !568}
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !562, file: !1, line: 136, type: !364)
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !562, file: !1, line: 136, type: !28)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !562, file: !1, line: 138, type: !364)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !562, file: !1, line: 138, type: !364)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !562, file: !1, line: 139, type: !28)
!569 = !DISubprogram(name: "complex_neg", scope: !1, file: !1, line: 557, type: !495, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_neg, variables: !570)
!570 = !{!571, !572}
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !569, file: !1, line: 557, type: !11)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "neg", scope: !569, file: !1, line: 559, type: !364)
!573 = !DISubprogram(name: "complex_pos", scope: !1, file: !1, line: 566, type: !495, isLocal: true, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_pos, variables: !574)
!574 = !{!575}
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !573, file: !1, line: 566, type: !11)
!576 = !DISubprogram(name: "complex_abs", scope: !1, file: !1, line: 577, type: !495, isLocal: true, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_abs, variables: !577)
!577 = !{!578, !579}
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !576, file: !1, line: 577, type: !11)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !576, file: !1, line: 579, type: !368)
!580 = !DISubprogram(name: "complex_bool", scope: !1, file: !1, line: 594, type: !581, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyComplexObject*)* @complex_bool, variables: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!56, !11}
!583 = !{!584}
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !580, file: !1, line: 594, type: !11)
!585 = !DISubprogram(name: "complex_int", scope: !1, file: !1, line: 657, type: !129, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @complex_int, variables: !586)
!586 = !{!587}
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !585, file: !1, line: 657, type: !50)
!588 = !DISubprogram(name: "complex_float", scope: !1, file: !1, line: 665, type: !129, isLocal: true, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @complex_float, variables: !589)
!589 = !{!590}
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !588, file: !1, line: 665, type: !50)
!591 = !DISubprogram(name: "complex_int_div", scope: !1, file: !1, line: 549, type: !139, isLocal: true, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_int_div, variables: !592)
!592 = !{!593, !594}
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !591, file: !1, line: 549, type: !50)
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !591, file: !1, line: 549, type: !50)
!595 = !DISubprogram(name: "complex_div", scope: !1, file: !1, line: 476, type: !139, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex_div, variables: !596)
!596 = !{!597, !598, !599, !600, !601}
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !595, file: !1, line: 476, type: !50)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !595, file: !1, line: 476, type: !50)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quot", scope: !595, file: !1, line: 478, type: !364)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !595, file: !1, line: 479, type: !364)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !595, file: !1, line: 479, type: !364)
!602 = !DISubprogram(name: "complex_hash", scope: !1, file: !1, line: 384, type: !603, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyComplexObject*)* @complex_hash, variables: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!231, !11}
!605 = !{!606, !607, !608, !609}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !602, file: !1, line: 384, type: !11)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hashreal", scope: !602, file: !1, line: 386, type: !370)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hashimag", scope: !602, file: !1, line: 386, type: !370)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "combined", scope: !602, file: !1, line: 386, type: !370)
!610 = !DISubprogram(name: "complex_richcompare", scope: !1, file: !1, line: 600, type: !284, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @complex_richcompare, variables: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !623, !624, !626}
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !610, file: !1, line: 600, type: !50)
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !610, file: !1, line: 600, type: !50)
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !610, file: !1, line: 600, type: !56)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !610, file: !1, line: 602, type: !50)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !610, file: !1, line: 603, type: !364)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "equal", scope: !610, file: !1, line: 604, type: !56)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !619, file: !1, line: 618, type: !50)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 617, column: 28)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 617, column: 13)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 613, column: 26)
!622 = distinct !DILexicalBlock(scope: !610, file: !1, line: 613, column: 9)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sub_res", scope: !619, file: !1, line: 618, type: !50)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !625, file: !1, line: 624, type: !50)
!625 = distinct !DILexicalBlock(scope: !619, file: !1, line: 624, column: 13)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !627, file: !1, line: 635, type: !364)
!627 = distinct !DILexicalBlock(scope: !628, file: !1, line: 634, column: 34)
!628 = distinct !DILexicalBlock(scope: !629, file: !1, line: 634, column: 14)
!629 = distinct !DILexicalBlock(scope: !622, file: !1, line: 631, column: 14)
!630 = !DISubprogram(name: "complex_conjugate", scope: !1, file: !1, line: 673, type: !129, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @complex_conjugate, variables: !631)
!631 = !{!632, !633}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !630, file: !1, line: 673, type: !50)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !630, file: !1, line: 675, type: !364)
!634 = !DISubprogram(name: "complex_getnewargs", scope: !1, file: !1, line: 687, type: !495, isLocal: true, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyComplexObject*)* @complex_getnewargs, variables: !635)
!635 = !{!636, !637}
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !634, file: !1, line: 687, type: !11)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !634, file: !1, line: 689, type: !364)
!638 = !DISubprogram(name: "complex__format__", scope: !1, file: !1, line: 699, type: !139, isLocal: true, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @complex__format__, variables: !639)
!639 = !{!640, !641, !642, !643, !658}
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !638, file: !1, line: 699, type: !50)
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !638, file: !1, line: 699, type: !50)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_spec", scope: !638, file: !1, line: 701, type: !50)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writer", scope: !638, file: !1, line: 702, type: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyUnicodeWriter", file: !4, line: 917, baseType: !645)
!645 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 897, size: 448, align: 64, elements: !646)
!646 = !{!647, !648, !649, !650, !652, !653, !654, !655, !656, !657}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !645, file: !4, line: 898, baseType: !50, size: 64, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !645, file: !4, line: 899, baseType: !102, size: 64, align: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !645, file: !4, line: 900, baseType: !3, size: 32, align: 32, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "maxchar", scope: !645, file: !4, line: 901, baseType: !651, size: 32, align: 32, offset: 160)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !361)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !645, file: !4, line: 902, baseType: !22, size: 64, align: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !645, file: !4, line: 903, baseType: !22, size: 64, align: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !645, file: !4, line: 906, baseType: !22, size: 64, align: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "min_char", scope: !645, file: !4, line: 909, baseType: !651, size: 32, align: 32, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "overallocate", scope: !645, file: !4, line: 912, baseType: !389, size: 8, align: 8, offset: 416)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !645, file: !4, line: 916, baseType: !389, size: 8, align: 8, offset: 424)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !638, file: !1, line: 703, type: !56)
!659 = !DISubprogram(name: "complex_new", scope: !1, file: !1, line: 901, type: !660, isLocal: true, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @complex_new, variables: !664)
!660 = !DISubroutineType(types: !661)
!661 = !{!50, !662, !50, !50}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !18, line: 422, baseType: !31)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !684, !690, !695, !699, !701}
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !659, file: !1, line: 901, type: !662)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !659, file: !1, line: 901, type: !50)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !659, file: !1, line: 901, type: !50)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !659, file: !1, line: 903, type: !50)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !659, file: !1, line: 903, type: !50)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !659, file: !1, line: 903, type: !50)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbr", scope: !659, file: !1, line: 904, type: !132)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbi", scope: !659, file: !1, line: 904, type: !132)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cr", scope: !659, file: !1, line: 905, type: !364)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ci", scope: !659, file: !1, line: 905, type: !364)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "own_r", scope: !659, file: !1, line: 906, type: !56)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cr_is_complex", scope: !659, file: !1, line: 907, type: !56)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ci_is_complex", scope: !659, file: !1, line: 908, type: !56)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !679, file: !1, line: 961, type: !50)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 961, column: 13)
!680 = distinct !DILexicalBlock(scope: !681, file: !1, line: 960, column: 20)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 960, column: 13)
!682 = distinct !DILexicalBlock(scope: !683, file: !1, line: 956, column: 66)
!683 = distinct !DILexicalBlock(scope: !659, file: !1, line: 955, column: 9)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !685, file: !1, line: 980, type: !50)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 980, column: 13)
!686 = distinct !DILexicalBlock(scope: !687, file: !1, line: 979, column: 20)
!687 = distinct !DILexicalBlock(scope: !688, file: !1, line: 979, column: 13)
!688 = distinct !DILexicalBlock(scope: !689, file: !1, line: 973, column: 29)
!689 = distinct !DILexicalBlock(scope: !659, file: !1, line: 973, column: 9)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !691, file: !1, line: 991, type: !50)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 991, column: 13)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 988, column: 20)
!693 = distinct !DILexicalBlock(scope: !694, file: !1, line: 988, column: 13)
!694 = distinct !DILexicalBlock(scope: !689, file: !1, line: 983, column: 10)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !696, file: !1, line: 998, type: !50)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 998, column: 13)
!697 = distinct !DILexicalBlock(scope: !698, file: !1, line: 995, column: 34)
!698 = distinct !DILexicalBlock(scope: !694, file: !1, line: 995, column: 13)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !700, file: !1, line: 1003, type: !50)
!700 = distinct !DILexicalBlock(scope: !694, file: !1, line: 1003, column: 9)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !702, file: !1, line: 1019, type: !50)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 1019, column: 9)
!703 = distinct !DILexicalBlock(scope: !704, file: !1, line: 1011, column: 12)
!704 = distinct !DILexicalBlock(scope: !705, file: !1, line: 1008, column: 14)
!705 = distinct !DILexicalBlock(scope: !659, file: !1, line: 1005, column: 9)
!706 = !DISubprogram(name: "complex_subtype_from_string", scope: !1, file: !1, line: 758, type: !707, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: true, variables: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{!50, !662, !50}
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !723, !726, !728}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !706, file: !1, line: 758, type: !662)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !706, file: !1, line: 758, type: !50)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !706, file: !1, line: 760, type: !40)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !706, file: !1, line: 760, type: !40)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !706, file: !1, line: 761, type: !64)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !706, file: !1, line: 762, type: !368)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !706, file: !1, line: 762, type: !368)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !706, file: !1, line: 762, type: !368)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "got_bracket", scope: !706, file: !1, line: 763, type: !56)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_buffer", scope: !706, file: !1, line: 764, type: !50)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !706, file: !1, line: 765, type: !22)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !722, file: !1, line: 889, type: !50)
!722 = distinct !DILexicalBlock(scope: !706, file: !1, line: 889, column: 5)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !724, file: !1, line: 889, type: !50)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 889, column: 5)
!725 = distinct !DILexicalBlock(scope: !722, file: !1, line: 889, column: 5)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !727, file: !1, line: 896, type: !50)
!727 = distinct !DILexicalBlock(scope: !706, file: !1, line: 896, column: 5)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !729, file: !1, line: 896, type: !50)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 896, column: 5)
!730 = distinct !DILexicalBlock(scope: !727, file: !1, line: 896, column: 5)
!731 = !DISubprogram(name: "complex_subtype_from_doubles", scope: !1, file: !1, line: 226, type: !732, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, variables: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!50, !662, !368, !368}
!734 = !{!735, !736, !737, !738}
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !731, file: !1, line: 226, type: !662)
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "real", arg: 2, scope: !731, file: !1, line: 226, type: !368)
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "imag", arg: 3, scope: !731, file: !1, line: 226, type: !368)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !731, file: !1, line: 228, type: !364)
!739 = !DISubprogram(name: "complex_subtype_from_c_complex", scope: !1, file: !1, line: 201, type: !740, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, variables: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{!50, !662, !364}
!742 = !{!743, !744, !745}
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !739, file: !1, line: 201, type: !662)
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cval", arg: 2, scope: !739, file: !1, line: 201, type: !364)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !739, file: !1, line: 203, type: !50)
!746 = !{!747, !748, !756, !757, !758, !762, !767, !771, !775, !780}
!747 = !DIGlobalVariable(name: "PyComplex_Type", scope: !0, file: !1, line: 1076, type: !663, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyComplex_Type)
!748 = !DIGlobalVariable(name: "PyId___complex__", scope: !478, file: !1, line: 268, type: !749, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @try_complex_special_method.PyId___complex__)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !18, line: 144, baseType: !750)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !18, line: 140, size: 192, align: 64, elements: !751)
!751 = !{!752, !754, !755}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !18, line: 141, baseType: !753, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !750, file: !18, line: 142, baseType: !40, size: 64, align: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !750, file: !18, line: 143, baseType: !50, size: 64, align: 64, offset: 128)
!756 = !DIGlobalVariable(name: "complex_as_number", scope: !0, file: !1, line: 1040, type: !133, isLocal: true, isDefinition: true, variable: %struct.PyNumberMethods* @complex_as_number)
!757 = !DIGlobalVariable(name: "c_1", scope: !0, file: !1, line: 13, type: !364, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariable(name: "complex_doc", scope: !0, file: !1, line: 1034, type: !759, isLocal: true, isDefinition: true, variable: [179 x i8]* @complex_doc)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1432, align: 8, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 179)
!762 = !DIGlobalVariable(name: "complex_methods", scope: !0, file: !1, line: 736, type: !763, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @complex_methods)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 1024, align: 64, elements: !765)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !294, line: 47, baseType: !293)
!765 = !{!766}
!766 = !DISubrange(count: 4)
!767 = !DIGlobalVariable(name: "complex_conjugate_doc", scope: !0, file: !1, line: 681, type: !768, isLocal: true, isDefinition: true, variable: [106 x i8]* @complex_conjugate_doc)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 848, align: 8, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 106)
!771 = !DIGlobalVariable(name: "complex__format__doc", scope: !0, file: !1, line: 693, type: !772, isLocal: true, isDefinition: true, variable: [75 x i8]* @complex__format__doc)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 600, align: 8, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 75)
!775 = !DIGlobalVariable(name: "complex_members", scope: !0, file: !1, line: 749, type: !776, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMemberDef]* @complex_members)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 960, align: 64, elements: !778)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !304, line: 24, baseType: !303)
!778 = !{!779}
!779 = !DISubrange(count: 3)
!780 = !DIGlobalVariable(name: "kwlist", scope: !659, file: !1, line: 909, type: !781, isLocal: true, isDefinition: true, variable: [3 x i8*]* @complex_new.kwlist)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, align: 64, elements: !778)
!782 = !{i32 2, !"Dwarf Version", i32 4}
!783 = !{i32 2, !"Debug Info Version", i32 3}
!784 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!785 = !DIExpression(DW_OP_bit_piece, 0, 64)
!786 = !DILocation(line: 16, column: 18, scope: !391)
!787 = !DIExpression(DW_OP_bit_piece, 64, 64)
!788 = !DILocation(line: 16, column: 32, scope: !391)
!789 = !DIExpression()
!790 = !DILocation(line: 18, column: 16, scope: !391)
!791 = !DILocation(line: 19, column: 21, scope: !391)
!792 = !DILocation(line: 20, column: 21, scope: !391)
!793 = !DILocation(line: 22, column: 1, scope: !391)
!794 = !DILocation(line: 25, column: 19, scope: !398)
!795 = !DILocation(line: 25, column: 33, scope: !398)
!796 = !DILocation(line: 27, column: 16, scope: !398)
!797 = !DILocation(line: 28, column: 21, scope: !398)
!798 = !DILocation(line: 29, column: 21, scope: !398)
!799 = !DILocation(line: 31, column: 1, scope: !398)
!800 = !DILocation(line: 34, column: 18, scope: !403)
!801 = !DILocation(line: 36, column: 16, scope: !403)
!802 = !DILocation(line: 37, column: 14, scope: !403)
!803 = !DILocation(line: 38, column: 14, scope: !403)
!804 = !DILocation(line: 40, column: 1, scope: !403)
!805 = !DILocation(line: 43, column: 19, scope: !409)
!806 = !DILocation(line: 43, column: 33, scope: !409)
!807 = !DILocation(line: 45, column: 16, scope: !409)
!808 = !DILocation(line: 46, column: 20, scope: !409)
!809 = !DILocation(line: 46, column: 36, scope: !409)
!810 = !DILocation(line: 46, column: 28, scope: !409)
!811 = !DILocation(line: 47, column: 20, scope: !409)
!812 = !DILocation(line: 47, column: 36, scope: !409)
!813 = !DILocation(line: 47, column: 28, scope: !409)
!814 = !DILocation(line: 49, column: 1, scope: !409)
!815 = !DILocation(line: 52, column: 19, scope: !414)
!816 = !DILocation(line: 52, column: 33, scope: !414)
!817 = !DILocation(line: 77, column: 17, scope: !414)
!818 = !DILocation(line: 78, column: 38, scope: !414)
!819 = !DILocation(line: 78, column: 44, scope: !414)
!820 = !DILocation(line: 78, column: 31, scope: !414)
!821 = !DILocation(line: 78, column: 19, scope: !414)
!822 = !DILocation(line: 79, column: 38, scope: !414)
!823 = !DILocation(line: 79, column: 44, scope: !414)
!824 = !DILocation(line: 79, column: 31, scope: !414)
!825 = !DILocation(line: 79, column: 19, scope: !414)
!826 = !DILocation(line: 81, column: 20, scope: !426)
!827 = !DILocation(line: 81, column: 10, scope: !414)
!828 = !DILocation(line: 83, column: 23, scope: !424)
!829 = !DILocation(line: 83, column: 13, scope: !425)
!830 = !DILocation(line: 84, column: 13, scope: !831)
!831 = distinct !DILexicalBlock(scope: !424, file: !1, line: 83, column: 31)
!832 = !DILocation(line: 84, column: 19, scope: !831)
!833 = !{!834, !834, i64 0}
!834 = !{!"int", !835, i64 0}
!835 = !{!"omnipotent char", !836, i64 0}
!836 = !{!"Simple C/C++ TBAA"}
!837 = !DILocation(line: 86, column: 9, scope: !831)
!838 = !DILocation(line: 88, column: 41, scope: !423)
!839 = !DILocation(line: 88, column: 26, scope: !423)
!840 = !DILocation(line: 89, column: 50, scope: !423)
!841 = !DILocation(line: 89, column: 41, scope: !423)
!842 = !DILocation(line: 89, column: 26, scope: !423)
!843 = !DILocation(line: 90, column: 39, scope: !423)
!844 = !DILocation(line: 90, column: 30, scope: !423)
!845 = !DILocation(line: 90, column: 48, scope: !423)
!846 = !DILocation(line: 91, column: 39, scope: !423)
!847 = !DILocation(line: 91, column: 30, scope: !423)
!848 = !DILocation(line: 91, column: 48, scope: !423)
!849 = !DILocation(line: 96, column: 37, scope: !429)
!850 = !DILocation(line: 96, column: 22, scope: !429)
!851 = !DILocation(line: 97, column: 37, scope: !429)
!852 = !DILocation(line: 97, column: 45, scope: !429)
!853 = !DILocation(line: 97, column: 22, scope: !429)
!854 = !DILocation(line: 99, column: 26, scope: !429)
!855 = !DILocation(line: 99, column: 34, scope: !429)
!856 = !DILocation(line: 99, column: 44, scope: !429)
!857 = !DILocation(line: 100, column: 26, scope: !429)
!858 = !DILocation(line: 100, column: 34, scope: !429)
!859 = !DILocation(line: 100, column: 44, scope: !429)
!860 = !DILocation(line: 103, column: 1, scope: !414)
!861 = !DILocation(line: 106, column: 18, scope: !431)
!862 = !DILocation(line: 106, column: 32, scope: !431)
!863 = !DILocation(line: 108, column: 16, scope: !431)
!864 = !DILocation(line: 110, column: 16, scope: !865)
!865 = distinct !DILexicalBlock(scope: !431, file: !1, line: 110, column: 9)
!866 = !DILocation(line: 110, column: 32, scope: !865)
!867 = !DILocation(line: 110, column: 22, scope: !865)
!868 = !DILocation(line: 114, column: 21, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !1, line: 114, column: 14)
!870 = !DILocation(line: 114, column: 37, scope: !869)
!871 = !DILocation(line: 114, column: 27, scope: !869)
!872 = !DILocation(line: 115, column: 20, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 115, column: 13)
!874 = distinct !DILexicalBlock(scope: !869, file: !1, line: 114, column: 44)
!875 = !DILocation(line: 115, column: 36, scope: !873)
!876 = !DILocation(line: 115, column: 26, scope: !873)
!877 = !DILocation(line: 116, column: 13, scope: !873)
!878 = !DILocation(line: 116, column: 19, scope: !873)
!879 = !DILocation(line: 121, column: 16, scope: !880)
!880 = distinct !DILexicalBlock(scope: !869, file: !1, line: 120, column: 10)
!881 = !DILocation(line: 109, column: 12, scope: !431)
!882 = !DILocation(line: 122, column: 15, scope: !880)
!883 = !DILocation(line: 109, column: 17, scope: !431)
!884 = !DILocation(line: 123, column: 14, scope: !880)
!885 = !DILocation(line: 109, column: 21, scope: !431)
!886 = !DILocation(line: 124, column: 19, scope: !880)
!887 = !DILocation(line: 109, column: 24, scope: !431)
!888 = !DILocation(line: 125, column: 20, scope: !889)
!889 = distinct !DILexicalBlock(scope: !880, file: !1, line: 125, column: 13)
!890 = !DILocation(line: 125, column: 13, scope: !880)
!891 = !DILocation(line: 126, column: 26, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !1, line: 125, column: 28)
!893 = !DILocation(line: 126, column: 20, scope: !892)
!894 = !DILocation(line: 126, column: 17, scope: !892)
!895 = !DILocation(line: 127, column: 29, scope: !892)
!896 = !DILocation(line: 127, column: 28, scope: !892)
!897 = !DILocation(line: 127, column: 19, scope: !892)
!898 = !DILocation(line: 128, column: 9, scope: !892)
!899 = !DILocation(line: 129, column: 22, scope: !880)
!900 = !DILocation(line: 129, column: 21, scope: !880)
!901 = !DILocation(line: 130, column: 22, scope: !880)
!902 = !DILocation(line: 130, column: 21, scope: !880)
!903 = !DILocation(line: 133, column: 1, scope: !431)
!904 = !DILocation(line: 169, column: 18, scope: !440)
!905 = !DILocation(line: 174, column: 10, scope: !906)
!906 = !DILexicalBlockFile(scope: !907, file: !1, discriminator: 4)
!907 = distinct !DILexicalBlock(scope: !440, file: !1, line: 174, column: 9)
!908 = !DILocation(line: 174, column: 35, scope: !909)
!909 = !DILexicalBlockFile(scope: !907, file: !1, discriminator: 10)
!910 = !DILocation(line: 178, column: 13, scope: !911)
!911 = !DILexicalBlockFile(scope: !912, file: !1, discriminator: 3)
!912 = distinct !DILexicalBlock(scope: !913, file: !1, line: 178, column: 13)
!913 = distinct !DILexicalBlock(scope: !907, file: !1, line: 174, column: 57)
!914 = !DILocation(line: 179, column: 22, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !1, line: 178, column: 37)
!916 = !DILocation(line: 172, column: 12, scope: !440)
!917 = !DILocation(line: 180, column: 13, scope: !915)
!918 = !DILocation(line: 180, column: 19, scope: !915)
!919 = !DILocation(line: 181, column: 13, scope: !915)
!920 = !DILocation(line: 183, column: 13, scope: !921)
!921 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 3)
!922 = distinct !DILexicalBlock(scope: !913, file: !1, line: 183, column: 13)
!923 = !DILocation(line: 184, column: 22, scope: !924)
!924 = distinct !DILexicalBlock(scope: !922, file: !1, line: 183, column: 37)
!925 = !DILocation(line: 185, column: 13, scope: !924)
!926 = !DILocation(line: 185, column: 19, scope: !924)
!927 = !DILocation(line: 186, column: 13, scope: !924)
!928 = !DILocation(line: 192, column: 14, scope: !440)
!929 = !DILocation(line: 193, column: 10, scope: !930)
!930 = !DILexicalBlockFile(scope: !931, file: !1, discriminator: 3)
!931 = distinct !DILexicalBlock(scope: !440, file: !1, line: 193, column: 9)
!932 = !DILocation(line: 196, column: 9, scope: !931)
!933 = !DILocation(line: 194, column: 9, scope: !931)
!934 = !DILocation(line: 196, column: 15, scope: !931)
!935 = !DILocation(line: 197, column: 5, scope: !440)
!936 = !DILocation(line: 198, column: 1, scope: !440)
!937 = !DILocation(line: 212, column: 35, scope: !446)
!938 = !DILocation(line: 217, column: 30, scope: !446)
!939 = !DILocation(line: 218, column: 12, scope: !940)
!940 = distinct !DILexicalBlock(scope: !446, file: !1, line: 218, column: 9)
!941 = !DILocation(line: 218, column: 9, scope: !446)
!942 = !DILocation(line: 219, column: 16, scope: !940)
!943 = !DILocation(line: 219, column: 9, scope: !940)
!944 = !DILocation(line: 220, column: 11, scope: !446)
!945 = !{!946, !948, i64 8}
!946 = !{!"_object", !947, i64 0, !948, i64 8}
!947 = !{!"long", !835, i64 0}
!948 = !{!"any pointer", !835, i64 0}
!949 = !{!946, !947, i64 0}
!950 = !DILocation(line: 221, column: 16, scope: !446)
!951 = !DILocation(line: 222, column: 5, scope: !446)
!952 = !DILocation(line: 223, column: 1, scope: !446)
!953 = !DILocation(line: 235, column: 30, scope: !452)
!954 = !DILocation(line: 235, column: 43, scope: !452)
!955 = !DILocation(line: 237, column: 16, scope: !452)
!956 = !DILocation(line: 212, column: 35, scope: !446, inlinedAt: !957)
!957 = distinct !DILocation(line: 240, column: 12, scope: !452)
!958 = !DILocation(line: 217, column: 30, scope: !446, inlinedAt: !957)
!959 = !DILocation(line: 218, column: 12, scope: !940, inlinedAt: !957)
!960 = !DILocation(line: 218, column: 9, scope: !446, inlinedAt: !957)
!961 = !DILocation(line: 219, column: 16, scope: !940, inlinedAt: !957)
!962 = !DILocation(line: 219, column: 9, scope: !940, inlinedAt: !957)
!963 = !DILocation(line: 220, column: 11, scope: !446, inlinedAt: !957)
!964 = !DILocation(line: 221, column: 16, scope: !446, inlinedAt: !957)
!965 = !DILocation(line: 222, column: 5, scope: !446, inlinedAt: !957)
!966 = !DILocation(line: 240, column: 12, scope: !452)
!967 = !DILocation(line: 240, column: 5, scope: !452)
!968 = !DILocation(line: 244, column: 34, scope: !459)
!969 = !DILocation(line: 246, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !459, file: !1, line: 246, column: 9)
!971 = !DILocation(line: 246, column: 9, scope: !972)
!972 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 1)
!973 = !DILocation(line: 246, column: 9, scope: !459)
!974 = !DILocation(line: 247, column: 41, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !1, line: 246, column: 30)
!976 = !DILocation(line: 247, column: 46, scope: !975)
!977 = !{!978, !980, i64 16}
!978 = !{!"", !946, i64 0, !979, i64 16}
!979 = !{!"", !980, i64 0, !980, i64 8}
!980 = !{!"double", !835, i64 0}
!981 = !DILocation(line: 247, column: 9, scope: !975)
!982 = !DILocation(line: 250, column: 16, scope: !983)
!983 = distinct !DILexicalBlock(scope: !970, file: !1, line: 249, column: 10)
!984 = !DILocation(line: 250, column: 9, scope: !983)
!985 = !DILocation(line: 252, column: 1, scope: !459)
!986 = !DILocation(line: 255, column: 34, scope: !464)
!987 = !DILocation(line: 257, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !464, file: !1, line: 257, column: 9)
!989 = !DILocation(line: 257, column: 9, scope: !990)
!990 = !DILexicalBlockFile(scope: !988, file: !1, discriminator: 1)
!991 = !DILocation(line: 257, column: 9, scope: !464)
!992 = !DILocation(line: 258, column: 46, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !1, line: 257, column: 30)
!994 = !{!978, !980, i64 24}
!995 = !DILocation(line: 258, column: 9, scope: !993)
!996 = !DILocation(line: 263, column: 1, scope: !464)
!997 = !DILocation(line: 286, column: 32, scope: !467)
!998 = !DILocation(line: 288, column: 16, scope: !467)
!999 = !DILocation(line: 289, column: 15, scope: !467)
!1000 = !DILocation(line: 293, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !467, file: !1, line: 293, column: 9)
!1002 = !DILocation(line: 293, column: 9, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1001, file: !1, discriminator: 1)
!1004 = !DILocation(line: 293, column: 9, scope: !467)
!1005 = !DILocation(line: 294, column: 41, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 293, column: 30)
!1007 = !DILocation(line: 294, column: 9, scope: !1006)
!1008 = !DILocation(line: 302, column: 13, scope: !467)
!1009 = !DILocation(line: 304, column: 9, scope: !477)
!1010 = !DILocation(line: 304, column: 9, scope: !467)
!1011 = !DILocation(line: 305, column: 42, scope: !476)
!1012 = !DILocation(line: 306, column: 9, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !475, file: !1, discriminator: 1)
!1014 = !DILocation(line: 306, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !475, file: !1, line: 306, column: 9)
!1016 = !DILocation(line: 306, column: 9, scope: !475)
!1017 = !DILocation(line: 306, column: 9, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1015, file: !1, discriminator: 3)
!1019 = !{!1020, !948, i64 48}
!1020 = !{!"_typeobject", !1021, i64 0, !948, i64 24, !947, i64 32, !947, i64 40, !948, i64 48, !948, i64 56, !948, i64 64, !948, i64 72, !948, i64 80, !948, i64 88, !948, i64 96, !948, i64 104, !948, i64 112, !948, i64 120, !948, i64 128, !948, i64 136, !948, i64 144, !948, i64 152, !948, i64 160, !947, i64 168, !948, i64 176, !948, i64 184, !948, i64 192, !948, i64 200, !947, i64 208, !948, i64 216, !948, i64 224, !948, i64 232, !948, i64 240, !948, i64 248, !948, i64 256, !948, i64 264, !948, i64 272, !948, i64 280, !947, i64 288, !948, i64 296, !948, i64 304, !948, i64 312, !948, i64 320, !948, i64 328, !948, i64 336, !948, i64 344, !948, i64 352, !948, i64 360, !948, i64 368, !948, i64 376, !834, i64 384, !948, i64 392}
!1021 = !{!"", !946, i64 0, !947, i64 16}
!1022 = !DILocation(line: 309, column: 14, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !477, file: !1, line: 309, column: 14)
!1024 = !DILocation(line: 309, column: 14, scope: !477)
!1025 = !DILocation(line: 316, column: 19, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 314, column: 10)
!1027 = !DILocation(line: 317, column: 9, scope: !1026)
!1028 = !DILocation(line: 319, column: 1, scope: !467)
!1029 = !DILocation(line: 266, column: 38, scope: !478)
!1030 = !DILocation(line: 270, column: 9, scope: !478)
!1031 = !DILocation(line: 267, column: 15, scope: !478)
!1032 = !DILocation(line: 271, column: 9, scope: !484)
!1033 = !DILocation(line: 271, column: 9, scope: !478)
!1034 = !DILocation(line: 272, column: 25, scope: !483)
!1035 = !DILocation(line: 272, column: 19, scope: !483)
!1036 = !DILocation(line: 273, column: 9, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 1)
!1038 = !DILocation(line: 273, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !486, file: !1, line: 273, column: 9)
!1040 = !DILocation(line: 273, column: 9, scope: !486)
!1041 = !DILocation(line: 273, column: 9, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 3)
!1043 = !DILocation(line: 274, column: 17, scope: !490)
!1044 = !DILocation(line: 274, column: 25, scope: !490)
!1045 = !DILocation(line: 274, column: 29, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 1)
!1047 = !DILocation(line: 274, column: 29, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 2)
!1049 = !DILocation(line: 274, column: 13, scope: !483)
!1050 = !DILocation(line: 275, column: 29, scope: !489)
!1051 = !{!948, !948, i64 0}
!1052 = !DILocation(line: 275, column: 13, scope: !489)
!1053 = !DILocation(line: 277, column: 13, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 1)
!1055 = !DILocation(line: 277, column: 13, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !488, file: !1, line: 277, column: 13)
!1057 = !DILocation(line: 277, column: 13, scope: !488)
!1058 = !DILocation(line: 277, column: 13, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1056, file: !1, discriminator: 3)
!1060 = !DILocation(line: 283, column: 1, scope: !478)
!1061 = !DILocation(line: 322, column: 27, scope: !491)
!1062 = !DILocation(line: 324, column: 9, scope: !491)
!1063 = !DILocation(line: 324, column: 18, scope: !491)
!1064 = !{!1020, !948, i64 320}
!1065 = !DILocation(line: 324, column: 26, scope: !491)
!1066 = !DILocation(line: 324, column: 5, scope: !491)
!1067 = !DILocation(line: 325, column: 1, scope: !491)
!1068 = !DILocation(line: 328, column: 31, scope: !494)
!1069 = !DILocation(line: 330, column: 9, scope: !494)
!1070 = !DILocation(line: 331, column: 10, scope: !494)
!1071 = !DILocation(line: 332, column: 15, scope: !494)
!1072 = !DILocation(line: 335, column: 11, scope: !494)
!1073 = !DILocation(line: 336, column: 11, scope: !494)
!1074 = !DILocation(line: 341, column: 11, scope: !494)
!1075 = !{}
!1076 = !DILocation(line: 342, column: 11, scope: !494)
!1077 = !DILocation(line: 343, column: 11, scope: !494)
!1078 = !DILocation(line: 345, column: 17, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !494, file: !1, line: 345, column: 9)
!1080 = !DILocation(line: 358, column: 45, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 355, column: 12)
!1082 = !DILocation(line: 345, column: 22, scope: !1079)
!1083 = !DILocation(line: 345, column: 28, scope: !1079)
!1084 = !DILocation(line: 345, column: 31, scope: !1079)
!1085 = !DILocation(line: 345, column: 58, scope: !1079)
!1086 = !DILocation(line: 345, column: 9, scope: !494)
!1087 = !DILocation(line: 349, column: 44, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 345, column: 65)
!1089 = !DILocation(line: 349, column: 14, scope: !1088)
!1090 = !DILocation(line: 351, column: 14, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 351, column: 13)
!1092 = !DILocation(line: 351, column: 13, scope: !1088)
!1093 = !DILocation(line: 352, column: 13, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 351, column: 18)
!1095 = !DILocation(line: 353, column: 13, scope: !1094)
!1096 = !DILocation(line: 358, column: 15, scope: !1081)
!1097 = !DILocation(line: 360, column: 14, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 360, column: 13)
!1099 = !DILocation(line: 360, column: 13, scope: !1081)
!1100 = !DILocation(line: 361, column: 13, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 360, column: 19)
!1102 = !DILocation(line: 362, column: 13, scope: !1101)
!1103 = !DILocation(line: 366, column: 44, scope: !1081)
!1104 = !DILocation(line: 366, column: 14, scope: !1081)
!1105 = !DILocation(line: 368, column: 14, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 368, column: 13)
!1107 = !DILocation(line: 368, column: 13, scope: !1081)
!1108 = !DILocation(line: 369, column: 13, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 368, column: 18)
!1110 = !DILocation(line: 370, column: 13, scope: !1109)
!1111 = !DILocation(line: 375, column: 14, scope: !494)
!1112 = !DILocation(line: 375, column: 5, scope: !494)
!1113 = !DILocation(line: 377, column: 5, scope: !494)
!1114 = !DILocation(line: 378, column: 5, scope: !494)
!1115 = !DILocation(line: 380, column: 5, scope: !494)
!1116 = !DILocation(line: 384, column: 31, scope: !602)
!1117 = !DILocation(line: 387, column: 51, scope: !602)
!1118 = !DILocation(line: 387, column: 28, scope: !602)
!1119 = !DILocation(line: 386, column: 16, scope: !602)
!1120 = !DILocation(line: 388, column: 18, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !602, file: !1, line: 388, column: 9)
!1122 = !DILocation(line: 388, column: 9, scope: !602)
!1123 = !DILocation(line: 390, column: 51, scope: !602)
!1124 = !DILocation(line: 390, column: 28, scope: !602)
!1125 = !DILocation(line: 386, column: 26, scope: !602)
!1126 = !DILocation(line: 391, column: 18, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !602, file: !1, line: 391, column: 9)
!1128 = !DILocation(line: 391, column: 9, scope: !602)
!1129 = !DILocation(line: 399, column: 40, scope: !602)
!1130 = !DILocation(line: 399, column: 25, scope: !602)
!1131 = !DILocation(line: 386, column: 36, scope: !602)
!1132 = !DILocation(line: 400, column: 18, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !602, file: !1, line: 400, column: 9)
!1134 = !DILocation(line: 400, column: 9, scope: !602)
!1135 = !DILocation(line: 402, column: 5, scope: !602)
!1136 = !DILocation(line: 403, column: 1, scope: !602)
!1137 = !DILocation(line: 600, column: 31, scope: !610)
!1138 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 611, column: 5, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1141, file: !1, discriminator: 4)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 611, column: 5)
!1142 = distinct !DILexicalBlock(scope: !610, file: !1, line: 611, column: 5)
!1143 = !DILocation(line: 600, column: 44, scope: !610)
!1144 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 637, column: 9, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1147, file: !1, discriminator: 4)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 637, column: 9)
!1148 = distinct !DILexicalBlock(scope: !627, file: !1, line: 637, column: 9)
!1149 = !DILocation(line: 600, column: 51, scope: !610)
!1150 = !DILocation(line: 606, column: 21, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !610, file: !1, line: 606, column: 9)
!1152 = !DILocation(line: 611, column: 5, scope: !1142)
!1153 = !DILocation(line: 611, column: 5, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1142, file: !1, discriminator: 2)
!1155 = !DILocation(line: 611, column: 5, scope: !610)
!1156 = !DILocation(line: 611, column: 5, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1158, file: !1, discriminator: 3)
!1158 = !DILexicalBlockFile(scope: !1142, file: !1, discriminator: 1)
!1159 = !DILocation(line: 603, column: 16, scope: !610)
!1160 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1139)
!1161 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1139)
!1162 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1139)
!1163 = distinct !DILexicalBlock(scope: !514, file: !1, line: 418, column: 9)
!1164 = !{!1020, !947, i64 168}
!1165 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1139)
!1166 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1139)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 418, column: 28)
!1168 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1139)
!1169 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 420, column: 13)
!1170 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1139)
!1171 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1139)
!1172 = !DILexicalBlockFile(scope: !1169, file: !1, discriminator: 1)
!1173 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1139)
!1174 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1139)
!1175 = distinct !DILexicalBlock(scope: !514, file: !1, line: 426, column: 9)
!1176 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1139)
!1177 = !DILexicalBlockFile(scope: !1175, file: !1, discriminator: 1)
!1178 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1139)
!1179 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1139)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 426, column: 29)
!1181 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1139)
!1182 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1139)
!1183 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1139)
!1184 = !DILocation(line: 613, column: 9, scope: !622)
!1185 = !DILocation(line: 613, column: 9, scope: !610)
!1186 = !DILocation(line: 617, column: 20, scope: !620)
!1187 = !DILocation(line: 617, column: 13, scope: !621)
!1188 = !DILocation(line: 619, column: 17, scope: !619)
!1189 = !DILocation(line: 618, column: 23, scope: !619)
!1190 = !DILocation(line: 620, column: 19, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !619, file: !1, line: 620, column: 17)
!1192 = !DILocation(line: 620, column: 17, scope: !619)
!1193 = !DILocation(line: 623, column: 23, scope: !619)
!1194 = !DILocation(line: 618, column: 27, scope: !619)
!1195 = !DILocation(line: 624, column: 13, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !625, file: !1, discriminator: 1)
!1197 = !DILocation(line: 624, column: 13, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !625, file: !1, line: 624, column: 13)
!1199 = !DILocation(line: 624, column: 13, scope: !625)
!1200 = !DILocation(line: 624, column: 13, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1198, file: !1, discriminator: 3)
!1202 = !DILocation(line: 631, column: 14, scope: !629)
!1203 = !DILocation(line: 631, column: 14, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !629, file: !1, discriminator: 1)
!1205 = !DILocation(line: 631, column: 14, scope: !622)
!1206 = !DILocation(line: 632, column: 28, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !629, file: !1, line: 631, column: 32)
!1208 = !DILocation(line: 632, column: 25, scope: !1207)
!1209 = !DILocation(line: 632, column: 58, scope: !1207)
!1210 = !DILocation(line: 632, column: 48, scope: !1207)
!1211 = !DILocation(line: 632, column: 48, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1207, file: !1, discriminator: 2)
!1213 = !DILocation(line: 604, column: 9, scope: !610)
!1214 = !DILocation(line: 633, column: 5, scope: !1207)
!1215 = !DILocation(line: 634, column: 14, scope: !628)
!1216 = !DILocation(line: 634, column: 14, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 1)
!1218 = !DILocation(line: 634, column: 14, scope: !629)
!1219 = !DILocation(line: 637, column: 9, scope: !1148)
!1220 = !DILocation(line: 637, column: 9, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1148, file: !1, discriminator: 2)
!1222 = !DILocation(line: 637, column: 9, scope: !627)
!1223 = !DILocation(line: 637, column: 9, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1225, file: !1, discriminator: 3)
!1225 = !DILexicalBlockFile(scope: !1148, file: !1, discriminator: 1)
!1226 = !DILocation(line: 635, column: 20, scope: !627)
!1227 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1145)
!1228 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1145)
!1229 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1145)
!1230 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1145)
!1231 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1145)
!1232 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1145)
!1233 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1145)
!1234 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1145)
!1235 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1145)
!1236 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1145)
!1237 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1145)
!1238 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1145)
!1239 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1145)
!1240 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1145)
!1241 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1145)
!1242 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1145)
!1243 = !DILocation(line: 638, column: 25, scope: !627)
!1244 = !DILocation(line: 638, column: 45, scope: !627)
!1245 = !DILocation(line: 638, column: 35, scope: !627)
!1246 = !DILocation(line: 638, column: 35, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !627, file: !1, discriminator: 2)
!1248 = !DILocation(line: 644, column: 22, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !610, file: !1, line: 644, column: 9)
!1250 = !DILocation(line: 644, column: 15, scope: !1249)
!1251 = !DILocation(line: 645, column: 10, scope: !1249)
!1252 = !DILocation(line: 649, column: 5, scope: !610)
!1253 = !DILocation(line: 650, column: 5, scope: !610)
!1254 = !DILocation(line: 653, column: 5, scope: !610)
!1255 = !DILocation(line: 654, column: 1, scope: !610)
!1256 = !DILocation(line: 901, column: 27, scope: !659)
!1257 = !DILocation(line: 901, column: 43, scope: !659)
!1258 = !DILocation(line: 901, column: 59, scope: !659)
!1259 = !DILocation(line: 903, column: 5, scope: !659)
!1260 = !DILocation(line: 904, column: 28, scope: !659)
!1261 = !DILocation(line: 905, column: 16, scope: !659)
!1262 = !DILocation(line: 905, column: 20, scope: !659)
!1263 = !DILocation(line: 906, column: 9, scope: !659)
!1264 = !DILocation(line: 907, column: 9, scope: !659)
!1265 = !DILocation(line: 908, column: 9, scope: !659)
!1266 = !DILocation(line: 903, column: 15, scope: !659)
!1267 = !DILocation(line: 911, column: 7, scope: !659)
!1268 = !DILocation(line: 903, column: 19, scope: !659)
!1269 = !DILocation(line: 912, column: 7, scope: !659)
!1270 = !DILocation(line: 913, column: 10, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !659, file: !1, line: 913, column: 9)
!1272 = !DILocation(line: 913, column: 9, scope: !659)
!1273 = !DILocation(line: 926, column: 16, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 919, column: 34)
!1275 = distinct !DILexicalBlock(scope: !659, file: !1, line: 918, column: 9)
!1276 = !DILocation(line: 918, column: 9, scope: !1275)
!1277 = !DILocation(line: 767, column: 9, scope: !1278, inlinedAt: !1279)
!1278 = distinct !DILexicalBlock(scope: !706, file: !1, line: 767, column: 9)
!1279 = distinct !DILocation(line: 935, column: 16, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 928, column: 29)
!1281 = distinct !DILexicalBlock(scope: !659, file: !1, line: 928, column: 9)
!1282 = !DILocation(line: 918, column: 38, scope: !1275)
!1283 = !DILocation(line: 918, column: 33, scope: !1275)
!1284 = !DILocation(line: 919, column: 14, scope: !1275)
!1285 = !DILocation(line: 925, column: 9, scope: !1274)
!1286 = !DILocation(line: 926, column: 9, scope: !1274)
!1287 = !DILocation(line: 928, column: 9, scope: !1281)
!1288 = !DILocation(line: 929, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 929, column: 13)
!1290 = !DILocation(line: 928, column: 9, scope: !659)
!1291 = !DILocation(line: 929, column: 13, scope: !1280)
!1292 = !DILocation(line: 930, column: 29, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 929, column: 24)
!1294 = !DILocation(line: 930, column: 13, scope: !1293)
!1295 = !DILocation(line: 933, column: 13, scope: !1293)
!1296 = !DILocation(line: 758, column: 43, scope: !706, inlinedAt: !1279)
!1297 = !DILocation(line: 758, column: 59, scope: !706, inlinedAt: !1279)
!1298 = !DILocation(line: 760, column: 5, scope: !706, inlinedAt: !1279)
!1299 = !DILocation(line: 761, column: 5, scope: !706, inlinedAt: !1279)
!1300 = !DILocation(line: 762, column: 12, scope: !706, inlinedAt: !1279)
!1301 = !DILocation(line: 762, column: 19, scope: !706, inlinedAt: !1279)
!1302 = !DILocation(line: 763, column: 9, scope: !706, inlinedAt: !1279)
!1303 = !DILocation(line: 764, column: 15, scope: !706, inlinedAt: !1279)
!1304 = !DILocation(line: 765, column: 5, scope: !706, inlinedAt: !1279)
!1305 = !DILocation(line: 768, column: 20, scope: !1306, inlinedAt: !1279)
!1306 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 767, column: 29)
!1307 = !DILocation(line: 769, column: 22, scope: !1308, inlinedAt: !1279)
!1308 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 769, column: 13)
!1309 = !DILocation(line: 769, column: 13, scope: !1306, inlinedAt: !1279)
!1310 = !DILocation(line: 765, column: 16, scope: !706, inlinedAt: !1279)
!1311 = !DILocation(line: 771, column: 13, scope: !1306, inlinedAt: !1279)
!1312 = !DILocation(line: 760, column: 17, scope: !706, inlinedAt: !1279)
!1313 = !DILocation(line: 771, column: 11, scope: !1306, inlinedAt: !1279)
!1314 = !DILocation(line: 772, column: 15, scope: !1315, inlinedAt: !1279)
!1315 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 772, column: 13)
!1316 = !DILocation(line: 772, column: 13, scope: !1306, inlinedAt: !1279)
!1317 = !DILocation(line: 784, column: 12, scope: !1318, inlinedAt: !1279)
!1318 = !DILexicalBlockFile(scope: !1319, file: !1, discriminator: 2)
!1319 = !DILexicalBlockFile(scope: !706, file: !1, discriminator: 1)
!1320 = !{!835, !835, i64 0}
!1321 = !DILocation(line: 784, column: 5, scope: !706, inlinedAt: !1279)
!1322 = !DILocation(line: 785, column: 10, scope: !706, inlinedAt: !1279)
!1323 = !DILocation(line: 935, column: 16, scope: !1280)
!1324 = !DILocation(line: 786, column: 12, scope: !1325, inlinedAt: !1279)
!1325 = distinct !DILexicalBlock(scope: !706, file: !1, line: 786, column: 9)
!1326 = !DILocation(line: 786, column: 9, scope: !706, inlinedAt: !1279)
!1327 = !DILocation(line: 789, column: 10, scope: !1328, inlinedAt: !1279)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 786, column: 20)
!1329 = !DILocation(line: 791, column: 14, scope: !1328, inlinedAt: !1279)
!1330 = !DILocation(line: 790, column: 16, scope: !1331, inlinedAt: !1279)
!1331 = !DILexicalBlockFile(scope: !1332, file: !1, discriminator: 2)
!1332 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 1)
!1333 = !DILocation(line: 790, column: 9, scope: !1328, inlinedAt: !1279)
!1334 = !DILocation(line: 816, column: 31, scope: !706, inlinedAt: !1279)
!1335 = !DILocation(line: 761, column: 11, scope: !706, inlinedAt: !1279)
!1336 = !DILocation(line: 816, column: 9, scope: !706, inlinedAt: !1279)
!1337 = !DILocation(line: 762, column: 26, scope: !706, inlinedAt: !1279)
!1338 = !DILocation(line: 817, column: 11, scope: !1339, inlinedAt: !1279)
!1339 = distinct !DILexicalBlock(scope: !706, file: !1, line: 817, column: 9)
!1340 = !DILocation(line: 817, column: 19, scope: !1339, inlinedAt: !1279)
!1341 = !DILocation(line: 817, column: 22, scope: !1342, inlinedAt: !1279)
!1342 = !DILexicalBlockFile(scope: !1339, file: !1, discriminator: 1)
!1343 = !DILocation(line: 817, column: 9, scope: !706, inlinedAt: !1279)
!1344 = !DILocation(line: 818, column: 36, scope: !1345, inlinedAt: !1279)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 818, column: 13)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 817, column: 40)
!1347 = !DILocation(line: 818, column: 13, scope: !1345, inlinedAt: !1279)
!1348 = !DILocation(line: 818, column: 13, scope: !1346, inlinedAt: !1279)
!1349 = !DILocation(line: 819, column: 13, scope: !1345, inlinedAt: !1279)
!1350 = !DILocation(line: 822, column: 5, scope: !1346, inlinedAt: !1279)
!1351 = !DILocation(line: 829, column: 39, scope: !1352, inlinedAt: !1279)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 826, column: 37)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 826, column: 13)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 823, column: 19)
!1355 = distinct !DILexicalBlock(scope: !706, file: !1, line: 823, column: 9)
!1356 = !DILocation(line: 861, column: 18, scope: !1357, inlinedAt: !1279)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 859, column: 37)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 859, column: 13)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 857, column: 10)
!1360 = !DILocation(line: 823, column: 13, scope: !1355, inlinedAt: !1279)
!1361 = !DILocation(line: 823, column: 9, scope: !706, inlinedAt: !1279)
!1362 = !DILocation(line: 825, column: 11, scope: !1354, inlinedAt: !1279)
!1363 = !DILocation(line: 826, column: 13, scope: !1353, inlinedAt: !1279)
!1364 = !DILocation(line: 826, column: 23, scope: !1353, inlinedAt: !1279)
!1365 = !DILocation(line: 829, column: 17, scope: !1352, inlinedAt: !1279)
!1366 = !DILocation(line: 830, column: 19, scope: !1367, inlinedAt: !1279)
!1367 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 830, column: 17)
!1368 = !DILocation(line: 830, column: 27, scope: !1367, inlinedAt: !1279)
!1369 = !DILocation(line: 830, column: 30, scope: !1370, inlinedAt: !1279)
!1370 = !DILexicalBlockFile(scope: !1367, file: !1, discriminator: 1)
!1371 = !DILocation(line: 830, column: 17, scope: !1352, inlinedAt: !1279)
!1372 = !DILocation(line: 831, column: 44, scope: !1373, inlinedAt: !1279)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 831, column: 21)
!1374 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 830, column: 48)
!1375 = !DILocation(line: 831, column: 21, scope: !1373, inlinedAt: !1279)
!1376 = !DILocation(line: 831, column: 21, scope: !1374, inlinedAt: !1279)
!1377 = !DILocation(line: 832, column: 21, scope: !1373, inlinedAt: !1279)
!1378 = !DILocation(line: 835, column: 13, scope: !1374, inlinedAt: !1279)
!1379 = !DILocation(line: 836, column: 17, scope: !1380, inlinedAt: !1279)
!1380 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 836, column: 17)
!1381 = !DILocation(line: 836, column: 24, scope: !1380, inlinedAt: !1279)
!1382 = !DILocation(line: 836, column: 21, scope: !1380, inlinedAt: !1279)
!1383 = !DILocation(line: 836, column: 17, scope: !1352, inlinedAt: !1279)
!1384 = !DILocation(line: 841, column: 21, scope: !1385, inlinedAt: !1279)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 839, column: 18)
!1386 = !DILocation(line: 841, column: 24, scope: !1385, inlinedAt: !1279)
!1387 = !DILocation(line: 842, column: 18, scope: !1385, inlinedAt: !1279)
!1388 = !DILocation(line: 846, column: 14, scope: !1352, inlinedAt: !1279)
!1389 = !DILocation(line: 838, column: 19, scope: !1380, inlinedAt: !1279)
!1390 = !DILocation(line: 844, column: 19, scope: !1391, inlinedAt: !1279)
!1391 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 844, column: 17)
!1392 = !DILocation(line: 844, column: 29, scope: !1391, inlinedAt: !1279)
!1393 = !DILocation(line: 847, column: 9, scope: !1352, inlinedAt: !1279)
!1394 = !DILocation(line: 850, column: 14, scope: !1395, inlinedAt: !1279)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 848, column: 42)
!1396 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 848, column: 18)
!1397 = !DILocation(line: 852, column: 9, scope: !1395, inlinedAt: !1279)
!1398 = !DILocation(line: 861, column: 17, scope: !1357, inlinedAt: !1279)
!1399 = !DILocation(line: 859, column: 23, scope: !1358, inlinedAt: !1279)
!1400 = !DILocation(line: 861, column: 20, scope: !1357, inlinedAt: !1279)
!1401 = !DILocation(line: 862, column: 14, scope: !1357, inlinedAt: !1279)
!1402 = !DILocation(line: 867, column: 15, scope: !1403, inlinedAt: !1279)
!1403 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 867, column: 13)
!1404 = !DILocation(line: 863, column: 9, scope: !1357, inlinedAt: !1279)
!1405 = !DILocation(line: 869, column: 10, scope: !1359, inlinedAt: !1279)
!1406 = !DILocation(line: 867, column: 25, scope: !1403, inlinedAt: !1279)
!1407 = !DILocation(line: 873, column: 12, scope: !1318, inlinedAt: !1279)
!1408 = !DILocation(line: 873, column: 5, scope: !706, inlinedAt: !1279)
!1409 = !DILocation(line: 874, column: 10, scope: !706, inlinedAt: !1279)
!1410 = !DILocation(line: 875, column: 9, scope: !1411, inlinedAt: !1279)
!1411 = distinct !DILexicalBlock(scope: !706, file: !1, line: 875, column: 9)
!1412 = !DILocation(line: 875, column: 9, scope: !706, inlinedAt: !1279)
!1413 = !DILocation(line: 878, column: 16, scope: !1414, inlinedAt: !1279)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 878, column: 13)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 875, column: 22)
!1416 = !DILocation(line: 878, column: 13, scope: !1415, inlinedAt: !1279)
!1417 = !DILocation(line: 880, column: 10, scope: !1415, inlinedAt: !1279)
!1418 = !DILocation(line: 882, column: 14, scope: !1415, inlinedAt: !1279)
!1419 = !DILocation(line: 881, column: 16, scope: !1420, inlinedAt: !1279)
!1420 = !DILexicalBlockFile(scope: !1421, file: !1, discriminator: 2)
!1421 = !DILexicalBlockFile(scope: !1415, file: !1, discriminator: 1)
!1422 = !DILocation(line: 881, column: 9, scope: !1415, inlinedAt: !1279)
!1423 = !DILocation(line: 886, column: 9, scope: !1424, inlinedAt: !1279)
!1424 = distinct !DILexicalBlock(scope: !706, file: !1, line: 886, column: 9)
!1425 = !DILocation(line: 886, column: 10, scope: !1424, inlinedAt: !1279)
!1426 = !DILocation(line: 886, column: 20, scope: !1424, inlinedAt: !1279)
!1427 = !{!947, !947, i64 0}
!1428 = !DILocation(line: 886, column: 17, scope: !1424, inlinedAt: !1279)
!1429 = !DILocation(line: 886, column: 9, scope: !706, inlinedAt: !1279)
!1430 = !DILocation(line: 889, column: 5, scope: !1431, inlinedAt: !1279)
!1431 = !DILexicalBlockFile(scope: !722, file: !1, discriminator: 1)
!1432 = !DILocation(line: 889, column: 5, scope: !725, inlinedAt: !1279)
!1433 = !DILocation(line: 889, column: 5, scope: !722, inlinedAt: !1279)
!1434 = !DILocation(line: 889, column: 5, scope: !1435, inlinedAt: !1279)
!1435 = !DILexicalBlockFile(scope: !724, file: !1, discriminator: 4)
!1436 = !DILocation(line: 889, column: 5, scope: !1437, inlinedAt: !1279)
!1437 = distinct !DILexicalBlock(scope: !724, file: !1, line: 889, column: 5)
!1438 = !DILocation(line: 889, column: 5, scope: !724, inlinedAt: !1279)
!1439 = !DILocation(line: 889, column: 5, scope: !1440, inlinedAt: !1279)
!1440 = !DILexicalBlockFile(scope: !1437, file: !1, discriminator: 6)
!1441 = !DILocation(line: 226, column: 44, scope: !731, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 890, column: 12, scope: !706, inlinedAt: !1279)
!1443 = !DILocation(line: 226, column: 57, scope: !731, inlinedAt: !1442)
!1444 = !DILocation(line: 226, column: 70, scope: !731, inlinedAt: !1442)
!1445 = !DILocation(line: 228, column: 16, scope: !731, inlinedAt: !1442)
!1446 = !DILocation(line: 201, column: 63, scope: !739, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 231, column: 12, scope: !731, inlinedAt: !1442)
!1448 = !DILocation(line: 201, column: 46, scope: !739, inlinedAt: !1447)
!1449 = !DILocation(line: 205, column: 16, scope: !739, inlinedAt: !1447)
!1450 = !{!1020, !948, i64 304}
!1451 = !DILocation(line: 205, column: 10, scope: !739, inlinedAt: !1447)
!1452 = !DILocation(line: 203, column: 15, scope: !739, inlinedAt: !1447)
!1453 = !DILocation(line: 206, column: 12, scope: !1454, inlinedAt: !1447)
!1454 = distinct !DILexicalBlock(scope: !739, file: !1, line: 206, column: 9)
!1455 = !DILocation(line: 206, column: 9, scope: !739, inlinedAt: !1447)
!1456 = !DILocation(line: 207, column: 41, scope: !1454, inlinedAt: !1447)
!1457 = !DILocation(line: 207, column: 9, scope: !1454, inlinedAt: !1447)
!1458 = !DILocation(line: 893, column: 21, scope: !706, inlinedAt: !1279)
!1459 = !DILocation(line: 893, column: 5, scope: !706, inlinedAt: !1279)
!1460 = !DILocation(line: 896, column: 5, scope: !1461, inlinedAt: !1279)
!1461 = !DILexicalBlockFile(scope: !727, file: !1, discriminator: 1)
!1462 = !DILocation(line: 896, column: 5, scope: !730, inlinedAt: !1279)
!1463 = !DILocation(line: 896, column: 5, scope: !727, inlinedAt: !1279)
!1464 = !DILocation(line: 896, column: 5, scope: !1465, inlinedAt: !1279)
!1465 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 4)
!1466 = !DILocation(line: 896, column: 5, scope: !1467, inlinedAt: !1279)
!1467 = distinct !DILexicalBlock(scope: !729, file: !1, line: 896, column: 5)
!1468 = !DILocation(line: 896, column: 5, scope: !729, inlinedAt: !1279)
!1469 = !DILocation(line: 896, column: 5, scope: !1470, inlinedAt: !1279)
!1470 = !DILexicalBlockFile(scope: !1467, file: !1, discriminator: 6)
!1471 = !DILocation(line: 898, column: 1, scope: !706, inlinedAt: !1279)
!1472 = !DILocation(line: 935, column: 9, scope: !1280)
!1473 = !DILocation(line: 937, column: 19, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !659, file: !1, line: 937, column: 9)
!1475 = !DILocation(line: 937, column: 22, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1474, file: !1, discriminator: 1)
!1477 = !DILocation(line: 937, column: 9, scope: !659)
!1478 = !DILocation(line: 938, column: 25, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 937, column: 42)
!1480 = !DILocation(line: 938, column: 9, scope: !1479)
!1481 = !DILocation(line: 940, column: 9, scope: !1479)
!1482 = !DILocation(line: 943, column: 11, scope: !659)
!1483 = !DILocation(line: 903, column: 23, scope: !659)
!1484 = !DILocation(line: 944, column: 9, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !659, file: !1, line: 944, column: 9)
!1486 = !DILocation(line: 944, column: 9, scope: !659)
!1487 = !DILocation(line: 945, column: 11, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 944, column: 14)
!1489 = !DILocation(line: 947, column: 5, scope: !1488)
!1490 = !DILocation(line: 948, column: 14, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 948, column: 14)
!1492 = !DILocation(line: 948, column: 14, scope: !1485)
!1493 = !DILocation(line: 952, column: 11, scope: !659)
!1494 = !DILocation(line: 959, column: 13, scope: !682)
!1495 = !DILocation(line: 952, column: 14, scope: !659)
!1496 = !DILocation(line: 952, column: 23, scope: !659)
!1497 = !{!1020, !948, i64 96}
!1498 = !DILocation(line: 904, column: 22, scope: !659)
!1499 = !DILocation(line: 956, column: 11, scope: !683)
!1500 = !DILocation(line: 953, column: 11, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !659, file: !1, line: 953, column: 9)
!1502 = !DILocation(line: 953, column: 9, scope: !659)
!1503 = !DILocation(line: 954, column: 18, scope: !1501)
!1504 = !DILocation(line: 954, column: 27, scope: !1501)
!1505 = !DILocation(line: 954, column: 9, scope: !1501)
!1506 = !DILocation(line: 955, column: 13, scope: !683)
!1507 = !DILocation(line: 955, column: 21, scope: !683)
!1508 = !DILocation(line: 955, column: 29, scope: !683)
!1509 = !{!1510, !948, i64 144}
!1510 = !{!"", !948, i64 0, !948, i64 8, !948, i64 16, !948, i64 24, !948, i64 32, !948, i64 40, !948, i64 48, !948, i64 56, !948, i64 64, !948, i64 72, !948, i64 80, !948, i64 88, !948, i64 96, !948, i64 104, !948, i64 112, !948, i64 120, !948, i64 128, !948, i64 136, !948, i64 144, !948, i64 152, !948, i64 160, !948, i64 168, !948, i64 176, !948, i64 184, !948, i64 192, !948, i64 200, !948, i64 208, !948, i64 216, !948, i64 224, !948, i64 232, !948, i64 240, !948, i64 248, !948, i64 256, !948, i64 264}
!1511 = !DILocation(line: 955, column: 38, scope: !683)
!1512 = !DILocation(line: 955, column: 46, scope: !683)
!1513 = !DILocation(line: 956, column: 22, scope: !683)
!1514 = !DILocation(line: 956, column: 30, scope: !683)
!1515 = !DILocation(line: 956, column: 38, scope: !683)
!1516 = !DILocation(line: 956, column: 46, scope: !683)
!1517 = !DILocation(line: 956, column: 55, scope: !683)
!1518 = !DILocation(line: 955, column: 9, scope: !659)
!1519 = !DILocation(line: 957, column: 22, scope: !682)
!1520 = !DILocation(line: 959, column: 25, scope: !682)
!1521 = !{!1020, !948, i64 24}
!1522 = !DILocation(line: 957, column: 9, scope: !682)
!1523 = !DILocation(line: 960, column: 13, scope: !681)
!1524 = !DILocation(line: 960, column: 13, scope: !682)
!1525 = !DILocation(line: 961, column: 13, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !679, file: !1, discriminator: 1)
!1527 = !DILocation(line: 961, column: 13, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !679, file: !1, line: 961, column: 13)
!1529 = !DILocation(line: 961, column: 13, scope: !679)
!1530 = !DILocation(line: 961, column: 13, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1528, file: !1, discriminator: 3)
!1532 = !DILocation(line: 973, column: 9, scope: !689)
!1533 = !DILocation(line: 973, column: 9, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !689, file: !1, discriminator: 1)
!1535 = !DILocation(line: 987, column: 30, scope: !694)
!1536 = !DILocation(line: 973, column: 9, scope: !659)
!1537 = !DILocation(line: 977, column: 33, scope: !688)
!1538 = !DILocation(line: 977, column: 37, scope: !688)
!1539 = !DILocation(line: 979, column: 13, scope: !687)
!1540 = !DILocation(line: 979, column: 13, scope: !688)
!1541 = !DILocation(line: 980, column: 13, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 1)
!1543 = !DILocation(line: 980, column: 13, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !685, file: !1, line: 980, column: 13)
!1545 = !DILocation(line: 980, column: 13, scope: !685)
!1546 = !DILocation(line: 980, column: 13, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1544, file: !1, discriminator: 3)
!1548 = !DILocation(line: 987, column: 15, scope: !694)
!1549 = !DILocation(line: 988, column: 13, scope: !693)
!1550 = !DILocation(line: 988, column: 13, scope: !694)
!1551 = !DILocation(line: 991, column: 13, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 1)
!1553 = !DILocation(line: 991, column: 13, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !691, file: !1, line: 991, column: 13)
!1555 = !DILocation(line: 991, column: 13, scope: !691)
!1556 = !DILocation(line: 991, column: 13, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1554, file: !1, discriminator: 3)
!1558 = !DILocation(line: 993, column: 17, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !694, file: !1, line: 993, column: 13)
!1560 = !DILocation(line: 993, column: 13, scope: !694)
!1561 = !DILocation(line: 995, column: 14, scope: !698)
!1562 = !DILocation(line: 995, column: 14, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !698, file: !1, discriminator: 1)
!1564 = !DILocation(line: 995, column: 13, scope: !694)
!1565 = !DILocation(line: 996, column: 29, scope: !697)
!1566 = !DILocation(line: 996, column: 13, scope: !697)
!1567 = !DILocation(line: 998, column: 13, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 1)
!1569 = !DILocation(line: 998, column: 13, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !696, file: !1, line: 998, column: 13)
!1571 = !DILocation(line: 998, column: 13, scope: !696)
!1572 = !DILocation(line: 998, column: 13, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1570, file: !1, discriminator: 3)
!1574 = !DILocation(line: 1001, column: 19, scope: !694)
!1575 = !DILocation(line: 1003, column: 9, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 1)
!1577 = !DILocation(line: 1003, column: 9, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !700, file: !1, line: 1003, column: 9)
!1579 = !DILocation(line: 1003, column: 9, scope: !700)
!1580 = !DILocation(line: 1003, column: 9, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1578, file: !1, discriminator: 3)
!1582 = !DILocation(line: 1005, column: 9, scope: !705)
!1583 = !DILocation(line: 1005, column: 11, scope: !705)
!1584 = !DILocation(line: 1005, column: 9, scope: !659)
!1585 = !DILocation(line: 1008, column: 14, scope: !704)
!1586 = !DILocation(line: 1008, column: 14, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 1)
!1588 = !DILocation(line: 1008, column: 14, scope: !705)
!1589 = !DILocation(line: 1009, column: 33, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !704, file: !1, line: 1008, column: 34)
!1591 = !DILocation(line: 1009, column: 37, scope: !1590)
!1592 = !DILocation(line: 1011, column: 5, scope: !1590)
!1593 = !DILocation(line: 1015, column: 22, scope: !703)
!1594 = !DILocation(line: 1015, column: 32, scope: !703)
!1595 = !DILocation(line: 1015, column: 15, scope: !703)
!1596 = !DILocation(line: 1016, column: 17, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !703, file: !1, line: 1016, column: 13)
!1598 = !DILocation(line: 1016, column: 13, scope: !703)
!1599 = !DILocation(line: 1018, column: 19, scope: !703)
!1600 = !DILocation(line: 1019, column: 9, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !702, file: !1, discriminator: 1)
!1602 = !DILocation(line: 1019, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1019, column: 9)
!1604 = !DILocation(line: 1019, column: 9, scope: !702)
!1605 = !DILocation(line: 1019, column: 9, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1603, file: !1, discriminator: 3)
!1607 = !DILocation(line: 226, column: 44, scope: !731, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 1031, column: 12, scope: !659)
!1609 = !DILocation(line: 226, column: 57, scope: !731, inlinedAt: !1608)
!1610 = !DILocation(line: 226, column: 70, scope: !731, inlinedAt: !1608)
!1611 = !DILocation(line: 228, column: 16, scope: !731, inlinedAt: !1608)
!1612 = !DILocation(line: 201, column: 63, scope: !739, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 231, column: 12, scope: !731, inlinedAt: !1608)
!1614 = !DILocation(line: 201, column: 46, scope: !739, inlinedAt: !1613)
!1615 = !DILocation(line: 205, column: 16, scope: !739, inlinedAt: !1613)
!1616 = !DILocation(line: 205, column: 10, scope: !739, inlinedAt: !1613)
!1617 = !DILocation(line: 203, column: 15, scope: !739, inlinedAt: !1613)
!1618 = !DILocation(line: 206, column: 12, scope: !1454, inlinedAt: !1613)
!1619 = !DILocation(line: 206, column: 9, scope: !739, inlinedAt: !1613)
!1620 = !DILocation(line: 1028, column: 9, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !659, file: !1, line: 1028, column: 9)
!1622 = !DILocation(line: 1029, column: 17, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1621, file: !1, line: 1028, column: 24)
!1624 = !DILocation(line: 1028, column: 9, scope: !659)
!1625 = !DILocation(line: 1026, column: 17, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 1025, column: 24)
!1627 = distinct !DILexicalBlock(scope: !659, file: !1, line: 1025, column: 9)
!1628 = !DILocation(line: 1025, column: 9, scope: !659)
!1629 = !DILocation(line: 207, column: 41, scope: !1454, inlinedAt: !1613)
!1630 = !DILocation(line: 207, column: 9, scope: !1454, inlinedAt: !1613)
!1631 = !DILocation(line: 1032, column: 1, scope: !659)
!1632 = !DILocation(line: 437, column: 23, scope: !507)
!1633 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 441, column: 5, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1636, file: !1, discriminator: 4)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !1, line: 441, column: 5)
!1637 = distinct !DILexicalBlock(scope: !507, file: !1, line: 441, column: 5)
!1638 = !DILocation(line: 437, column: 36, scope: !507)
!1639 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 442, column: 5, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1642, file: !1, discriminator: 4)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 442, column: 5)
!1643 = distinct !DILexicalBlock(scope: !507, file: !1, line: 442, column: 5)
!1644 = !DILocation(line: 439, column: 16, scope: !507)
!1645 = !DILocation(line: 441, column: 5, scope: !1637)
!1646 = !DILocation(line: 441, column: 5, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1637, file: !1, discriminator: 2)
!1648 = !DILocation(line: 441, column: 5, scope: !507)
!1649 = !DILocation(line: 441, column: 5, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !1, discriminator: 3)
!1651 = !DILexicalBlockFile(scope: !1637, file: !1, discriminator: 1)
!1652 = !DILocation(line: 440, column: 16, scope: !507)
!1653 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1634)
!1654 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1634)
!1655 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1634)
!1656 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1634)
!1657 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1634)
!1658 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1634)
!1659 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1634)
!1660 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1634)
!1661 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1634)
!1662 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1634)
!1663 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1634)
!1664 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1634)
!1665 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1634)
!1666 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1634)
!1667 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1634)
!1668 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1634)
!1669 = !DILocation(line: 442, column: 5, scope: !1643)
!1670 = !DILocation(line: 442, column: 5, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1643, file: !1, discriminator: 2)
!1672 = !DILocation(line: 442, column: 5, scope: !507)
!1673 = !DILocation(line: 442, column: 5, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !1, discriminator: 3)
!1675 = !DILexicalBlockFile(scope: !1643, file: !1, discriminator: 1)
!1676 = !DILocation(line: 440, column: 19, scope: !507)
!1677 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1640)
!1678 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1640)
!1679 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1640)
!1680 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1640)
!1681 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1640)
!1682 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1640)
!1683 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1640)
!1684 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1640)
!1685 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1640)
!1686 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1640)
!1687 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1640)
!1688 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1640)
!1689 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1640)
!1690 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1640)
!1691 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1640)
!1692 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1640)
!1693 = !DILocation(line: 16, column: 18, scope: !391, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 444, column: 14, scope: !507)
!1695 = !DILocation(line: 16, column: 32, scope: !391, inlinedAt: !1694)
!1696 = !DILocation(line: 18, column: 16, scope: !391, inlinedAt: !1694)
!1697 = !DILocation(line: 212, column: 35, scope: !446, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 446, column: 12, scope: !507)
!1699 = !DILocation(line: 217, column: 30, scope: !446, inlinedAt: !1698)
!1700 = !DILocation(line: 218, column: 12, scope: !940, inlinedAt: !1698)
!1701 = !DILocation(line: 218, column: 9, scope: !446, inlinedAt: !1698)
!1702 = !DILocation(line: 219, column: 16, scope: !940, inlinedAt: !1698)
!1703 = !DILocation(line: 219, column: 9, scope: !940, inlinedAt: !1698)
!1704 = !DILocation(line: 19, column: 21, scope: !391, inlinedAt: !1694)
!1705 = !DILocation(line: 220, column: 11, scope: !446, inlinedAt: !1698)
!1706 = !DILocation(line: 221, column: 16, scope: !446, inlinedAt: !1698)
!1707 = !DILocation(line: 222, column: 5, scope: !446, inlinedAt: !1698)
!1708 = !DILocation(line: 447, column: 1, scope: !507)
!1709 = !DILocation(line: 450, column: 23, scope: !523)
!1710 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 454, column: 5, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1713, file: !1, discriminator: 4)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !1, line: 454, column: 5)
!1714 = distinct !DILexicalBlock(scope: !523, file: !1, line: 454, column: 5)
!1715 = !DILocation(line: 450, column: 36, scope: !523)
!1716 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 455, column: 5, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !1, discriminator: 4)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 455, column: 5)
!1720 = distinct !DILexicalBlock(scope: !523, file: !1, line: 455, column: 5)
!1721 = !DILocation(line: 452, column: 16, scope: !523)
!1722 = !DILocation(line: 454, column: 5, scope: !1714)
!1723 = !DILocation(line: 454, column: 5, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1714, file: !1, discriminator: 2)
!1725 = !DILocation(line: 454, column: 5, scope: !523)
!1726 = !DILocation(line: 454, column: 5, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1728, file: !1, discriminator: 3)
!1728 = !DILexicalBlockFile(scope: !1714, file: !1, discriminator: 1)
!1729 = !DILocation(line: 453, column: 16, scope: !523)
!1730 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1711)
!1731 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1711)
!1732 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1711)
!1733 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1711)
!1734 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1711)
!1735 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1711)
!1736 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1711)
!1737 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1711)
!1738 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1711)
!1739 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1711)
!1740 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1711)
!1741 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1711)
!1742 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1711)
!1743 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1711)
!1744 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1711)
!1745 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1711)
!1746 = !DILocation(line: 455, column: 5, scope: !1720)
!1747 = !DILocation(line: 455, column: 5, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1720, file: !1, discriminator: 2)
!1749 = !DILocation(line: 455, column: 5, scope: !523)
!1750 = !DILocation(line: 455, column: 5, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1752, file: !1, discriminator: 3)
!1752 = !DILexicalBlockFile(scope: !1720, file: !1, discriminator: 1)
!1753 = !DILocation(line: 453, column: 19, scope: !523)
!1754 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1717)
!1755 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1717)
!1756 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1717)
!1757 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1717)
!1758 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1717)
!1759 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1717)
!1760 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1717)
!1761 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1717)
!1762 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1717)
!1763 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1717)
!1764 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1717)
!1765 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1717)
!1766 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1717)
!1767 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1717)
!1768 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1717)
!1769 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1717)
!1770 = !DILocation(line: 25, column: 19, scope: !398, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 457, column: 14, scope: !523)
!1772 = !DILocation(line: 25, column: 33, scope: !398, inlinedAt: !1771)
!1773 = !DILocation(line: 27, column: 16, scope: !398, inlinedAt: !1771)
!1774 = !DILocation(line: 212, column: 35, scope: !446, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 459, column: 12, scope: !523)
!1776 = !DILocation(line: 217, column: 30, scope: !446, inlinedAt: !1775)
!1777 = !DILocation(line: 218, column: 12, scope: !940, inlinedAt: !1775)
!1778 = !DILocation(line: 218, column: 9, scope: !446, inlinedAt: !1775)
!1779 = !DILocation(line: 219, column: 16, scope: !940, inlinedAt: !1775)
!1780 = !DILocation(line: 219, column: 9, scope: !940, inlinedAt: !1775)
!1781 = !DILocation(line: 28, column: 21, scope: !398, inlinedAt: !1771)
!1782 = !DILocation(line: 220, column: 11, scope: !446, inlinedAt: !1775)
!1783 = !DILocation(line: 221, column: 16, scope: !446, inlinedAt: !1775)
!1784 = !DILocation(line: 222, column: 5, scope: !446, inlinedAt: !1775)
!1785 = !DILocation(line: 460, column: 1, scope: !523)
!1786 = !DILocation(line: 463, column: 23, scope: !530)
!1787 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 467, column: 5, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1790, file: !1, discriminator: 4)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !1, line: 467, column: 5)
!1791 = distinct !DILexicalBlock(scope: !530, file: !1, line: 467, column: 5)
!1792 = !DILocation(line: 463, column: 36, scope: !530)
!1793 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 468, column: 5, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1796, file: !1, discriminator: 4)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 468, column: 5)
!1797 = distinct !DILexicalBlock(scope: !530, file: !1, line: 468, column: 5)
!1798 = !DILocation(line: 465, column: 16, scope: !530)
!1799 = !DILocation(line: 467, column: 5, scope: !1791)
!1800 = !DILocation(line: 467, column: 5, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1791, file: !1, discriminator: 2)
!1802 = !DILocation(line: 467, column: 5, scope: !530)
!1803 = !DILocation(line: 467, column: 5, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1805, file: !1, discriminator: 3)
!1805 = !DILexicalBlockFile(scope: !1791, file: !1, discriminator: 1)
!1806 = !DILocation(line: 466, column: 16, scope: !530)
!1807 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1788)
!1808 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1788)
!1809 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1788)
!1810 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1788)
!1811 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1788)
!1812 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1788)
!1813 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1788)
!1814 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1788)
!1815 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1788)
!1816 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1788)
!1817 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1788)
!1818 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1788)
!1819 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1788)
!1820 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1788)
!1821 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1788)
!1822 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1788)
!1823 = !DILocation(line: 468, column: 5, scope: !1797)
!1824 = !DILocation(line: 468, column: 5, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1797, file: !1, discriminator: 2)
!1826 = !DILocation(line: 468, column: 5, scope: !530)
!1827 = !DILocation(line: 468, column: 5, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1829, file: !1, discriminator: 3)
!1829 = !DILexicalBlockFile(scope: !1797, file: !1, discriminator: 1)
!1830 = !DILocation(line: 466, column: 19, scope: !530)
!1831 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1794)
!1832 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1794)
!1833 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1794)
!1834 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1794)
!1835 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1794)
!1836 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1794)
!1837 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1794)
!1838 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1794)
!1839 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1794)
!1840 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1794)
!1841 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1794)
!1842 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1794)
!1843 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1794)
!1844 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1794)
!1845 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1794)
!1846 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1794)
!1847 = !DILocation(line: 43, column: 19, scope: !409, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 470, column: 14, scope: !530)
!1849 = !DILocation(line: 43, column: 33, scope: !409, inlinedAt: !1848)
!1850 = !DILocation(line: 45, column: 16, scope: !409, inlinedAt: !1848)
!1851 = !DILocation(line: 212, column: 35, scope: !446, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 472, column: 12, scope: !530)
!1853 = !DILocation(line: 217, column: 30, scope: !446, inlinedAt: !1852)
!1854 = !DILocation(line: 218, column: 12, scope: !940, inlinedAt: !1852)
!1855 = !DILocation(line: 218, column: 9, scope: !446, inlinedAt: !1852)
!1856 = !DILocation(line: 219, column: 16, scope: !940, inlinedAt: !1852)
!1857 = !DILocation(line: 219, column: 9, scope: !940, inlinedAt: !1852)
!1858 = !DILocation(line: 46, column: 20, scope: !409, inlinedAt: !1848)
!1859 = !DILocation(line: 46, column: 36, scope: !409, inlinedAt: !1848)
!1860 = !DILocation(line: 46, column: 28, scope: !409, inlinedAt: !1848)
!1861 = !DILocation(line: 47, column: 36, scope: !409, inlinedAt: !1848)
!1862 = !DILocation(line: 47, column: 20, scope: !409, inlinedAt: !1848)
!1863 = !DILocation(line: 47, column: 28, scope: !409, inlinedAt: !1848)
!1864 = !DILocation(line: 220, column: 11, scope: !446, inlinedAt: !1852)
!1865 = !DILocation(line: 221, column: 16, scope: !446, inlinedAt: !1852)
!1866 = !DILocation(line: 222, column: 5, scope: !446, inlinedAt: !1852)
!1867 = !DILocation(line: 473, column: 1, scope: !530)
!1868 = !DILocation(line: 494, column: 29, scope: !537)
!1869 = !DILocation(line: 494, column: 42, scope: !537)
!1870 = !DILocation(line: 496, column: 21, scope: !537)
!1871 = !DILocation(line: 496, column: 5, scope: !537)
!1872 = !DILocation(line: 498, column: 5, scope: !537)
!1873 = !DILocation(line: 503, column: 26, scope: !541)
!1874 = !DILocation(line: 503, column: 39, scope: !541)
!1875 = !DILocation(line: 505, column: 21, scope: !541)
!1876 = !DILocation(line: 505, column: 5, scope: !541)
!1877 = !DILocation(line: 507, column: 5, scope: !541)
!1878 = !DILocation(line: 511, column: 23, scope: !545)
!1879 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 517, column: 5, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1882, file: !1, discriminator: 4)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 517, column: 5)
!1883 = distinct !DILexicalBlock(scope: !545, file: !1, line: 517, column: 5)
!1884 = !DILocation(line: 511, column: 36, scope: !545)
!1885 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 518, column: 5, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1888, file: !1, discriminator: 4)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 518, column: 5)
!1889 = distinct !DILexicalBlock(scope: !545, file: !1, line: 518, column: 5)
!1890 = !DILocation(line: 511, column: 49, scope: !545)
!1891 = !DILocation(line: 513, column: 16, scope: !545)
!1892 = !DILocation(line: 514, column: 16, scope: !545)
!1893 = !DILocation(line: 517, column: 5, scope: !1883)
!1894 = !DILocation(line: 517, column: 5, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 2)
!1896 = !DILocation(line: 517, column: 5, scope: !545)
!1897 = !DILocation(line: 517, column: 5, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1899, file: !1, discriminator: 3)
!1899 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 1)
!1900 = !DILocation(line: 516, column: 16, scope: !545)
!1901 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1880)
!1902 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1880)
!1903 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1880)
!1904 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1880)
!1905 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1880)
!1906 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1880)
!1907 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1880)
!1908 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1880)
!1909 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1880)
!1910 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1880)
!1911 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1880)
!1912 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1880)
!1913 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1880)
!1914 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1880)
!1915 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1880)
!1916 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1880)
!1917 = !DILocation(line: 518, column: 5, scope: !1889)
!1918 = !DILocation(line: 518, column: 5, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1889, file: !1, discriminator: 2)
!1920 = !DILocation(line: 518, column: 5, scope: !545)
!1921 = !DILocation(line: 518, column: 5, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1923, file: !1, discriminator: 3)
!1923 = !DILexicalBlockFile(scope: !1889, file: !1, discriminator: 1)
!1924 = !DILocation(line: 516, column: 19, scope: !545)
!1925 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !1886)
!1926 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !1886)
!1927 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !1886)
!1928 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !1886)
!1929 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !1886)
!1930 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !1886)
!1931 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !1886)
!1932 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !1886)
!1933 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !1886)
!1934 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !1886)
!1935 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !1886)
!1936 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !1886)
!1937 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !1886)
!1938 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !1886)
!1939 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !1886)
!1940 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !1886)
!1941 = !DILocation(line: 520, column: 11, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !545, file: !1, line: 520, column: 9)
!1943 = !DILocation(line: 520, column: 9, scope: !545)
!1944 = !DILocation(line: 521, column: 25, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !1, line: 520, column: 23)
!1946 = !DILocation(line: 521, column: 9, scope: !1945)
!1947 = !DILocation(line: 522, column: 9, scope: !1945)
!1948 = !DILocation(line: 525, column: 5, scope: !545)
!1949 = !DILocation(line: 525, column: 11, scope: !545)
!1950 = !DILocation(line: 527, column: 20, scope: !545)
!1951 = !DILocation(line: 515, column: 10, scope: !545)
!1952 = !DILocation(line: 528, column: 23, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !545, file: !1, line: 528, column: 9)
!1954 = !DILocation(line: 528, column: 46, scope: !1953)
!1955 = !DILocation(line: 528, column: 29, scope: !1953)
!1956 = !DILocation(line: 152, column: 19, scope: !555, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 529, column: 13, scope: !1953)
!1958 = !DILocation(line: 152, column: 27, scope: !555, inlinedAt: !1957)
!1959 = !DILocation(line: 154, column: 16, scope: !555, inlinedAt: !1957)
!1960 = !DILocation(line: 156, column: 17, scope: !1961, inlinedAt: !1957)
!1961 = distinct !DILexicalBlock(scope: !555, file: !1, line: 156, column: 9)
!1962 = !DILocation(line: 106, column: 18, scope: !431, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 159, column: 16, scope: !1964, inlinedAt: !1957)
!1964 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 156, column: 30)
!1965 = !DILocation(line: 106, column: 32, scope: !431, inlinedAt: !1963)
!1966 = !DILocation(line: 108, column: 16, scope: !431, inlinedAt: !1963)
!1967 = !DILocation(line: 110, column: 16, scope: !865, inlinedAt: !1963)
!1968 = !DILocation(line: 110, column: 22, scope: !865, inlinedAt: !1963)
!1969 = !DILocation(line: 114, column: 21, scope: !869, inlinedAt: !1963)
!1970 = !DILocation(line: 114, column: 37, scope: !869, inlinedAt: !1963)
!1971 = !DILocation(line: 114, column: 27, scope: !869, inlinedAt: !1963)
!1972 = !DILocation(line: 115, column: 36, scope: !873, inlinedAt: !1963)
!1973 = !DILocation(line: 115, column: 26, scope: !873, inlinedAt: !1963)
!1974 = !DILocation(line: 116, column: 19, scope: !873, inlinedAt: !1963)
!1975 = !DILocation(line: 116, column: 13, scope: !873, inlinedAt: !1963)
!1976 = !DILocation(line: 121, column: 16, scope: !880, inlinedAt: !1963)
!1977 = !DILocation(line: 109, column: 12, scope: !431, inlinedAt: !1963)
!1978 = !DILocation(line: 122, column: 15, scope: !880, inlinedAt: !1963)
!1979 = !DILocation(line: 109, column: 17, scope: !431, inlinedAt: !1963)
!1980 = !DILocation(line: 123, column: 14, scope: !880, inlinedAt: !1963)
!1981 = !DILocation(line: 109, column: 21, scope: !431, inlinedAt: !1963)
!1982 = !DILocation(line: 124, column: 19, scope: !880, inlinedAt: !1963)
!1983 = !DILocation(line: 109, column: 24, scope: !431, inlinedAt: !1963)
!1984 = !DILocation(line: 129, column: 22, scope: !880, inlinedAt: !1963)
!1985 = !DILocation(line: 129, column: 21, scope: !880, inlinedAt: !1963)
!1986 = !DILocation(line: 130, column: 22, scope: !880, inlinedAt: !1963)
!1987 = !DILocation(line: 130, column: 21, scope: !880, inlinedAt: !1963)
!1988 = !DILocation(line: 159, column: 16, scope: !1964, inlinedAt: !1957)
!1989 = !DILocation(line: 161, column: 16, scope: !1990, inlinedAt: !1957)
!1990 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 161, column: 14)
!1991 = !DILocation(line: 161, column: 14, scope: !1961, inlinedAt: !1957)
!1992 = !DILocation(line: 143, column: 15, scope: !1993, inlinedAt: !1995)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !1, line: 143, column: 13)
!1994 = distinct !DILexicalBlock(scope: !562, file: !1, line: 142, column: 35)
!1995 = distinct !DILocation(line: 162, column: 16, scope: !1990, inlinedAt: !1957)
!1996 = !DILocation(line: 162, column: 16, scope: !1990, inlinedAt: !1957)
!1997 = !DILocation(line: 143, column: 13, scope: !1994, inlinedAt: !1995)
!1998 = !DILocation(line: 43, column: 19, scope: !409, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 144, column: 17, scope: !1993, inlinedAt: !1995)
!2000 = !DILocation(line: 43, column: 33, scope: !409, inlinedAt: !1999)
!2001 = !DILocation(line: 45, column: 16, scope: !409, inlinedAt: !1999)
!2002 = !DILocation(line: 46, column: 20, scope: !409, inlinedAt: !1999)
!2003 = !DILocation(line: 46, column: 36, scope: !409, inlinedAt: !1999)
!2004 = !DILocation(line: 46, column: 28, scope: !409, inlinedAt: !1999)
!2005 = !DILocation(line: 47, column: 20, scope: !409, inlinedAt: !1999)
!2006 = !DILocation(line: 47, column: 36, scope: !409, inlinedAt: !1999)
!2007 = !DILocation(line: 47, column: 28, scope: !409, inlinedAt: !1999)
!2008 = !DILocation(line: 138, column: 16, scope: !562, inlinedAt: !1995)
!2009 = !DILocation(line: 144, column: 13, scope: !1993, inlinedAt: !1995)
!2010 = !DILocation(line: 145, column: 14, scope: !1994, inlinedAt: !1995)
!2011 = !DILocation(line: 139, column: 10, scope: !562, inlinedAt: !1995)
!2012 = !DILocation(line: 43, column: 19, scope: !409, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 146, column: 13, scope: !1994, inlinedAt: !1995)
!2014 = !DILocation(line: 43, column: 33, scope: !409, inlinedAt: !2013)
!2015 = !DILocation(line: 45, column: 16, scope: !409, inlinedAt: !2013)
!2016 = !DILocation(line: 46, column: 20, scope: !409, inlinedAt: !2013)
!2017 = !DILocation(line: 46, column: 36, scope: !409, inlinedAt: !2013)
!2018 = !DILocation(line: 46, column: 28, scope: !409, inlinedAt: !2013)
!2019 = !DILocation(line: 47, column: 20, scope: !409, inlinedAt: !2013)
!2020 = !DILocation(line: 47, column: 28, scope: !409, inlinedAt: !2013)
!2021 = !DILocation(line: 142, column: 17, scope: !562, inlinedAt: !1995)
!2022 = !DILocation(line: 142, column: 26, scope: !562, inlinedAt: !1995)
!2023 = !DILocation(line: 142, column: 21, scope: !562, inlinedAt: !1995)
!2024 = !DILocation(line: 164, column: 36, scope: !1990, inlinedAt: !1957)
!2025 = !DILocation(line: 136, column: 19, scope: !562, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 164, column: 27, scope: !1990, inlinedAt: !1957)
!2027 = !DILocation(line: 136, column: 27, scope: !562, inlinedAt: !2026)
!2028 = !DILocation(line: 138, column: 16, scope: !562, inlinedAt: !2026)
!2029 = !DILocation(line: 138, column: 19, scope: !562, inlinedAt: !2026)
!2030 = !DILocation(line: 139, column: 10, scope: !562, inlinedAt: !2026)
!2031 = !DILocation(line: 142, column: 26, scope: !562, inlinedAt: !2026)
!2032 = !DILocation(line: 142, column: 21, scope: !562, inlinedAt: !2026)
!2033 = !DILocation(line: 143, column: 15, scope: !1993, inlinedAt: !2026)
!2034 = !DILocation(line: 164, column: 27, scope: !1990, inlinedAt: !1957)
!2035 = !DILocation(line: 143, column: 13, scope: !1994, inlinedAt: !2026)
!2036 = !DILocation(line: 43, column: 19, scope: !409, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 144, column: 17, scope: !1993, inlinedAt: !2026)
!2038 = !DILocation(line: 43, column: 33, scope: !409, inlinedAt: !2037)
!2039 = !DILocation(line: 45, column: 16, scope: !409, inlinedAt: !2037)
!2040 = !DILocation(line: 46, column: 20, scope: !409, inlinedAt: !2037)
!2041 = !DILocation(line: 46, column: 36, scope: !409, inlinedAt: !2037)
!2042 = !DILocation(line: 46, column: 28, scope: !409, inlinedAt: !2037)
!2043 = !DILocation(line: 47, column: 20, scope: !409, inlinedAt: !2037)
!2044 = !DILocation(line: 47, column: 36, scope: !409, inlinedAt: !2037)
!2045 = !DILocation(line: 47, column: 28, scope: !409, inlinedAt: !2037)
!2046 = !DILocation(line: 144, column: 13, scope: !1993, inlinedAt: !2026)
!2047 = !DILocation(line: 145, column: 14, scope: !1994, inlinedAt: !2026)
!2048 = !DILocation(line: 43, column: 19, scope: !409, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 146, column: 13, scope: !1994, inlinedAt: !2026)
!2050 = !DILocation(line: 43, column: 33, scope: !409, inlinedAt: !2049)
!2051 = !DILocation(line: 45, column: 16, scope: !409, inlinedAt: !2049)
!2052 = !DILocation(line: 46, column: 20, scope: !409, inlinedAt: !2049)
!2053 = !DILocation(line: 46, column: 36, scope: !409, inlinedAt: !2049)
!2054 = !DILocation(line: 46, column: 28, scope: !409, inlinedAt: !2049)
!2055 = !DILocation(line: 47, column: 20, scope: !409, inlinedAt: !2049)
!2056 = !DILocation(line: 47, column: 28, scope: !409, inlinedAt: !2049)
!2057 = !DILocation(line: 142, column: 17, scope: !562, inlinedAt: !2026)
!2058 = !DILocation(line: 52, column: 19, scope: !414, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 164, column: 16, scope: !1990, inlinedAt: !1957)
!2060 = !DILocation(line: 52, column: 33, scope: !414, inlinedAt: !2059)
!2061 = !DILocation(line: 77, column: 17, scope: !414, inlinedAt: !2059)
!2062 = !DILocation(line: 78, column: 38, scope: !414, inlinedAt: !2059)
!2063 = !DILocation(line: 78, column: 44, scope: !414, inlinedAt: !2059)
!2064 = !DILocation(line: 78, column: 31, scope: !414, inlinedAt: !2059)
!2065 = !DILocation(line: 78, column: 19, scope: !414, inlinedAt: !2059)
!2066 = !DILocation(line: 79, column: 38, scope: !414, inlinedAt: !2059)
!2067 = !DILocation(line: 79, column: 44, scope: !414, inlinedAt: !2059)
!2068 = !DILocation(line: 79, column: 31, scope: !414, inlinedAt: !2059)
!2069 = !DILocation(line: 79, column: 19, scope: !414, inlinedAt: !2059)
!2070 = !DILocation(line: 81, column: 20, scope: !426, inlinedAt: !2059)
!2071 = !DILocation(line: 81, column: 10, scope: !414, inlinedAt: !2059)
!2072 = !DILocation(line: 83, column: 23, scope: !424, inlinedAt: !2059)
!2073 = !DILocation(line: 83, column: 13, scope: !425, inlinedAt: !2059)
!2074 = !DILocation(line: 84, column: 19, scope: !831, inlinedAt: !2059)
!2075 = !DILocation(line: 86, column: 9, scope: !831, inlinedAt: !2059)
!2076 = !DILocation(line: 88, column: 41, scope: !423, inlinedAt: !2059)
!2077 = !DILocation(line: 88, column: 26, scope: !423, inlinedAt: !2059)
!2078 = !DILocation(line: 89, column: 50, scope: !423, inlinedAt: !2059)
!2079 = !DILocation(line: 89, column: 41, scope: !423, inlinedAt: !2059)
!2080 = !DILocation(line: 89, column: 26, scope: !423, inlinedAt: !2059)
!2081 = !DILocation(line: 90, column: 39, scope: !423, inlinedAt: !2059)
!2082 = !DILocation(line: 90, column: 30, scope: !423, inlinedAt: !2059)
!2083 = !DILocation(line: 90, column: 48, scope: !423, inlinedAt: !2059)
!2084 = !DILocation(line: 91, column: 30, scope: !423, inlinedAt: !2059)
!2085 = !DILocation(line: 91, column: 48, scope: !423, inlinedAt: !2059)
!2086 = !DILocation(line: 164, column: 16, scope: !1990, inlinedAt: !1957)
!2087 = !DILocation(line: 96, column: 37, scope: !429, inlinedAt: !2059)
!2088 = !DILocation(line: 96, column: 22, scope: !429, inlinedAt: !2059)
!2089 = !DILocation(line: 97, column: 37, scope: !429, inlinedAt: !2059)
!2090 = !DILocation(line: 97, column: 45, scope: !429, inlinedAt: !2059)
!2091 = !DILocation(line: 97, column: 22, scope: !429, inlinedAt: !2059)
!2092 = !DILocation(line: 99, column: 34, scope: !429, inlinedAt: !2059)
!2093 = !DILocation(line: 99, column: 44, scope: !429, inlinedAt: !2059)
!2094 = !DILocation(line: 100, column: 26, scope: !429, inlinedAt: !2059)
!2095 = !DILocation(line: 100, column: 34, scope: !429, inlinedAt: !2059)
!2096 = !DILocation(line: 100, column: 44, scope: !429, inlinedAt: !2059)
!2097 = !DILocation(line: 166, column: 1, scope: !555, inlinedAt: !1957)
!2098 = !DILocation(line: 529, column: 13, scope: !1953)
!2099 = !DILocation(line: 529, column: 9, scope: !1953)
!2100 = !DILocation(line: 531, column: 13, scope: !1953)
!2101 = !DILocation(line: 534, column: 5, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2103, file: !1, discriminator: 1)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 534, column: 5)
!2104 = distinct !DILexicalBlock(scope: !545, file: !1, line: 534, column: 5)
!2105 = !DILocation(line: 534, column: 5, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2103, file: !1, discriminator: 3)
!2107 = !DILocation(line: 534, column: 5, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2103, file: !1, discriminator: 5)
!2109 = !DILocation(line: 534, column: 5, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2103, file: !1, discriminator: 7)
!2111 = !DILocation(line: 535, column: 9, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !545, file: !1, line: 535, column: 9)
!2113 = !DILocation(line: 534, column: 5, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 534, column: 5)
!2115 = !DILocation(line: 534, column: 5, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2117, file: !1, discriminator: 10)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 534, column: 5)
!2118 = !DILocation(line: 535, column: 9, scope: !545)
!2119 = !DILocation(line: 534, column: 5, scope: !2103)
!2120 = !DILocation(line: 534, column: 5, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2122, file: !1, discriminator: 14)
!2122 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 534, column: 5)
!2123 = !DILocation(line: 536, column: 25, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 535, column: 24)
!2125 = !DILocation(line: 536, column: 9, scope: !2124)
!2126 = !DILocation(line: 538, column: 9, scope: !2124)
!2127 = !DILocation(line: 541, column: 25, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 540, column: 31)
!2129 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 540, column: 14)
!2130 = !DILocation(line: 541, column: 9, scope: !2128)
!2131 = !DILocation(line: 543, column: 9, scope: !2128)
!2132 = !DILocation(line: 212, column: 35, scope: !446, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 545, column: 12, scope: !545)
!2134 = !DILocation(line: 217, column: 30, scope: !446, inlinedAt: !2133)
!2135 = !DILocation(line: 218, column: 12, scope: !940, inlinedAt: !2133)
!2136 = !DILocation(line: 218, column: 9, scope: !446, inlinedAt: !2133)
!2137 = !DILocation(line: 219, column: 16, scope: !940, inlinedAt: !2133)
!2138 = !DILocation(line: 219, column: 9, scope: !940, inlinedAt: !2133)
!2139 = !DILocation(line: 220, column: 11, scope: !446, inlinedAt: !2133)
!2140 = !DILocation(line: 221, column: 16, scope: !446, inlinedAt: !2133)
!2141 = !DILocation(line: 222, column: 5, scope: !446, inlinedAt: !2133)
!2142 = !DILocation(line: 546, column: 1, scope: !545)
!2143 = !DILocation(line: 557, column: 30, scope: !569)
!2144 = !DILocation(line: 559, column: 16, scope: !569)
!2145 = !DILocation(line: 560, column: 25, scope: !569)
!2146 = !{!980, !980, i64 0}
!2147 = !DILocation(line: 212, column: 35, scope: !446, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 562, column: 12, scope: !569)
!2149 = !DILocation(line: 217, column: 30, scope: !446, inlinedAt: !2148)
!2150 = !DILocation(line: 218, column: 12, scope: !940, inlinedAt: !2148)
!2151 = !DILocation(line: 218, column: 9, scope: !446, inlinedAt: !2148)
!2152 = !DILocation(line: 219, column: 16, scope: !940, inlinedAt: !2148)
!2153 = !DILocation(line: 219, column: 9, scope: !940, inlinedAt: !2148)
!2154 = !DILocation(line: 560, column: 16, scope: !569)
!2155 = !DILocation(line: 220, column: 11, scope: !446, inlinedAt: !2148)
!2156 = !DILocation(line: 221, column: 16, scope: !446, inlinedAt: !2148)
!2157 = !DILocation(line: 222, column: 5, scope: !446, inlinedAt: !2148)
!2158 = !DILocation(line: 562, column: 12, scope: !569)
!2159 = !DILocation(line: 562, column: 5, scope: !569)
!2160 = !DILocation(line: 566, column: 30, scope: !573)
!2161 = !DILocation(line: 568, column: 9, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !573, file: !1, line: 568, column: 9)
!2163 = !DILocation(line: 568, column: 9, scope: !573)
!2164 = !DILocation(line: 569, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !1, line: 568, column: 34)
!2166 = !DILocation(line: 570, column: 9, scope: !2165)
!2167 = !DILocation(line: 573, column: 16, scope: !2162)
!2168 = !DILocation(line: 212, column: 35, scope: !446, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 573, column: 16, scope: !2162)
!2170 = !DILocation(line: 217, column: 30, scope: !446, inlinedAt: !2169)
!2171 = !DILocation(line: 218, column: 12, scope: !940, inlinedAt: !2169)
!2172 = !DILocation(line: 218, column: 9, scope: !446, inlinedAt: !2169)
!2173 = !DILocation(line: 219, column: 16, scope: !940, inlinedAt: !2169)
!2174 = !DILocation(line: 219, column: 9, scope: !940, inlinedAt: !2169)
!2175 = !DILocation(line: 220, column: 11, scope: !446, inlinedAt: !2169)
!2176 = !DILocation(line: 221, column: 16, scope: !446, inlinedAt: !2169)
!2177 = !DILocation(line: 222, column: 5, scope: !446, inlinedAt: !2169)
!2178 = !DILocation(line: 574, column: 1, scope: !573)
!2179 = !DILocation(line: 577, column: 30, scope: !576)
!2180 = !DILocation(line: 582, column: 14, scope: !576)
!2181 = !DILocation(line: 579, column: 12, scope: !576)
!2182 = !DILocation(line: 585, column: 9, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !576, file: !1, line: 585, column: 9)
!2184 = !DILocation(line: 585, column: 15, scope: !2183)
!2185 = !DILocation(line: 585, column: 9, scope: !576)
!2186 = !DILocation(line: 586, column: 25, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2183, file: !1, line: 585, column: 26)
!2188 = !DILocation(line: 586, column: 9, scope: !2187)
!2189 = !DILocation(line: 588, column: 9, scope: !2187)
!2190 = !DILocation(line: 590, column: 12, scope: !576)
!2191 = !DILocation(line: 590, column: 5, scope: !576)
!2192 = !DILocation(line: 591, column: 1, scope: !576)
!2193 = !DILocation(line: 594, column: 31, scope: !580)
!2194 = !DILocation(line: 596, column: 20, scope: !580)
!2195 = !DILocation(line: 596, column: 25, scope: !580)
!2196 = !DILocation(line: 596, column: 32, scope: !580)
!2197 = !DILocation(line: 596, column: 43, scope: !580)
!2198 = !DILocation(line: 596, column: 48, scope: !580)
!2199 = !DILocation(line: 596, column: 32, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2201, file: !1, discriminator: 3)
!2201 = !DILexicalBlockFile(scope: !580, file: !1, discriminator: 1)
!2202 = !DILocation(line: 596, column: 5, scope: !580)
!2203 = !DILocation(line: 657, column: 23, scope: !585)
!2204 = !DILocation(line: 659, column: 21, scope: !585)
!2205 = !DILocation(line: 659, column: 5, scope: !585)
!2206 = !DILocation(line: 661, column: 5, scope: !585)
!2207 = !DILocation(line: 665, column: 25, scope: !588)
!2208 = !DILocation(line: 667, column: 21, scope: !588)
!2209 = !DILocation(line: 667, column: 5, scope: !588)
!2210 = !DILocation(line: 669, column: 5, scope: !588)
!2211 = !DILocation(line: 549, column: 27, scope: !591)
!2212 = !DILocation(line: 549, column: 40, scope: !591)
!2213 = !DILocation(line: 551, column: 21, scope: !591)
!2214 = !DILocation(line: 551, column: 5, scope: !591)
!2215 = !DILocation(line: 553, column: 5, scope: !591)
!2216 = !DILocation(line: 476, column: 23, scope: !595)
!2217 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 480, column: 5, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !1, discriminator: 4)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !1, line: 480, column: 5)
!2221 = distinct !DILexicalBlock(scope: !595, file: !1, line: 480, column: 5)
!2222 = !DILocation(line: 476, column: 36, scope: !595)
!2223 = !DILocation(line: 413, column: 23, scope: !514, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 481, column: 5, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 4)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !1, line: 481, column: 5)
!2227 = distinct !DILexicalBlock(scope: !595, file: !1, line: 481, column: 5)
!2228 = !DILocation(line: 478, column: 16, scope: !595)
!2229 = !DILocation(line: 480, column: 5, scope: !2221)
!2230 = !DILocation(line: 480, column: 5, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2221, file: !1, discriminator: 2)
!2232 = !DILocation(line: 480, column: 5, scope: !595)
!2233 = !DILocation(line: 480, column: 5, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2235, file: !1, discriminator: 3)
!2235 = !DILexicalBlockFile(scope: !2221, file: !1, discriminator: 1)
!2236 = !DILocation(line: 479, column: 16, scope: !595)
!2237 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !2218)
!2238 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !2218)
!2239 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !2218)
!2240 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !2218)
!2241 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !2218)
!2242 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !2218)
!2243 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !2218)
!2244 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !2218)
!2245 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !2218)
!2246 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !2218)
!2247 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !2218)
!2248 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !2218)
!2249 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !2218)
!2250 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !2218)
!2251 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !2218)
!2252 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !2218)
!2253 = !DILocation(line: 481, column: 5, scope: !2227)
!2254 = !DILocation(line: 481, column: 5, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2227, file: !1, discriminator: 2)
!2256 = !DILocation(line: 481, column: 5, scope: !595)
!2257 = !DILocation(line: 481, column: 5, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2259, file: !1, discriminator: 3)
!2259 = !DILexicalBlockFile(scope: !2227, file: !1, discriminator: 1)
!2260 = !DILocation(line: 479, column: 19, scope: !595)
!2261 = !DILocation(line: 413, column: 41, scope: !514, inlinedAt: !2224)
!2262 = !DILocation(line: 415, column: 15, scope: !514, inlinedAt: !2224)
!2263 = !DILocation(line: 418, column: 9, scope: !1163, inlinedAt: !2224)
!2264 = !DILocation(line: 418, column: 9, scope: !514, inlinedAt: !2224)
!2265 = !DILocation(line: 419, column: 20, scope: !1167, inlinedAt: !2224)
!2266 = !DILocation(line: 420, column: 22, scope: !1169, inlinedAt: !2224)
!2267 = !DILocation(line: 420, column: 30, scope: !1169, inlinedAt: !2224)
!2268 = !DILocation(line: 420, column: 33, scope: !1172, inlinedAt: !2224)
!2269 = !DILocation(line: 420, column: 13, scope: !1167, inlinedAt: !2224)
!2270 = !DILocation(line: 426, column: 9, scope: !1175, inlinedAt: !2224)
!2271 = !DILocation(line: 426, column: 9, scope: !1177, inlinedAt: !2224)
!2272 = !DILocation(line: 426, column: 9, scope: !514, inlinedAt: !2224)
!2273 = !DILocation(line: 427, column: 20, scope: !1180, inlinedAt: !2224)
!2274 = !DILocation(line: 428, column: 9, scope: !1180, inlinedAt: !2224)
!2275 = !DILocation(line: 430, column: 5, scope: !514, inlinedAt: !2224)
!2276 = !DILocation(line: 432, column: 5, scope: !514, inlinedAt: !2224)
!2277 = !DILocation(line: 483, column: 5, scope: !595)
!2278 = !DILocation(line: 483, column: 11, scope: !595)
!2279 = !DILocation(line: 52, column: 19, scope: !414, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 484, column: 12, scope: !595)
!2281 = !DILocation(line: 52, column: 33, scope: !414, inlinedAt: !2280)
!2282 = !DILocation(line: 77, column: 17, scope: !414, inlinedAt: !2280)
!2283 = !DILocation(line: 78, column: 38, scope: !414, inlinedAt: !2280)
!2284 = !DILocation(line: 78, column: 44, scope: !414, inlinedAt: !2280)
!2285 = !DILocation(line: 78, column: 31, scope: !414, inlinedAt: !2280)
!2286 = !DILocation(line: 78, column: 19, scope: !414, inlinedAt: !2280)
!2287 = !DILocation(line: 79, column: 38, scope: !414, inlinedAt: !2280)
!2288 = !DILocation(line: 79, column: 44, scope: !414, inlinedAt: !2280)
!2289 = !DILocation(line: 79, column: 31, scope: !414, inlinedAt: !2280)
!2290 = !DILocation(line: 79, column: 19, scope: !414, inlinedAt: !2280)
!2291 = !DILocation(line: 81, column: 20, scope: !426, inlinedAt: !2280)
!2292 = !DILocation(line: 81, column: 10, scope: !414, inlinedAt: !2280)
!2293 = !DILocation(line: 83, column: 23, scope: !424, inlinedAt: !2280)
!2294 = !DILocation(line: 83, column: 13, scope: !425, inlinedAt: !2280)
!2295 = !DILocation(line: 88, column: 41, scope: !423, inlinedAt: !2280)
!2296 = !DILocation(line: 88, column: 26, scope: !423, inlinedAt: !2280)
!2297 = !DILocation(line: 89, column: 50, scope: !423, inlinedAt: !2280)
!2298 = !DILocation(line: 89, column: 41, scope: !423, inlinedAt: !2280)
!2299 = !DILocation(line: 89, column: 26, scope: !423, inlinedAt: !2280)
!2300 = !DILocation(line: 90, column: 39, scope: !423, inlinedAt: !2280)
!2301 = !DILocation(line: 90, column: 30, scope: !423, inlinedAt: !2280)
!2302 = !DILocation(line: 90, column: 48, scope: !423, inlinedAt: !2280)
!2303 = !DILocation(line: 91, column: 39, scope: !423, inlinedAt: !2280)
!2304 = !DILocation(line: 91, column: 30, scope: !423, inlinedAt: !2280)
!2305 = !DILocation(line: 91, column: 48, scope: !423, inlinedAt: !2280)
!2306 = !DILocation(line: 484, column: 12, scope: !595)
!2307 = !DILocation(line: 96, column: 37, scope: !429, inlinedAt: !2280)
!2308 = !DILocation(line: 96, column: 22, scope: !429, inlinedAt: !2280)
!2309 = !DILocation(line: 97, column: 37, scope: !429, inlinedAt: !2280)
!2310 = !DILocation(line: 97, column: 45, scope: !429, inlinedAt: !2280)
!2311 = !DILocation(line: 97, column: 22, scope: !429, inlinedAt: !2280)
!2312 = !DILocation(line: 99, column: 26, scope: !429, inlinedAt: !2280)
!2313 = !DILocation(line: 99, column: 34, scope: !429, inlinedAt: !2280)
!2314 = !DILocation(line: 99, column: 44, scope: !429, inlinedAt: !2280)
!2315 = !DILocation(line: 100, column: 26, scope: !429, inlinedAt: !2280)
!2316 = !DILocation(line: 100, column: 34, scope: !429, inlinedAt: !2280)
!2317 = !DILocation(line: 100, column: 44, scope: !429, inlinedAt: !2280)
!2318 = !DILocation(line: 84, column: 19, scope: !831, inlinedAt: !2280)
!2319 = !DILocation(line: 487, column: 25, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !1, line: 486, column: 24)
!2321 = distinct !DILexicalBlock(scope: !595, file: !1, line: 486, column: 9)
!2322 = !DILocation(line: 487, column: 9, scope: !2320)
!2323 = !DILocation(line: 488, column: 9, scope: !2320)
!2324 = !DILocation(line: 212, column: 35, scope: !446, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 490, column: 12, scope: !595)
!2326 = !DILocation(line: 217, column: 30, scope: !446, inlinedAt: !2325)
!2327 = !DILocation(line: 218, column: 12, scope: !940, inlinedAt: !2325)
!2328 = !DILocation(line: 218, column: 9, scope: !446, inlinedAt: !2325)
!2329 = !DILocation(line: 219, column: 16, scope: !940, inlinedAt: !2325)
!2330 = !DILocation(line: 219, column: 9, scope: !940, inlinedAt: !2325)
!2331 = !DILocation(line: 220, column: 11, scope: !446, inlinedAt: !2325)
!2332 = !DILocation(line: 221, column: 16, scope: !446, inlinedAt: !2325)
!2333 = !DILocation(line: 222, column: 5, scope: !446, inlinedAt: !2325)
!2334 = !DILocation(line: 491, column: 1, scope: !595)
!2335 = !DILocation(line: 673, column: 29, scope: !630)
!2336 = !DILocation(line: 675, column: 16, scope: !630)
!2337 = !DILocation(line: 676, column: 36, scope: !630)
!2338 = !DILocation(line: 212, column: 35, scope: !446, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 678, column: 12, scope: !630)
!2340 = !DILocation(line: 217, column: 30, scope: !446, inlinedAt: !2339)
!2341 = !DILocation(line: 218, column: 12, scope: !940, inlinedAt: !2339)
!2342 = !DILocation(line: 218, column: 9, scope: !446, inlinedAt: !2339)
!2343 = !DILocation(line: 219, column: 16, scope: !940, inlinedAt: !2339)
!2344 = !DILocation(line: 219, column: 9, scope: !940, inlinedAt: !2339)
!2345 = !DILocation(line: 677, column: 14, scope: !630)
!2346 = !DILocation(line: 220, column: 11, scope: !446, inlinedAt: !2339)
!2347 = !DILocation(line: 221, column: 16, scope: !446, inlinedAt: !2339)
!2348 = !DILocation(line: 222, column: 5, scope: !446, inlinedAt: !2339)
!2349 = !DILocation(line: 678, column: 12, scope: !630)
!2350 = !DILocation(line: 678, column: 5, scope: !630)
!2351 = !DILocation(line: 687, column: 37, scope: !634)
!2352 = !DILocation(line: 689, column: 16, scope: !634)
!2353 = !DILocation(line: 689, column: 23, scope: !634)
!2354 = !DILocation(line: 690, column: 12, scope: !634)
!2355 = !DILocation(line: 690, column: 5, scope: !634)
!2356 = !DILocation(line: 699, column: 29, scope: !638)
!2357 = !DILocation(line: 699, column: 45, scope: !638)
!2358 = !DILocation(line: 701, column: 5, scope: !638)
!2359 = !DILocation(line: 702, column: 5, scope: !638)
!2360 = !DILocation(line: 701, column: 15, scope: !638)
!2361 = !DILocation(line: 705, column: 10, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !638, file: !1, line: 705, column: 9)
!2363 = !DILocation(line: 705, column: 9, scope: !638)
!2364 = !DILocation(line: 702, column: 22, scope: !638)
!2365 = !DILocation(line: 708, column: 5, scope: !638)
!2366 = !DILocation(line: 712, column: 9, scope: !638)
!2367 = !DILocation(line: 712, column: 25, scope: !638)
!2368 = !{!2369, !947, i64 16}
!2369 = !{!"", !946, i64 0, !947, i64 16, !947, i64 24, !2370, i64 32, !948, i64 40}
!2370 = !{!"", !834, i64 0, !834, i64 0, !834, i64 0, !834, i64 0, !834, i64 0, !834, i64 1}
!2371 = !DILocation(line: 709, column: 11, scope: !638)
!2372 = !DILocation(line: 703, column: 9, scope: !638)
!2373 = !DILocation(line: 713, column: 13, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !638, file: !1, line: 713, column: 9)
!2375 = !DILocation(line: 713, column: 9, scope: !638)
!2376 = !DILocation(line: 714, column: 9, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 713, column: 20)
!2378 = !DILocation(line: 715, column: 9, scope: !2377)
!2379 = !DILocation(line: 717, column: 12, scope: !638)
!2380 = !DILocation(line: 717, column: 5, scope: !638)
!2381 = !DILocation(line: 718, column: 1, scope: !638)
