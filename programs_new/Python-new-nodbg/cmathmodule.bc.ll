; ModuleID = './cmathmodule.bc'
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
%struct.Py_complex = type { double, double }

@cmathmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([23 x %struct.PyMethodDef], [23 x %struct.PyMethodDef]* @cmath_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@acos_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@acosh_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@asinh_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@atanh_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@cosh_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@exp_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@log_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@sinh_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@sqrt_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@tanh_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@rect_special_values = internal global [7 x [7 x %struct.Py_complex]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"cmath\00", align 1
@module_doc = internal global [99 x i8] c"This module is always available. It provides access to mathematical\0Afunctions for complex numbers.\00", align 16
@cmath_methods = internal global [23 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_acos, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @c_acos_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_acosh, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @c_acosh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_asin, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @c_asin_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_asinh, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @c_asinh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_atan, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @c_atan_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_atanh, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @c_atanh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_cos, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @c_cos_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_cosh, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @c_cosh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_exp, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @c_exp_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_isfinite, i32 1, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @cmath_isfinite_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_isinf, i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @cmath_isinf_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_isnan, i32 1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @cmath_isnan_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_log, i32 1, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @cmath_log_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_log10, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @c_log10_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_phase, i32 1, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @cmath_phase_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_polar, i32 1, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @cmath_polar_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_rect, i32 1, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @cmath_rect_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_sin, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @c_sin_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_sinh, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @c_sinh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_sqrt, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @c_sqrt_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_tan, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @c_tan_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmath_tanh, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @c_tanh_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@c_acos_doc = internal global [37 x i8] c"acos(x)\0A\0AReturn the arc cosine of x.\00", align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@c_acosh_doc = internal global [48 x i8] c"acosh(x)\0A\0AReturn the hyperbolic arccosine of x.\00", align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@c_asin_doc = internal global [35 x i8] c"asin(x)\0A\0AReturn the arc sine of x.\00", align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"asinh\00", align 1
@c_asinh_doc = internal global [47 x i8] c"asinh(x)\0A\0AReturn the hyperbolic arc sine of x.\00", align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@c_atan_doc = internal global [38 x i8] c"atan(x)\0A\0AReturn the arc tangent of x.\00", align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"atanh\00", align 1
@c_atanh_doc = internal global [50 x i8] c"atanh(x)\0A\0AReturn the hyperbolic arc tangent of x.\00", align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@c_cos_doc = internal global [32 x i8] c"cos(x)\0A\0AReturn the cosine of x.\00", align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@c_cosh_doc = internal global [44 x i8] c"cosh(x)\0A\0AReturn the hyperbolic cosine of x.\00", align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@c_exp_doc = internal global [43 x i8] c"exp(x)\0A\0AReturn the exponential value e**x.\00", align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"isfinite\00", align 1
@cmath_isfinite_doc = internal global [98 x i8] c"isfinite(z) -> bool\0AReturn True if both the real and imaginary parts of z are finite, else False.\00", align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"isinf\00", align 1
@cmath_isinf_doc = internal global [72 x i8] c"isinf(z) -> bool\0AChecks if the real or imaginary part of z is infinite.\00", align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"isnan\00", align 1
@cmath_isnan_doc = internal global [78 x i8] c"isnan(z) -> bool\0AChecks if the real or imaginary part of z not a number (NaN)\00", align 16
@.str.15 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@cmath_log_doc = internal global [128 x i8] c"log(x[, base]) -> the logarithm of x to the given base.\0AIf the base not specified, returns the natural logarithm (base e) of x.\00", align 16
@.str.16 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@c_log10_doc = internal global [45 x i8] c"log10(x)\0A\0AReturn the base-10 logarithm of x.\00", align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@cmath_phase_doc = internal global [81 x i8] c"phase(z) -> float\0A\0AReturn argument, also known as the phase angle, of a complex.\00", align 16
@.str.18 = private unnamed_addr constant [6 x i8] c"polar\00", align 1
@cmath_polar_doc = internal global [153 x i8] c"polar(z) -> r: float, phi: float\0A\0AConvert a complex from rectangular coordinates to polar coordinates. r is\0Athe distance from 0 and phi the phase angle.\00", align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@cmath_rect_doc = internal global [87 x i8] c"rect(r, phi) -> z: complex\0A\0AConvert from polar coordinates to rectangular coordinates.\00", align 16
@.str.20 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@c_sin_doc = internal global [30 x i8] c"sin(x)\0A\0AReturn the sine of x.\00", align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@c_sinh_doc = internal global [42 x i8] c"sinh(x)\0A\0AReturn the hyperbolic sine of x.\00", align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@c_sqrt_doc = internal global [38 x i8] c"sqrt(x)\0A\0AReturn the square root of x.\00", align 16
@.str.23 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@c_tan_doc = internal global [33 x i8] c"tan(x)\0A\0AReturn the tangent of x.\00", align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@c_tanh_doc = internal global [45 x i8] c"tanh(x)\0A\0AReturn the hyperbolic tangent of x.\00", align 16
@.str.25 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.26 = private unnamed_addr constant [18 x i8] c"math domain error\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"math range error\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"D:isfinite\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"D:isinf\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"D:isnan\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"D|D\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"D:phase\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"D:polar\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"dd:rect\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_cmath() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %p = alloca %struct.Py_complex*, align 8
  %p149 = alloca %struct.Py_complex*, align 8
  %p297 = alloca %struct.Py_complex*, align 8
  %p445 = alloca %struct.Py_complex*, align 8
  %p593 = alloca %struct.Py_complex*, align 8
  %p741 = alloca %struct.Py_complex*, align 8
  %p889 = alloca %struct.Py_complex*, align 8
  %p1037 = alloca %struct.Py_complex*, align 8
  %p1185 = alloca %struct.Py_complex*, align 8
  %p1333 = alloca %struct.Py_complex*, align 8
  %p1481 = alloca %struct.Py_complex*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @cmathmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyFloat_FromDouble(double 0x400921FB54442D18)
  %call2 = call i32 @PyModule_AddObject(%struct._object* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct._object* %call1)
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call3 = call %struct._object* @PyFloat_FromDouble(double 0x4005BF0A8B145769)
  %call4 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._object* %call3)
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @acos_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p, align 8
  %3 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %3, i32 0, i32 0
  store double 0x4002D97C7F3321D2, double* %real, align 8
  %4 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %4, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag, align 8
  %5 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr = getelementptr %struct.Py_complex, %struct.Py_complex* %5, i32 1
  store %struct.Py_complex* %incdec.ptr, %struct.Py_complex** %p, align 8
  %6 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %6, i32 0, i32 0
  store double 0x400921FB54442D18, double* %real5, align 8
  %7 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag6 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %7, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag6, align 8
  %8 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr7 = getelementptr %struct.Py_complex, %struct.Py_complex* %8, i32 1
  store %struct.Py_complex* %incdec.ptr7, %struct.Py_complex** %p, align 8
  %9 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real8 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %9, i32 0, i32 0
  store double 0x400921FB54442D18, double* %real8, align 8
  %10 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag9 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %10, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag9, align 8
  %11 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr10 = getelementptr %struct.Py_complex, %struct.Py_complex* %11, i32 1
  store %struct.Py_complex* %incdec.ptr10, %struct.Py_complex** %p, align 8
  %12 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real11 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %12, i32 0, i32 0
  store double 0x400921FB54442D18, double* %real11, align 8
  %13 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag12 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %13, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag12, align 8
  %14 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr13 = getelementptr %struct.Py_complex, %struct.Py_complex* %14, i32 1
  store %struct.Py_complex* %incdec.ptr13, %struct.Py_complex** %p, align 8
  %15 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real14 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %15, i32 0, i32 0
  store double 0x400921FB54442D18, double* %real14, align 8
  %16 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag15 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %16, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag15, align 8
  %17 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr16 = getelementptr %struct.Py_complex, %struct.Py_complex* %17, i32 1
  store %struct.Py_complex* %incdec.ptr16, %struct.Py_complex** %p, align 8
  %18 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real17 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %18, i32 0, i32 0
  store double 0x4002D97C7F3321D2, double* %real17, align 8
  %19 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag18 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %19, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag18, align 8
  %20 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr19 = getelementptr %struct.Py_complex, %struct.Py_complex* %20, i32 1
  store %struct.Py_complex* %incdec.ptr19, %struct.Py_complex** %p, align 8
  %21 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %21, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real20, align 8
  %22 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag21 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %22, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag21, align 8
  %23 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr22 = getelementptr %struct.Py_complex, %struct.Py_complex* %23, i32 1
  store %struct.Py_complex* %incdec.ptr22, %struct.Py_complex** %p, align 8
  %24 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real23 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %24, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real23, align 8
  %25 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag24 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %25, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag24, align 8
  %26 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr25 = getelementptr %struct.Py_complex, %struct.Py_complex* %26, i32 1
  store %struct.Py_complex* %incdec.ptr25, %struct.Py_complex** %p, align 8
  %27 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real26 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %27, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real26, align 8
  %28 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %28, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag27, align 8
  %29 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr28 = getelementptr %struct.Py_complex, %struct.Py_complex* %29, i32 1
  store %struct.Py_complex* %incdec.ptr28, %struct.Py_complex** %p, align 8
  %30 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real29 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %30, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real29, align 8
  %31 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag30 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %31, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag30, align 8
  %32 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr31 = getelementptr %struct.Py_complex, %struct.Py_complex* %32, i32 1
  store %struct.Py_complex* %incdec.ptr31, %struct.Py_complex** %p, align 8
  %33 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real32 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %33, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real32, align 8
  %34 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag33 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %34, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag33, align 8
  %35 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr34 = getelementptr %struct.Py_complex, %struct.Py_complex* %35, i32 1
  store %struct.Py_complex* %incdec.ptr34, %struct.Py_complex** %p, align 8
  %36 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %36, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real35, align 8
  %37 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag36 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %37, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag36, align 8
  %38 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr37 = getelementptr %struct.Py_complex, %struct.Py_complex* %38, i32 1
  store %struct.Py_complex* %incdec.ptr37, %struct.Py_complex** %p, align 8
  %39 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real38 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %39, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real38, align 8
  %40 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag39 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %40, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag39, align 8
  %41 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr40 = getelementptr %struct.Py_complex, %struct.Py_complex* %41, i32 1
  store %struct.Py_complex* %incdec.ptr40, %struct.Py_complex** %p, align 8
  %42 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real41 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %42, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real41, align 8
  %43 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag42 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %43, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag42, align 8
  %44 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr43 = getelementptr %struct.Py_complex, %struct.Py_complex* %44, i32 1
  store %struct.Py_complex* %incdec.ptr43, %struct.Py_complex** %p, align 8
  %45 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real44 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %45, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real44, align 8
  %46 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag45 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %46, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag45, align 8
  %47 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr46 = getelementptr %struct.Py_complex, %struct.Py_complex* %47, i32 1
  store %struct.Py_complex* %incdec.ptr46, %struct.Py_complex** %p, align 8
  %48 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real47 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %48, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real47, align 8
  %49 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag48 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %49, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag48, align 8
  %50 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr49 = getelementptr %struct.Py_complex, %struct.Py_complex* %50, i32 1
  store %struct.Py_complex* %incdec.ptr49, %struct.Py_complex** %p, align 8
  %51 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %51, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real50, align 8
  %52 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag51 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %52, i32 0, i32 1
  store double 0.000000e+00, double* %imag51, align 8
  %53 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr52 = getelementptr %struct.Py_complex, %struct.Py_complex* %53, i32 1
  store %struct.Py_complex* %incdec.ptr52, %struct.Py_complex** %p, align 8
  %54 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real53 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %54, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real53, align 8
  %55 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag54 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %55, i32 0, i32 1
  store double -0.000000e+00, double* %imag54, align 8
  %56 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr55 = getelementptr %struct.Py_complex, %struct.Py_complex* %56, i32 1
  store %struct.Py_complex* %incdec.ptr55, %struct.Py_complex** %p, align 8
  %57 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real56 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %57, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real56, align 8
  %58 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag57 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %58, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag57, align 8
  %59 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr58 = getelementptr %struct.Py_complex, %struct.Py_complex* %59, i32 1
  store %struct.Py_complex* %incdec.ptr58, %struct.Py_complex** %p, align 8
  %60 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real59 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %60, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real59, align 8
  %61 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag60 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %61, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag60, align 8
  %62 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr61 = getelementptr %struct.Py_complex, %struct.Py_complex* %62, i32 1
  store %struct.Py_complex* %incdec.ptr61, %struct.Py_complex** %p, align 8
  %63 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %63, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real62, align 8
  %64 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag63 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %64, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag63, align 8
  %65 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr64 = getelementptr %struct.Py_complex, %struct.Py_complex* %65, i32 1
  store %struct.Py_complex* %incdec.ptr64, %struct.Py_complex** %p, align 8
  %66 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %66, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real65, align 8
  %67 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag66 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %67, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag66, align 8
  %68 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr67 = getelementptr %struct.Py_complex, %struct.Py_complex* %68, i32 1
  store %struct.Py_complex* %incdec.ptr67, %struct.Py_complex** %p, align 8
  %69 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real68 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %69, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real68, align 8
  %70 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag69 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %70, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag69, align 8
  %71 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr70 = getelementptr %struct.Py_complex, %struct.Py_complex* %71, i32 1
  store %struct.Py_complex* %incdec.ptr70, %struct.Py_complex** %p, align 8
  %72 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real71 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %72, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real71, align 8
  %73 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag72 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %73, i32 0, i32 1
  store double 0.000000e+00, double* %imag72, align 8
  %74 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr73 = getelementptr %struct.Py_complex, %struct.Py_complex* %74, i32 1
  store %struct.Py_complex* %incdec.ptr73, %struct.Py_complex** %p, align 8
  %75 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real74 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %75, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real74, align 8
  %76 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag75 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %76, i32 0, i32 1
  store double -0.000000e+00, double* %imag75, align 8
  %77 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr76 = getelementptr %struct.Py_complex, %struct.Py_complex* %77, i32 1
  store %struct.Py_complex* %incdec.ptr76, %struct.Py_complex** %p, align 8
  %78 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real77 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %78, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real77, align 8
  %79 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag78 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %79, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag78, align 8
  %80 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr79 = getelementptr %struct.Py_complex, %struct.Py_complex* %80, i32 1
  store %struct.Py_complex* %incdec.ptr79, %struct.Py_complex** %p, align 8
  %81 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real80 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %81, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real80, align 8
  %82 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag81 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %82, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag81, align 8
  %83 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr82 = getelementptr %struct.Py_complex, %struct.Py_complex* %83, i32 1
  store %struct.Py_complex* %incdec.ptr82, %struct.Py_complex** %p, align 8
  %84 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real83 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %84, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real83, align 8
  %85 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag84 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %85, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag84, align 8
  %86 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr85 = getelementptr %struct.Py_complex, %struct.Py_complex* %86, i32 1
  store %struct.Py_complex* %incdec.ptr85, %struct.Py_complex** %p, align 8
  %87 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real86 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %87, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real86, align 8
  %88 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag87 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %88, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag87, align 8
  %89 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr88 = getelementptr %struct.Py_complex, %struct.Py_complex* %89, i32 1
  store %struct.Py_complex* %incdec.ptr88, %struct.Py_complex** %p, align 8
  %90 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real89 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %90, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real89, align 8
  %91 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag90 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %91, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag90, align 8
  %92 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr91 = getelementptr %struct.Py_complex, %struct.Py_complex* %92, i32 1
  store %struct.Py_complex* %incdec.ptr91, %struct.Py_complex** %p, align 8
  %93 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real92 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %93, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real92, align 8
  %94 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag93 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %94, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag93, align 8
  %95 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr94 = getelementptr %struct.Py_complex, %struct.Py_complex* %95, i32 1
  store %struct.Py_complex* %incdec.ptr94, %struct.Py_complex** %p, align 8
  %96 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real95 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %96, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real95, align 8
  %97 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag96 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %97, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag96, align 8
  %98 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr97 = getelementptr %struct.Py_complex, %struct.Py_complex* %98, i32 1
  store %struct.Py_complex* %incdec.ptr97, %struct.Py_complex** %p, align 8
  %99 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real98 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %99, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real98, align 8
  %100 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag99 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %100, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag99, align 8
  %101 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr100 = getelementptr %struct.Py_complex, %struct.Py_complex* %101, i32 1
  store %struct.Py_complex* %incdec.ptr100, %struct.Py_complex** %p, align 8
  %102 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real101 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %102, i32 0, i32 0
  store double 0x3FF921FB54442D18, double* %real101, align 8
  %103 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag102 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %103, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag102, align 8
  %104 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr103 = getelementptr %struct.Py_complex, %struct.Py_complex* %104, i32 1
  store %struct.Py_complex* %incdec.ptr103, %struct.Py_complex** %p, align 8
  %105 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real104 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %105, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real104, align 8
  %106 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag105 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %106, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag105, align 8
  %107 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr106 = getelementptr %struct.Py_complex, %struct.Py_complex* %107, i32 1
  store %struct.Py_complex* %incdec.ptr106, %struct.Py_complex** %p, align 8
  %108 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real107 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %108, i32 0, i32 0
  store double 0x3FE921FB54442D18, double* %real107, align 8
  %109 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag108 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %109, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag108, align 8
  %110 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr109 = getelementptr %struct.Py_complex, %struct.Py_complex* %110, i32 1
  store %struct.Py_complex* %incdec.ptr109, %struct.Py_complex** %p, align 8
  %111 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real110 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %111, i32 0, i32 0
  store double 0.000000e+00, double* %real110, align 8
  %112 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag111 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %112, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag111, align 8
  %113 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr112 = getelementptr %struct.Py_complex, %struct.Py_complex* %113, i32 1
  store %struct.Py_complex* %incdec.ptr112, %struct.Py_complex** %p, align 8
  %114 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real113 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %114, i32 0, i32 0
  store double 0.000000e+00, double* %real113, align 8
  %115 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag114 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %115, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag114, align 8
  %116 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr115 = getelementptr %struct.Py_complex, %struct.Py_complex* %116, i32 1
  store %struct.Py_complex* %incdec.ptr115, %struct.Py_complex** %p, align 8
  %117 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real116 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %117, i32 0, i32 0
  store double 0.000000e+00, double* %real116, align 8
  %118 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag117 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %118, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag117, align 8
  %119 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr118 = getelementptr %struct.Py_complex, %struct.Py_complex* %119, i32 1
  store %struct.Py_complex* %incdec.ptr118, %struct.Py_complex** %p, align 8
  %120 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real119 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %120, i32 0, i32 0
  store double 0.000000e+00, double* %real119, align 8
  %121 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag120 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %121, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag120, align 8
  %122 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr121 = getelementptr %struct.Py_complex, %struct.Py_complex* %122, i32 1
  store %struct.Py_complex* %incdec.ptr121, %struct.Py_complex** %p, align 8
  %123 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real122 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %123, i32 0, i32 0
  store double 0x3FE921FB54442D18, double* %real122, align 8
  %124 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag123 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %124, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag123, align 8
  %125 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr124 = getelementptr %struct.Py_complex, %struct.Py_complex* %125, i32 1
  store %struct.Py_complex* %incdec.ptr124, %struct.Py_complex** %p, align 8
  %126 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real125 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %126, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real125, align 8
  %127 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag126 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %127, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag126, align 8
  %128 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr127 = getelementptr %struct.Py_complex, %struct.Py_complex* %128, i32 1
  store %struct.Py_complex* %incdec.ptr127, %struct.Py_complex** %p, align 8
  %129 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real128 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %129, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real128, align 8
  %130 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag129 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %130, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag129, align 8
  %131 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr130 = getelementptr %struct.Py_complex, %struct.Py_complex* %131, i32 1
  store %struct.Py_complex* %incdec.ptr130, %struct.Py_complex** %p, align 8
  %132 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real131 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %132, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real131, align 8
  %133 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag132 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %133, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag132, align 8
  %134 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr133 = getelementptr %struct.Py_complex, %struct.Py_complex* %134, i32 1
  store %struct.Py_complex* %incdec.ptr133, %struct.Py_complex** %p, align 8
  %135 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real134 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %135, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real134, align 8
  %136 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag135 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %136, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag135, align 8
  %137 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr136 = getelementptr %struct.Py_complex, %struct.Py_complex* %137, i32 1
  store %struct.Py_complex* %incdec.ptr136, %struct.Py_complex** %p, align 8
  %138 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real137 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %138, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real137, align 8
  %139 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag138 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %139, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag138, align 8
  %140 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr139 = getelementptr %struct.Py_complex, %struct.Py_complex* %140, i32 1
  store %struct.Py_complex* %incdec.ptr139, %struct.Py_complex** %p, align 8
  %141 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real140 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %141, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real140, align 8
  %142 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag141 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %142, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag141, align 8
  %143 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr142 = getelementptr %struct.Py_complex, %struct.Py_complex* %143, i32 1
  store %struct.Py_complex* %incdec.ptr142, %struct.Py_complex** %p, align 8
  %144 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real143 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %144, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real143, align 8
  %145 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag144 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %145, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag144, align 8
  %146 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr145 = getelementptr %struct.Py_complex, %struct.Py_complex* %146, i32 1
  store %struct.Py_complex* %incdec.ptr145, %struct.Py_complex** %p, align 8
  %147 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %real146 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %147, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real146, align 8
  %148 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %imag147 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %148, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag147, align 8
  %149 = load %struct.Py_complex*, %struct.Py_complex** %p, align 8
  %incdec.ptr148 = getelementptr %struct.Py_complex, %struct.Py_complex* %149, i32 1
  store %struct.Py_complex* %incdec.ptr148, %struct.Py_complex** %p, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @acosh_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p149, align 8
  %150 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real150 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %150, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real150, align 8
  %151 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag151 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %151, i32 0, i32 1
  store double 0xC002D97C7F3321D2, double* %imag151, align 8
  %152 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr152 = getelementptr %struct.Py_complex, %struct.Py_complex* %152, i32 1
  store %struct.Py_complex* %incdec.ptr152, %struct.Py_complex** %p149, align 8
  %153 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real153 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %153, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real153, align 8
  %154 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag154 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %154, i32 0, i32 1
  store double 0xC00921FB54442D18, double* %imag154, align 8
  %155 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr155 = getelementptr %struct.Py_complex, %struct.Py_complex* %155, i32 1
  store %struct.Py_complex* %incdec.ptr155, %struct.Py_complex** %p149, align 8
  %156 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real156 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %156, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real156, align 8
  %157 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag157 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %157, i32 0, i32 1
  store double 0xC00921FB54442D18, double* %imag157, align 8
  %158 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr158 = getelementptr %struct.Py_complex, %struct.Py_complex* %158, i32 1
  store %struct.Py_complex* %incdec.ptr158, %struct.Py_complex** %p149, align 8
  %159 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real159 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %159, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real159, align 8
  %160 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag160 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %160, i32 0, i32 1
  store double 0x400921FB54442D18, double* %imag160, align 8
  %161 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr161 = getelementptr %struct.Py_complex, %struct.Py_complex* %161, i32 1
  store %struct.Py_complex* %incdec.ptr161, %struct.Py_complex** %p149, align 8
  %162 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real162 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %162, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real162, align 8
  %163 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag163 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %163, i32 0, i32 1
  store double 0x400921FB54442D18, double* %imag163, align 8
  %164 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr164 = getelementptr %struct.Py_complex, %struct.Py_complex* %164, i32 1
  store %struct.Py_complex* %incdec.ptr164, %struct.Py_complex** %p149, align 8
  %165 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real165 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %165, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real165, align 8
  %166 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag166 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %166, i32 0, i32 1
  store double 0x4002D97C7F3321D2, double* %imag166, align 8
  %167 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr167 = getelementptr %struct.Py_complex, %struct.Py_complex* %167, i32 1
  store %struct.Py_complex* %incdec.ptr167, %struct.Py_complex** %p149, align 8
  %168 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real168 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %168, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real168, align 8
  %169 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag169 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %169, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag169, align 8
  %170 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr170 = getelementptr %struct.Py_complex, %struct.Py_complex* %170, i32 1
  store %struct.Py_complex* %incdec.ptr170, %struct.Py_complex** %p149, align 8
  %171 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real171 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %171, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real171, align 8
  %172 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag172 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %172, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag172, align 8
  %173 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr173 = getelementptr %struct.Py_complex, %struct.Py_complex* %173, i32 1
  store %struct.Py_complex* %incdec.ptr173, %struct.Py_complex** %p149, align 8
  %174 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real174 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %174, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real174, align 8
  %175 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag175 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %175, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag175, align 8
  %176 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr176 = getelementptr %struct.Py_complex, %struct.Py_complex* %176, i32 1
  store %struct.Py_complex* %incdec.ptr176, %struct.Py_complex** %p149, align 8
  %177 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real177 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %177, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real177, align 8
  %178 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag178 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %178, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag178, align 8
  %179 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr179 = getelementptr %struct.Py_complex, %struct.Py_complex* %179, i32 1
  store %struct.Py_complex* %incdec.ptr179, %struct.Py_complex** %p149, align 8
  %180 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real180 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %180, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real180, align 8
  %181 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag181 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %181, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag181, align 8
  %182 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr182 = getelementptr %struct.Py_complex, %struct.Py_complex* %182, i32 1
  store %struct.Py_complex* %incdec.ptr182, %struct.Py_complex** %p149, align 8
  %183 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real183 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %183, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real183, align 8
  %184 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag184 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %184, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag184, align 8
  %185 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr185 = getelementptr %struct.Py_complex, %struct.Py_complex* %185, i32 1
  store %struct.Py_complex* %incdec.ptr185, %struct.Py_complex** %p149, align 8
  %186 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real186 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %186, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real186, align 8
  %187 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag187 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %187, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag187, align 8
  %188 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr188 = getelementptr %struct.Py_complex, %struct.Py_complex* %188, i32 1
  store %struct.Py_complex* %incdec.ptr188, %struct.Py_complex** %p149, align 8
  %189 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real189 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %189, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real189, align 8
  %190 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag190 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %190, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag190, align 8
  %191 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr191 = getelementptr %struct.Py_complex, %struct.Py_complex* %191, i32 1
  store %struct.Py_complex* %incdec.ptr191, %struct.Py_complex** %p149, align 8
  %192 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real192 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %192, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real192, align 8
  %193 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag193 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %193, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag193, align 8
  %194 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr194 = getelementptr %struct.Py_complex, %struct.Py_complex* %194, i32 1
  store %struct.Py_complex* %incdec.ptr194, %struct.Py_complex** %p149, align 8
  %195 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real195 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %195, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real195, align 8
  %196 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag196 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %196, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag196, align 8
  %197 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr197 = getelementptr %struct.Py_complex, %struct.Py_complex* %197, i32 1
  store %struct.Py_complex* %incdec.ptr197, %struct.Py_complex** %p149, align 8
  %198 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real198 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %198, i32 0, i32 0
  store double 0.000000e+00, double* %real198, align 8
  %199 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag199 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %199, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag199, align 8
  %200 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr200 = getelementptr %struct.Py_complex, %struct.Py_complex* %200, i32 1
  store %struct.Py_complex* %incdec.ptr200, %struct.Py_complex** %p149, align 8
  %201 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real201 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %201, i32 0, i32 0
  store double 0.000000e+00, double* %real201, align 8
  %202 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag202 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %202, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag202, align 8
  %203 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr203 = getelementptr %struct.Py_complex, %struct.Py_complex* %203, i32 1
  store %struct.Py_complex* %incdec.ptr203, %struct.Py_complex** %p149, align 8
  %204 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real204 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %204, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real204, align 8
  %205 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag205 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %205, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag205, align 8
  %206 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr206 = getelementptr %struct.Py_complex, %struct.Py_complex* %206, i32 1
  store %struct.Py_complex* %incdec.ptr206, %struct.Py_complex** %p149, align 8
  %207 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real207 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %207, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real207, align 8
  %208 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag208 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %208, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag208, align 8
  %209 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr209 = getelementptr %struct.Py_complex, %struct.Py_complex* %209, i32 1
  store %struct.Py_complex* %incdec.ptr209, %struct.Py_complex** %p149, align 8
  %210 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real210 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %210, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real210, align 8
  %211 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag211 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %211, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag211, align 8
  %212 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr212 = getelementptr %struct.Py_complex, %struct.Py_complex* %212, i32 1
  store %struct.Py_complex* %incdec.ptr212, %struct.Py_complex** %p149, align 8
  %213 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real213 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %213, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real213, align 8
  %214 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag214 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %214, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag214, align 8
  %215 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr215 = getelementptr %struct.Py_complex, %struct.Py_complex* %215, i32 1
  store %struct.Py_complex* %incdec.ptr215, %struct.Py_complex** %p149, align 8
  %216 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real216 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %216, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real216, align 8
  %217 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag217 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %217, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag217, align 8
  %218 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr218 = getelementptr %struct.Py_complex, %struct.Py_complex* %218, i32 1
  store %struct.Py_complex* %incdec.ptr218, %struct.Py_complex** %p149, align 8
  %219 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real219 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %219, i32 0, i32 0
  store double 0.000000e+00, double* %real219, align 8
  %220 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag220 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %220, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag220, align 8
  %221 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr221 = getelementptr %struct.Py_complex, %struct.Py_complex* %221, i32 1
  store %struct.Py_complex* %incdec.ptr221, %struct.Py_complex** %p149, align 8
  %222 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real222 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %222, i32 0, i32 0
  store double 0.000000e+00, double* %real222, align 8
  %223 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag223 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %223, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag223, align 8
  %224 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr224 = getelementptr %struct.Py_complex, %struct.Py_complex* %224, i32 1
  store %struct.Py_complex* %incdec.ptr224, %struct.Py_complex** %p149, align 8
  %225 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real225 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %225, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real225, align 8
  %226 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag226 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %226, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag226, align 8
  %227 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr227 = getelementptr %struct.Py_complex, %struct.Py_complex* %227, i32 1
  store %struct.Py_complex* %incdec.ptr227, %struct.Py_complex** %p149, align 8
  %228 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real228 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %228, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real228, align 8
  %229 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag229 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %229, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag229, align 8
  %230 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr230 = getelementptr %struct.Py_complex, %struct.Py_complex* %230, i32 1
  store %struct.Py_complex* %incdec.ptr230, %struct.Py_complex** %p149, align 8
  %231 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real231 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %231, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real231, align 8
  %232 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag232 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %232, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag232, align 8
  %233 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr233 = getelementptr %struct.Py_complex, %struct.Py_complex* %233, i32 1
  store %struct.Py_complex* %incdec.ptr233, %struct.Py_complex** %p149, align 8
  %234 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real234 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %234, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real234, align 8
  %235 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag235 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %235, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag235, align 8
  %236 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr236 = getelementptr %struct.Py_complex, %struct.Py_complex* %236, i32 1
  store %struct.Py_complex* %incdec.ptr236, %struct.Py_complex** %p149, align 8
  %237 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real237 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %237, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real237, align 8
  %238 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag238 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %238, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag238, align 8
  %239 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr239 = getelementptr %struct.Py_complex, %struct.Py_complex* %239, i32 1
  store %struct.Py_complex* %incdec.ptr239, %struct.Py_complex** %p149, align 8
  %240 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real240 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %240, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real240, align 8
  %241 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag241 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %241, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag241, align 8
  %242 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr242 = getelementptr %struct.Py_complex, %struct.Py_complex* %242, i32 1
  store %struct.Py_complex* %incdec.ptr242, %struct.Py_complex** %p149, align 8
  %243 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real243 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %243, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real243, align 8
  %244 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag244 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %244, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag244, align 8
  %245 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr245 = getelementptr %struct.Py_complex, %struct.Py_complex* %245, i32 1
  store %struct.Py_complex* %incdec.ptr245, %struct.Py_complex** %p149, align 8
  %246 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real246 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %246, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real246, align 8
  %247 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag247 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %247, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag247, align 8
  %248 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr248 = getelementptr %struct.Py_complex, %struct.Py_complex* %248, i32 1
  store %struct.Py_complex* %incdec.ptr248, %struct.Py_complex** %p149, align 8
  %249 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real249 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %249, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real249, align 8
  %250 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag250 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %250, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag250, align 8
  %251 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr251 = getelementptr %struct.Py_complex, %struct.Py_complex* %251, i32 1
  store %struct.Py_complex* %incdec.ptr251, %struct.Py_complex** %p149, align 8
  %252 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real252 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %252, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real252, align 8
  %253 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag253 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %253, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag253, align 8
  %254 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr254 = getelementptr %struct.Py_complex, %struct.Py_complex* %254, i32 1
  store %struct.Py_complex* %incdec.ptr254, %struct.Py_complex** %p149, align 8
  %255 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real255 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %255, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real255, align 8
  %256 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag256 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %256, i32 0, i32 1
  store double 0xBFE921FB54442D18, double* %imag256, align 8
  %257 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr257 = getelementptr %struct.Py_complex, %struct.Py_complex* %257, i32 1
  store %struct.Py_complex* %incdec.ptr257, %struct.Py_complex** %p149, align 8
  %258 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real258 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %258, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real258, align 8
  %259 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag259 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %259, i32 0, i32 1
  store double -0.000000e+00, double* %imag259, align 8
  %260 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr260 = getelementptr %struct.Py_complex, %struct.Py_complex* %260, i32 1
  store %struct.Py_complex* %incdec.ptr260, %struct.Py_complex** %p149, align 8
  %261 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real261 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %261, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real261, align 8
  %262 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag262 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %262, i32 0, i32 1
  store double -0.000000e+00, double* %imag262, align 8
  %263 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr263 = getelementptr %struct.Py_complex, %struct.Py_complex* %263, i32 1
  store %struct.Py_complex* %incdec.ptr263, %struct.Py_complex** %p149, align 8
  %264 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real264 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %264, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real264, align 8
  %265 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag265 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %265, i32 0, i32 1
  store double 0.000000e+00, double* %imag265, align 8
  %266 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr266 = getelementptr %struct.Py_complex, %struct.Py_complex* %266, i32 1
  store %struct.Py_complex* %incdec.ptr266, %struct.Py_complex** %p149, align 8
  %267 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real267 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %267, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real267, align 8
  %268 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag268 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %268, i32 0, i32 1
  store double 0.000000e+00, double* %imag268, align 8
  %269 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr269 = getelementptr %struct.Py_complex, %struct.Py_complex* %269, i32 1
  store %struct.Py_complex* %incdec.ptr269, %struct.Py_complex** %p149, align 8
  %270 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real270 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %270, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real270, align 8
  %271 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag271 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %271, i32 0, i32 1
  store double 0x3FE921FB54442D18, double* %imag271, align 8
  %272 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr272 = getelementptr %struct.Py_complex, %struct.Py_complex* %272, i32 1
  store %struct.Py_complex* %incdec.ptr272, %struct.Py_complex** %p149, align 8
  %273 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real273 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %273, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real273, align 8
  %274 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag274 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %274, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag274, align 8
  %275 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr275 = getelementptr %struct.Py_complex, %struct.Py_complex* %275, i32 1
  store %struct.Py_complex* %incdec.ptr275, %struct.Py_complex** %p149, align 8
  %276 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real276 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %276, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real276, align 8
  %277 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag277 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %277, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag277, align 8
  %278 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr278 = getelementptr %struct.Py_complex, %struct.Py_complex* %278, i32 1
  store %struct.Py_complex* %incdec.ptr278, %struct.Py_complex** %p149, align 8
  %279 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real279 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %279, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real279, align 8
  %280 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag280 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %280, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag280, align 8
  %281 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr281 = getelementptr %struct.Py_complex, %struct.Py_complex* %281, i32 1
  store %struct.Py_complex* %incdec.ptr281, %struct.Py_complex** %p149, align 8
  %282 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real282 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %282, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real282, align 8
  %283 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag283 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %283, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag283, align 8
  %284 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr284 = getelementptr %struct.Py_complex, %struct.Py_complex* %284, i32 1
  store %struct.Py_complex* %incdec.ptr284, %struct.Py_complex** %p149, align 8
  %285 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real285 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %285, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real285, align 8
  %286 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag286 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %286, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag286, align 8
  %287 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr287 = getelementptr %struct.Py_complex, %struct.Py_complex* %287, i32 1
  store %struct.Py_complex* %incdec.ptr287, %struct.Py_complex** %p149, align 8
  %288 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real288 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %288, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real288, align 8
  %289 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag289 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %289, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag289, align 8
  %290 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr290 = getelementptr %struct.Py_complex, %struct.Py_complex* %290, i32 1
  store %struct.Py_complex* %incdec.ptr290, %struct.Py_complex** %p149, align 8
  %291 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real291 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %291, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real291, align 8
  %292 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag292 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %292, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag292, align 8
  %293 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr293 = getelementptr %struct.Py_complex, %struct.Py_complex* %293, i32 1
  store %struct.Py_complex* %incdec.ptr293, %struct.Py_complex** %p149, align 8
  %294 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %real294 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %294, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real294, align 8
  %295 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %imag295 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %295, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag295, align 8
  %296 = load %struct.Py_complex*, %struct.Py_complex** %p149, align 8
  %incdec.ptr296 = getelementptr %struct.Py_complex, %struct.Py_complex* %296, i32 1
  store %struct.Py_complex* %incdec.ptr296, %struct.Py_complex** %p149, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @asinh_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p297, align 8
  %297 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real298 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %297, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real298, align 8
  %298 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag299 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %298, i32 0, i32 1
  store double 0xBFE921FB54442D18, double* %imag299, align 8
  %299 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr300 = getelementptr %struct.Py_complex, %struct.Py_complex* %299, i32 1
  store %struct.Py_complex* %incdec.ptr300, %struct.Py_complex** %p297, align 8
  %300 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real301 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %300, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real301, align 8
  %301 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag302 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %301, i32 0, i32 1
  store double -0.000000e+00, double* %imag302, align 8
  %302 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr303 = getelementptr %struct.Py_complex, %struct.Py_complex* %302, i32 1
  store %struct.Py_complex* %incdec.ptr303, %struct.Py_complex** %p297, align 8
  %303 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real304 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %303, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real304, align 8
  %304 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag305 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %304, i32 0, i32 1
  store double -0.000000e+00, double* %imag305, align 8
  %305 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr306 = getelementptr %struct.Py_complex, %struct.Py_complex* %305, i32 1
  store %struct.Py_complex* %incdec.ptr306, %struct.Py_complex** %p297, align 8
  %306 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real307 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %306, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real307, align 8
  %307 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag308 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %307, i32 0, i32 1
  store double 0.000000e+00, double* %imag308, align 8
  %308 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr309 = getelementptr %struct.Py_complex, %struct.Py_complex* %308, i32 1
  store %struct.Py_complex* %incdec.ptr309, %struct.Py_complex** %p297, align 8
  %309 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real310 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %309, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real310, align 8
  %310 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag311 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %310, i32 0, i32 1
  store double 0.000000e+00, double* %imag311, align 8
  %311 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr312 = getelementptr %struct.Py_complex, %struct.Py_complex* %311, i32 1
  store %struct.Py_complex* %incdec.ptr312, %struct.Py_complex** %p297, align 8
  %312 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real313 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %312, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real313, align 8
  %313 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag314 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %313, i32 0, i32 1
  store double 0x3FE921FB54442D18, double* %imag314, align 8
  %314 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr315 = getelementptr %struct.Py_complex, %struct.Py_complex* %314, i32 1
  store %struct.Py_complex* %incdec.ptr315, %struct.Py_complex** %p297, align 8
  %315 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real316 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %315, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real316, align 8
  %316 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag317 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %316, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag317, align 8
  %317 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr318 = getelementptr %struct.Py_complex, %struct.Py_complex* %317, i32 1
  store %struct.Py_complex* %incdec.ptr318, %struct.Py_complex** %p297, align 8
  %318 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real319 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %318, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real319, align 8
  %319 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag320 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %319, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag320, align 8
  %320 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr321 = getelementptr %struct.Py_complex, %struct.Py_complex* %320, i32 1
  store %struct.Py_complex* %incdec.ptr321, %struct.Py_complex** %p297, align 8
  %321 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real322 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %321, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real322, align 8
  %322 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag323 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %322, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag323, align 8
  %323 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr324 = getelementptr %struct.Py_complex, %struct.Py_complex* %323, i32 1
  store %struct.Py_complex* %incdec.ptr324, %struct.Py_complex** %p297, align 8
  %324 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real325 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %324, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real325, align 8
  %325 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag326 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %325, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag326, align 8
  %326 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr327 = getelementptr %struct.Py_complex, %struct.Py_complex* %326, i32 1
  store %struct.Py_complex* %incdec.ptr327, %struct.Py_complex** %p297, align 8
  %327 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real328 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %327, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real328, align 8
  %328 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag329 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %328, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag329, align 8
  %329 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr330 = getelementptr %struct.Py_complex, %struct.Py_complex* %329, i32 1
  store %struct.Py_complex* %incdec.ptr330, %struct.Py_complex** %p297, align 8
  %330 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real331 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %330, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real331, align 8
  %331 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag332 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %331, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag332, align 8
  %332 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr333 = getelementptr %struct.Py_complex, %struct.Py_complex* %332, i32 1
  store %struct.Py_complex* %incdec.ptr333, %struct.Py_complex** %p297, align 8
  %333 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real334 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %333, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real334, align 8
  %334 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag335 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %334, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag335, align 8
  %335 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr336 = getelementptr %struct.Py_complex, %struct.Py_complex* %335, i32 1
  store %struct.Py_complex* %incdec.ptr336, %struct.Py_complex** %p297, align 8
  %336 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real337 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %336, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real337, align 8
  %337 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag338 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %337, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag338, align 8
  %338 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr339 = getelementptr %struct.Py_complex, %struct.Py_complex* %338, i32 1
  store %struct.Py_complex* %incdec.ptr339, %struct.Py_complex** %p297, align 8
  %339 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real340 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %339, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real340, align 8
  %340 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag341 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %340, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag341, align 8
  %341 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr342 = getelementptr %struct.Py_complex, %struct.Py_complex* %341, i32 1
  store %struct.Py_complex* %incdec.ptr342, %struct.Py_complex** %p297, align 8
  %342 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real343 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %342, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real343, align 8
  %343 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag344 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %343, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag344, align 8
  %344 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr345 = getelementptr %struct.Py_complex, %struct.Py_complex* %344, i32 1
  store %struct.Py_complex* %incdec.ptr345, %struct.Py_complex** %p297, align 8
  %345 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real346 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %345, i32 0, i32 0
  store double -0.000000e+00, double* %real346, align 8
  %346 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag347 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %346, i32 0, i32 1
  store double -0.000000e+00, double* %imag347, align 8
  %347 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr348 = getelementptr %struct.Py_complex, %struct.Py_complex* %347, i32 1
  store %struct.Py_complex* %incdec.ptr348, %struct.Py_complex** %p297, align 8
  %348 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real349 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %348, i32 0, i32 0
  store double -0.000000e+00, double* %real349, align 8
  %349 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag350 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %349, i32 0, i32 1
  store double 0.000000e+00, double* %imag350, align 8
  %350 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr351 = getelementptr %struct.Py_complex, %struct.Py_complex* %350, i32 1
  store %struct.Py_complex* %incdec.ptr351, %struct.Py_complex** %p297, align 8
  %351 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real352 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %351, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real352, align 8
  %352 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag353 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %352, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag353, align 8
  %353 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr354 = getelementptr %struct.Py_complex, %struct.Py_complex* %353, i32 1
  store %struct.Py_complex* %incdec.ptr354, %struct.Py_complex** %p297, align 8
  %354 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real355 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %354, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real355, align 8
  %355 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag356 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %355, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag356, align 8
  %356 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr357 = getelementptr %struct.Py_complex, %struct.Py_complex* %356, i32 1
  store %struct.Py_complex* %incdec.ptr357, %struct.Py_complex** %p297, align 8
  %357 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real358 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %357, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real358, align 8
  %358 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag359 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %358, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag359, align 8
  %359 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr360 = getelementptr %struct.Py_complex, %struct.Py_complex* %359, i32 1
  store %struct.Py_complex* %incdec.ptr360, %struct.Py_complex** %p297, align 8
  %360 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real361 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %360, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real361, align 8
  %361 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag362 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %361, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag362, align 8
  %362 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr363 = getelementptr %struct.Py_complex, %struct.Py_complex* %362, i32 1
  store %struct.Py_complex* %incdec.ptr363, %struct.Py_complex** %p297, align 8
  %363 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real364 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %363, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real364, align 8
  %364 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag365 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %364, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag365, align 8
  %365 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr366 = getelementptr %struct.Py_complex, %struct.Py_complex* %365, i32 1
  store %struct.Py_complex* %incdec.ptr366, %struct.Py_complex** %p297, align 8
  %366 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real367 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %366, i32 0, i32 0
  store double 0.000000e+00, double* %real367, align 8
  %367 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag368 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %367, i32 0, i32 1
  store double -0.000000e+00, double* %imag368, align 8
  %368 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr369 = getelementptr %struct.Py_complex, %struct.Py_complex* %368, i32 1
  store %struct.Py_complex* %incdec.ptr369, %struct.Py_complex** %p297, align 8
  %369 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real370 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %369, i32 0, i32 0
  store double 0.000000e+00, double* %real370, align 8
  %370 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag371 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %370, i32 0, i32 1
  store double 0.000000e+00, double* %imag371, align 8
  %371 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr372 = getelementptr %struct.Py_complex, %struct.Py_complex* %371, i32 1
  store %struct.Py_complex* %incdec.ptr372, %struct.Py_complex** %p297, align 8
  %372 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real373 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %372, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real373, align 8
  %373 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag374 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %373, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag374, align 8
  %374 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr375 = getelementptr %struct.Py_complex, %struct.Py_complex* %374, i32 1
  store %struct.Py_complex* %incdec.ptr375, %struct.Py_complex** %p297, align 8
  %375 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real376 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %375, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real376, align 8
  %376 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag377 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %376, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag377, align 8
  %377 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr378 = getelementptr %struct.Py_complex, %struct.Py_complex* %377, i32 1
  store %struct.Py_complex* %incdec.ptr378, %struct.Py_complex** %p297, align 8
  %378 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real379 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %378, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real379, align 8
  %379 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag380 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %379, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag380, align 8
  %380 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr381 = getelementptr %struct.Py_complex, %struct.Py_complex* %380, i32 1
  store %struct.Py_complex* %incdec.ptr381, %struct.Py_complex** %p297, align 8
  %381 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real382 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %381, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real382, align 8
  %382 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag383 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %382, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag383, align 8
  %383 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr384 = getelementptr %struct.Py_complex, %struct.Py_complex* %383, i32 1
  store %struct.Py_complex* %incdec.ptr384, %struct.Py_complex** %p297, align 8
  %384 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real385 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %384, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real385, align 8
  %385 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag386 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %385, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag386, align 8
  %386 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr387 = getelementptr %struct.Py_complex, %struct.Py_complex* %386, i32 1
  store %struct.Py_complex* %incdec.ptr387, %struct.Py_complex** %p297, align 8
  %387 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real388 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %387, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real388, align 8
  %388 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag389 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %388, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag389, align 8
  %389 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr390 = getelementptr %struct.Py_complex, %struct.Py_complex* %389, i32 1
  store %struct.Py_complex* %incdec.ptr390, %struct.Py_complex** %p297, align 8
  %390 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real391 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %390, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real391, align 8
  %391 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag392 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %391, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag392, align 8
  %392 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr393 = getelementptr %struct.Py_complex, %struct.Py_complex* %392, i32 1
  store %struct.Py_complex* %incdec.ptr393, %struct.Py_complex** %p297, align 8
  %393 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real394 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %393, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real394, align 8
  %394 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag395 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %394, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag395, align 8
  %395 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr396 = getelementptr %struct.Py_complex, %struct.Py_complex* %395, i32 1
  store %struct.Py_complex* %incdec.ptr396, %struct.Py_complex** %p297, align 8
  %396 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real397 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %396, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real397, align 8
  %397 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag398 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %397, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag398, align 8
  %398 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr399 = getelementptr %struct.Py_complex, %struct.Py_complex* %398, i32 1
  store %struct.Py_complex* %incdec.ptr399, %struct.Py_complex** %p297, align 8
  %399 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real400 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %399, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real400, align 8
  %400 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag401 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %400, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag401, align 8
  %401 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr402 = getelementptr %struct.Py_complex, %struct.Py_complex* %401, i32 1
  store %struct.Py_complex* %incdec.ptr402, %struct.Py_complex** %p297, align 8
  %402 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real403 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %402, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real403, align 8
  %403 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag404 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %403, i32 0, i32 1
  store double 0xBFE921FB54442D18, double* %imag404, align 8
  %404 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr405 = getelementptr %struct.Py_complex, %struct.Py_complex* %404, i32 1
  store %struct.Py_complex* %incdec.ptr405, %struct.Py_complex** %p297, align 8
  %405 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real406 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %405, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real406, align 8
  %406 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag407 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %406, i32 0, i32 1
  store double -0.000000e+00, double* %imag407, align 8
  %407 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr408 = getelementptr %struct.Py_complex, %struct.Py_complex* %407, i32 1
  store %struct.Py_complex* %incdec.ptr408, %struct.Py_complex** %p297, align 8
  %408 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real409 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %408, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real409, align 8
  %409 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag410 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %409, i32 0, i32 1
  store double -0.000000e+00, double* %imag410, align 8
  %410 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr411 = getelementptr %struct.Py_complex, %struct.Py_complex* %410, i32 1
  store %struct.Py_complex* %incdec.ptr411, %struct.Py_complex** %p297, align 8
  %411 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real412 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %411, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real412, align 8
  %412 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag413 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %412, i32 0, i32 1
  store double 0.000000e+00, double* %imag413, align 8
  %413 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr414 = getelementptr %struct.Py_complex, %struct.Py_complex* %413, i32 1
  store %struct.Py_complex* %incdec.ptr414, %struct.Py_complex** %p297, align 8
  %414 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real415 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %414, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real415, align 8
  %415 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag416 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %415, i32 0, i32 1
  store double 0.000000e+00, double* %imag416, align 8
  %416 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr417 = getelementptr %struct.Py_complex, %struct.Py_complex* %416, i32 1
  store %struct.Py_complex* %incdec.ptr417, %struct.Py_complex** %p297, align 8
  %417 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real418 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %417, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real418, align 8
  %418 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag419 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %418, i32 0, i32 1
  store double 0x3FE921FB54442D18, double* %imag419, align 8
  %419 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr420 = getelementptr %struct.Py_complex, %struct.Py_complex* %419, i32 1
  store %struct.Py_complex* %incdec.ptr420, %struct.Py_complex** %p297, align 8
  %420 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real421 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %420, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real421, align 8
  %421 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag422 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %421, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag422, align 8
  %422 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr423 = getelementptr %struct.Py_complex, %struct.Py_complex* %422, i32 1
  store %struct.Py_complex* %incdec.ptr423, %struct.Py_complex** %p297, align 8
  %423 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real424 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %423, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real424, align 8
  %424 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag425 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %424, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag425, align 8
  %425 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr426 = getelementptr %struct.Py_complex, %struct.Py_complex* %425, i32 1
  store %struct.Py_complex* %incdec.ptr426, %struct.Py_complex** %p297, align 8
  %426 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real427 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %426, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real427, align 8
  %427 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag428 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %427, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag428, align 8
  %428 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr429 = getelementptr %struct.Py_complex, %struct.Py_complex* %428, i32 1
  store %struct.Py_complex* %incdec.ptr429, %struct.Py_complex** %p297, align 8
  %429 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real430 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %429, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real430, align 8
  %430 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag431 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %430, i32 0, i32 1
  store double -0.000000e+00, double* %imag431, align 8
  %431 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr432 = getelementptr %struct.Py_complex, %struct.Py_complex* %431, i32 1
  store %struct.Py_complex* %incdec.ptr432, %struct.Py_complex** %p297, align 8
  %432 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real433 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %432, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real433, align 8
  %433 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag434 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %433, i32 0, i32 1
  store double 0.000000e+00, double* %imag434, align 8
  %434 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr435 = getelementptr %struct.Py_complex, %struct.Py_complex* %434, i32 1
  store %struct.Py_complex* %incdec.ptr435, %struct.Py_complex** %p297, align 8
  %435 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real436 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %435, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real436, align 8
  %436 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag437 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %436, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag437, align 8
  %437 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr438 = getelementptr %struct.Py_complex, %struct.Py_complex* %437, i32 1
  store %struct.Py_complex* %incdec.ptr438, %struct.Py_complex** %p297, align 8
  %438 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real439 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %438, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real439, align 8
  %439 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag440 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %439, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag440, align 8
  %440 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr441 = getelementptr %struct.Py_complex, %struct.Py_complex* %440, i32 1
  store %struct.Py_complex* %incdec.ptr441, %struct.Py_complex** %p297, align 8
  %441 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %real442 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %441, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real442, align 8
  %442 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %imag443 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %442, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag443, align 8
  %443 = load %struct.Py_complex*, %struct.Py_complex** %p297, align 8
  %incdec.ptr444 = getelementptr %struct.Py_complex, %struct.Py_complex* %443, i32 1
  store %struct.Py_complex* %incdec.ptr444, %struct.Py_complex** %p297, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @atanh_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p445, align 8
  %444 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real446 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %444, i32 0, i32 0
  store double -0.000000e+00, double* %real446, align 8
  %445 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag447 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %445, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag447, align 8
  %446 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr448 = getelementptr %struct.Py_complex, %struct.Py_complex* %446, i32 1
  store %struct.Py_complex* %incdec.ptr448, %struct.Py_complex** %p445, align 8
  %447 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real449 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %447, i32 0, i32 0
  store double -0.000000e+00, double* %real449, align 8
  %448 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag450 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %448, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag450, align 8
  %449 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr451 = getelementptr %struct.Py_complex, %struct.Py_complex* %449, i32 1
  store %struct.Py_complex* %incdec.ptr451, %struct.Py_complex** %p445, align 8
  %450 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real452 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %450, i32 0, i32 0
  store double -0.000000e+00, double* %real452, align 8
  %451 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag453 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %451, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag453, align 8
  %452 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr454 = getelementptr %struct.Py_complex, %struct.Py_complex* %452, i32 1
  store %struct.Py_complex* %incdec.ptr454, %struct.Py_complex** %p445, align 8
  %453 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real455 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %453, i32 0, i32 0
  store double -0.000000e+00, double* %real455, align 8
  %454 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag456 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %454, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag456, align 8
  %455 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr457 = getelementptr %struct.Py_complex, %struct.Py_complex* %455, i32 1
  store %struct.Py_complex* %incdec.ptr457, %struct.Py_complex** %p445, align 8
  %456 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real458 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %456, i32 0, i32 0
  store double -0.000000e+00, double* %real458, align 8
  %457 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag459 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %457, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag459, align 8
  %458 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr460 = getelementptr %struct.Py_complex, %struct.Py_complex* %458, i32 1
  store %struct.Py_complex* %incdec.ptr460, %struct.Py_complex** %p445, align 8
  %459 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real461 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %459, i32 0, i32 0
  store double -0.000000e+00, double* %real461, align 8
  %460 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag462 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %460, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag462, align 8
  %461 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr463 = getelementptr %struct.Py_complex, %struct.Py_complex* %461, i32 1
  store %struct.Py_complex* %incdec.ptr463, %struct.Py_complex** %p445, align 8
  %462 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real464 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %462, i32 0, i32 0
  store double -0.000000e+00, double* %real464, align 8
  %463 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag465 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %463, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag465, align 8
  %464 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr466 = getelementptr %struct.Py_complex, %struct.Py_complex* %464, i32 1
  store %struct.Py_complex* %incdec.ptr466, %struct.Py_complex** %p445, align 8
  %465 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real467 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %465, i32 0, i32 0
  store double -0.000000e+00, double* %real467, align 8
  %466 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag468 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %466, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag468, align 8
  %467 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr469 = getelementptr %struct.Py_complex, %struct.Py_complex* %467, i32 1
  store %struct.Py_complex* %incdec.ptr469, %struct.Py_complex** %p445, align 8
  %468 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real470 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %468, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real470, align 8
  %469 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag471 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %469, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag471, align 8
  %470 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr472 = getelementptr %struct.Py_complex, %struct.Py_complex* %470, i32 1
  store %struct.Py_complex* %incdec.ptr472, %struct.Py_complex** %p445, align 8
  %471 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real473 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %471, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real473, align 8
  %472 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag474 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %472, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag474, align 8
  %473 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr475 = getelementptr %struct.Py_complex, %struct.Py_complex* %473, i32 1
  store %struct.Py_complex* %incdec.ptr475, %struct.Py_complex** %p445, align 8
  %474 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real476 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %474, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real476, align 8
  %475 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag477 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %475, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag477, align 8
  %476 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr478 = getelementptr %struct.Py_complex, %struct.Py_complex* %476, i32 1
  store %struct.Py_complex* %incdec.ptr478, %struct.Py_complex** %p445, align 8
  %477 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real479 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %477, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real479, align 8
  %478 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag480 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %478, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag480, align 8
  %479 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr481 = getelementptr %struct.Py_complex, %struct.Py_complex* %479, i32 1
  store %struct.Py_complex* %incdec.ptr481, %struct.Py_complex** %p445, align 8
  %480 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real482 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %480, i32 0, i32 0
  store double -0.000000e+00, double* %real482, align 8
  %481 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag483 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %481, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag483, align 8
  %482 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr484 = getelementptr %struct.Py_complex, %struct.Py_complex* %482, i32 1
  store %struct.Py_complex* %incdec.ptr484, %struct.Py_complex** %p445, align 8
  %483 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real485 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %483, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real485, align 8
  %484 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag486 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %484, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag486, align 8
  %485 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr487 = getelementptr %struct.Py_complex, %struct.Py_complex* %485, i32 1
  store %struct.Py_complex* %incdec.ptr487, %struct.Py_complex** %p445, align 8
  %486 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real488 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %486, i32 0, i32 0
  store double -0.000000e+00, double* %real488, align 8
  %487 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag489 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %487, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag489, align 8
  %488 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr490 = getelementptr %struct.Py_complex, %struct.Py_complex* %488, i32 1
  store %struct.Py_complex* %incdec.ptr490, %struct.Py_complex** %p445, align 8
  %489 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real491 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %489, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real491, align 8
  %490 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag492 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %490, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag492, align 8
  %491 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr493 = getelementptr %struct.Py_complex, %struct.Py_complex* %491, i32 1
  store %struct.Py_complex* %incdec.ptr493, %struct.Py_complex** %p445, align 8
  %492 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real494 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %492, i32 0, i32 0
  store double -0.000000e+00, double* %real494, align 8
  %493 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag495 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %493, i32 0, i32 1
  store double -0.000000e+00, double* %imag495, align 8
  %494 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr496 = getelementptr %struct.Py_complex, %struct.Py_complex* %494, i32 1
  store %struct.Py_complex* %incdec.ptr496, %struct.Py_complex** %p445, align 8
  %495 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real497 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %495, i32 0, i32 0
  store double -0.000000e+00, double* %real497, align 8
  %496 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag498 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %496, i32 0, i32 1
  store double 0.000000e+00, double* %imag498, align 8
  %497 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr499 = getelementptr %struct.Py_complex, %struct.Py_complex* %497, i32 1
  store %struct.Py_complex* %incdec.ptr499, %struct.Py_complex** %p445, align 8
  %498 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real500 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %498, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real500, align 8
  %499 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag501 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %499, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag501, align 8
  %500 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr502 = getelementptr %struct.Py_complex, %struct.Py_complex* %500, i32 1
  store %struct.Py_complex* %incdec.ptr502, %struct.Py_complex** %p445, align 8
  %501 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real503 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %501, i32 0, i32 0
  store double -0.000000e+00, double* %real503, align 8
  %502 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag504 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %502, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag504, align 8
  %503 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr505 = getelementptr %struct.Py_complex, %struct.Py_complex* %503, i32 1
  store %struct.Py_complex* %incdec.ptr505, %struct.Py_complex** %p445, align 8
  %504 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real506 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %504, i32 0, i32 0
  store double -0.000000e+00, double* %real506, align 8
  %505 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag507 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %505, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag507, align 8
  %506 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr508 = getelementptr %struct.Py_complex, %struct.Py_complex* %506, i32 1
  store %struct.Py_complex* %incdec.ptr508, %struct.Py_complex** %p445, align 8
  %507 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real509 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %507, i32 0, i32 0
  store double 0.000000e+00, double* %real509, align 8
  %508 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag510 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %508, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag510, align 8
  %509 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr511 = getelementptr %struct.Py_complex, %struct.Py_complex* %509, i32 1
  store %struct.Py_complex* %incdec.ptr511, %struct.Py_complex** %p445, align 8
  %510 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real512 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %510, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real512, align 8
  %511 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag513 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %511, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag513, align 8
  %512 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr514 = getelementptr %struct.Py_complex, %struct.Py_complex* %512, i32 1
  store %struct.Py_complex* %incdec.ptr514, %struct.Py_complex** %p445, align 8
  %513 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real515 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %513, i32 0, i32 0
  store double 0.000000e+00, double* %real515, align 8
  %514 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag516 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %514, i32 0, i32 1
  store double -0.000000e+00, double* %imag516, align 8
  %515 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr517 = getelementptr %struct.Py_complex, %struct.Py_complex* %515, i32 1
  store %struct.Py_complex* %incdec.ptr517, %struct.Py_complex** %p445, align 8
  %516 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real518 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %516, i32 0, i32 0
  store double 0.000000e+00, double* %real518, align 8
  %517 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag519 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %517, i32 0, i32 1
  store double 0.000000e+00, double* %imag519, align 8
  %518 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr520 = getelementptr %struct.Py_complex, %struct.Py_complex* %518, i32 1
  store %struct.Py_complex* %incdec.ptr520, %struct.Py_complex** %p445, align 8
  %519 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real521 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %519, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real521, align 8
  %520 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag522 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %520, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag522, align 8
  %521 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr523 = getelementptr %struct.Py_complex, %struct.Py_complex* %521, i32 1
  store %struct.Py_complex* %incdec.ptr523, %struct.Py_complex** %p445, align 8
  %522 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real524 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %522, i32 0, i32 0
  store double 0.000000e+00, double* %real524, align 8
  %523 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag525 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %523, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag525, align 8
  %524 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr526 = getelementptr %struct.Py_complex, %struct.Py_complex* %524, i32 1
  store %struct.Py_complex* %incdec.ptr526, %struct.Py_complex** %p445, align 8
  %525 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real527 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %525, i32 0, i32 0
  store double 0.000000e+00, double* %real527, align 8
  %526 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag528 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %526, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag528, align 8
  %527 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr529 = getelementptr %struct.Py_complex, %struct.Py_complex* %527, i32 1
  store %struct.Py_complex* %incdec.ptr529, %struct.Py_complex** %p445, align 8
  %528 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real530 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %528, i32 0, i32 0
  store double 0.000000e+00, double* %real530, align 8
  %529 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag531 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %529, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag531, align 8
  %530 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr532 = getelementptr %struct.Py_complex, %struct.Py_complex* %530, i32 1
  store %struct.Py_complex* %incdec.ptr532, %struct.Py_complex** %p445, align 8
  %531 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real533 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %531, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real533, align 8
  %532 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag534 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %532, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag534, align 8
  %533 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr535 = getelementptr %struct.Py_complex, %struct.Py_complex* %533, i32 1
  store %struct.Py_complex* %incdec.ptr535, %struct.Py_complex** %p445, align 8
  %534 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real536 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %534, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real536, align 8
  %535 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag537 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %535, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag537, align 8
  %536 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr538 = getelementptr %struct.Py_complex, %struct.Py_complex* %536, i32 1
  store %struct.Py_complex* %incdec.ptr538, %struct.Py_complex** %p445, align 8
  %537 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real539 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %537, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real539, align 8
  %538 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag540 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %538, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag540, align 8
  %539 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr541 = getelementptr %struct.Py_complex, %struct.Py_complex* %539, i32 1
  store %struct.Py_complex* %incdec.ptr541, %struct.Py_complex** %p445, align 8
  %540 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real542 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %540, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real542, align 8
  %541 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag543 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %541, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag543, align 8
  %542 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr544 = getelementptr %struct.Py_complex, %struct.Py_complex* %542, i32 1
  store %struct.Py_complex* %incdec.ptr544, %struct.Py_complex** %p445, align 8
  %543 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real545 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %543, i32 0, i32 0
  store double 0.000000e+00, double* %real545, align 8
  %544 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag546 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %544, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag546, align 8
  %545 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr547 = getelementptr %struct.Py_complex, %struct.Py_complex* %545, i32 1
  store %struct.Py_complex* %incdec.ptr547, %struct.Py_complex** %p445, align 8
  %546 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real548 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %546, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real548, align 8
  %547 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag549 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %547, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag549, align 8
  %548 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr550 = getelementptr %struct.Py_complex, %struct.Py_complex* %548, i32 1
  store %struct.Py_complex* %incdec.ptr550, %struct.Py_complex** %p445, align 8
  %549 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real551 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %549, i32 0, i32 0
  store double 0.000000e+00, double* %real551, align 8
  %550 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag552 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %550, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag552, align 8
  %551 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr553 = getelementptr %struct.Py_complex, %struct.Py_complex* %551, i32 1
  store %struct.Py_complex* %incdec.ptr553, %struct.Py_complex** %p445, align 8
  %552 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real554 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %552, i32 0, i32 0
  store double 0.000000e+00, double* %real554, align 8
  %553 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag555 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %553, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag555, align 8
  %554 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr556 = getelementptr %struct.Py_complex, %struct.Py_complex* %554, i32 1
  store %struct.Py_complex* %incdec.ptr556, %struct.Py_complex** %p445, align 8
  %555 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real557 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %555, i32 0, i32 0
  store double 0.000000e+00, double* %real557, align 8
  %556 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag558 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %556, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag558, align 8
  %557 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr559 = getelementptr %struct.Py_complex, %struct.Py_complex* %557, i32 1
  store %struct.Py_complex* %incdec.ptr559, %struct.Py_complex** %p445, align 8
  %558 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real560 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %558, i32 0, i32 0
  store double 0.000000e+00, double* %real560, align 8
  %559 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag561 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %559, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag561, align 8
  %560 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr562 = getelementptr %struct.Py_complex, %struct.Py_complex* %560, i32 1
  store %struct.Py_complex* %incdec.ptr562, %struct.Py_complex** %p445, align 8
  %561 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real563 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %561, i32 0, i32 0
  store double 0.000000e+00, double* %real563, align 8
  %562 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag564 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %562, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag564, align 8
  %563 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr565 = getelementptr %struct.Py_complex, %struct.Py_complex* %563, i32 1
  store %struct.Py_complex* %incdec.ptr565, %struct.Py_complex** %p445, align 8
  %564 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real566 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %564, i32 0, i32 0
  store double 0.000000e+00, double* %real566, align 8
  %565 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag567 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %565, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag567, align 8
  %566 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr568 = getelementptr %struct.Py_complex, %struct.Py_complex* %566, i32 1
  store %struct.Py_complex* %incdec.ptr568, %struct.Py_complex** %p445, align 8
  %567 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real569 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %567, i32 0, i32 0
  store double 0.000000e+00, double* %real569, align 8
  %568 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag570 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %568, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag570, align 8
  %569 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr571 = getelementptr %struct.Py_complex, %struct.Py_complex* %569, i32 1
  store %struct.Py_complex* %incdec.ptr571, %struct.Py_complex** %p445, align 8
  %570 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real572 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %570, i32 0, i32 0
  store double 0.000000e+00, double* %real572, align 8
  %571 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag573 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %571, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag573, align 8
  %572 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr574 = getelementptr %struct.Py_complex, %struct.Py_complex* %572, i32 1
  store %struct.Py_complex* %incdec.ptr574, %struct.Py_complex** %p445, align 8
  %573 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real575 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %573, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real575, align 8
  %574 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag576 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %574, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag576, align 8
  %575 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr577 = getelementptr %struct.Py_complex, %struct.Py_complex* %575, i32 1
  store %struct.Py_complex* %incdec.ptr577, %struct.Py_complex** %p445, align 8
  %576 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real578 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %576, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real578, align 8
  %577 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag579 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %577, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag579, align 8
  %578 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr580 = getelementptr %struct.Py_complex, %struct.Py_complex* %578, i32 1
  store %struct.Py_complex* %incdec.ptr580, %struct.Py_complex** %p445, align 8
  %579 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real581 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %579, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real581, align 8
  %580 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag582 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %580, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag582, align 8
  %581 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr583 = getelementptr %struct.Py_complex, %struct.Py_complex* %581, i32 1
  store %struct.Py_complex* %incdec.ptr583, %struct.Py_complex** %p445, align 8
  %582 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real584 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %582, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real584, align 8
  %583 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag585 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %583, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag585, align 8
  %584 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr586 = getelementptr %struct.Py_complex, %struct.Py_complex* %584, i32 1
  store %struct.Py_complex* %incdec.ptr586, %struct.Py_complex** %p445, align 8
  %585 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real587 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %585, i32 0, i32 0
  store double 0.000000e+00, double* %real587, align 8
  %586 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag588 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %586, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag588, align 8
  %587 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr589 = getelementptr %struct.Py_complex, %struct.Py_complex* %587, i32 1
  store %struct.Py_complex* %incdec.ptr589, %struct.Py_complex** %p445, align 8
  %588 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %real590 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %588, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real590, align 8
  %589 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %imag591 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %589, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag591, align 8
  %590 = load %struct.Py_complex*, %struct.Py_complex** %p445, align 8
  %incdec.ptr592 = getelementptr %struct.Py_complex, %struct.Py_complex* %590, i32 1
  store %struct.Py_complex* %incdec.ptr592, %struct.Py_complex** %p445, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @cosh_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p593, align 8
  %591 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real594 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %591, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real594, align 8
  %592 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag595 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %592, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag595, align 8
  %593 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr596 = getelementptr %struct.Py_complex, %struct.Py_complex* %593, i32 1
  store %struct.Py_complex* %incdec.ptr596, %struct.Py_complex** %p593, align 8
  %594 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real597 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %594, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real597, align 8
  %595 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag598 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %595, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag598, align 8
  %596 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr599 = getelementptr %struct.Py_complex, %struct.Py_complex* %596, i32 1
  store %struct.Py_complex* %incdec.ptr599, %struct.Py_complex** %p593, align 8
  %597 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real600 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %597, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real600, align 8
  %598 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag601 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %598, i32 0, i32 1
  store double 0.000000e+00, double* %imag601, align 8
  %599 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr602 = getelementptr %struct.Py_complex, %struct.Py_complex* %599, i32 1
  store %struct.Py_complex* %incdec.ptr602, %struct.Py_complex** %p593, align 8
  %600 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real603 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %600, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real603, align 8
  %601 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag604 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %601, i32 0, i32 1
  store double -0.000000e+00, double* %imag604, align 8
  %602 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr605 = getelementptr %struct.Py_complex, %struct.Py_complex* %602, i32 1
  store %struct.Py_complex* %incdec.ptr605, %struct.Py_complex** %p593, align 8
  %603 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real606 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %603, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real606, align 8
  %604 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag607 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %604, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag607, align 8
  %605 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr608 = getelementptr %struct.Py_complex, %struct.Py_complex* %605, i32 1
  store %struct.Py_complex* %incdec.ptr608, %struct.Py_complex** %p593, align 8
  %606 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real609 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %606, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real609, align 8
  %607 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag610 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %607, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag610, align 8
  %608 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr611 = getelementptr %struct.Py_complex, %struct.Py_complex* %608, i32 1
  store %struct.Py_complex* %incdec.ptr611, %struct.Py_complex** %p593, align 8
  %609 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real612 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %609, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real612, align 8
  %610 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag613 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %610, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag613, align 8
  %611 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr614 = getelementptr %struct.Py_complex, %struct.Py_complex* %611, i32 1
  store %struct.Py_complex* %incdec.ptr614, %struct.Py_complex** %p593, align 8
  %612 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real615 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %612, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real615, align 8
  %613 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag616 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %613, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag616, align 8
  %614 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr617 = getelementptr %struct.Py_complex, %struct.Py_complex* %614, i32 1
  store %struct.Py_complex* %incdec.ptr617, %struct.Py_complex** %p593, align 8
  %615 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real618 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %615, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real618, align 8
  %616 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag619 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %616, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag619, align 8
  %617 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr620 = getelementptr %struct.Py_complex, %struct.Py_complex* %617, i32 1
  store %struct.Py_complex* %incdec.ptr620, %struct.Py_complex** %p593, align 8
  %618 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real621 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %618, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real621, align 8
  %619 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag622 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %619, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag622, align 8
  %620 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr623 = getelementptr %struct.Py_complex, %struct.Py_complex* %620, i32 1
  store %struct.Py_complex* %incdec.ptr623, %struct.Py_complex** %p593, align 8
  %621 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real624 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %621, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real624, align 8
  %622 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag625 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %622, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag625, align 8
  %623 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr626 = getelementptr %struct.Py_complex, %struct.Py_complex* %623, i32 1
  store %struct.Py_complex* %incdec.ptr626, %struct.Py_complex** %p593, align 8
  %624 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real627 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %624, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real627, align 8
  %625 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag628 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %625, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag628, align 8
  %626 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr629 = getelementptr %struct.Py_complex, %struct.Py_complex* %626, i32 1
  store %struct.Py_complex* %incdec.ptr629, %struct.Py_complex** %p593, align 8
  %627 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real630 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %627, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real630, align 8
  %628 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag631 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %628, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag631, align 8
  %629 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr632 = getelementptr %struct.Py_complex, %struct.Py_complex* %629, i32 1
  store %struct.Py_complex* %incdec.ptr632, %struct.Py_complex** %p593, align 8
  %630 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real633 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %630, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real633, align 8
  %631 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag634 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %631, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag634, align 8
  %632 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr635 = getelementptr %struct.Py_complex, %struct.Py_complex* %632, i32 1
  store %struct.Py_complex* %incdec.ptr635, %struct.Py_complex** %p593, align 8
  %633 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real636 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %633, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real636, align 8
  %634 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag637 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %634, i32 0, i32 1
  store double 0.000000e+00, double* %imag637, align 8
  %635 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr638 = getelementptr %struct.Py_complex, %struct.Py_complex* %635, i32 1
  store %struct.Py_complex* %incdec.ptr638, %struct.Py_complex** %p593, align 8
  %636 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real639 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %636, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real639, align 8
  %637 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag640 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %637, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag640, align 8
  %638 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr641 = getelementptr %struct.Py_complex, %struct.Py_complex* %638, i32 1
  store %struct.Py_complex* %incdec.ptr641, %struct.Py_complex** %p593, align 8
  %639 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real642 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %639, i32 0, i32 0
  store double 1.000000e+00, double* %real642, align 8
  %640 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag643 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %640, i32 0, i32 1
  store double 0.000000e+00, double* %imag643, align 8
  %641 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr644 = getelementptr %struct.Py_complex, %struct.Py_complex* %641, i32 1
  store %struct.Py_complex* %incdec.ptr644, %struct.Py_complex** %p593, align 8
  %642 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real645 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %642, i32 0, i32 0
  store double 1.000000e+00, double* %real645, align 8
  %643 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag646 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %643, i32 0, i32 1
  store double -0.000000e+00, double* %imag646, align 8
  %644 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr647 = getelementptr %struct.Py_complex, %struct.Py_complex* %644, i32 1
  store %struct.Py_complex* %incdec.ptr647, %struct.Py_complex** %p593, align 8
  %645 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real648 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %645, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real648, align 8
  %646 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag649 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %646, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag649, align 8
  %647 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr650 = getelementptr %struct.Py_complex, %struct.Py_complex* %647, i32 1
  store %struct.Py_complex* %incdec.ptr650, %struct.Py_complex** %p593, align 8
  %648 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real651 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %648, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real651, align 8
  %649 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag652 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %649, i32 0, i32 1
  store double 0.000000e+00, double* %imag652, align 8
  %650 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr653 = getelementptr %struct.Py_complex, %struct.Py_complex* %650, i32 1
  store %struct.Py_complex* %incdec.ptr653, %struct.Py_complex** %p593, align 8
  %651 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real654 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %651, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real654, align 8
  %652 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag655 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %652, i32 0, i32 1
  store double 0.000000e+00, double* %imag655, align 8
  %653 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr656 = getelementptr %struct.Py_complex, %struct.Py_complex* %653, i32 1
  store %struct.Py_complex* %incdec.ptr656, %struct.Py_complex** %p593, align 8
  %654 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real657 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %654, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real657, align 8
  %655 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag658 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %655, i32 0, i32 1
  store double 0.000000e+00, double* %imag658, align 8
  %656 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr659 = getelementptr %struct.Py_complex, %struct.Py_complex* %656, i32 1
  store %struct.Py_complex* %incdec.ptr659, %struct.Py_complex** %p593, align 8
  %657 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real660 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %657, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real660, align 8
  %658 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag661 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %658, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag661, align 8
  %659 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr662 = getelementptr %struct.Py_complex, %struct.Py_complex* %659, i32 1
  store %struct.Py_complex* %incdec.ptr662, %struct.Py_complex** %p593, align 8
  %660 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real663 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %660, i32 0, i32 0
  store double 1.000000e+00, double* %real663, align 8
  %661 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag664 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %661, i32 0, i32 1
  store double -0.000000e+00, double* %imag664, align 8
  %662 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr665 = getelementptr %struct.Py_complex, %struct.Py_complex* %662, i32 1
  store %struct.Py_complex* %incdec.ptr665, %struct.Py_complex** %p593, align 8
  %663 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real666 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %663, i32 0, i32 0
  store double 1.000000e+00, double* %real666, align 8
  %664 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag667 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %664, i32 0, i32 1
  store double 0.000000e+00, double* %imag667, align 8
  %665 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr668 = getelementptr %struct.Py_complex, %struct.Py_complex* %665, i32 1
  store %struct.Py_complex* %incdec.ptr668, %struct.Py_complex** %p593, align 8
  %666 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real669 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %666, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real669, align 8
  %667 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag670 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %667, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag670, align 8
  %668 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr671 = getelementptr %struct.Py_complex, %struct.Py_complex* %668, i32 1
  store %struct.Py_complex* %incdec.ptr671, %struct.Py_complex** %p593, align 8
  %669 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real672 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %669, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real672, align 8
  %670 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag673 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %670, i32 0, i32 1
  store double 0.000000e+00, double* %imag673, align 8
  %671 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr674 = getelementptr %struct.Py_complex, %struct.Py_complex* %671, i32 1
  store %struct.Py_complex* %incdec.ptr674, %struct.Py_complex** %p593, align 8
  %672 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real675 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %672, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real675, align 8
  %673 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag676 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %673, i32 0, i32 1
  store double 0.000000e+00, double* %imag676, align 8
  %674 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr677 = getelementptr %struct.Py_complex, %struct.Py_complex* %674, i32 1
  store %struct.Py_complex* %incdec.ptr677, %struct.Py_complex** %p593, align 8
  %675 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real678 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %675, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real678, align 8
  %676 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag679 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %676, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag679, align 8
  %677 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr680 = getelementptr %struct.Py_complex, %struct.Py_complex* %677, i32 1
  store %struct.Py_complex* %incdec.ptr680, %struct.Py_complex** %p593, align 8
  %678 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real681 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %678, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real681, align 8
  %679 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag682 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %679, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag682, align 8
  %680 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr683 = getelementptr %struct.Py_complex, %struct.Py_complex* %680, i32 1
  store %struct.Py_complex* %incdec.ptr683, %struct.Py_complex** %p593, align 8
  %681 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real684 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %681, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real684, align 8
  %682 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag685 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %682, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag685, align 8
  %683 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr686 = getelementptr %struct.Py_complex, %struct.Py_complex* %683, i32 1
  store %struct.Py_complex* %incdec.ptr686, %struct.Py_complex** %p593, align 8
  %684 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real687 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %684, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real687, align 8
  %685 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag688 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %685, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag688, align 8
  %686 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr689 = getelementptr %struct.Py_complex, %struct.Py_complex* %686, i32 1
  store %struct.Py_complex* %incdec.ptr689, %struct.Py_complex** %p593, align 8
  %687 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real690 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %687, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real690, align 8
  %688 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag691 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %688, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag691, align 8
  %689 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr692 = getelementptr %struct.Py_complex, %struct.Py_complex* %689, i32 1
  store %struct.Py_complex* %incdec.ptr692, %struct.Py_complex** %p593, align 8
  %690 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real693 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %690, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real693, align 8
  %691 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag694 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %691, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag694, align 8
  %692 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr695 = getelementptr %struct.Py_complex, %struct.Py_complex* %692, i32 1
  store %struct.Py_complex* %incdec.ptr695, %struct.Py_complex** %p593, align 8
  %693 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real696 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %693, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real696, align 8
  %694 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag697 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %694, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag697, align 8
  %695 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr698 = getelementptr %struct.Py_complex, %struct.Py_complex* %695, i32 1
  store %struct.Py_complex* %incdec.ptr698, %struct.Py_complex** %p593, align 8
  %696 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real699 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %696, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real699, align 8
  %697 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag700 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %697, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag700, align 8
  %698 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr701 = getelementptr %struct.Py_complex, %struct.Py_complex* %698, i32 1
  store %struct.Py_complex* %incdec.ptr701, %struct.Py_complex** %p593, align 8
  %699 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real702 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %699, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real702, align 8
  %700 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag703 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %700, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag703, align 8
  %701 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr704 = getelementptr %struct.Py_complex, %struct.Py_complex* %701, i32 1
  store %struct.Py_complex* %incdec.ptr704, %struct.Py_complex** %p593, align 8
  %702 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real705 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %702, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real705, align 8
  %703 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag706 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %703, i32 0, i32 1
  store double -0.000000e+00, double* %imag706, align 8
  %704 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr707 = getelementptr %struct.Py_complex, %struct.Py_complex* %704, i32 1
  store %struct.Py_complex* %incdec.ptr707, %struct.Py_complex** %p593, align 8
  %705 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real708 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %705, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real708, align 8
  %706 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag709 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %706, i32 0, i32 1
  store double 0.000000e+00, double* %imag709, align 8
  %707 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr710 = getelementptr %struct.Py_complex, %struct.Py_complex* %707, i32 1
  store %struct.Py_complex* %incdec.ptr710, %struct.Py_complex** %p593, align 8
  %708 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real711 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %708, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real711, align 8
  %709 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag712 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %709, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag712, align 8
  %710 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr713 = getelementptr %struct.Py_complex, %struct.Py_complex* %710, i32 1
  store %struct.Py_complex* %incdec.ptr713, %struct.Py_complex** %p593, align 8
  %711 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real714 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %711, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real714, align 8
  %712 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag715 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %712, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag715, align 8
  %713 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr716 = getelementptr %struct.Py_complex, %struct.Py_complex* %713, i32 1
  store %struct.Py_complex* %incdec.ptr716, %struct.Py_complex** %p593, align 8
  %714 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real717 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %714, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real717, align 8
  %715 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag718 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %715, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag718, align 8
  %716 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr719 = getelementptr %struct.Py_complex, %struct.Py_complex* %716, i32 1
  store %struct.Py_complex* %incdec.ptr719, %struct.Py_complex** %p593, align 8
  %717 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real720 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %717, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real720, align 8
  %718 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag721 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %718, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag721, align 8
  %719 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr722 = getelementptr %struct.Py_complex, %struct.Py_complex* %719, i32 1
  store %struct.Py_complex* %incdec.ptr722, %struct.Py_complex** %p593, align 8
  %720 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real723 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %720, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real723, align 8
  %721 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag724 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %721, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag724, align 8
  %722 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr725 = getelementptr %struct.Py_complex, %struct.Py_complex* %722, i32 1
  store %struct.Py_complex* %incdec.ptr725, %struct.Py_complex** %p593, align 8
  %723 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real726 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %723, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real726, align 8
  %724 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag727 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %724, i32 0, i32 1
  store double 0.000000e+00, double* %imag727, align 8
  %725 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr728 = getelementptr %struct.Py_complex, %struct.Py_complex* %725, i32 1
  store %struct.Py_complex* %incdec.ptr728, %struct.Py_complex** %p593, align 8
  %726 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real729 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %726, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real729, align 8
  %727 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag730 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %727, i32 0, i32 1
  store double 0.000000e+00, double* %imag730, align 8
  %728 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr731 = getelementptr %struct.Py_complex, %struct.Py_complex* %728, i32 1
  store %struct.Py_complex* %incdec.ptr731, %struct.Py_complex** %p593, align 8
  %729 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real732 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %729, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real732, align 8
  %730 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag733 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %730, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag733, align 8
  %731 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr734 = getelementptr %struct.Py_complex, %struct.Py_complex* %731, i32 1
  store %struct.Py_complex* %incdec.ptr734, %struct.Py_complex** %p593, align 8
  %732 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real735 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %732, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real735, align 8
  %733 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag736 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %733, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag736, align 8
  %734 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr737 = getelementptr %struct.Py_complex, %struct.Py_complex* %734, i32 1
  store %struct.Py_complex* %incdec.ptr737, %struct.Py_complex** %p593, align 8
  %735 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %real738 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %735, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real738, align 8
  %736 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %imag739 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %736, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag739, align 8
  %737 = load %struct.Py_complex*, %struct.Py_complex** %p593, align 8
  %incdec.ptr740 = getelementptr %struct.Py_complex, %struct.Py_complex* %737, i32 1
  store %struct.Py_complex* %incdec.ptr740, %struct.Py_complex** %p593, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @exp_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p741, align 8
  %738 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real742 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %738, i32 0, i32 0
  store double 0.000000e+00, double* %real742, align 8
  %739 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag743 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %739, i32 0, i32 1
  store double 0.000000e+00, double* %imag743, align 8
  %740 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr744 = getelementptr %struct.Py_complex, %struct.Py_complex* %740, i32 1
  store %struct.Py_complex* %incdec.ptr744, %struct.Py_complex** %p741, align 8
  %741 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real745 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %741, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real745, align 8
  %742 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag746 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %742, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag746, align 8
  %743 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr747 = getelementptr %struct.Py_complex, %struct.Py_complex* %743, i32 1
  store %struct.Py_complex* %incdec.ptr747, %struct.Py_complex** %p741, align 8
  %744 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real748 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %744, i32 0, i32 0
  store double 0.000000e+00, double* %real748, align 8
  %745 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag749 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %745, i32 0, i32 1
  store double -0.000000e+00, double* %imag749, align 8
  %746 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr750 = getelementptr %struct.Py_complex, %struct.Py_complex* %746, i32 1
  store %struct.Py_complex* %incdec.ptr750, %struct.Py_complex** %p741, align 8
  %747 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real751 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %747, i32 0, i32 0
  store double 0.000000e+00, double* %real751, align 8
  %748 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag752 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %748, i32 0, i32 1
  store double 0.000000e+00, double* %imag752, align 8
  %749 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr753 = getelementptr %struct.Py_complex, %struct.Py_complex* %749, i32 1
  store %struct.Py_complex* %incdec.ptr753, %struct.Py_complex** %p741, align 8
  %750 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real754 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %750, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real754, align 8
  %751 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag755 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %751, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag755, align 8
  %752 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr756 = getelementptr %struct.Py_complex, %struct.Py_complex* %752, i32 1
  store %struct.Py_complex* %incdec.ptr756, %struct.Py_complex** %p741, align 8
  %753 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real757 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %753, i32 0, i32 0
  store double 0.000000e+00, double* %real757, align 8
  %754 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag758 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %754, i32 0, i32 1
  store double 0.000000e+00, double* %imag758, align 8
  %755 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr759 = getelementptr %struct.Py_complex, %struct.Py_complex* %755, i32 1
  store %struct.Py_complex* %incdec.ptr759, %struct.Py_complex** %p741, align 8
  %756 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real760 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %756, i32 0, i32 0
  store double 0.000000e+00, double* %real760, align 8
  %757 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag761 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %757, i32 0, i32 1
  store double 0.000000e+00, double* %imag761, align 8
  %758 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr762 = getelementptr %struct.Py_complex, %struct.Py_complex* %758, i32 1
  store %struct.Py_complex* %incdec.ptr762, %struct.Py_complex** %p741, align 8
  %759 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real763 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %759, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real763, align 8
  %760 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag764 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %760, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag764, align 8
  %761 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr765 = getelementptr %struct.Py_complex, %struct.Py_complex* %761, i32 1
  store %struct.Py_complex* %incdec.ptr765, %struct.Py_complex** %p741, align 8
  %762 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real766 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %762, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real766, align 8
  %763 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag767 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %763, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag767, align 8
  %764 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr768 = getelementptr %struct.Py_complex, %struct.Py_complex* %764, i32 1
  store %struct.Py_complex* %incdec.ptr768, %struct.Py_complex** %p741, align 8
  %765 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real769 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %765, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real769, align 8
  %766 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag770 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %766, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag770, align 8
  %767 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr771 = getelementptr %struct.Py_complex, %struct.Py_complex* %767, i32 1
  store %struct.Py_complex* %incdec.ptr771, %struct.Py_complex** %p741, align 8
  %768 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real772 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %768, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real772, align 8
  %769 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag773 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %769, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag773, align 8
  %770 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr774 = getelementptr %struct.Py_complex, %struct.Py_complex* %770, i32 1
  store %struct.Py_complex* %incdec.ptr774, %struct.Py_complex** %p741, align 8
  %771 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real775 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %771, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real775, align 8
  %772 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag776 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %772, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag776, align 8
  %773 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr777 = getelementptr %struct.Py_complex, %struct.Py_complex* %773, i32 1
  store %struct.Py_complex* %incdec.ptr777, %struct.Py_complex** %p741, align 8
  %774 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real778 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %774, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real778, align 8
  %775 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag779 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %775, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag779, align 8
  %776 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr780 = getelementptr %struct.Py_complex, %struct.Py_complex* %776, i32 1
  store %struct.Py_complex* %incdec.ptr780, %struct.Py_complex** %p741, align 8
  %777 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real781 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %777, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real781, align 8
  %778 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag782 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %778, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag782, align 8
  %779 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr783 = getelementptr %struct.Py_complex, %struct.Py_complex* %779, i32 1
  store %struct.Py_complex* %incdec.ptr783, %struct.Py_complex** %p741, align 8
  %780 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real784 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %780, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real784, align 8
  %781 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag785 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %781, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag785, align 8
  %782 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr786 = getelementptr %struct.Py_complex, %struct.Py_complex* %782, i32 1
  store %struct.Py_complex* %incdec.ptr786, %struct.Py_complex** %p741, align 8
  %783 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real787 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %783, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real787, align 8
  %784 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag788 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %784, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag788, align 8
  %785 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr789 = getelementptr %struct.Py_complex, %struct.Py_complex* %785, i32 1
  store %struct.Py_complex* %incdec.ptr789, %struct.Py_complex** %p741, align 8
  %786 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real790 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %786, i32 0, i32 0
  store double 1.000000e+00, double* %real790, align 8
  %787 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag791 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %787, i32 0, i32 1
  store double -0.000000e+00, double* %imag791, align 8
  %788 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr792 = getelementptr %struct.Py_complex, %struct.Py_complex* %788, i32 1
  store %struct.Py_complex* %incdec.ptr792, %struct.Py_complex** %p741, align 8
  %789 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real793 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %789, i32 0, i32 0
  store double 1.000000e+00, double* %real793, align 8
  %790 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag794 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %790, i32 0, i32 1
  store double 0.000000e+00, double* %imag794, align 8
  %791 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr795 = getelementptr %struct.Py_complex, %struct.Py_complex* %791, i32 1
  store %struct.Py_complex* %incdec.ptr795, %struct.Py_complex** %p741, align 8
  %792 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real796 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %792, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real796, align 8
  %793 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag797 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %793, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag797, align 8
  %794 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr798 = getelementptr %struct.Py_complex, %struct.Py_complex* %794, i32 1
  store %struct.Py_complex* %incdec.ptr798, %struct.Py_complex** %p741, align 8
  %795 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real799 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %795, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real799, align 8
  %796 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag800 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %796, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag800, align 8
  %797 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr801 = getelementptr %struct.Py_complex, %struct.Py_complex* %797, i32 1
  store %struct.Py_complex* %incdec.ptr801, %struct.Py_complex** %p741, align 8
  %798 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real802 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %798, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real802, align 8
  %799 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag803 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %799, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag803, align 8
  %800 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr804 = getelementptr %struct.Py_complex, %struct.Py_complex* %800, i32 1
  store %struct.Py_complex* %incdec.ptr804, %struct.Py_complex** %p741, align 8
  %801 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real805 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %801, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real805, align 8
  %802 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag806 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %802, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag806, align 8
  %803 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr807 = getelementptr %struct.Py_complex, %struct.Py_complex* %803, i32 1
  store %struct.Py_complex* %incdec.ptr807, %struct.Py_complex** %p741, align 8
  %804 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real808 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %804, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real808, align 8
  %805 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag809 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %805, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag809, align 8
  %806 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr810 = getelementptr %struct.Py_complex, %struct.Py_complex* %806, i32 1
  store %struct.Py_complex* %incdec.ptr810, %struct.Py_complex** %p741, align 8
  %807 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real811 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %807, i32 0, i32 0
  store double 1.000000e+00, double* %real811, align 8
  %808 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag812 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %808, i32 0, i32 1
  store double -0.000000e+00, double* %imag812, align 8
  %809 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr813 = getelementptr %struct.Py_complex, %struct.Py_complex* %809, i32 1
  store %struct.Py_complex* %incdec.ptr813, %struct.Py_complex** %p741, align 8
  %810 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real814 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %810, i32 0, i32 0
  store double 1.000000e+00, double* %real814, align 8
  %811 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag815 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %811, i32 0, i32 1
  store double 0.000000e+00, double* %imag815, align 8
  %812 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr816 = getelementptr %struct.Py_complex, %struct.Py_complex* %812, i32 1
  store %struct.Py_complex* %incdec.ptr816, %struct.Py_complex** %p741, align 8
  %813 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real817 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %813, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real817, align 8
  %814 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag818 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %814, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag818, align 8
  %815 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr819 = getelementptr %struct.Py_complex, %struct.Py_complex* %815, i32 1
  store %struct.Py_complex* %incdec.ptr819, %struct.Py_complex** %p741, align 8
  %816 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real820 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %816, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real820, align 8
  %817 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag821 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %817, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag821, align 8
  %818 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr822 = getelementptr %struct.Py_complex, %struct.Py_complex* %818, i32 1
  store %struct.Py_complex* %incdec.ptr822, %struct.Py_complex** %p741, align 8
  %819 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real823 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %819, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real823, align 8
  %820 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag824 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %820, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag824, align 8
  %821 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr825 = getelementptr %struct.Py_complex, %struct.Py_complex* %821, i32 1
  store %struct.Py_complex* %incdec.ptr825, %struct.Py_complex** %p741, align 8
  %822 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real826 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %822, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real826, align 8
  %823 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag827 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %823, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag827, align 8
  %824 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr828 = getelementptr %struct.Py_complex, %struct.Py_complex* %824, i32 1
  store %struct.Py_complex* %incdec.ptr828, %struct.Py_complex** %p741, align 8
  %825 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real829 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %825, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real829, align 8
  %826 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag830 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %826, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag830, align 8
  %827 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr831 = getelementptr %struct.Py_complex, %struct.Py_complex* %827, i32 1
  store %struct.Py_complex* %incdec.ptr831, %struct.Py_complex** %p741, align 8
  %828 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real832 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %828, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real832, align 8
  %829 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag833 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %829, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag833, align 8
  %830 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr834 = getelementptr %struct.Py_complex, %struct.Py_complex* %830, i32 1
  store %struct.Py_complex* %incdec.ptr834, %struct.Py_complex** %p741, align 8
  %831 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real835 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %831, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real835, align 8
  %832 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag836 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %832, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag836, align 8
  %833 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr837 = getelementptr %struct.Py_complex, %struct.Py_complex* %833, i32 1
  store %struct.Py_complex* %incdec.ptr837, %struct.Py_complex** %p741, align 8
  %834 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real838 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %834, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real838, align 8
  %835 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag839 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %835, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag839, align 8
  %836 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr840 = getelementptr %struct.Py_complex, %struct.Py_complex* %836, i32 1
  store %struct.Py_complex* %incdec.ptr840, %struct.Py_complex** %p741, align 8
  %837 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real841 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %837, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real841, align 8
  %838 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag842 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %838, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag842, align 8
  %839 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr843 = getelementptr %struct.Py_complex, %struct.Py_complex* %839, i32 1
  store %struct.Py_complex* %incdec.ptr843, %struct.Py_complex** %p741, align 8
  %840 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real844 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %840, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real844, align 8
  %841 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag845 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %841, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag845, align 8
  %842 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr846 = getelementptr %struct.Py_complex, %struct.Py_complex* %842, i32 1
  store %struct.Py_complex* %incdec.ptr846, %struct.Py_complex** %p741, align 8
  %843 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real847 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %843, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real847, align 8
  %844 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag848 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %844, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag848, align 8
  %845 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr849 = getelementptr %struct.Py_complex, %struct.Py_complex* %845, i32 1
  store %struct.Py_complex* %incdec.ptr849, %struct.Py_complex** %p741, align 8
  %846 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real850 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %846, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real850, align 8
  %847 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag851 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %847, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag851, align 8
  %848 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr852 = getelementptr %struct.Py_complex, %struct.Py_complex* %848, i32 1
  store %struct.Py_complex* %incdec.ptr852, %struct.Py_complex** %p741, align 8
  %849 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real853 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %849, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real853, align 8
  %850 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag854 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %850, i32 0, i32 1
  store double -0.000000e+00, double* %imag854, align 8
  %851 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr855 = getelementptr %struct.Py_complex, %struct.Py_complex* %851, i32 1
  store %struct.Py_complex* %incdec.ptr855, %struct.Py_complex** %p741, align 8
  %852 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real856 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %852, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real856, align 8
  %853 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag857 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %853, i32 0, i32 1
  store double 0.000000e+00, double* %imag857, align 8
  %854 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr858 = getelementptr %struct.Py_complex, %struct.Py_complex* %854, i32 1
  store %struct.Py_complex* %incdec.ptr858, %struct.Py_complex** %p741, align 8
  %855 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real859 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %855, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real859, align 8
  %856 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag860 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %856, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag860, align 8
  %857 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr861 = getelementptr %struct.Py_complex, %struct.Py_complex* %857, i32 1
  store %struct.Py_complex* %incdec.ptr861, %struct.Py_complex** %p741, align 8
  %858 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real862 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %858, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real862, align 8
  %859 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag863 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %859, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag863, align 8
  %860 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr864 = getelementptr %struct.Py_complex, %struct.Py_complex* %860, i32 1
  store %struct.Py_complex* %incdec.ptr864, %struct.Py_complex** %p741, align 8
  %861 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real865 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %861, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real865, align 8
  %862 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag866 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %862, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag866, align 8
  %863 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr867 = getelementptr %struct.Py_complex, %struct.Py_complex* %863, i32 1
  store %struct.Py_complex* %incdec.ptr867, %struct.Py_complex** %p741, align 8
  %864 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real868 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %864, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real868, align 8
  %865 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag869 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %865, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag869, align 8
  %866 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr870 = getelementptr %struct.Py_complex, %struct.Py_complex* %866, i32 1
  store %struct.Py_complex* %incdec.ptr870, %struct.Py_complex** %p741, align 8
  %867 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real871 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %867, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real871, align 8
  %868 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag872 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %868, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag872, align 8
  %869 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr873 = getelementptr %struct.Py_complex, %struct.Py_complex* %869, i32 1
  store %struct.Py_complex* %incdec.ptr873, %struct.Py_complex** %p741, align 8
  %870 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real874 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %870, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real874, align 8
  %871 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag875 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %871, i32 0, i32 1
  store double -0.000000e+00, double* %imag875, align 8
  %872 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr876 = getelementptr %struct.Py_complex, %struct.Py_complex* %872, i32 1
  store %struct.Py_complex* %incdec.ptr876, %struct.Py_complex** %p741, align 8
  %873 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real877 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %873, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real877, align 8
  %874 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag878 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %874, i32 0, i32 1
  store double 0.000000e+00, double* %imag878, align 8
  %875 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr879 = getelementptr %struct.Py_complex, %struct.Py_complex* %875, i32 1
  store %struct.Py_complex* %incdec.ptr879, %struct.Py_complex** %p741, align 8
  %876 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real880 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %876, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real880, align 8
  %877 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag881 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %877, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag881, align 8
  %878 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr882 = getelementptr %struct.Py_complex, %struct.Py_complex* %878, i32 1
  store %struct.Py_complex* %incdec.ptr882, %struct.Py_complex** %p741, align 8
  %879 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real883 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %879, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real883, align 8
  %880 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag884 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %880, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag884, align 8
  %881 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr885 = getelementptr %struct.Py_complex, %struct.Py_complex* %881, i32 1
  store %struct.Py_complex* %incdec.ptr885, %struct.Py_complex** %p741, align 8
  %882 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %real886 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %882, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real886, align 8
  %883 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %imag887 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %883, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag887, align 8
  %884 = load %struct.Py_complex*, %struct.Py_complex** %p741, align 8
  %incdec.ptr888 = getelementptr %struct.Py_complex, %struct.Py_complex* %884, i32 1
  store %struct.Py_complex* %incdec.ptr888, %struct.Py_complex** %p741, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @log_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p889, align 8
  %885 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real890 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %885, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real890, align 8
  %886 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag891 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %886, i32 0, i32 1
  store double 0xC002D97C7F3321D2, double* %imag891, align 8
  %887 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr892 = getelementptr %struct.Py_complex, %struct.Py_complex* %887, i32 1
  store %struct.Py_complex* %incdec.ptr892, %struct.Py_complex** %p889, align 8
  %888 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real893 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %888, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real893, align 8
  %889 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag894 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %889, i32 0, i32 1
  store double 0xC00921FB54442D18, double* %imag894, align 8
  %890 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr895 = getelementptr %struct.Py_complex, %struct.Py_complex* %890, i32 1
  store %struct.Py_complex* %incdec.ptr895, %struct.Py_complex** %p889, align 8
  %891 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real896 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %891, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real896, align 8
  %892 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag897 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %892, i32 0, i32 1
  store double 0xC00921FB54442D18, double* %imag897, align 8
  %893 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr898 = getelementptr %struct.Py_complex, %struct.Py_complex* %893, i32 1
  store %struct.Py_complex* %incdec.ptr898, %struct.Py_complex** %p889, align 8
  %894 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real899 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %894, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real899, align 8
  %895 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag900 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %895, i32 0, i32 1
  store double 0x400921FB54442D18, double* %imag900, align 8
  %896 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr901 = getelementptr %struct.Py_complex, %struct.Py_complex* %896, i32 1
  store %struct.Py_complex* %incdec.ptr901, %struct.Py_complex** %p889, align 8
  %897 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real902 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %897, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real902, align 8
  %898 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag903 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %898, i32 0, i32 1
  store double 0x400921FB54442D18, double* %imag903, align 8
  %899 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr904 = getelementptr %struct.Py_complex, %struct.Py_complex* %899, i32 1
  store %struct.Py_complex* %incdec.ptr904, %struct.Py_complex** %p889, align 8
  %900 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real905 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %900, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real905, align 8
  %901 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag906 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %901, i32 0, i32 1
  store double 0x4002D97C7F3321D2, double* %imag906, align 8
  %902 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr907 = getelementptr %struct.Py_complex, %struct.Py_complex* %902, i32 1
  store %struct.Py_complex* %incdec.ptr907, %struct.Py_complex** %p889, align 8
  %903 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real908 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %903, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real908, align 8
  %904 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag909 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %904, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag909, align 8
  %905 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr910 = getelementptr %struct.Py_complex, %struct.Py_complex* %905, i32 1
  store %struct.Py_complex* %incdec.ptr910, %struct.Py_complex** %p889, align 8
  %906 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real911 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %906, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real911, align 8
  %907 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag912 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %907, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag912, align 8
  %908 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr913 = getelementptr %struct.Py_complex, %struct.Py_complex* %908, i32 1
  store %struct.Py_complex* %incdec.ptr913, %struct.Py_complex** %p889, align 8
  %909 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real914 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %909, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real914, align 8
  %910 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag915 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %910, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag915, align 8
  %911 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr916 = getelementptr %struct.Py_complex, %struct.Py_complex* %911, i32 1
  store %struct.Py_complex* %incdec.ptr916, %struct.Py_complex** %p889, align 8
  %912 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real917 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %912, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real917, align 8
  %913 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag918 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %913, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag918, align 8
  %914 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr919 = getelementptr %struct.Py_complex, %struct.Py_complex* %914, i32 1
  store %struct.Py_complex* %incdec.ptr919, %struct.Py_complex** %p889, align 8
  %915 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real920 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %915, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real920, align 8
  %916 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag921 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %916, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag921, align 8
  %917 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr922 = getelementptr %struct.Py_complex, %struct.Py_complex* %917, i32 1
  store %struct.Py_complex* %incdec.ptr922, %struct.Py_complex** %p889, align 8
  %918 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real923 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %918, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real923, align 8
  %919 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag924 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %919, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag924, align 8
  %920 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr925 = getelementptr %struct.Py_complex, %struct.Py_complex* %920, i32 1
  store %struct.Py_complex* %incdec.ptr925, %struct.Py_complex** %p889, align 8
  %921 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real926 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %921, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real926, align 8
  %922 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag927 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %922, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag927, align 8
  %923 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr928 = getelementptr %struct.Py_complex, %struct.Py_complex* %923, i32 1
  store %struct.Py_complex* %incdec.ptr928, %struct.Py_complex** %p889, align 8
  %924 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real929 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %924, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real929, align 8
  %925 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag930 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %925, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag930, align 8
  %926 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr931 = getelementptr %struct.Py_complex, %struct.Py_complex* %926, i32 1
  store %struct.Py_complex* %incdec.ptr931, %struct.Py_complex** %p889, align 8
  %927 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real932 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %927, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real932, align 8
  %928 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag933 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %928, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag933, align 8
  %929 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr934 = getelementptr %struct.Py_complex, %struct.Py_complex* %929, i32 1
  store %struct.Py_complex* %incdec.ptr934, %struct.Py_complex** %p889, align 8
  %930 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real935 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %930, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real935, align 8
  %931 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag936 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %931, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag936, align 8
  %932 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr937 = getelementptr %struct.Py_complex, %struct.Py_complex* %932, i32 1
  store %struct.Py_complex* %incdec.ptr937, %struct.Py_complex** %p889, align 8
  %933 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real938 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %933, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real938, align 8
  %934 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag939 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %934, i32 0, i32 1
  store double 0xC00921FB54442D18, double* %imag939, align 8
  %935 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr940 = getelementptr %struct.Py_complex, %struct.Py_complex* %935, i32 1
  store %struct.Py_complex* %incdec.ptr940, %struct.Py_complex** %p889, align 8
  %936 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real941 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %936, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real941, align 8
  %937 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag942 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %937, i32 0, i32 1
  store double 0x400921FB54442D18, double* %imag942, align 8
  %938 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr943 = getelementptr %struct.Py_complex, %struct.Py_complex* %938, i32 1
  store %struct.Py_complex* %incdec.ptr943, %struct.Py_complex** %p889, align 8
  %939 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real944 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %939, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real944, align 8
  %940 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag945 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %940, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag945, align 8
  %941 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr946 = getelementptr %struct.Py_complex, %struct.Py_complex* %941, i32 1
  store %struct.Py_complex* %incdec.ptr946, %struct.Py_complex** %p889, align 8
  %942 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real947 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %942, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real947, align 8
  %943 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag948 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %943, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag948, align 8
  %944 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr949 = getelementptr %struct.Py_complex, %struct.Py_complex* %944, i32 1
  store %struct.Py_complex* %incdec.ptr949, %struct.Py_complex** %p889, align 8
  %945 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real950 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %945, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real950, align 8
  %946 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag951 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %946, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag951, align 8
  %947 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr952 = getelementptr %struct.Py_complex, %struct.Py_complex* %947, i32 1
  store %struct.Py_complex* %incdec.ptr952, %struct.Py_complex** %p889, align 8
  %948 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real953 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %948, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real953, align 8
  %949 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag954 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %949, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag954, align 8
  %950 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr955 = getelementptr %struct.Py_complex, %struct.Py_complex* %950, i32 1
  store %struct.Py_complex* %incdec.ptr955, %struct.Py_complex** %p889, align 8
  %951 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real956 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %951, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real956, align 8
  %952 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag957 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %952, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag957, align 8
  %953 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr958 = getelementptr %struct.Py_complex, %struct.Py_complex* %953, i32 1
  store %struct.Py_complex* %incdec.ptr958, %struct.Py_complex** %p889, align 8
  %954 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real959 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %954, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real959, align 8
  %955 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag960 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %955, i32 0, i32 1
  store double -0.000000e+00, double* %imag960, align 8
  %956 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr961 = getelementptr %struct.Py_complex, %struct.Py_complex* %956, i32 1
  store %struct.Py_complex* %incdec.ptr961, %struct.Py_complex** %p889, align 8
  %957 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real962 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %957, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real962, align 8
  %958 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag963 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %958, i32 0, i32 1
  store double 0.000000e+00, double* %imag963, align 8
  %959 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr964 = getelementptr %struct.Py_complex, %struct.Py_complex* %959, i32 1
  store %struct.Py_complex* %incdec.ptr964, %struct.Py_complex** %p889, align 8
  %960 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real965 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %960, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real965, align 8
  %961 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag966 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %961, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag966, align 8
  %962 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr967 = getelementptr %struct.Py_complex, %struct.Py_complex* %962, i32 1
  store %struct.Py_complex* %incdec.ptr967, %struct.Py_complex** %p889, align 8
  %963 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real968 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %963, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real968, align 8
  %964 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag969 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %964, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag969, align 8
  %965 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr970 = getelementptr %struct.Py_complex, %struct.Py_complex* %965, i32 1
  store %struct.Py_complex* %incdec.ptr970, %struct.Py_complex** %p889, align 8
  %966 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real971 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %966, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real971, align 8
  %967 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag972 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %967, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag972, align 8
  %968 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr973 = getelementptr %struct.Py_complex, %struct.Py_complex* %968, i32 1
  store %struct.Py_complex* %incdec.ptr973, %struct.Py_complex** %p889, align 8
  %969 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real974 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %969, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real974, align 8
  %970 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag975 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %970, i32 0, i32 1
  store double 0xBFF921FB54442D18, double* %imag975, align 8
  %971 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr976 = getelementptr %struct.Py_complex, %struct.Py_complex* %971, i32 1
  store %struct.Py_complex* %incdec.ptr976, %struct.Py_complex** %p889, align 8
  %972 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real977 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %972, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real977, align 8
  %973 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag978 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %973, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag978, align 8
  %974 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr979 = getelementptr %struct.Py_complex, %struct.Py_complex* %974, i32 1
  store %struct.Py_complex* %incdec.ptr979, %struct.Py_complex** %p889, align 8
  %975 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real980 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %975, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real980, align 8
  %976 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag981 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %976, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag981, align 8
  %977 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr982 = getelementptr %struct.Py_complex, %struct.Py_complex* %977, i32 1
  store %struct.Py_complex* %incdec.ptr982, %struct.Py_complex** %p889, align 8
  %978 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real983 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %978, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real983, align 8
  %979 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag984 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %979, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag984, align 8
  %980 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr985 = getelementptr %struct.Py_complex, %struct.Py_complex* %980, i32 1
  store %struct.Py_complex* %incdec.ptr985, %struct.Py_complex** %p889, align 8
  %981 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real986 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %981, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real986, align 8
  %982 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag987 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %982, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag987, align 8
  %983 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr988 = getelementptr %struct.Py_complex, %struct.Py_complex* %983, i32 1
  store %struct.Py_complex* %incdec.ptr988, %struct.Py_complex** %p889, align 8
  %984 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real989 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %984, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real989, align 8
  %985 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag990 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %985, i32 0, i32 1
  store double 0x3FF921FB54442D18, double* %imag990, align 8
  %986 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr991 = getelementptr %struct.Py_complex, %struct.Py_complex* %986, i32 1
  store %struct.Py_complex* %incdec.ptr991, %struct.Py_complex** %p889, align 8
  %987 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real992 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %987, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real992, align 8
  %988 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag993 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %988, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag993, align 8
  %989 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr994 = getelementptr %struct.Py_complex, %struct.Py_complex* %989, i32 1
  store %struct.Py_complex* %incdec.ptr994, %struct.Py_complex** %p889, align 8
  %990 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real995 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %990, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real995, align 8
  %991 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag996 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %991, i32 0, i32 1
  store double 0xBFE921FB54442D18, double* %imag996, align 8
  %992 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr997 = getelementptr %struct.Py_complex, %struct.Py_complex* %992, i32 1
  store %struct.Py_complex* %incdec.ptr997, %struct.Py_complex** %p889, align 8
  %993 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real998 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %993, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real998, align 8
  %994 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag999 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %994, i32 0, i32 1
  store double -0.000000e+00, double* %imag999, align 8
  %995 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1000 = getelementptr %struct.Py_complex, %struct.Py_complex* %995, i32 1
  store %struct.Py_complex* %incdec.ptr1000, %struct.Py_complex** %p889, align 8
  %996 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1001 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %996, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1001, align 8
  %997 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1002 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %997, i32 0, i32 1
  store double -0.000000e+00, double* %imag1002, align 8
  %998 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1003 = getelementptr %struct.Py_complex, %struct.Py_complex* %998, i32 1
  store %struct.Py_complex* %incdec.ptr1003, %struct.Py_complex** %p889, align 8
  %999 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1004 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %999, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1004, align 8
  %1000 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1005 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1000, i32 0, i32 1
  store double 0.000000e+00, double* %imag1005, align 8
  %1001 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1006 = getelementptr %struct.Py_complex, %struct.Py_complex* %1001, i32 1
  store %struct.Py_complex* %incdec.ptr1006, %struct.Py_complex** %p889, align 8
  %1002 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1007 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1002, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1007, align 8
  %1003 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1008 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1003, i32 0, i32 1
  store double 0.000000e+00, double* %imag1008, align 8
  %1004 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1009 = getelementptr %struct.Py_complex, %struct.Py_complex* %1004, i32 1
  store %struct.Py_complex* %incdec.ptr1009, %struct.Py_complex** %p889, align 8
  %1005 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1010 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1005, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1010, align 8
  %1006 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1011 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1006, i32 0, i32 1
  store double 0x3FE921FB54442D18, double* %imag1011, align 8
  %1007 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1012 = getelementptr %struct.Py_complex, %struct.Py_complex* %1007, i32 1
  store %struct.Py_complex* %incdec.ptr1012, %struct.Py_complex** %p889, align 8
  %1008 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1013 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1008, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1013, align 8
  %1009 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1014 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1009, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1014, align 8
  %1010 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1015 = getelementptr %struct.Py_complex, %struct.Py_complex* %1010, i32 1
  store %struct.Py_complex* %incdec.ptr1015, %struct.Py_complex** %p889, align 8
  %1011 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1016 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1011, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1016, align 8
  %1012 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1017 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1012, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1017, align 8
  %1013 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1018 = getelementptr %struct.Py_complex, %struct.Py_complex* %1013, i32 1
  store %struct.Py_complex* %incdec.ptr1018, %struct.Py_complex** %p889, align 8
  %1014 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1019 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1014, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1019, align 8
  %1015 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1020 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1015, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1020, align 8
  %1016 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1021 = getelementptr %struct.Py_complex, %struct.Py_complex* %1016, i32 1
  store %struct.Py_complex* %incdec.ptr1021, %struct.Py_complex** %p889, align 8
  %1017 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1022 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1017, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1022, align 8
  %1018 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1023 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1018, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1023, align 8
  %1019 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1024 = getelementptr %struct.Py_complex, %struct.Py_complex* %1019, i32 1
  store %struct.Py_complex* %incdec.ptr1024, %struct.Py_complex** %p889, align 8
  %1020 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1025 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1020, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1025, align 8
  %1021 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1026 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1021, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1026, align 8
  %1022 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1027 = getelementptr %struct.Py_complex, %struct.Py_complex* %1022, i32 1
  store %struct.Py_complex* %incdec.ptr1027, %struct.Py_complex** %p889, align 8
  %1023 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1028 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1023, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1028, align 8
  %1024 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1029 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1024, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1029, align 8
  %1025 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1030 = getelementptr %struct.Py_complex, %struct.Py_complex* %1025, i32 1
  store %struct.Py_complex* %incdec.ptr1030, %struct.Py_complex** %p889, align 8
  %1026 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1031 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1026, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1031, align 8
  %1027 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1032 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1027, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1032, align 8
  %1028 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1033 = getelementptr %struct.Py_complex, %struct.Py_complex* %1028, i32 1
  store %struct.Py_complex* %incdec.ptr1033, %struct.Py_complex** %p889, align 8
  %1029 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %real1034 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1029, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1034, align 8
  %1030 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %imag1035 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1030, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1035, align 8
  %1031 = load %struct.Py_complex*, %struct.Py_complex** %p889, align 8
  %incdec.ptr1036 = getelementptr %struct.Py_complex, %struct.Py_complex* %1031, i32 1
  store %struct.Py_complex* %incdec.ptr1036, %struct.Py_complex** %p889, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @sinh_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p1037, align 8
  %1032 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1038 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1032, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1038, align 8
  %1033 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1039 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1033, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1039, align 8
  %1034 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1040 = getelementptr %struct.Py_complex, %struct.Py_complex* %1034, i32 1
  store %struct.Py_complex* %incdec.ptr1040, %struct.Py_complex** %p1037, align 8
  %1035 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1041 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1035, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1041, align 8
  %1036 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1042 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1036, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1042, align 8
  %1037 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1043 = getelementptr %struct.Py_complex, %struct.Py_complex* %1037, i32 1
  store %struct.Py_complex* %incdec.ptr1043, %struct.Py_complex** %p1037, align 8
  %1038 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1044 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1038, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real1044, align 8
  %1039 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1045 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1039, i32 0, i32 1
  store double -0.000000e+00, double* %imag1045, align 8
  %1040 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1046 = getelementptr %struct.Py_complex, %struct.Py_complex* %1040, i32 1
  store %struct.Py_complex* %incdec.ptr1046, %struct.Py_complex** %p1037, align 8
  %1041 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1047 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1041, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real1047, align 8
  %1042 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1048 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1042, i32 0, i32 1
  store double 0.000000e+00, double* %imag1048, align 8
  %1043 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1049 = getelementptr %struct.Py_complex, %struct.Py_complex* %1043, i32 1
  store %struct.Py_complex* %incdec.ptr1049, %struct.Py_complex** %p1037, align 8
  %1044 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1050 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1044, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1050, align 8
  %1045 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1051 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1045, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1051, align 8
  %1046 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1052 = getelementptr %struct.Py_complex, %struct.Py_complex* %1046, i32 1
  store %struct.Py_complex* %incdec.ptr1052, %struct.Py_complex** %p1037, align 8
  %1047 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1053 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1047, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1053, align 8
  %1048 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1054 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1048, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1054, align 8
  %1049 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1055 = getelementptr %struct.Py_complex, %struct.Py_complex* %1049, i32 1
  store %struct.Py_complex* %incdec.ptr1055, %struct.Py_complex** %p1037, align 8
  %1050 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1056 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1050, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1056, align 8
  %1051 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1057 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1051, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1057, align 8
  %1052 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1058 = getelementptr %struct.Py_complex, %struct.Py_complex* %1052, i32 1
  store %struct.Py_complex* %incdec.ptr1058, %struct.Py_complex** %p1037, align 8
  %1053 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1059 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1053, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1059, align 8
  %1054 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1060 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1054, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1060, align 8
  %1055 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1061 = getelementptr %struct.Py_complex, %struct.Py_complex* %1055, i32 1
  store %struct.Py_complex* %incdec.ptr1061, %struct.Py_complex** %p1037, align 8
  %1056 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1062 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1056, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1062, align 8
  %1057 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1063 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1057, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1063, align 8
  %1058 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1064 = getelementptr %struct.Py_complex, %struct.Py_complex* %1058, i32 1
  store %struct.Py_complex* %incdec.ptr1064, %struct.Py_complex** %p1037, align 8
  %1059 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1065 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1059, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1065, align 8
  %1060 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1066 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1060, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1066, align 8
  %1061 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1067 = getelementptr %struct.Py_complex, %struct.Py_complex* %1061, i32 1
  store %struct.Py_complex* %incdec.ptr1067, %struct.Py_complex** %p1037, align 8
  %1062 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1068 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1062, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1068, align 8
  %1063 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1069 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1063, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1069, align 8
  %1064 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1070 = getelementptr %struct.Py_complex, %struct.Py_complex* %1064, i32 1
  store %struct.Py_complex* %incdec.ptr1070, %struct.Py_complex** %p1037, align 8
  %1065 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1071 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1065, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1071, align 8
  %1066 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1072 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1066, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1072, align 8
  %1067 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1073 = getelementptr %struct.Py_complex, %struct.Py_complex* %1067, i32 1
  store %struct.Py_complex* %incdec.ptr1073, %struct.Py_complex** %p1037, align 8
  %1068 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1074 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1068, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1074, align 8
  %1069 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1075 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1069, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1075, align 8
  %1070 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1076 = getelementptr %struct.Py_complex, %struct.Py_complex* %1070, i32 1
  store %struct.Py_complex* %incdec.ptr1076, %struct.Py_complex** %p1037, align 8
  %1071 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1077 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1071, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1077, align 8
  %1072 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1078 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1072, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1078, align 8
  %1073 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1079 = getelementptr %struct.Py_complex, %struct.Py_complex* %1073, i32 1
  store %struct.Py_complex* %incdec.ptr1079, %struct.Py_complex** %p1037, align 8
  %1074 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1080 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1074, i32 0, i32 0
  store double 0.000000e+00, double* %real1080, align 8
  %1075 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1081 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1075, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1081, align 8
  %1076 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1082 = getelementptr %struct.Py_complex, %struct.Py_complex* %1076, i32 1
  store %struct.Py_complex* %incdec.ptr1082, %struct.Py_complex** %p1037, align 8
  %1077 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1083 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1077, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1083, align 8
  %1078 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1084 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1078, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1084, align 8
  %1079 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1085 = getelementptr %struct.Py_complex, %struct.Py_complex* %1079, i32 1
  store %struct.Py_complex* %incdec.ptr1085, %struct.Py_complex** %p1037, align 8
  %1080 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1086 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1080, i32 0, i32 0
  store double -0.000000e+00, double* %real1086, align 8
  %1081 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1087 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1081, i32 0, i32 1
  store double -0.000000e+00, double* %imag1087, align 8
  %1082 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1088 = getelementptr %struct.Py_complex, %struct.Py_complex* %1082, i32 1
  store %struct.Py_complex* %incdec.ptr1088, %struct.Py_complex** %p1037, align 8
  %1083 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1089 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1083, i32 0, i32 0
  store double -0.000000e+00, double* %real1089, align 8
  %1084 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1090 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1084, i32 0, i32 1
  store double 0.000000e+00, double* %imag1090, align 8
  %1085 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1091 = getelementptr %struct.Py_complex, %struct.Py_complex* %1085, i32 1
  store %struct.Py_complex* %incdec.ptr1091, %struct.Py_complex** %p1037, align 8
  %1086 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1092 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1086, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1092, align 8
  %1087 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1093 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1087, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1093, align 8
  %1088 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1094 = getelementptr %struct.Py_complex, %struct.Py_complex* %1088, i32 1
  store %struct.Py_complex* %incdec.ptr1094, %struct.Py_complex** %p1037, align 8
  %1089 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1095 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1089, i32 0, i32 0
  store double 0.000000e+00, double* %real1095, align 8
  %1090 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1096 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1090, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1096, align 8
  %1091 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1097 = getelementptr %struct.Py_complex, %struct.Py_complex* %1091, i32 1
  store %struct.Py_complex* %incdec.ptr1097, %struct.Py_complex** %p1037, align 8
  %1092 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1098 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1092, i32 0, i32 0
  store double 0.000000e+00, double* %real1098, align 8
  %1093 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1099 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1093, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1099, align 8
  %1094 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1100 = getelementptr %struct.Py_complex, %struct.Py_complex* %1094, i32 1
  store %struct.Py_complex* %incdec.ptr1100, %struct.Py_complex** %p1037, align 8
  %1095 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1101 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1095, i32 0, i32 0
  store double 0.000000e+00, double* %real1101, align 8
  %1096 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1102 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1096, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1102, align 8
  %1097 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1103 = getelementptr %struct.Py_complex, %struct.Py_complex* %1097, i32 1
  store %struct.Py_complex* %incdec.ptr1103, %struct.Py_complex** %p1037, align 8
  %1098 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1104 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1098, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1104, align 8
  %1099 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1105 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1099, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1105, align 8
  %1100 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1106 = getelementptr %struct.Py_complex, %struct.Py_complex* %1100, i32 1
  store %struct.Py_complex* %incdec.ptr1106, %struct.Py_complex** %p1037, align 8
  %1101 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1107 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1101, i32 0, i32 0
  store double 0.000000e+00, double* %real1107, align 8
  %1102 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1108 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1102, i32 0, i32 1
  store double -0.000000e+00, double* %imag1108, align 8
  %1103 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1109 = getelementptr %struct.Py_complex, %struct.Py_complex* %1103, i32 1
  store %struct.Py_complex* %incdec.ptr1109, %struct.Py_complex** %p1037, align 8
  %1104 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1110 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1104, i32 0, i32 0
  store double 0.000000e+00, double* %real1110, align 8
  %1105 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1111 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1105, i32 0, i32 1
  store double 0.000000e+00, double* %imag1111, align 8
  %1106 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1112 = getelementptr %struct.Py_complex, %struct.Py_complex* %1106, i32 1
  store %struct.Py_complex* %incdec.ptr1112, %struct.Py_complex** %p1037, align 8
  %1107 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1113 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1107, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1113, align 8
  %1108 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1114 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1108, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1114, align 8
  %1109 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1115 = getelementptr %struct.Py_complex, %struct.Py_complex* %1109, i32 1
  store %struct.Py_complex* %incdec.ptr1115, %struct.Py_complex** %p1037, align 8
  %1110 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1116 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1110, i32 0, i32 0
  store double 0.000000e+00, double* %real1116, align 8
  %1111 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1117 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1111, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1117, align 8
  %1112 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1118 = getelementptr %struct.Py_complex, %struct.Py_complex* %1112, i32 1
  store %struct.Py_complex* %incdec.ptr1118, %struct.Py_complex** %p1037, align 8
  %1113 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1119 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1113, i32 0, i32 0
  store double 0.000000e+00, double* %real1119, align 8
  %1114 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1120 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1114, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1120, align 8
  %1115 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1121 = getelementptr %struct.Py_complex, %struct.Py_complex* %1115, i32 1
  store %struct.Py_complex* %incdec.ptr1121, %struct.Py_complex** %p1037, align 8
  %1116 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1122 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1116, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1122, align 8
  %1117 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1123 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1117, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1123, align 8
  %1118 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1124 = getelementptr %struct.Py_complex, %struct.Py_complex* %1118, i32 1
  store %struct.Py_complex* %incdec.ptr1124, %struct.Py_complex** %p1037, align 8
  %1119 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1125 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1119, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1125, align 8
  %1120 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1126 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1120, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1126, align 8
  %1121 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1127 = getelementptr %struct.Py_complex, %struct.Py_complex* %1121, i32 1
  store %struct.Py_complex* %incdec.ptr1127, %struct.Py_complex** %p1037, align 8
  %1122 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1128 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1122, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1128, align 8
  %1123 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1129 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1123, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1129, align 8
  %1124 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1130 = getelementptr %struct.Py_complex, %struct.Py_complex* %1124, i32 1
  store %struct.Py_complex* %incdec.ptr1130, %struct.Py_complex** %p1037, align 8
  %1125 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1131 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1125, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1131, align 8
  %1126 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1132 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1126, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1132, align 8
  %1127 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1133 = getelementptr %struct.Py_complex, %struct.Py_complex* %1127, i32 1
  store %struct.Py_complex* %incdec.ptr1133, %struct.Py_complex** %p1037, align 8
  %1128 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1134 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1128, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1134, align 8
  %1129 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1135 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1129, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1135, align 8
  %1130 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1136 = getelementptr %struct.Py_complex, %struct.Py_complex* %1130, i32 1
  store %struct.Py_complex* %incdec.ptr1136, %struct.Py_complex** %p1037, align 8
  %1131 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1137 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1131, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1137, align 8
  %1132 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1138 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1132, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1138, align 8
  %1133 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1139 = getelementptr %struct.Py_complex, %struct.Py_complex* %1133, i32 1
  store %struct.Py_complex* %incdec.ptr1139, %struct.Py_complex** %p1037, align 8
  %1134 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1140 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1134, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1140, align 8
  %1135 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1141 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1135, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1141, align 8
  %1136 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1142 = getelementptr %struct.Py_complex, %struct.Py_complex* %1136, i32 1
  store %struct.Py_complex* %incdec.ptr1142, %struct.Py_complex** %p1037, align 8
  %1137 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1143 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1137, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1143, align 8
  %1138 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1144 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1138, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1144, align 8
  %1139 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1145 = getelementptr %struct.Py_complex, %struct.Py_complex* %1139, i32 1
  store %struct.Py_complex* %incdec.ptr1145, %struct.Py_complex** %p1037, align 8
  %1140 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1146 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1140, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1146, align 8
  %1141 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1147 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1141, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1147, align 8
  %1142 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1148 = getelementptr %struct.Py_complex, %struct.Py_complex* %1142, i32 1
  store %struct.Py_complex* %incdec.ptr1148, %struct.Py_complex** %p1037, align 8
  %1143 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1149 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1143, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1149, align 8
  %1144 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1150 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1144, i32 0, i32 1
  store double -0.000000e+00, double* %imag1150, align 8
  %1145 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1151 = getelementptr %struct.Py_complex, %struct.Py_complex* %1145, i32 1
  store %struct.Py_complex* %incdec.ptr1151, %struct.Py_complex** %p1037, align 8
  %1146 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1152 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1146, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1152, align 8
  %1147 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1153 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1147, i32 0, i32 1
  store double 0.000000e+00, double* %imag1153, align 8
  %1148 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1154 = getelementptr %struct.Py_complex, %struct.Py_complex* %1148, i32 1
  store %struct.Py_complex* %incdec.ptr1154, %struct.Py_complex** %p1037, align 8
  %1149 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1155 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1149, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1155, align 8
  %1150 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1156 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1150, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1156, align 8
  %1151 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1157 = getelementptr %struct.Py_complex, %struct.Py_complex* %1151, i32 1
  store %struct.Py_complex* %incdec.ptr1157, %struct.Py_complex** %p1037, align 8
  %1152 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1158 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1152, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1158, align 8
  %1153 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1159 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1153, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1159, align 8
  %1154 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1160 = getelementptr %struct.Py_complex, %struct.Py_complex* %1154, i32 1
  store %struct.Py_complex* %incdec.ptr1160, %struct.Py_complex** %p1037, align 8
  %1155 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1161 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1155, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1161, align 8
  %1156 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1162 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1156, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1162, align 8
  %1157 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1163 = getelementptr %struct.Py_complex, %struct.Py_complex* %1157, i32 1
  store %struct.Py_complex* %incdec.ptr1163, %struct.Py_complex** %p1037, align 8
  %1158 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1164 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1158, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1164, align 8
  %1159 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1165 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1159, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1165, align 8
  %1160 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1166 = getelementptr %struct.Py_complex, %struct.Py_complex* %1160, i32 1
  store %struct.Py_complex* %incdec.ptr1166, %struct.Py_complex** %p1037, align 8
  %1161 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1167 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1161, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1167, align 8
  %1162 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1168 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1162, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1168, align 8
  %1163 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1169 = getelementptr %struct.Py_complex, %struct.Py_complex* %1163, i32 1
  store %struct.Py_complex* %incdec.ptr1169, %struct.Py_complex** %p1037, align 8
  %1164 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1170 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1164, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1170, align 8
  %1165 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1171 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1165, i32 0, i32 1
  store double -0.000000e+00, double* %imag1171, align 8
  %1166 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1172 = getelementptr %struct.Py_complex, %struct.Py_complex* %1166, i32 1
  store %struct.Py_complex* %incdec.ptr1172, %struct.Py_complex** %p1037, align 8
  %1167 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1173 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1167, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1173, align 8
  %1168 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1174 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1168, i32 0, i32 1
  store double 0.000000e+00, double* %imag1174, align 8
  %1169 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1175 = getelementptr %struct.Py_complex, %struct.Py_complex* %1169, i32 1
  store %struct.Py_complex* %incdec.ptr1175, %struct.Py_complex** %p1037, align 8
  %1170 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1176 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1170, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1176, align 8
  %1171 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1177 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1171, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1177, align 8
  %1172 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1178 = getelementptr %struct.Py_complex, %struct.Py_complex* %1172, i32 1
  store %struct.Py_complex* %incdec.ptr1178, %struct.Py_complex** %p1037, align 8
  %1173 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1179 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1173, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1179, align 8
  %1174 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1180 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1174, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1180, align 8
  %1175 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1181 = getelementptr %struct.Py_complex, %struct.Py_complex* %1175, i32 1
  store %struct.Py_complex* %incdec.ptr1181, %struct.Py_complex** %p1037, align 8
  %1176 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %real1182 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1176, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1182, align 8
  %1177 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %imag1183 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1177, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1183, align 8
  %1178 = load %struct.Py_complex*, %struct.Py_complex** %p1037, align 8
  %incdec.ptr1184 = getelementptr %struct.Py_complex, %struct.Py_complex* %1178, i32 1
  store %struct.Py_complex* %incdec.ptr1184, %struct.Py_complex** %p1037, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @sqrt_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p1185, align 8
  %1179 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1186 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1179, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1186, align 8
  %1180 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1187 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1180, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag1187, align 8
  %1181 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1188 = getelementptr %struct.Py_complex, %struct.Py_complex* %1181, i32 1
  store %struct.Py_complex* %incdec.ptr1188, %struct.Py_complex** %p1185, align 8
  %1182 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1189 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1182, i32 0, i32 0
  store double 0.000000e+00, double* %real1189, align 8
  %1183 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1190 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1183, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag1190, align 8
  %1184 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1191 = getelementptr %struct.Py_complex, %struct.Py_complex* %1184, i32 1
  store %struct.Py_complex* %incdec.ptr1191, %struct.Py_complex** %p1185, align 8
  %1185 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1192 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1185, i32 0, i32 0
  store double 0.000000e+00, double* %real1192, align 8
  %1186 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1193 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1186, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag1193, align 8
  %1187 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1194 = getelementptr %struct.Py_complex, %struct.Py_complex* %1187, i32 1
  store %struct.Py_complex* %incdec.ptr1194, %struct.Py_complex** %p1185, align 8
  %1188 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1195 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1188, i32 0, i32 0
  store double 0.000000e+00, double* %real1195, align 8
  %1189 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1196 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1189, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1196, align 8
  %1190 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1197 = getelementptr %struct.Py_complex, %struct.Py_complex* %1190, i32 1
  store %struct.Py_complex* %incdec.ptr1197, %struct.Py_complex** %p1185, align 8
  %1191 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1198 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1191, i32 0, i32 0
  store double 0.000000e+00, double* %real1198, align 8
  %1192 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1199 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1192, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1199, align 8
  %1193 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1200 = getelementptr %struct.Py_complex, %struct.Py_complex* %1193, i32 1
  store %struct.Py_complex* %incdec.ptr1200, %struct.Py_complex** %p1185, align 8
  %1194 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1201 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1194, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1201, align 8
  %1195 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1202 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1195, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1202, align 8
  %1196 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1203 = getelementptr %struct.Py_complex, %struct.Py_complex* %1196, i32 1
  store %struct.Py_complex* %incdec.ptr1203, %struct.Py_complex** %p1185, align 8
  %1197 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1204 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1197, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1204, align 8
  %1198 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1205 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1198, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1205, align 8
  %1199 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1206 = getelementptr %struct.Py_complex, %struct.Py_complex* %1199, i32 1
  store %struct.Py_complex* %incdec.ptr1206, %struct.Py_complex** %p1185, align 8
  %1200 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1207 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1200, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1207, align 8
  %1201 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1208 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1201, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag1208, align 8
  %1202 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1209 = getelementptr %struct.Py_complex, %struct.Py_complex* %1202, i32 1
  store %struct.Py_complex* %incdec.ptr1209, %struct.Py_complex** %p1185, align 8
  %1203 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1210 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1203, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1210, align 8
  %1204 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1211 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1204, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1211, align 8
  %1205 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1212 = getelementptr %struct.Py_complex, %struct.Py_complex* %1205, i32 1
  store %struct.Py_complex* %incdec.ptr1212, %struct.Py_complex** %p1185, align 8
  %1206 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1213 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1206, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1213, align 8
  %1207 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1214 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1207, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1214, align 8
  %1208 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1215 = getelementptr %struct.Py_complex, %struct.Py_complex* %1208, i32 1
  store %struct.Py_complex* %incdec.ptr1215, %struct.Py_complex** %p1185, align 8
  %1209 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1216 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1209, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1216, align 8
  %1210 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1217 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1210, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1217, align 8
  %1211 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1218 = getelementptr %struct.Py_complex, %struct.Py_complex* %1211, i32 1
  store %struct.Py_complex* %incdec.ptr1218, %struct.Py_complex** %p1185, align 8
  %1212 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1219 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1212, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1219, align 8
  %1213 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1220 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1213, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1220, align 8
  %1214 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1221 = getelementptr %struct.Py_complex, %struct.Py_complex* %1214, i32 1
  store %struct.Py_complex* %incdec.ptr1221, %struct.Py_complex** %p1185, align 8
  %1215 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1222 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1215, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1222, align 8
  %1216 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1223 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1216, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1223, align 8
  %1217 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1224 = getelementptr %struct.Py_complex, %struct.Py_complex* %1217, i32 1
  store %struct.Py_complex* %incdec.ptr1224, %struct.Py_complex** %p1185, align 8
  %1218 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1225 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1218, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1225, align 8
  %1219 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1226 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1219, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1226, align 8
  %1220 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1227 = getelementptr %struct.Py_complex, %struct.Py_complex* %1220, i32 1
  store %struct.Py_complex* %incdec.ptr1227, %struct.Py_complex** %p1185, align 8
  %1221 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1228 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1221, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1228, align 8
  %1222 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1229 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1222, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag1229, align 8
  %1223 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1230 = getelementptr %struct.Py_complex, %struct.Py_complex* %1223, i32 1
  store %struct.Py_complex* %incdec.ptr1230, %struct.Py_complex** %p1185, align 8
  %1224 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1231 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1224, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1231, align 8
  %1225 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1232 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1225, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1232, align 8
  %1226 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1233 = getelementptr %struct.Py_complex, %struct.Py_complex* %1226, i32 1
  store %struct.Py_complex* %incdec.ptr1233, %struct.Py_complex** %p1185, align 8
  %1227 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1234 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1227, i32 0, i32 0
  store double 0.000000e+00, double* %real1234, align 8
  %1228 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1235 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1228, i32 0, i32 1
  store double -0.000000e+00, double* %imag1235, align 8
  %1229 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1236 = getelementptr %struct.Py_complex, %struct.Py_complex* %1229, i32 1
  store %struct.Py_complex* %incdec.ptr1236, %struct.Py_complex** %p1185, align 8
  %1230 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1237 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1230, i32 0, i32 0
  store double 0.000000e+00, double* %real1237, align 8
  %1231 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1238 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1231, i32 0, i32 1
  store double 0.000000e+00, double* %imag1238, align 8
  %1232 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1239 = getelementptr %struct.Py_complex, %struct.Py_complex* %1232, i32 1
  store %struct.Py_complex* %incdec.ptr1239, %struct.Py_complex** %p1185, align 8
  %1233 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1240 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1233, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1240, align 8
  %1234 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1241 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1234, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1241, align 8
  %1235 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1242 = getelementptr %struct.Py_complex, %struct.Py_complex* %1235, i32 1
  store %struct.Py_complex* %incdec.ptr1242, %struct.Py_complex** %p1185, align 8
  %1236 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1243 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1236, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1243, align 8
  %1237 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1244 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1237, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1244, align 8
  %1238 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1245 = getelementptr %struct.Py_complex, %struct.Py_complex* %1238, i32 1
  store %struct.Py_complex* %incdec.ptr1245, %struct.Py_complex** %p1185, align 8
  %1239 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1246 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1239, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1246, align 8
  %1240 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1247 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1240, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1247, align 8
  %1241 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1248 = getelementptr %struct.Py_complex, %struct.Py_complex* %1241, i32 1
  store %struct.Py_complex* %incdec.ptr1248, %struct.Py_complex** %p1185, align 8
  %1242 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1249 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1242, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1249, align 8
  %1243 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1250 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1243, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag1250, align 8
  %1244 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1251 = getelementptr %struct.Py_complex, %struct.Py_complex* %1244, i32 1
  store %struct.Py_complex* %incdec.ptr1251, %struct.Py_complex** %p1185, align 8
  %1245 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1252 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1245, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1252, align 8
  %1246 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1253 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1246, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1253, align 8
  %1247 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1254 = getelementptr %struct.Py_complex, %struct.Py_complex* %1247, i32 1
  store %struct.Py_complex* %incdec.ptr1254, %struct.Py_complex** %p1185, align 8
  %1248 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1255 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1248, i32 0, i32 0
  store double 0.000000e+00, double* %real1255, align 8
  %1249 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1256 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1249, i32 0, i32 1
  store double -0.000000e+00, double* %imag1256, align 8
  %1250 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1257 = getelementptr %struct.Py_complex, %struct.Py_complex* %1250, i32 1
  store %struct.Py_complex* %incdec.ptr1257, %struct.Py_complex** %p1185, align 8
  %1251 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1258 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1251, i32 0, i32 0
  store double 0.000000e+00, double* %real1258, align 8
  %1252 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1259 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1252, i32 0, i32 1
  store double 0.000000e+00, double* %imag1259, align 8
  %1253 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1260 = getelementptr %struct.Py_complex, %struct.Py_complex* %1253, i32 1
  store %struct.Py_complex* %incdec.ptr1260, %struct.Py_complex** %p1185, align 8
  %1254 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1261 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1254, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1261, align 8
  %1255 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1262 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1255, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1262, align 8
  %1256 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1263 = getelementptr %struct.Py_complex, %struct.Py_complex* %1256, i32 1
  store %struct.Py_complex* %incdec.ptr1263, %struct.Py_complex** %p1185, align 8
  %1257 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1264 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1257, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1264, align 8
  %1258 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1265 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1258, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1265, align 8
  %1259 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1266 = getelementptr %struct.Py_complex, %struct.Py_complex* %1259, i32 1
  store %struct.Py_complex* %incdec.ptr1266, %struct.Py_complex** %p1185, align 8
  %1260 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1267 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1260, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1267, align 8
  %1261 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1268 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1261, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1268, align 8
  %1262 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1269 = getelementptr %struct.Py_complex, %struct.Py_complex* %1262, i32 1
  store %struct.Py_complex* %incdec.ptr1269, %struct.Py_complex** %p1185, align 8
  %1263 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1270 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1263, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1270, align 8
  %1264 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1271 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1264, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag1271, align 8
  %1265 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1272 = getelementptr %struct.Py_complex, %struct.Py_complex* %1265, i32 1
  store %struct.Py_complex* %incdec.ptr1272, %struct.Py_complex** %p1185, align 8
  %1266 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1273 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1266, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1273, align 8
  %1267 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1274 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1267, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1274, align 8
  %1268 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1275 = getelementptr %struct.Py_complex, %struct.Py_complex* %1268, i32 1
  store %struct.Py_complex* %incdec.ptr1275, %struct.Py_complex** %p1185, align 8
  %1269 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1276 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1269, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1276, align 8
  %1270 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1277 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1270, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1277, align 8
  %1271 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1278 = getelementptr %struct.Py_complex, %struct.Py_complex* %1271, i32 1
  store %struct.Py_complex* %incdec.ptr1278, %struct.Py_complex** %p1185, align 8
  %1272 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1279 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1272, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1279, align 8
  %1273 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1280 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1273, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1280, align 8
  %1274 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1281 = getelementptr %struct.Py_complex, %struct.Py_complex* %1274, i32 1
  store %struct.Py_complex* %incdec.ptr1281, %struct.Py_complex** %p1185, align 8
  %1275 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1282 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1275, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1282, align 8
  %1276 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1283 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1276, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1283, align 8
  %1277 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1284 = getelementptr %struct.Py_complex, %struct.Py_complex* %1277, i32 1
  store %struct.Py_complex* %incdec.ptr1284, %struct.Py_complex** %p1185, align 8
  %1278 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1285 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1278, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1285, align 8
  %1279 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1286 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1279, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1286, align 8
  %1280 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1287 = getelementptr %struct.Py_complex, %struct.Py_complex* %1280, i32 1
  store %struct.Py_complex* %incdec.ptr1287, %struct.Py_complex** %p1185, align 8
  %1281 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1288 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1281, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1288, align 8
  %1282 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1289 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1282, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1289, align 8
  %1283 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1290 = getelementptr %struct.Py_complex, %struct.Py_complex* %1283, i32 1
  store %struct.Py_complex* %incdec.ptr1290, %struct.Py_complex** %p1185, align 8
  %1284 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1291 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1284, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1291, align 8
  %1285 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1292 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1285, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag1292, align 8
  %1286 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1293 = getelementptr %struct.Py_complex, %struct.Py_complex* %1286, i32 1
  store %struct.Py_complex* %incdec.ptr1293, %struct.Py_complex** %p1185, align 8
  %1287 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1294 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1287, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1294, align 8
  %1288 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1295 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1288, i32 0, i32 1
  store double -0.000000e+00, double* %imag1295, align 8
  %1289 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1296 = getelementptr %struct.Py_complex, %struct.Py_complex* %1289, i32 1
  store %struct.Py_complex* %incdec.ptr1296, %struct.Py_complex** %p1185, align 8
  %1290 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1297 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1290, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1297, align 8
  %1291 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1298 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1291, i32 0, i32 1
  store double -0.000000e+00, double* %imag1298, align 8
  %1292 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1299 = getelementptr %struct.Py_complex, %struct.Py_complex* %1292, i32 1
  store %struct.Py_complex* %incdec.ptr1299, %struct.Py_complex** %p1185, align 8
  %1293 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1300 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1293, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1300, align 8
  %1294 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1301 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1294, i32 0, i32 1
  store double 0.000000e+00, double* %imag1301, align 8
  %1295 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1302 = getelementptr %struct.Py_complex, %struct.Py_complex* %1295, i32 1
  store %struct.Py_complex* %incdec.ptr1302, %struct.Py_complex** %p1185, align 8
  %1296 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1303 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1296, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1303, align 8
  %1297 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1304 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1297, i32 0, i32 1
  store double 0.000000e+00, double* %imag1304, align 8
  %1298 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1305 = getelementptr %struct.Py_complex, %struct.Py_complex* %1298, i32 1
  store %struct.Py_complex* %incdec.ptr1305, %struct.Py_complex** %p1185, align 8
  %1299 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1306 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1299, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1306, align 8
  %1300 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1307 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1300, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1307, align 8
  %1301 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1308 = getelementptr %struct.Py_complex, %struct.Py_complex* %1301, i32 1
  store %struct.Py_complex* %incdec.ptr1308, %struct.Py_complex** %p1185, align 8
  %1302 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1309 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1302, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1309, align 8
  %1303 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1310 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1303, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1310, align 8
  %1304 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1311 = getelementptr %struct.Py_complex, %struct.Py_complex* %1304, i32 1
  store %struct.Py_complex* %incdec.ptr1311, %struct.Py_complex** %p1185, align 8
  %1305 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1312 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1305, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1312, align 8
  %1306 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1313 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1306, i32 0, i32 1
  store double 0xFFF0000000000000, double* %imag1313, align 8
  %1307 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1314 = getelementptr %struct.Py_complex, %struct.Py_complex* %1307, i32 1
  store %struct.Py_complex* %incdec.ptr1314, %struct.Py_complex** %p1185, align 8
  %1308 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1315 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1308, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1315, align 8
  %1309 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1316 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1309, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1316, align 8
  %1310 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1317 = getelementptr %struct.Py_complex, %struct.Py_complex* %1310, i32 1
  store %struct.Py_complex* %incdec.ptr1317, %struct.Py_complex** %p1185, align 8
  %1311 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1318 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1311, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1318, align 8
  %1312 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1319 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1312, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1319, align 8
  %1313 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1320 = getelementptr %struct.Py_complex, %struct.Py_complex* %1313, i32 1
  store %struct.Py_complex* %incdec.ptr1320, %struct.Py_complex** %p1185, align 8
  %1314 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1321 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1314, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1321, align 8
  %1315 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1322 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1315, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1322, align 8
  %1316 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1323 = getelementptr %struct.Py_complex, %struct.Py_complex* %1316, i32 1
  store %struct.Py_complex* %incdec.ptr1323, %struct.Py_complex** %p1185, align 8
  %1317 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1324 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1317, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1324, align 8
  %1318 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1325 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1318, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1325, align 8
  %1319 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1326 = getelementptr %struct.Py_complex, %struct.Py_complex* %1319, i32 1
  store %struct.Py_complex* %incdec.ptr1326, %struct.Py_complex** %p1185, align 8
  %1320 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1327 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1320, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1327, align 8
  %1321 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1328 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1321, i32 0, i32 1
  store double 0x7FF0000000000000, double* %imag1328, align 8
  %1322 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1329 = getelementptr %struct.Py_complex, %struct.Py_complex* %1322, i32 1
  store %struct.Py_complex* %incdec.ptr1329, %struct.Py_complex** %p1185, align 8
  %1323 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %real1330 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1323, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1330, align 8
  %1324 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %imag1331 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1324, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1331, align 8
  %1325 = load %struct.Py_complex*, %struct.Py_complex** %p1185, align 8
  %incdec.ptr1332 = getelementptr %struct.Py_complex, %struct.Py_complex* %1325, i32 1
  store %struct.Py_complex* %incdec.ptr1332, %struct.Py_complex** %p1185, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @tanh_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p1333, align 8
  %1326 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1334 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1326, i32 0, i32 0
  store double -1.000000e+00, double* %real1334, align 8
  %1327 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1335 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1327, i32 0, i32 1
  store double 0.000000e+00, double* %imag1335, align 8
  %1328 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1336 = getelementptr %struct.Py_complex, %struct.Py_complex* %1328, i32 1
  store %struct.Py_complex* %incdec.ptr1336, %struct.Py_complex** %p1333, align 8
  %1329 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1337 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1329, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1337, align 8
  %1330 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1338 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1330, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1338, align 8
  %1331 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1339 = getelementptr %struct.Py_complex, %struct.Py_complex* %1331, i32 1
  store %struct.Py_complex* %incdec.ptr1339, %struct.Py_complex** %p1333, align 8
  %1332 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1340 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1332, i32 0, i32 0
  store double -1.000000e+00, double* %real1340, align 8
  %1333 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1341 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1333, i32 0, i32 1
  store double -0.000000e+00, double* %imag1341, align 8
  %1334 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1342 = getelementptr %struct.Py_complex, %struct.Py_complex* %1334, i32 1
  store %struct.Py_complex* %incdec.ptr1342, %struct.Py_complex** %p1333, align 8
  %1335 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1343 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1335, i32 0, i32 0
  store double -1.000000e+00, double* %real1343, align 8
  %1336 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1344 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1336, i32 0, i32 1
  store double 0.000000e+00, double* %imag1344, align 8
  %1337 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1345 = getelementptr %struct.Py_complex, %struct.Py_complex* %1337, i32 1
  store %struct.Py_complex* %incdec.ptr1345, %struct.Py_complex** %p1333, align 8
  %1338 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1346 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1338, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1346, align 8
  %1339 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1347 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1339, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1347, align 8
  %1340 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1348 = getelementptr %struct.Py_complex, %struct.Py_complex* %1340, i32 1
  store %struct.Py_complex* %incdec.ptr1348, %struct.Py_complex** %p1333, align 8
  %1341 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1349 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1341, i32 0, i32 0
  store double -1.000000e+00, double* %real1349, align 8
  %1342 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1350 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1342, i32 0, i32 1
  store double 0.000000e+00, double* %imag1350, align 8
  %1343 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1351 = getelementptr %struct.Py_complex, %struct.Py_complex* %1343, i32 1
  store %struct.Py_complex* %incdec.ptr1351, %struct.Py_complex** %p1333, align 8
  %1344 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1352 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1344, i32 0, i32 0
  store double -1.000000e+00, double* %real1352, align 8
  %1345 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1353 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1345, i32 0, i32 1
  store double 0.000000e+00, double* %imag1353, align 8
  %1346 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1354 = getelementptr %struct.Py_complex, %struct.Py_complex* %1346, i32 1
  store %struct.Py_complex* %incdec.ptr1354, %struct.Py_complex** %p1333, align 8
  %1347 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1355 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1347, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1355, align 8
  %1348 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1356 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1348, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1356, align 8
  %1349 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1357 = getelementptr %struct.Py_complex, %struct.Py_complex* %1349, i32 1
  store %struct.Py_complex* %incdec.ptr1357, %struct.Py_complex** %p1333, align 8
  %1350 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1358 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1350, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1358, align 8
  %1351 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1359 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1351, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1359, align 8
  %1352 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1360 = getelementptr %struct.Py_complex, %struct.Py_complex* %1352, i32 1
  store %struct.Py_complex* %incdec.ptr1360, %struct.Py_complex** %p1333, align 8
  %1353 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1361 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1353, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1361, align 8
  %1354 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1362 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1354, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1362, align 8
  %1355 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1363 = getelementptr %struct.Py_complex, %struct.Py_complex* %1355, i32 1
  store %struct.Py_complex* %incdec.ptr1363, %struct.Py_complex** %p1333, align 8
  %1356 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1364 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1356, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1364, align 8
  %1357 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1365 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1357, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1365, align 8
  %1358 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1366 = getelementptr %struct.Py_complex, %struct.Py_complex* %1358, i32 1
  store %struct.Py_complex* %incdec.ptr1366, %struct.Py_complex** %p1333, align 8
  %1359 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1367 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1359, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1367, align 8
  %1360 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1368 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1360, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1368, align 8
  %1361 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1369 = getelementptr %struct.Py_complex, %struct.Py_complex* %1361, i32 1
  store %struct.Py_complex* %incdec.ptr1369, %struct.Py_complex** %p1333, align 8
  %1362 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1370 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1362, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1370, align 8
  %1363 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1371 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1363, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1371, align 8
  %1364 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1372 = getelementptr %struct.Py_complex, %struct.Py_complex* %1364, i32 1
  store %struct.Py_complex* %incdec.ptr1372, %struct.Py_complex** %p1333, align 8
  %1365 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1373 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1365, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1373, align 8
  %1366 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1374 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1366, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1374, align 8
  %1367 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1375 = getelementptr %struct.Py_complex, %struct.Py_complex* %1367, i32 1
  store %struct.Py_complex* %incdec.ptr1375, %struct.Py_complex** %p1333, align 8
  %1368 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1376 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1368, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1376, align 8
  %1369 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1377 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1369, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1377, align 8
  %1370 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1378 = getelementptr %struct.Py_complex, %struct.Py_complex* %1370, i32 1
  store %struct.Py_complex* %incdec.ptr1378, %struct.Py_complex** %p1333, align 8
  %1371 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1379 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1371, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1379, align 8
  %1372 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1380 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1372, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1380, align 8
  %1373 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1381 = getelementptr %struct.Py_complex, %struct.Py_complex* %1373, i32 1
  store %struct.Py_complex* %incdec.ptr1381, %struct.Py_complex** %p1333, align 8
  %1374 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1382 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1374, i32 0, i32 0
  store double -0.000000e+00, double* %real1382, align 8
  %1375 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1383 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1375, i32 0, i32 1
  store double -0.000000e+00, double* %imag1383, align 8
  %1376 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1384 = getelementptr %struct.Py_complex, %struct.Py_complex* %1376, i32 1
  store %struct.Py_complex* %incdec.ptr1384, %struct.Py_complex** %p1333, align 8
  %1377 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1385 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1377, i32 0, i32 0
  store double -0.000000e+00, double* %real1385, align 8
  %1378 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1386 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1378, i32 0, i32 1
  store double 0.000000e+00, double* %imag1386, align 8
  %1379 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1387 = getelementptr %struct.Py_complex, %struct.Py_complex* %1379, i32 1
  store %struct.Py_complex* %incdec.ptr1387, %struct.Py_complex** %p1333, align 8
  %1380 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1388 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1380, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1388, align 8
  %1381 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1389 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1381, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1389, align 8
  %1382 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1390 = getelementptr %struct.Py_complex, %struct.Py_complex* %1382, i32 1
  store %struct.Py_complex* %incdec.ptr1390, %struct.Py_complex** %p1333, align 8
  %1383 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1391 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1383, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1391, align 8
  %1384 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1392 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1384, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1392, align 8
  %1385 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1393 = getelementptr %struct.Py_complex, %struct.Py_complex* %1385, i32 1
  store %struct.Py_complex* %incdec.ptr1393, %struct.Py_complex** %p1333, align 8
  %1386 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1394 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1386, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1394, align 8
  %1387 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1395 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1387, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1395, align 8
  %1388 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1396 = getelementptr %struct.Py_complex, %struct.Py_complex* %1388, i32 1
  store %struct.Py_complex* %incdec.ptr1396, %struct.Py_complex** %p1333, align 8
  %1389 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1397 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1389, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1397, align 8
  %1390 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1398 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1390, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1398, align 8
  %1391 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1399 = getelementptr %struct.Py_complex, %struct.Py_complex* %1391, i32 1
  store %struct.Py_complex* %incdec.ptr1399, %struct.Py_complex** %p1333, align 8
  %1392 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1400 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1392, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1400, align 8
  %1393 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1401 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1393, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1401, align 8
  %1394 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1402 = getelementptr %struct.Py_complex, %struct.Py_complex* %1394, i32 1
  store %struct.Py_complex* %incdec.ptr1402, %struct.Py_complex** %p1333, align 8
  %1395 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1403 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1395, i32 0, i32 0
  store double 0.000000e+00, double* %real1403, align 8
  %1396 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1404 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1396, i32 0, i32 1
  store double -0.000000e+00, double* %imag1404, align 8
  %1397 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1405 = getelementptr %struct.Py_complex, %struct.Py_complex* %1397, i32 1
  store %struct.Py_complex* %incdec.ptr1405, %struct.Py_complex** %p1333, align 8
  %1398 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1406 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1398, i32 0, i32 0
  store double 0.000000e+00, double* %real1406, align 8
  %1399 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1407 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1399, i32 0, i32 1
  store double 0.000000e+00, double* %imag1407, align 8
  %1400 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1408 = getelementptr %struct.Py_complex, %struct.Py_complex* %1400, i32 1
  store %struct.Py_complex* %incdec.ptr1408, %struct.Py_complex** %p1333, align 8
  %1401 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1409 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1401, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1409, align 8
  %1402 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1410 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1402, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1410, align 8
  %1403 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1411 = getelementptr %struct.Py_complex, %struct.Py_complex* %1403, i32 1
  store %struct.Py_complex* %incdec.ptr1411, %struct.Py_complex** %p1333, align 8
  %1404 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1412 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1404, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1412, align 8
  %1405 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1413 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1405, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1413, align 8
  %1406 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1414 = getelementptr %struct.Py_complex, %struct.Py_complex* %1406, i32 1
  store %struct.Py_complex* %incdec.ptr1414, %struct.Py_complex** %p1333, align 8
  %1407 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1415 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1407, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1415, align 8
  %1408 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1416 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1408, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1416, align 8
  %1409 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1417 = getelementptr %struct.Py_complex, %struct.Py_complex* %1409, i32 1
  store %struct.Py_complex* %incdec.ptr1417, %struct.Py_complex** %p1333, align 8
  %1410 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1418 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1410, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1418, align 8
  %1411 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1419 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1411, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1419, align 8
  %1412 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1420 = getelementptr %struct.Py_complex, %struct.Py_complex* %1412, i32 1
  store %struct.Py_complex* %incdec.ptr1420, %struct.Py_complex** %p1333, align 8
  %1413 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1421 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1413, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1421, align 8
  %1414 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1422 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1414, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1422, align 8
  %1415 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1423 = getelementptr %struct.Py_complex, %struct.Py_complex* %1415, i32 1
  store %struct.Py_complex* %incdec.ptr1423, %struct.Py_complex** %p1333, align 8
  %1416 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1424 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1416, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1424, align 8
  %1417 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1425 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1417, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1425, align 8
  %1418 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1426 = getelementptr %struct.Py_complex, %struct.Py_complex* %1418, i32 1
  store %struct.Py_complex* %incdec.ptr1426, %struct.Py_complex** %p1333, align 8
  %1419 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1427 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1419, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1427, align 8
  %1420 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1428 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1420, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1428, align 8
  %1421 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1429 = getelementptr %struct.Py_complex, %struct.Py_complex* %1421, i32 1
  store %struct.Py_complex* %incdec.ptr1429, %struct.Py_complex** %p1333, align 8
  %1422 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1430 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1422, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1430, align 8
  %1423 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1431 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1423, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1431, align 8
  %1424 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1432 = getelementptr %struct.Py_complex, %struct.Py_complex* %1424, i32 1
  store %struct.Py_complex* %incdec.ptr1432, %struct.Py_complex** %p1333, align 8
  %1425 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1433 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1425, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1433, align 8
  %1426 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1434 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1426, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1434, align 8
  %1427 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1435 = getelementptr %struct.Py_complex, %struct.Py_complex* %1427, i32 1
  store %struct.Py_complex* %incdec.ptr1435, %struct.Py_complex** %p1333, align 8
  %1428 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1436 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1428, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1436, align 8
  %1429 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1437 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1429, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1437, align 8
  %1430 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1438 = getelementptr %struct.Py_complex, %struct.Py_complex* %1430, i32 1
  store %struct.Py_complex* %incdec.ptr1438, %struct.Py_complex** %p1333, align 8
  %1431 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1439 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1431, i32 0, i32 0
  store double 1.000000e+00, double* %real1439, align 8
  %1432 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1440 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1432, i32 0, i32 1
  store double 0.000000e+00, double* %imag1440, align 8
  %1433 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1441 = getelementptr %struct.Py_complex, %struct.Py_complex* %1433, i32 1
  store %struct.Py_complex* %incdec.ptr1441, %struct.Py_complex** %p1333, align 8
  %1434 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1442 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1434, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1442, align 8
  %1435 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1443 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1435, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1443, align 8
  %1436 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1444 = getelementptr %struct.Py_complex, %struct.Py_complex* %1436, i32 1
  store %struct.Py_complex* %incdec.ptr1444, %struct.Py_complex** %p1333, align 8
  %1437 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1445 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1437, i32 0, i32 0
  store double 1.000000e+00, double* %real1445, align 8
  %1438 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1446 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1438, i32 0, i32 1
  store double -0.000000e+00, double* %imag1446, align 8
  %1439 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1447 = getelementptr %struct.Py_complex, %struct.Py_complex* %1439, i32 1
  store %struct.Py_complex* %incdec.ptr1447, %struct.Py_complex** %p1333, align 8
  %1440 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1448 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1440, i32 0, i32 0
  store double 1.000000e+00, double* %real1448, align 8
  %1441 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1449 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1441, i32 0, i32 1
  store double 0.000000e+00, double* %imag1449, align 8
  %1442 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1450 = getelementptr %struct.Py_complex, %struct.Py_complex* %1442, i32 1
  store %struct.Py_complex* %incdec.ptr1450, %struct.Py_complex** %p1333, align 8
  %1443 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1451 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1443, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1451, align 8
  %1444 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1452 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1444, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1452, align 8
  %1445 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1453 = getelementptr %struct.Py_complex, %struct.Py_complex* %1445, i32 1
  store %struct.Py_complex* %incdec.ptr1453, %struct.Py_complex** %p1333, align 8
  %1446 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1454 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1446, i32 0, i32 0
  store double 1.000000e+00, double* %real1454, align 8
  %1447 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1455 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1447, i32 0, i32 1
  store double 0.000000e+00, double* %imag1455, align 8
  %1448 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1456 = getelementptr %struct.Py_complex, %struct.Py_complex* %1448, i32 1
  store %struct.Py_complex* %incdec.ptr1456, %struct.Py_complex** %p1333, align 8
  %1449 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1457 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1449, i32 0, i32 0
  store double 1.000000e+00, double* %real1457, align 8
  %1450 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1458 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1450, i32 0, i32 1
  store double 0.000000e+00, double* %imag1458, align 8
  %1451 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1459 = getelementptr %struct.Py_complex, %struct.Py_complex* %1451, i32 1
  store %struct.Py_complex* %incdec.ptr1459, %struct.Py_complex** %p1333, align 8
  %1452 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1460 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1452, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1460, align 8
  %1453 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1461 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1453, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1461, align 8
  %1454 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1462 = getelementptr %struct.Py_complex, %struct.Py_complex* %1454, i32 1
  store %struct.Py_complex* %incdec.ptr1462, %struct.Py_complex** %p1333, align 8
  %1455 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1463 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1455, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1463, align 8
  %1456 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1464 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1456, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1464, align 8
  %1457 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1465 = getelementptr %struct.Py_complex, %struct.Py_complex* %1457, i32 1
  store %struct.Py_complex* %incdec.ptr1465, %struct.Py_complex** %p1333, align 8
  %1458 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1466 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1458, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1466, align 8
  %1459 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1467 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1459, i32 0, i32 1
  store double -0.000000e+00, double* %imag1467, align 8
  %1460 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1468 = getelementptr %struct.Py_complex, %struct.Py_complex* %1460, i32 1
  store %struct.Py_complex* %incdec.ptr1468, %struct.Py_complex** %p1333, align 8
  %1461 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1469 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1461, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1469, align 8
  %1462 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1470 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1462, i32 0, i32 1
  store double 0.000000e+00, double* %imag1470, align 8
  %1463 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1471 = getelementptr %struct.Py_complex, %struct.Py_complex* %1463, i32 1
  store %struct.Py_complex* %incdec.ptr1471, %struct.Py_complex** %p1333, align 8
  %1464 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1472 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1464, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1472, align 8
  %1465 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1473 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1465, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1473, align 8
  %1466 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1474 = getelementptr %struct.Py_complex, %struct.Py_complex* %1466, i32 1
  store %struct.Py_complex* %incdec.ptr1474, %struct.Py_complex** %p1333, align 8
  %1467 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1475 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1467, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1475, align 8
  %1468 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1476 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1468, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1476, align 8
  %1469 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1477 = getelementptr %struct.Py_complex, %struct.Py_complex* %1469, i32 1
  store %struct.Py_complex* %incdec.ptr1477, %struct.Py_complex** %p1333, align 8
  %1470 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %real1478 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1470, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1478, align 8
  %1471 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %imag1479 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1471, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1479, align 8
  %1472 = load %struct.Py_complex*, %struct.Py_complex** %p1333, align 8
  %incdec.ptr1480 = getelementptr %struct.Py_complex, %struct.Py_complex* %1472, i32 1
  store %struct.Py_complex* %incdec.ptr1480, %struct.Py_complex** %p1333, align 8
  store %struct.Py_complex* getelementptr inbounds ([7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @rect_special_values, i32 0, i32 0, i32 0), %struct.Py_complex** %p1481, align 8
  %1473 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1482 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1473, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1482, align 8
  %1474 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1483 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1474, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1483, align 8
  %1475 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1484 = getelementptr %struct.Py_complex, %struct.Py_complex* %1475, i32 1
  store %struct.Py_complex* %incdec.ptr1484, %struct.Py_complex** %p1481, align 8
  %1476 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1485 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1476, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1485, align 8
  %1477 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1486 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1477, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1486, align 8
  %1478 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1487 = getelementptr %struct.Py_complex, %struct.Py_complex* %1478, i32 1
  store %struct.Py_complex* %incdec.ptr1487, %struct.Py_complex** %p1481, align 8
  %1479 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1488 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1479, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real1488, align 8
  %1480 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1489 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1480, i32 0, i32 1
  store double 0.000000e+00, double* %imag1489, align 8
  %1481 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1490 = getelementptr %struct.Py_complex, %struct.Py_complex* %1481, i32 1
  store %struct.Py_complex* %incdec.ptr1490, %struct.Py_complex** %p1481, align 8
  %1482 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1491 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1482, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real1491, align 8
  %1483 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1492 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1483, i32 0, i32 1
  store double -0.000000e+00, double* %imag1492, align 8
  %1484 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1493 = getelementptr %struct.Py_complex, %struct.Py_complex* %1484, i32 1
  store %struct.Py_complex* %incdec.ptr1493, %struct.Py_complex** %p1481, align 8
  %1485 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1494 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1485, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1494, align 8
  %1486 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1495 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1486, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1495, align 8
  %1487 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1496 = getelementptr %struct.Py_complex, %struct.Py_complex* %1487, i32 1
  store %struct.Py_complex* %incdec.ptr1496, %struct.Py_complex** %p1481, align 8
  %1488 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1497 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1488, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1497, align 8
  %1489 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1498 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1489, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1498, align 8
  %1490 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1499 = getelementptr %struct.Py_complex, %struct.Py_complex* %1490, i32 1
  store %struct.Py_complex* %incdec.ptr1499, %struct.Py_complex** %p1481, align 8
  %1491 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1500 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1491, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1500, align 8
  %1492 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1501 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1492, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1501, align 8
  %1493 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1502 = getelementptr %struct.Py_complex, %struct.Py_complex* %1493, i32 1
  store %struct.Py_complex* %incdec.ptr1502, %struct.Py_complex** %p1481, align 8
  %1494 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1503 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1494, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1503, align 8
  %1495 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1504 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1495, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1504, align 8
  %1496 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1505 = getelementptr %struct.Py_complex, %struct.Py_complex* %1496, i32 1
  store %struct.Py_complex* %incdec.ptr1505, %struct.Py_complex** %p1481, align 8
  %1497 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1506 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1497, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1506, align 8
  %1498 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1507 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1498, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1507, align 8
  %1499 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1508 = getelementptr %struct.Py_complex, %struct.Py_complex* %1499, i32 1
  store %struct.Py_complex* %incdec.ptr1508, %struct.Py_complex** %p1481, align 8
  %1500 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1509 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1500, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1509, align 8
  %1501 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1510 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1501, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1510, align 8
  %1502 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1511 = getelementptr %struct.Py_complex, %struct.Py_complex* %1502, i32 1
  store %struct.Py_complex* %incdec.ptr1511, %struct.Py_complex** %p1481, align 8
  %1503 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1512 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1503, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1512, align 8
  %1504 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1513 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1504, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1513, align 8
  %1505 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1514 = getelementptr %struct.Py_complex, %struct.Py_complex* %1505, i32 1
  store %struct.Py_complex* %incdec.ptr1514, %struct.Py_complex** %p1481, align 8
  %1506 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1515 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1506, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1515, align 8
  %1507 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1516 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1507, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1516, align 8
  %1508 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1517 = getelementptr %struct.Py_complex, %struct.Py_complex* %1508, i32 1
  store %struct.Py_complex* %incdec.ptr1517, %struct.Py_complex** %p1481, align 8
  %1509 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1518 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1509, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1518, align 8
  %1510 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1519 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1510, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1519, align 8
  %1511 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1520 = getelementptr %struct.Py_complex, %struct.Py_complex* %1511, i32 1
  store %struct.Py_complex* %incdec.ptr1520, %struct.Py_complex** %p1481, align 8
  %1512 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1521 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1512, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1521, align 8
  %1513 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1522 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1513, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1522, align 8
  %1514 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1523 = getelementptr %struct.Py_complex, %struct.Py_complex* %1514, i32 1
  store %struct.Py_complex* %incdec.ptr1523, %struct.Py_complex** %p1481, align 8
  %1515 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1524 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1515, i32 0, i32 0
  store double 0.000000e+00, double* %real1524, align 8
  %1516 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1525 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1516, i32 0, i32 1
  store double 0.000000e+00, double* %imag1525, align 8
  %1517 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1526 = getelementptr %struct.Py_complex, %struct.Py_complex* %1517, i32 1
  store %struct.Py_complex* %incdec.ptr1526, %struct.Py_complex** %p1481, align 8
  %1518 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1527 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1518, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1527, align 8
  %1519 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1528 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1519, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1528, align 8
  %1520 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1529 = getelementptr %struct.Py_complex, %struct.Py_complex* %1520, i32 1
  store %struct.Py_complex* %incdec.ptr1529, %struct.Py_complex** %p1481, align 8
  %1521 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1530 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1521, i32 0, i32 0
  store double -0.000000e+00, double* %real1530, align 8
  %1522 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1531 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1522, i32 0, i32 1
  store double 0.000000e+00, double* %imag1531, align 8
  %1523 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1532 = getelementptr %struct.Py_complex, %struct.Py_complex* %1523, i32 1
  store %struct.Py_complex* %incdec.ptr1532, %struct.Py_complex** %p1481, align 8
  %1524 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1533 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1524, i32 0, i32 0
  store double -0.000000e+00, double* %real1533, align 8
  %1525 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1534 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1525, i32 0, i32 1
  store double -0.000000e+00, double* %imag1534, align 8
  %1526 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1535 = getelementptr %struct.Py_complex, %struct.Py_complex* %1526, i32 1
  store %struct.Py_complex* %incdec.ptr1535, %struct.Py_complex** %p1481, align 8
  %1527 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1536 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1527, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1536, align 8
  %1528 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1537 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1528, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1537, align 8
  %1529 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1538 = getelementptr %struct.Py_complex, %struct.Py_complex* %1529, i32 1
  store %struct.Py_complex* %incdec.ptr1538, %struct.Py_complex** %p1481, align 8
  %1530 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1539 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1530, i32 0, i32 0
  store double 0.000000e+00, double* %real1539, align 8
  %1531 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1540 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1531, i32 0, i32 1
  store double 0.000000e+00, double* %imag1540, align 8
  %1532 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1541 = getelementptr %struct.Py_complex, %struct.Py_complex* %1532, i32 1
  store %struct.Py_complex* %incdec.ptr1541, %struct.Py_complex** %p1481, align 8
  %1533 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1542 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1533, i32 0, i32 0
  store double 0.000000e+00, double* %real1542, align 8
  %1534 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1543 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1534, i32 0, i32 1
  store double 0.000000e+00, double* %imag1543, align 8
  %1535 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1544 = getelementptr %struct.Py_complex, %struct.Py_complex* %1535, i32 1
  store %struct.Py_complex* %incdec.ptr1544, %struct.Py_complex** %p1481, align 8
  %1536 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1545 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1536, i32 0, i32 0
  store double 0.000000e+00, double* %real1545, align 8
  %1537 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1546 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1537, i32 0, i32 1
  store double 0.000000e+00, double* %imag1546, align 8
  %1538 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1547 = getelementptr %struct.Py_complex, %struct.Py_complex* %1538, i32 1
  store %struct.Py_complex* %incdec.ptr1547, %struct.Py_complex** %p1481, align 8
  %1539 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1548 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1539, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1548, align 8
  %1540 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1549 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1540, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1549, align 8
  %1541 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1550 = getelementptr %struct.Py_complex, %struct.Py_complex* %1541, i32 1
  store %struct.Py_complex* %incdec.ptr1550, %struct.Py_complex** %p1481, align 8
  %1542 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1551 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1542, i32 0, i32 0
  store double 0.000000e+00, double* %real1551, align 8
  %1543 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1552 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1543, i32 0, i32 1
  store double -0.000000e+00, double* %imag1552, align 8
  %1544 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1553 = getelementptr %struct.Py_complex, %struct.Py_complex* %1544, i32 1
  store %struct.Py_complex* %incdec.ptr1553, %struct.Py_complex** %p1481, align 8
  %1545 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1554 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1545, i32 0, i32 0
  store double 0.000000e+00, double* %real1554, align 8
  %1546 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1555 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1546, i32 0, i32 1
  store double 0.000000e+00, double* %imag1555, align 8
  %1547 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1556 = getelementptr %struct.Py_complex, %struct.Py_complex* %1547, i32 1
  store %struct.Py_complex* %incdec.ptr1556, %struct.Py_complex** %p1481, align 8
  %1548 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1557 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1548, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1557, align 8
  %1549 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1558 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1549, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1558, align 8
  %1550 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1559 = getelementptr %struct.Py_complex, %struct.Py_complex* %1550, i32 1
  store %struct.Py_complex* %incdec.ptr1559, %struct.Py_complex** %p1481, align 8
  %1551 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1560 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1551, i32 0, i32 0
  store double 0.000000e+00, double* %real1560, align 8
  %1552 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1561 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1552, i32 0, i32 1
  store double 0.000000e+00, double* %imag1561, align 8
  %1553 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1562 = getelementptr %struct.Py_complex, %struct.Py_complex* %1553, i32 1
  store %struct.Py_complex* %incdec.ptr1562, %struct.Py_complex** %p1481, align 8
  %1554 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1563 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1554, i32 0, i32 0
  store double 0.000000e+00, double* %real1563, align 8
  %1555 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1564 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1555, i32 0, i32 1
  store double 0.000000e+00, double* %imag1564, align 8
  %1556 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1565 = getelementptr %struct.Py_complex, %struct.Py_complex* %1556, i32 1
  store %struct.Py_complex* %incdec.ptr1565, %struct.Py_complex** %p1481, align 8
  %1557 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1566 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1557, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1566, align 8
  %1558 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1567 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1558, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1567, align 8
  %1559 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1568 = getelementptr %struct.Py_complex, %struct.Py_complex* %1559, i32 1
  store %struct.Py_complex* %incdec.ptr1568, %struct.Py_complex** %p1481, align 8
  %1560 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1569 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1560, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1569, align 8
  %1561 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1570 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1561, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1570, align 8
  %1562 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1571 = getelementptr %struct.Py_complex, %struct.Py_complex* %1562, i32 1
  store %struct.Py_complex* %incdec.ptr1571, %struct.Py_complex** %p1481, align 8
  %1563 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1572 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1563, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1572, align 8
  %1564 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1573 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1564, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1573, align 8
  %1565 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1574 = getelementptr %struct.Py_complex, %struct.Py_complex* %1565, i32 1
  store %struct.Py_complex* %incdec.ptr1574, %struct.Py_complex** %p1481, align 8
  %1566 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1575 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1566, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1575, align 8
  %1567 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1576 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1567, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1576, align 8
  %1568 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1577 = getelementptr %struct.Py_complex, %struct.Py_complex* %1568, i32 1
  store %struct.Py_complex* %incdec.ptr1577, %struct.Py_complex** %p1481, align 8
  %1569 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1578 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1569, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1578, align 8
  %1570 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1579 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1570, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1579, align 8
  %1571 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1580 = getelementptr %struct.Py_complex, %struct.Py_complex* %1571, i32 1
  store %struct.Py_complex* %incdec.ptr1580, %struct.Py_complex** %p1481, align 8
  %1572 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1581 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1572, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1581, align 8
  %1573 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1582 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1573, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1582, align 8
  %1574 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1583 = getelementptr %struct.Py_complex, %struct.Py_complex* %1574, i32 1
  store %struct.Py_complex* %incdec.ptr1583, %struct.Py_complex** %p1481, align 8
  %1575 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1584 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1575, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1584, align 8
  %1576 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1585 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1576, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1585, align 8
  %1577 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1586 = getelementptr %struct.Py_complex, %struct.Py_complex* %1577, i32 1
  store %struct.Py_complex* %incdec.ptr1586, %struct.Py_complex** %p1481, align 8
  %1578 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1587 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1578, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1587, align 8
  %1579 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1588 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1579, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1588, align 8
  %1580 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1589 = getelementptr %struct.Py_complex, %struct.Py_complex* %1580, i32 1
  store %struct.Py_complex* %incdec.ptr1589, %struct.Py_complex** %p1481, align 8
  %1581 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1590 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1581, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1590, align 8
  %1582 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1591 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1582, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1591, align 8
  %1583 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1592 = getelementptr %struct.Py_complex, %struct.Py_complex* %1583, i32 1
  store %struct.Py_complex* %incdec.ptr1592, %struct.Py_complex** %p1481, align 8
  %1584 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1593 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1584, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1593, align 8
  %1585 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1594 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1585, i32 0, i32 1
  store double -0.000000e+00, double* %imag1594, align 8
  %1586 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1595 = getelementptr %struct.Py_complex, %struct.Py_complex* %1586, i32 1
  store %struct.Py_complex* %incdec.ptr1595, %struct.Py_complex** %p1481, align 8
  %1587 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1596 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1587, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1596, align 8
  %1588 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1597 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1588, i32 0, i32 1
  store double 0.000000e+00, double* %imag1597, align 8
  %1589 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1598 = getelementptr %struct.Py_complex, %struct.Py_complex* %1589, i32 1
  store %struct.Py_complex* %incdec.ptr1598, %struct.Py_complex** %p1481, align 8
  %1590 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1599 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1590, i32 0, i32 0
  store double 0xC6FD67CF2C62297C, double* %real1599, align 8
  %1591 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1600 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1591, i32 0, i32 1
  store double 0xC6FD67CF2C62297C, double* %imag1600, align 8
  %1592 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1601 = getelementptr %struct.Py_complex, %struct.Py_complex* %1592, i32 1
  store %struct.Py_complex* %incdec.ptr1601, %struct.Py_complex** %p1481, align 8
  %1593 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1602 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1593, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1602, align 8
  %1594 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1603 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1594, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1603, align 8
  %1595 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1604 = getelementptr %struct.Py_complex, %struct.Py_complex* %1595, i32 1
  store %struct.Py_complex* %incdec.ptr1604, %struct.Py_complex** %p1481, align 8
  %1596 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1605 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1596, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real1605, align 8
  %1597 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1606 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1597, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1606, align 8
  %1598 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1607 = getelementptr %struct.Py_complex, %struct.Py_complex* %1598, i32 1
  store %struct.Py_complex* %incdec.ptr1607, %struct.Py_complex** %p1481, align 8
  %1599 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1608 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1599, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1608, align 8
  %1600 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1609 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1600, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1609, align 8
  %1601 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1610 = getelementptr %struct.Py_complex, %struct.Py_complex* %1601, i32 1
  store %struct.Py_complex* %incdec.ptr1610, %struct.Py_complex** %p1481, align 8
  %1602 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1611 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1602, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1611, align 8
  %1603 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1612 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1603, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1612, align 8
  %1604 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1613 = getelementptr %struct.Py_complex, %struct.Py_complex* %1604, i32 1
  store %struct.Py_complex* %incdec.ptr1613, %struct.Py_complex** %p1481, align 8
  %1605 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1614 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1605, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1614, align 8
  %1606 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1615 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1606, i32 0, i32 1
  store double 0.000000e+00, double* %imag1615, align 8
  %1607 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1616 = getelementptr %struct.Py_complex, %struct.Py_complex* %1607, i32 1
  store %struct.Py_complex* %incdec.ptr1616, %struct.Py_complex** %p1481, align 8
  %1608 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1617 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1608, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1617, align 8
  %1609 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1618 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1609, i32 0, i32 1
  store double 0.000000e+00, double* %imag1618, align 8
  %1610 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1619 = getelementptr %struct.Py_complex, %struct.Py_complex* %1610, i32 1
  store %struct.Py_complex* %incdec.ptr1619, %struct.Py_complex** %p1481, align 8
  %1611 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1620 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1611, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1620, align 8
  %1612 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1621 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1612, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1621, align 8
  %1613 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1622 = getelementptr %struct.Py_complex, %struct.Py_complex* %1613, i32 1
  store %struct.Py_complex* %incdec.ptr1622, %struct.Py_complex** %p1481, align 8
  %1614 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1623 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1614, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1623, align 8
  %1615 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1624 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1615, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1624, align 8
  %1616 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1625 = getelementptr %struct.Py_complex, %struct.Py_complex* %1616, i32 1
  store %struct.Py_complex* %incdec.ptr1625, %struct.Py_complex** %p1481, align 8
  %1617 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %real1626 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1617, i32 0, i32 0
  store double 0x7FF8000000000000, double* %real1626, align 8
  %1618 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %imag1627 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %1618, i32 0, i32 1
  store double 0x7FF8000000000000, double* %imag1627, align 8
  %1619 = load %struct.Py_complex*, %struct.Py_complex** %p1481, align 8
  %incdec.ptr1628 = getelementptr %struct.Py_complex, %struct.Py_complex* %1619, i32 1
  store %struct.Py_complex* %incdec.ptr1628, %struct.Py_complex** %p1481, align 8
  %1620 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %1620, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1621 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %1621
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_acos(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_acos)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_acosh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_acosh)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_asin(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_asin)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_asinh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_asinh)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_atan(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_atan)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_atanh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_atanh)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_cos(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_cos)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_cosh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_cosh)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_exp(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_exp)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_isfinite(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %z = alloca %struct.Py_complex, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct.Py_complex* %z)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %conv = fptrunc double %1 to float
  %call1 = call i32 @__finitef(float %conv) #5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.rhs, label %land.end

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.3, label %cond.false.7

