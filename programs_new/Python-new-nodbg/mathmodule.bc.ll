; ModuleID = './mathmodule.bc'
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
%struct.PyFloatObject = type { %struct._object, double }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }

@mathmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([43 x %struct.PyMethodDef], [43 x %struct.PyMethodDef]* @math_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@module_doc = internal global [110 x i8] c"This module is always available.  It provides access to the\0Amathematical functions defined by the C standard.\00", align 16
@math_methods = internal global [43 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_acos, i32 8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @math_acos_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_acosh, i32 8, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @math_acosh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_asin, i32 8, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @math_asin_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_asinh, i32 8, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @math_asinh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_atan, i32 8, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @math_atan_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_atan2, i32 1, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @math_atan2_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_atanh, i32 8, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @math_atanh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_ceil, i32 8, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @math_ceil_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_copysign, i32 1, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @math_copysign_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_cos, i32 8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @math_cos_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_cosh, i32 8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @math_cosh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_degrees, i32 8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @math_degrees_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_erf, i32 8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @math_erf_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_erfc, i32 8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @math_erfc_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_exp, i32 8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @math_exp_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_expm1, i32 8, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @math_expm1_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_fabs, i32 8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @math_fabs_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_factorial, i32 8, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @math_factorial_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_floor, i32 8, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @math_floor_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_fmod, i32 1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @math_fmod_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_frexp, i32 8, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @math_frexp_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_fsum, i32 8, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @math_fsum_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_gamma, i32 8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @math_gamma_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_hypot, i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @math_hypot_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_isfinite, i32 8, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @math_isfinite_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_isinf, i32 8, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @math_isinf_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_isnan, i32 8, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @math_isnan_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_ldexp, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @math_ldexp_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_lgamma, i32 8, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @math_lgamma_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_log, i32 1, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @math_log_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_log1p, i32 8, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @math_log1p_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_log10, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @math_log10_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_log2, i32 8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @math_log2_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_modf, i32 8, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @math_modf_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_pow, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @math_pow_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_radians, i32 8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @math_radians_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_sin, i32 8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @math_sin_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_sinh, i32 8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @math_sinh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_sqrt, i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @math_sqrt_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_tan, i32 8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @math_tan_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_tanh, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @math_tanh_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @math_trunc, i32 8, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @math_trunc_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@math_acos_doc = internal global [59 x i8] c"acos(x)\0A\0AReturn the arc cosine (measured in radians) of x.\00", align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@math_acosh_doc = internal global [71 x i8] c"acosh(x)\0A\0AReturn the hyperbolic arc cosine (measured in radians) of x.\00", align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@math_asin_doc = internal global [57 x i8] c"asin(x)\0A\0AReturn the arc sine (measured in radians) of x.\00", align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"asinh\00", align 1
@math_asinh_doc = internal global [69 x i8] c"asinh(x)\0A\0AReturn the hyperbolic arc sine (measured in radians) of x.\00", align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@math_atan_doc = internal global [60 x i8] c"atan(x)\0A\0AReturn the arc tangent (measured in radians) of x.\00", align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@math_atan2_doc = internal global [126 x i8] c"atan2(y, x)\0A\0AReturn the arc tangent (measured in radians) of y/x.\0AUnlike atan(y/x), the signs of both x and y are considered.\00", align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"atanh\00", align 1
@math_atanh_doc = internal global [72 x i8] c"atanh(x)\0A\0AReturn the hyperbolic arc tangent (measured in radians) of x.\00", align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@math_ceil_doc = internal global [86 x i8] c"ceil(x)\0A\0AReturn the ceiling of x as an int.\0AThis is the smallest integral value >= x.\00", align 16
@.str.11 = private unnamed_addr constant [9 x i8] c"copysign\00", align 1
@math_copysign_doc = internal global [168 x i8] c"copysign(x, y)\0A\0AReturn a float with the magnitude (absolute value) of x but the sign \0Aof y. On platforms that support signed zeros, copysign(1.0, -0.0) \0Areturns -1.0.\0A\00", align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@math_cos_doc = internal global [54 x i8] c"cos(x)\0A\0AReturn the cosine of x (measured in radians).\00", align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@math_cosh_doc = internal global [44 x i8] c"cosh(x)\0A\0AReturn the hyperbolic cosine of x.\00", align 16
@.str.14 = private unnamed_addr constant [8 x i8] c"degrees\00", align 1
@math_degrees_doc = internal global [53 x i8] c"degrees(x)\0A\0AConvert angle x from radians to degrees.\00", align 16
@.str.15 = private unnamed_addr constant [4 x i8] c"erf\00", align 1
@math_erf_doc = internal global [29 x i8] c"erf(x)\0A\0AError function at x.\00", align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"erfc\00", align 1
@math_erfc_doc = internal global [44 x i8] c"erfc(x)\0A\0AComplementary error function at x.\00", align 16
@.str.17 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@math_exp_doc = internal global [43 x i8] c"exp(x)\0A\0AReturn e raised to the power of x.\00", align 16
@.str.18 = private unnamed_addr constant [6 x i8] c"expm1\00", align 1
@math_expm1_doc = internal global [129 x i8] c"expm1(x)\0A\0AReturn exp(x)-1.\0AThis function avoids the loss of precision involved in the direct evaluation of exp(x)-1 for small x.\00", align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"fabs\00", align 1
@math_fabs_doc = internal global [51 x i8] c"fabs(x)\0A\0AReturn the absolute value of the float x.\00", align 16
@.str.20 = private unnamed_addr constant [10 x i8] c"factorial\00", align 1
@math_factorial_doc = internal global [88 x i8] c"factorial(x) -> Integral\0A\0AFind x!. Raise a ValueError if x is negative or non-integral.\00", align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@math_floor_doc = internal global [84 x i8] c"floor(x)\0A\0AReturn the floor of x as an int.\0AThis is the largest integral value <= x.\00", align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@math_fmod_doc = internal global [75 x i8] c"fmod(x, y)\0A\0AReturn fmod(x, y), according to platform C.  x % y may differ.\00", align 16
@.str.23 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@math_frexp_doc = internal global [178 x i8] c"frexp(x)\0A\0AReturn the mantissa and exponent of x, as pair (m, e).\0Am is a float and e is an int, such that x = m * 2.**e.\0AIf x is 0, m and e are both 0.  Else 0.5 <= abs(m) < 1.0.\00", align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"fsum\00", align 1
@math_fsum_doc = internal global [125 x i8] c"fsum(iterable)\0A\0AReturn an accurate floating point sum of values in the iterable.\0AAssumes IEEE-754 floating point arithmetic.\00", align 16
@.str.25 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@math_gamma_doc = internal global [31 x i8] c"gamma(x)\0A\0AGamma function at x.\00", align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"hypot\00", align 1
@math_hypot_doc = internal global [61 x i8] c"hypot(x, y)\0A\0AReturn the Euclidean distance, sqrt(x*x + y*y).\00", align 16
@.str.27 = private unnamed_addr constant [9 x i8] c"isfinite\00", align 1
@math_isfinite_doc = internal global [93 x i8] c"isfinite(x) -> bool\0A\0AReturn True if x is neither an infinity nor a NaN, and False otherwise.\00", align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"isinf\00", align 1
@math_isinf_doc = internal global [92 x i8] c"isinf(x) -> bool\0A\0AReturn True if x is a positive or negative infinity, and False otherwise.\00", align 16
@.str.29 = private unnamed_addr constant [6 x i8] c"isnan\00", align 1
@math_isnan_doc = internal global [81 x i8] c"isnan(x) -> bool\0A\0AReturn True if x is a NaN (not a number), and False otherwise.\00", align 16
@.str.30 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@math_ldexp_doc = internal global [32 x i8] c"ldexp(x, i)\0A\0AReturn x * (2**i).\00", align 16
@.str.31 = private unnamed_addr constant [7 x i8] c"lgamma\00", align 1
@math_lgamma_doc = internal global [71 x i8] c"lgamma(x)\0A\0ANatural logarithm of absolute value of Gamma function at x.\00", align 16
@.str.32 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@math_log_doc = internal global [133 x i8] c"log(x[, base])\0A\0AReturn the logarithm of x to the given base.\0AIf the base not specified, returns the natural logarithm (base e) of x.\00", align 16
@.str.33 = private unnamed_addr constant [6 x i8] c"log1p\00", align 1
@math_log1p_doc = internal global [123 x i8] c"log1p(x)\0A\0AReturn the natural logarithm of 1+x (base e).\0AThe result is computed in a way which is accurate for x near zero.\00", align 16
@.str.34 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@math_log10_doc = internal global [45 x i8] c"log10(x)\0A\0AReturn the base 10 logarithm of x.\00", align 16
@.str.35 = private unnamed_addr constant [5 x i8] c"log2\00", align 1
@math_log2_doc = internal global [43 x i8] c"log2(x)\0A\0AReturn the base 2 logarithm of x.\00", align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"modf\00", align 1
@math_modf_doc = internal global [105 x i8] c"modf(x)\0A\0AReturn the fractional and integer parts of x.  Both results carry the sign\0Aof x and are floats.\00", align 16
@.str.37 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@math_pow_doc = internal global [46 x i8] c"pow(x, y)\0A\0AReturn x**y (x to the power of y).\00", align 16
@.str.38 = private unnamed_addr constant [8 x i8] c"radians\00", align 1
@math_radians_doc = internal global [53 x i8] c"radians(x)\0A\0AConvert angle x from degrees to radians.\00", align 16
@.str.39 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@math_sin_doc = internal global [52 x i8] c"sin(x)\0A\0AReturn the sine of x (measured in radians).\00", align 16
@.str.40 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@math_sinh_doc = internal global [42 x i8] c"sinh(x)\0A\0AReturn the hyperbolic sine of x.\00", align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@math_sqrt_doc = internal global [38 x i8] c"sqrt(x)\0A\0AReturn the square root of x.\00", align 16
@.str.42 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@math_tan_doc = internal global [55 x i8] c"tan(x)\0A\0AReturn the tangent of x (measured in radians).\00", align 16
@.str.43 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@math_tanh_doc = internal global [45 x i8] c"tanh(x)\0A\0AReturn the hyperbolic tangent of x.\00", align 16
@.str.44 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@math_trunc_doc = internal global [106 x i8] c"trunc(x:Real) -> Integral\0A\0ATruncates x to the nearest Integral toward 0. Uses the __trunc__ magic method.\00", align 16
@PyExc_ValueError = external global %struct._object*, align 8
@.str.45 = private unnamed_addr constant [18 x i8] c"math domain error\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.46 = private unnamed_addr constant [17 x i8] c"math range error\00", align 1
@math_ceil.PyId___ceil__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), %struct._object* null }, align 8
@.str.47 = private unnamed_addr constant [9 x i8] c"__ceil__\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@.str.48 = private unnamed_addr constant [41 x i8] c"factorial() only accepts integral values\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"factorial() not defined for negative values\00", align 1
@SmallFactorials = internal constant [21 x i64] [i64 1, i64 1, i64 2, i64 6, i64 24, i64 120, i64 720, i64 5040, i64 40320, i64 362880, i64 3628800, i64 39916800, i64 479001600, i64 6227020800, i64 87178291200, i64 1307674368000, i64 20922789888000, i64 355687428096000, i64 6402373705728000, i64 121645100408832000, i64 2432902008176640000], align 16
@math_floor.PyId___floor__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), %struct._object* null }, align 8
@.str.50 = private unnamed_addr constant [10 x i8] c"__floor__\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"(di)\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"intermediate overflow in fsum\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"-inf + inf in fsum\00", align 1
@PyExc_MemoryError = external global %struct._object*, align 8
@.str.54 = private unnamed_addr constant [19 x i8] c"math.fsum partials\00", align 1
@gamma_integral = internal constant [23 x double] [double 1.000000e+00, double 1.000000e+00, double 2.000000e+00, double 6.000000e+00, double 2.400000e+01, double 1.200000e+02, double 7.200000e+02, double 5.040000e+03, double 4.032000e+04, double 3.628800e+05, double 3.628800e+06, double 3.991680e+07, double 4.790016e+08, double 0x41F7328CC0000000, double 0x42344C3B28000000, double 0x4273077775800000, double 0x42B3077775800000, double 0x42F437EEECD80000, double 0x4336BEECCA730000, double 0x437B02B930689000, double 0x43C0E1B3BE415A00, double 0x4406283BE9B5C620, double 0x444E77526159F06C], align 16
@lanczos_num_coeffs = internal constant [13 x double] [double 0x4215EA5143C1A49E, double 0x4223FC7075F54C57, double 0x4220A132818AB61A, double 0x4210B0B522E8261A, double 0x41F67FC1B3A5A1E8, double 0x41D57418F5D3F33F, double 0x41ADAB0C7BB95F2A, double 0x417DF876F95DCC98, double 0x4145F1E95080F44C, double 0x4106B6421F8787EB, double 0x40BF87AC0858D804, double 0x406A5A607BBC3B52, double 0x40040D931FF62705], align 16
@lanczos_den_coeffs = internal constant [13 x double] [double 0.000000e+00, double 3.991680e+07, double 0x419CBD6980000000, double 0x41A1FDA6B0000000, double 0x4199187170000000, double 4.599573e+07, double 0x41697171E0000000, double 2.637558e+06, double 3.574230e+05, double 3.267000e+04, double 1.925000e+03, double 6.600000e+01, double 1.000000e+00], align 16
@.str.55 = private unnamed_addr constant [9 x i8] c"dO:ldexp\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.56 = private unnamed_addr constant [45 x i8] c"Expected an int as second argument to ldexp.\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"(dd)\00", align 1
@math_trunc.PyId___trunc__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), %struct._object* null }, align 8
@.str.58 = private unnamed_addr constant [10 x i8] c"__trunc__\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"type %.100s doesn't define __trunc__ method\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_math() #0 {
entry:
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @mathmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %finally

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyFloat_FromDouble(double 0x400921FB54442D18)
  %call2 = call i32 @PyModule_AddObject(%struct._object* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct._object* %call1)
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call3 = call %struct._object* @PyFloat_FromDouble(double 0x4005BF0A8B145769)
  %call4 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._object* %call3)
  br label %finally