cond.true.3:                                      ; preds = %cond.false
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %2 = load double, double* %real4, align 8
  %call5 = call i32 @__finite(double %2) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.rhs, label %land.end

cond.false.7:                                     ; preds = %cond.false
  %real8 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %3 = load double, double* %real8, align 8
  %conv9 = fpext double %3 to x86_fp80
  %call10 = call i32 @__finitel(x86_fp80 %conv9) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false.7, %cond.true.3, %cond.true
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %4 = load double, double* %imag, align 8
  %call12 = call i32 @__finite(double %4) #5
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false.7, %cond.true.3, %cond.true
  %5 = phi i1 [ false, %cond.false.7 ], [ false, %cond.true.3 ], [ false, %cond.true ], [ %tobool13, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  %conv14 = sext i32 %land.ext to i64
  %call15 = call %struct._object* @PyBool_FromLong(i64 %conv14)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_isinf(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %z = alloca %struct.Py_complex, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), %struct.Py_complex* %z)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %conv = fptrunc double %1 to float
  %call1 = call i32 @__isinff(float %conv) #5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.end, label %lor.rhs

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.3, label %cond.false.7

cond.true.3:                                      ; preds = %cond.false
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %2 = load double, double* %real4, align 8
  %call5 = call i32 @__isinf(double %2) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %lor.end, label %lor.rhs

cond.false.7:                                     ; preds = %cond.false
  %real8 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %3 = load double, double* %real8, align 8
  %conv9 = fpext double %3 to x86_fp80
  %call10 = call i32 @__isinfl(x86_fp80 %conv9) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.7, %cond.true.3, %cond.true
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %4 = load double, double* %imag, align 8
  %call12 = call i32 @__isinf(double %4) #5
  %tobool13 = icmp ne i32 %call12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.7, %cond.true.3, %cond.true
  %5 = phi i1 [ true, %cond.false.7 ], [ true, %cond.true.3 ], [ true, %cond.true ], [ %tobool13, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %conv14 = sext i32 %lor.ext to i64
  %call15 = call %struct._object* @PyBool_FromLong(i64 %conv14)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_isnan(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %z = alloca %struct.Py_complex, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), %struct.Py_complex* %z)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %conv = fptrunc double %1 to float
  %call1 = call i32 @__isnanf(float %conv) #5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.end, label %lor.rhs

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.3, label %cond.false.7

cond.true.3:                                      ; preds = %cond.false
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %2 = load double, double* %real4, align 8
  %call5 = call i32 @__isnan(double %2) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %lor.end, label %lor.rhs

cond.false.7:                                     ; preds = %cond.false
  %real8 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %3 = load double, double* %real8, align 8
  %conv9 = fpext double %3 to x86_fp80
  %call10 = call i32 @__isnanl(x86_fp80 %conv9) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.7, %cond.true.3, %cond.true
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %4 = load double, double* %imag, align 8
  %call12 = call i32 @__isnan(double %4) #5
  %tobool13 = icmp ne i32 %call12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.7, %cond.true.3, %cond.true
  %5 = phi i1 [ true, %cond.false.7 ], [ true, %cond.true.3 ], [ true, %cond.true ], [ %tobool13, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %conv14 = sext i32 %lor.ext to i64
  %call15 = call %struct._object* @PyBool_FromLong(i64 %conv14)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_log(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca %struct.Py_complex, align 8
  %y = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %coerce5 = alloca %struct.Py_complex, align 8
  %coerce7 = alloca %struct.Py_complex, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), %struct.Py_complex* %x, %struct.Py_complex* %y)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32* @__errno_location() #5
  store i32 0, i32* %call1, align 4
  %1 = bitcast %struct.Py_complex* %x to { double, double }*
  %2 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 0
  %3 = load double, double* %2, align 1
  %4 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 1
  %5 = load double, double* %4, align 1
  %call2 = call { double, double } @c_log(double %3, double %5)
  %6 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  %8 = extractvalue { double, double } %call2, 0
  store double %8, double* %7, align 8
  %9 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  %10 = extractvalue { double, double } %call2, 1
  store double %10, double* %9, align 8
  %11 = bitcast %struct.Py_complex* %x to i8*
  %12 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %15, 2
  br i1 %cmp, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %16 = bitcast %struct.Py_complex* %y to { double, double }*
  %17 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = load double, double* %17, align 1
  %19 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = load double, double* %19, align 1
  %call4 = call { double, double } @c_log(double %18, double %20)
  %21 = bitcast %struct.Py_complex* %coerce5 to { double, double }*
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = extractvalue { double, double } %call4, 0
  store double %23, double* %22, align 8
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = extractvalue { double, double } %call4, 1
  store double %25, double* %24, align 8
  %26 = bitcast %struct.Py_complex* %y to i8*
  %27 = bitcast %struct.Py_complex* %coerce5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = bitcast %struct.Py_complex* %x to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = load double, double* %29, align 1
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = load double, double* %31, align 1
  %33 = bitcast %struct.Py_complex* %y to { double, double }*
  %34 = getelementptr { double, double }, { double, double }* %33, i32 0, i32 0
  %35 = load double, double* %34, align 1
  %36 = getelementptr { double, double }, { double, double }* %33, i32 0, i32 1
  %37 = load double, double* %36, align 1
  %call6 = call { double, double } @_Py_c_quot(double %30, double %32, double %35, double %37)
  %38 = bitcast %struct.Py_complex* %coerce7 to { double, double }*
  %39 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 0
  %40 = extractvalue { double, double } %call6, 0
  store double %40, double* %39, align 8
  %41 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 1
  %42 = extractvalue { double, double } %call6, 1
  store double %42, double* %41, align 8
  %43 = bitcast %struct.Py_complex* %x to i8*
  %44 = bitcast %struct.Py_complex* %coerce7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  %call9 = call i32* @__errno_location() #5
  %45 = load i32, i32* %call9, align 4
  %cmp10 = icmp ne i32 %45, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %call12 = call %struct._object* @math_error()
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %46 = bitcast %struct.Py_complex* %x to { double, double }*
  %47 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 0
  %48 = load double, double* %47, align 1
  %49 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 1
  %50 = load double, double* %49, align 1
  %call14 = call %struct._object* @PyComplex_FromCComplex(double %48, double %50)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then
  %51 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %51
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_log10(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_log10)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_phase(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %z = alloca %struct.Py_complex, align 8
  %phi = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), %struct.Py_complex* %z)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32* @__errno_location() #5
  store i32 0, i32* %call1, align 4
  %1 = bitcast %struct.Py_complex* %z to { double, double }*
  %2 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 0
  %3 = load double, double* %2, align 1
  %4 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 1
  %5 = load double, double* %4, align 1
  %call2 = call double @c_atan2(double %3, double %5)
  store double %call2, double* %phi, align 8
  %call3 = call i32* @__errno_location() #5
  %6 = load i32, i32* %call3, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %call5 = call %struct._object* @math_error()
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load double, double* %phi, align 8
  %call6 = call %struct._object* @PyFloat_FromDouble(double %7)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.4, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_polar(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca double, align 8
  %phi = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), %struct.Py_complex* %z)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.Py_complex* %z to { double, double }*
  %2 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 0
  %3 = load double, double* %2, align 1
  %4 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 1
  %5 = load double, double* %4, align 1
  %call1 = call double @c_atan2(double %3, double %5)
  store double %call1, double* %phi, align 8
  %6 = bitcast %struct.Py_complex* %z to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  %8 = load double, double* %7, align 1
  %9 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  %10 = load double, double* %9, align 1
  %call2 = call double @_Py_c_abs(double %8, double %10)
  store double %call2, double* %r, align 8
  %call3 = call i32* @__errno_location() #5
  %11 = load i32, i32* %call3, align 4
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %call5 = call %struct._object* @math_error()
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %12 = load double, double* %r, align 8
  %13 = load double, double* %phi, align 8
  %call6 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), double %12, double %13)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.4, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_rect(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca double, align 8
  %phi = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), double* %r, double* %phi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32* @__errno_location() #5
  store i32 0, i32* %call1, align 4
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %1 = load double, double* %r, align 8
  %conv = fptrunc double %1 to float
  %call2 = call i32 @__finitef(float %conv) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then.23

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.false
  %2 = load double, double* %r, align 8
  %call5 = call i32 @__finite(double %2) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then.23