finally:                                          ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %m, align 8
  ret %struct._object* %3
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_acos(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @acos, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_acosh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @acosh, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_asin(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @asin, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_asinh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @asinh, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_atan(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @atan, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_atan2(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_2(%struct._object* %0, double (double, double)* @m_atan2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_atanh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @atanh, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_ceil(%struct._object* %self, %struct._object* %number) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %number.addr = alloca %struct._object*, align 8
  %method = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %number, %struct._object** %number.addr, align 8
  %0 = load %struct._object*, %struct._object** %number.addr, align 8
  %call = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %0, %struct._Py_Identifier* @math_ceil.PyId___ceil__)
  store %struct._object* %call, %struct._object** %method, align 8
  %1 = load %struct._object*, %struct._object** %method, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %number.addr, align 8
  %call3 = call %struct._object* @math_1_to_int(%struct._object* %2, double (double)* @ceil, i32 0)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %3 = load %struct._object*, %struct._object** %method, align 8
  %call5 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %3, i8* null)
  store %struct._object* %call5, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %method, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %11 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end, %if.then.2
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_copysign(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_2(%struct._object* %0, double (double, double)* @copysign, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_cos(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @cos, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_cosh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @cosh, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_degrees(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load double, double* %x, align 8
  %mul = fmul double %2, 0x404CA5DC1A63C1F8
  %call2 = call %struct._object* @PyFloat_FromDouble(double %mul)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_erf(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1a(%struct._object* %0, double (double)* @m_erf)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_erfc(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1a(%struct._object* %0, double (double)* @m_erfc)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_exp(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @exp, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_expm1(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @expm1, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_fabs(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @fabs, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_factorial(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %odd_part = alloca %struct._object*, align 8
  %two_valuation = alloca %struct._object*, align 8
  %lx = alloca %struct._object*, align 8
  %dx = alloca double, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.26

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %arg.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1
  %6 = load double, double* %ob_fval, align 8
  store double %6, double* %dx, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load double, double* %dx, align 8
  %conv = fptrunc double %7 to float
  %call2 = call i32 @__finitef(float %conv) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.then.14

cond.false:                                       ; preds = %if.then
  br i1 true, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.false
  %8 = load double, double* %dx, align 8
  %call5 = call i32 @__finite(double %8) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.then.14

cond.false.7:                                     ; preds = %cond.false
  %9 = load double, double* %dx, align 8
  %conv8 = fpext double %9 to x86_fp80
  %call9 = call i32 @__finitel(x86_fp80 %conv8) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.then.14

land.lhs.true:                                    ; preds = %cond.false.7, %cond.true.4, %cond.true
  %10 = load double, double* %dx, align 8
  %11 = load double, double* %dx, align 8
  %call11 = call double @floor(double %11) #5
  %cmp12 = fcmp oeq double %10, %call11
  br i1 %cmp12, label %if.end, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true, %cond.false.7, %cond.true.4, %cond.true
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %13 = load double, double* %dx, align 8
  %call15 = call %struct._object* @PyLong_FromDouble(double %13)
  store %struct._object* %call15, %struct._object** %lx, align 8
  %14 = load %struct._object*, %struct._object** %lx, align 8
  %cmp16 = icmp eq %struct._object* %14, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %lx, align 8
  %call20 = call i64 @PyLong_AsLong(%struct._object* %15)
  store i64 %call20, i64* %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.19
  %16 = load %struct._object*, %struct._object** %lx, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body
  br label %if.end.25

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %if.end.28

if.else.26:                                       ; preds = %lor.lhs.false
  %23 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call27 = call i64 @PyLong_AsLong(%struct._object* %23)
  store i64 %call27, i64* %x, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %do.end
  %24 = load i64, i64* %x, align 8
  %cmp29 = icmp eq i64 %24, -1
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.35

land.lhs.true.31:                                 ; preds = %if.end.28
  %call32 = call %struct._object* @PyErr_Occurred()
  %tobool33 = icmp ne %struct._object* %call32, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.31, %if.end.28
  %25 = load i64, i64* %x, align 8
  %cmp36 = icmp slt i64 %25, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %27 = load i64, i64* %x, align 8
  %cmp40 = icmp slt i64 %27, 21
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %28 = load i64, i64* %x, align 8
  %arrayidx = getelementptr [21 x i64], [21 x i64]* @SmallFactorials, i32 0, i64 %28
  %29 = load i64, i64* %arrayidx, align 8
  %call43 = call %struct._object* @PyLong_FromUnsignedLong(i64 %29)
  store %struct._object* %call43, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.39
  %30 = load i64, i64* %x, align 8
  %call45 = call %struct._object* @factorial_odd_part(i64 %30)
  store %struct._object* %call45, %struct._object** %odd_part, align 8
  %31 = load %struct._object*, %struct._object** %odd_part, align 8
  %cmp46 = icmp eq %struct._object* %31, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.44
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.44
  %32 = load i64, i64* %x, align 8
  %33 = load i64, i64* %x, align 8
  %call50 = call i64 @count_set_bits(i64 %33)
  %sub = sub i64 %32, %call50
  %call51 = call %struct._object* @PyLong_FromLong(i64 %sub)
  store %struct._object* %call51, %struct._object** %two_valuation, align 8
  %34 = load %struct._object*, %struct._object** %two_valuation, align 8
  %cmp52 = icmp eq %struct._object* %34, null
  br i1 %cmp52, label %if.then.54, label %if.end.67

if.then.54:                                       ; preds = %if.end.49
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %35 = load %struct._object*, %struct._object** %odd_part, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp56, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %37, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.55
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.55
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %40(%struct._object* %41)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %if.end.49
  %42 = load %struct._object*, %struct._object** %odd_part, align 8
  %43 = load %struct._object*, %struct._object** %two_valuation, align 8
  %call68 = call %struct._object* @PyNumber_Lshift(%struct._object* %42, %struct._object* %43)
  store %struct._object* %call68, %struct._object** %result, align 8
  br label %do.body.69

do.body.69:                                       ; preds = %if.end.67
  %44 = load %struct._object*, %struct._object** %two_valuation, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp70, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %46, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.69
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.69
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %49(%struct._object* %50)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %do.body.81

do.body.81:                                       ; preds = %do.end.80
  %51 = load %struct._object*, %struct._object** %odd_part, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp82, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %53, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.81
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %56(%struct._object* %57)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  %58 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %58, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.92, %do.end.66, %if.then.48, %if.then.42, %if.then.38, %if.then.34, %if.then.18, %if.then.14
  %59 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %59
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_floor(%struct._object* %self, %struct._object* %number) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %number.addr = alloca %struct._object*, align 8
  %method = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %number, %struct._object** %number.addr, align 8
  %0 = load %struct._object*, %struct._object** %number.addr, align 8
  %call = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %0, %struct._Py_Identifier* @math_floor.PyId___floor__)
  store %struct._object* %call, %struct._object** %method, align 8
  %1 = load %struct._object*, %struct._object** %method, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %number.addr, align 8
  %call3 = call %struct._object* @math_1_to_int(%struct._object* %2, double (double)* @floor, i32 0)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %3 = load %struct._object*, %struct._object** %method, align 8
  %call5 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %3, i8* null)
  store %struct._object* %call5, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %method, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %11 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end, %if.then.2
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_fmod(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ox = alloca %struct._object*, align 8
  %oy = alloca %struct._object*, align 8
  %r = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i64 2, i64 2, %struct._object** %ox, %struct._object** %oy)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %ox, align 8
  %call1 = call double @PyFloat_AsDouble(%struct._object* %1)
  store double %call1, double* %x, align 8
  %2 = load %struct._object*, %struct._object** %oy, align 8
  %call2 = call double @PyFloat_AsDouble(%struct._object* %2)
  store double %call2, double* %y, align 8
  %3 = load double, double* %x, align 8
  %cmp = fcmp oeq double %3, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load double, double* %y, align 8
  %cmp3 = fcmp oeq double %4, -1.000000e+00
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %5 = load double, double* %y, align 8
  %conv = fptrunc double %5 to float
  %call8 = call i32 @__isinff(float %conv) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.17, label %if.end.32

cond.false:                                       ; preds = %if.end.7
  br i1 true, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.false
  %6 = load double, double* %y, align 8
  %call11 = call i32 @__isinf(double %6) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.17, label %if.end.32

cond.false.13:                                    ; preds = %cond.false
  %7 = load double, double* %y, align 8
  %conv14 = fpext double %7 to x86_fp80
  %call15 = call i32 @__isinfl(x86_fp80 %conv14) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.32

land.lhs.true.17:                                 ; preds = %cond.false.13, %cond.true.10, %cond.true
  br i1 false, label %cond.true.18, label %cond.false.22

cond.true.18:                                     ; preds = %land.lhs.true.17
  %8 = load double, double* %x, align 8
  %conv19 = fptrunc double %8 to float
  %call20 = call i32 @__finitef(float %conv19) #5
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.30, label %if.end.32

cond.false.22:                                    ; preds = %land.lhs.true.17
  br i1 true, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.false.22
  %9 = load double, double* %x, align 8
  %call24 = call i32 @__finite(double %9) #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.30, label %if.end.32

cond.false.26:                                    ; preds = %cond.false.22
  %10 = load double, double* %x, align 8
  %conv27 = fpext double %10 to x86_fp80
  %call28 = call i32 @__finitel(x86_fp80 %conv27) #5
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %cond.false.26, %cond.true.23, %cond.true.18
  %11 = load double, double* %x, align 8
  %call31 = call %struct._object* @PyFloat_FromDouble(double %11)
  store %struct._object* %call31, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %cond.false.26, %cond.true.23, %cond.true.18, %cond.false.13, %cond.true.10, %cond.true
  %call33 = call i32* @__errno_location() #5
  store i32 0, i32* %call33, align 4
  %12 = load double, double* %x, align 8
  %13 = load double, double* %y, align 8
  %call34 = call double @fmod(double %12, double %13) #4
  store double %call34, double* %r, align 8
  br i1 false, label %cond.true.35, label %cond.false.39

cond.true.35:                                     ; preds = %if.end.32
  %14 = load double, double* %r, align 8
  %conv36 = fptrunc double %14 to float
  %call37 = call i32 @__isnanf(float %conv36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.47, label %if.end.77

cond.false.39:                                    ; preds = %if.end.32
  br i1 true, label %cond.true.40, label %cond.false.43

cond.true.40:                                     ; preds = %cond.false.39
  %15 = load double, double* %r, align 8
  %call41 = call i32 @__isnan(double %15) #5
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.47, label %if.end.77

cond.false.43:                                    ; preds = %cond.false.39
  %16 = load double, double* %r, align 8
  %conv44 = fpext double %16 to x86_fp80
  %call45 = call i32 @__isnanl(x86_fp80 %conv44) #5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.77

if.then.47:                                       ; preds = %cond.false.43, %cond.true.40, %cond.true.35
  br i1 false, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %if.then.47
  %17 = load double, double* %x, align 8
  %conv49 = fptrunc double %17 to float
  %call50 = call i32 @__isnanf(float %conv49) #5
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else, label %land.lhs.true.60

cond.false.52:                                    ; preds = %if.then.47
  br i1 true, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %cond.false.52
  %18 = load double, double* %x, align 8
  %call54 = call i32 @__isnan(double %18) #5
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else, label %land.lhs.true.60

cond.false.56:                                    ; preds = %cond.false.52
  %19 = load double, double* %x, align 8
  %conv57 = fpext double %19 to x86_fp80
  %call58 = call i32 @__isnanl(x86_fp80 %conv57) #5
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.else, label %land.lhs.true.60

land.lhs.true.60:                                 ; preds = %cond.false.56, %cond.true.53, %cond.true.48
  br i1 false, label %cond.true.61, label %cond.false.65

cond.true.61:                                     ; preds = %land.lhs.true.60
  %20 = load double, double* %y, align 8
  %conv62 = fptrunc double %20 to float
  %call63 = call i32 @__isnanf(float %conv62) #5
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.else, label %if.then.73

cond.false.65:                                    ; preds = %land.lhs.true.60
  br i1 true, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %cond.false.65
  %21 = load double, double* %y, align 8
  %call67 = call i32 @__isnan(double %21) #5
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.else, label %if.then.73

cond.false.69:                                    ; preds = %cond.false.65
  %22 = load double, double* %y, align 8
  %conv70 = fpext double %22 to x86_fp80
  %call71 = call i32 @__isnanl(x86_fp80 %conv70) #5
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.else, label %if.then.73

if.then.73:                                       ; preds = %cond.false.69, %cond.true.66, %cond.true.61
  %call74 = call i32* @__errno_location() #5
  store i32 33, i32* %call74, align 4
  br label %if.end.76

if.else:                                          ; preds = %cond.false.69, %cond.true.66, %cond.true.61, %cond.false.56, %cond.true.53, %cond.true.48
  %call75 = call i32* @__errno_location() #5
  store i32 0, i32* %call75, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.73
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %cond.false.43, %cond.true.40, %cond.true.35
  %call78 = call i32* @__errno_location() #5
  %23 = load i32, i32* %call78, align 4
  %tobool79 = icmp ne i32 %23, 0
  br i1 %tobool79, label %land.lhs.true.80, label %if.else.84

land.lhs.true.80:                                 ; preds = %if.end.77
  %24 = load double, double* %r, align 8
  %call81 = call i32 @is_error(double %24)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %land.lhs.true.80
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.84:                                       ; preds = %land.lhs.true.80, %if.end.77
  %25 = load double, double* %r, align 8
  %call85 = call %struct._object* @PyFloat_FromDouble(double %25)
  store %struct._object* %call85, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.84, %if.then.83, %if.then.30, %if.then.6, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_frexp(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %x = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load double, double* %x, align 8
  %conv = fptrunc double %2 to float
  %call2 = call i32 @__isnanf(float %conv) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.25, label %lor.lhs.false

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.false
  %3 = load double, double* %x, align 8
  %call5 = call i32 @__isnan(double %3) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.25, label %lor.lhs.false

cond.false.7:                                     ; preds = %cond.false
  %4 = load double, double* %x, align 8
  %conv8 = fpext double %4 to x86_fp80
  %call9 = call i32 @__isnanl(x86_fp80 %conv8) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.7, %cond.true.4, %cond.true
  br i1 false, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %lor.lhs.false
  %5 = load double, double* %x, align 8
  %conv12 = fptrunc double %5 to float
  %call13 = call i32 @__isinff(float %conv12) #5
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.25, label %lor.lhs.false.23

cond.false.15:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.16, label %cond.false.19

cond.true.16:                                     ; preds = %cond.false.15
  %6 = load double, double* %x, align 8
  %call17 = call i32 @__isinf(double %6) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.25, label %lor.lhs.false.23

cond.false.19:                                    ; preds = %cond.false.15
  %7 = load double, double* %x, align 8
  %conv20 = fpext double %7 to x86_fp80
  %call21 = call i32 @__isinfl(x86_fp80 %conv20) #5
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %cond.false.19, %cond.true.16, %cond.true.11
  %8 = load double, double* %x, align 8
  %tobool24 = fcmp une double %8, 0.000000e+00
  br i1 %tobool24, label %if.else, label %if.then.25

if.then.25:                                       ; preds = %lor.lhs.false.23, %cond.false.19, %cond.true.16, %cond.true.11, %cond.false.7, %cond.true.4, %cond.true
  store i32 0, i32* %i, align 4
  br label %if.end.27

if.else:                                          ; preds = %lor.lhs.false.23
  %9 = load double, double* %x, align 8
  %call26 = call double @frexp(double %9, i32* %i) #4
  store double %call26, double* %x, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  %10 = load double, double* %x, align 8
  %11 = load i32, i32* %i, align 4
  %call28 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), double %10, i32 %11)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_fsum(%struct._object* %self, %struct._object* %seq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %iter = alloca %struct._object*, align 8
  %sum = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %m = alloca i64, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %t = alloca double, align 8
  %ps = alloca [32 x double], align 16
  %p = alloca double*, align 8
  %xsave = alloca double, align 8
  %special_sum = alloca double, align 8
  %inf_sum = alloca double, align 8
  %hi = alloca double, align 8
  %yr = alloca double, align 8
  %lo = alloca double, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp149 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  store %struct._object* null, %struct._object** %sum, align 8
  store i64 0, i64* %n, align 8
  store i64 32, i64* %m, align 8
  %arraydecay = getelementptr inbounds [32 x double], [32 x double]* %ps, i32 0, i32 0
  store double* %arraydecay, double** %p, align 8
  store double 0.000000e+00, double* %special_sum, align 8
  store double 0.000000e+00, double* %inf_sum, align 8
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %0)
  store %struct._object* %call, %struct._object** %iter, align 8
  %1 = load %struct._object*, %struct._object** %iter, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.83, %if.end
  %2 = load %struct._object*, %struct._object** %iter, align 8
  %call1 = call %struct._object* @PyIter_Next(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %item, align 8
  %3 = load %struct._object*, %struct._object** %item, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %for.cond
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  br label %_fsum_error

if.end.6:                                         ; preds = %if.then.3
  br label %for.end.84

if.end.7:                                         ; preds = %for.cond
  %4 = load %struct._object*, %struct._object** %item, align 8
  %call8 = call double @PyFloat_AsDouble(%struct._object* %4)
  store double %call8, double* %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %5 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call %struct._object* @PyErr_Occurred()
  %tobool13 = icmp ne %struct._object* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  br label %_fsum_error

if.end.15:                                        ; preds = %do.end
  %12 = load double, double* %x, align 8
  store double %12, double* %xsave, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.end.15
  %13 = load i64, i64* %j, align 8
  %14 = load i64, i64* %n, align 8
  %cmp17 = icmp slt i64 %13, %14
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.16
  %15 = load i64, i64* %j, align 8
  %16 = load double*, double** %p, align 8
  %arrayidx = getelementptr double, double* %16, i64 %15
  %17 = load double, double* %arrayidx, align 8
  store double %17, double* %y, align 8
  %18 = load double, double* %x, align 8
  %call18 = call double @fabs(double %18) #5
  %19 = load double, double* %y, align 8
  %call19 = call double @fabs(double %19) #5
  %cmp20 = fcmp olt double %call18, %call19
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  %20 = load double, double* %x, align 8
  store double %20, double* %t, align 8
  %21 = load double, double* %y, align 8
  store double %21, double* %x, align 8
  %22 = load double, double* %t, align 8
  store double %22, double* %y, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %for.body
  %23 = load double, double* %x, align 8
  %24 = load double, double* %y, align 8
  %add = fadd double %23, %24
  store volatile double %add, double* %hi, align 8
  %25 = load volatile double, double* %hi, align 8
  %26 = load double, double* %x, align 8
  %sub = fsub double %25, %26
  store volatile double %sub, double* %yr, align 8
  %27 = load double, double* %y, align 8
  %28 = load volatile double, double* %yr, align 8
  %sub23 = fsub double %27, %28
  store volatile double %sub23, double* %lo, align 8
  %29 = load volatile double, double* %lo, align 8
  %cmp24 = fcmp une double %29, 0.000000e+00
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %30 = load volatile double, double* %lo, align 8
  %31 = load i64, i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  %32 = load double*, double** %p, align 8
  %arrayidx26 = getelementptr double, double* %32, i64 %31
  store double %30, double* %arrayidx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %33 = load volatile double, double* %hi, align 8
  store double %33, double* %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %34 = load i64, i64* %j, align 8
  %inc28 = add i64 %34, 1
  store i64 %inc28, i64* %j, align 8
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %35 = load i64, i64* %i, align 8
  store i64 %35, i64* %n, align 8
  %36 = load double, double* %x, align 8
  %cmp29 = fcmp une double %36, 0.000000e+00
  br i1 %cmp29, label %if.then.30, label %if.end.83

if.then.30:                                       ; preds = %for.end
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %37 = load double, double* %x, align 8
  %conv = fptrunc double %37 to float
  %call31 = call i32 @__finitef(float %conv) #5
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.else.71, label %if.then.40

cond.false:                                       ; preds = %if.then.30
  br i1 true, label %cond.true.33, label %cond.false.36

cond.true.33:                                     ; preds = %cond.false
  %38 = load double, double* %x, align 8
  %call34 = call i32 @__finite(double %38) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.else.71, label %if.then.40

cond.false.36:                                    ; preds = %cond.false
  %39 = load double, double* %x, align 8
  %conv37 = fpext double %39 to x86_fp80
  %call38 = call i32 @__finitel(x86_fp80 %conv37) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else.71, label %if.then.40

if.then.40:                                       ; preds = %cond.false.36, %cond.true.33, %cond.true
  br i1 false, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %if.then.40
  %40 = load double, double* %xsave, align 8
  %conv42 = fptrunc double %40 to float
  %call43 = call i32 @__finitef(float %conv42) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.53, label %if.end.54

cond.false.45:                                    ; preds = %if.then.40
  br i1 true, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %cond.false.45
  %41 = load double, double* %xsave, align 8
  %call47 = call i32 @__finite(double %41) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.53, label %if.end.54

cond.false.49:                                    ; preds = %cond.false.45
  %42 = load double, double* %xsave, align 8
  %conv50 = fpext double %42 to x86_fp80
  %call51 = call i32 @__finitel(x86_fp80 %conv50) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %cond.false.49, %cond.true.46, %cond.true.41
  %43 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0))
  br label %_fsum_error

if.end.54:                                        ; preds = %cond.false.49, %cond.true.46, %cond.true.41
  br i1 false, label %cond.true.55, label %cond.false.59

cond.true.55:                                     ; preds = %if.end.54
  %44 = load double, double* %xsave, align 8
  %conv56 = fptrunc double %44 to float
  %call57 = call i32 @__isinff(float %conv56) #5
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.67, label %if.end.69

cond.false.59:                                    ; preds = %if.end.54
  br i1 true, label %cond.true.60, label %cond.false.63

cond.true.60:                                     ; preds = %cond.false.59
  %45 = load double, double* %xsave, align 8
  %call61 = call i32 @__isinf(double %45) #5
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.67, label %if.end.69

cond.false.63:                                    ; preds = %cond.false.59
  %46 = load double, double* %xsave, align 8
  %conv64 = fpext double %46 to x86_fp80
  %call65 = call i32 @__isinfl(x86_fp80 %conv64) #5
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %cond.false.63, %cond.true.60, %cond.true.55
  %47 = load double, double* %xsave, align 8
  %48 = load double, double* %inf_sum, align 8
  %add68 = fadd double %48, %47
  store double %add68, double* %inf_sum, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %cond.false.63, %cond.true.60, %cond.true.55
  %49 = load double, double* %xsave, align 8
  %50 = load double, double* %special_sum, align 8
  %add70 = fadd double %50, %49
  store double %add70, double* %special_sum, align 8
  store i64 0, i64* %n, align 8
  br label %if.end.82

if.else.71:                                       ; preds = %cond.false.36, %cond.true.33, %cond.true
  %51 = load i64, i64* %n, align 8
  %52 = load i64, i64* %m, align 8
  %cmp72 = icmp sge i64 %51, %52
  br i1 %cmp72, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %if.else.71
  %53 = load i64, i64* %n, align 8
  %arraydecay74 = getelementptr inbounds [32 x double], [32 x double]* %ps, i32 0, i32 0
  %call75 = call i32 @_fsum_realloc(double** %p, i64 %53, double* %arraydecay74, i64* %m)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %land.lhs.true
  br label %_fsum_error

if.else.78:                                       ; preds = %land.lhs.true, %if.else.71
  %54 = load double, double* %x, align 8
  %55 = load i64, i64* %n, align 8
  %inc79 = add i64 %55, 1
  store i64 %inc79, i64* %n, align 8
  %56 = load double*, double** %p, align 8
  %arrayidx80 = getelementptr double, double* %56, i64 %55
  store double %54, double* %arrayidx80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.69
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %for.end
  br label %for.cond

for.end.84:                                       ; preds = %if.end.6
  %57 = load double, double* %special_sum, align 8
  %cmp85 = fcmp une double %57, 0.000000e+00
  br i1 %cmp85, label %if.then.87, label %if.end.104

if.then.87:                                       ; preds = %for.end.84
  br i1 false, label %cond.true.88, label %cond.false.92

cond.true.88:                                     ; preds = %if.then.87
  %58 = load double, double* %inf_sum, align 8
  %conv89 = fptrunc double %58 to float
  %call90 = call i32 @__isnanf(float %conv89) #5
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.100, label %if.else.101

cond.false.92:                                    ; preds = %if.then.87
  br i1 true, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %cond.false.92
  %59 = load double, double* %inf_sum, align 8
  %call94 = call i32 @__isnan(double %59) #5
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.100, label %if.else.101

cond.false.96:                                    ; preds = %cond.false.92
  %60 = load double, double* %inf_sum, align 8
  %conv97 = fpext double %60 to x86_fp80
  %call98 = call i32 @__isnanl(x86_fp80 %conv97) #5
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %cond.false.96, %cond.true.93, %cond.true.88
  %61 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.103

if.else.101:                                      ; preds = %cond.false.96, %cond.true.93, %cond.true.88
  %62 = load double, double* %special_sum, align 8
  %call102 = call %struct._object* @PyFloat_FromDouble(double %62)
  store %struct._object* %call102, %struct._object** %sum, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.100
  br label %_fsum_error

if.end.104:                                       ; preds = %for.end.84
  store volatile double 0.000000e+00, double* %hi, align 8
  %63 = load i64, i64* %n, align 8
  %cmp105 = icmp sgt i64 %63, 0
  br i1 %cmp105, label %if.then.107, label %if.end.146

if.then.107:                                      ; preds = %if.end.104
  %64 = load i64, i64* %n, align 8
  %dec108 = add i64 %64, -1
  store i64 %dec108, i64* %n, align 8
  %65 = load double*, double** %p, align 8
  %arrayidx109 = getelementptr double, double* %65, i64 %dec108
  %66 = load double, double* %arrayidx109, align 8
  store volatile double %66, double* %hi, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.120, %if.then.107
  %67 = load i64, i64* %n, align 8
  %cmp110 = icmp sgt i64 %67, 0
  br i1 %cmp110, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load volatile double, double* %hi, align 8
  store double %68, double* %x, align 8
  %69 = load i64, i64* %n, align 8
  %dec112 = add i64 %69, -1
  store i64 %dec112, i64* %n, align 8
  %70 = load double*, double** %p, align 8
  %arrayidx113 = getelementptr double, double* %70, i64 %dec112
  %71 = load double, double* %arrayidx113, align 8
  store double %71, double* %y, align 8
  %72 = load double, double* %x, align 8
  %73 = load double, double* %y, align 8
  %add114 = fadd double %72, %73
  store volatile double %add114, double* %hi, align 8
  %74 = load volatile double, double* %hi, align 8
  %75 = load double, double* %x, align 8
  %sub115 = fsub double %74, %75
  store volatile double %sub115, double* %yr, align 8
  %76 = load double, double* %y, align 8
  %77 = load volatile double, double* %yr, align 8
  %sub116 = fsub double %76, %77
  store volatile double %sub116, double* %lo, align 8
  %78 = load volatile double, double* %lo, align 8
  %cmp117 = fcmp une double %78, 0.000000e+00
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %while.body
  br label %while.end

if.end.120:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.119, %while.cond
  %79 = load i64, i64* %n, align 8
  %cmp121 = icmp sgt i64 %79, 0
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.145

land.lhs.true.123:                                ; preds = %while.end
  %80 = load volatile double, double* %lo, align 8
  %cmp124 = fcmp olt double %80, 0.000000e+00
  br i1 %cmp124, label %land.lhs.true.126, label %lor.lhs.false

land.lhs.true.126:                                ; preds = %land.lhs.true.123
  %81 = load i64, i64* %n, align 8
  %sub127 = sub i64 %81, 1
  %82 = load double*, double** %p, align 8
  %arrayidx128 = getelementptr double, double* %82, i64 %sub127
  %83 = load double, double* %arrayidx128, align 8
  %cmp129 = fcmp olt double %83, 0.000000e+00
  br i1 %cmp129, label %if.then.138, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.126, %land.lhs.true.123
  %84 = load volatile double, double* %lo, align 8
  %cmp131 = fcmp ogt double %84, 0.000000e+00
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.145

land.lhs.true.133:                                ; preds = %lor.lhs.false
  %85 = load i64, i64* %n, align 8
  %sub134 = sub i64 %85, 1
  %86 = load double*, double** %p, align 8
  %arrayidx135 = getelementptr double, double* %86, i64 %sub134
  %87 = load double, double* %arrayidx135, align 8
  %cmp136 = fcmp ogt double %87, 0.000000e+00
  br i1 %cmp136, label %if.then.138, label %if.end.145

if.then.138:                                      ; preds = %land.lhs.true.133, %land.lhs.true.126
  %88 = load volatile double, double* %lo, align 8
  %mul = fmul double %88, 2.000000e+00
  store double %mul, double* %y, align 8
  %89 = load volatile double, double* %hi, align 8
  %90 = load double, double* %y, align 8
  %add139 = fadd double %89, %90
  store double %add139, double* %x, align 8
  %91 = load double, double* %x, align 8
  %92 = load volatile double, double* %hi, align 8
  %sub140 = fsub double %91, %92
  store volatile double %sub140, double* %yr, align 8
  %93 = load double, double* %y, align 8
  %94 = load volatile double, double* %yr, align 8
  %cmp141 = fcmp oeq double %93, %94
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.then.138
  %95 = load double, double* %x, align 8
  store volatile double %95, double* %hi, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %if.then.138
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %land.lhs.true.133, %lor.lhs.false, %while.end
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.104
  %96 = load volatile double, double* %hi, align 8
  %call147 = call %struct._object* @PyFloat_FromDouble(double %96)
  store %struct._object* %call147, %struct._object** %sum, align 8
  br label %_fsum_error

_fsum_error:                                      ; preds = %if.end.146, %if.end.103, %if.then.77, %if.then.53, %if.then.14, %if.then.5
  br label %do.body.148

do.body.148:                                      ; preds = %_fsum_error
  %97 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp149, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt150, align 8
  %dec151 = add i64 %99, -1
  store i64 %dec151, i64* %ob_refcnt150, align 8
  %cmp152 = icmp ne i64 %dec151, 0
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.148
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.148
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  call void %102(%struct._object* %103)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  %104 = load double*, double** %p, align 8
  %arraydecay160 = getelementptr inbounds [32 x double], [32 x double]* %ps, i32 0, i32 0
  %cmp161 = icmp ne double* %104, %arraydecay160
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %do.end.159
  %105 = load double*, double** %p, align 8
  %106 = bitcast double* %105 to i8*
  call void @PyMem_Free(i8* %106)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %do.end.159
  %107 = load %struct._object*, %struct._object** %sum, align 8
  store %struct._object* %107, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.164, %if.then
  %108 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %108
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_gamma(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1a(%struct._object* %0, double (double)* @m_tgamma)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_hypot(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ox = alloca %struct._object*, align 8
  %oy = alloca %struct._object*, align 8
  %r = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i64 2, i64 2, %struct._object** %ox, %struct._object** %oy)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %ox, align 8
  %call1 = call double @PyFloat_AsDouble(%struct._object* %1)
  store double %call1, double* %x, align 8
  %2 = load %struct._object*, %struct._object** %oy, align 8
  %call2 = call double @PyFloat_AsDouble(%struct._object* %2)
  store double %call2, double* %y, align 8
  %3 = load double, double* %x, align 8
  %cmp = fcmp oeq double %3, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load double, double* %y, align 8
  %cmp3 = fcmp oeq double %4, -1.000000e+00
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %5 = load double, double* %x, align 8
  %conv = fptrunc double %5 to float
  %call8 = call i32 @__isinff(float %conv) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.17, label %if.end.20

cond.false:                                       ; preds = %if.end.7
  br i1 true, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.false
  %6 = load double, double* %x, align 8
  %call11 = call i32 @__isinf(double %6) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.17, label %if.end.20

cond.false.13:                                    ; preds = %cond.false
  %7 = load double, double* %x, align 8
  %conv14 = fpext double %7 to x86_fp80
  %call15 = call i32 @__isinfl(x86_fp80 %conv14) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.false.13, %cond.true.10, %cond.true
  %8 = load double, double* %x, align 8
  %call18 = call double @fabs(double %8) #5
  %call19 = call %struct._object* @PyFloat_FromDouble(double %call18)
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %cond.false.13, %cond.true.10, %cond.true
  br i1 false, label %cond.true.21, label %cond.false.25

cond.true.21:                                     ; preds = %if.end.20
  %9 = load double, double* %y, align 8
  %conv22 = fptrunc double %9 to float
  %call23 = call i32 @__isinff(float %conv22) #5
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.33, label %if.end.36

cond.false.25:                                    ; preds = %if.end.20
  br i1 true, label %cond.true.26, label %cond.false.29

cond.true.26:                                     ; preds = %cond.false.25
  %10 = load double, double* %y, align 8
  %call27 = call i32 @__isinf(double %10) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.33, label %if.end.36

cond.false.29:                                    ; preds = %cond.false.25
  %11 = load double, double* %y, align 8
  %conv30 = fpext double %11 to x86_fp80
  %call31 = call i32 @__isinfl(x86_fp80 %conv30) #5
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %cond.false.29, %cond.true.26, %cond.true.21
  %12 = load double, double* %y, align 8
  %call34 = call double @fabs(double %12) #5
  %call35 = call %struct._object* @PyFloat_FromDouble(double %call34)
  store %struct._object* %call35, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %cond.false.29, %cond.true.26, %cond.true.21
  %call37 = call i32* @__errno_location() #5
  store i32 0, i32* %call37, align 4
  %13 = load double, double* %x, align 8
  %14 = load double, double* %y, align 8
  %call38 = call double @hypot(double %13, double %14) #4
  store double %call38, double* %r, align 8
  br i1 false, label %cond.true.39, label %cond.false.43

cond.true.39:                                     ; preds = %if.end.36
  %15 = load double, double* %r, align 8
  %conv40 = fptrunc double %15 to float
  %call41 = call i32 @__isnanf(float %conv40) #5
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.51, label %if.else.81

cond.false.43:                                    ; preds = %if.end.36
  br i1 true, label %cond.true.44, label %cond.false.47

cond.true.44:                                     ; preds = %cond.false.43
  %16 = load double, double* %r, align 8
  %call45 = call i32 @__isnan(double %16) #5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.51, label %if.else.81

cond.false.47:                                    ; preds = %cond.false.43
  %17 = load double, double* %r, align 8
  %conv48 = fpext double %17 to x86_fp80
  %call49 = call i32 @__isnanl(x86_fp80 %conv48) #5
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.81

if.then.51:                                       ; preds = %cond.false.47, %cond.true.44, %cond.true.39
  br i1 false, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %if.then.51
  %18 = load double, double* %x, align 8
  %conv53 = fptrunc double %18 to float
  %call54 = call i32 @__isnanf(float %conv53) #5
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else, label %land.lhs.true.64

cond.false.56:                                    ; preds = %if.then.51
  br i1 true, label %cond.true.57, label %cond.false.60

cond.true.57:                                     ; preds = %cond.false.56
  %19 = load double, double* %x, align 8
  %call58 = call i32 @__isnan(double %19) #5
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.else, label %land.lhs.true.64

cond.false.60:                                    ; preds = %cond.false.56
  %20 = load double, double* %x, align 8
  %conv61 = fpext double %20 to x86_fp80
  %call62 = call i32 @__isnanl(x86_fp80 %conv61) #5
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.else, label %land.lhs.true.64

land.lhs.true.64:                                 ; preds = %cond.false.60, %cond.true.57, %cond.true.52
  br i1 false, label %cond.true.65, label %cond.false.69

cond.true.65:                                     ; preds = %land.lhs.true.64
  %21 = load double, double* %y, align 8
  %conv66 = fptrunc double %21 to float
  %call67 = call i32 @__isnanf(float %conv66) #5
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.else, label %if.then.77

cond.false.69:                                    ; preds = %land.lhs.true.64
  br i1 true, label %cond.true.70, label %cond.false.73

cond.true.70:                                     ; preds = %cond.false.69
  %22 = load double, double* %y, align 8
  %call71 = call i32 @__isnan(double %22) #5
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.else, label %if.then.77

cond.false.73:                                    ; preds = %cond.false.69
  %23 = load double, double* %y, align 8
  %conv74 = fpext double %23 to x86_fp80
  %call75 = call i32 @__isnanl(x86_fp80 %conv74) #5
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.else, label %if.then.77

if.then.77:                                       ; preds = %cond.false.73, %cond.true.70, %cond.true.65
  %call78 = call i32* @__errno_location() #5
  store i32 33, i32* %call78, align 4
  br label %if.end.80

if.else:                                          ; preds = %cond.false.73, %cond.true.70, %cond.true.65, %cond.false.60, %cond.true.57, %cond.true.52
  %call79 = call i32* @__errno_location() #5
  store i32 0, i32* %call79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.77
  br label %if.end.126

if.else.81:                                       ; preds = %cond.false.47, %cond.true.44, %cond.true.39
  br i1 false, label %cond.true.82, label %cond.false.86

cond.true.82:                                     ; preds = %if.else.81
  %24 = load double, double* %r, align 8
  %conv83 = fptrunc double %24 to float
  %call84 = call i32 @__isinff(float %conv83) #5
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.94, label %if.end.125

cond.false.86:                                    ; preds = %if.else.81
  br i1 true, label %cond.true.87, label %cond.false.90

cond.true.87:                                     ; preds = %cond.false.86
  %25 = load double, double* %r, align 8
  %call88 = call i32 @__isinf(double %25) #5
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.94, label %if.end.125

cond.false.90:                                    ; preds = %cond.false.86
  %26 = load double, double* %r, align 8
  %conv91 = fpext double %26 to x86_fp80
  %call92 = call i32 @__isinfl(x86_fp80 %conv91) #5
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.125

if.then.94:                                       ; preds = %cond.false.90, %cond.true.87, %cond.true.82
  br i1 false, label %cond.true.95, label %cond.false.99

cond.true.95:                                     ; preds = %if.then.94
  %27 = load double, double* %x, align 8
  %conv96 = fptrunc double %27 to float
  %call97 = call i32 @__finitef(float %conv96) #5
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %land.lhs.true.107, label %if.else.122

cond.false.99:                                    ; preds = %if.then.94
  br i1 true, label %cond.true.100, label %cond.false.103

cond.true.100:                                    ; preds = %cond.false.99
  %28 = load double, double* %x, align 8
  %call101 = call i32 @__finite(double %28) #5
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %land.lhs.true.107, label %if.else.122

cond.false.103:                                   ; preds = %cond.false.99
  %29 = load double, double* %x, align 8
  %conv104 = fpext double %29 to x86_fp80
  %call105 = call i32 @__finitel(x86_fp80 %conv104) #5
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %land.lhs.true.107, label %if.else.122

land.lhs.true.107:                                ; preds = %cond.false.103, %cond.true.100, %cond.true.95
  br i1 false, label %cond.true.108, label %cond.false.112

cond.true.108:                                    ; preds = %land.lhs.true.107
  %30 = load double, double* %y, align 8
  %conv109 = fptrunc double %30 to float
  %call110 = call i32 @__finitef(float %conv109) #5
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.120, label %if.else.122

cond.false.112:                                   ; preds = %land.lhs.true.107
  br i1 true, label %cond.true.113, label %cond.false.116

cond.true.113:                                    ; preds = %cond.false.112
  %31 = load double, double* %y, align 8
  %call114 = call i32 @__finite(double %31) #5
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then.120, label %if.else.122

cond.false.116:                                   ; preds = %cond.false.112
  %32 = load double, double* %y, align 8
  %conv117 = fpext double %32 to x86_fp80
  %call118 = call i32 @__finitel(x86_fp80 %conv117) #5
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.120, label %if.else.122

if.then.120:                                      ; preds = %cond.false.116, %cond.true.113, %cond.true.108
  %call121 = call i32* @__errno_location() #5
  store i32 34, i32* %call121, align 4
  br label %if.end.124

if.else.122:                                      ; preds = %cond.false.116, %cond.true.113, %cond.true.108, %cond.false.103, %cond.true.100, %cond.true.95
  %call123 = call i32* @__errno_location() #5
  store i32 0, i32* %call123, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %if.then.120
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %cond.false.90, %cond.true.87, %cond.true.82
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.80
  %call127 = call i32* @__errno_location() #5
  %33 = load i32, i32* %call127, align 4
  %tobool128 = icmp ne i32 %33, 0
  br i1 %tobool128, label %land.lhs.true.129, label %if.else.133

land.lhs.true.129:                                ; preds = %if.end.126
  %34 = load double, double* %r, align 8
  %call130 = call i32 @is_error(double %34)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %land.lhs.true.129
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.133:                                      ; preds = %land.lhs.true.129, %if.end.126
  %35 = load double, double* %r, align 8
  %call134 = call %struct._object* @PyFloat_FromDouble(double %35)
  store %struct._object* %call134, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.133, %if.then.132, %if.then.33, %if.then.17, %if.then.6, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_isfinite(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load double, double* %x, align 8
  %call2 = call i32 @__finite(double %2) #5
  %conv = sext i32 %call2 to i64
  %call3 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_isinf(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load double, double* %x, align 8
  %call2 = call i32 @__isinf(double %2) #5
  %conv = sext i32 %call2 to i64
  %call3 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_isnan(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load double, double* %x, align 8
  %call2 = call i32 @__isnan(double %2) #5
  %conv = sext i32 %call2 to i64
  %call3 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_ldexp(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %r = alloca double, align 8
  %oexp = alloca %struct._object*, align 8
  %exp = alloca i64, align 8
  %overflow = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), double* %x, %struct._object** %oexp)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %oexp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %oexp, align 8
  %call2 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %4, i32* %overflow)
  store i64 %call2, i64* %exp, align 8
  %5 = load i64, i64* %exp, align 8
  %cmp3 = icmp eq i64 %5, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.then.1
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.then.1
  %6 = load i32, i32* %overflow, align 4
  %tobool8 = icmp ne i32 %6, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %7 = load i32, i32* %overflow, align 4
  %cmp10 = icmp slt i32 %7, 0
  %cond = select i1 %cmp10, i64 -9223372036854775808, i64 9223372036854775807
  store i64 %cond, i64* %exp, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.56, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.11
  %9 = load double, double* %x, align 8
  %cmp13 = fcmp oeq double %9, 0.000000e+00
  br i1 %cmp13, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %10 = load double, double* %x, align 8
  %conv = fptrunc double %10 to float
  %call14 = call i32 @__finitef(float %conv) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else.25, label %if.then.23

cond.false:                                       ; preds = %lor.lhs.false
  br i1 true, label %cond.true.16, label %cond.false.19

cond.true.16:                                     ; preds = %cond.false
  %11 = load double, double* %x, align 8
  %call17 = call i32 @__finite(double %11) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.25, label %if.then.23

cond.false.19:                                    ; preds = %cond.false
  %12 = load double, double* %x, align 8
  %conv20 = fpext double %12 to x86_fp80
  %call21 = call i32 @__finitel(x86_fp80 %conv20) #5
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.25, label %if.then.23

if.then.23:                                       ; preds = %cond.false.19, %cond.true.16, %cond.true, %if.end.12
  %13 = load double, double* %x, align 8
  store double %13, double* %r, align 8
  %call24 = call i32* @__errno_location() #5
  store i32 0, i32* %call24, align 4
  br label %if.end.58

if.else.25:                                       ; preds = %cond.false.19, %cond.true.16, %cond.true
  %14 = load i64, i64* %exp, align 8
  %cmp26 = icmp sgt i64 %14, 2147483647
  br i1 %cmp26, label %if.then.28, label %if.else.31

if.then.28:                                       ; preds = %if.else.25
  %15 = load double, double* %x, align 8
  %call29 = call double @copysign(double 0x7FF0000000000000, double %15) #5
  store double %call29, double* %r, align 8
  %call30 = call i32* @__errno_location() #5
  store i32 34, i32* %call30, align 4
  br label %if.end.57

if.else.31:                                       ; preds = %if.else.25
  %16 = load i64, i64* %exp, align 8
  %cmp32 = icmp slt i64 %16, -2147483648
  br i1 %cmp32, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.else.31
  %17 = load double, double* %x, align 8
  %call35 = call double @copysign(double 0.000000e+00, double %17) #5
  store double %call35, double* %r, align 8
  %call36 = call i32* @__errno_location() #5
  store i32 0, i32* %call36, align 4
  br label %if.end.56

if.else.37:                                       ; preds = %if.else.31
  %call38 = call i32* @__errno_location() #5
  store i32 0, i32* %call38, align 4
  %18 = load double, double* %x, align 8
  %19 = load i64, i64* %exp, align 8
  %conv39 = trunc i64 %19 to i32
  %call40 = call double @ldexp(double %18, i32 %conv39) #4
  store double %call40, double* %r, align 8
  br i1 false, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %if.else.37
  %20 = load double, double* %r, align 8
  %conv42 = fptrunc double %20 to float
  %call43 = call i32 @__isinff(float %conv42) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.53, label %if.end.55

cond.false.45:                                    ; preds = %if.else.37
  br i1 true, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %cond.false.45
  %21 = load double, double* %r, align 8
  %call47 = call i32 @__isinf(double %21) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.53, label %if.end.55

cond.false.49:                                    ; preds = %cond.false.45
  %22 = load double, double* %r, align 8
  %conv50 = fpext double %22 to x86_fp80
  %call51 = call i32 @__isinfl(x86_fp80 %conv50) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %cond.false.49, %cond.true.46, %cond.true.41
  %call54 = call i32* @__errno_location() #5
  store i32 34, i32* %call54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %cond.false.49, %cond.true.46, %cond.true.41
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.34
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.28
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.23
  %call59 = call i32* @__errno_location() #5
  %23 = load i32, i32* %call59, align 4
  %tobool60 = icmp ne i32 %23, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.65

land.lhs.true.61:                                 ; preds = %if.end.58
  %24 = load double, double* %r, align 8
  %call62 = call i32 @is_error(double %24)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.61
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.65:                                        ; preds = %land.lhs.true.61, %if.end.58
  %25 = load double, double* %r, align 8
  %call66 = call %struct._object* @PyFloat_FromDouble(double %25)
  store %struct._object* %call66, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.then.64, %if.else, %if.then.6, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_lgamma(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1a(%struct._object* %0, double (double)* @m_lgamma)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_log(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %base = alloca %struct._object*, align 8
  %num = alloca %struct._object*, align 8
  %den = alloca %struct._object*, align 8
  %ans = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %base, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i64 1, i64 2, %struct._object** %arg, %struct._object** %base)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %call1 = call %struct._object* @loghelper(%struct._object* %1, double (double)* @m_log, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %num, align 8
  %2 = load %struct._object*, %struct._object** %num, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %base, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %4 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %base, align 8
  %call5 = call %struct._object* @loghelper(%struct._object* %5, double (double)* @m_log, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %den, align 8
  %6 = load %struct._object*, %struct._object** %den, align 8
  %cmp6 = icmp eq %struct._object* %6, null
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %7 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %14 = load %struct._object*, %struct._object** %num, align 8
  %15 = load %struct._object*, %struct._object** %den, align 8
  %call12 = call %struct._object* @PyNumber_TrueDivide(%struct._object* %14, %struct._object* %15)
  store %struct._object* %call12, %struct._object** %ans, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.11
  %16 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp14, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %18, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %21(%struct._object* %22)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %23 = load %struct._object*, %struct._object** %den, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp25, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %25, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %28(%struct._object* %29)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %30 = load %struct._object*, %struct._object** %ans, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.34, %do.end, %if.then.3, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_log1p(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @_Py_log1p, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_log10(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call %struct._object* @loghelper(%struct._object* %0, double (double)* @m_log10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_log2(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call %struct._object* @loghelper(%struct._object* %0, double (double)* @m_log2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_modf(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %y = alloca double, align 8
  %x = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load double, double* %x, align 8
  %conv = fptrunc double %2 to float
  %call2 = call i32 @__finitef(float %conv) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.43, label %if.then.11

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.false
  %3 = load double, double* %x, align 8
  %call5 = call i32 @__finite(double %3) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.43, label %if.then.11

cond.false.7:                                     ; preds = %cond.false
  %4 = load double, double* %x, align 8
  %conv8 = fpext double %4 to x86_fp80
  %call9 = call i32 @__finitel(x86_fp80 %conv8) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.43, label %if.then.11

if.then.11:                                       ; preds = %cond.false.7, %cond.true.4, %cond.true
  br i1 false, label %cond.true.12, label %cond.false.16

cond.true.12:                                     ; preds = %if.then.11
  %5 = load double, double* %x, align 8
  %conv13 = fptrunc double %5 to float
  %call14 = call i32 @__isinff(float %conv13) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.24, label %if.else

cond.false.16:                                    ; preds = %if.then.11
  br i1 true, label %cond.true.17, label %cond.false.20

cond.true.17:                                     ; preds = %cond.false.16
  %6 = load double, double* %x, align 8
  %call18 = call i32 @__isinf(double %6) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.24, label %if.else

cond.false.20:                                    ; preds = %cond.false.16
  %7 = load double, double* %x, align 8
  %conv21 = fpext double %7 to x86_fp80
  %call22 = call i32 @__isinfl(x86_fp80 %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %cond.false.20, %cond.true.17, %cond.true.12
  %8 = load double, double* %x, align 8
  %call25 = call double @copysign(double 0.000000e+00, double %8) #5
  %9 = load double, double* %x, align 8
  %call26 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), double %call25, double %9)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %cond.false.20, %cond.true.17, %cond.true.12
  br i1 false, label %cond.true.27, label %cond.false.31

cond.true.27:                                     ; preds = %if.else
  %10 = load double, double* %x, align 8
  %conv28 = fptrunc double %10 to float
  %call29 = call i32 @__isnanf(float %conv28) #5
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.39, label %if.end.41

cond.false.31:                                    ; preds = %if.else
  br i1 true, label %cond.true.32, label %cond.false.35

cond.true.32:                                     ; preds = %cond.false.31
  %11 = load double, double* %x, align 8
  %call33 = call i32 @__isnan(double %11) #5
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.39, label %if.end.41

cond.false.35:                                    ; preds = %cond.false.31
  %12 = load double, double* %x, align 8
  %conv36 = fpext double %12 to x86_fp80
  %call37 = call i32 @__isnanl(x86_fp80 %conv36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %cond.false.35, %cond.true.32, %cond.true.27
  %13 = load double, double* %x, align 8
  %14 = load double, double* %x, align 8
  %call40 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), double %13, double %14)
  store %struct._object* %call40, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %cond.false.35, %cond.true.32, %cond.true.27
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %cond.false.7, %cond.true.4, %cond.true
  %call44 = call i32* @__errno_location() #5
  store i32 0, i32* %call44, align 4
  %15 = load double, double* %x, align 8
  %call45 = call double @modf(double %15, double* %y) #4
  store double %call45, double* %x, align 8
  %16 = load double, double* %x, align 8
  %17 = load double, double* %y, align 8
  %call46 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), double %16, double %17)
  store %struct._object* %call46, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.39, %if.then.24, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_pow(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ox = alloca %struct._object*, align 8
  %oy = alloca %struct._object*, align 8
  %r = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %odd_y = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i64 2, i64 2, %struct._object** %ox, %struct._object** %oy)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %ox, align 8
  %call1 = call double @PyFloat_AsDouble(%struct._object* %1)
  store double %call1, double* %x, align 8
  %2 = load %struct._object*, %struct._object** %oy, align 8
  %call2 = call double @PyFloat_AsDouble(%struct._object* %2)
  store double %call2, double* %y, align 8
  %3 = load double, double* %x, align 8
  %cmp = fcmp oeq double %3, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load double, double* %y, align 8
  %cmp3 = fcmp oeq double %4, -1.000000e+00
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %lor.lhs.false
  store double 0.000000e+00, double* %r, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %5 = load double, double* %x, align 8
  %conv = fptrunc double %5 to float
  %call8 = call i32 @__finitef(float %conv) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %lor.lhs.false.17, label %if.then.30

cond.false:                                       ; preds = %if.end.7
  br i1 true, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.false
  %6 = load double, double* %x, align 8
  %call11 = call i32 @__finite(double %6) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.lhs.false.17, label %if.then.30

cond.false.13:                                    ; preds = %cond.false
  %7 = load double, double* %x, align 8
  %conv14 = fpext double %7 to x86_fp80
  %call15 = call i32 @__finitel(x86_fp80 %conv14) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false.17, label %if.then.30

lor.lhs.false.17:                                 ; preds = %cond.false.13, %cond.true.10, %cond.true
  br i1 false, label %cond.true.18, label %cond.false.22

cond.true.18:                                     ; preds = %lor.lhs.false.17
  %8 = load double, double* %y, align 8
  %conv19 = fptrunc double %8 to float
  %call20 = call i32 @__finitef(float %conv19) #5
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else.167, label %if.then.30

cond.false.22:                                    ; preds = %lor.lhs.false.17
  br i1 true, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.false.22
  %9 = load double, double* %y, align 8
  %call24 = call i32 @__finite(double %9) #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else.167, label %if.then.30

cond.false.26:                                    ; preds = %cond.false.22
  %10 = load double, double* %y, align 8
  %conv27 = fpext double %10 to x86_fp80
  %call28 = call i32 @__finitel(x86_fp80 %conv27) #5
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.167, label %if.then.30

if.then.30:                                       ; preds = %cond.false.26, %cond.true.23, %cond.true.18, %cond.false.13, %cond.true.10, %cond.true
  %call31 = call i32* @__errno_location() #5
  store i32 0, i32* %call31, align 4
  br i1 false, label %cond.true.32, label %cond.false.36

cond.true.32:                                     ; preds = %if.then.30
  %11 = load double, double* %x, align 8
  %conv33 = fptrunc double %11 to float
  %call34 = call i32 @__isnanf(float %conv33) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.44, label %if.else

cond.false.36:                                    ; preds = %if.then.30
  br i1 true, label %cond.true.37, label %cond.false.40

cond.true.37:                                     ; preds = %cond.false.36
  %12 = load double, double* %x, align 8
  %call38 = call i32 @__isnan(double %12) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.44, label %if.else

cond.false.40:                                    ; preds = %cond.false.36
  %13 = load double, double* %x, align 8
  %conv41 = fpext double %13 to x86_fp80
  %call42 = call i32 @__isnanl(x86_fp80 %conv41) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %cond.false.40, %cond.true.37, %cond.true.32
  %14 = load double, double* %y, align 8
  %cmp45 = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %if.then.44
  br label %cond.end

cond.false.48:                                    ; preds = %if.then.44
  %15 = load double, double* %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.48, %cond.true.47
  %cond = phi double [ 1.000000e+00, %cond.true.47 ], [ %15, %cond.false.48 ]
  store double %cond, double* %r, align 8
  br label %if.end.166

if.else:                                          ; preds = %cond.false.40, %cond.true.37, %cond.true.32
  br i1 false, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %if.else
  %16 = load double, double* %y, align 8
  %conv50 = fptrunc double %16 to float
  %call51 = call i32 @__isnanf(float %conv50) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.61, label %if.else.68

cond.false.53:                                    ; preds = %if.else
  br i1 true, label %cond.true.54, label %cond.false.57

cond.true.54:                                     ; preds = %cond.false.53
  %17 = load double, double* %y, align 8
  %call55 = call i32 @__isnan(double %17) #5
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.61, label %if.else.68

cond.false.57:                                    ; preds = %cond.false.53
  %18 = load double, double* %y, align 8
  %conv58 = fpext double %18 to x86_fp80
  %call59 = call i32 @__isnanl(x86_fp80 %conv58) #5
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.68

if.then.61:                                       ; preds = %cond.false.57, %cond.true.54, %cond.true.49
  %19 = load double, double* %x, align 8
  %cmp62 = fcmp oeq double %19, 1.000000e+00
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %if.then.61
  br label %cond.end.66

cond.false.65:                                    ; preds = %if.then.61
  %20 = load double, double* %y, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.64
  %cond67 = phi double [ 1.000000e+00, %cond.true.64 ], [ %20, %cond.false.65 ]
  store double %cond67, double* %r, align 8
  br label %if.end.165

if.else.68:                                       ; preds = %cond.false.57, %cond.true.54, %cond.true.49
  br i1 false, label %cond.true.69, label %cond.false.73

cond.true.69:                                     ; preds = %if.else.68
  %21 = load double, double* %x, align 8
  %conv70 = fptrunc double %21 to float
  %call71 = call i32 @__isinff(float %conv70) #5
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.81, label %if.else.120

cond.false.73:                                    ; preds = %if.else.68
  br i1 true, label %cond.true.74, label %cond.false.77

cond.true.74:                                     ; preds = %cond.false.73
  %22 = load double, double* %x, align 8
  %call75 = call i32 @__isinf(double %22) #5
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.81, label %if.else.120

cond.false.77:                                    ; preds = %cond.false.73
  %23 = load double, double* %x, align 8
  %conv78 = fpext double %23 to x86_fp80
  %call79 = call i32 @__isinfl(x86_fp80 %conv78) #5
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.120

if.then.81:                                       ; preds = %cond.false.77, %cond.true.74, %cond.true.69
  br i1 false, label %cond.true.82, label %cond.false.86

cond.true.82:                                     ; preds = %if.then.81
  %24 = load double, double* %y, align 8
  %conv83 = fptrunc double %24 to float
  %call84 = call i32 @__finitef(float %conv83) #5
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %land.rhs, label %land.end

cond.false.86:                                    ; preds = %if.then.81
  br i1 true, label %cond.true.87, label %cond.false.90

cond.true.87:                                     ; preds = %cond.false.86
  %25 = load double, double* %y, align 8
  %call88 = call i32 @__finite(double %25) #5
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %land.rhs, label %land.end

cond.false.90:                                    ; preds = %cond.false.86
  %26 = load double, double* %y, align 8
  %conv91 = fpext double %26 to x86_fp80
  %call92 = call i32 @__finitel(x86_fp80 %conv91) #5
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false.90, %cond.true.87, %cond.true.82
  %27 = load double, double* %y, align 8
  %call94 = call double @fabs(double %27) #5
  %call95 = call double @fmod(double %call94, double 2.000000e+00) #4
  %cmp96 = fcmp oeq double %call95, 1.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false.90, %cond.true.87, %cond.true.82
  %28 = phi i1 [ false, %cond.false.90 ], [ false, %cond.true.87 ], [ false, %cond.true.82 ], [ %cmp96, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  store i32 %land.ext, i32* %odd_y, align 4
  %29 = load double, double* %y, align 8
  %cmp98 = fcmp ogt double %29, 0.000000e+00
  br i1 %cmp98, label %if.then.100, label %if.else.107

if.then.100:                                      ; preds = %land.end
  %30 = load i32, i32* %odd_y, align 4
  %tobool101 = icmp ne i32 %30, 0
  br i1 %tobool101, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %if.then.100
  %31 = load double, double* %x, align 8
  br label %cond.end.105

cond.false.103:                                   ; preds = %if.then.100
  %32 = load double, double* %x, align 8
  %call104 = call double @fabs(double %32) #5
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.103, %cond.true.102
  %cond106 = phi double [ %31, %cond.true.102 ], [ %call104, %cond.false.103 ]
  store double %cond106, double* %r, align 8
  br label %if.end.119

if.else.107:                                      ; preds = %land.end
  %33 = load double, double* %y, align 8
  %cmp108 = fcmp oeq double %33, 0.000000e+00
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %if.else.107
  store double 1.000000e+00, double* %r, align 8
  br label %if.end.118

if.else.111:                                      ; preds = %if.else.107
  %34 = load i32, i32* %odd_y, align 4
  %tobool112 = icmp ne i32 %34, 0
  br i1 %tobool112, label %cond.true.113, label %cond.false.115

cond.true.113:                                    ; preds = %if.else.111
  %35 = load double, double* %x, align 8
  %call114 = call double @copysign(double 0.000000e+00, double %35) #5
  br label %cond.end.116

cond.false.115:                                   ; preds = %if.else.111
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.113
  %cond117 = phi double [ %call114, %cond.true.113 ], [ 0.000000e+00, %cond.false.115 ]
  store double %cond117, double* %r, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %cond.end.116, %if.then.110
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %cond.end.105
  br label %if.end.164

if.else.120:                                      ; preds = %cond.false.77, %cond.true.74, %cond.true.69
  br i1 false, label %cond.true.121, label %cond.false.125

cond.true.121:                                    ; preds = %if.else.120
  %36 = load double, double* %y, align 8
  %conv122 = fptrunc double %36 to float
  %call123 = call i32 @__isinff(float %conv122) #5
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then.133, label %if.end.163

cond.false.125:                                   ; preds = %if.else.120
  br i1 true, label %cond.true.126, label %cond.false.129

cond.true.126:                                    ; preds = %cond.false.125
  %37 = load double, double* %y, align 8
  %call127 = call i32 @__isinf(double %37) #5
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then.133, label %if.end.163

cond.false.129:                                   ; preds = %cond.false.125
  %38 = load double, double* %y, align 8
  %conv130 = fpext double %38 to x86_fp80
  %call131 = call i32 @__isinfl(x86_fp80 %conv130) #5
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.163

if.then.133:                                      ; preds = %cond.false.129, %cond.true.126, %cond.true.121
  %39 = load double, double* %x, align 8
  %call134 = call double @fabs(double %39) #5
  %cmp135 = fcmp oeq double %call134, 1.000000e+00
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %if.then.133
  store double 1.000000e+00, double* %r, align 8
  br label %if.end.162

if.else.138:                                      ; preds = %if.then.133
  %40 = load double, double* %y, align 8
  %cmp139 = fcmp ogt double %40, 0.000000e+00
  br i1 %cmp139, label %land.lhs.true.141, label %if.else.146

land.lhs.true.141:                                ; preds = %if.else.138
  %41 = load double, double* %x, align 8
  %call142 = call double @fabs(double %41) #5
  %cmp143 = fcmp ogt double %call142, 1.000000e+00
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %land.lhs.true.141
  %42 = load double, double* %y, align 8
  store double %42, double* %r, align 8
  br label %if.end.161

if.else.146:                                      ; preds = %land.lhs.true.141, %if.else.138
  %43 = load double, double* %y, align 8
  %cmp147 = fcmp olt double %43, 0.000000e+00
  br i1 %cmp147, label %land.lhs.true.149, label %if.else.159

land.lhs.true.149:                                ; preds = %if.else.146
  %44 = load double, double* %x, align 8
  %call150 = call double @fabs(double %44) #5
  %cmp151 = fcmp olt double %call150, 1.000000e+00
  br i1 %cmp151, label %if.then.153, label %if.else.159

if.then.153:                                      ; preds = %land.lhs.true.149
  %45 = load double, double* %y, align 8
  %sub = fsub double -0.000000e+00, %45
  store double %sub, double* %r, align 8
  %46 = load double, double* %x, align 8
  %cmp154 = fcmp oeq double %46, 0.000000e+00
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %if.then.153
  %call157 = call i32* @__errno_location() #5
  store i32 33, i32* %call157, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %if.then.153
  br label %if.end.160

if.else.159:                                      ; preds = %land.lhs.true.149, %if.else.146
  store double 0.000000e+00, double* %r, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.159, %if.end.158
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.145
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.137
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %cond.false.129, %cond.true.126, %cond.true.121
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.119
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %cond.end.66
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %cond.end
  br label %if.end.221

if.else.167:                                      ; preds = %cond.false.26, %cond.true.23, %cond.true.18
  %call168 = call i32* @__errno_location() #5
  store i32 0, i32* %call168, align 4
  %47 = load double, double* %x, align 8
  %48 = load double, double* %y, align 8
  %call169 = call double @pow(double %47, double %48) #4
  store double %call169, double* %r, align 8
  br i1 false, label %cond.true.170, label %cond.false.174

cond.true.170:                                    ; preds = %if.else.167
  %49 = load double, double* %r, align 8
  %conv171 = fptrunc double %49 to float
  %call172 = call i32 @__finitef(float %conv171) #5
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.end.220, label %if.then.182

cond.false.174:                                   ; preds = %if.else.167
  br i1 true, label %cond.true.175, label %cond.false.178

cond.true.175:                                    ; preds = %cond.false.174
  %50 = load double, double* %r, align 8
  %call176 = call i32 @__finite(double %50) #5
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.end.220, label %if.then.182

cond.false.178:                                   ; preds = %cond.false.174
  %51 = load double, double* %r, align 8
  %conv179 = fpext double %51 to x86_fp80
  %call180 = call i32 @__finitel(x86_fp80 %conv179) #5
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.end.220, label %if.then.182

if.then.182:                                      ; preds = %cond.false.178, %cond.true.175, %cond.true.170
  br i1 false, label %cond.true.183, label %cond.false.187

cond.true.183:                                    ; preds = %if.then.182
  %52 = load double, double* %r, align 8
  %conv184 = fptrunc double %52 to float
  %call185 = call i32 @__isnanf(float %conv184) #5
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.then.195, label %if.else.197

cond.false.187:                                   ; preds = %if.then.182
  br i1 true, label %cond.true.188, label %cond.false.191

cond.true.188:                                    ; preds = %cond.false.187
  %53 = load double, double* %r, align 8
  %call189 = call i32 @__isnan(double %53) #5
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then.195, label %if.else.197

cond.false.191:                                   ; preds = %cond.false.187
  %54 = load double, double* %r, align 8
  %conv192 = fpext double %54 to x86_fp80
  %call193 = call i32 @__isnanl(x86_fp80 %conv192) #5
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then.195, label %if.else.197

if.then.195:                                      ; preds = %cond.false.191, %cond.true.188, %cond.true.183
  %call196 = call i32* @__errno_location() #5
  store i32 33, i32* %call196, align 4
  br label %if.end.219

if.else.197:                                      ; preds = %cond.false.191, %cond.true.188, %cond.true.183
  br i1 false, label %cond.true.198, label %cond.false.202

cond.true.198:                                    ; preds = %if.else.197
  %55 = load double, double* %r, align 8
  %conv199 = fptrunc double %55 to float
  %call200 = call i32 @__isinff(float %conv199) #5
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then.210, label %if.end.218

cond.false.202:                                   ; preds = %if.else.197
  br i1 true, label %cond.true.203, label %cond.false.206

cond.true.203:                                    ; preds = %cond.false.202
  %56 = load double, double* %r, align 8
  %call204 = call i32 @__isinf(double %56) #5
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.then.210, label %if.end.218

cond.false.206:                                   ; preds = %cond.false.202
  %57 = load double, double* %r, align 8
  %conv207 = fpext double %57 to x86_fp80
  %call208 = call i32 @__isinfl(x86_fp80 %conv207) #5
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %if.then.210, label %if.end.218

if.then.210:                                      ; preds = %cond.false.206, %cond.true.203, %cond.true.198
  %58 = load double, double* %x, align 8
  %cmp211 = fcmp oeq double %58, 0.000000e+00
  br i1 %cmp211, label %if.then.213, label %if.else.215

if.then.213:                                      ; preds = %if.then.210
  %call214 = call i32* @__errno_location() #5
  store i32 33, i32* %call214, align 4
  br label %if.end.217

if.else.215:                                      ; preds = %if.then.210
  %call216 = call i32* @__errno_location() #5
  store i32 34, i32* %call216, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.215, %if.then.213
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %cond.false.206, %cond.true.203, %cond.true.198
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.195
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %cond.false.178, %cond.true.175, %cond.true.170
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.166
  %call222 = call i32* @__errno_location() #5
  %59 = load i32, i32* %call222, align 4
  %tobool223 = icmp ne i32 %59, 0
  br i1 %tobool223, label %land.lhs.true.224, label %if.else.228

land.lhs.true.224:                                ; preds = %if.end.221
  %60 = load double, double* %r, align 8
  %call225 = call i32 @is_error(double %60)
  %tobool226 = icmp ne i32 %call225, 0
  br i1 %tobool226, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %land.lhs.true.224
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.228:                                      ; preds = %land.lhs.true.224, %if.end.221
  %61 = load double, double* %r, align 8
  %call229 = call %struct._object* @PyFloat_FromDouble(double %61)
  store %struct._object* %call229, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.228, %if.then.227, %if.then.6, %if.then
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_radians(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load double, double* %x, align 8
  %mul = fmul double %2, 0x3F91DF46A2529D39
  %call2 = call %struct._object* @PyFloat_FromDouble(double %mul)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_sin(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @sin, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_sinh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @sinh, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_sqrt(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @sqrt, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_tan(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @tan, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_tanh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @tanh, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_trunc(%struct._object* %self, %struct._object* %number) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %number.addr = alloca %struct._object*, align 8
  %trunc = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %number, %struct._object** %number.addr, align 8
  %0 = load %struct._object*, %struct._object** %number.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 31
  %2 = load %struct._object*, %struct._object** %tp_dict, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %number.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* %4)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %5 = load %struct._object*, %struct._object** %number.addr, align 8
  %call5 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %5, %struct._Py_Identifier* @math_trunc.PyId___trunc__)
  store %struct._object* %call5, %struct._object** %trunc, align 8
  %6 = load %struct._object*, %struct._object** %trunc, align 8
  %cmp6 = icmp eq %struct._object* %6, null
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end.4
  %call8 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call8, null
  br i1 %tobool, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.then.7
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %8 = load %struct._object*, %struct._object** %number.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.59, i32 0, i32 0), i8* %10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** %trunc, align 8
  %call14 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %11, i8* null)
  store %struct._object* %call14, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %12 = load %struct._object*, %struct._object** %trunc, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.12, %if.then.3
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_1(%struct._object* %arg, double (double)* %func, i32 %can_overflow) #0 {
entry:
  %arg.addr = alloca %struct._object*, align 8
  %func.addr = alloca double (double)*, align 8
  %can_overflow.addr = alloca i32, align 4
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store double (double)* %func, double (double)** %func.addr, align 8
  store i32 %can_overflow, i32* %can_overflow.addr, align 4
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %1 = load double (double)*, double (double)** %func.addr, align 8
  %2 = load i32, i32* %can_overflow.addr, align 4
  %call = call %struct._object* @math_1_to_whatever(%struct._object* %0, double (double)* %1, %struct._object* (double)* @PyFloat_FromDouble, i32 %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind
declare double @acos(double) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_1_to_whatever(%struct._object* %arg, double (double)* %func, %struct._object* (double)* %from_double_func, i32 %can_overflow) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %func.addr = alloca double (double)*, align 8
  %from_double_func.addr = alloca %struct._object* (double)*, align 8
  %can_overflow.addr = alloca i32, align 4
  %x = alloca double, align 8
  %r = alloca double, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store double (double)* %func, double (double)** %func.addr, align 8
  store %struct._object* (double)* %from_double_func, %struct._object* (double)** %from_double_func.addr, align 8
  store i32 %can_overflow, i32* %can_overflow.addr, align 4
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call i32* @__errno_location() #5
  store i32 0, i32* %call2, align 4
  %2 = load double (double)*, double (double)** %func.addr, align 8
  %3 = load double, double* %x, align 8
  %call3 = call double %2(double %3)
  store double %call3, double* %r, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load double, double* %r, align 8
  %conv = fptrunc double %4 to float
  %call4 = call i32 @__isnanf(float %conv) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true.13, label %if.end.27

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.6, label %cond.false.9

cond.true.6:                                      ; preds = %cond.false
  %5 = load double, double* %r, align 8
  %call7 = call i32 @__isnan(double %5) #5
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.13, label %if.end.27

cond.false.9:                                     ; preds = %cond.false
  %6 = load double, double* %r, align 8
  %conv10 = fpext double %6 to x86_fp80
  %call11 = call i32 @__isnanl(x86_fp80 %conv10) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.27

land.lhs.true.13:                                 ; preds = %cond.false.9, %cond.true.6, %cond.true
  br i1 false, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %land.lhs.true.13
  %7 = load double, double* %x, align 8
  %conv15 = fptrunc double %7 to float
  %call16 = call i32 @__isnanf(float %conv15) #5
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.27, label %if.then.26

cond.false.18:                                    ; preds = %land.lhs.true.13
  br i1 true, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.false.18
  %8 = load double, double* %x, align 8
  %call20 = call i32 @__isnan(double %8) #5
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.27, label %if.then.26

cond.false.22:                                    ; preds = %cond.false.18
  %9 = load double, double* %x, align 8
  %conv23 = fpext double %9 to x86_fp80
  %call24 = call i32 @__isnanl(x86_fp80 %conv23) #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %cond.false.22, %cond.true.19, %cond.true.14
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %cond.false.22, %cond.true.19, %cond.true.14, %cond.false.9, %cond.true.6, %cond.true
  br i1 false, label %cond.true.28, label %cond.false.32

cond.true.28:                                     ; preds = %if.end.27
  %11 = load double, double* %r, align 8
  %conv29 = fptrunc double %11 to float
  %call30 = call i32 @__isinff(float %conv29) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true.40, label %if.end.57

cond.false.32:                                    ; preds = %if.end.27
  br i1 true, label %cond.true.33, label %cond.false.36

cond.true.33:                                     ; preds = %cond.false.32
  %12 = load double, double* %r, align 8
  %call34 = call i32 @__isinf(double %12) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.40, label %if.end.57

cond.false.36:                                    ; preds = %cond.false.32
  %13 = load double, double* %r, align 8
  %conv37 = fpext double %13 to x86_fp80
  %call38 = call i32 @__isinfl(x86_fp80 %conv37) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.57

land.lhs.true.40:                                 ; preds = %cond.false.36, %cond.true.33, %cond.true.28
  br i1 false, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %land.lhs.true.40
  %14 = load double, double* %x, align 8
  %conv42 = fptrunc double %14 to float
  %call43 = call i32 @__finitef(float %conv42) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.53, label %if.end.57

cond.false.45:                                    ; preds = %land.lhs.true.40
  br i1 true, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %cond.false.45
  %15 = load double, double* %x, align 8
  %call47 = call i32 @__finite(double %15) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.53, label %if.end.57

cond.false.49:                                    ; preds = %cond.false.45
  %16 = load double, double* %x, align 8
  %conv50 = fpext double %16 to x86_fp80
  %call51 = call i32 @__finitel(x86_fp80 %conv50) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %cond.false.49, %cond.true.46, %cond.true.41
  %17 = load i32, i32* %can_overflow.addr, align 4
  %tobool54 = icmp ne i32 %17, 0
  br i1 %tobool54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.then.53
  %18 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.56

if.else:                                          ; preds = %if.then.53
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.55
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.57:                                        ; preds = %cond.false.49, %cond.true.46, %cond.true.41, %cond.false.36, %cond.true.33, %cond.true.28
  br i1 false, label %cond.true.58, label %cond.false.62

cond.true.58:                                     ; preds = %if.end.57
  %20 = load double, double* %r, align 8
  %conv59 = fptrunc double %20 to float
  %call60 = call i32 @__finitef(float %conv59) #5
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %land.lhs.true.70, label %if.end.77

cond.false.62:                                    ; preds = %if.end.57
  br i1 true, label %cond.true.63, label %cond.false.66

cond.true.63:                                     ; preds = %cond.false.62
  %21 = load double, double* %r, align 8
  %call64 = call i32 @__finite(double %21) #5
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %land.lhs.true.70, label %if.end.77

cond.false.66:                                    ; preds = %cond.false.62
  %22 = load double, double* %r, align 8
  %conv67 = fpext double %22 to x86_fp80
  %call68 = call i32 @__finitel(x86_fp80 %conv67) #5
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.77

land.lhs.true.70:                                 ; preds = %cond.false.66, %cond.true.63, %cond.true.58
  %call71 = call i32* @__errno_location() #5
  %23 = load i32, i32* %call71, align 4
  %tobool72 = icmp ne i32 %23, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.77

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %24 = load double, double* %r, align 8
  %call74 = call i32 @is_error(double %24)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.73
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.73, %land.lhs.true.70, %cond.false.66, %cond.true.63, %cond.true.58
  %25 = load %struct._object* (double)*, %struct._object* (double)** %from_double_func.addr, align 8
  %26 = load double, double* %r, align 8
  %call78 = call %struct._object* %25(double %26)
  store %struct._object* %call78, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.then.76, %if.end.56, %if.then.26, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare double @PyFloat_AsDouble(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #3

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #3

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #3

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #3

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #3

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #3

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #3

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #3

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #3

; Function Attrs: nounwind uwtable
define internal i32 @is_error(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %result = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store i32 1, i32* %result, align 4
  %call = call i32* @__errno_location() #5
  %0 = load i32, i32* %call, align 4
  %cmp = icmp eq i32 %0, 33
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.11

if.else:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #5
  %2 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %2, 34
  br i1 %cmp2, label %if.then.3, label %if.else.8

if.then.3:                                        ; preds = %if.else
  %3 = load double, double* %x.addr, align 8
  %call4 = call double @fabs(double %3) #5
  %cmp5 = fcmp olt double %call4, 1.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.then.3
  store i32 0, i32* %result, align 4
  br label %if.end

if.else.7:                                        ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.10

if.else.8:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call9 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

; Function Attrs: nounwind
declare double @acosh(double) #2

; Function Attrs: nounwind
declare double @asin(double) #2

; Function Attrs: nounwind
declare double @asinh(double) #2

; Function Attrs: nounwind
declare double @atan(double) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_2(%struct._object* %args, double (double, double)* %func, i8* %funcname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %func.addr = alloca double (double, double)*, align 8
  %funcname.addr = alloca i8*, align 8
  %ox = alloca %struct._object*, align 8
  %oy = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %r = alloca double, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store double (double, double)* %func, double (double, double)** %func.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i8*, i8** %funcname.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* %1, i64 2, i64 2, %struct._object** %ox, %struct._object** %oy)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ox, align 8
  %call1 = call double @PyFloat_AsDouble(%struct._object* %2)
  store double %call1, double* %x, align 8
  %3 = load %struct._object*, %struct._object** %oy, align 8
  %call2 = call double @PyFloat_AsDouble(%struct._object* %3)
  store double %call2, double* %y, align 8
  %4 = load double, double* %x, align 8
  %cmp = fcmp oeq double %4, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load double, double* %y, align 8
  %cmp3 = fcmp oeq double %5, -1.000000e+00
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call8 = call i32* @__errno_location() #5
  store i32 0, i32* %call8, align 4
  %6 = load double (double, double)*, double (double, double)** %func.addr, align 8
  %7 = load double, double* %x, align 8
  %8 = load double, double* %y, align 8
  %call9 = call double %6(double %7, double %8)
  store double %call9, double* %r, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %9 = load double, double* %r, align 8
  %conv = fptrunc double %9 to float
  %call10 = call i32 @__isnanf(float %conv) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.19, label %if.else.49

cond.false:                                       ; preds = %if.end.7
  br i1 true, label %cond.true.12, label %cond.false.15

cond.true.12:                                     ; preds = %cond.false
  %10 = load double, double* %r, align 8
  %call13 = call i32 @__isnan(double %10) #5
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.19, label %if.else.49

cond.false.15:                                    ; preds = %cond.false
  %11 = load double, double* %r, align 8
  %conv16 = fpext double %11 to x86_fp80
  %call17 = call i32 @__isnanl(x86_fp80 %conv16) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.49

if.then.19:                                       ; preds = %cond.false.15, %cond.true.12, %cond.true
  br i1 false, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %if.then.19
  %12 = load double, double* %x, align 8
  %conv21 = fptrunc double %12 to float
  %call22 = call i32 @__isnanf(float %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else, label %land.lhs.true.32

cond.false.24:                                    ; preds = %if.then.19
  br i1 true, label %cond.true.25, label %cond.false.28

cond.true.25:                                     ; preds = %cond.false.24
  %13 = load double, double* %x, align 8
  %call26 = call i32 @__isnan(double %13) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else, label %land.lhs.true.32

cond.false.28:                                    ; preds = %cond.false.24
  %14 = load double, double* %x, align 8
  %conv29 = fpext double %14 to x86_fp80
  %call30 = call i32 @__isnanl(x86_fp80 %conv29) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.else, label %land.lhs.true.32

land.lhs.true.32:                                 ; preds = %cond.false.28, %cond.true.25, %cond.true.20
  br i1 false, label %cond.true.33, label %cond.false.37

cond.true.33:                                     ; preds = %land.lhs.true.32
  %15 = load double, double* %y, align 8
  %conv34 = fptrunc double %15 to float
  %call35 = call i32 @__isnanf(float %conv34) #5
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else, label %if.then.45

cond.false.37:                                    ; preds = %land.lhs.true.32
  br i1 true, label %cond.true.38, label %cond.false.41

cond.true.38:                                     ; preds = %cond.false.37
  %16 = load double, double* %y, align 8
  %call39 = call i32 @__isnan(double %16) #5
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else, label %if.then.45

cond.false.41:                                    ; preds = %cond.false.37
  %17 = load double, double* %y, align 8
  %conv42 = fpext double %17 to x86_fp80
  %call43 = call i32 @__isnanl(x86_fp80 %conv42) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else, label %if.then.45

if.then.45:                                       ; preds = %cond.false.41, %cond.true.38, %cond.true.33
  %call46 = call i32* @__errno_location() #5
  store i32 33, i32* %call46, align 4
  br label %if.end.48

if.else:                                          ; preds = %cond.false.41, %cond.true.38, %cond.true.33, %cond.false.28, %cond.true.25, %cond.true.20
  %call47 = call i32* @__errno_location() #5
  store i32 0, i32* %call47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.45
  br label %if.end.94

if.else.49:                                       ; preds = %cond.false.15, %cond.true.12, %cond.true
  br i1 false, label %cond.true.50, label %cond.false.54

cond.true.50:                                     ; preds = %if.else.49
  %18 = load double, double* %r, align 8
  %conv51 = fptrunc double %18 to float
  %call52 = call i32 @__isinff(float %conv51) #5
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.62, label %if.end.93

cond.false.54:                                    ; preds = %if.else.49
  br i1 true, label %cond.true.55, label %cond.false.58

cond.true.55:                                     ; preds = %cond.false.54
  %19 = load double, double* %r, align 8
  %call56 = call i32 @__isinf(double %19) #5
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.62, label %if.end.93

cond.false.58:                                    ; preds = %cond.false.54
  %20 = load double, double* %r, align 8
  %conv59 = fpext double %20 to x86_fp80
  %call60 = call i32 @__isinfl(x86_fp80 %conv59) #5
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.93

if.then.62:                                       ; preds = %cond.false.58, %cond.true.55, %cond.true.50
  br i1 false, label %cond.true.63, label %cond.false.67

cond.true.63:                                     ; preds = %if.then.62
  %21 = load double, double* %x, align 8
  %conv64 = fptrunc double %21 to float
  %call65 = call i32 @__finitef(float %conv64) #5
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %land.lhs.true.75, label %if.else.90

cond.false.67:                                    ; preds = %if.then.62
  br i1 true, label %cond.true.68, label %cond.false.71

cond.true.68:                                     ; preds = %cond.false.67
  %22 = load double, double* %x, align 8
  %call69 = call i32 @__finite(double %22) #5
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %land.lhs.true.75, label %if.else.90

cond.false.71:                                    ; preds = %cond.false.67
  %23 = load double, double* %x, align 8
  %conv72 = fpext double %23 to x86_fp80
  %call73 = call i32 @__finitel(x86_fp80 %conv72) #5
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %land.lhs.true.75, label %if.else.90

land.lhs.true.75:                                 ; preds = %cond.false.71, %cond.true.68, %cond.true.63
  br i1 false, label %cond.true.76, label %cond.false.80

cond.true.76:                                     ; preds = %land.lhs.true.75
  %24 = load double, double* %y, align 8
  %conv77 = fptrunc double %24 to float
  %call78 = call i32 @__finitef(float %conv77) #5
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.88, label %if.else.90

cond.false.80:                                    ; preds = %land.lhs.true.75
  br i1 true, label %cond.true.81, label %cond.false.84

cond.true.81:                                     ; preds = %cond.false.80
  %25 = load double, double* %y, align 8
  %call82 = call i32 @__finite(double %25) #5
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.88, label %if.else.90

cond.false.84:                                    ; preds = %cond.false.80
  %26 = load double, double* %y, align 8
  %conv85 = fpext double %26 to x86_fp80
  %call86 = call i32 @__finitel(x86_fp80 %conv85) #5
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %cond.false.84, %cond.true.81, %cond.true.76
  %call89 = call i32* @__errno_location() #5
  store i32 34, i32* %call89, align 4
  br label %if.end.92

if.else.90:                                       ; preds = %cond.false.84, %cond.true.81, %cond.true.76, %cond.false.71, %cond.true.68, %cond.true.63
  %call91 = call i32* @__errno_location() #5
  store i32 0, i32* %call91, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.88
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %cond.false.58, %cond.true.55, %cond.true.50
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.48
  %call95 = call i32* @__errno_location() #5
  %27 = load i32, i32* %call95, align 4
  %tobool96 = icmp ne i32 %27, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.else.101

land.lhs.true.97:                                 ; preds = %if.end.94
  %28 = load double, double* %r, align 8
  %call98 = call i32 @is_error(double %28)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %land.lhs.true.97
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.101:                                      ; preds = %land.lhs.true.97, %if.end.94
  %29 = load double, double* %r, align 8
  %call102 = call %struct._object* @PyFloat_FromDouble(double %29)
  store %struct._object* %call102, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.101, %if.then.100, %if.then.6, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal double @m_atan2(double %y, double %x) #0 {
entry:
  %retval = alloca double, align 8
  %y.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %y, double* %y.addr, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__isnanf(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__isnan(double %1) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %lor.lhs.false
  %3 = load double, double* %y.addr, align 8
  %conv9 = fptrunc double %3 to float
  %call10 = call i32 @__isnanf(float %conv9) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.end

cond.false.12:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.false.12
  %4 = load double, double* %y.addr, align 8
  %call14 = call i32 @__isnan(double %4) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then, label %if.end

cond.false.16:                                    ; preds = %cond.false.12
  %5 = load double, double* %y.addr, align 8
  %conv17 = fpext double %5 to x86_fp80
  %call18 = call i32 @__isnanl(x86_fp80 %conv17) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.16, %cond.true.13, %cond.true.8, %cond.false.4, %cond.true.1, %cond.true
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  br i1 false, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %if.end
  %6 = load double, double* %y.addr, align 8
  %conv21 = fptrunc double %6 to float
  %call22 = call i32 @__isinff(float %conv21) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.32, label %if.end.53

cond.false.24:                                    ; preds = %if.end
  br i1 true, label %cond.true.25, label %cond.false.28

cond.true.25:                                     ; preds = %cond.false.24
  %7 = load double, double* %y.addr, align 8
  %call26 = call i32 @__isinf(double %7) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.32, label %if.end.53

cond.false.28:                                    ; preds = %cond.false.24
  %8 = load double, double* %y.addr, align 8
  %conv29 = fpext double %8 to x86_fp80
  %call30 = call i32 @__isinfl(x86_fp80 %conv29) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.53

if.then.32:                                       ; preds = %cond.false.28, %cond.true.25, %cond.true.20
  br i1 false, label %cond.true.33, label %cond.false.37

cond.true.33:                                     ; preds = %if.then.32
  %9 = load double, double* %x.addr, align 8
  %conv34 = fptrunc double %9 to float
  %call35 = call i32 @__isinff(float %conv34) #5
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.45, label %if.end.51

cond.false.37:                                    ; preds = %if.then.32
  br i1 true, label %cond.true.38, label %cond.false.41

cond.true.38:                                     ; preds = %cond.false.37
  %10 = load double, double* %x.addr, align 8
  %call39 = call i32 @__isinf(double %10) #5
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.45, label %if.end.51

cond.false.41:                                    ; preds = %cond.false.37
  %11 = load double, double* %x.addr, align 8
  %conv42 = fpext double %11 to x86_fp80
  %call43 = call i32 @__isinfl(x86_fp80 %conv42) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %cond.false.41, %cond.true.38, %cond.true.33
  %12 = load double, double* %x.addr, align 8
  %call46 = call double @copysign(double 1.000000e+00, double %12) #5
  %cmp = fcmp oeq double %call46, 1.000000e+00
  br i1 %cmp, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.then.45
  %13 = load double, double* %y.addr, align 8
  %call49 = call double @copysign(double 0x3FE921FB54442D18, double %13) #5
  store double %call49, double* %retval
  br label %return

if.else:                                          ; preds = %if.then.45
  %14 = load double, double* %y.addr, align 8
  %call50 = call double @copysign(double 0x4002D97C7F3321D2, double %14) #5
  store double %call50, double* %retval
  br label %return

if.end.51:                                        ; preds = %cond.false.41, %cond.true.38, %cond.true.33
  %15 = load double, double* %y.addr, align 8
  %call52 = call double @copysign(double 0x3FF921FB54442D18, double %15) #5
  store double %call52, double* %retval
  br label %return

if.end.53:                                        ; preds = %cond.false.28, %cond.true.25, %cond.true.20
  br i1 false, label %cond.true.54, label %cond.false.58

cond.true.54:                                     ; preds = %if.end.53
  %16 = load double, double* %x.addr, align 8
  %conv55 = fptrunc double %16 to float
  %call56 = call i32 @__isinff(float %conv55) #5
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.69, label %lor.lhs.false.66

cond.false.58:                                    ; preds = %if.end.53
  br i1 true, label %cond.true.59, label %cond.false.62

cond.true.59:                                     ; preds = %cond.false.58
  %17 = load double, double* %x.addr, align 8
  %call60 = call i32 @__isinf(double %17) #5
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.69, label %lor.lhs.false.66

cond.false.62:                                    ; preds = %cond.false.58
  %18 = load double, double* %x.addr, align 8
  %conv63 = fpext double %18 to x86_fp80
  %call64 = call i32 @__isinfl(x86_fp80 %conv63) #5
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.69, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %cond.false.62, %cond.true.59, %cond.true.54
  %19 = load double, double* %y.addr, align 8
  %cmp67 = fcmp oeq double %19, 0.000000e+00
  br i1 %cmp67, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %lor.lhs.false.66, %cond.false.62, %cond.true.59, %cond.true.54
  %20 = load double, double* %x.addr, align 8
  %call70 = call double @copysign(double 1.000000e+00, double %20) #5
  %cmp71 = fcmp oeq double %call70, 1.000000e+00
  br i1 %cmp71, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.then.69
  %21 = load double, double* %y.addr, align 8
  %call74 = call double @copysign(double 0.000000e+00, double %21) #5
  store double %call74, double* %retval
  br label %return

if.else.75:                                       ; preds = %if.then.69
  %22 = load double, double* %y.addr, align 8
  %call76 = call double @copysign(double 0x400921FB54442D18, double %22) #5
  store double %call76, double* %retval
  br label %return

if.end.77:                                        ; preds = %lor.lhs.false.66
  %23 = load double, double* %y.addr, align 8
  %24 = load double, double* %x.addr, align 8
  %call78 = call double @atan2(double %23, double %24) #4
  store double %call78, double* %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.else.75, %if.then.73, %if.end.51, %if.else, %if.then.48, %if.then
  %25 = load double, double* %retval
  ret double %25
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #3

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind
declare double @atanh(double) #2

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_1_to_int(%struct._object* %arg, double (double)* %func, i32 %can_overflow) #0 {
entry:
  %arg.addr = alloca %struct._object*, align 8
  %func.addr = alloca double (double)*, align 8
  %can_overflow.addr = alloca i32, align 4
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store double (double)* %func, double (double)** %func.addr, align 8
  store i32 %can_overflow, i32* %can_overflow.addr, align 4
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %1 = load double (double)*, double (double)** %func.addr, align 8
  %2 = load i32, i32* %can_overflow.addr, align 4
  %call = call %struct._object* @math_1_to_whatever(%struct._object* %0, double (double)* %1, %struct._object* (double)* @PyLong_FromDouble, i32 %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare %struct._object* @PyLong_FromDouble(double) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @cosh(double) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_1a(%struct._object* %arg, double (double)* %func) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %func.addr = alloca double (double)*, align 8
  %x = alloca double, align 8
  %r = alloca double, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store double (double)* %func, double (double)** %func.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call i32* @__errno_location() #5
  store i32 0, i32* %call2, align 4
  %2 = load double (double)*, double (double)** %func.addr, align 8
  %3 = load double, double* %x, align 8
  %call3 = call double %2(double %3)
  store double %call3, double* %r, align 8
  %call4 = call i32* @__errno_location() #5
  %4 = load i32, i32* %call4, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %if.end
  %5 = load double, double* %r, align 8
  %call7 = call i32 @is_error(double %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.6, %if.end
  %6 = load double, double* %r, align 8
  %call11 = call %struct._object* @PyFloat_FromDouble(double %6)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal double @m_erf(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %absx = alloca double, align 8
  %cf = alloca double, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__isnanf(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__isnan(double %1) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %x.addr, align 8
  store double %3, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %4 = load double, double* %x.addr, align 8
  %call8 = call double @fabs(double %4) #5
  store double %call8, double* %absx, align 8
  %5 = load double, double* %absx, align 8
  %cmp = fcmp olt double %5, 1.500000e+00
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %6 = load double, double* %x.addr, align 8
  %call11 = call double @m_erf_series(double %6)
  store double %call11, double* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load double, double* %absx, align 8
  %call12 = call double @m_erfc_contfrac(double %7)
  store double %call12, double* %cf, align 8
  %8 = load double, double* %x.addr, align 8
  %cmp13 = fcmp ogt double %8, 0.000000e+00
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.else
  %9 = load double, double* %cf, align 8
  %sub = fsub double 1.000000e+00, %9
  br label %cond.end

cond.false.16:                                    ; preds = %if.else
  %10 = load double, double* %cf, align 8
  %sub17 = fsub double %10, 1.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi double [ %sub, %cond.true.15 ], [ %sub17, %cond.false.16 ]
  store double %cond, double* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.10, %if.then
  %11 = load double, double* %retval
  ret double %11
}

; Function Attrs: nounwind uwtable
define internal double @m_erf_series(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %x2 = alloca double, align 8
  %acc = alloca double, align 8
  %fk = alloca double, align 8
  %result = alloca double, align 8
  %i = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %x.addr, align 8
  %mul = fmul double %0, %1
  store double %mul, double* %x2, align 8
  store double 0.000000e+00, double* %acc, align 8
  store double 2.550000e+01, double* %fk, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %x2, align 8
  %4 = load double, double* %acc, align 8
  %mul1 = fmul double %3, %4
  %5 = load double, double* %fk, align 8
  %div = fdiv double %mul1, %5
  %add = fadd double 2.000000e+00, %div
  store double %add, double* %acc, align 8
  %6 = load double, double* %fk, align 8
  %sub = fsub double %6, 1.000000e+00
  store double %sub, double* %fk, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call i32* @__errno_location() #5
  %8 = load i32, i32* %call, align 4
  store i32 %8, i32* %saved_errno, align 4
  %9 = load double, double* %acc, align 8
  %10 = load double, double* %x.addr, align 8
  %mul2 = fmul double %9, %10
  %11 = load double, double* %x2, align 8
  %sub3 = fsub double -0.000000e+00, %11
  %call4 = call double @exp(double %sub3) #4
  %mul5 = fmul double %mul2, %call4
  %div6 = fdiv double %mul5, 0x3FFC5BF891B4EF6B
  store double %div6, double* %result, align 8
  %12 = load i32, i32* %saved_errno, align 4
  %call7 = call i32* @__errno_location() #5
  store i32 %12, i32* %call7, align 4
  %13 = load double, double* %result, align 8
  ret double %13
}

; Function Attrs: nounwind uwtable
define internal double @m_erfc_contfrac(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %x2 = alloca double, align 8
  %a = alloca double, align 8
  %da = alloca double, align 8
  %p = alloca double, align 8
  %p_last = alloca double, align 8
  %q = alloca double, align 8
  %q_last = alloca double, align 8
  %b = alloca double, align 8
  %result = alloca double, align 8
  %i = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  %temp = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp oge double %0, 3.000000e+01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* %x.addr, align 8
  %mul = fmul double %1, %2
  store double %mul, double* %x2, align 8
  store double 0.000000e+00, double* %a, align 8
  store double 5.000000e-01, double* %da, align 8
  store double 1.000000e+00, double* %p, align 8
  store double 0.000000e+00, double* %p_last, align 8
  %3 = load double, double* %da, align 8
  %4 = load double, double* %x2, align 8
  %add = fadd double %3, %4
  store double %add, double* %q, align 8
  store double 1.000000e+00, double* %q_last, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %5, 50
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load double, double* %da, align 8
  %7 = load double, double* %a, align 8
  %add2 = fadd double %7, %6
  store double %add2, double* %a, align 8
  %8 = load double, double* %da, align 8
  %add3 = fadd double %8, 2.000000e+00
  store double %add3, double* %da, align 8
  %9 = load double, double* %da, align 8
  %10 = load double, double* %x2, align 8
  %add4 = fadd double %9, %10
  store double %add4, double* %b, align 8
  %11 = load double, double* %p, align 8
  store double %11, double* %temp, align 8
  %12 = load double, double* %b, align 8
  %13 = load double, double* %p, align 8
  %mul5 = fmul double %12, %13
  %14 = load double, double* %a, align 8
  %15 = load double, double* %p_last, align 8
  %mul6 = fmul double %14, %15
  %sub = fsub double %mul5, %mul6
  store double %sub, double* %p, align 8
  %16 = load double, double* %temp, align 8
  store double %16, double* %p_last, align 8
  %17 = load double, double* %q, align 8
  store double %17, double* %temp, align 8
  %18 = load double, double* %b, align 8
  %19 = load double, double* %q, align 8
  %mul7 = fmul double %18, %19
  %20 = load double, double* %a, align 8
  %21 = load double, double* %q_last, align 8
  %mul8 = fmul double %20, %21
  %sub9 = fsub double %mul7, %mul8
  store double %sub9, double* %q, align 8
  %22 = load double, double* %temp, align 8
  store double %22, double* %q_last, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call i32* @__errno_location() #5
  %24 = load i32, i32* %call, align 4
  store i32 %24, i32* %saved_errno, align 4
  %25 = load double, double* %p, align 8
  %26 = load double, double* %q, align 8
  %div = fdiv double %25, %26
  %27 = load double, double* %x.addr, align 8
  %mul10 = fmul double %div, %27
  %28 = load double, double* %x2, align 8
  %sub11 = fsub double -0.000000e+00, %28
  %call12 = call double @exp(double %sub11) #4
  %mul13 = fmul double %mul10, %call12
  %div14 = fdiv double %mul13, 0x3FFC5BF891B4EF6B
  store double %div14, double* %result, align 8
  %29 = load i32, i32* %saved_errno, align 4
  %call15 = call i32* @__errno_location() #5
  store i32 %29, i32* %call15, align 4
  %30 = load double, double* %result, align 8
  store double %30, double* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %31 = load double, double* %retval
  ret double %31
}

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind uwtable
define internal double @m_erfc(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %absx = alloca double, align 8
  %cf = alloca double, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__isnanf(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__isnan(double %1) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %x.addr, align 8
  store double %3, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %4 = load double, double* %x.addr, align 8
  %call8 = call double @fabs(double %4) #5
  store double %call8, double* %absx, align 8
  %5 = load double, double* %absx, align 8
  %cmp = fcmp olt double %5, 1.500000e+00
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %6 = load double, double* %x.addr, align 8
  %call11 = call double @m_erf_series(double %6)
  %sub = fsub double 1.000000e+00, %call11
  store double %sub, double* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load double, double* %absx, align 8
  %call12 = call double @m_erfc_contfrac(double %7)
  store double %call12, double* %cf, align 8
  %8 = load double, double* %x.addr, align 8
  %cmp13 = fcmp ogt double %8, 0.000000e+00
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.else
  %9 = load double, double* %cf, align 8
  br label %cond.end

cond.false.16:                                    ; preds = %if.else
  %10 = load double, double* %cf, align 8
  %sub17 = fsub double 2.000000e+00, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi double [ %9, %cond.true.15 ], [ %sub17, %cond.false.16 ]
  store double %cond, double* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.10, %if.then
  %11 = load double, double* %retval
  ret double %11
}

; Function Attrs: nounwind
declare double @expm1(double) #2

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @factorial_odd_part(i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %v = alloca i64, align 8
  %lower = alloca i64, align 8
  %upper = alloca i64, align 8
  %partial = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %inner = alloca %struct._object*, align 8
  %outer = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  store i64 %n, i64* %n.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call, %struct._object** %inner, align 8
  %0 = load %struct._object*, %struct._object** %inner, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %inner, align 8
  store %struct._object* %1, %struct._object** %outer, align 8
  %2 = load %struct._object*, %struct._object** %outer, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  store i64 3, i64* %upper, align 8
  %4 = load i64, i64* %n.addr, align 8
  %call3 = call i64 @bit_length(i64 %4)
  %sub = sub i64 %call3, 2
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8
  %cmp4 = icmp sge i64 %5, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %n.addr, align 8
  %7 = load i64, i64* %i, align 8
  %shr = lshr i64 %6, %7
  store i64 %shr, i64* %v, align 8
  %8 = load i64, i64* %v, align 8
  %cmp5 = icmp ule i64 %8, 2
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  br label %for.inc

if.end.7:                                         ; preds = %for.body
  %9 = load i64, i64* %upper, align 8
  store i64 %9, i64* %lower, align 8
  %10 = load i64, i64* %v, align 8
  %add = add i64 %10, 1
  %or = or i64 %add, 1
  store i64 %or, i64* %upper, align 8
  %11 = load i64, i64* %lower, align 8
  %12 = load i64, i64* %upper, align 8
  %13 = load i64, i64* %upper, align 8
  %sub8 = sub i64 %13, 2
  %call9 = call i64 @bit_length(i64 %sub8)
  %call10 = call %struct._object* @factorial_partial_product(i64 %11, i64 %12, i64 %call9)
  store %struct._object* %call10, %struct._object** %partial, align 8
  %14 = load %struct._object*, %struct._object** %partial, align 8
  %cmp11 = icmp eq %struct._object* %14, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  br label %error

if.end.13:                                        ; preds = %if.end.7
  %15 = load %struct._object*, %struct._object** %inner, align 8
  %16 = load %struct._object*, %struct._object** %partial, align 8
  %call14 = call %struct._object* @PyNumber_Multiply(%struct._object* %15, %struct._object* %16)
  store %struct._object* %call14, %struct._object** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %17 = load %struct._object*, %struct._object** %partial, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt16, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt16, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %24 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp20 = icmp eq %struct._object* %24, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  br label %error

if.end.22:                                        ; preds = %do.end
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %25 = load %struct._object*, %struct._object** %inner, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp25, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %27, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.23
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.23
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %30(%struct._object* %31)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %32 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %32, %struct._object** %inner, align 8
  %33 = load %struct._object*, %struct._object** %outer, align 8
  %34 = load %struct._object*, %struct._object** %inner, align 8
  %call35 = call %struct._object* @PyNumber_Multiply(%struct._object* %33, %struct._object* %34)
  store %struct._object* %call35, %struct._object** %tmp, align 8
  %35 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp36 = icmp eq %struct._object* %35, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end.34
  br label %error

if.end.38:                                        ; preds = %do.end.34
  br label %do.body.39

do.body.39:                                       ; preds = %if.end.38
  %36 = load %struct._object*, %struct._object** %outer, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp41, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %38, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.39
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %41(%struct._object* %42)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %43 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %43, %struct._object** %outer, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end.50, %if.then.6
  %44 = load i64, i64* %i, align 8
  %dec51 = add i64 %44, -1
  store i64 %dec51, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.52

do.body.52:                                       ; preds = %for.end
  %45 = load %struct._object*, %struct._object** %inner, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp54, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %47, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.52
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.52
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %50(%struct._object* %51)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %52 = load %struct._object*, %struct._object** %outer, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.37, %if.then.21, %if.then.12
  br label %do.body.64

do.body.64:                                       ; preds = %error
  %53 = load %struct._object*, %struct._object** %outer, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp66, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %55, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.64
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %58(%struct._object* %59)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %60 = load %struct._object*, %struct._object** %inner, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp78, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %62, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.76
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.76
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %65(%struct._object* %66)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.87, %do.end.63, %if.then
  %67 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %67
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @count_set_bits(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %count, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %count, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %count, align 8
  %2 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %2, 1
  %3 = load i64, i64* %n.addr, align 8
  %and = and i64 %3, %sub
  store i64 %and, i64* %n.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i64, i64* %count, align 8
  ret i64 %4
}

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @bit_length(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %len = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %len, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %len, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %len, align 8
  %2 = load i64, i64* %n.addr, align 8
  %shr = lshr i64 %2, 1
  store i64 %shr, i64* %n.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i64, i64* %len, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @factorial_partial_product(i64 %start, i64 %stop, i64 %max_bits) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %stop.addr = alloca i64, align 8
  %max_bits.addr = alloca i64, align 8
  %midpoint = alloca i64, align 8
  %num_operands = alloca i64, align 8
  %left = alloca %struct._object*, align 8
  %right = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %j = alloca i64, align 8
  %total = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %stop, i64* %stop.addr, align 8
  store i64 %max_bits, i64* %max_bits.addr, align 8
  store %struct._object* null, %struct._object** %left, align 8
  store %struct._object* null, %struct._object** %right, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load i64, i64* %stop.addr, align 8
  %1 = load i64, i64* %start.addr, align 8
  %sub = sub i64 %0, %1
  %div = udiv i64 %sub, 2
  store i64 %div, i64* %num_operands, align 8
  %2 = load i64, i64* %num_operands, align 8
  %cmp = icmp ule i64 %2, 64
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %num_operands, align 8
  %4 = load i64, i64* %max_bits.addr, align 8
  %mul = mul i64 %3, %4
  %cmp1 = icmp ule i64 %mul, 64
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* %start.addr, align 8
  store i64 %5, i64* %total, align 8
  %6 = load i64, i64* %start.addr, align 8
  %add = add i64 %6, 2
  store i64 %add, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i64, i64* %j, align 8
  %8 = load i64, i64* %stop.addr, align 8
  %cmp2 = icmp ult i64 %7, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %j, align 8
  %10 = load i64, i64* %total, align 8
  %mul3 = mul i64 %10, %9
  store i64 %mul3, i64* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %j, align 8
  %add4 = add i64 %11, 2
  store i64 %add4, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %total, align 8
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %12)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load i64, i64* %start.addr, align 8
  %14 = load i64, i64* %num_operands, align 8
  %add5 = add i64 %13, %14
  %or = or i64 %add5, 1
  store i64 %or, i64* %midpoint, align 8
  %15 = load i64, i64* %start.addr, align 8
  %16 = load i64, i64* %midpoint, align 8
  %17 = load i64, i64* %midpoint, align 8
  %sub6 = sub i64 %17, 2
  %call7 = call i64 @bit_length(i64 %sub6)
  %call8 = call %struct._object* @factorial_partial_product(i64 %15, i64 %16, i64 %call7)
  store %struct._object* %call8, %struct._object** %left, align 8
  %18 = load %struct._object*, %struct._object** %left, align 8
  %cmp9 = icmp eq %struct._object* %18, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %error

if.end.11:                                        ; preds = %if.end
  %19 = load i64, i64* %midpoint, align 8
  %20 = load i64, i64* %stop.addr, align 8
  %21 = load i64, i64* %max_bits.addr, align 8
  %call12 = call %struct._object* @factorial_partial_product(i64 %19, i64 %20, i64 %21)
  store %struct._object* %call12, %struct._object** %right, align 8
  %22 = load %struct._object*, %struct._object** %right, align 8
  %cmp13 = icmp eq %struct._object* %22, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  br label %error

if.end.15:                                        ; preds = %if.end.11
  %23 = load %struct._object*, %struct._object** %left, align 8
  %24 = load %struct._object*, %struct._object** %right, align 8
  %call16 = call %struct._object* @PyNumber_Multiply(%struct._object* %23, %struct._object* %24)
  store %struct._object* %call16, %struct._object** %result, align 8
  br label %error

error:                                            ; preds = %if.end.15, %if.then.14, %if.then.10
  br label %do.body

do.body:                                          ; preds = %error
  %25 = load %struct._object*, %struct._object** %left, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp17 = icmp ne %struct._object* %26, null
  br i1 %cmp17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %do.body
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.22

if.else:                                          ; preds = %do.body.19
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %do.body
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %34 = load %struct._object*, %struct._object** %right, align 8
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp26, align 8
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %35, null
  br i1 %cmp27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %do.body.25
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp26, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp30, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %38, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.29
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %41(%struct._object* %42)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %do.body.25
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  %43 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.41, %for.end
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind
declare double @frexp(double, i32*) #2

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_fsum_realloc(double** %p_ptr, i64 %n, double* %ps, i64* %m_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %p_ptr.addr = alloca double**, align 8
  %n.addr = alloca i64, align 8
  %ps.addr = alloca double*, align 8
  %m_ptr.addr = alloca i64*, align 8
  %v = alloca i8*, align 8
  %m = alloca i64, align 8
  %p = alloca double*, align 8
  store double** %p_ptr, double*** %p_ptr.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store double* %ps, double** %ps.addr, align 8
  store i64* %m_ptr, i64** %m_ptr.addr, align 8
  store i8* null, i8** %v, align 8
  %0 = load i64*, i64** %m_ptr.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %m, align 8
  %2 = load i64, i64* %m, align 8
  %3 = load i64, i64* %m, align 8
  %add = add i64 %3, %2
  store i64 %add, i64* %m, align 8
  %4 = load i64, i64* %n.addr, align 8
  %5 = load i64, i64* %m, align 8
  %cmp = icmp slt i64 %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %6 = load i64, i64* %m, align 8
  %cmp1 = icmp ult i64 %6, 1152921504606846975
  br i1 %cmp1, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true
  %7 = load double**, double*** %p_ptr.addr, align 8
  %8 = load double*, double** %7, align 8
  store double* %8, double** %p, align 8
  %9 = load double*, double** %p, align 8
  %10 = load double*, double** %ps.addr, align 8
  %cmp2 = icmp eq double* %9, %10
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %11 = load i64, i64* %m, align 8
  %mul = mul i64 8, %11
  %call = call i8* @PyMem_Malloc(i64 %mul)
  store i8* %call, i8** %v, align 8
  %12 = load i8*, i8** %v, align 8
  %cmp4 = icmp ne i8* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %13 = load i8*, i8** %v, align 8
  %14 = load double*, double** %ps.addr, align 8
  %15 = bitcast double* %14 to i8*
  %16 = load i64, i64* %n.addr, align 8
  %mul6 = mul i64 8, %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %15, i64 %mul6, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %17 = load double*, double** %p, align 8
  %18 = bitcast double* %17 to i8*
  %19 = load i64, i64* %m, align 8
  %mul7 = mul i64 8, %19
  %call8 = call i8* @PyMem_Realloc(i8* %18, i64 %mul7)
  store i8* %call8, i8** %v, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %land.lhs.true, %entry
  %20 = load i8*, i8** %v, align 8
  %cmp11 = icmp eq i8* %20, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %21 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %22 = load i8*, i8** %v, align 8
  %23 = bitcast i8* %22 to double*
  %24 = load double**, double*** %p_ptr.addr, align 8
  store double* %23, double** %24, align 8
  %25 = load i64, i64* %m, align 8
  %26 = load i64*, i64** %m_ptr.addr, align 8
  store i64 %25, i64* %26, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare void @PyMem_Free(i8*) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i8* @PyMem_Realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal double @m_tgamma(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %absx = alloca double, align 8
  %r = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %sqrtpow = alloca double, align 8
  %q = alloca double, align 8
  %q81 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__finitef(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__finite(double %1) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %if.then
  %3 = load double, double* %x.addr, align 8
  %conv9 = fptrunc double %3 to float
  %call10 = call i32 @__isnanf(float %conv9) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.21, label %lor.lhs.false

cond.false.12:                                    ; preds = %if.then
  br i1 true, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.false.12
  %4 = load double, double* %x.addr, align 8
  %call14 = call i32 @__isnan(double %4) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.21, label %lor.lhs.false

cond.false.16:                                    ; preds = %cond.false.12
  %5 = load double, double* %x.addr, align 8
  %conv17 = fpext double %5 to x86_fp80
  %call18 = call i32 @__isnanl(x86_fp80 %conv17) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  %6 = load double, double* %x.addr, align 8
  %cmp = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false, %cond.false.16, %cond.true.13, %cond.true.8
  %7 = load double, double* %x.addr, align 8
  store double %7, double* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %call22 = call i32* @__errno_location() #5
  store i32 33, i32* %call22, align 4
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %8 = load double, double* %x.addr, align 8
  %cmp23 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end
  %call26 = call i32* @__errno_location() #5
  store i32 33, i32* %call26, align 4
  %9 = load double, double* %x.addr, align 8
  %call27 = call double @copysign(double 0x7FF0000000000000, double %9) #5
  store double %call27, double* %retval
  br label %return

if.end.28:                                        ; preds = %if.end
  %10 = load double, double* %x.addr, align 8
  %11 = load double, double* %x.addr, align 8
  %call29 = call double @floor(double %11) #5
  %cmp30 = fcmp oeq double %10, %call29
  br i1 %cmp30, label %if.then.32, label %if.end.43

if.then.32:                                       ; preds = %if.end.28
  %12 = load double, double* %x.addr, align 8
  %cmp33 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.32
  %call36 = call i32* @__errno_location() #5
  store i32 33, i32* %call36, align 4
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.32
  %13 = load double, double* %x.addr, align 8
  %cmp38 = fcmp ole double %13, 2.300000e+01
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.37
  %14 = load double, double* %x.addr, align 8
  %conv41 = fptosi double %14 to i32
  %sub = sub i32 %conv41, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr [23 x double], [23 x double]* @gamma_integral, i32 0, i64 %idxprom
  %15 = load double, double* %arrayidx, align 8
  store double %15, double* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.28
  %16 = load double, double* %x.addr, align 8
  %call44 = call double @fabs(double %16) #5
  store double %call44, double* %absx, align 8
  %17 = load double, double* %absx, align 8
  %cmp45 = fcmp olt double %17, 1.000000e-20
  br i1 %cmp45, label %if.then.47, label %if.end.63

if.then.47:                                       ; preds = %if.end.43
  %18 = load double, double* %x.addr, align 8
  %div = fdiv double 1.000000e+00, %18
  store double %div, double* %r, align 8
  br i1 false, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %if.then.47
  %19 = load double, double* %r, align 8
  %conv49 = fptrunc double %19 to float
  %call50 = call i32 @__isinff(float %conv49) #5
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.60, label %if.end.62

cond.false.52:                                    ; preds = %if.then.47
  br i1 true, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %cond.false.52
  %20 = load double, double* %r, align 8
  %call54 = call i32 @__isinf(double %20) #5
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.60, label %if.end.62

cond.false.56:                                    ; preds = %cond.false.52
  %21 = load double, double* %r, align 8
  %conv57 = fpext double %21 to x86_fp80
  %call58 = call i32 @__isinfl(x86_fp80 %conv57) #5
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %cond.false.56, %cond.true.53, %cond.true.48
  %call61 = call i32* @__errno_location() #5
  store i32 34, i32* %call61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %cond.false.56, %cond.true.53, %cond.true.48
  %22 = load double, double* %r, align 8
  store double %22, double* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.43
  %23 = load double, double* %absx, align 8
  %cmp64 = fcmp ogt double %23, 2.000000e+02
  br i1 %cmp64, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.end.63
  %24 = load double, double* %x.addr, align 8
  %cmp67 = fcmp olt double %24, 0.000000e+00
  br i1 %cmp67, label %if.then.69, label %if.else.72

if.then.69:                                       ; preds = %if.then.66
  %25 = load double, double* %x.addr, align 8
  %call70 = call double @sinpi(double %25)
  %div71 = fdiv double 0.000000e+00, %call70
  store double %div71, double* %retval
  br label %return

if.else.72:                                       ; preds = %if.then.66
  %call73 = call i32* @__errno_location() #5
  store i32 34, i32* %call73, align 4
  store double 0x7FF0000000000000, double* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.63
  %26 = load double, double* %absx, align 8
  %add = fadd double %26, 0x40161945B9800000
  store double %add, double* %y, align 8
  %27 = load double, double* %absx, align 8
  %cmp75 = fcmp ogt double %27, 0x40161945B9800000
  br i1 %cmp75, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %if.end.74
  %28 = load double, double* %y, align 8
  %29 = load double, double* %absx, align 8
  %sub78 = fsub double %28, %29
  store double %sub78, double* %q, align 8
  %30 = load double, double* %q, align 8
  %sub79 = fsub double %30, 0x40161945B9800000
  store double %sub79, double* %z, align 8
  br label %if.end.84

if.else.80:                                       ; preds = %if.end.74
  %31 = load double, double* %y, align 8
  %sub82 = fsub double %31, 0x40161945B9800000
  store double %sub82, double* %q81, align 8
  %32 = load double, double* %q81, align 8
  %33 = load double, double* %absx, align 8
  %sub83 = fsub double %32, %33
  store double %sub83, double* %z, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.80, %if.then.77
  %34 = load double, double* %z, align 8
  %mul = fmul double %34, 0x40181945B9800000
  %35 = load double, double* %y, align 8
  %div85 = fdiv double %mul, %35
  store double %div85, double* %z, align 8
  %36 = load double, double* %x.addr, align 8
  %cmp86 = fcmp olt double %36, 0.000000e+00
  br i1 %cmp86, label %if.then.88, label %if.else.111

if.then.88:                                       ; preds = %if.end.84
  %37 = load double, double* %absx, align 8
  %call89 = call double @sinpi(double %37)
  %div90 = fdiv double 0xC00921FB54442D18, %call89
  %38 = load double, double* %absx, align 8
  %div91 = fdiv double %div90, %38
  %39 = load double, double* %y, align 8
  %call92 = call double @exp(double %39) #4
  %mul93 = fmul double %div91, %call92
  %40 = load double, double* %absx, align 8
  %call94 = call double @lanczos_sum(double %40)
  %div95 = fdiv double %mul93, %call94
  store double %div95, double* %r, align 8
  %41 = load double, double* %z, align 8
  %42 = load double, double* %r, align 8
  %mul96 = fmul double %41, %42
  %43 = load double, double* %r, align 8
  %sub97 = fsub double %43, %mul96
  store double %sub97, double* %r, align 8
  %44 = load double, double* %absx, align 8
  %cmp98 = fcmp olt double %44, 1.400000e+02
  br i1 %cmp98, label %if.then.100, label %if.else.104

if.then.100:                                      ; preds = %if.then.88
  %45 = load double, double* %y, align 8
  %46 = load double, double* %absx, align 8
  %sub101 = fsub double %46, 5.000000e-01
  %call102 = call double @pow(double %45, double %sub101) #4
  %47 = load double, double* %r, align 8
  %div103 = fdiv double %47, %call102
  store double %div103, double* %r, align 8
  br label %if.end.110

if.else.104:                                      ; preds = %if.then.88
  %48 = load double, double* %y, align 8
  %49 = load double, double* %absx, align 8
  %div105 = fdiv double %49, 2.000000e+00
  %sub106 = fsub double %div105, 2.500000e-01
  %call107 = call double @pow(double %48, double %sub106) #4
  store double %call107, double* %sqrtpow, align 8
  %50 = load double, double* %sqrtpow, align 8
  %51 = load double, double* %r, align 8
  %div108 = fdiv double %51, %50
  store double %div108, double* %r, align 8
  %52 = load double, double* %sqrtpow, align 8
  %53 = load double, double* %r, align 8
  %div109 = fdiv double %53, %52
  store double %div109, double* %r, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.104, %if.then.100
  br label %if.end.130

if.else.111:                                      ; preds = %if.end.84
  %54 = load double, double* %absx, align 8
  %call112 = call double @lanczos_sum(double %54)
  %55 = load double, double* %y, align 8
  %call113 = call double @exp(double %55) #4
  %div114 = fdiv double %call112, %call113
  store double %div114, double* %r, align 8
  %56 = load double, double* %z, align 8
  %57 = load double, double* %r, align 8
  %mul115 = fmul double %56, %57
  %58 = load double, double* %r, align 8
  %add116 = fadd double %58, %mul115
  store double %add116, double* %r, align 8
  %59 = load double, double* %absx, align 8
  %cmp117 = fcmp olt double %59, 1.400000e+02
  br i1 %cmp117, label %if.then.119, label %if.else.123

if.then.119:                                      ; preds = %if.else.111
  %60 = load double, double* %y, align 8
  %61 = load double, double* %absx, align 8
  %sub120 = fsub double %61, 5.000000e-01
  %call121 = call double @pow(double %60, double %sub120) #4
  %62 = load double, double* %r, align 8
  %mul122 = fmul double %62, %call121
  store double %mul122, double* %r, align 8
  br label %if.end.129

if.else.123:                                      ; preds = %if.else.111
  %63 = load double, double* %y, align 8
  %64 = load double, double* %absx, align 8
  %div124 = fdiv double %64, 2.000000e+00
  %sub125 = fsub double %div124, 2.500000e-01
  %call126 = call double @pow(double %63, double %sub125) #4
  store double %call126, double* %sqrtpow, align 8
  %65 = load double, double* %sqrtpow, align 8
  %66 = load double, double* %r, align 8
  %mul127 = fmul double %66, %65
  store double %mul127, double* %r, align 8
  %67 = load double, double* %sqrtpow, align 8
  %68 = load double, double* %r, align 8
  %mul128 = fmul double %68, %67
  store double %mul128, double* %r, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.123, %if.then.119
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.110
  br i1 false, label %cond.true.131, label %cond.false.135

cond.true.131:                                    ; preds = %if.end.130
  %69 = load double, double* %r, align 8
  %conv132 = fptrunc double %69 to float
  %call133 = call i32 @__isinff(float %conv132) #5
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then.143, label %if.end.145

cond.false.135:                                   ; preds = %if.end.130
  br i1 true, label %cond.true.136, label %cond.false.139

cond.true.136:                                    ; preds = %cond.false.135
  %70 = load double, double* %r, align 8
  %call137 = call i32 @__isinf(double %70) #5
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then.143, label %if.end.145

cond.false.139:                                   ; preds = %cond.false.135
  %71 = load double, double* %r, align 8
  %conv140 = fpext double %71 to x86_fp80
  %call141 = call i32 @__isinfl(x86_fp80 %conv140) #5
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %cond.false.139, %cond.true.136, %cond.true.131
  %call144 = call i32* @__errno_location() #5
  store i32 34, i32* %call144, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %cond.false.139, %cond.true.136, %cond.true.131
  %72 = load double, double* %r, align 8
  store double %72, double* %retval
  br label %return

return:                                           ; preds = %if.end.145, %if.else.72, %if.then.69, %if.end.62, %if.then.40, %if.then.35, %if.then.25, %if.else, %if.then.21
  %73 = load double, double* %retval
  ret double %73
}

; Function Attrs: nounwind uwtable
define internal double @sinpi(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  %r = alloca double, align 8
  %n = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %call = call double @fabs(double %0) #5
  %call1 = call double @fmod(double %call, double 2.000000e+00) #4
  store double %call1, double* %y, align 8
  %1 = load double, double* %y, align 8
  %mul = fmul double 2.000000e+00, %1
  %call2 = call double @round(double %mul) #5
  %conv = fptosi double %call2 to i32
  store i32 %conv, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %3 = load double, double* %y, align 8
  %mul3 = fmul double 0x400921FB54442D18, %3
  %call4 = call double @sin(double %mul3) #4
  store double %call4, double* %r, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %4 = load double, double* %y, align 8
  %sub = fsub double %4, 5.000000e-01
  %mul6 = fmul double 0x400921FB54442D18, %sub
  %call7 = call double @cos(double %mul6) #4
  store double %call7, double* %r, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %5 = load double, double* %y, align 8
  %sub9 = fsub double 1.000000e+00, %5
  %mul10 = fmul double 0x400921FB54442D18, %sub9
  %call11 = call double @sin(double %mul10) #4
  store double %call11, double* %r, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %6 = load double, double* %y, align 8
  %sub13 = fsub double %6, 1.500000e+00
  %mul14 = fmul double 0x400921FB54442D18, %sub13
  %call15 = call double @cos(double %mul14) #4
  %sub16 = fsub double -0.000000e+00, %call15
  store double %sub16, double* %r, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %7 = load double, double* %y, align 8
  %sub18 = fsub double %7, 2.000000e+00
  %mul19 = fmul double 0x400921FB54442D18, %sub18
  %call20 = call double @sin(double %mul19) #4
  store double %call20, double* %r, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store double -1.230000e+200, double* %r, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.17, %sw.bb.12, %sw.bb.8, %sw.bb.5, %sw.bb
  %8 = load double, double* %x.addr, align 8
  %call21 = call double @copysign(double 1.000000e+00, double %8) #5
  %9 = load double, double* %r, align 8
  %mul22 = fmul double %call21, %9
  ret double %mul22
}

; Function Attrs: nounwind uwtable
define internal double @lanczos_sum(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %num = alloca double, align 8
  %den = alloca double, align 8
  %i = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double 0.000000e+00, double* %num, align 8
  store double 0.000000e+00, double* %den, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, 5.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %1 = load i32, i32* %i, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %i, align 4
  %cmp1 = icmp sge i32 %dec, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %num, align 8
  %3 = load double, double* %x.addr, align 8
  %mul = fmul double %2, %3
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr [13 x double], [13 x double]* @lanczos_num_coeffs, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %add = fadd double %mul, %5
  store double %add, double* %num, align 8
  %6 = load double, double* %den, align 8
  %7 = load double, double* %x.addr, align 8
  %mul2 = fmul double %6, %7
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr [13 x double], [13 x double]* @lanczos_den_coeffs, i32 0, i64 %idxprom3
  %9 = load double, double* %arrayidx4, align 8
  %add5 = fadd double %mul2, %9
  store double %add5, double* %den, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.else
  %10 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %10, 13
  br i1 %cmp7, label %for.body.8, label %for.end.16

for.body.8:                                       ; preds = %for.cond.6
  %11 = load double, double* %num, align 8
  %12 = load double, double* %x.addr, align 8
  %div = fdiv double %11, %12
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr [13 x double], [13 x double]* @lanczos_num_coeffs, i32 0, i64 %idxprom9
  %14 = load double, double* %arrayidx10, align 8
  %add11 = fadd double %div, %14
  store double %add11, double* %num, align 8
  %15 = load double, double* %den, align 8
  %16 = load double, double* %x.addr, align 8
  %div12 = fdiv double %15, %16
  %17 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr [13 x double], [13 x double]* @lanczos_den_coeffs, i32 0, i64 %idxprom13
  %18 = load double, double* %arrayidx14, align 8
  %add15 = fadd double %div12, %18
  store double %add15, double* %den, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end.16:                                       ; preds = %for.cond.6
  br label %if.end

if.end:                                           ; preds = %for.end.16, %for.end
  %20 = load double, double* %num, align 8
  %21 = load double, double* %den, align 8
  %div17 = fdiv double %20, %21
  ret double %div17
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind readnone
declare double @round(double) #3

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @hypot(double, double) #2

declare %struct._object* @PyBool_FromLong(i64) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i64 @PyLong_AsLongAndOverflow(%struct._object*, i32*) #1

; Function Attrs: nounwind
declare double @ldexp(double, i32) #2

; Function Attrs: nounwind uwtable
define internal double @m_lgamma(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %r = alloca double, align 8
  %absx = alloca double, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__finitef(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__finite(double %1) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %if.then
  %3 = load double, double* %x.addr, align 8
  %conv9 = fptrunc double %3 to float
  %call10 = call i32 @__isnanf(float %conv9) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.20, label %if.else

cond.false.12:                                    ; preds = %if.then
  br i1 true, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.false.12
  %4 = load double, double* %x.addr, align 8
  %call14 = call i32 @__isnan(double %4) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.20, label %if.else

cond.false.16:                                    ; preds = %cond.false.12
  %5 = load double, double* %x.addr, align 8
  %conv17 = fpext double %5 to x86_fp80
  %call18 = call i32 @__isnanl(x86_fp80 %conv17) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  %6 = load double, double* %x.addr, align 8
  store double %6, double* %retval
  br label %return

if.else:                                          ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  store double 0x7FF0000000000000, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %7 = load double, double* %x.addr, align 8
  %8 = load double, double* %x.addr, align 8
  %call21 = call double @floor(double %8) #5
  %cmp = fcmp oeq double %7, %call21
  br i1 %cmp, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end
  %9 = load double, double* %x.addr, align 8
  %cmp23 = fcmp ole double %9, 2.000000e+00
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %land.lhs.true
  %10 = load double, double* %x.addr, align 8
  %cmp26 = fcmp ole double %10, 0.000000e+00
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.then.25
  %call29 = call i32* @__errno_location() #5
  store i32 33, i32* %call29, align 4
  store double 0x7FF0000000000000, double* %retval
  br label %return

if.else.30:                                       ; preds = %if.then.25
  store double 0.000000e+00, double* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true, %if.end
  %11 = load double, double* %x.addr, align 8
  %call32 = call double @fabs(double %11) #5
  store double %call32, double* %absx, align 8
  %12 = load double, double* %absx, align 8
  %cmp33 = fcmp olt double %12, 1.000000e-20
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.31
  %13 = load double, double* %absx, align 8
  %call36 = call double @log(double %13) #4
  %sub = fsub double -0.000000e+00, %call36
  store double %sub, double* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.31
  %14 = load double, double* %absx, align 8
  %call38 = call double @lanczos_sum(double %14)
  %call39 = call double @log(double %call38) #4
  %sub40 = fsub double %call39, 0x40181945B9800000
  store double %sub40, double* %r, align 8
  %15 = load double, double* %absx, align 8
  %sub41 = fsub double %15, 5.000000e-01
  %16 = load double, double* %absx, align 8
  %add = fadd double %16, 0x40181945B9800000
  %sub42 = fsub double %add, 5.000000e-01
  %call43 = call double @log(double %sub42) #4
  %sub44 = fsub double %call43, 1.000000e+00
  %mul = fmul double %sub41, %sub44
  %17 = load double, double* %r, align 8
  %add45 = fadd double %17, %mul
  store double %add45, double* %r, align 8
  %18 = load double, double* %x.addr, align 8
  %cmp46 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp46, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %if.end.37
  %19 = load double, double* %absx, align 8
  %call49 = call double @sinpi(double %19)
  %call50 = call double @fabs(double %call49) #5
  %call51 = call double @log(double %call50) #4
  %sub52 = fsub double 0x3FF250D048E7A1BD, %call51
  %20 = load double, double* %absx, align 8
  %call53 = call double @log(double %20) #4
  %sub54 = fsub double %sub52, %call53
  %21 = load double, double* %r, align 8
  %sub55 = fsub double %sub54, %21
  store double %sub55, double* %r, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.48, %if.end.37
  br i1 false, label %cond.true.57, label %cond.false.61

cond.true.57:                                     ; preds = %if.end.56
  %22 = load double, double* %r, align 8
  %conv58 = fptrunc double %22 to float
  %call59 = call i32 @__isinff(float %conv58) #5
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.69, label %if.end.71

cond.false.61:                                    ; preds = %if.end.56
  br i1 true, label %cond.true.62, label %cond.false.65

cond.true.62:                                     ; preds = %cond.false.61
  %23 = load double, double* %r, align 8
  %call63 = call i32 @__isinf(double %23) #5
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.69, label %if.end.71

cond.false.65:                                    ; preds = %cond.false.61
  %24 = load double, double* %r, align 8
  %conv66 = fpext double %24 to x86_fp80
  %call67 = call i32 @__isinfl(x86_fp80 %conv66) #5
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %cond.false.65, %cond.true.62, %cond.true.57
  %call70 = call i32* @__errno_location() #5
  store i32 34, i32* %call70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %cond.false.65, %cond.true.62, %cond.true.57
  %25 = load double, double* %r, align 8
  store double %25, double* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.35, %if.else.30, %if.then.28, %if.else, %if.then.20
  %26 = load double, double* %retval
  ret double %26
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @loghelper(%struct._object* %arg, double (double)* %func, i8* %funcname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %func.addr = alloca double (double)*, align 8
  %funcname.addr = alloca i8*, align 8
  %x = alloca double, align 8
  %result = alloca double, align 8
  %e = alloca i64, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store double (double)* %func, double (double)** %func.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sle i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyLong_AsDouble(%struct._object* %7)
  store double %call, double* %x, align 8
  %8 = load double, double* %x, align 8
  %cmp3 = fcmp oeq double %8, -1.000000e+00
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  call void @PyErr_Clear()
  %10 = load %struct._object*, %struct._object** %arg.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._longobject*
  %call10 = call double @_PyLong_Frexp(%struct._longobject* %11, i64* %e)
  store double %call10, double* %x, align 8
  %12 = load double, double* %x, align 8
  %cmp11 = fcmp oeq double %12, -1.000000e+00
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %if.end.9
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.12, %if.end.9
  %13 = load double (double)*, double (double)** %func.addr, align 8
  %14 = load double, double* %x, align 8
  %call17 = call double %13(double %14)
  %15 = load double (double)*, double (double)** %func.addr, align 8
  %call18 = call double %15(double 2.000000e+00)
  %16 = load i64, i64* %e, align 8
  %conv = sitofp i64 %16 to double
  %mul = fmul double %call18, %conv
  %add = fadd double %call17, %mul
  store double %add, double* %result, align 8
  br label %if.end.20

if.else:                                          ; preds = %land.lhs.true, %if.end
  %17 = load double (double)*, double (double)** %func.addr, align 8
  %18 = load double, double* %x, align 8
  %call19 = call double %17(double %18)
  store double %call19, double* %result, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.16
  %19 = load double, double* %result, align 8
  %call21 = call %struct._object* @PyFloat_FromDouble(double %19)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %entry
  %20 = load %struct._object*, %struct._object** %arg.addr, align 8
  %21 = load double (double)*, double (double)** %func.addr, align 8
  %call23 = call %struct._object* @math_1(%struct._object* %20, double (double)* %21, i32 0)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.end.20, %if.then.15, %if.then.8, %if.then.2
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal double @m_log(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__finitef(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.15

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__finite(double %1) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else.15

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.else.15

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %x.addr, align 8
  %cmp = fcmp ogt double %3, 0.000000e+00
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %4 = load double, double* %x.addr, align 8
  %call10 = call double @log(double %4) #4
  store double %call10, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call11 = call i32* @__errno_location() #5
  store i32 33, i32* %call11, align 4
  %5 = load double, double* %x.addr, align 8
  %cmp12 = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  store double 0xFFF0000000000000, double* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.else.15:                                       ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %if.else.15
  %6 = load double, double* %x.addr, align 8
  %conv17 = fptrunc double %6 to float
  %call18 = call i32 @__isnanf(float %conv17) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.28, label %if.else.29

cond.false.20:                                    ; preds = %if.else.15
  br i1 true, label %cond.true.21, label %cond.false.24

cond.true.21:                                     ; preds = %cond.false.20
  %7 = load double, double* %x.addr, align 8
  %call22 = call i32 @__isnan(double %7) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.28, label %if.else.29

cond.false.24:                                    ; preds = %cond.false.20
  %8 = load double, double* %x.addr, align 8
  %conv25 = fpext double %8 to x86_fp80
  %call26 = call i32 @__isnanl(x86_fp80 %conv25) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %9 = load double, double* %x.addr, align 8
  store double %9, double* %retval
  br label %return

if.else.29:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %10 = load double, double* %x.addr, align 8
  %cmp30 = fcmp ogt double %10, 0.000000e+00
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.29
  %11 = load double, double* %x.addr, align 8
  store double %11, double* %retval
  br label %return

if.else.33:                                       ; preds = %if.else.29
  %call34 = call i32* @__errno_location() #5
  store i32 33, i32* %call34, align 4
  store double 0x7FF8000000000000, double* %retval
  br label %return

return:                                           ; preds = %if.else.33, %if.then.32, %if.then.28, %if.else, %if.then.14, %if.then.9
  %12 = load double, double* %retval
  ret double %12
}

declare %struct._object* @PyNumber_TrueDivide(%struct._object*, %struct._object*) #1

declare double @PyLong_AsDouble(%struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

declare double @_PyLong_Frexp(%struct._longobject*, i64*) #1

declare double @_Py_log1p(double) #1

; Function Attrs: nounwind uwtable
define internal double @m_log10(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__finitef(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.15

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__finite(double %1) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else.15

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.else.15

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %x.addr, align 8
  %cmp = fcmp ogt double %3, 0.000000e+00
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %4 = load double, double* %x.addr, align 8
  %call10 = call double @log10(double %4) #4
  store double %call10, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call11 = call i32* @__errno_location() #5
  store i32 33, i32* %call11, align 4
  %5 = load double, double* %x.addr, align 8
  %cmp12 = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  store double 0xFFF0000000000000, double* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.else.15:                                       ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %if.else.15
  %6 = load double, double* %x.addr, align 8
  %conv17 = fptrunc double %6 to float
  %call18 = call i32 @__isnanf(float %conv17) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.28, label %if.else.29

cond.false.20:                                    ; preds = %if.else.15
  br i1 true, label %cond.true.21, label %cond.false.24

cond.true.21:                                     ; preds = %cond.false.20
  %7 = load double, double* %x.addr, align 8
  %call22 = call i32 @__isnan(double %7) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.28, label %if.else.29

cond.false.24:                                    ; preds = %cond.false.20
  %8 = load double, double* %x.addr, align 8
  %conv25 = fpext double %8 to x86_fp80
  %call26 = call i32 @__isnanl(x86_fp80 %conv25) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %9 = load double, double* %x.addr, align 8
  store double %9, double* %retval
  br label %return

if.else.29:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %10 = load double, double* %x.addr, align 8
  %cmp30 = fcmp ogt double %10, 0.000000e+00
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.29
  %11 = load double, double* %x.addr, align 8
  store double %11, double* %retval
  br label %return

if.else.33:                                       ; preds = %if.else.29
  %call34 = call i32* @__errno_location() #5
  store i32 33, i32* %call34, align 4
  store double 0x7FF8000000000000, double* %retval
  br label %return

return:                                           ; preds = %if.else.33, %if.then.32, %if.then.28, %if.else, %if.then.14, %if.then.9
  %12 = load double, double* %retval
  ret double %12
}

; Function Attrs: nounwind
declare double @log10(double) #2

; Function Attrs: nounwind uwtable
define internal double @m_log2(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__finitef(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__finite(double %1) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %if.then
  %3 = load double, double* %x.addr, align 8
  %conv9 = fptrunc double %3 to float
  %call10 = call i32 @__isnanf(float %conv9) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.20, label %if.else

cond.false.12:                                    ; preds = %if.then
  br i1 true, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.false.12
  %4 = load double, double* %x.addr, align 8
  %call14 = call i32 @__isnan(double %4) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.20, label %if.else

cond.false.16:                                    ; preds = %cond.false.12
  %5 = load double, double* %x.addr, align 8
  %conv17 = fpext double %5 to x86_fp80
  %call18 = call i32 @__isnanl(x86_fp80 %conv17) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  %6 = load double, double* %x.addr, align 8
  store double %6, double* %retval
  br label %return

if.else:                                          ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  %7 = load double, double* %x.addr, align 8
  %cmp = fcmp ogt double %7, 0.000000e+00
  br i1 %cmp, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else
  %8 = load double, double* %x.addr, align 8
  store double %8, double* %retval
  br label %return

if.else.23:                                       ; preds = %if.else
  %call24 = call i32* @__errno_location() #5
  store i32 33, i32* %call24, align 4
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %9 = load double, double* %x.addr, align 8
  %cmp25 = fcmp ogt double %9, 0.000000e+00
  br i1 %cmp25, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.end
  %10 = load double, double* %x.addr, align 8
  %call28 = call double @log2(double %10) #4
  store double %call28, double* %retval
  br label %return

if.else.29:                                       ; preds = %if.end
  %11 = load double, double* %x.addr, align 8
  %cmp30 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp30, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.else.29
  %call33 = call i32* @__errno_location() #5
  store i32 33, i32* %call33, align 4
  store double 0xFFF0000000000000, double* %retval
  br label %return

if.else.34:                                       ; preds = %if.else.29
  %call35 = call i32* @__errno_location() #5
  store i32 33, i32* %call35, align 4
  store double 0x7FF8000000000000, double* %retval
  br label %return

return:                                           ; preds = %if.else.34, %if.then.32, %if.then.27, %if.else.23, %if.then.22, %if.then.20
  %12 = load double, double* %retval
  ret double %12
}

; Function Attrs: nounwind
declare double @log2(double) #2

; Function Attrs: nounwind
declare double @modf(double, double*) #2

; Function Attrs: nounwind
declare double @sinh(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @tan(double) #2

; Function Attrs: nounwind
declare double @tanh(double) #2

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