cond.false.7:                                     ; preds = %cond.false
  %3 = load double, double* %r, align 8
  %conv8 = fpext double %3 to x86_fp80
  %call9 = call i32 @__finitel(x86_fp80 %conv8) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %lor.lhs.false, label %if.then.23

lor.lhs.false:                                    ; preds = %cond.false.7, %cond.true.4, %cond.true
  br i1 false, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %lor.lhs.false
  %4 = load double, double* %phi, align 8
  %conv12 = fptrunc double %4 to float
  %call13 = call i32 @__finitef(float %conv12) #5
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else.105, label %if.then.23

cond.false.15:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.16, label %cond.false.19

cond.true.16:                                     ; preds = %cond.false.15
  %5 = load double, double* %phi, align 8
  %call17 = call i32 @__finite(double %5) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.105, label %if.then.23

cond.false.19:                                    ; preds = %cond.false.15
  %6 = load double, double* %phi, align 8
  %conv20 = fpext double %6 to x86_fp80
  %call21 = call i32 @__finitel(x86_fp80 %conv20) #5
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.105, label %if.then.23

if.then.23:                                       ; preds = %cond.false.19, %cond.true.16, %cond.true.11, %cond.false.7, %cond.true.4, %cond.true
  br i1 false, label %cond.true.24, label %cond.false.28

cond.true.24:                                     ; preds = %if.then.23
  %7 = load double, double* %r, align 8
  %conv25 = fptrunc double %7 to float
  %call26 = call i32 @__isinff(float %conv25) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true, label %if.else.66

cond.false.28:                                    ; preds = %if.then.23
  br i1 true, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %cond.false.28
  %8 = load double, double* %r, align 8
  %call30 = call i32 @__isinf(double %8) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true, label %if.else.66

cond.false.32:                                    ; preds = %cond.false.28
  %9 = load double, double* %r, align 8
  %conv33 = fpext double %9 to x86_fp80
  %call34 = call i32 @__isinfl(x86_fp80 %conv33) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true, label %if.else.66

land.lhs.true:                                    ; preds = %cond.false.32, %cond.true.29, %cond.true.24
  br i1 false, label %cond.true.36, label %cond.false.40

cond.true.36:                                     ; preds = %land.lhs.true
  %10 = load double, double* %phi, align 8
  %conv37 = fptrunc double %10 to float
  %call38 = call i32 @__finitef(float %conv37) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %land.lhs.true.48, label %if.else.66

cond.false.40:                                    ; preds = %land.lhs.true
  br i1 true, label %cond.true.41, label %cond.false.44

cond.true.41:                                     ; preds = %cond.false.40
  %11 = load double, double* %phi, align 8
  %call42 = call i32 @__finite(double %11) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.48, label %if.else.66

cond.false.44:                                    ; preds = %cond.false.40
  %12 = load double, double* %phi, align 8
  %conv45 = fpext double %12 to x86_fp80
  %call46 = call i32 @__finitel(x86_fp80 %conv45) #5
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.else.66

land.lhs.true.48:                                 ; preds = %cond.false.44, %cond.true.41, %cond.true.36
  %13 = load double, double* %phi, align 8
  %cmp = fcmp une double %13, 0.000000e+00
  br i1 %cmp, label %if.then.50, label %if.else.66

if.then.50:                                       ; preds = %land.lhs.true.48
  %14 = load double, double* %r, align 8
  %cmp51 = fcmp ogt double %14, 0.000000e+00
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.then.50
  %15 = load double, double* %phi, align 8
  %call54 = call double @cos(double %15) #3
  %call55 = call double @copysign(double 0x7FF0000000000000, double %call54) #5
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  store double %call55, double* %real, align 8
  %16 = load double, double* %phi, align 8
  %call56 = call double @sin(double %16) #3
  %call57 = call double @copysign(double 0x7FF0000000000000, double %call56) #5
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  store double %call57, double* %imag, align 8
  br label %if.end.65

if.else:                                          ; preds = %if.then.50
  %17 = load double, double* %phi, align 8
  %call58 = call double @cos(double %17) #3
  %call59 = call double @copysign(double 0x7FF0000000000000, double %call58) #5
  %sub = fsub double -0.000000e+00, %call59
  %real60 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  store double %sub, double* %real60, align 8
  %18 = load double, double* %phi, align 8
  %call61 = call double @sin(double %18) #3
  %call62 = call double @copysign(double 0x7FF0000000000000, double %call61) #5
  %sub63 = fsub double -0.000000e+00, %call62
  %imag64 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  store double %sub63, double* %imag64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.then.53
  br label %if.end.71

if.else.66:                                       ; preds = %land.lhs.true.48, %cond.false.44, %cond.true.41, %cond.true.36, %cond.false.32, %cond.true.29, %cond.true.24
  %19 = load double, double* %phi, align 8
  %call67 = call i32 @special_type(double %19)
  %idxprom = zext i32 %call67 to i64
  %20 = load double, double* %r, align 8
  %call68 = call i32 @special_type(double %20)
  %idxprom69 = zext i32 %call68 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @rect_special_values, i32 0, i64 %idxprom69
  %arrayidx70 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %21 = bitcast %struct.Py_complex* %z to i8*
  %22 = bitcast %struct.Py_complex* %arrayidx70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.66, %if.end.65
  %23 = load double, double* %r, align 8
  %cmp72 = fcmp une double %23, 0.000000e+00
  br i1 %cmp72, label %land.lhs.true.74, label %if.else.102

land.lhs.true.74:                                 ; preds = %if.end.71
  br i1 false, label %cond.true.75, label %cond.false.79

cond.true.75:                                     ; preds = %land.lhs.true.74
  %24 = load double, double* %r, align 8
  %conv76 = fptrunc double %24 to float
  %call77 = call i32 @__isnanf(float %conv76) #5
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.else.102, label %land.lhs.true.87

cond.false.79:                                    ; preds = %land.lhs.true.74
  br i1 true, label %cond.true.80, label %cond.false.83

cond.true.80:                                     ; preds = %cond.false.79
  %25 = load double, double* %r, align 8
  %call81 = call i32 @__isnan(double %25) #5
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.else.102, label %land.lhs.true.87

cond.false.83:                                    ; preds = %cond.false.79
  %26 = load double, double* %r, align 8
  %conv84 = fpext double %26 to x86_fp80
  %call85 = call i32 @__isnanl(x86_fp80 %conv84) #5
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.else.102, label %land.lhs.true.87

land.lhs.true.87:                                 ; preds = %cond.false.83, %cond.true.80, %cond.true.75
  br i1 false, label %cond.true.88, label %cond.false.92

cond.true.88:                                     ; preds = %land.lhs.true.87
  %27 = load double, double* %phi, align 8
  %conv89 = fptrunc double %27 to float
  %call90 = call i32 @__isinff(float %conv89) #5
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.100, label %if.else.102

cond.false.92:                                    ; preds = %land.lhs.true.87
  br i1 true, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %cond.false.92
  %28 = load double, double* %phi, align 8
  %call94 = call i32 @__isinf(double %28) #5
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.100, label %if.else.102

cond.false.96:                                    ; preds = %cond.false.92
  %29 = load double, double* %phi, align 8
  %conv97 = fpext double %29 to x86_fp80
  %call98 = call i32 @__isinfl(x86_fp80 %conv97) #5
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %cond.false.96, %cond.true.93, %cond.true.88
  %call101 = call i32* @__errno_location() #5
  store i32 33, i32* %call101, align 4
  br label %if.end.104

if.else.102:                                      ; preds = %cond.false.96, %cond.true.93, %cond.true.88, %cond.false.83, %cond.true.80, %cond.true.75, %if.end.71
  %call103 = call i32* @__errno_location() #5
  store i32 0, i32* %call103, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.102, %if.then.100
  br label %if.end.121

if.else.105:                                      ; preds = %cond.false.19, %cond.true.16, %cond.true.11
  %30 = load double, double* %phi, align 8
  %cmp106 = fcmp oeq double %30, 0.000000e+00
  br i1 %cmp106, label %if.then.108, label %if.else.112

if.then.108:                                      ; preds = %if.else.105
  %31 = load double, double* %r, align 8
  %real109 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  store double %31, double* %real109, align 8
  %32 = load double, double* %r, align 8
  %33 = load double, double* %phi, align 8
  %mul = fmul double %32, %33
  %imag110 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  store double %mul, double* %imag110, align 8
  %call111 = call i32* @__errno_location() #5
  store i32 0, i32* %call111, align 4
  br label %if.end.120

if.else.112:                                      ; preds = %if.else.105
  %34 = load double, double* %r, align 8
  %35 = load double, double* %phi, align 8
  %call113 = call double @cos(double %35) #3
  %mul114 = fmul double %34, %call113
  %real115 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  store double %mul114, double* %real115, align 8
  %36 = load double, double* %r, align 8
  %37 = load double, double* %phi, align 8
  %call116 = call double @sin(double %37) #3
  %mul117 = fmul double %36, %call116
  %imag118 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  store double %mul117, double* %imag118, align 8
  %call119 = call i32* @__errno_location() #5
  store i32 0, i32* %call119, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.112, %if.then.108
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.104
  %call122 = call i32* @__errno_location() #5
  %38 = load i32, i32* %call122, align 4
  %cmp123 = icmp ne i32 %38, 0
  br i1 %cmp123, label %if.then.125, label %if.else.127

if.then.125:                                      ; preds = %if.end.121
  %call126 = call %struct._object* @math_error()
  store %struct._object* %call126, %struct._object** %retval
  br label %return

if.else.127:                                      ; preds = %if.end.121
  %39 = bitcast %struct.Py_complex* %z to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = load double, double* %40, align 1
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = load double, double* %42, align 1
  %call128 = call %struct._object* @PyComplex_FromCComplex(double %41, double %43)
  store %struct._object* %call128, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.127, %if.then.125, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_sin(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_sin)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_sinh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_sinh)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_sqrt(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_sqrt)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_tan(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_tan)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmath_tanh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, { double, double } (double, double)* @c_tanh)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_1(%struct._object* %args, { double, double } (double, double)* %func) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %func.addr = alloca { double, double } (double, double)*, align 8
  %x = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store { double, double } (double, double)* %func, { double, double } (double, double)** %func.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct.Py_complex* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32* @__errno_location() #5
  store i32 0, i32* %call1, align 4
  %1 = load { double, double } (double, double)*, { double, double } (double, double)** %func.addr, align 8
  %2 = bitcast %struct.Py_complex* %x to { double, double }*
  %3 = getelementptr { double, double }, { double, double }* %2, i32 0, i32 0
  %4 = load double, double* %3, align 1
  %5 = getelementptr { double, double }, { double, double }* %2, i32 0, i32 1
  %6 = load double, double* %5, align 1
  %call2 = call { double, double } %1(double %4, double %6)
  %7 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %8 = getelementptr { double, double }, { double, double }* %7, i32 0, i32 0
  %9 = extractvalue { double, double } %call2, 0
  store double %9, double* %8, align 8
  %10 = getelementptr { double, double }, { double, double }* %7, i32 0, i32 1
  %11 = extractvalue { double, double } %call2, 1
  store double %11, double* %10, align 8
  %12 = bitcast %struct.Py_complex* %r to i8*
  %13 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  %call3 = call i32* @__errno_location() #5
  %14 = load i32, i32* %call3, align 4
  %cmp = icmp eq i32 %14, 33
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %call5 = call i32* @__errno_location() #5
  %16 = load i32, i32* %call5, align 4
  %cmp6 = icmp eq i32 %16, 34
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  %17 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %18 = bitcast %struct.Py_complex* %r to { double, double }*
  %19 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 0
  %20 = load double, double* %19, align 1
  %21 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 1
  %22 = load double, double* %21, align 1
  %call9 = call %struct._object* @PyComplex_FromCComplex(double %20, double %22)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.then.7, %if.then.4, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_acos(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %s1 = alloca %struct.Py_complex, align 8
  %s2 = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %coerce83 = alloca %struct.Py_complex, align 8
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
  br i1 %tobool13, label %if.end, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  %call24 = call i32* @__errno_location() #5
  store i32 0, i32* %call24, align 4
  %imag25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %9 = load double, double* %imag25, align 8
  %call26 = call i32 @special_type(double %9)
  %idxprom = zext i32 %call26 to i64
  %real27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real27, align 8
  %call28 = call i32 @special_type(double %10)
  %idxprom29 = zext i32 %call28 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @acos_special_values, i32 0, i64 %idxprom29
  %arrayidx30 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %11 = bitcast %struct.Py_complex* %retval to i8*
  %12 = bitcast %struct.Py_complex* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %13 = load double, double* %real31, align 8
  %call32 = call double @fabs(double %13) #5
  %cmp = fcmp ogt double %call32, 0x7FCFFFFFFFFFFFFF
  br i1 %cmp, label %if.then.39, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end
  %imag35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag35, align 8
  %call36 = call double @fabs(double %14) #5
  %cmp37 = fcmp ogt double %call36, 0x7FCFFFFFFFFFFFFF
  br i1 %cmp37, label %if.then.39, label %if.else.69

if.then.39:                                       ; preds = %lor.lhs.false.34, %if.end
  %imag40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %15 = load double, double* %imag40, align 8
  %call41 = call double @fabs(double %15) #5
  %real42 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %16 = load double, double* %real42, align 8
  %call43 = call double @atan2(double %call41, double %16) #3
  %real44 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call43, double* %real44, align 8
  %real45 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %17 = load double, double* %real45, align 8
  %cmp46 = fcmp olt double %17, 0.000000e+00
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.then.39
  %real49 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %18 = load double, double* %real49, align 8
  %div = fdiv double %18, 2.000000e+00
  %imag50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %19 = load double, double* %imag50, align 8
  %div51 = fdiv double %19, 2.000000e+00
  %call52 = call double @hypot(double %div, double %div51) #3
  %call53 = call double @log(double %call52) #3
  %add = fadd double %call53, 0x3FF62E42FEFA39EF
  %imag54 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %20 = load double, double* %imag54, align 8
  %call55 = call double @copysign(double %add, double %20) #5
  %sub = fsub double -0.000000e+00, %call55
  %imag56 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %sub, double* %imag56, align 8
  br label %if.end.68

if.else:                                          ; preds = %if.then.39
  %real57 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %21 = load double, double* %real57, align 8
  %div58 = fdiv double %21, 2.000000e+00
  %imag59 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %22 = load double, double* %imag59, align 8
  %div60 = fdiv double %22, 2.000000e+00
  %call61 = call double @hypot(double %div58, double %div60) #3
  %call62 = call double @log(double %call61) #3
  %add63 = fadd double %call62, 0x3FF62E42FEFA39EF
  %imag64 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %23 = load double, double* %imag64, align 8
  %sub65 = fsub double -0.000000e+00, %23
  %call66 = call double @copysign(double %add63, double %sub65) #5
  %imag67 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call66, double* %imag67, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.then.48
  br label %if.end.97

if.else.69:                                       ; preds = %lor.lhs.false.34
  %real70 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %24 = load double, double* %real70, align 8
  %sub71 = fsub double 1.000000e+00, %24
  %real72 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 0
  store double %sub71, double* %real72, align 8
  %imag73 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %25 = load double, double* %imag73, align 8
  %sub74 = fsub double -0.000000e+00, %25
  %imag75 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 1
  store double %sub74, double* %imag75, align 8
  %26 = bitcast %struct.Py_complex* %s1 to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = load double, double* %27, align 1
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = load double, double* %29, align 1
  %call76 = call { double, double } @c_sqrt(double %28, double %30)
  %31 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0
  %33 = extractvalue { double, double } %call76, 0
  store double %33, double* %32, align 8
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1
  %35 = extractvalue { double, double } %call76, 1
  store double %35, double* %34, align 8
  %36 = bitcast %struct.Py_complex* %s1 to i8*
  %37 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false)
  %real77 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %38 = load double, double* %real77, align 8
  %add78 = fadd double 1.000000e+00, %38
  %real79 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 0
  store double %add78, double* %real79, align 8
  %imag80 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %39 = load double, double* %imag80, align 8
  %imag81 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 1
  store double %39, double* %imag81, align 8
  %40 = bitcast %struct.Py_complex* %s2 to { double, double }*
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = load double, double* %41, align 1
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = load double, double* %43, align 1
  %call82 = call { double, double } @c_sqrt(double %42, double %44)
  %45 = bitcast %struct.Py_complex* %coerce83 to { double, double }*
  %46 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 0
  %47 = extractvalue { double, double } %call82, 0
  store double %47, double* %46, align 8
  %48 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 1
  %49 = extractvalue { double, double } %call82, 1
  store double %49, double* %48, align 8
  %50 = bitcast %struct.Py_complex* %s2 to i8*
  %51 = bitcast %struct.Py_complex* %coerce83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false)
  %real84 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 0
  %52 = load double, double* %real84, align 8
  %real85 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 0
  %53 = load double, double* %real85, align 8
  %call86 = call double @atan2(double %52, double %53) #3
  %mul = fmul double 2.000000e+00, %call86
  %real87 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %mul, double* %real87, align 8
  %real88 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 0
  %54 = load double, double* %real88, align 8
  %imag89 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 1
  %55 = load double, double* %imag89, align 8
  %mul90 = fmul double %54, %55
  %imag91 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 1
  %56 = load double, double* %imag91, align 8
  %real92 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 0
  %57 = load double, double* %real92, align 8
  %mul93 = fmul double %56, %57
  %sub94 = fsub double %mul90, %mul93
  %call95 = call double @asinh(double %sub94) #3
  %imag96 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call95, double* %imag96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.69, %if.end.68
  %call98 = call i32* @__errno_location() #5
  store i32 0, i32* %call98, align 4
  %58 = bitcast %struct.Py_complex* %retval to i8*
  %59 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.97, %if.then
  %60 = bitcast %struct.Py_complex* %retval to { double, double }*
  %61 = load { double, double }, { double, double }* %60, align 8
  ret { double, double } %61
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyComplex_FromCComplex(double, double) #1

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #2

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #2

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #2

; Function Attrs: nounwind uwtable
define internal i32 @special_type(double %d) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %d.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__finitef(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %d.addr, align 8
  %call2 = call i32 @__finite(double %1) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %d.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %d.addr, align 8
  %cmp = fcmp une double %3, 0.000000e+00
  br i1 %cmp, label %if.then.9, label %if.else.14

if.then.9:                                        ; preds = %if.then
  %4 = load double, double* %d.addr, align 8
  %call10 = call double @copysign(double 1.000000e+00, double %4) #5
  %cmp11 = fcmp oeq double %call10, 1.000000e+00
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  store i32 4, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.9
  store i32 1, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.then
  %5 = load double, double* %d.addr, align 8
  %call15 = call double @copysign(double 1.000000e+00, double %5) #5
  %cmp16 = fcmp oeq double %call15, 1.000000e+00
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.14
  store i32 3, i32* %retval
  br label %return

if.else.19:                                       ; preds = %if.else.14
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %if.end
  %6 = load double, double* %d.addr, align 8
  %conv21 = fptrunc double %6 to float
  %call22 = call i32 @__isnanf(float %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.32, label %if.end.33

cond.false.24:                                    ; preds = %if.end
  br i1 true, label %cond.true.25, label %cond.false.28

cond.true.25:                                     ; preds = %cond.false.24
  %7 = load double, double* %d.addr, align 8
  %call26 = call i32 @__isnan(double %7) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.32, label %if.end.33

cond.false.28:                                    ; preds = %cond.false.24
  %8 = load double, double* %d.addr, align 8
  %conv29 = fpext double %8 to x86_fp80
  %call30 = call i32 @__isnanl(x86_fp80 %conv29) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %cond.false.28, %cond.true.25, %cond.true.20
  store i32 6, i32* %retval
  br label %return

if.end.33:                                        ; preds = %cond.false.28, %cond.true.25, %cond.true.20
  %9 = load double, double* %d.addr, align 8
  %call34 = call double @copysign(double 1.000000e+00, double %9) #5
  %cmp35 = fcmp oeq double %call34, 1.000000e+00
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.33
  store i32 5, i32* %retval
  br label %return

if.else.38:                                       ; preds = %if.end.33
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.38, %if.then.37, %if.then.32, %if.else.19, %if.then.18, %if.else, %if.then.13
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #4

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #2

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @hypot(double, double) #4

; Function Attrs: nounwind uwtable
define internal { double, double } @c_sqrt(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %s = alloca double, align 8
  %d = alloca double, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
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
  br i1 %tobool13, label %if.end, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  %call24 = call i32* @__errno_location() #5
  store i32 0, i32* %call24, align 4
  %imag25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %9 = load double, double* %imag25, align 8
  %call26 = call i32 @special_type(double %9)
  %idxprom = zext i32 %call26 to i64
  %real27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real27, align 8
  %call28 = call i32 @special_type(double %10)
  %idxprom29 = zext i32 %call28 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @sqrt_special_values, i32 0, i64 %idxprom29
  %arrayidx30 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %11 = bitcast %struct.Py_complex* %retval to i8*
  %12 = bitcast %struct.Py_complex* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %13 = load double, double* %real31, align 8
  %cmp = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end
  %imag33 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag33, align 8
  %cmp34 = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp34, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %land.lhs.true
  %real37 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double 0.000000e+00, double* %real37, align 8
  %imag38 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %15 = load double, double* %imag38, align 8
  %imag39 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %15, double* %imag39, align 8
  %16 = bitcast %struct.Py_complex* %retval to i8*
  %17 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  br label %return

if.end.40:                                        ; preds = %land.lhs.true, %if.end
  %real41 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %18 = load double, double* %real41, align 8
  %call42 = call double @fabs(double %18) #5
  store double %call42, double* %ax, align 8
  %imag43 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %19 = load double, double* %imag43, align 8
  %call44 = call double @fabs(double %19) #5
  store double %call44, double* %ay, align 8
  %20 = load double, double* %ax, align 8
  %cmp45 = fcmp olt double %20, 0x10000000000000
  br i1 %cmp45, label %land.lhs.true.47, label %if.else

land.lhs.true.47:                                 ; preds = %if.end.40
  %21 = load double, double* %ay, align 8
  %cmp48 = fcmp olt double %21, 0x10000000000000
  br i1 %cmp48, label %land.lhs.true.50, label %if.else

land.lhs.true.50:                                 ; preds = %land.lhs.true.47
  %22 = load double, double* %ax, align 8
  %cmp51 = fcmp ogt double %22, 0.000000e+00
  br i1 %cmp51, label %if.then.56, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.50
  %23 = load double, double* %ay, align 8
  %cmp54 = fcmp ogt double %23, 0.000000e+00
  br i1 %cmp54, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %lor.lhs.false.53, %land.lhs.true.50
  %24 = load double, double* %ax, align 8
  %call57 = call double @ldexp(double %24, i32 53) #3
  store double %call57, double* %ax, align 8
  %25 = load double, double* %ax, align 8
  %26 = load double, double* %ax, align 8
  %27 = load double, double* %ay, align 8
  %call58 = call double @ldexp(double %27, i32 53) #3
  %call59 = call double @hypot(double %26, double %call58) #3
  %add = fadd double %25, %call59
  %call60 = call double @sqrt(double %add) #3
  %call61 = call double @ldexp(double %call60, i32 -27) #3
  store double %call61, double* %s, align 8
  br label %if.end.66

if.else:                                          ; preds = %lor.lhs.false.53, %land.lhs.true.47, %if.end.40
  %28 = load double, double* %ax, align 8
  %div = fdiv double %28, 8.000000e+00
  store double %div, double* %ax, align 8
  %29 = load double, double* %ax, align 8
  %30 = load double, double* %ax, align 8
  %31 = load double, double* %ay, align 8
  %div62 = fdiv double %31, 8.000000e+00
  %call63 = call double @hypot(double %30, double %div62) #3
  %add64 = fadd double %29, %call63
  %call65 = call double @sqrt(double %add64) #3
  %mul = fmul double 2.000000e+00, %call65
  store double %mul, double* %s, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.56
  %32 = load double, double* %ay, align 8
  %33 = load double, double* %s, align 8
  %mul67 = fmul double 2.000000e+00, %33
  %div68 = fdiv double %32, %mul67
  store double %div68, double* %d, align 8
  %real69 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %34 = load double, double* %real69, align 8
  %cmp70 = fcmp oge double %34, 0.000000e+00
  br i1 %cmp70, label %if.then.72, label %if.else.77

if.then.72:                                       ; preds = %if.end.66
  %35 = load double, double* %s, align 8
  %real73 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %35, double* %real73, align 8
  %36 = load double, double* %d, align 8
  %imag74 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %37 = load double, double* %imag74, align 8
  %call75 = call double @copysign(double %36, double %37) #5
  %imag76 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call75, double* %imag76, align 8
  br label %if.end.82

if.else.77:                                       ; preds = %if.end.66
  %38 = load double, double* %d, align 8
  %real78 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %38, double* %real78, align 8
  %39 = load double, double* %s, align 8
  %imag79 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %40 = load double, double* %imag79, align 8
  %call80 = call double @copysign(double %39, double %40) #5
  %imag81 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call80, double* %imag81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.77, %if.then.72
  %call83 = call i32* @__errno_location() #5
  store i32 0, i32* %call83, align 4
  %41 = bitcast %struct.Py_complex* %retval to i8*
  %42 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.82, %if.then.36, %if.then
  %43 = bitcast %struct.Py_complex* %retval to { double, double }*
  %44 = load { double, double }, { double, double }* %43, align 8
  ret { double, double } %44
}

; Function Attrs: nounwind
declare double @asinh(double) #4

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #2

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #2

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #2

; Function Attrs: nounwind
declare double @ldexp(double, i32) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define internal { double, double } @c_acosh(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %s1 = alloca %struct.Py_complex, align 8
  %s2 = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %coerce61 = alloca %struct.Py_complex, align 8
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
  br i1 %tobool13, label %if.end, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  %call24 = call i32* @__errno_location() #5
  store i32 0, i32* %call24, align 4
  %imag25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %9 = load double, double* %imag25, align 8
  %call26 = call i32 @special_type(double %9)
  %idxprom = zext i32 %call26 to i64
  %real27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real27, align 8
  %call28 = call i32 @special_type(double %10)
  %idxprom29 = zext i32 %call28 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @acosh_special_values, i32 0, i64 %idxprom29
  %arrayidx30 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %11 = bitcast %struct.Py_complex* %retval to i8*
  %12 = bitcast %struct.Py_complex* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %13 = load double, double* %real31, align 8
  %call32 = call double @fabs(double %13) #5
  %cmp = fcmp ogt double %call32, 0x7FCFFFFFFFFFFFFF
  br i1 %cmp, label %if.then.39, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end
  %imag35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag35, align 8
  %call36 = call double @fabs(double %14) #5
  %cmp37 = fcmp ogt double %call36, 0x7FCFFFFFFFFFFFFF
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %lor.lhs.false.34, %if.end
  %real40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %15 = load double, double* %real40, align 8
  %div = fdiv double %15, 2.000000e+00
  %imag41 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %16 = load double, double* %imag41, align 8
  %div42 = fdiv double %16, 2.000000e+00
  %call43 = call double @hypot(double %div, double %div42) #3
  %call44 = call double @log(double %call43) #3
  %add = fadd double %call44, 0x3FF62E42FEFA39EF
  %real45 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %add, double* %real45, align 8
  %imag46 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %17 = load double, double* %imag46, align 8
  %real47 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %18 = load double, double* %real47, align 8
  %call48 = call double @atan2(double %17, double %18) #3
  %imag49 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call48, double* %imag49, align 8
  br label %if.end.75

if.else:                                          ; preds = %lor.lhs.false.34
  %real50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %19 = load double, double* %real50, align 8
  %sub = fsub double %19, 1.000000e+00
  %real51 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 0
  store double %sub, double* %real51, align 8
  %imag52 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %20 = load double, double* %imag52, align 8
  %imag53 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 1
  store double %20, double* %imag53, align 8
  %21 = bitcast %struct.Py_complex* %s1 to { double, double }*
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = load double, double* %22, align 1
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = load double, double* %24, align 1
  %call54 = call { double, double } @c_sqrt(double %23, double %25)
  %26 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = extractvalue { double, double } %call54, 0
  store double %28, double* %27, align 8
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = extractvalue { double, double } %call54, 1
  store double %30, double* %29, align 8
  %31 = bitcast %struct.Py_complex* %s1 to i8*
  %32 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  %real55 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %33 = load double, double* %real55, align 8
  %add56 = fadd double %33, 1.000000e+00
  %real57 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 0
  store double %add56, double* %real57, align 8
  %imag58 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %34 = load double, double* %imag58, align 8
  %imag59 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 1
  store double %34, double* %imag59, align 8
  %35 = bitcast %struct.Py_complex* %s2 to { double, double }*
  %36 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 0
  %37 = load double, double* %36, align 1
  %38 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 1
  %39 = load double, double* %38, align 1
  %call60 = call { double, double } @c_sqrt(double %37, double %39)
  %40 = bitcast %struct.Py_complex* %coerce61 to { double, double }*
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = extractvalue { double, double } %call60, 0
  store double %42, double* %41, align 8
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = extractvalue { double, double } %call60, 1
  store double %44, double* %43, align 8
  %45 = bitcast %struct.Py_complex* %s2 to i8*
  %46 = bitcast %struct.Py_complex* %coerce61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false)
  %real62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 0
  %47 = load double, double* %real62, align 8
  %real63 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 0
  %48 = load double, double* %real63, align 8
  %mul = fmul double %47, %48
  %imag64 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 1
  %49 = load double, double* %imag64, align 8
  %imag65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 1
  %50 = load double, double* %imag65, align 8
  %mul66 = fmul double %49, %50
  %add67 = fadd double %mul, %mul66
  %call68 = call double @asinh(double %add67) #3
  %real69 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call68, double* %real69, align 8
  %imag70 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 1
  %51 = load double, double* %imag70, align 8
  %real71 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 0
  %52 = load double, double* %real71, align 8
  %call72 = call double @atan2(double %51, double %52) #3
  %mul73 = fmul double 2.000000e+00, %call72
  %imag74 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul73, double* %imag74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else, %if.then.39
  %call76 = call i32* @__errno_location() #5
  store i32 0, i32* %call76, align 4
  %53 = bitcast %struct.Py_complex* %retval to i8*
  %54 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.75, %if.then
  %55 = bitcast %struct.Py_complex* %retval to { double, double }*
  %56 = load { double, double }, { double, double }* %55, align 8
  ret { double, double } %56
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_asin(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %s = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %z to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %z.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %z.coerce1, double* %2
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %3 = load double, double* %imag, align 8
  %sub = fsub double -0.000000e+00, %3
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 0
  store double %sub, double* %real, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %4 = load double, double* %real1, align 8
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 1
  store double %4, double* %imag2, align 8
  %5 = bitcast %struct.Py_complex* %s to { double, double }*
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 1
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 1
  %call = call { double, double } @c_asinh(double %7, double %9)
  %10 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %11 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %call, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %call, 1
  store double %14, double* %13, align 8
  %15 = bitcast %struct.Py_complex* %s to i8*
  %16 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 1
  %17 = load double, double* %imag3, align 8
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %17, double* %real4, align 8
  %real5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 0
  %18 = load double, double* %real5, align 8
  %sub6 = fsub double -0.000000e+00, %18
  %imag7 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %sub6, double* %imag7, align 8
  %19 = bitcast %struct.Py_complex* %retval to i8*
  %20 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  %21 = bitcast %struct.Py_complex* %retval to { double, double }*
  %22 = load { double, double }, { double, double }* %21, align 8
  ret { double, double } %22
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_asinh(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %s1 = alloca %struct.Py_complex, align 8
  %s2 = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %coerce83 = alloca %struct.Py_complex, align 8
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
  br i1 %tobool13, label %if.end, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  %call24 = call i32* @__errno_location() #5
  store i32 0, i32* %call24, align 4
  %imag25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %9 = load double, double* %imag25, align 8
  %call26 = call i32 @special_type(double %9)
  %idxprom = zext i32 %call26 to i64
  %real27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real27, align 8
  %call28 = call i32 @special_type(double %10)
  %idxprom29 = zext i32 %call28 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @asinh_special_values, i32 0, i64 %idxprom29
  %arrayidx30 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %11 = bitcast %struct.Py_complex* %retval to i8*
  %12 = bitcast %struct.Py_complex* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %13 = load double, double* %real31, align 8
  %call32 = call double @fabs(double %13) #5
  %cmp = fcmp ogt double %call32, 0x7FCFFFFFFFFFFFFF
  br i1 %cmp, label %if.then.39, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end
  %imag35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag35, align 8
  %call36 = call double @fabs(double %14) #5
  %cmp37 = fcmp ogt double %call36, 0x7FCFFFFFFFFFFFFF
  br i1 %cmp37, label %if.then.39, label %if.else.69

if.then.39:                                       ; preds = %lor.lhs.false.34, %if.end
  %imag40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %15 = load double, double* %imag40, align 8
  %cmp41 = fcmp oge double %15, 0.000000e+00
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.then.39
  %real44 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %16 = load double, double* %real44, align 8
  %div = fdiv double %16, 2.000000e+00
  %imag45 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %17 = load double, double* %imag45, align 8
  %div46 = fdiv double %17, 2.000000e+00
  %call47 = call double @hypot(double %div, double %div46) #3
  %call48 = call double @log(double %call47) #3
  %add = fadd double %call48, 0x3FF62E42FEFA39EF
  %real49 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %18 = load double, double* %real49, align 8
  %call50 = call double @copysign(double %add, double %18) #5
  %real51 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call50, double* %real51, align 8
  br label %if.end.63

if.else:                                          ; preds = %if.then.39
  %real52 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %19 = load double, double* %real52, align 8
  %div53 = fdiv double %19, 2.000000e+00
  %imag54 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %20 = load double, double* %imag54, align 8
  %div55 = fdiv double %20, 2.000000e+00
  %call56 = call double @hypot(double %div53, double %div55) #3
  %call57 = call double @log(double %call56) #3
  %add58 = fadd double %call57, 0x3FF62E42FEFA39EF
  %real59 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %21 = load double, double* %real59, align 8
  %sub = fsub double -0.000000e+00, %21
  %call60 = call double @copysign(double %add58, double %sub) #5
  %sub61 = fsub double -0.000000e+00, %call60
  %real62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %sub61, double* %real62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.then.43
  %imag64 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %22 = load double, double* %imag64, align 8
  %real65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %23 = load double, double* %real65, align 8
  %call66 = call double @fabs(double %23) #5
  %call67 = call double @atan2(double %22, double %call66) #3
  %imag68 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call67, double* %imag68, align 8
  br label %if.end.102

if.else.69:                                       ; preds = %lor.lhs.false.34
  %imag70 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %24 = load double, double* %imag70, align 8
  %add71 = fadd double 1.000000e+00, %24
  %real72 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 0
  store double %add71, double* %real72, align 8
  %real73 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %25 = load double, double* %real73, align 8
  %sub74 = fsub double -0.000000e+00, %25
  %imag75 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 1
  store double %sub74, double* %imag75, align 8
  %26 = bitcast %struct.Py_complex* %s1 to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = load double, double* %27, align 1
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = load double, double* %29, align 1
  %call76 = call { double, double } @c_sqrt(double %28, double %30)
  %31 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0
  %33 = extractvalue { double, double } %call76, 0
  store double %33, double* %32, align 8
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1
  %35 = extractvalue { double, double } %call76, 1
  store double %35, double* %34, align 8
  %36 = bitcast %struct.Py_complex* %s1 to i8*
  %37 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false)
  %imag77 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %38 = load double, double* %imag77, align 8
  %sub78 = fsub double 1.000000e+00, %38
  %real79 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 0
  store double %sub78, double* %real79, align 8
  %real80 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %39 = load double, double* %real80, align 8
  %imag81 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 1
  store double %39, double* %imag81, align 8
  %40 = bitcast %struct.Py_complex* %s2 to { double, double }*
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = load double, double* %41, align 1
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = load double, double* %43, align 1
  %call82 = call { double, double } @c_sqrt(double %42, double %44)
  %45 = bitcast %struct.Py_complex* %coerce83 to { double, double }*
  %46 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 0
  %47 = extractvalue { double, double } %call82, 0
  store double %47, double* %46, align 8
  %48 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 1
  %49 = extractvalue { double, double } %call82, 1
  store double %49, double* %48, align 8
  %50 = bitcast %struct.Py_complex* %s2 to i8*
  %51 = bitcast %struct.Py_complex* %coerce83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false)
  %real84 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 0
  %52 = load double, double* %real84, align 8
  %imag85 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 1
  %53 = load double, double* %imag85, align 8
  %mul = fmul double %52, %53
  %real86 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 0
  %54 = load double, double* %real86, align 8
  %imag87 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 1
  %55 = load double, double* %imag87, align 8
  %mul88 = fmul double %54, %55
  %sub89 = fsub double %mul, %mul88
  %call90 = call double @asinh(double %sub89) #3
  %real91 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call90, double* %real91, align 8
  %imag92 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %56 = load double, double* %imag92, align 8
  %real93 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 0
  %57 = load double, double* %real93, align 8
  %real94 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 0
  %58 = load double, double* %real94, align 8
  %mul95 = fmul double %57, %58
  %imag96 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s1, i32 0, i32 1
  %59 = load double, double* %imag96, align 8
  %imag97 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s2, i32 0, i32 1
  %60 = load double, double* %imag97, align 8
  %mul98 = fmul double %59, %60
  %sub99 = fsub double %mul95, %mul98
  %call100 = call double @atan2(double %56, double %sub99) #3
  %imag101 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call100, double* %imag101, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.69, %if.end.63
  %call103 = call i32* @__errno_location() #5
  store i32 0, i32* %call103, align 4
  %61 = bitcast %struct.Py_complex* %retval to i8*
  %62 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.102, %if.then
  %63 = bitcast %struct.Py_complex* %retval to { double, double }*
  %64 = load { double, double }, { double, double }* %63, align 8
  ret { double, double } %64
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_atan(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %s = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %z to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %z.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %z.coerce1, double* %2
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %3 = load double, double* %imag, align 8
  %sub = fsub double -0.000000e+00, %3
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 0
  store double %sub, double* %real, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %4 = load double, double* %real1, align 8
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 1
  store double %4, double* %imag2, align 8
  %5 = bitcast %struct.Py_complex* %s to { double, double }*
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 1
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 1
  %call = call { double, double } @c_atanh(double %7, double %9)
  %10 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %11 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %call, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %call, 1
  store double %14, double* %13, align 8
  %15 = bitcast %struct.Py_complex* %s to i8*
  %16 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 1
  %17 = load double, double* %imag3, align 8
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %17, double* %real4, align 8
  %real5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 0
  %18 = load double, double* %real5, align 8
  %sub6 = fsub double -0.000000e+00, %18
  %imag7 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %sub6, double* %imag7, align 8
  %19 = bitcast %struct.Py_complex* %retval to i8*
  %20 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  %21 = bitcast %struct.Py_complex* %retval to { double, double }*
  %22 = load { double, double }, { double, double }* %21, align 8
  ret { double, double } %22
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_atanh(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %ay = alloca double, align 8
  %h = alloca double, align 8
  %agg.tmp = alloca %struct.Py_complex, align 8
  %agg.tmp34 = alloca %struct.Py_complex, align 8
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
  br i1 %tobool13, label %if.end, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  %call24 = call i32* @__errno_location() #5
  store i32 0, i32* %call24, align 4
  %imag25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %9 = load double, double* %imag25, align 8
  %call26 = call i32 @special_type(double %9)
  %idxprom = zext i32 %call26 to i64
  %real27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real27, align 8
  %call28 = call i32 @special_type(double %10)
  %idxprom29 = zext i32 %call28 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @atanh_special_values, i32 0, i64 %idxprom29
  %arrayidx30 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %11 = bitcast %struct.Py_complex* %retval to i8*
  %12 = bitcast %struct.Py_complex* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %13 = load double, double* %real31, align 8
  %cmp = fcmp olt double %13, 0.000000e+00
  br i1 %cmp, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end
  %14 = bitcast %struct.Py_complex* %z to { double, double }*
  %15 = getelementptr { double, double }, { double, double }* %14, i32 0, i32 0
  %16 = load double, double* %15, align 1
  %17 = getelementptr { double, double }, { double, double }* %14, i32 0, i32 1
  %18 = load double, double* %17, align 1
  %call35 = call { double, double } @_Py_c_neg(double %16, double %18)
  %19 = bitcast %struct.Py_complex* %agg.tmp34 to { double, double }*
  %20 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 0
  %21 = extractvalue { double, double } %call35, 0
  store double %21, double* %20, align 8
  %22 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 1
  %23 = extractvalue { double, double } %call35, 1
  store double %23, double* %22, align 8
  %24 = bitcast %struct.Py_complex* %agg.tmp34 to { double, double }*
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = load double, double* %25, align 1
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = load double, double* %27, align 1
  %call36 = call { double, double } @c_atanh(double %26, double %28)
  %29 = bitcast %struct.Py_complex* %agg.tmp to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = extractvalue { double, double } %call36, 0
  store double %31, double* %30, align 8
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = extractvalue { double, double } %call36, 1
  store double %33, double* %32, align 8
  %34 = bitcast %struct.Py_complex* %agg.tmp to { double, double }*
  %35 = getelementptr { double, double }, { double, double }* %34, i32 0, i32 0
  %36 = load double, double* %35, align 1
  %37 = getelementptr { double, double }, { double, double }* %34, i32 0, i32 1
  %38 = load double, double* %37, align 1
  %call37 = call { double, double } @_Py_c_neg(double %36, double %38)
  %39 = bitcast %struct.Py_complex* %retval to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = extractvalue { double, double } %call37, 0
  store double %41, double* %40, align 8
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = extractvalue { double, double } %call37, 1
  store double %43, double* %42, align 8
  br label %return

if.end.38:                                        ; preds = %if.end
  %imag39 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %44 = load double, double* %imag39, align 8
  %call40 = call double @fabs(double %44) #5
  store double %call40, double* %ay, align 8
  %real41 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %45 = load double, double* %real41, align 8
  %call42 = call double @sqrt(double 0x7FCFFFFFFFFFFFFF) #3
  %cmp43 = fcmp ogt double %45, %call42
  br i1 %cmp43, label %if.then.49, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.end.38
  %46 = load double, double* %ay, align 8
  %call46 = call double @sqrt(double 0x7FCFFFFFFFFFFFFF) #3
  %cmp47 = fcmp ogt double %46, %call46
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %lor.lhs.false.45, %if.end.38
  %real50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %47 = load double, double* %real50, align 8
  %div = fdiv double %47, 2.000000e+00
  %imag51 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %48 = load double, double* %imag51, align 8
  %div52 = fdiv double %48, 2.000000e+00
  %call53 = call double @hypot(double %div, double %div52) #3
  store double %call53, double* %h, align 8
  %real54 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %49 = load double, double* %real54, align 8
  %div55 = fdiv double %49, 4.000000e+00
  %50 = load double, double* %h, align 8
  %div56 = fdiv double %div55, %50
  %51 = load double, double* %h, align 8
  %div57 = fdiv double %div56, %51
  %real58 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %div57, double* %real58, align 8
  %imag59 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %52 = load double, double* %imag59, align 8
  %sub = fsub double -0.000000e+00, %52
  %call60 = call double @copysign(double 0x3FF921FB54442D18, double %sub) #5
  %sub61 = fsub double -0.000000e+00, %call60
  %imag62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %sub61, double* %imag62, align 8
  %call63 = call i32* @__errno_location() #5
  store i32 0, i32* %call63, align 4
  br label %if.end.121

if.else:                                          ; preds = %lor.lhs.false.45
  %real64 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %53 = load double, double* %real64, align 8
  %cmp65 = fcmp oeq double %53, 1.000000e+00
  br i1 %cmp65, label %land.lhs.true, label %if.else.94

land.lhs.true:                                    ; preds = %if.else
  %54 = load double, double* %ay, align 8
  %call67 = call double @sqrt(double 0x10000000000000) #3
  %cmp68 = fcmp olt double %54, %call67
  br i1 %cmp68, label %if.then.70, label %if.else.94

if.then.70:                                       ; preds = %land.lhs.true
  %55 = load double, double* %ay, align 8
  %cmp71 = fcmp oeq double %55, 0.000000e+00
  br i1 %cmp71, label %if.then.73, label %if.else.78

if.then.73:                                       ; preds = %if.then.70
  %real74 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double 0x7FF0000000000000, double* %real74, align 8
  %imag75 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %56 = load double, double* %imag75, align 8
  %imag76 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %56, double* %imag76, align 8
  %call77 = call i32* @__errno_location() #5
  store i32 33, i32* %call77, align 4
  br label %if.end.93

if.else.78:                                       ; preds = %if.then.70
  %57 = load double, double* %ay, align 8
  %call79 = call double @sqrt(double %57) #3
  %58 = load double, double* %ay, align 8
  %call80 = call double @hypot(double %58, double 2.000000e+00) #3
  %call81 = call double @sqrt(double %call80) #3
  %div82 = fdiv double %call79, %call81
  %call83 = call double @log(double %div82) #3
  %sub84 = fsub double -0.000000e+00, %call83
  %real85 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %sub84, double* %real85, align 8
  %59 = load double, double* %ay, align 8
  %sub86 = fsub double -0.000000e+00, %59
  %call87 = call double @atan2(double 2.000000e+00, double %sub86) #3
  %div88 = fdiv double %call87, 2.000000e+00
  %imag89 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %60 = load double, double* %imag89, align 8
  %call90 = call double @copysign(double %div88, double %60) #5
  %imag91 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call90, double* %imag91, align 8
  %call92 = call i32* @__errno_location() #5
  store i32 0, i32* %call92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.78, %if.then.73
  br label %if.end.120

if.else.94:                                       ; preds = %land.lhs.true, %if.else
  %real95 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %61 = load double, double* %real95, align 8
  %mul = fmul double 4.000000e+00, %61
  %real96 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %62 = load double, double* %real96, align 8
  %sub97 = fsub double 1.000000e+00, %62
  %real98 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %63 = load double, double* %real98, align 8
  %sub99 = fsub double 1.000000e+00, %63
  %mul100 = fmul double %sub97, %sub99
  %64 = load double, double* %ay, align 8
  %65 = load double, double* %ay, align 8
  %mul101 = fmul double %64, %65
  %add = fadd double %mul100, %mul101
  %div102 = fdiv double %mul, %add
  %call103 = call double @_Py_log1p(double %div102)
  %div104 = fdiv double %call103, 4.000000e+00
  %real105 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %div104, double* %real105, align 8
  %imag106 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %66 = load double, double* %imag106, align 8
  %mul107 = fmul double -2.000000e+00, %66
  %real108 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %67 = load double, double* %real108, align 8
  %sub109 = fsub double 1.000000e+00, %67
  %real110 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %68 = load double, double* %real110, align 8
  %add111 = fadd double 1.000000e+00, %68
  %mul112 = fmul double %sub109, %add111
  %69 = load double, double* %ay, align 8
  %70 = load double, double* %ay, align 8
  %mul113 = fmul double %69, %70
  %sub114 = fsub double %mul112, %mul113
  %call115 = call double @atan2(double %mul107, double %sub114) #3
  %sub116 = fsub double -0.000000e+00, %call115
  %div117 = fdiv double %sub116, 2.000000e+00
  %imag118 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %div117, double* %imag118, align 8
  %call119 = call i32* @__errno_location() #5
  store i32 0, i32* %call119, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.94, %if.end.93
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.49
  %71 = bitcast %struct.Py_complex* %retval to i8*
  %72 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.121, %if.then.33, %if.then
  %73 = bitcast %struct.Py_complex* %retval to { double, double }*
  %74 = load { double, double }, { double, double }* %73, align 8
  ret { double, double } %74
}

declare { double, double } @_Py_c_neg(double, double) #1

declare double @_Py_log1p(double) #1

; Function Attrs: nounwind uwtable
define internal { double, double } @c_cos(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %z to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %z.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %z.coerce1, double* %2
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %3 = load double, double* %imag, align 8
  %sub = fsub double -0.000000e+00, %3
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %sub, double* %real, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %4 = load double, double* %real1, align 8
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %4, double* %imag2, align 8
  %5 = bitcast %struct.Py_complex* %r to { double, double }*
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 1
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 1
  %call = call { double, double } @c_cosh(double %7, double %9)
  %10 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %11 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %call, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %call, 1
  store double %14, double* %13, align 8
  %15 = bitcast %struct.Py_complex* %r to i8*
  %16 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %17 = bitcast %struct.Py_complex* %retval to i8*
  %18 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = bitcast %struct.Py_complex* %retval to { double, double }*
  %20 = load { double, double }, { double, double }* %19, align 8
  ret { double, double } %20
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_cosh(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %x_minus_one = alloca double, align 8
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
  br i1 %tobool13, label %if.end.122, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.122, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.122, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  br i1 false, label %cond.true.24, label %cond.false.29

cond.true.24:                                     ; preds = %if.then
  %real25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %9 = load double, double* %real25, align 8
  %conv26 = fptrunc double %9 to float
  %call27 = call i32 @__isinff(float %conv26) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true, label %if.else.78

cond.false.29:                                    ; preds = %if.then
  br i1 true, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.false.29
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real31, align 8
  %call32 = call i32 @__isinf(double %10) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true, label %if.else.78

cond.false.34:                                    ; preds = %cond.false.29
  %real35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %11 = load double, double* %real35, align 8
  %conv36 = fpext double %11 to x86_fp80
  %call37 = call i32 @__isinfl(x86_fp80 %conv36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  br i1 false, label %cond.true.39, label %cond.false.44

cond.true.39:                                     ; preds = %land.lhs.true
  %imag40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %12 = load double, double* %imag40, align 8
  %conv41 = fptrunc double %12 to float
  %call42 = call i32 @__finitef(float %conv41) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.54, label %if.else.78

cond.false.44:                                    ; preds = %land.lhs.true
  br i1 true, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %cond.false.44
  %imag46 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %13 = load double, double* %imag46, align 8
  %call47 = call i32 @__finite(double %13) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true.54, label %if.else.78

cond.false.49:                                    ; preds = %cond.false.44
  %imag50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag50, align 8
  %conv51 = fpext double %14 to x86_fp80
  %call52 = call i32 @__finitel(x86_fp80 %conv51) #5
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.78

land.lhs.true.54:                                 ; preds = %cond.false.49, %cond.true.45, %cond.true.39
  %imag55 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %15 = load double, double* %imag55, align 8
  %cmp = fcmp une double %15, 0.000000e+00
  br i1 %cmp, label %if.then.57, label %if.else.78

if.then.57:                                       ; preds = %land.lhs.true.54
  %real58 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %16 = load double, double* %real58, align 8
  %cmp59 = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.then.57
  %imag62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %17 = load double, double* %imag62, align 8
  %call63 = call double @cos(double %17) #3
  %call64 = call double @copysign(double 0x7FF0000000000000, double %call63) #5
  %real65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call64, double* %real65, align 8
  %imag66 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %18 = load double, double* %imag66, align 8
  %call67 = call double @sin(double %18) #3
  %call68 = call double @copysign(double 0x7FF0000000000000, double %call67) #5
  %imag69 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call68, double* %imag69, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.57
  %imag70 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %19 = load double, double* %imag70, align 8
  %call71 = call double @cos(double %19) #3
  %call72 = call double @copysign(double 0x7FF0000000000000, double %call71) #5
  %real73 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call72, double* %real73, align 8
  %imag74 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %20 = load double, double* %imag74, align 8
  %call75 = call double @sin(double %20) #3
  %call76 = call double @copysign(double 0x7FF0000000000000, double %call75) #5
  %sub = fsub double -0.000000e+00, %call76
  %imag77 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %sub, double* %imag77, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.61
  br label %if.end.85

if.else.78:                                       ; preds = %land.lhs.true.54, %cond.false.49, %cond.true.45, %cond.true.39, %cond.false.34, %cond.true.30, %cond.true.24
  %imag79 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %21 = load double, double* %imag79, align 8
  %call80 = call i32 @special_type(double %21)
  %idxprom = zext i32 %call80 to i64
  %real81 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %22 = load double, double* %real81, align 8
  %call82 = call i32 @special_type(double %22)
  %idxprom83 = zext i32 %call82 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @cosh_special_values, i32 0, i64 %idxprom83
  %arrayidx84 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %23 = bitcast %struct.Py_complex* %r to i8*
  %24 = bitcast %struct.Py_complex* %arrayidx84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.78, %if.end
  br i1 false, label %cond.true.86, label %cond.false.91

cond.true.86:                                     ; preds = %if.end.85
  %imag87 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %25 = load double, double* %imag87, align 8
  %conv88 = fptrunc double %25 to float
  %call89 = call i32 @__isinff(float %conv88) #5
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %land.lhs.true.101, label %if.else.119

cond.false.91:                                    ; preds = %if.end.85
  br i1 true, label %cond.true.92, label %cond.false.96

cond.true.92:                                     ; preds = %cond.false.91
  %imag93 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %26 = load double, double* %imag93, align 8
  %call94 = call i32 @__isinf(double %26) #5
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %land.lhs.true.101, label %if.else.119

cond.false.96:                                    ; preds = %cond.false.91
  %imag97 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %27 = load double, double* %imag97, align 8
  %conv98 = fpext double %27 to x86_fp80
  %call99 = call i32 @__isinfl(x86_fp80 %conv98) #5
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.else.119

land.lhs.true.101:                                ; preds = %cond.false.96, %cond.true.92, %cond.true.86
  br i1 false, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %land.lhs.true.101
  %real103 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %28 = load double, double* %real103, align 8
  %conv104 = fptrunc double %28 to float
  %call105 = call i32 @__isnanf(float %conv104) #5
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.else.119, label %if.then.117

cond.false.107:                                   ; preds = %land.lhs.true.101
  br i1 true, label %cond.true.108, label %cond.false.112

cond.true.108:                                    ; preds = %cond.false.107
  %real109 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %29 = load double, double* %real109, align 8
  %call110 = call i32 @__isnan(double %29) #5
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.else.119, label %if.then.117

cond.false.112:                                   ; preds = %cond.false.107
  %real113 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %30 = load double, double* %real113, align 8
  %conv114 = fpext double %30 to x86_fp80
  %call115 = call i32 @__isnanl(x86_fp80 %conv114) #5
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.else.119, label %if.then.117

if.then.117:                                      ; preds = %cond.false.112, %cond.true.108, %cond.true.102
  %call118 = call i32* @__errno_location() #5
  store i32 33, i32* %call118, align 4
  br label %if.end.121

if.else.119:                                      ; preds = %cond.false.112, %cond.true.108, %cond.true.102, %cond.false.96, %cond.true.92, %cond.true.86
  %call120 = call i32* @__errno_location() #5
  store i32 0, i32* %call120, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.119, %if.then.117
  %31 = bitcast %struct.Py_complex* %retval to i8*
  %32 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  br label %return

if.end.122:                                       ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real123 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %33 = load double, double* %real123, align 8
  %call124 = call double @fabs(double %33) #5
  %call125 = call double @log(double 0x7FCFFFFFFFFFFFFF) #3
  %cmp126 = fcmp ogt double %call124, %call125
  br i1 %cmp126, label %if.then.128, label %if.else.144

if.then.128:                                      ; preds = %if.end.122
  %real129 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %34 = load double, double* %real129, align 8
  %real130 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %35 = load double, double* %real130, align 8
  %call131 = call double @copysign(double 1.000000e+00, double %35) #5
  %sub132 = fsub double %34, %call131
  store double %sub132, double* %x_minus_one, align 8
  %imag133 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %36 = load double, double* %imag133, align 8
  %call134 = call double @cos(double %36) #3
  %37 = load double, double* %x_minus_one, align 8
  %call135 = call double @cosh(double %37) #3
  %mul = fmul double %call134, %call135
  %mul136 = fmul double %mul, 0x4005BF0A8B145769
  %real137 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %mul136, double* %real137, align 8
  %imag138 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %38 = load double, double* %imag138, align 8
  %call139 = call double @sin(double %38) #3
  %39 = load double, double* %x_minus_one, align 8
  %call140 = call double @sinh(double %39) #3
  %mul141 = fmul double %call139, %call140
  %mul142 = fmul double %mul141, 0x4005BF0A8B145769
  %imag143 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul142, double* %imag143, align 8
  br label %if.end.157

if.else.144:                                      ; preds = %if.end.122
  %imag145 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %40 = load double, double* %imag145, align 8
  %call146 = call double @cos(double %40) #3
  %real147 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %41 = load double, double* %real147, align 8
  %call148 = call double @cosh(double %41) #3
  %mul149 = fmul double %call146, %call148
  %real150 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %mul149, double* %real150, align 8
  %imag151 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %42 = load double, double* %imag151, align 8
  %call152 = call double @sin(double %42) #3
  %real153 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %43 = load double, double* %real153, align 8
  %call154 = call double @sinh(double %43) #3
  %mul155 = fmul double %call152, %call154
  %imag156 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul155, double* %imag156, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.144, %if.then.128
  br i1 false, label %cond.true.158, label %cond.false.163

cond.true.158:                                    ; preds = %if.end.157
  %real159 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %44 = load double, double* %real159, align 8
  %conv160 = fptrunc double %44 to float
  %call161 = call i32 @__isinff(float %conv160) #5
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.189, label %lor.lhs.false.173

cond.false.163:                                   ; preds = %if.end.157
  br i1 true, label %cond.true.164, label %cond.false.168

cond.true.164:                                    ; preds = %cond.false.163
  %real165 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %45 = load double, double* %real165, align 8
  %call166 = call i32 @__isinf(double %45) #5
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.then.189, label %lor.lhs.false.173

cond.false.168:                                   ; preds = %cond.false.163
  %real169 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %46 = load double, double* %real169, align 8
  %conv170 = fpext double %46 to x86_fp80
  %call171 = call i32 @__isinfl(x86_fp80 %conv170) #5
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.then.189, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %cond.false.168, %cond.true.164, %cond.true.158
  br i1 false, label %cond.true.174, label %cond.false.179

cond.true.174:                                    ; preds = %lor.lhs.false.173
  %imag175 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %47 = load double, double* %imag175, align 8
  %conv176 = fptrunc double %47 to float
  %call177 = call i32 @__isinff(float %conv176) #5
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then.189, label %if.else.191

cond.false.179:                                   ; preds = %lor.lhs.false.173
  br i1 true, label %cond.true.180, label %cond.false.184

cond.true.180:                                    ; preds = %cond.false.179
  %imag181 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %48 = load double, double* %imag181, align 8
  %call182 = call i32 @__isinf(double %48) #5
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.189, label %if.else.191

cond.false.184:                                   ; preds = %cond.false.179
  %imag185 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %49 = load double, double* %imag185, align 8
  %conv186 = fpext double %49 to x86_fp80
  %call187 = call i32 @__isinfl(x86_fp80 %conv186) #5
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then.189, label %if.else.191

if.then.189:                                      ; preds = %cond.false.184, %cond.true.180, %cond.true.174, %cond.false.168, %cond.true.164, %cond.true.158
  %call190 = call i32* @__errno_location() #5
  store i32 34, i32* %call190, align 4
  br label %if.end.193

if.else.191:                                      ; preds = %cond.false.184, %cond.true.180, %cond.true.174
  %call192 = call i32* @__errno_location() #5
  store i32 0, i32* %call192, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.191, %if.then.189
  %50 = bitcast %struct.Py_complex* %retval to i8*
  %51 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.193, %if.end.121
  %52 = bitcast %struct.Py_complex* %retval to { double, double }*
  %53 = load { double, double }, { double, double }* %52, align 8
  ret { double, double } %53
}

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #2

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #2

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #2

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare double @cosh(double) #4

; Function Attrs: nounwind
declare double @sinh(double) #4

; Function Attrs: nounwind uwtable
define internal { double, double } @c_exp(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %l = alloca double, align 8
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
  br i1 %tobool13, label %if.end.142, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.142, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.142, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  br i1 false, label %cond.true.24, label %cond.false.29

cond.true.24:                                     ; preds = %if.then
  %real25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %9 = load double, double* %real25, align 8
  %conv26 = fptrunc double %9 to float
  %call27 = call i32 @__isinff(float %conv26) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true, label %if.else.78

cond.false.29:                                    ; preds = %if.then
  br i1 true, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.false.29
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real31, align 8
  %call32 = call i32 @__isinf(double %10) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true, label %if.else.78

cond.false.34:                                    ; preds = %cond.false.29
  %real35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %11 = load double, double* %real35, align 8
  %conv36 = fpext double %11 to x86_fp80
  %call37 = call i32 @__isinfl(x86_fp80 %conv36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  br i1 false, label %cond.true.39, label %cond.false.44

cond.true.39:                                     ; preds = %land.lhs.true
  %imag40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %12 = load double, double* %imag40, align 8
  %conv41 = fptrunc double %12 to float
  %call42 = call i32 @__finitef(float %conv41) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.54, label %if.else.78

cond.false.44:                                    ; preds = %land.lhs.true
  br i1 true, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %cond.false.44
  %imag46 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %13 = load double, double* %imag46, align 8
  %call47 = call i32 @__finite(double %13) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true.54, label %if.else.78

cond.false.49:                                    ; preds = %cond.false.44
  %imag50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag50, align 8
  %conv51 = fpext double %14 to x86_fp80
  %call52 = call i32 @__finitel(x86_fp80 %conv51) #5
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.78

land.lhs.true.54:                                 ; preds = %cond.false.49, %cond.true.45, %cond.true.39
  %imag55 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %15 = load double, double* %imag55, align 8
  %cmp = fcmp une double %15, 0.000000e+00
  br i1 %cmp, label %if.then.57, label %if.else.78

if.then.57:                                       ; preds = %land.lhs.true.54
  %real58 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %16 = load double, double* %real58, align 8
  %cmp59 = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.then.57
  %imag62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %17 = load double, double* %imag62, align 8
  %call63 = call double @cos(double %17) #3
  %call64 = call double @copysign(double 0x7FF0000000000000, double %call63) #5
  %real65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call64, double* %real65, align 8
  %imag66 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %18 = load double, double* %imag66, align 8
  %call67 = call double @sin(double %18) #3
  %call68 = call double @copysign(double 0x7FF0000000000000, double %call67) #5
  %imag69 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call68, double* %imag69, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.57
  %imag70 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %19 = load double, double* %imag70, align 8
  %call71 = call double @cos(double %19) #3
  %call72 = call double @copysign(double 0.000000e+00, double %call71) #5
  %real73 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call72, double* %real73, align 8
  %imag74 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %20 = load double, double* %imag74, align 8
  %call75 = call double @sin(double %20) #3
  %call76 = call double @copysign(double 0.000000e+00, double %call75) #5
  %imag77 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call76, double* %imag77, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.61
  br label %if.end.85

if.else.78:                                       ; preds = %land.lhs.true.54, %cond.false.49, %cond.true.45, %cond.true.39, %cond.false.34, %cond.true.30, %cond.true.24
  %imag79 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %21 = load double, double* %imag79, align 8
  %call80 = call i32 @special_type(double %21)
  %idxprom = zext i32 %call80 to i64
  %real81 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %22 = load double, double* %real81, align 8
  %call82 = call i32 @special_type(double %22)
  %idxprom83 = zext i32 %call82 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @exp_special_values, i32 0, i64 %idxprom83
  %arrayidx84 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %23 = bitcast %struct.Py_complex* %r to i8*
  %24 = bitcast %struct.Py_complex* %arrayidx84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.78, %if.end
  br i1 false, label %cond.true.86, label %cond.false.91

cond.true.86:                                     ; preds = %if.end.85
  %imag87 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %25 = load double, double* %imag87, align 8
  %conv88 = fptrunc double %25 to float
  %call89 = call i32 @__isinff(float %conv88) #5
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %land.lhs.true.101, label %if.else.139

cond.false.91:                                    ; preds = %if.end.85
  br i1 true, label %cond.true.92, label %cond.false.96

cond.true.92:                                     ; preds = %cond.false.91
  %imag93 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %26 = load double, double* %imag93, align 8
  %call94 = call i32 @__isinf(double %26) #5
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %land.lhs.true.101, label %if.else.139

cond.false.96:                                    ; preds = %cond.false.91
  %imag97 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %27 = load double, double* %imag97, align 8
  %conv98 = fpext double %27 to x86_fp80
  %call99 = call i32 @__isinfl(x86_fp80 %conv98) #5
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.else.139

land.lhs.true.101:                                ; preds = %cond.false.96, %cond.true.92, %cond.true.86
  br i1 false, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %land.lhs.true.101
  %real103 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %28 = load double, double* %real103, align 8
  %conv104 = fptrunc double %28 to float
  %call105 = call i32 @__finitef(float %conv104) #5
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.137, label %lor.lhs.false.117

cond.false.107:                                   ; preds = %land.lhs.true.101
  br i1 true, label %cond.true.108, label %cond.false.112

cond.true.108:                                    ; preds = %cond.false.107
  %real109 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %29 = load double, double* %real109, align 8
  %call110 = call i32 @__finite(double %29) #5
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.137, label %lor.lhs.false.117

cond.false.112:                                   ; preds = %cond.false.107
  %real113 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %30 = load double, double* %real113, align 8
  %conv114 = fpext double %30 to x86_fp80
  %call115 = call i32 @__finitel(x86_fp80 %conv114) #5
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then.137, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %cond.false.112, %cond.true.108, %cond.true.102
  br i1 false, label %cond.true.118, label %cond.false.123

cond.true.118:                                    ; preds = %lor.lhs.false.117
  %real119 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %31 = load double, double* %real119, align 8
  %conv120 = fptrunc double %31 to float
  %call121 = call i32 @__isinff(float %conv120) #5
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %land.lhs.true.133, label %if.else.139

cond.false.123:                                   ; preds = %lor.lhs.false.117
  br i1 true, label %cond.true.124, label %cond.false.128

cond.true.124:                                    ; preds = %cond.false.123
  %real125 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %32 = load double, double* %real125, align 8
  %call126 = call i32 @__isinf(double %32) #5
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %land.lhs.true.133, label %if.else.139

cond.false.128:                                   ; preds = %cond.false.123
  %real129 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %33 = load double, double* %real129, align 8
  %conv130 = fpext double %33 to x86_fp80
  %call131 = call i32 @__isinfl(x86_fp80 %conv130) #5
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %land.lhs.true.133, label %if.else.139

land.lhs.true.133:                                ; preds = %cond.false.128, %cond.true.124, %cond.true.118
  %real134 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %34 = load double, double* %real134, align 8
  %cmp135 = fcmp ogt double %34, 0.000000e+00
  br i1 %cmp135, label %if.then.137, label %if.else.139

if.then.137:                                      ; preds = %land.lhs.true.133, %cond.false.112, %cond.true.108, %cond.true.102
  %call138 = call i32* @__errno_location() #5
  store i32 33, i32* %call138, align 4
  br label %if.end.141

if.else.139:                                      ; preds = %land.lhs.true.133, %cond.false.128, %cond.true.124, %cond.true.118, %cond.false.96, %cond.true.92, %cond.true.86
  %call140 = call i32* @__errno_location() #5
  store i32 0, i32* %call140, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.139, %if.then.137
  %35 = bitcast %struct.Py_complex* %retval to i8*
  %36 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false)
  br label %return

if.end.142:                                       ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real143 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %37 = load double, double* %real143, align 8
  %call144 = call double @log(double 0x7FCFFFFFFFFFFFFF) #3
  %cmp145 = fcmp ogt double %37, %call144
  br i1 %cmp145, label %if.then.147, label %if.else.159

if.then.147:                                      ; preds = %if.end.142
  %real148 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %38 = load double, double* %real148, align 8
  %sub = fsub double %38, 1.000000e+00
  %call149 = call double @exp(double %sub) #3
  store double %call149, double* %l, align 8
  %39 = load double, double* %l, align 8
  %imag150 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %40 = load double, double* %imag150, align 8
  %call151 = call double @cos(double %40) #3
  %mul = fmul double %39, %call151
  %mul152 = fmul double %mul, 0x4005BF0A8B145769
  %real153 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %mul152, double* %real153, align 8
  %41 = load double, double* %l, align 8
  %imag154 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %42 = load double, double* %imag154, align 8
  %call155 = call double @sin(double %42) #3
  %mul156 = fmul double %41, %call155
  %mul157 = fmul double %mul156, 0x4005BF0A8B145769
  %imag158 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul157, double* %imag158, align 8
  br label %if.end.170

if.else.159:                                      ; preds = %if.end.142
  %real160 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %43 = load double, double* %real160, align 8
  %call161 = call double @exp(double %43) #3
  store double %call161, double* %l, align 8
  %44 = load double, double* %l, align 8
  %imag162 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %45 = load double, double* %imag162, align 8
  %call163 = call double @cos(double %45) #3
  %mul164 = fmul double %44, %call163
  %real165 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %mul164, double* %real165, align 8
  %46 = load double, double* %l, align 8
  %imag166 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %47 = load double, double* %imag166, align 8
  %call167 = call double @sin(double %47) #3
  %mul168 = fmul double %46, %call167
  %imag169 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul168, double* %imag169, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.159, %if.then.147
  br i1 false, label %cond.true.171, label %cond.false.176

cond.true.171:                                    ; preds = %if.end.170
  %real172 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %48 = load double, double* %real172, align 8
  %conv173 = fptrunc double %48 to float
  %call174 = call i32 @__isinff(float %conv173) #5
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.then.202, label %lor.lhs.false.186

cond.false.176:                                   ; preds = %if.end.170
  br i1 true, label %cond.true.177, label %cond.false.181

cond.true.177:                                    ; preds = %cond.false.176
  %real178 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %49 = load double, double* %real178, align 8
  %call179 = call i32 @__isinf(double %49) #5
  %tobool180 = icmp ne i32 %call179, 0
  br i1 %tobool180, label %if.then.202, label %lor.lhs.false.186

cond.false.181:                                   ; preds = %cond.false.176
  %real182 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %50 = load double, double* %real182, align 8
  %conv183 = fpext double %50 to x86_fp80
  %call184 = call i32 @__isinfl(x86_fp80 %conv183) #5
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.then.202, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %cond.false.181, %cond.true.177, %cond.true.171
  br i1 false, label %cond.true.187, label %cond.false.192

cond.true.187:                                    ; preds = %lor.lhs.false.186
  %imag188 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %51 = load double, double* %imag188, align 8
  %conv189 = fptrunc double %51 to float
  %call190 = call i32 @__isinff(float %conv189) #5
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.then.202, label %if.else.204

cond.false.192:                                   ; preds = %lor.lhs.false.186
  br i1 true, label %cond.true.193, label %cond.false.197

cond.true.193:                                    ; preds = %cond.false.192
  %imag194 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %52 = load double, double* %imag194, align 8
  %call195 = call i32 @__isinf(double %52) #5
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then.202, label %if.else.204

cond.false.197:                                   ; preds = %cond.false.192
  %imag198 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %53 = load double, double* %imag198, align 8
  %conv199 = fpext double %53 to x86_fp80
  %call200 = call i32 @__isinfl(x86_fp80 %conv199) #5
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then.202, label %if.else.204

if.then.202:                                      ; preds = %cond.false.197, %cond.true.193, %cond.true.187, %cond.false.181, %cond.true.177, %cond.true.171
  %call203 = call i32* @__errno_location() #5
  store i32 34, i32* %call203, align 4
  br label %if.end.206

if.else.204:                                      ; preds = %cond.false.197, %cond.true.193, %cond.true.187
  %call205 = call i32* @__errno_location() #5
  store i32 0, i32* %call205, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.204, %if.then.202
  %54 = bitcast %struct.Py_complex* %retval to i8*
  %55 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.206, %if.end.141
  %56 = bitcast %struct.Py_complex* %retval to { double, double }*
  %57 = load { double, double }, { double, double }* %56, align 8
  ret { double, double } %57
}

; Function Attrs: nounwind
declare double @exp(double) #4

declare %struct._object* @PyBool_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal { double, double } @c_log(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %am = alloca double, align 8
  %an = alloca double, align 8
  %h = alloca double, align 8
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
  br i1 %tobool13, label %if.end, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  %call24 = call i32* @__errno_location() #5
  store i32 0, i32* %call24, align 4
  %imag25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %9 = load double, double* %imag25, align 8
  %call26 = call i32 @special_type(double %9)
  %idxprom = zext i32 %call26 to i64
  %real27 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real27, align 8
  %call28 = call i32 @special_type(double %10)
  %idxprom29 = zext i32 %call28 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @log_special_values, i32 0, i64 %idxprom29
  %arrayidx30 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %11 = bitcast %struct.Py_complex* %retval to i8*
  %12 = bitcast %struct.Py_complex* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %13 = load double, double* %real31, align 8
  %call32 = call double @fabs(double %13) #5
  store double %call32, double* %ax, align 8
  %imag33 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag33, align 8
  %call34 = call double @fabs(double %14) #5
  store double %call34, double* %ay, align 8
  %15 = load double, double* %ax, align 8
  %cmp = fcmp ogt double %15, 0x7FCFFFFFFFFFFFFF
  br i1 %cmp, label %if.then.39, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end
  %16 = load double, double* %ay, align 8
  %cmp37 = fcmp ogt double %16, 0x7FCFFFFFFFFFFFFF
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %lor.lhs.false.36, %if.end
  %17 = load double, double* %ax, align 8
  %div = fdiv double %17, 2.000000e+00
  %18 = load double, double* %ay, align 8
  %div40 = fdiv double %18, 2.000000e+00
  %call41 = call double @hypot(double %div, double %div40) #3
  %call42 = call double @log(double %call41) #3
  %add = fadd double %call42, 0x3FE62E42FEFA39EF
  %real43 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %add, double* %real43, align 8
  br label %if.end.98

if.else:                                          ; preds = %lor.lhs.false.36
  %19 = load double, double* %ax, align 8
  %cmp44 = fcmp olt double %19, 0x10000000000000
  br i1 %cmp44, label %land.lhs.true, label %if.else.68

land.lhs.true:                                    ; preds = %if.else
  %20 = load double, double* %ay, align 8
  %cmp46 = fcmp olt double %20, 0x10000000000000
  br i1 %cmp46, label %if.then.48, label %if.else.68

if.then.48:                                       ; preds = %land.lhs.true
  %21 = load double, double* %ax, align 8
  %cmp49 = fcmp ogt double %21, 0.000000e+00
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.then.48
  %22 = load double, double* %ay, align 8
  %cmp52 = fcmp ogt double %22, 0.000000e+00
  br i1 %cmp52, label %if.then.54, label %if.else.60

if.then.54:                                       ; preds = %lor.lhs.false.51, %if.then.48
  %23 = load double, double* %ax, align 8
  %call55 = call double @ldexp(double %23, i32 53) #3
  %24 = load double, double* %ay, align 8
  %call56 = call double @ldexp(double %24, i32 53) #3
  %call57 = call double @hypot(double %call55, double %call56) #3
  %call58 = call double @log(double %call57) #3
  %sub = fsub double %call58, 0x40425E4F7B2737FA
  %real59 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %sub, double* %real59, align 8
  br label %if.end.67

if.else.60:                                       ; preds = %lor.lhs.false.51
  %real61 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double 0xFFF0000000000000, double* %real61, align 8
  %imag62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %25 = load double, double* %imag62, align 8
  %real63 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %26 = load double, double* %real63, align 8
  %call64 = call double @atan2(double %25, double %26) #3
  %imag65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call64, double* %imag65, align 8
  %call66 = call i32* @__errno_location() #5
  store i32 33, i32* %call66, align 4
  %27 = bitcast %struct.Py_complex* %retval to i8*
  %28 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  br label %return

if.end.67:                                        ; preds = %if.then.54
  br label %if.end.97

if.else.68:                                       ; preds = %land.lhs.true, %if.else
  %29 = load double, double* %ax, align 8
  %30 = load double, double* %ay, align 8
  %call69 = call double @hypot(double %29, double %30) #3
  store double %call69, double* %h, align 8
  %31 = load double, double* %h, align 8
  %cmp70 = fcmp ole double 7.100000e-01, %31
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.93

land.lhs.true.72:                                 ; preds = %if.else.68
  %32 = load double, double* %h, align 8
  %cmp73 = fcmp ole double %32, 1.730000e+00
  br i1 %cmp73, label %if.then.75, label %if.else.93

if.then.75:                                       ; preds = %land.lhs.true.72
  %33 = load double, double* %ax, align 8
  %34 = load double, double* %ay, align 8
  %cmp76 = fcmp ogt double %33, %34
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %if.then.75
  %35 = load double, double* %ax, align 8
  br label %cond.end

cond.false.79:                                    ; preds = %if.then.75
  %36 = load double, double* %ay, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.79, %cond.true.78
  %cond = phi double [ %35, %cond.true.78 ], [ %36, %cond.false.79 ]
  store double %cond, double* %am, align 8
  %37 = load double, double* %ax, align 8
  %38 = load double, double* %ay, align 8
  %cmp80 = fcmp ogt double %37, %38
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.end
  %39 = load double, double* %ay, align 8
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.end
  %40 = load double, double* %ax, align 8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.82
  %cond85 = phi double [ %39, %cond.true.82 ], [ %40, %cond.false.83 ]
  store double %cond85, double* %an, align 8
  %41 = load double, double* %am, align 8
  %sub86 = fsub double %41, 1.000000e+00
  %42 = load double, double* %am, align 8
  %add87 = fadd double %42, 1.000000e+00
  %mul = fmul double %sub86, %add87
  %43 = load double, double* %an, align 8
  %44 = load double, double* %an, align 8
  %mul88 = fmul double %43, %44
  %add89 = fadd double %mul, %mul88
  %call90 = call double @_Py_log1p(double %add89)
  %div91 = fdiv double %call90, 2.000000e+00
  %real92 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %div91, double* %real92, align 8
  br label %if.end.96

if.else.93:                                       ; preds = %land.lhs.true.72, %if.else.68
  %45 = load double, double* %h, align 8
  %call94 = call double @log(double %45) #3
  %real95 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call94, double* %real95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %cond.end.84
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.67
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.39
  %imag99 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %46 = load double, double* %imag99, align 8
  %real100 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %47 = load double, double* %real100, align 8
  %call101 = call double @atan2(double %46, double %47) #3
  %imag102 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call101, double* %imag102, align 8
  %call103 = call i32* @__errno_location() #5
  store i32 0, i32* %call103, align 4
  %48 = bitcast %struct.Py_complex* %retval to i8*
  %49 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.98, %if.else.60, %if.then
  %50 = bitcast %struct.Py_complex* %retval to { double, double }*
  %51 = load { double, double }, { double, double }* %50, align 8
  ret { double, double } %51
}

declare { double, double } @_Py_c_quot(double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_error() #0 {
entry:
  %call = call i32* @__errno_location() #5
  %0 = load i32, i32* %call, align 4
  %cmp = icmp eq i32 %0, 33
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.6

if.else:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #5
  %2 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %2, 34
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call5 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret %struct._object* null
}

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal { double, double } @c_log10(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %errno_save = alloca i32, align 4
  %coerce = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %z to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %z.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %z.coerce1, double* %2
  %3 = bitcast %struct.Py_complex* %z to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  %5 = load double, double* %4, align 1
  %6 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  %7 = load double, double* %6, align 1
  %call = call { double, double } @c_log(double %5, double %7)
  %8 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %9 = getelementptr { double, double }, { double, double }* %8, i32 0, i32 0
  %10 = extractvalue { double, double } %call, 0
  store double %10, double* %9, align 8
  %11 = getelementptr { double, double }, { double, double }* %8, i32 0, i32 1
  %12 = extractvalue { double, double } %call, 1
  store double %12, double* %11, align 8
  %13 = bitcast %struct.Py_complex* %r to i8*
  %14 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %call1 = call i32* @__errno_location() #5
  %15 = load i32, i32* %call1, align 4
  store i32 %15, i32* %errno_save, align 4
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %16 = load double, double* %real, align 8
  %div = fdiv double %16, 0x40026BB1BBB55516
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %div, double* %real2, align 8
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %17 = load double, double* %imag, align 8
  %div3 = fdiv double %17, 0x40026BB1BBB55516
  %imag4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %div3, double* %imag4, align 8
  %18 = load i32, i32* %errno_save, align 4
  %call5 = call i32* @__errno_location() #5
  store i32 %18, i32* %call5, align 4
  %19 = bitcast %struct.Py_complex* %retval to i8*
  %20 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  %21 = bitcast %struct.Py_complex* %retval to { double, double }*
  %22 = load { double, double }, { double, double }* %21, align 8
  ret { double, double } %22
}

; Function Attrs: nounwind uwtable
define internal double @c_atan2(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca double, align 8
  %z = alloca %struct.Py_complex, align 8
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
  %call = call i32 @__isnanf(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.5

cond.true.1:                                      ; preds = %cond.false
  %real2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %4 = load double, double* %real2, align 8
  %call3 = call i32 @__isnan(double %4) #5
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false

cond.false.5:                                     ; preds = %cond.false
  %real6 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %5 = load double, double* %real6, align 8
  %conv7 = fpext double %5 to x86_fp80
  %call8 = call i32 @__isnanl(x86_fp80 %conv7) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.5, %cond.true.1, %cond.true
  br i1 false, label %cond.true.10, label %cond.false.14

cond.true.10:                                     ; preds = %lor.lhs.false
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %6 = load double, double* %imag, align 8
  %conv11 = fptrunc double %6 to float
  %call12 = call i32 @__isnanf(float %conv11) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.end

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__isnan(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then, label %if.end

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__isnanl(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  br i1 false, label %cond.true.24, label %cond.false.29

cond.true.24:                                     ; preds = %if.end
  %imag25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %9 = load double, double* %imag25, align 8
  %conv26 = fptrunc double %9 to float
  %call27 = call i32 @__isinff(float %conv26) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.39, label %if.end.67

cond.false.29:                                    ; preds = %if.end
  br i1 true, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.false.29
  %imag31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %10 = load double, double* %imag31, align 8
  %call32 = call i32 @__isinf(double %10) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.39, label %if.end.67

cond.false.34:                                    ; preds = %cond.false.29
  %imag35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %11 = load double, double* %imag35, align 8
  %conv36 = fpext double %11 to x86_fp80
  %call37 = call i32 @__isinfl(x86_fp80 %conv36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.67

if.then.39:                                       ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  br i1 false, label %cond.true.40, label %cond.false.45

cond.true.40:                                     ; preds = %if.then.39
  %real41 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %12 = load double, double* %real41, align 8
  %conv42 = fptrunc double %12 to float
  %call43 = call i32 @__isinff(float %conv42) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.55, label %if.end.64

cond.false.45:                                    ; preds = %if.then.39
  br i1 true, label %cond.true.46, label %cond.false.50

cond.true.46:                                     ; preds = %cond.false.45
  %real47 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %13 = load double, double* %real47, align 8
  %call48 = call i32 @__isinf(double %13) #5
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.55, label %if.end.64

cond.false.50:                                    ; preds = %cond.false.45
  %real51 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %14 = load double, double* %real51, align 8
  %conv52 = fpext double %14 to x86_fp80
  %call53 = call i32 @__isinfl(x86_fp80 %conv52) #5
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.64

if.then.55:                                       ; preds = %cond.false.50, %cond.true.46, %cond.true.40
  %real56 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %15 = load double, double* %real56, align 8
  %call57 = call double @copysign(double 1.000000e+00, double %15) #5
  %cmp = fcmp oeq double %call57, 1.000000e+00
  br i1 %cmp, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.then.55
  %imag60 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %16 = load double, double* %imag60, align 8
  %call61 = call double @copysign(double 0x3FE921FB54442D18, double %16) #5
  store double %call61, double* %retval
  br label %return

if.else:                                          ; preds = %if.then.55
  %imag62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %17 = load double, double* %imag62, align 8
  %call63 = call double @copysign(double 0x4002D97C7F3321D2, double %17) #5
  store double %call63, double* %retval
  br label %return

if.end.64:                                        ; preds = %cond.false.50, %cond.true.46, %cond.true.40
  %imag65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %18 = load double, double* %imag65, align 8
  %call66 = call double @copysign(double 0x3FF921FB54442D18, double %18) #5
  store double %call66, double* %retval
  br label %return

if.end.67:                                        ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  br i1 false, label %cond.true.68, label %cond.false.73

cond.true.68:                                     ; preds = %if.end.67
  %real69 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %19 = load double, double* %real69, align 8
  %conv70 = fptrunc double %19 to float
  %call71 = call i32 @__isinff(float %conv70) #5
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.87, label %lor.lhs.false.83

cond.false.73:                                    ; preds = %if.end.67
  br i1 true, label %cond.true.74, label %cond.false.78

cond.true.74:                                     ; preds = %cond.false.73
  %real75 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %20 = load double, double* %real75, align 8
  %call76 = call i32 @__isinf(double %20) #5
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.87, label %lor.lhs.false.83

cond.false.78:                                    ; preds = %cond.false.73
  %real79 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %21 = load double, double* %real79, align 8
  %conv80 = fpext double %21 to x86_fp80
  %call81 = call i32 @__isinfl(x86_fp80 %conv80) #5
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.87, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %cond.false.78, %cond.true.74, %cond.true.68
  %imag84 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %22 = load double, double* %imag84, align 8
  %cmp85 = fcmp oeq double %22, 0.000000e+00
  br i1 %cmp85, label %if.then.87, label %if.end.98

if.then.87:                                       ; preds = %lor.lhs.false.83, %cond.false.78, %cond.true.74, %cond.true.68
  %real88 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %23 = load double, double* %real88, align 8
  %call89 = call double @copysign(double 1.000000e+00, double %23) #5
  %cmp90 = fcmp oeq double %call89, 1.000000e+00
  br i1 %cmp90, label %if.then.92, label %if.else.95

if.then.92:                                       ; preds = %if.then.87
  %imag93 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %24 = load double, double* %imag93, align 8
  %call94 = call double @copysign(double 0.000000e+00, double %24) #5
  store double %call94, double* %retval
  br label %return

if.else.95:                                       ; preds = %if.then.87
  %imag96 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %25 = load double, double* %imag96, align 8
  %call97 = call double @copysign(double 0x400921FB54442D18, double %25) #5
  store double %call97, double* %retval
  br label %return

if.end.98:                                        ; preds = %lor.lhs.false.83
  %imag99 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %26 = load double, double* %imag99, align 8
  %real100 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %27 = load double, double* %real100, align 8
  %call101 = call double @atan2(double %26, double %27) #3
  store double %call101, double* %retval
  br label %return

return:                                           ; preds = %if.end.98, %if.else.95, %if.then.92, %if.end.64, %if.else, %if.then.59, %if.then
  %28 = load double, double* %retval
  ret double %28
}

declare double @_Py_c_abs(double, double) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal { double, double } @c_sin(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %s = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %z to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %z.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %z.coerce1, double* %2
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %3 = load double, double* %imag, align 8
  %sub = fsub double -0.000000e+00, %3
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 0
  store double %sub, double* %real, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %4 = load double, double* %real1, align 8
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 1
  store double %4, double* %imag2, align 8
  %5 = bitcast %struct.Py_complex* %s to { double, double }*
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 1
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 1
  %call = call { double, double } @c_sinh(double %7, double %9)
  %10 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %11 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %call, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %call, 1
  store double %14, double* %13, align 8
  %15 = bitcast %struct.Py_complex* %s to i8*
  %16 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 1
  %17 = load double, double* %imag3, align 8
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %17, double* %real4, align 8
  %real5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 0
  %18 = load double, double* %real5, align 8
  %sub6 = fsub double -0.000000e+00, %18
  %imag7 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %sub6, double* %imag7, align 8
  %19 = bitcast %struct.Py_complex* %retval to i8*
  %20 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  %21 = bitcast %struct.Py_complex* %retval to { double, double }*
  %22 = load { double, double }, { double, double }* %21, align 8
  ret { double, double } %22
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_sinh(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %x_minus_one = alloca double, align 8
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
  br i1 %tobool13, label %if.end.122, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.122, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.122, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  br i1 false, label %cond.true.24, label %cond.false.29

cond.true.24:                                     ; preds = %if.then
  %real25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %9 = load double, double* %real25, align 8
  %conv26 = fptrunc double %9 to float
  %call27 = call i32 @__isinff(float %conv26) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true, label %if.else.78

cond.false.29:                                    ; preds = %if.then
  br i1 true, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.false.29
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real31, align 8
  %call32 = call i32 @__isinf(double %10) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true, label %if.else.78

cond.false.34:                                    ; preds = %cond.false.29
  %real35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %11 = load double, double* %real35, align 8
  %conv36 = fpext double %11 to x86_fp80
  %call37 = call i32 @__isinfl(x86_fp80 %conv36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  br i1 false, label %cond.true.39, label %cond.false.44

cond.true.39:                                     ; preds = %land.lhs.true
  %imag40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %12 = load double, double* %imag40, align 8
  %conv41 = fptrunc double %12 to float
  %call42 = call i32 @__finitef(float %conv41) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.54, label %if.else.78

cond.false.44:                                    ; preds = %land.lhs.true
  br i1 true, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %cond.false.44
  %imag46 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %13 = load double, double* %imag46, align 8
  %call47 = call i32 @__finite(double %13) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true.54, label %if.else.78

cond.false.49:                                    ; preds = %cond.false.44
  %imag50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag50, align 8
  %conv51 = fpext double %14 to x86_fp80
  %call52 = call i32 @__finitel(x86_fp80 %conv51) #5
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.78

land.lhs.true.54:                                 ; preds = %cond.false.49, %cond.true.45, %cond.true.39
  %imag55 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %15 = load double, double* %imag55, align 8
  %cmp = fcmp une double %15, 0.000000e+00
  br i1 %cmp, label %if.then.57, label %if.else.78

if.then.57:                                       ; preds = %land.lhs.true.54
  %real58 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %16 = load double, double* %real58, align 8
  %cmp59 = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.then.57
  %imag62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %17 = load double, double* %imag62, align 8
  %call63 = call double @cos(double %17) #3
  %call64 = call double @copysign(double 0x7FF0000000000000, double %call63) #5
  %real65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call64, double* %real65, align 8
  %imag66 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %18 = load double, double* %imag66, align 8
  %call67 = call double @sin(double %18) #3
  %call68 = call double @copysign(double 0x7FF0000000000000, double %call67) #5
  %imag69 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call68, double* %imag69, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.57
  %imag70 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %19 = load double, double* %imag70, align 8
  %call71 = call double @cos(double %19) #3
  %call72 = call double @copysign(double 0x7FF0000000000000, double %call71) #5
  %sub = fsub double -0.000000e+00, %call72
  %real73 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %sub, double* %real73, align 8
  %imag74 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %20 = load double, double* %imag74, align 8
  %call75 = call double @sin(double %20) #3
  %call76 = call double @copysign(double 0x7FF0000000000000, double %call75) #5
  %imag77 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call76, double* %imag77, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.61
  br label %if.end.85

if.else.78:                                       ; preds = %land.lhs.true.54, %cond.false.49, %cond.true.45, %cond.true.39, %cond.false.34, %cond.true.30, %cond.true.24
  %imag79 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %21 = load double, double* %imag79, align 8
  %call80 = call i32 @special_type(double %21)
  %idxprom = zext i32 %call80 to i64
  %real81 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %22 = load double, double* %real81, align 8
  %call82 = call i32 @special_type(double %22)
  %idxprom83 = zext i32 %call82 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @sinh_special_values, i32 0, i64 %idxprom83
  %arrayidx84 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %23 = bitcast %struct.Py_complex* %r to i8*
  %24 = bitcast %struct.Py_complex* %arrayidx84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.78, %if.end
  br i1 false, label %cond.true.86, label %cond.false.91

cond.true.86:                                     ; preds = %if.end.85
  %imag87 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %25 = load double, double* %imag87, align 8
  %conv88 = fptrunc double %25 to float
  %call89 = call i32 @__isinff(float %conv88) #5
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %land.lhs.true.101, label %if.else.119

cond.false.91:                                    ; preds = %if.end.85
  br i1 true, label %cond.true.92, label %cond.false.96

cond.true.92:                                     ; preds = %cond.false.91
  %imag93 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %26 = load double, double* %imag93, align 8
  %call94 = call i32 @__isinf(double %26) #5
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %land.lhs.true.101, label %if.else.119

cond.false.96:                                    ; preds = %cond.false.91
  %imag97 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %27 = load double, double* %imag97, align 8
  %conv98 = fpext double %27 to x86_fp80
  %call99 = call i32 @__isinfl(x86_fp80 %conv98) #5
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.else.119

land.lhs.true.101:                                ; preds = %cond.false.96, %cond.true.92, %cond.true.86
  br i1 false, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %land.lhs.true.101
  %real103 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %28 = load double, double* %real103, align 8
  %conv104 = fptrunc double %28 to float
  %call105 = call i32 @__isnanf(float %conv104) #5
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.else.119, label %if.then.117

cond.false.107:                                   ; preds = %land.lhs.true.101
  br i1 true, label %cond.true.108, label %cond.false.112

cond.true.108:                                    ; preds = %cond.false.107
  %real109 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %29 = load double, double* %real109, align 8
  %call110 = call i32 @__isnan(double %29) #5
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.else.119, label %if.then.117

cond.false.112:                                   ; preds = %cond.false.107
  %real113 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %30 = load double, double* %real113, align 8
  %conv114 = fpext double %30 to x86_fp80
  %call115 = call i32 @__isnanl(x86_fp80 %conv114) #5
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.else.119, label %if.then.117

if.then.117:                                      ; preds = %cond.false.112, %cond.true.108, %cond.true.102
  %call118 = call i32* @__errno_location() #5
  store i32 33, i32* %call118, align 4
  br label %if.end.121

if.else.119:                                      ; preds = %cond.false.112, %cond.true.108, %cond.true.102, %cond.false.96, %cond.true.92, %cond.true.86
  %call120 = call i32* @__errno_location() #5
  store i32 0, i32* %call120, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.119, %if.then.117
  %31 = bitcast %struct.Py_complex* %retval to i8*
  %32 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  br label %return

if.end.122:                                       ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real123 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %33 = load double, double* %real123, align 8
  %call124 = call double @fabs(double %33) #5
  %call125 = call double @log(double 0x7FCFFFFFFFFFFFFF) #3
  %cmp126 = fcmp ogt double %call124, %call125
  br i1 %cmp126, label %if.then.128, label %if.else.144

if.then.128:                                      ; preds = %if.end.122
  %real129 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %34 = load double, double* %real129, align 8
  %real130 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %35 = load double, double* %real130, align 8
  %call131 = call double @copysign(double 1.000000e+00, double %35) #5
  %sub132 = fsub double %34, %call131
  store double %sub132, double* %x_minus_one, align 8
  %imag133 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %36 = load double, double* %imag133, align 8
  %call134 = call double @cos(double %36) #3
  %37 = load double, double* %x_minus_one, align 8
  %call135 = call double @sinh(double %37) #3
  %mul = fmul double %call134, %call135
  %mul136 = fmul double %mul, 0x4005BF0A8B145769
  %real137 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %mul136, double* %real137, align 8
  %imag138 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %38 = load double, double* %imag138, align 8
  %call139 = call double @sin(double %38) #3
  %39 = load double, double* %x_minus_one, align 8
  %call140 = call double @cosh(double %39) #3
  %mul141 = fmul double %call139, %call140
  %mul142 = fmul double %mul141, 0x4005BF0A8B145769
  %imag143 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul142, double* %imag143, align 8
  br label %if.end.157

if.else.144:                                      ; preds = %if.end.122
  %imag145 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %40 = load double, double* %imag145, align 8
  %call146 = call double @cos(double %40) #3
  %real147 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %41 = load double, double* %real147, align 8
  %call148 = call double @sinh(double %41) #3
  %mul149 = fmul double %call146, %call148
  %real150 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %mul149, double* %real150, align 8
  %imag151 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %42 = load double, double* %imag151, align 8
  %call152 = call double @sin(double %42) #3
  %real153 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %43 = load double, double* %real153, align 8
  %call154 = call double @cosh(double %43) #3
  %mul155 = fmul double %call152, %call154
  %imag156 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul155, double* %imag156, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.144, %if.then.128
  br i1 false, label %cond.true.158, label %cond.false.163

cond.true.158:                                    ; preds = %if.end.157
  %real159 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %44 = load double, double* %real159, align 8
  %conv160 = fptrunc double %44 to float
  %call161 = call i32 @__isinff(float %conv160) #5
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.189, label %lor.lhs.false.173

cond.false.163:                                   ; preds = %if.end.157
  br i1 true, label %cond.true.164, label %cond.false.168

cond.true.164:                                    ; preds = %cond.false.163
  %real165 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %45 = load double, double* %real165, align 8
  %call166 = call i32 @__isinf(double %45) #5
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.then.189, label %lor.lhs.false.173

cond.false.168:                                   ; preds = %cond.false.163
  %real169 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  %46 = load double, double* %real169, align 8
  %conv170 = fpext double %46 to x86_fp80
  %call171 = call i32 @__isinfl(x86_fp80 %conv170) #5
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.then.189, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %cond.false.168, %cond.true.164, %cond.true.158
  br i1 false, label %cond.true.174, label %cond.false.179

cond.true.174:                                    ; preds = %lor.lhs.false.173
  %imag175 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %47 = load double, double* %imag175, align 8
  %conv176 = fptrunc double %47 to float
  %call177 = call i32 @__isinff(float %conv176) #5
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then.189, label %if.else.191

cond.false.179:                                   ; preds = %lor.lhs.false.173
  br i1 true, label %cond.true.180, label %cond.false.184

cond.true.180:                                    ; preds = %cond.false.179
  %imag181 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %48 = load double, double* %imag181, align 8
  %call182 = call i32 @__isinf(double %48) #5
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.189, label %if.else.191

cond.false.184:                                   ; preds = %cond.false.179
  %imag185 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  %49 = load double, double* %imag185, align 8
  %conv186 = fpext double %49 to x86_fp80
  %call187 = call i32 @__isinfl(x86_fp80 %conv186) #5
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then.189, label %if.else.191

if.then.189:                                      ; preds = %cond.false.184, %cond.true.180, %cond.true.174, %cond.false.168, %cond.true.164, %cond.true.158
  %call190 = call i32* @__errno_location() #5
  store i32 34, i32* %call190, align 4
  br label %if.end.193

if.else.191:                                      ; preds = %cond.false.184, %cond.true.180, %cond.true.174
  %call192 = call i32* @__errno_location() #5
  store i32 0, i32* %call192, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.191, %if.then.189
  %50 = bitcast %struct.Py_complex* %retval to i8*
  %51 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.193, %if.end.121
  %52 = bitcast %struct.Py_complex* %retval to { double, double }*
  %53 = load { double, double }, { double, double }* %52, align 8
  ret { double, double } %53
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_tan(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %s = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %0 = bitcast %struct.Py_complex* %z to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %z.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %z.coerce1, double* %2
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %3 = load double, double* %imag, align 8
  %sub = fsub double -0.000000e+00, %3
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 0
  store double %sub, double* %real, align 8
  %real1 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %4 = load double, double* %real1, align 8
  %imag2 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 1
  store double %4, double* %imag2, align 8
  %5 = bitcast %struct.Py_complex* %s to { double, double }*
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 1
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 1
  %call = call { double, double } @c_tanh(double %7, double %9)
  %10 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %11 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %call, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %call, 1
  store double %14, double* %13, align 8
  %15 = bitcast %struct.Py_complex* %s to i8*
  %16 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %imag3 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 1
  %17 = load double, double* %imag3, align 8
  %real4 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %17, double* %real4, align 8
  %real5 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %s, i32 0, i32 0
  %18 = load double, double* %real5, align 8
  %sub6 = fsub double -0.000000e+00, %18
  %imag7 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %sub6, double* %imag7, align 8
  %19 = bitcast %struct.Py_complex* %retval to i8*
  %20 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  %21 = bitcast %struct.Py_complex* %retval to { double, double }*
  %22 = load { double, double }, { double, double }* %21, align 8
  ret { double, double } %22
}

; Function Attrs: nounwind uwtable
define internal { double, double } @c_tanh(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %retval = alloca %struct.Py_complex, align 8
  %z = alloca %struct.Py_complex, align 8
  %r = alloca %struct.Py_complex, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %cx = alloca double, align 8
  %txty = alloca double, align 8
  %denom = alloca double, align 8
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
  br i1 %tobool13, label %if.end.123, label %if.then

cond.false.14:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.14
  %imag16 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %7 = load double, double* %imag16, align 8
  %call17 = call i32 @__finite(double %7) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.123, label %if.then

cond.false.19:                                    ; preds = %cond.false.14
  %imag20 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %8 = load double, double* %imag20, align 8
  %conv21 = fpext double %8 to x86_fp80
  %call22 = call i32 @__finitel(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.123, label %if.then

if.then:                                          ; preds = %cond.false.19, %cond.true.15, %cond.true.10, %cond.false.5, %cond.true.1, %cond.true
  br i1 false, label %cond.true.24, label %cond.false.29

cond.true.24:                                     ; preds = %if.then
  %real25 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %9 = load double, double* %real25, align 8
  %conv26 = fptrunc double %9 to float
  %call27 = call i32 @__isinff(float %conv26) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true, label %if.else.79

cond.false.29:                                    ; preds = %if.then
  br i1 true, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.false.29
  %real31 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %10 = load double, double* %real31, align 8
  %call32 = call i32 @__isinf(double %10) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true, label %if.else.79

cond.false.34:                                    ; preds = %cond.false.29
  %real35 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %11 = load double, double* %real35, align 8
  %conv36 = fpext double %11 to x86_fp80
  %call37 = call i32 @__isinfl(x86_fp80 %conv36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true, label %if.else.79

land.lhs.true:                                    ; preds = %cond.false.34, %cond.true.30, %cond.true.24
  br i1 false, label %cond.true.39, label %cond.false.44

cond.true.39:                                     ; preds = %land.lhs.true
  %imag40 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %12 = load double, double* %imag40, align 8
  %conv41 = fptrunc double %12 to float
  %call42 = call i32 @__finitef(float %conv41) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.54, label %if.else.79

cond.false.44:                                    ; preds = %land.lhs.true
  br i1 true, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %cond.false.44
  %imag46 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %13 = load double, double* %imag46, align 8
  %call47 = call i32 @__finite(double %13) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true.54, label %if.else.79

cond.false.49:                                    ; preds = %cond.false.44
  %imag50 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %14 = load double, double* %imag50, align 8
  %conv51 = fpext double %14 to x86_fp80
  %call52 = call i32 @__finitel(x86_fp80 %conv51) #5
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.79

land.lhs.true.54:                                 ; preds = %cond.false.49, %cond.true.45, %cond.true.39
  %imag55 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %15 = load double, double* %imag55, align 8
  %cmp = fcmp une double %15, 0.000000e+00
  br i1 %cmp, label %if.then.57, label %if.else.79

if.then.57:                                       ; preds = %land.lhs.true.54
  %real58 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %16 = load double, double* %real58, align 8
  %cmp59 = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.then.57
  %real62 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double 1.000000e+00, double* %real62, align 8
  %imag63 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %17 = load double, double* %imag63, align 8
  %call64 = call double @sin(double %17) #3
  %mul = fmul double 2.000000e+00, %call64
  %imag65 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %18 = load double, double* %imag65, align 8
  %call66 = call double @cos(double %18) #3
  %mul67 = fmul double %mul, %call66
  %call68 = call double @copysign(double 0.000000e+00, double %mul67) #5
  %imag69 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call68, double* %imag69, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.57
  %real70 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double -1.000000e+00, double* %real70, align 8
  %imag71 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %19 = load double, double* %imag71, align 8
  %call72 = call double @sin(double %19) #3
  %mul73 = fmul double 2.000000e+00, %call72
  %imag74 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %20 = load double, double* %imag74, align 8
  %call75 = call double @cos(double %20) #3
  %mul76 = fmul double %mul73, %call75
  %call77 = call double @copysign(double 0.000000e+00, double %mul76) #5
  %imag78 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %call77, double* %imag78, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.61
  br label %if.end.86

if.else.79:                                       ; preds = %land.lhs.true.54, %cond.false.49, %cond.true.45, %cond.true.39, %cond.false.34, %cond.true.30, %cond.true.24
  %imag80 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %21 = load double, double* %imag80, align 8
  %call81 = call i32 @special_type(double %21)
  %idxprom = zext i32 %call81 to i64
  %real82 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %22 = load double, double* %real82, align 8
  %call83 = call i32 @special_type(double %22)
  %idxprom84 = zext i32 %call83 to i64
  %arrayidx = getelementptr [7 x [7 x %struct.Py_complex]], [7 x [7 x %struct.Py_complex]]* @tanh_special_values, i32 0, i64 %idxprom84
  %arrayidx85 = getelementptr [7 x %struct.Py_complex], [7 x %struct.Py_complex]* %arrayidx, i32 0, i64 %idxprom
  %23 = bitcast %struct.Py_complex* %r to i8*
  %24 = bitcast %struct.Py_complex* %arrayidx85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.79, %if.end
  br i1 false, label %cond.true.87, label %cond.false.92

cond.true.87:                                     ; preds = %if.end.86
  %imag88 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %25 = load double, double* %imag88, align 8
  %conv89 = fptrunc double %25 to float
  %call90 = call i32 @__isinff(float %conv89) #5
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %land.lhs.true.102, label %if.else.120

cond.false.92:                                    ; preds = %if.end.86
  br i1 true, label %cond.true.93, label %cond.false.97

cond.true.93:                                     ; preds = %cond.false.92
  %imag94 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %26 = load double, double* %imag94, align 8
  %call95 = call i32 @__isinf(double %26) #5
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %land.lhs.true.102, label %if.else.120

cond.false.97:                                    ; preds = %cond.false.92
  %imag98 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %27 = load double, double* %imag98, align 8
  %conv99 = fpext double %27 to x86_fp80
  %call100 = call i32 @__isinfl(x86_fp80 %conv99) #5
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %land.lhs.true.102, label %if.else.120

land.lhs.true.102:                                ; preds = %cond.false.97, %cond.true.93, %cond.true.87
  br i1 false, label %cond.true.103, label %cond.false.108

cond.true.103:                                    ; preds = %land.lhs.true.102
  %real104 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %28 = load double, double* %real104, align 8
  %conv105 = fptrunc double %28 to float
  %call106 = call i32 @__finitef(float %conv105) #5
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.118, label %if.else.120

cond.false.108:                                   ; preds = %land.lhs.true.102
  br i1 true, label %cond.true.109, label %cond.false.113

cond.true.109:                                    ; preds = %cond.false.108
  %real110 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %29 = load double, double* %real110, align 8
  %call111 = call i32 @__finite(double %29) #5
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.118, label %if.else.120

cond.false.113:                                   ; preds = %cond.false.108
  %real114 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %30 = load double, double* %real114, align 8
  %conv115 = fpext double %30 to x86_fp80
  %call116 = call i32 @__finitel(x86_fp80 %conv115) #5
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %cond.false.113, %cond.true.109, %cond.true.103
  %call119 = call i32* @__errno_location() #5
  store i32 33, i32* %call119, align 4
  br label %if.end.122

if.else.120:                                      ; preds = %cond.false.113, %cond.true.109, %cond.true.103, %cond.false.97, %cond.true.93, %cond.true.87
  %call121 = call i32* @__errno_location() #5
  store i32 0, i32* %call121, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.120, %if.then.118
  %31 = bitcast %struct.Py_complex* %retval to i8*
  %32 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  br label %return

if.end.123:                                       ; preds = %cond.false.19, %cond.true.15, %cond.true.10
  %real124 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %33 = load double, double* %real124, align 8
  %call125 = call double @fabs(double %33) #5
  %call126 = call double @log(double 0x7FCFFFFFFFFFFFFF) #3
  %cmp127 = fcmp ogt double %call125, %call126
  br i1 %cmp127, label %if.then.129, label %if.else.145

if.then.129:                                      ; preds = %if.end.123
  %real130 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %34 = load double, double* %real130, align 8
  %call131 = call double @copysign(double 1.000000e+00, double %34) #5
  %real132 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %call131, double* %real132, align 8
  %imag133 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %35 = load double, double* %imag133, align 8
  %call134 = call double @sin(double %35) #3
  %mul135 = fmul double 4.000000e+00, %call134
  %imag136 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %36 = load double, double* %imag136, align 8
  %call137 = call double @cos(double %36) #3
  %mul138 = fmul double %mul135, %call137
  %real139 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %37 = load double, double* %real139, align 8
  %call140 = call double @fabs(double %37) #5
  %mul141 = fmul double -2.000000e+00, %call140
  %call142 = call double @exp(double %mul141) #3
  %mul143 = fmul double %mul138, %call142
  %imag144 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul143, double* %imag144, align 8
  br label %if.end.163

if.else.145:                                      ; preds = %if.end.123
  %real146 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %38 = load double, double* %real146, align 8
  %call147 = call double @tanh(double %38) #3
  store double %call147, double* %tx, align 8
  %imag148 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 1
  %39 = load double, double* %imag148, align 8
  %call149 = call double @tan(double %39) #3
  store double %call149, double* %ty, align 8
  %real150 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %z, i32 0, i32 0
  %40 = load double, double* %real150, align 8
  %call151 = call double @cosh(double %40) #3
  %div = fdiv double 1.000000e+00, %call151
  store double %div, double* %cx, align 8
  %41 = load double, double* %tx, align 8
  %42 = load double, double* %ty, align 8
  %mul152 = fmul double %41, %42
  store double %mul152, double* %txty, align 8
  %43 = load double, double* %txty, align 8
  %44 = load double, double* %txty, align 8
  %mul153 = fmul double %43, %44
  %add = fadd double 1.000000e+00, %mul153
  store double %add, double* %denom, align 8
  %45 = load double, double* %tx, align 8
  %46 = load double, double* %ty, align 8
  %47 = load double, double* %ty, align 8
  %mul154 = fmul double %46, %47
  %add155 = fadd double 1.000000e+00, %mul154
  %mul156 = fmul double %45, %add155
  %48 = load double, double* %denom, align 8
  %div157 = fdiv double %mul156, %48
  %real158 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 0
  store double %div157, double* %real158, align 8
  %49 = load double, double* %ty, align 8
  %50 = load double, double* %denom, align 8
  %div159 = fdiv double %49, %50
  %51 = load double, double* %cx, align 8
  %mul160 = fmul double %div159, %51
  %52 = load double, double* %cx, align 8
  %mul161 = fmul double %mul160, %52
  %imag162 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %r, i32 0, i32 1
  store double %mul161, double* %imag162, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.145, %if.then.129
  %call164 = call i32* @__errno_location() #5
  store i32 0, i32* %call164, align 4
  %53 = bitcast %struct.Py_complex* %retval to i8*
  %54 = bitcast %struct.Py_complex* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.163, %if.end.122
  %55 = bitcast %struct.Py_complex* %retval to { double, double }*
  %56 = load { double, double }, { double, double }* %55, align 8
  ret { double, double } %56
}

; Function Attrs: nounwind
declare double @tanh(double) #4

; Function Attrs: nounwind
declare double @tan(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
